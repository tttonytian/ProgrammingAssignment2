## Put comments here that give an overall description of what your
## functions do

## These functions are written for the assignment 2 of JHU R programming course.
## Write a short comment describing this function
## Function to get the input matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  get <- function() x
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function

## function to compute the inverse and cache the result

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  # Get the current state of the inverse and see if it
  # has been computed yet
  inv <- x$getinverse()
  
  # If it has...
  if(!is.null(inv)) {
    message("Getting cached matrix")
    return(inv)
  }
  
  # If it hasn't...
  data <- x$get()
  
  # Find the inverse
  inv <- solve(data, ...)
  
  # Cache this result in the object
  x$setinverse(inv)
  
  # Return this new result
  inv    
}
