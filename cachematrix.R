##this function creats matrix that will be used for its inverse 
makeCacheMatrix<- function(x=matrix()){
        inv<- NULL
        set<- function(y){
                x<<-y
                inv<<- NULL
        }
        get<- function() {x}
        setInverse<- function(inverse){inv<<- inverse}
        getInverse<- function(){inv}
        list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}
## this function stores the inverse of the matric
cacheSolve<- function(x, ...){
        inv<- x$getInverse()
        if(!is.null(inv)){
                message("Getting Caste Data")
                return( inv)}
        mat<- x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
        inv
                
        
}
