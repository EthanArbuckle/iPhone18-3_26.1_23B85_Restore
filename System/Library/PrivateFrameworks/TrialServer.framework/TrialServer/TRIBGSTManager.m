@interface TRIBGSTManager
+ (void)_submitDeactivationBGSTRequestAfterSeconds:(int64_t)a3 gracePeriodInSeconds:(int64_t)a4;
- (TRIBGSTManager)initWithServerContext:(id)a3 asyncQueue:(id)a4;
- (void)expireBGST:(id)a3;
- (void)markAllBGSTsAsCompleted;
- (void)markBGSTAsStarted:(id)a3;
- (void)scheduleDeactivationBGSTWithEarliestDeactivationTaskScheduledDate:(id)a3 gracePeriodInSeconds:(int64_t)a4;
@end

@implementation TRIBGSTManager

- (TRIBGSTManager)initWithServerContext:(id)a3 asyncQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRIBGSTManager.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"TRIBGSTManager.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"asyncQueue"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = TRIBGSTManager;
  v10 = [(TRIBGSTManager *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_serverContext, v7);
    objc_storeStrong(&v11->_asyncQueue, a4);
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v14 = v12[1];
    v12[1] = v13;

    v15 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v12];
    lock = v11->_lock;
    v11->_lock = v15;
  }

  return v11;
}

- (void)markBGSTAsStarted:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__TRIBGSTManager_markBGSTAsStarted___block_invoke;
  v12[3] = &unk_279DE3468;
  v6 = v4;
  v13 = v6;
  [(_PASLock *)lock runWithLockAcquired:v12];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__TRIBGSTManager_markBGSTAsStarted___block_invoke_2;
  v7[3] = &unk_279DE3490;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  [v6 setExpirationHandler:v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __36__TRIBGSTManager_markBGSTAsStarted___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 8);
  v4 = [v2 identifier];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

void __36__TRIBGSTManager_markBGSTAsStarted___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (v3 && WeakRetained)
  {
    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__TRIBGSTManager_markBGSTAsStarted___block_invoke_3;
    v6[3] = &unk_279DDF7A0;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)expireBGST:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__TRIBGSTManager_expireBGST___block_invoke;
  v7[3] = &unk_279DE3468;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __29__TRIBGSTManager_expireBGST___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = *(a1 + 32);
  if (v5)
  {
    v15 = 0;
    v7 = [v6 setTaskExpiredWithRetryAfter:&v15 error:0.0];
    v8 = v15;
    v9 = TRILogCategory_Server();
    v10 = v9;
    if (v7)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        v13 = *MEMORY[0x277D85DE8];
        return;
      }

      v11 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_INFO, "BGST %@ was expired, requested rescheduling", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v11 = [*(a1 + 32) identifier];
      v14 = [v8 localizedDescription];
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v14;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "BGST %@ was expired, but we failed to request rescheduling: %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v12 = *MEMORY[0x277D85DE8];

  [v6 setTaskCompleted];
}

- (void)markAllBGSTsAsCompleted
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "Marking all BGSTs as completed as the task queue has finished", v4, 2u);
  }

  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_35];
}

uint64_t __41__TRIBGSTManager_markAllBGSTsAsCompleted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2;
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_31];
  v5 = a2[1];

  return [v5 removeAllObjects];
}

- (void)scheduleDeactivationBGSTWithEarliestDeactivationTaskScheduledDate:(id)a3 gracePeriodInSeconds:(int64_t)a4
{
  v6 = a3;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__TRIBGSTManager_scheduleDeactivationBGSTWithEarliestDeactivationTaskScheduledDate_gracePeriodInSeconds___block_invoke;
  v9[3] = &unk_279DE34F8;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __105__TRIBGSTManager_scheduleDeactivationBGSTWithEarliestDeactivationTaskScheduledDate_gracePeriodInSeconds___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_new();
  [*(a1 + 32) timeIntervalSinceDate:v5];
  if (v6 <= 10)
  {
    v7 = 10;
  }

  else
  {
    v7 = v6;
  }

  v8 = v4[1];

  v9 = [v8 objectForKeyedSubscript:@"com.apple.triald.deactivation"];
  if (v9)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Currently running deactivation BGST. Completing and rescheduling it.", buf, 2u);
    }

    [v9 setTaskCompleted];
    v12 = *(a1 + 40);
    [objc_opt_class() _submitDeactivationBGSTRequestAfterSeconds:v7 gracePeriodInSeconds:*(a1 + 48)];
  }

  else
  {
    gotLoadHelper_x25__OBJC_CLASS___BGSystemTaskScheduler(v10);
    v13 = [*(v2 + 2064) sharedScheduler];
    v14 = [v13 taskRequestForIdentifier:@"com.apple.triald.deactivation"];

    if (v14)
    {
      [v14 scheduleAfter];
      v16 = v15;
      if (v7 <= v15)
      {
        [v14 setScheduleAfter:(v7 + 1)];
        [v14 setTrySchedulingBefore:(*(a1 + 48) + v7 + 1)];
        v19 = [*(v2 + 2064) sharedScheduler];
        v25 = 0;
        v20 = [v19 updateTaskRequest:v14 error:&v25];
        v21 = v25;

        v22 = TRILogCategory_Server();
        v23 = v22;
        if (v20)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v27 = v7;
            v28 = 2048;
            v29 = v16;
            _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "Rescheduling deactivation BGST to run in %lld seconds (previously %lld)", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v21;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Failed to reschedule deactivation BGST with error: %@", buf, 0xCu);
        }
      }

      else
      {
        v17 = TRILogCategory_Server();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v27 = v16;
          _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Not scheduling deactivation BGST as there's already a BGST scheduled to run in %lld seconds", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = *(a1 + 40);
      [objc_opt_class() _submitDeactivationBGSTRequestAfterSeconds:v7 gracePeriodInSeconds:*(a1 + 48)];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)_submitDeactivationBGSTRequestAfterSeconds:(int64_t)a3 gracePeriodInSeconds:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  gotLoadHelper_x8__OBJC_CLASS___BGNonRepeatingSystemTaskRequest(v4);
  v8 = [objc_alloc(*(v7 + 1992)) initWithIdentifier:@"com.apple.triald.deactivation"];
  [v8 setPriority:1];
  [v8 setRequiresNetworkConnectivity:0];
  [v8 setRequiresExternalPower:0];
  [v8 setScheduleAfter:(a3 + 1)];
  [v8 setTrySchedulingBefore:(a3 + 1 + a4)];
  Helper_x8__OBJC_CLASS___BGSystemTaskScheduler = gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(v9);
  v12 = [*(v11 + 2064) sharedScheduler];
  v19 = 0;
  v13 = [v12 submitTaskRequest:v8 error:&v19];
  v14 = v19;

  v15 = TRILogCategory_Server();
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = a3;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Scheduled the deactivation BGST to run in %lld seconds from now.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18 = @"Unknown";
    if (v14)
    {
      v18 = v14;
    }

    *buf = 138412290;
    v21 = v18;
    _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to submit deactivation BGST with error: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end