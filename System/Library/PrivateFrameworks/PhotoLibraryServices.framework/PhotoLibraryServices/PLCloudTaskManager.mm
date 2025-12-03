@interface PLCloudTaskManager
- (BOOL)addProgressBlock:(id)block completionHandler:(id)handler forResourceIdentifier:(id)identifier highPriority:(BOOL)priority withTaskIdentifier:(id)taskIdentifier;
- (PLCloudTaskManager)init;
- (id)_lock_taskForResourceIdentifier:(id)identifier highPriority:(BOOL)priority;
- (id)_lock_taskIdentifiersForResourceIdentifier:(id)identifier highPriority:(BOOL)priority;
- (id)getPendingTaskForTaskIdentifier:(id)identifier;
- (void)_lock_removeTaskIdentifiersForResourceIdentifier:(id)identifier highPriority:(BOOL)priority;
- (void)_lock_setTaskIdentifiers:(id)identifiers forResourceIdentifier:(id)identifier highPriority:(BOOL)priority;
- (void)cancelTaskWithTaskIdentifier:(id)identifier completion:(id)completion;
- (void)reportCompletionForResourceIdentifier:(id)identifier highPriority:(BOOL)priority withError:(id)error;
- (void)reportProgress:(float)progress forResourceIdentifier:(id)identifier highPriority:(BOOL)priority;
- (void)reset;
- (void)setPendingTaskWithTransferTask:(id)task withTaskIdentifier:(id)identifier;
@end

@implementation PLCloudTaskManager

- (void)_lock_removeTaskIdentifiersForResourceIdentifier:(id)identifier highPriority:(BOOL)priority
{
  priorityCopy = priority;
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  v6 = 32;
  if (priorityCopy)
  {
    v6 = 24;
  }

  [*(&self->super.isa + v6) removeObjectForKey:identifierCopy];
}

- (void)_lock_setTaskIdentifiers:(id)identifiers forResourceIdentifier:(id)identifier highPriority:(BOOL)priority
{
  priorityCopy = priority;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = 32;
  if (priorityCopy)
  {
    v9 = 24;
  }

  [*(&self->super.isa + v9) setObject:identifiersCopy forKey:identifierCopy];
}

- (id)_lock_taskIdentifiersForResourceIdentifier:(id)identifier highPriority:(BOOL)priority
{
  priorityCopy = priority;
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = 32;
  if (priorityCopy)
  {
    v7 = 24;
  }

  v8 = [*(&self->super.isa + v7) objectForKey:identifierCopy];

  return v8;
}

- (id)_lock_taskForResourceIdentifier:(id)identifier highPriority:(BOOL)priority
{
  priorityCopy = priority;
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  [(PLCloudTaskManager *)self _lock_taskIdentifiersForResourceIdentifier:identifierCopy highPriority:priorityCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier copy];
  [(NSMutableDictionary *)self->_lock_highPriorityResourceToTaskIdentifierMap removeAllObjects];
  [(NSMutableDictionary *)self->_lock_lowPriorityResourceToTaskIdentifierMap removeAllObjects];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Removing all PLCloudPendingResourceTasks", v5, 2u);
    }
  }

  [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_12882];
}

- (void)cancelTaskWithTaskIdentifier:(id)identifier completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier objectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    [v8 cancelTaskWithIdentifier:identifierCopy];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134218242;
        v11 = v8;
        v12 = 2112;
        v13 = identifierCopy;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Removing PLCloudPendingResourceTask [cancelled] %p for identifier: %@", &v10, 0x16u);
      }
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier removeObjectForKey:identifierCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8 != 0);
  }
}

