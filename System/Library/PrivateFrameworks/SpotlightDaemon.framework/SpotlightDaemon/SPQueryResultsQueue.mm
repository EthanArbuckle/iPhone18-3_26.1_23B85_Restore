@interface SPQueryResultsQueue
+ (id)findResultsQueueWithIdentifier:(id)identifier;
+ (id)sharedInstanceDispatchQueue:(id)queue;
+ (id)sharedInstanceMaintenanceDispatchQueue:(id)queue;
+ (void)startTrackingResultsQueue:(id)queue;
+ (void)stopTrackingResultsQueueWithIdentifier:(id)identifier;
- (BOOL)hasPausedResults;
- (SPQueryResultsQueue)initWithIdentifier:(id)identifier dispatchQueue:(id)queue;
- (void)_processResults;
- (void)_scheduleWakeupForced:(BOOL)forced;
- (void)_startTracking;
- (void)_stopTracking;
- (void)addJob:(id)job;
- (void)cancel;
- (void)cancelJob:(id)job;
- (void)dealloc;
- (void)pauseResults;
- (void)resumeResults;
- (void)resumeResultsIfSystemInGoodState;
@end

@implementation SPQueryResultsQueue

- (void)_startTracking
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  tracked = selfCopy->_tracked;
  selfCopy->_tracked = 1;
  objc_sync_exit(selfCopy);

  if (!tracked)
  {

    [SPQueryResultsQueue startTrackingResultsQueue:selfCopy];
  }
}

- (void)_processResults
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __38__SPQueryResultsQueue__processResults__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __38__SPQueryResultsQueue__processResults__block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (*(v5 + 12) == 1)
  {
    [*(a1 + 32) pauseResults];
    v5 = *(a1 + 32);
  }

  if (!*(v5 + 24))
  {
    if (*(v5 + 12))
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v6 = 0;
  *&v4 = 134217984;
  v24 = v4;
  do
  {
    v7 = SIResultQueueDequeue();
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = [MEMORY[0x277CCAE60] valueWithPointer:*(v7 + 8)];
    v10 = *(*(a1 + 32) + 32);
    objc_sync_enter(v10);
    v11 = [*(*(a1 + 32) + 32) objectForKey:v9];
    objc_sync_exit(v10);

    if (v11)
    {
      v12 = *v8;
      v13 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(*(a1 + 32) + 16);
        *buf = 134218242;
        v26 = v12;
        v27 = 2112;
        v28 = v19;
        _os_log_debug_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEBUG, "Processing results, kind:%ld, identifier:%@", buf, 0x16u);
      }

      v14 = [v11 resultsHandler];
      v15 = v14;
      if (v14)
      {
        if (v12 > 5)
        {
          if (v12 <= 8)
          {
            if (v12 == 6)
            {
              (*(v14 + 16))(v14, v11, 5, *(v8 + 4), 0, 0);
              goto LABEL_45;
            }

            if (v12 == 7)
            {
              v16 = v8[14];
              if (v16 > 3)
              {
                v17 = -1;
              }

              else
              {
                v17 = qword_231AED600[v16];
              }

              (*(v14 + 16))(v14, v11, v17, *(v8 + 6), *(v8 + 4), *(v8 + 5));
              goto LABEL_45;
            }
          }

          else
          {
            switch(v12)
            {
              case 0xB:
                (*(v14 + 16))(v14, v11, 11, 0, 0, *(v8 + 5));
                SIResultBatchFree();
                goto LABEL_41;
              case 0xA:
                v21 = objc_autoreleasePoolPush();
                (v15)[2](v15, v11, 9, 0, 0, *(v8 + 4));
                objc_autoreleasePoolPop(v21);
                SIResultBatchFree();
                goto LABEL_41;
              case 9:
                (*(v14 + 16))(v14, v11, 8, *(v8 + 6), *(v8 + 4), *(v8 + 5));
                SIResultBatchFree();
                goto LABEL_41;
            }
          }
        }

        else
        {
          if (v12 > 2)
          {
            if (v12 != 3)
            {
              if (v12 != 4 && *(*(a1 + 32) + 10) == 1)
              {
                (*(v14 + 16))(v14, v11, 2, 0, 0, 0);
                SIResultBatchFree();
                goto LABEL_41;
              }

              (*(v14 + 16))(v14, v11, 1, 0, 0, 0);
LABEL_33:
              SIResultBatchFree();
              [v11 setResultsHandler:0];
              v18 = *(*(a1 + 32) + 32);
              objc_sync_enter(v18);
              [*(*(a1 + 32) + 32) removeObjectForKey:v9];
              objc_sync_exit(v18);

LABEL_41:
              if ((v6 & 1) == 0)
              {
                v6 = 0;
LABEL_48:

                goto LABEL_49;
              }

LABEL_46:
              if (*(*(a1 + 32) + 12) == 1)
              {

                v6 = 1;
                break;
              }

              v6 = 1;
              goto LABEL_48;
            }

            (*(v14 + 16))(v14, v11, 4, 0, 0, *(v8 + 4));
LABEL_45:
            SIResultBatchFree();
            goto LABEL_46;
          }

          if (v12 == 1)
          {
            v20 = logForCSLogCategoryQuery();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v22 = *(v8 + 6);
              *buf = v24;
              v26 = v22;
              _os_log_debug_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEBUG, "%ld items", buf, 0xCu);
            }

            (v15)[2](v15, v11, 0, *(v8 + 6), *(v8 + 4), *(v8 + 5));
            goto LABEL_45;
          }

          if (v12 == 2)
          {
            (*(v14 + 16))(v14, v11, 3, 0, 0, *(v8 + 4));
            v6 = 1;
            goto LABEL_33;
          }
        }
      }

      SIResultBatchFree();
      goto LABEL_41;
    }

    SIResultBatchFree();
