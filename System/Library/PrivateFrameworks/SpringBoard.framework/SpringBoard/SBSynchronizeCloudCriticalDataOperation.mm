@interface SBSynchronizeCloudCriticalDataOperation
- (BOOL)isComplete;
- (BOOL)waitForSynchronizeToCompleteWithTimeout:(double)timeout;
- (SBSynchronizeCloudCriticalDataOperation)init;
- (SBSynchronizeCloudCriticalDataOperation)initWithDefaults:(id)defaults userManager:(id)manager;
- (id)_queue_fetchCloudAccountOperation;
- (id)_queue_fetchCloudDefaultsOperation;
- (id)_queue_fetchMDMProfilesOperation;
- (id)_queue_migrateSoundPreferencesOperation;
- (unint64_t)_pendingOperationCount;
- (void)_addTestOperation:(id)operation shouldBlock:(BOOL)block;
- (void)_fetchDomains:(id)domains fromIndex:(int64_t)index queue:(id)queue completion:(id)completion;
- (void)_queue_addOperation:(id)operation shouldBlock:(BOOL)block;
- (void)_queue_startFetchingCloudCriticalData;
- (void)startSynchronize;
@end

@implementation SBSynchronizeCloudCriticalDataOperation

- (SBSynchronizeCloudCriticalDataOperation)init
{
  v3 = +[SBDefaults localDefaults];
  bootDefaults = [v3 bootDefaults];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  v6 = [(SBSynchronizeCloudCriticalDataOperation *)self initWithDefaults:bootDefaults userManager:mEMORY[0x277D77BF8]];

  return v6;
}

- (SBSynchronizeCloudCriticalDataOperation)initWithDefaults:(id)defaults userManager:(id)manager
{
  v24 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = SBSynchronizeCloudCriticalDataOperation;
  v9 = [(SBSynchronizeCloudCriticalDataOperation *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_queue_cloudSyncStartTime = -1.79769313e308;
    if ([managerCopy isMultiUser] && (objc_msgSend(managerCopy, "isLoginSession") & 1) == 0)
    {
      v11 = [defaultsCopy hasCompletedSynchronizingCloudCriticalData] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    v10->_needsSync = v11;
    [@"com.apple.springboard.synchronizeCloudCriticalData" UTF8String];
    v12 = BSDispatchQueueCreateWithQualityOfService();
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = dispatch_group_create();
    queue_operationGroup = v10->_queue_operationGroup;
    v10->_queue_operationGroup = v14;

    v10->_queue_isComplete = !v10->_needsSync;
    objc_storeStrong(&v10->_queue_bootDefaults, defaults);
    v10->_queue_operationCount = 0;
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v16;

    [(NSOperationQueue *)v10->_operationQueue setQualityOfService:33];
    [(NSOperationQueue *)v10->_operationQueue setName:@"com.apple.springboard.synchronizeCloudCriticalData"];
    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:5];
    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v10->_needsSync)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      *buf = 138412290;
      v23 = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Needs to synchronize cloud critical data? %@", buf, 0xCu);
    }
  }

  return v10;
}

- (BOOL)isComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SBSynchronizeCloudCriticalDataOperation_isComplete__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__SBSynchronizeCloudCriticalDataOperation_isComplete__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)startSynchronize
{
  if (self->_needsSync)
  {
    block[7] = v2;
    block[8] = v3;
    kdebug_trace();
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SBSynchronizeCloudCriticalDataOperation_startSynchronize__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_sync(queue, block);
    kdebug_trace();
  }
}

- (BOOL)waitForSynchronizeToCompleteWithTimeout:(double)timeout
{
  if ([(SBSynchronizeCloudCriticalDataOperation *)self isComplete])
  {
    return 1;
  }

  queue_operationGroup = self->_queue_operationGroup;
  v6 = BSDispatchTimeWithInterval();
  return dispatch_group_wait(queue_operationGroup, v6) == 0;
}