- (id)getPendingTaskForTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)reportCompletionForResourceIdentifier:(id)identifier highPriority:(BOOL)priority withError:(id)error
{
  priorityCopy = priority;
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(PLCloudTaskManager *)self _lock_taskForResourceIdentifier:identifierCopy highPriority:priorityCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v21 = priorityCopy;
    v23 = identifierCopy;
    taskIDs = [v10 taskIDs];
    v12 = [taskIDs copy];

    v22 = errorCopy;
    [v10 reportCompletionWithError:errorCopy];
    os_unfair_lock_lock(&self->_lock);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      v17 = MEMORY[0x1E6994D48];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          if ((*v17 & 1) == 0)
          {
            v20 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218242;
              v29 = v10;
              v30 = 2112;
              v31 = v19;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Removing PLCloudPendingResourceTask [completed] %p for identifier: %@", buf, 0x16u);
            }
          }

          [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier removeObjectForKey:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    identifierCopy = v23;
    [(PLCloudTaskManager *)self _lock_removeTaskIdentifiersForResourceIdentifier:v23 highPriority:v21];
    os_unfair_lock_unlock(&self->_lock);

    errorCopy = v22;
  }
}

- (void)reportProgress:(float)progress forResourceIdentifier:(id)identifier highPriority:(BOOL)priority
{
  priorityCopy = priority;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(PLCloudTaskManager *)self _lock_taskForResourceIdentifier:identifierCopy highPriority:priorityCopy];

  os_unfair_lock_unlock(&self->_lock);
  v10 = v11;
  if (v11)
  {
    *&v9 = progress;
    [v11 reportProgress:v9];
    v10 = v11;
  }
}

- (void)setPendingTaskWithTransferTask:(id)task withTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  taskCopy = task;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  [v8 setTransferTask:taskCopy];
}

- (BOOL)addProgressBlock:(id)block completionHandler:(id)handler forResourceIdentifier:(id)identifier highPriority:(BOOL)priority withTaskIdentifier:(id)taskIdentifier
{
  priorityCopy = priority;
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  handlerCopy = handler;
  identifierCopy = identifier;
  taskIdentifierCopy = taskIdentifier;
  os_unfair_lock_lock(&self->_lock);
  v16 = [(PLCloudTaskManager *)self _lock_taskForResourceIdentifier:identifierCopy highPriority:priorityCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v16)
  {
    [(PLCloudPendingResourceTask *)v16 addProgressBlock:blockCopy completionHandler:handlerCopy withTaskIdentifier:taskIdentifierCopy];
    v17 = v16;
  }

  else
  {
    v17 = [[PLCloudPendingResourceTask alloc] initWithProgressBlock:blockCopy completionHandler:handlerCopy forTaskIdentifier:taskIdentifierCopy];
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v18 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = 134218242;
      v22 = v17;
      v23 = 2112;
      v24 = taskIdentifierCopy;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Set PLCloudPendingResourceTask %p for identifier: %@", &v21, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_pendingTaskForTaskIdentifier setObject:v17 forKey:taskIdentifierCopy];
  v19 = [(PLCloudTaskManager *)self _lock_taskIdentifiersForResourceIdentifier:identifierCopy highPriority:priorityCopy];
  if (!v19)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(PLCloudTaskManager *)self _lock_setTaskIdentifiers:v19 forResourceIdentifier:identifierCopy highPriority:priorityCopy];
  }

  [v19 addObject:taskIdentifierCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v16 != 0;
}

- (PLCloudTaskManager)init
{
  v11.receiver = self;
  v11.super_class = PLCloudTaskManager;
  v2 = [(PLCloudTaskManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_pendingTaskForTaskIdentifier = v2->_lock_pendingTaskForTaskIdentifier;
    v2->_lock_pendingTaskForTaskIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_highPriorityResourceToTaskIdentifierMap = v2->_lock_highPriorityResourceToTaskIdentifierMap;
    v2->_lock_highPriorityResourceToTaskIdentifierMap = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_lowPriorityResourceToTaskIdentifierMap = v2->_lock_lowPriorityResourceToTaskIdentifierMap;
    v2->_lock_lowPriorityResourceToTaskIdentifierMap = v7;

    v2->_lock._os_unfair_lock_opaque = 0;
    v9 = v2;
  }

  return v2;
}

@end