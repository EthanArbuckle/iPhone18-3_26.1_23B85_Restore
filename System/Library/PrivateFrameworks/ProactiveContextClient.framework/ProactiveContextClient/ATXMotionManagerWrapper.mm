@interface ATXMotionManagerWrapper
+ (BOOL)hasMotionActivity;
+ (id)sharedInstance;
- (ATXMotionManagerWrapper)init;
- (id)_fetchMotionActivities;
- (id)_motionActivityHandler;
- (id)getCurrentActivity;
- (void)startUpdatingMotionType:(int64_t)type forDelegate:(id)delegate;
- (void)stopUpdatingMotionType:(int64_t)type forDelegate:(id)delegate;
- (void)updateCurrentActivity:(id)activity;
@end

@implementation ATXMotionManagerWrapper

- (id)getCurrentActivity
{
  if (+[ATXMotionManagerWrapper hasMotionActivity])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__16;
    v11 = __Block_byref_object_dispose__16;
    v12 = 0;
    currentMotion = self->_currentMotion;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__ATXMotionManagerWrapper_getCurrentActivity__block_invoke;
    v6[3] = &unk_279AB8CE0;
    v6[4] = self;
    v6[5] = &v7;
    [(_PASLock *)currentMotion runWithLockAcquired:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = [[ATXMotion alloc] initFromCMMotionActivity:0];
  }

  return v4;
}

+ (BOOL)hasMotionActivity
{
  if (hasMotionActivity__pasOnceToken7 != -1)
  {
    +[ATXMotionManagerWrapper hasMotionActivity];
  }

  return hasMotionActivity__pasExprOnceResult != 0;
}

void __45__ATXMotionManagerWrapper_getCurrentActivity__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isExpired])
  {
    [*(a1 + 32) updateCurrentActivity:v6];
  }

  v3 = [v6 currentMotion];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_fetchMotionActivities
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v3 = dispatch_semaphore_create(0);
  motionActivityManager = self->_motionActivityManager;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-30.0];
  date = [MEMORY[0x277CBEAA8] date];
  motionActivityQueue = self->_motionActivityQueue;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__ATXMotionManagerWrapper__fetchMotionActivities__block_invoke;
  v15 = &unk_279AB8CB8;
  v17 = &v18;
  v8 = v3;
  v16 = v8;
  [(CMMotionActivityManager *)motionActivityManager queryActivityStartingFromDate:v5 toDate:date toQueue:motionActivityQueue withHandler:&v12];

  if ([MEMORY[0x277D425A0] waitForSemaphore:v8 timeoutSeconds:{60.0, v12, v13, v14, v15}] == 1)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXMotionManagerWrapper *)v9 _fetchMotionActivities];
    }

    v10 = 0;
  }

  else
  {
    v10 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v10;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXMotionManagerWrapper sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __41__ATXMotionManagerWrapper_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ATXMotionManagerWrapper)init
{
  v17.receiver = self;
  v17.super_class = ATXMotionManagerWrapper;
  v2 = [(ATXMotionManagerWrapper *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    motionActivityManager = v2->_motionActivityManager;
    v2->_motionActivityManager = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    motionActivityQueue = v2->_motionActivityQueue;
    v2->_motionActivityQueue = v5;

    [(NSOperationQueue *)v2->_motionActivityQueue setMaxConcurrentOperationCount:1];
    v7 = objc_alloc(MEMORY[0x277D425F8]);
    v8 = [[ATXCachedMotion alloc] initWithATXMotion:0];
    v9 = [v7 initWithGuardedData:v8];
    currentMotion = v2->_currentMotion;
    v2->_currentMotion = v9;

    v11 = objc_opt_new();
    delegatesMonitoringForMotionType = v2->_delegatesMonitoringForMotionType;
    v2->_delegatesMonitoringForMotionType = v11;

    v13 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ATXMotionManagerWrapper_init__block_invoke;
    block[3] = &unk_279AB8758;
    v16 = v2;
    dispatch_async(v13, block);
  }

  return v2;
}

void __31__ATXMotionManagerWrapper_init__block_invoke(uint64_t a1)
{
  if (+[ATXMotionManagerWrapper hasMotionActivity])
  {
    v2 = *(a1 + 32);
    v3 = v2[5];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __31__ATXMotionManagerWrapper_init__block_invoke_2;
    v4[3] = &unk_279AB8C90;
    v5 = v2;
    [v3 runWithLockAcquired:v4];
  }
}

void __44__ATXMotionManagerWrapper_hasMotionActivity__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277CC1CD0] isActivityAvailable])
  {
    v1 = [MEMORY[0x277CC1CD0] authorizationStatus] == 3;
  }

  else
  {
    v1 = 0;
  }

  hasMotionActivity__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __49__ATXMotionManagerWrapper__fetchMotionActivities__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)updateCurrentActivity:(id)activity
{
  activityCopy = activity;
  _fetchMotionActivities = [(ATXMotionManagerWrapper *)self _fetchMotionActivities];
  if (_fetchMotionActivities)
  {
    v5 = [ATXMotion summarizeActivityStream:_fetchMotionActivities];
    [activityCopy update:v5];
  }
}