- (unint64_t)_pendingOperationCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SBSynchronizeCloudCriticalDataOperation__pendingOperationCount__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __65__SBSynchronizeCloudCriticalDataOperation__pendingOperationCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) operationCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_addTestOperation:(id)operation shouldBlock:(BOOL)block
{
  operationCopy = operation;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SBSynchronizeCloudCriticalDataOperation__addTestOperation_shouldBlock___block_invoke;
  block[3] = &unk_2783A97D8;
  blockCopy = block;
  block[4] = self;
  v10 = operationCopy;
  v8 = operationCopy;
  dispatch_sync(queue, block);
}

uint64_t __73__SBSynchronizeCloudCriticalDataOperation__addTestOperation_shouldBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = 72;
  }

  else
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = 80;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(a1 + 32);
  v7 = *(v6 + v4);
  *(v6 + v4) = v5;

  v3 = *(*(a1 + 32) + v4);
LABEL_7:
  v8 = *(a1 + 40);

  return [v3 addObject:v8];
}

- (void)_queue_addOperation:(id)operation shouldBlock:(BOOL)block
{
  blockCopy = block;
  operationCopy = operation;
  if (blockCopy)
  {
    dispatch_group_enter(self->_queue_operationGroup);
  }

  ++self->_queue_operationCount;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SBSynchronizeCloudCriticalDataOperation__queue_addOperation_shouldBlock___block_invoke;
  v7[3] = &unk_2783A9F58;
  v7[4] = self;
  v8 = blockCopy;
  [operationCopy setCompletionBlock:v7];
  [(NSOperationQueue *)self->_operationQueue addOperation:operationCopy];
}

void __75__SBSynchronizeCloudCriticalDataOperation__queue_addOperation_shouldBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__SBSynchronizeCloudCriticalDataOperation__queue_addOperation_shouldBlock___block_invoke_2;
  v3[3] = &unk_2783A9F58;
  v3[4] = v1;
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void __75__SBSynchronizeCloudCriticalDataOperation__queue_addOperation_shouldBlock___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 48);
  v2 = *(a1 + 32);
  if (!*(v2 + 48))
  {
    *(v2 + 56) = 1;
    [*(*(a1 + 32) + 16) setHasCompletedSynchronizingCloudCriticalData:1];
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      BSContinuousMachTimeNow();
      v7 = v6 - *(*(a1 + 32) + 64);
      v8 = 138543618;
      v9 = v5;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ took %fs", &v8, 0x16u);
    }
  }

  if (*(a1 + 40) == 1)
  {
    dispatch_group_leave(*(*(a1 + 32) + 40));
  }
}

