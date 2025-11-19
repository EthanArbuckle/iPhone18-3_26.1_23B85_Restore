@interface PLCloudPendingResourceTask
- (PLCloudPendingResourceTask)initWithProgressBlock:(id)a3 completionHandler:(id)a4 forTaskIdentifier:(id)a5;
- (id)lastUpdated;
- (id)taskIDs;
- (void)_lock_setTransferTask:(id)a3;
- (void)addProgressBlock:(id)a3 completionHandler:(id)a4 withTaskIdentifier:(id)a5;
- (void)cancelTaskWithIdentifier:(id)a3;
- (void)keepAlive;
- (void)reportCompletionWithError:(id)a3;
- (void)reportProgress:(float)a3;
- (void)setTransferTask:(id)a3;
@end

@implementation PLCloudPendingResourceTask

- (id)lastUpdated
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDate *)self->_lock_lastUpdated copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)taskIDs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_taskIdentifierToCompletionHandler allKeys];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)cancelTaskWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_taskIdentifierToCompletionHandler objectForKey:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E6994D48];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Cancelling task with taskIdentifier %@", &v15, 0xCu);
      }
    }

    v8 = [(CPLResourceTransferTask *)self->_lock_transferTask resource];
    v9 = [v8 resourceType];

    [(NSMutableDictionary *)self->_lock_taskIdentifierToCompletionHandler removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_lock_taskIdentifierToCompletionHandler count])
    {
      lock_transferTask = self->_lock_transferTask;
      if (lock_transferTask)
      {
        if ((*v6 & 1) == 0)
        {
          v11 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = self->_lock_transferTask;
            v15 = 138412290;
            v16 = v12;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Canceling task %@", &v15, 0xCu);
          }

          lock_transferTask = self->_lock_transferTask;
        }

        [(CPLResourceTransferTask *)lock_transferTask cancelTask];
        [(PLCloudPendingResourceTask *)self _lock_setTransferTask:0];
        self->_lock_transferTaskRemoved = 1;
      }

      else if ((*v6 & 1) == 0)
      {
        v13 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = 138412290;
          v16 = v4;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Transfer task not found for %@. Nothing is canceled", &v15, 0xCu);
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    v14 = [MEMORY[0x1E6994AB0] operationCancelledError];
    (v5)[2](v5, v4, v9, 0, v14);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  [(PLCloudPendingResourceTask *)self keepAlive];
}

- (void)reportCompletionWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      lock_transferTask = self->_lock_transferTask;
      *buf = 138412290;
      v20 = lock_transferTask;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Task %@ completed", buf, 0xCu);
    }
  }

  if (self->_lock_completed)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [(CPLResourceTransferTask *)self->_lock_transferTask resource];
    v11 = [v10 identity];
    v9 = [v11 fileURL];

    v12 = [(CPLResourceTransferTask *)self->_lock_transferTask resource];
    v8 = [v12 resourceType];

    v7 = [(NSMutableDictionary *)self->_lock_taskIdentifierToCompletionHandler copy];
    [(NSMutableDictionary *)self->_lock_taskIdentifierToCompletionHandler removeAllObjects];
    self->_lock_completed = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__PLCloudPendingResourceTask_reportCompletionWithError___block_invoke;
  v15[3] = &unk_1E756B460;
  v17 = v4;
  v18 = v8;
  v16 = v9;
  v13 = v4;
  v14 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)reportProgress:(float)a3
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      lock_transferTask = self->_lock_transferTask;
      *buf = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = lock_transferTask;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Reporting progress %f for task %@", buf, 0x16u);
    }
  }

  v7 = [(NSMutableDictionary *)self->_lock_taskIdentifierToProgressBlock copy];
  os_unfair_lock_unlock(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PLCloudPendingResourceTask_reportProgress___block_invoke;
  v8[3] = &__block_descriptor_36_e43_v32__0__NSString_8___v____NSString_f_16_B24l;
  v9 = a3;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
  [(PLCloudPendingResourceTask *)self keepAlive];
}

- (void)addProgressBlock:(id)a3 completionHandler:(id)a4 withTaskIdentifier:(id)a5
{
  aBlock = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  if (aBlock)
  {
    lock_taskIdentifierToProgressBlock = self->_lock_taskIdentifierToProgressBlock;
    v11 = _Block_copy(aBlock);
    [(NSMutableDictionary *)lock_taskIdentifierToProgressBlock setObject:v11 forKey:v9];
  }

  if (v8)
  {
    lock_taskIdentifierToCompletionHandler = self->_lock_taskIdentifierToCompletionHandler;
    v13 = _Block_copy(v8);
    [(NSMutableDictionary *)lock_taskIdentifierToCompletionHandler setObject:v13 forKey:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)keepAlive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x1E695DF00] date];
  lock_lastUpdated = self->_lock_lastUpdated;
  self->_lock_lastUpdated = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTransferTask:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PLCloudPendingResourceTask *)self _lock_setTransferTask:v4];

  os_unfair_lock_unlock(&self->_lock);

  [(PLCloudPendingResourceTask *)self keepAlive];
}

- (PLCloudPendingResourceTask)initWithProgressBlock:(id)a3 completionHandler:(id)a4 forTaskIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = PLCloudPendingResourceTask;
  v11 = [(PLCloudPendingResourceTask *)&v24 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_lock_completed = 0;
    v13 = [MEMORY[0x1E695DF00] date];
    lock_lastUpdated = v12->_lock_lastUpdated;
    v12->_lock_lastUpdated = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_taskIdentifierToProgressBlock = v12->_lock_taskIdentifierToProgressBlock;
    v12->_lock_taskIdentifierToProgressBlock = v15;

    if (v8)
    {
      v17 = v12->_lock_taskIdentifierToProgressBlock;
      v18 = _Block_copy(v8);
      [(NSMutableDictionary *)v17 setObject:v18 forKey:v10];
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_taskIdentifierToCompletionHandler = v12->_lock_taskIdentifierToCompletionHandler;
    v12->_lock_taskIdentifierToCompletionHandler = v19;

    if (v9)
    {
      v21 = v12->_lock_taskIdentifierToCompletionHandler;
      v22 = _Block_copy(v9);
      [(NSMutableDictionary *)v21 setObject:v22 forKey:v10];
    }
  }

  return v12;
}

- (void)_lock_setTransferTask:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  lock_transferTask = self->_lock_transferTask;
  self->_lock_transferTask = v4;
}

@end