- (id)_motionActivityHandler
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ATXMotionManagerWrapper__motionActivityHandler__block_invoke;
  v8[3] = &unk_279AB8D08;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x2666EC640](v8);
  v6 = MEMORY[0x2666EC640](v2, v3, v4, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __49__ATXMotionManagerWrapper__motionActivityHandler__block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    objc_sync_enter(v7);
    if (v4)
    {
      v8 = v7 + 4;
      if (!v7[4] || (v9 = [v4 walking], v9 != objc_msgSend(*v8, "walking")))
      {
        v10 = __atxlog_handle_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v81 = [v4 walking];
          _os_log_impl(&dword_260C9F000, v10, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: WALKING state changed to %d", buf, 8u);
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v11 = [v7[3] objectForKey:&unk_28733C8B0];
        v12 = [v11 countByEnumeratingWithState:&v67 objects:v79 count:16];
        if (v12)
        {
          v13 = *v68;
          do
          {
            v14 = 0;
            do
            {
              if (*v68 != v13)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v67 + 1) + 8 * v14++) didUpdateMotionType:0 isActive:{objc_msgSend(v4, "walking")}];
            }

            while (v12 != v14);
            v12 = [v11 countByEnumeratingWithState:&v67 objects:v79 count:16];
          }

          while (v12);
        }
      }

      if (!*v8 || (v15 = [v4 running], v15 != objc_msgSend(*v8, "running")))
      {
        v16 = __atxlog_handle_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v4 running];
          *buf = 67109120;
          v81 = v17;
          _os_log_impl(&dword_260C9F000, v16, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: RUNNING state changed to %d", buf, 8u);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v18 = [v7[3] objectForKey:&unk_28733C8C8];
        v19 = [v18 countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v19)
        {
          v20 = *v64;
          do
          {
            v21 = 0;
            do
            {
              if (*v64 != v20)
              {
                objc_enumerationMutation(v18);
              }

              [*(*(&v63 + 1) + 8 * v21++) didUpdateMotionType:1 isActive:{objc_msgSend(v4, "running")}];
            }

            while (v19 != v21);
            v19 = [v18 countByEnumeratingWithState:&v63 objects:v78 count:16];
          }

          while (v19);
        }
      }

      if (!*v8 || (v22 = [v4 cycling], v22 != objc_msgSend(*v8, "cycling")))
      {
        v23 = __atxlog_handle_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v4 cycling];
          *buf = 67109120;
          v81 = v24;
          _os_log_impl(&dword_260C9F000, v23, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: CYCLING state changed to %d", buf, 8u);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v25 = [v7[3] objectForKey:&unk_28733C8E0];
        v26 = [v25 countByEnumeratingWithState:&v59 objects:v77 count:16];
        if (v26)
        {
          v27 = *v60;
          do
          {
            v28 = 0;
            do
            {
              if (*v60 != v27)
              {
                objc_enumerationMutation(v25);
              }

              [*(*(&v59 + 1) + 8 * v28++) didUpdateMotionType:2 isActive:{objc_msgSend(v4, "cycling")}];
            }

            while (v26 != v28);
            v26 = [v25 countByEnumeratingWithState:&v59 objects:v77 count:16];
          }

          while (v26);
        }
      }

      if (!*v8 || (v29 = [v4 automotive], v29 != objc_msgSend(*v8, "automotive")))
      {
        v30 = __atxlog_handle_default();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v4 automotive];
          *buf = 67109120;
          v81 = v31;
          _os_log_impl(&dword_260C9F000, v30, OS_LOG_TYPE_DEFAULT, "ATXMotionManagerWrapper: AUTOMOTIVE state changed to %d", buf, 8u);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v32 = [v7[3] objectForKey:&unk_28733C8F8];
        v33 = [v32 countByEnumeratingWithState:&v55 objects:v76 count:16];
        if (v33)
        {
          v34 = *v56;
          do
          {
            v35 = 0;
            do
            {
              if (*v56 != v34)
              {
                objc_enumerationMutation(v32);
              }

              [*(*(&v55 + 1) + 8 * v35++) didUpdateMotionType:3 isActive:{objc_msgSend(v4, "automotive")}];
            }

            while (v33 != v35);
            v33 = [v32 countByEnumeratingWithState:&v55 objects:v76 count:16];
          }

          while (v33);
        }
      }

      if (!*v8 || (v36 = [v4 unknown], v36 != objc_msgSend(*v8, "unknown")))
      {
        v37 = __atxlog_handle_default();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [v4 unknown];
          *buf = 67109120;
          v81 = v38;
          _os_log_impl(&dword_260C9F000, v37, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: UNKNOWN state changed to %d", buf, 8u);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v39 = [v7[3] objectForKey:{&unk_28733C910, 0}];
        v40 = [v39 countByEnumeratingWithState:&v51 objects:v75 count:16];
        if (v40)
        {
          v41 = *v52;
          do
          {
            v42 = 0;
            do
            {
              if (*v52 != v41)
              {
                objc_enumerationMutation(v39);
              }

              [*(*(&v51 + 1) + 8 * v42++) didUpdateMotionType:4 isActive:{objc_msgSend(v4, "unknown")}];
            }

            while (v40 != v42);
            v40 = [v39 countByEnumeratingWithState:&v51 objects:v75 count:16];
          }

          while (v40);
        }
      }

      objc_storeStrong(v7 + 4, a2);
    }

    else
    {
      for (i = 0; i != 5; ++i)
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v44 = v7[3];
        v45 = [MEMORY[0x277CCABB0] numberWithInteger:i];
        v46 = [v44 objectForKey:v45];

        v47 = [v46 countByEnumeratingWithState:&v71 objects:v82 count:16];
        if (v47)
        {
          v48 = *v72;
          do
          {
            v49 = 0;
            do
            {
              if (*v72 != v48)
              {
                objc_enumerationMutation(v46);
              }

              [*(*(&v71 + 1) + 8 * v49++) didUpdateMotionType:i isActive:0];
            }

            while (v47 != v49);
            v47 = [v46 countByEnumeratingWithState:&v71 objects:v82 count:16];
          }

          while (v47);
        }
      }
    }

    objc_sync_exit(v7);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)startUpdatingMotionType:(int64_t)type forDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_motionActivityManager)
  {
    v7 = [(NSMutableDictionary *)selfCopy->_delegatesMonitoringForMotionType count];
    delegatesMonitoringForMotionType = selfCopy->_delegatesMonitoringForMotionType;
    if (!v7)
    {
      v19 = [MEMORY[0x277CBEB58] setWithObject:delegateCopy];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [(NSMutableDictionary *)delegatesMonitoringForMotionType setObject:v19 forKey:v20];

      motionActivityManager = selfCopy->_motionActivityManager;
      motionActivityQueue = selfCopy->_motionActivityQueue;
      _motionActivityHandler = [(ATXMotionManagerWrapper *)selfCopy _motionActivityHandler];
      [(CMMotionActivityManager *)motionActivityManager startActivityUpdatesToQueue:motionActivityQueue withHandler:_motionActivityHandler];

      goto LABEL_19;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v10 = [(NSMutableDictionary *)delegatesMonitoringForMotionType objectForKey:v9];

    if (!v10)
    {
      v11 = selfCopy->_delegatesMonitoringForMotionType;
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [(NSMutableDictionary *)v11 setObject:v12 forKey:v13];
    }

    v14 = selfCopy->_delegatesMonitoringForMotionType;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v16 = [(NSMutableDictionary *)v14 objectForKey:v15];
    [v16 addObject:delegateCopy];

    mostRecentActivity = selfCopy->_mostRecentActivity;
    if (mostRecentActivity)
    {
      if (type <= 1)
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_19;
          }

          running = [(CMMotionActivity *)mostRecentActivity running];
        }

        else
        {
          running = [(CMMotionActivity *)mostRecentActivity walking];
        }
      }

      else
      {
        switch(type)
        {
          case 2:
            running = [(CMMotionActivity *)mostRecentActivity cycling];
            break;
          case 3:
            running = [(CMMotionActivity *)mostRecentActivity automotive];
            break;
          case 4:
            running = [(CMMotionActivity *)mostRecentActivity unknown];
            break;
          default:
            goto LABEL_19;
        }
      }

      [delegateCopy didUpdateMotionType:type isActive:running];
    }
  }

LABEL_19:
  objc_sync_exit(selfCopy);
}

- (void)stopUpdatingMotionType:(int64_t)type forDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_motionActivityManager)
  {
    delegatesMonitoringForMotionType = selfCopy->_delegatesMonitoringForMotionType;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v9 = [(NSMutableDictionary *)delegatesMonitoringForMotionType objectForKey:v8];

    if (v9)
    {
      [v9 removeObject:delegateCopy];
      if (![v9 count])
      {
        v10 = selfCopy->_delegatesMonitoringForMotionType;
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        [(NSMutableDictionary *)v10 removeObjectForKey:v11];

        if (![(NSMutableDictionary *)selfCopy->_delegatesMonitoringForMotionType count])
        {
          [(CMMotionActivityManager *)selfCopy->_motionActivityManager stopActivityUpdates];
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

@end