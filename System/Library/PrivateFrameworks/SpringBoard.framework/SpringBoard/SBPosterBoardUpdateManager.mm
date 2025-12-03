@interface SBPosterBoardUpdateManager
+ (SBPosterBoardUpdateManager)sharedInstance;
- (SBPosterBoardUpdateManager)init;
- (id)_backgroundTaskIdentifierForUpdate:(int64_t)update;
- (void)_notifyDidFinishUpdate:(int64_t)update error:(id)error;
- (void)_notifyWillBeginUpdate:(int64_t)update;
- (void)_registerForWork:(int64_t)work;
- (void)_schedulerQueue_submitTaskRequestForUpdate:(int64_t)update updateIdentifier:(id)identifier;
- (void)_unregisterForWork:(int64_t)work;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)executeUpdate:(int64_t)update forBackgroundTask:(id)task updateIdentifier:(id)identifier;
- (void)removeObserver:(id)observer;
@end

@implementation SBPosterBoardUpdateManager

+ (SBPosterBoardUpdateManager)sharedInstance
{
  if (sharedInstance_onceToken_32 != -1)
  {
    +[SBPosterBoardUpdateManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

void __44__SBPosterBoardUpdateManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_3;
  sharedInstance_sharedInstance_3 = v0;
}

- (SBPosterBoardUpdateManager)init
{
  v12.receiver = self;
  v12.super_class = SBPosterBoardUpdateManager;
  v2 = [(SBPosterBoardUpdateManager *)&v12 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@-SchedulerQueue", v7];
    Serial = BSDispatchQueueCreateSerial();
    schedulerQueue = v2->_schedulerQueue;
    v2->_schedulerQueue = Serial;

    [(SBPosterBoardUpdateManager *)v2 _registerForWork:0];
    [(SBPosterBoardUpdateManager *)v2 _registerForWork:1];
    [(SBPosterBoardUpdateManager *)v2 _registerForWork:2];
  }

  return v2;
}

- (void)dealloc
{
  [(SBPosterBoardUpdateManager *)self _unregisterForWork:0];
  [(SBPosterBoardUpdateManager *)self _unregisterForWork:1];
  [(SBPosterBoardUpdateManager *)self _unregisterForWork:2];
  v3.receiver = self;
  v3.super_class = SBPosterBoardUpdateManager;
  [(SBPosterBoardUpdateManager *)&v3 dealloc];
}

- (void)executeUpdate:(int64_t)update forBackgroundTask:(id)task updateIdentifier:(id)identifier
{
  taskCopy = task;
  identifierCopy = identifier;
  mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__SBPosterBoardUpdateManager_executeUpdate_forBackgroundTask_updateIdentifier___block_invoke;
  v13[3] = &unk_2783AB280;
  v13[4] = self;
  v14 = taskCopy;
  v15 = identifierCopy;
  updateCopy = update;
  v11 = identifierCopy;
  v12 = taskCopy;
  [mEMORY[0x277D65ED8] performAfterFirstUnlockSinceBootUsingBlock:v13];
}

void __79__SBPosterBoardUpdateManager_executeUpdate_forBackgroundTask_updateIdentifier___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__78;
  v23 = __Block_byref_object_dispose__78;
  v24 = objc_alloc_init(MEMORY[0x277D3EA00]);
  [*(a1 + 32) _notifyWillBeginUpdate:*(a1 + 56)];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __79__SBPosterBoardUpdateManager_executeUpdate_forBackgroundTask_updateIdentifier___block_invoke_8;
  v13 = &unk_2783BA020;
  v2 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v16 = v3;
  v17 = &v19;
  v18 = v4;
  v5 = MEMORY[0x223D6F7F0](&v10);
  v6 = *(a1 + 56);
  if (v6 == 2)
  {
    [v20[5] notifyPosterBoardOfApplicationUpdatesWithCompletion:{v5, v10, v11, v12, v13, v14, v15}];
  }

  else if (v6 == 1)
  {
    [v20[5] overnightUpdateWithCompletion:{v5, v10, v11, v12, v13, v14, v15}];
  }

  else if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA470];
    v26[0] = @"Specified invalid SBPosterBoardUpdate";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:{1, v10, v11, v12, v13, v14, v15}];
    v9 = [v7 errorWithDomain:@"SBPosterBoardUpdateManagerErrorDomain" code:3328 userInfo:v8];
    (v5)[2](v5, v9);
  }

  else
  {
    [v20[5] prewarmWithCompletion:{v5, v10, v11, v12, v13, v14, v15}];
  }

  _Block_object_dispose(&v19, 8);
}

void __79__SBPosterBoardUpdateManager_executeUpdate_forBackgroundTask_updateIdentifier___block_invoke_8(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [*(a1 + 40) identifier];
    v8 = [*(a1 + 48) UUIDString];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@ executeUpdate] PosterBoardUpdate completed. Background Task: [%{public}@:%{public}@]", &v11, 0x20u);
  }

  [*(a1 + 40) setTaskCompleted];
  [*(a1 + 32) _notifyDidFinishUpdate:*(a1 + 64) error:v3];

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

- (void)_registerForWork:(int64_t)work
{
  if ([(SBPosterBoardUpdateManager *)self _isBGSystemTaskUpdate:?])
  {
    schedulerQueue = self->_schedulerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBPosterBoardUpdateManager__registerForWork___block_invoke;
    block[3] = &unk_2783A8BC8;
    block[4] = self;
    block[5] = work;
    dispatch_async(schedulerQueue, block);
  }

  else if (work == 2)
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:self selector:sel__noteApplicationsChanged_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [defaultCenter addObserver:self selector:sel__noteApplicationsChanged_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }
}

