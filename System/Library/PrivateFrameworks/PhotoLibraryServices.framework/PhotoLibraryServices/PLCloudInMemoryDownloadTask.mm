@interface PLCloudInMemoryDownloadTask
- (BOOL)isCompleted;
- (CPLResourceTransferTask)transferTask;
- (NSArray)taskIDs;
- (PLCloudInMemoryDownloadTask)initWithResourceID:(id)a3 taskID:(id)a4 completionHandler:(id)a5;
- (void)addClientWithTaskID:(id)a3 completionHandler:(id)a4;
- (void)cancelClientWithTaskID:(id)a3;
- (void)reportCompletionWithData:(id)a3 error:(id)a4;
- (void)setTransferTask:(id)a3;
@end

@implementation PLCloudInMemoryDownloadTask

- (void)reportCompletionWithData:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMapTable *)self->_taskIDsToCompletionHandlers copy];
  self->_completed = 1;
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 keyEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v15 = [v8 objectForKey:v14];
        (v15)[2](v15, v14, v6, v7);
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (NSArray)taskIDs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = NSAllMapTableKeys(self->_taskIDsToCompletionHandlers);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)cancelClientWithTaskID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMapTable *)self->_taskIDsToCompletionHandlers objectForKey:v4];
  [(NSMapTable *)self->_taskIDsToCompletionHandlers removeObjectForKey:v4];
  v5 = [(NSMapTable *)self->_taskIDsToCompletionHandlers count];
  self->_completed = v5 == 0;
  v6 = self->_transferTask;
  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x1E6994AB0] operationCancelledError];
  v8[2](v8, v4, 0, v7);

  if (!v5)
  {
    [(CPLResourceTransferTask *)v6 cancelTask];
  }
}

- (void)addClientWithTaskID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  taskIDsToCompletionHandlers = self->_taskIDsToCompletionHandlers;
  v9 = _Block_copy(v6);

  [(NSMapTable *)taskIDsToCompletionHandlers setObject:v9 forKey:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (CPLResourceTransferTask)transferTask
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_transferTask;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTransferTask:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_transferTask)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    resourceID = self->_resourceID;
    v13 = @"resourceID";
    v14[0] = resourceID;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v6 exceptionWithName:v7 reason:@"An in memory download task should only ever be assigned 1 transfer task" userInfo:v9];
    v11 = v10;

    objc_exception_throw(v10);
  }

  objc_storeStrong(&self->_transferTask, a3);
  completed = self->_completed;
  os_unfair_lock_unlock(&self->_lock);
  if (completed)
  {
    [v12 cancelTask];
  }
}

- (BOOL)isCompleted
{
  os_unfair_lock_lock(&self->_lock);
  completed = self->_completed;
  os_unfair_lock_unlock(&self->_lock);
  return completed;
}

- (PLCloudInMemoryDownloadTask)initWithResourceID:(id)a3 taskID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PLCloudInMemoryDownloadTask;
  v11 = [(PLCloudInMemoryDownloadTask *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    resourceID = v11->_resourceID;
    v11->_resourceID = v12;

    v11->_lock._os_unfair_lock_opaque = 0;
    v14 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:0x10000 capacity:4];
    taskIDsToCompletionHandlers = v11->_taskIDsToCompletionHandlers;
    v11->_taskIDsToCompletionHandlers = v14;

    v16 = v11->_taskIDsToCompletionHandlers;
    v17 = _Block_copy(v10);
    [(NSMapTable *)v16 setObject:v17 forKey:v9];
  }

  return v11;
}

@end