LABEL_49:
  }

  while (*(*(a1 + 32) + 24));
  v5 = *(a1 + 32);
  if ((*(v5 + 12) & 1) == 0)
  {
LABEL_57:
    [v5 _scheduleWakeupForced:{0, v24}];
    goto LABEL_58;
  }

  if ((v6 & 1) == 0)
  {
LABEL_56:
    [v5 resumeResults];
  }

LABEL_58:
  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasPausedResults
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_pausedCount > 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)cancel
{
  if (!self->_shared)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    canceled = selfCopy->_canceled;
    selfCopy->_canceled = 1;
    objc_sync_exit(selfCopy);

    if (!canceled)
    {
      dispatchQueue = selfCopy->_dispatchQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__SPQueryResultsQueue_cancel__block_invoke;
      block[3] = &unk_278934050;
      block[4] = selfCopy;
      v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(dispatchQueue, v5);
    }
  }
}

void __29__SPQueryResultsQueue_cancel__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = logForCSLogCategoryQuery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __29__SPQueryResultsQueue_cancel__block_invoke_cold_1(a1);
  }

  v4 = *(*(a1 + 32) + 24);
  SIResultQueueCancel();
  [*(a1 + 32) _scheduleWakeupForced:1];
  objc_autoreleasePoolPop(v2);
}

- (void)_stopTracking
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  tracked = selfCopy->_tracked;
  selfCopy->_tracked = 0;
  objc_sync_exit(selfCopy);

  if (tracked)
  {
    identifier = selfCopy->_identifier;

    [SPQueryResultsQueue stopTrackingResultsQueueWithIdentifier:identifier];
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_3(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_231A35000, v1, v2, "Released query results queue, identifier:%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)pauseResults
{
  OUTLINED_FUNCTION_3(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v1, v2, "Paused results, identifier:%@, count:%ld");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)resumeResults
{
  OUTLINED_FUNCTION_3(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_231A35000, v1, v2, "Resumed results, identifier:%@, count:%ld");
  v3 = *MEMORY[0x277D85DE8];
}

void __36__SPQueryResultsQueue_resumeResults__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _scheduleWakeupForced:1];

  objc_autoreleasePoolPop(v2);
}

