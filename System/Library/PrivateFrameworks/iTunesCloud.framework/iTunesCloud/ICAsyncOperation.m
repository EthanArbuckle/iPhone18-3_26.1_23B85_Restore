@interface ICAsyncOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (ICAsyncOperation)init;
- (void)enqueueChildOperation:(id)a3;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation ICAsyncOperation

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&self->_asyncOperationLock);
  isExecuting = self->_isExecuting;
  os_unfair_lock_unlock(&self->_asyncOperationLock);
  return isExecuting;
}

- (void)start
{
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 qualityOfService];

  [(ICAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_asyncOperationLock);
  self->_isExecuting = 1;
  self->_qualityOfServiceForChildOperationQueue = v4;
  os_unfair_lock_unlock(&self->_asyncOperationLock);
  [(ICAsyncOperation *)self didChangeValueForKey:@"isExecuting"];

  [(ICAsyncOperation *)self _execute];
}

- (ICAsyncOperation)init
{
  v3.receiver = self;
  v3.super_class = ICAsyncOperation;
  result = [(ICAsyncOperation *)&v3 init];
  if (result)
  {
    result->_asyncOperationLock._os_unfair_lock_opaque = 0;
    result->_qualityOfServiceForChildOperationQueue = -1;
  }

  return result;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_asyncOperationLock);
  isFinished = self->_isFinished;
  os_unfair_lock_unlock(&self->_asyncOperationLock);
  return isFinished;
}

- (void)enqueueChildOperation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_asyncOperationLock);
  os_unfair_lock_lock(&self->_asyncOperationLock);
  childOperationQueue = self->_childOperationQueue;
  if (!childOperationQueue && ((v7 = objc_alloc_init(MEMORY[0x1E696ADC8]), v8 = self->_childOperationQueue, self->_childOperationQueue = v7, v8, v9 = self->_childOperationQueue, v10 = MEMORY[0x1E696AEC0], [MEMORY[0x1E696AFB0] UUID], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "UUIDString"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stringWithFormat:", @"com.apple.iTunesCloud.ICAsyncOperation.childOperationQueue-%@", v12), v13 = objc_claimAutoreleasedReturnValue(), -[NSOperationQueue setName:](v9, "setName:", v13), v13, v12, v11, -[NSOperationQueue setMaxConcurrentOperationCount:](self->_childOperationQueue, "setMaxConcurrentOperationCount:", 3), self->_isExecuting) || self->_isFinished))
  {
    [(NSOperationQueue *)self->_childOperationQueue setQualityOfService:self->_qualityOfServiceForChildOperationQueue];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v14 = self->_childOperationQueue;
  os_unfair_lock_unlock(&self->_asyncOperationLock);
  if (!childOperationQueue)
  {
    v15 = objc_alloc(MEMORY[0x1E696AD60]);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 initWithFormat:@"<%@: %p", v17, v14];

    v19 = [(NSOperationQueue *)v14 name];
    [v18 appendFormat:@"; name = %@", v19];

    [v18 appendFormat:@"; maxConcurrentOperationCount = %ld", -[NSOperationQueue maxConcurrentOperationCount](v14, "maxConcurrentOperationCount")];
    if (v6)
    {
      v20 = [(NSOperationQueue *)v14 qualityOfService];
      v21 = @"????";
      if (v20 <= 16)
      {
        if (v20 == -1)
        {
          v21 = @"default";
        }

        else if (v20 == 9)
        {
          v21 = @"background";
        }
      }

      else
      {
        switch(v20)
        {
          case 17:
            v21 = @"utility";
            break;
          case 25:
            v21 = @"userInitiated";
            break;
          case 33:
            v21 = @"userInteractive";
            break;
        }
      }

      [v18 appendFormat:@"; qualityOfService = %@", v21];
    }

    [v18 appendString:@">"];
    v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = self;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Created child operation queue: %{public}@.", buf, 0x16u);
    }
  }

  [(NSOperationQueue *)v14 addOperation:v4];
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  [(ICAsyncOperation *)self willChangeValueForKey:@"error"];
  [(ICAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  [(ICAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_asyncOperationLock);
  error = self->_error;
  self->_error = v4;

  self->_isExecuting = 0;
  self->_isFinished = 1;
  os_unfair_lock_unlock(&self->_asyncOperationLock);
  [(ICAsyncOperation *)self didChangeValueForKey:@"error"];
  [(ICAsyncOperation *)self didChangeValueForKey:@"isFinished"];

  [(ICAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
}

@end