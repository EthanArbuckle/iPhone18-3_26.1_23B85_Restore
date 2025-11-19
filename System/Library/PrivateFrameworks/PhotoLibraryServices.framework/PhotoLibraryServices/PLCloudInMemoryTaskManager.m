@interface PLCloudInMemoryTaskManager
- (BOOL)addClientHandlerAndCreateTaskIfNecessaryForResource:(id)a3 taskIdentifier:(id)a4 completionHandler:(id)a5;
- (PLCloudInMemoryTaskManager)init;
- (id)_identifierForResource:(id)a3;
- (void)cancelTaskWithTaskIdentifier:(id)a3;
- (void)reportCompletionForResource:(id)a3 withData:(id)a4 error:(id)a5;
- (void)reset;
- (void)setTransferTask:(id)a3 forResource:(id)a4;
@end

@implementation PLCloudInMemoryTaskManager

- (id)_identifierForResource:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 itemScopedIdentifier];
  v6 = [v4 resourceType];

  v7 = [v3 stringWithFormat:@"%@_%lu", v5, v6];

  return v7;
}

- (void)reportCompletionForResource:(id)a3 withData:(id)a4 error:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(PLCloudInMemoryTaskManager *)self _identifierForResource:a3];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks objectForKeyedSubscript:v10];
  [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks removeObjectForKey:v10];
  v12 = [v11 taskIDs];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NSMutableDictionary *)self->_taskIDsToDownloadTasks removeObjectForKey:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_lock);
  [v11 reportCompletionWithData:v8 error:v9];
}

- (void)cancelTaskWithTaskIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_taskIDsToDownloadTasks objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  [v5 cancelClientWithTaskID:v4];
}

- (void)setTransferTask:(id)a3 forResource:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v6 = a4;
  v7 = [(PLCloudInMemoryTaskManager *)self _identifierForResource:v6];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks objectForKeyedSubscript:v7];
  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v15 = @"resourceID";
    v16[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v9 exceptionWithName:v10 reason:@"Attempting to set a transfer task for CPL download for a resource that is not tracked" userInfo:v11];
    v13 = v12;

    objc_exception_throw(v12);
  }

  [v8 setTransferTask:v14];
}

- (BOOL)addClientHandlerAndCreateTaskIfNecessaryForResource:(id)a3 taskIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PLCloudInMemoryTaskManager *)self _identifierForResource:a3];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    [(PLCloudInMemoryDownloadTask *)v11 addClientWithTaskID:v9 completionHandler:v8];
    v13 = v12;
  }

  else
  {
    v13 = [[PLCloudInMemoryDownloadTask alloc] initWithResourceID:v10 taskID:v9 completionHandler:v8];
    [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks setObject:v13 forKeyedSubscript:v10];
  }

  [(NSMutableDictionary *)self->_taskIDsToDownloadTasks setObject:v13 forKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_lock);
  return v12 == 0;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_taskIDsToDownloadTasks copy];
  [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks removeAllObjects];
  [(NSMutableDictionary *)self->_taskIDsToDownloadTasks removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_108331];
}

- (PLCloudInMemoryTaskManager)init
{
  v9.receiver = self;
  v9.super_class = PLCloudInMemoryTaskManager;
  v2 = [(PLCloudInMemoryTaskManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resourceIDsToDownloadTasks = v3->_resourceIDsToDownloadTasks;
    v3->_resourceIDsToDownloadTasks = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    taskIDsToDownloadTasks = v3->_taskIDsToDownloadTasks;
    v3->_taskIDsToDownloadTasks = v6;
  }

  return v3;
}

@end