- (void)_queue_startFetchingCloudCriticalData
{
  v43 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssert();
  BSContinuousMachTimeNow();
  self->_queue_cloudSyncStartTime = v3;
  _queue_fetchCloudAccountOperation = [(SBSynchronizeCloudCriticalDataOperation *)self _queue_fetchCloudAccountOperation];
  _queue_fetchCloudDefaultsOperation = [(SBSynchronizeCloudCriticalDataOperation *)self _queue_fetchCloudDefaultsOperation];
  _queue_fetchMDMProfilesOperation = [(SBSynchronizeCloudCriticalDataOperation *)self _queue_fetchMDMProfilesOperation];
  _queue_migrateSoundPreferencesOperation = [(SBSynchronizeCloudCriticalDataOperation *)self _queue_migrateSoundPreferencesOperation];
  [_queue_fetchCloudDefaultsOperation addDependency:_queue_fetchCloudAccountOperation];
  [_queue_migrateSoundPreferencesOperation addDependency:_queue_fetchCloudDefaultsOperation];
  v8 = _os_feature_enabled_impl();
  v9 = _os_feature_enabled_impl();
  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = v9 ^ 1u;
    *buf = 138543874;
    v14 = v8 ^ 1u;
    v38 = v12;
    v39 = 1024;
    v40 = v13;
    v41 = 1024;
    v42 = v14;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ wait for iCloud sign-in: %d, wait for cloud defaults: %d", buf, 0x18u);
  }

  else
  {
    v13 = v9 ^ 1u;
    v14 = v8 ^ 1u;
  }

  [(SBSynchronizeCloudCriticalDataOperation *)self _queue_addOperation:_queue_fetchCloudAccountOperation shouldBlock:v13];
  [(SBSynchronizeCloudCriticalDataOperation *)self _queue_addOperation:_queue_fetchCloudDefaultsOperation shouldBlock:v14];
  [(SBSynchronizeCloudCriticalDataOperation *)self _queue_addOperation:_queue_fetchMDMProfilesOperation shouldBlock:0];
  [(SBSynchronizeCloudCriticalDataOperation *)self _queue_addOperation:_queue_migrateSoundPreferencesOperation shouldBlock:v14];
  blockingTestOperations = self->_blockingTestOperations;
  if (blockingTestOperations)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = blockingTestOperations;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        v20 = 0;
        do
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(SBSynchronizeCloudCriticalDataOperation *)self _queue_addOperation:*(*(&v31 + 1) + 8 * v20++) shouldBlock:1];
        }

        while (v18 != v20);
        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v18);
    }
  }

  nonblockingTestOperations = self->_nonblockingTestOperations;
  if (nonblockingTestOperations)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = nonblockingTestOperations;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(SBSynchronizeCloudCriticalDataOperation *)self _queue_addOperation:*(*(&v27 + 1) + 8 * v26++) shouldBlock:0, v27];
        }

        while (v24 != v26);
        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v24);
    }
  }
}

- (id)_queue_fetchCloudAccountOperation
{
  v2 = objc_alloc_init(_SBSynchronizeOperation);
  [(_SBSynchronizeOperation *)v2 setName:@"FetchICloudAccount"];
  [(_SBSynchronizeOperation *)v2 setHumanReadableDescription:@"Loading iCloud account data..."];
  [(_SBSynchronizeOperation *)v2 addTask:&__block_literal_global_347];

  return v2;
}

- (id)_queue_fetchMDMProfilesOperation
{
  v2 = objc_alloc_init(_SBSynchronizeOperation);
  [(_SBSynchronizeOperation *)v2 setName:@"FetchMDMProfiles"];
  [(_SBSynchronizeOperation *)v2 setHumanReadableDescription:@"Fetching profiles..."];
  [(_SBSynchronizeOperation *)v2 addTask:&__block_literal_global_29_4];

  return v2;
}

- (id)_queue_fetchCloudDefaultsOperation
{
  if (_queue_fetchCloudDefaultsOperation___once != -1)
  {
    [SBSynchronizeCloudCriticalDataOperation _queue_fetchCloudDefaultsOperation];
  }

  v3 = objc_alloc_init(_SBSynchronizeOperation);
  [(_SBSynchronizeOperation *)v3 setName:@"FetchICloudDefaults"];
  [(_SBSynchronizeOperation *)v3 setHumanReadableDescription:@"Fetching data from iCloud..."];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__SBSynchronizeCloudCriticalDataOperation__queue_fetchCloudDefaultsOperation__block_invoke_2;
  v5[3] = &unk_2783BFAB8;
  v5[4] = self;
  [(_SBSynchronizeOperation *)v3 addTask:v5];

  return v3;
}

void __77__SBSynchronizeCloudCriticalDataOperation__queue_fetchCloudDefaultsOperation__block_invoke()
{
  v0 = _queue_fetchCloudDefaultsOperation___bootCriticalDomains;
  _queue_fetchCloudDefaultsOperation___bootCriticalDomains = &unk_28336EAD8;
}

void __77__SBSynchronizeCloudCriticalDataOperation__queue_fetchCloudDefaultsOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(v3);
  kdebug_trace();
  BSContinuousMachTimeNow();
  v5 = v4;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.CloudDefaultsDomains", @"com.apple.springboard.synchronizeCloudCriticalData"];
  [v6 UTF8String];
  v7 = BSDispatchQueueCreateWithQualityOfService();
  v8 = *(a1 + 32);
  v9 = _queue_fetchCloudDefaultsOperation___bootCriticalDomains;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SBSynchronizeCloudCriticalDataOperation__queue_fetchCloudDefaultsOperation__block_invoke_3;
  v11[3] = &unk_2783AB2A8;
  v13 = v5;
  v11[4] = v8;
  v12 = v3;
  v10 = v3;
  [v8 _fetchDomains:v9 fromIndex:0 queue:v7 completion:v11];
}