+ (void)startTrackingResultsQueue:(id)queue
{
  queueCopy = queue;
  v6 = queueCopy;
  if (startTrackingResultsQueue__onceToken != -1)
  {
    +[SPQueryResultsQueue startTrackingResultsQueue:];
    queueCopy = v6;
  }

  identifier = [queueCopy identifier];
  v5 = sResultsQueueMap;
  objc_sync_enter(v5);
  [sResultsQueueMap setObject:v6 forKey:identifier];
  objc_sync_exit(v5);
}

uint64_t __49__SPQueryResultsQueue_startTrackingResultsQueue___block_invoke()
{
  sResultsQueueMap = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

+ (void)stopTrackingResultsQueueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!sResultsQueueMap)
  {
    +[SPQueryResultsQueue stopTrackingResultsQueueWithIdentifier:];
  }

  v3 = sResultsQueueMap;
  objc_sync_enter(v3);
  [sResultsQueueMap removeObjectForKey:identifierCopy];
  objc_sync_exit(v3);
}

+ (id)findResultsQueueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!sResultsQueueMap)
  {
    +[SPQueryResultsQueue findResultsQueueWithIdentifier:];
  }

  v4 = identifierCopy;
  v5 = sResultsQueueMap;
  objc_sync_enter(v5);
  v6 = [sResultsQueueMap objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

+ (id)sharedInstanceDispatchQueue:(id)queue
{
  queueCopy = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SPQueryResultsQueue_sharedInstanceDispatchQueue___block_invoke;
  block[3] = &unk_278934050;
  v10 = queueCopy;
  v4 = sharedInstanceDispatchQueue__onceToken;
  v5 = queueCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceDispatchQueue__onceToken, block);
  }

  v6 = sharedInstanceDispatchQueue__sSharedInstance;
  v7 = sharedInstanceDispatchQueue__sSharedInstance;

  return v6;
}

void __51__SPQueryResultsQueue_sharedInstanceDispatchQueue___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    __51__SPQueryResultsQueue_sharedInstanceDispatchQueue___block_invoke_cold_1();
  }

  v1 = [[SPQueryResultsQueue alloc] initWithIdentifier:@"com.apple.spotlight.queryResults.default" dispatchQueue:*(a1 + 32)];
  [(SPQueryResultsQueue *)v1 setShared:1];
  v2 = sharedInstanceDispatchQueue__sSharedInstance;
  sharedInstanceDispatchQueue__sSharedInstance = v1;
}

+ (id)sharedInstanceMaintenanceDispatchQueue:(id)queue
{
  queueCopy = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPQueryResultsQueue_sharedInstanceMaintenanceDispatchQueue___block_invoke;
  block[3] = &unk_278934050;
  v10 = queueCopy;
  v4 = sharedInstanceMaintenanceDispatchQueue__onceToken;
  v5 = queueCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceMaintenanceDispatchQueue__onceToken, block);
  }

  v6 = sharedInstanceMaintenanceDispatchQueue__sSharedInstance;
  v7 = sharedInstanceMaintenanceDispatchQueue__sSharedInstance;

  return v6;
}

void __62__SPQueryResultsQueue_sharedInstanceMaintenanceDispatchQueue___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    __62__SPQueryResultsQueue_sharedInstanceMaintenanceDispatchQueue___block_invoke_cold_1();
  }

  v1 = [[SPQueryResultsQueue alloc] initWithIdentifier:@"com.apple.spotlight.queryResults.maintenance" dispatchQueue:*(a1 + 32)];
  [(SPQueryResultsQueue *)v1 setShared:1];
  v2 = sharedInstanceMaintenanceDispatchQueue__sSharedInstance;
  sharedInstanceMaintenanceDispatchQueue__sSharedInstance = v1;
}