void __47__SBPosterBoardUpdateManager__registerForWork___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backgroundTaskIdentifierForUpdate:*(a1 + 40)];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [MEMORY[0x277CF0810] sharedScheduler];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__SBPosterBoardUpdateManager__registerForWork___block_invoke_2;
  v11 = &unk_2783BA048;
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v2;
  v14 = v3;
  v15 = v5;
  v6 = v3;
  v7 = v2;
  [v4 registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:&v8];

  [*(a1 + 32) _schedulerQueue_submitTaskRequestForUpdate:*(a1 + 40) updateIdentifier:{v6, v8, v9, v10, v11, v12}];
}

void __47__SBPosterBoardUpdateManager__registerForWork___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) UUIDString];
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@ _registerForWork] Handling launch for posters task: [%{public}@:%{public}@]", &v9, 0x20u);
  }

  [*(a1 + 32) executeUpdate:*(a1 + 56) forBackgroundTask:v3 updateIdentifier:*(a1 + 48)];
}

- (void)_unregisterForWork:(int64_t)work
{
  if ([(SBPosterBoardUpdateManager *)self _isBGSystemTaskUpdate:?])
  {
    schedulerQueue = self->_schedulerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SBPosterBoardUpdateManager__unregisterForWork___block_invoke;
    block[3] = &unk_2783A8BC8;
    block[4] = self;
    block[5] = work;
    dispatch_async(schedulerQueue, block);
  }

  else if (work == 2)
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }
}

void __49__SBPosterBoardUpdateManager__unregisterForWork___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backgroundTaskIdentifierForUpdate:*(a1 + 40)];
  v1 = [MEMORY[0x277CF0810] sharedScheduler];
  [v1 deregisterTaskWithIdentifier:v2];
}

- (id)_backgroundTaskIdentifierForUpdate:(int64_t)update
{
  if (![(SBPosterBoardUpdateManager *)self _isBGSystemTaskUpdate:?])
  {
    [(SBPosterBoardUpdateManager *)a2 _backgroundTaskIdentifierForUpdate:?];
  }

  if (update == 1)
  {
    return @"com.apple.springboard.posterboardupdate.overnight";
  }

  if (!update)
  {
    return @"com.apple.springboard.posterboardupdate.prewarm";
  }

  update = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown update type: %ld", update];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(SBPosterBoardUpdateManager *)a2 _backgroundTaskIdentifierForUpdate:update];
  }

  [update UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_schedulerQueue_submitTaskRequestForUpdate:(int64_t)update updateIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [(SBPosterBoardUpdateManager *)self _backgroundTaskIdentifierForUpdate:update];
  if (update == 1)
  {
    v8 = [objc_alloc(MEMORY[0x277CF07D8]) initWithIdentifier:v7];
    [v8 setRequiresExternalPower:1];
    [v8 setInterval:86400.0];
    [v8 setMinDurationBetweenInstances:69120.0];
  }

  else if (update)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v7];
    [v8 setRequiresExternalPower:0];
    [v8 setScheduleAfter:0.0];
    [v8 setTrySchedulingBefore:300.0];
    [v8 setApplicationRelationship:1];
  }

  [v8 setPriority:2];
  [v8 setResourceIntensive:1];
  [v8 setResources:23];
  [v8 setRequiresNetworkConnectivity:0];
  [v8 setInvolvedProcesses:&unk_28336E6B8];
  [v8 setRequiresBuddyComplete:1];
  v9 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [v9 prepareBackgroundUpdateTask:v8];
  }

  v10 = SBLogWallpaper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    uUIDString = [identifierCopy UUIDString];
    *buf = 138543874;
    v25 = v12;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = uUIDString;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ _schedulerQueue_submitTaskRequestForUpdate] About to submit posters task: [%{public}@:%{public}@]", buf, 0x20u);
  }

  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  v23 = 0;
  v15 = [mEMORY[0x277CF0810] submitTaskRequest:v8 error:&v23];
  v16 = v23;

  v17 = SBLogWallpaper();
  v18 = v17;
  if ((v15 & 1) == 0)
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v22 = objc_opt_class();
    v20 = NSStringFromClass(v22);
    uUIDString2 = [identifierCopy UUIDString];
    *buf = 138544130;
    v25 = v20;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = uUIDString2;
    v30 = 2114;
    v31 = v16;
    _os_log_error_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_ERROR, "[%{public}@ _schedulerQueue_submitTaskRequestForUpdate] Failed to submit posters task: [%{public}@:%{public}@], error: %{public}@", buf, 0x2Au);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    uUIDString2 = [identifierCopy UUIDString];
    *buf = 138544130;
    v25 = v20;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = uUIDString2;
    v30 = 2114;
    v31 = v16;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@ _schedulerQueue_submitTaskRequestForUpdate] Successfully submitted posters task: [%{public}@:%{public}@], error: %{public}@", buf, 0x2Au);
LABEL_13:
  }

LABEL_15:
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)_notifyWillBeginUpdate:(int64_t)update
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSHashTable *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 updateManager:selfCopy willBeginUpdate:{update, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidFinishUpdate:(int64_t)update error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSHashTable *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 updateManager:selfCopy didFinishUpdate:update error:{errorCopy, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_backgroundTaskIdentifierForUpdate:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self _isBGSystemTaskUpdate:update]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBPosterBoardUpdateManager.m";
    v16 = 1024;
    v17 = 127;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_backgroundTaskIdentifierForUpdate:(uint64_t)a3 .cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"SBPosterBoardUpdateManager.m";
  v16 = 1024;
  v17 = 134;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end