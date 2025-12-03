@interface PLCloudInMemoryTaskManager
- (BOOL)addClientHandlerAndCreateTaskIfNecessaryForResource:(id)resource taskIdentifier:(id)identifier completionHandler:(id)handler;
- (PLCloudInMemoryTaskManager)init;
- (id)_identifierForResource:(id)resource;
- (void)cancelTaskWithTaskIdentifier:(id)identifier;
- (void)reportCompletionForResource:(id)resource withData:(id)data error:(id)error;
- (void)reset;
- (void)setTransferTask:(id)task forResource:(id)resource;
@end

@implementation PLCloudInMemoryTaskManager

- (id)_identifierForResource:(id)resource
{
  v3 = MEMORY[0x1E696AEC0];
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  resourceType = [resourceCopy resourceType];

  v7 = [v3 stringWithFormat:@"%@_%lu", itemScopedIdentifier, resourceType];

  return v7;
}

- (void)reportCompletionForResource:(id)resource withData:(id)data error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  errorCopy = error;
  v10 = [(PLCloudInMemoryTaskManager *)self _identifierForResource:resource];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks objectForKeyedSubscript:v10];
  [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks removeObjectForKey:v10];
  taskIDs = [v11 taskIDs];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [taskIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(taskIDs);
        }

        [(NSMutableDictionary *)self->_taskIDsToDownloadTasks removeObjectForKey:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [taskIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_lock);
  [v11 reportCompletionWithData:dataCopy error:errorCopy];
}

- (void)cancelTaskWithTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_taskIDsToDownloadTasks objectForKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
  [v5 cancelClientWithTaskID:identifierCopy];
}

- (void)setTransferTask:(id)task forResource:(id)resource
{
  v16[1] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  resourceCopy = resource;
  v7 = [(PLCloudInMemoryTaskManager *)self _identifierForResource:resourceCopy];
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

  [v8 setTransferTask:taskCopy];
}

- (BOOL)addClientHandlerAndCreateTaskIfNecessaryForResource:(id)resource taskIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v10 = [(PLCloudInMemoryTaskManager *)self _identifierForResource:resource];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    [(PLCloudInMemoryDownloadTask *)v11 addClientWithTaskID:identifierCopy completionHandler:handlerCopy];
    v13 = v12;
  }

  else
  {
    v13 = [[PLCloudInMemoryDownloadTask alloc] initWithResourceID:v10 taskID:identifierCopy completionHandler:handlerCopy];
    [(NSMutableDictionary *)self->_resourceIDsToDownloadTasks setObject:v13 forKeyedSubscript:v10];
  }

  [(NSMutableDictionary *)self->_taskIDsToDownloadTasks setObject:v13 forKeyedSubscript:identifierCopy];

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