- (SPQueryResultsQueue)initWithIdentifier:(id)identifier dispatchQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = SPQueryResultsQueue;
  v9 = [(SPQueryResultsQueue *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_dispatchQueue, queue);
    v10->_siResultsQueue = SIResultQueueCreate();
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    jobs = v10->_jobs;
    v10->_jobs = v11;

    [(SPQueryResultsQueue *)v10 _startTracking];
    [(SPQueryResultsQueue *)v10 _scheduleWakeupForced:1];
    v13 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(SPQueryResultsQueue *)identifierCopy initWithIdentifier:v13 dispatchQueue:v14, v15, v16, v17, v18, v19];
    }
  }

  return v10;
}

- (void)addJob:(id)job
{
  jobCopy = job;
  siJob = [jobCopy siJob];
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:siJob];
  v6 = self->_jobs;
  objc_sync_enter(v6);
  [(NSMutableDictionary *)self->_jobs setObject:jobCopy forKey:v5];
  [jobCopy setResultsQueue:self];
  objc_sync_exit(v6);
}

- (void)cancelJob:(id)job
{
  jobCopy = job;
  v5 = jobCopy;
  if (jobCopy)
  {
    v6 = [MEMORY[0x277CCAE60] valueWithPointer:{objc_msgSend(jobCopy, "siJob")}];
    v7 = self->_jobs;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)self->_jobs objectForKey:v6];
    [(NSMutableDictionary *)self->_jobs removeObjectForKey:v6];
    objc_sync_exit(v7);

    if (v8)
    {
      resultsHandler = [v8 resultsHandler];
      if (resultsHandler)
      {
        [v8 setResultsHandler:0];
        dispatchQueue = self->_dispatchQueue;
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __33__SPQueryResultsQueue_cancelJob___block_invoke;
        v16 = &unk_278934078;
        v18 = resultsHandler;
        v17 = v8;
        v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &v13);
        dispatch_async(dispatchQueue, v11);
      }

      if ([v8 siJob])
      {
        v12 = logForCSLogCategoryQuery();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [SPQueryResultsQueue cancelJob:v8];
        }

        [v8 siJob];
        SICancel();
        [v8 setSiJob:0];
      }
    }
  }
}

void __33__SPQueryResultsQueue_cancelJob___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)_scheduleWakeupForced:(BOOL)forced
{
  forcedCopy = forced;
  v19 = *MEMORY[0x277D85DE8];
  if (forced || ![(SPQueryResultsQueue *)self hasPausedResults])
  {
    v5 = self->_identifier;
    v6 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      canceled = self->_canceled;
      if (forcedCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      if (canceled)
      {
        v10 = @"YES";
      }

      v16 = v12;
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEBUG, "Schedule wakeup, identifier:%@, forced:%@, canceled:%@", &v13, 0x20u);
    }

    siResultsQueue = self->_siResultsQueue;
    v8 = v5;
    if ((SIResultQueueSetWakeupTrigger() & 1) == 0)
    {
      CFRelease(v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resumeResultsIfSystemInGoodState
{
  context = [(SPDASManager *)gDASManager context];
  v4 = [context allowsDiscretionaryWorkForTask:@"indexing" withPriority:*MEMORY[0x277D06AA0] withParameters:0];

  if (v4)
  {

    [(SPQueryResultsQueue *)self resumeResults];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, 60000000000);
    dispatchQueue = self->_dispatchQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SPQueryResultsQueue_resumeResultsIfSystemInGoodState__block_invoke;
    v7[3] = &unk_2789340A0;
    objc_copyWeak(&v8, &location);
    dispatch_after(v5, dispatchQueue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __55__SPQueryResultsQueue_resumeResultsIfSystemInGoodState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resumeResults];
}

- (void)initWithIdentifier:(uint64_t)a3 dispatchQueue:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_231A35000, a2, a3, "Created query results queue, identifier:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelJob:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  qos_class_self();
  [a1 siJob];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __29__SPQueryResultsQueue_cancel__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 16);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_231A35000, v2, v3, "Canceling query results queue, identifier:%@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __38__SPQueryResultsQueue__processResults__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  qos_class_self();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end