void __77__SBSynchronizeCloudCriticalDataOperation__queue_fetchCloudDefaultsOperation__block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    BSContinuousMachTimeNow();
    v6 = v5 - *(a1 + 48);
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed syncing domains (duration: %f sec)", &v7, 0x16u);
  }

  kdebug_trace();
  dispatch_group_leave(*(a1 + 40));
}

- (void)_fetchDomains:(id)domains fromIndex:(int64_t)index queue:(id)queue completion:(id)completion
{
  domainsCopy = domains;
  queueCopy = queue;
  completionCopy = completion;
  if (domainsCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [SBSynchronizeCloudCriticalDataOperation _fetchDomains:a2 fromIndex:self queue:? completion:?];
    if (completionCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [SBSynchronizeCloudCriticalDataOperation _fetchDomains:a2 fromIndex:self queue:? completion:?];
    goto LABEL_4;
  }

  [SBSynchronizeCloudCriticalDataOperation _fetchDomains:a2 fromIndex:self queue:? completion:?];
  if (!queueCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!completionCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SBSynchronizeCloudCriticalDataOperation__fetchDomains_fromIndex_queue_completion___block_invoke;
  block[3] = &unk_2783AA4F8;
  v21 = completionCopy;
  indexCopy = index;
  v18 = domainsCopy;
  selfCopy = self;
  v20 = queueCopy;
  v14 = completionCopy;
  v15 = queueCopy;
  v16 = domainsCopy;
  dispatch_async(v15, block);
}

void __84__SBSynchronizeCloudCriticalDataOperation__fetchDomains_fromIndex_queue_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2 >= [*(a1 + 32) count])
  {
    v8 = *(*(a1 + 56) + 16);

    v8();
  }

  else
  {
    v3 = [*(a1 + 32) objectAtIndex:*(a1 + 64)];
    BSContinuousMachTimeNow();
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Start syncing domain: %@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v7 = v3;
    _CFPreferencesAppFullCloudSynchronize();
  }
}

uint64_t __84__SBSynchronizeCloudCriticalDataOperation__fetchDomains_fromIndex_queue_completion___block_invoke_70(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 40);
    BSContinuousMachTimeNow();
    v7 = v6 - *(a1 + 72);
    v9 = 138543874;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed syncing domain: %@ (duration: %f sec)", &v9, 0x20u);
  }

  return [*(a1 + 32) _fetchDomains:*(a1 + 48) fromIndex:*(a1 + 80) + 1 queue:*(a1 + 56) completion:*(a1 + 64)];
}

- (id)_queue_migrateSoundPreferencesOperation
{
  v2 = objc_alloc_init(_SBSynchronizeOperation);
  [(_SBSynchronizeOperation *)v2 setName:@"MigrateSoundPreferences"];
  [(_SBSynchronizeOperation *)v2 setHumanReadableDescription:@"Migrating sound preferences from com.apple.springboard to com.apple.preferences.sounds..."];
  [(_SBSynchronizeOperation *)v2 addTask:&__block_literal_global_79_2];

  return v2;
}

- (void)_fetchDomains:(uint64_t)a1 fromIndex:(uint64_t)a2 queue:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSynchronizeCloudCriticalDataOperation.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"domains"}];
}

- (void)_fetchDomains:(uint64_t)a1 fromIndex:(uint64_t)a2 queue:completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSynchronizeCloudCriticalDataOperation.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

- (void)_fetchDomains:(uint64_t)a1 fromIndex:(uint64_t)a2 queue:completion:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSynchronizeCloudCriticalDataOperation.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end