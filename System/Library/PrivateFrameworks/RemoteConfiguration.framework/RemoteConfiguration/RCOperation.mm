@interface RCOperation
- (BOOL)_shouldThrottleOperationWithRetryAfter:(double *)a3;
- (BOOL)_startIfNeeded;
- (BOOL)hasOperationStarted;
- (RCOperation)init;
- (id)_errorUserInfo;
- (id)_userDefaultsKeyForThrottleEndDate;
- (id)longOperationDescription;
- (id)shortOperationDescription;
- (void)_associateChildOperation:(id)a3;
- (void)_finishOperationWithError:(id)a3;
- (void)_finishedPerformingOperationWithError:(id)a3;
- (void)_handleRetryFromError:(id)a3 signal:(id)a4;
- (void)_handleThrottlingFromError:(id)a3 delay:(double)a4;
- (void)addCompletionHandler:(id)a3;
- (void)associateChildOperation:(id)a3;
- (void)associateChildOperations:(id)a3;
- (void)cancel;
- (void)cancelChildOperations;
- (void)dealloc;
- (void)finishFromEarlyCancellation;
- (void)finishedPerformingOperationWithError:(id)a3;
- (void)performOperation;
- (void)setQualityOfService:(int64_t)a3;
- (void)setRelativePriority:(int64_t)a3;
- (void)start;
@end

@implementation RCOperation

- (RCOperation)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = RCOperation;
  v2 = [(RCOperation *)&v17 init];
  if (v2)
  {
    v3 = RCGenerateOperationID();
    v4 = *(v2 + 34);
    *(v2 + 34) = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(v2 + 38);
    *(v2 + 38) = v5;

    v7 = objc_alloc_init(RCUnfairLock);
    v8 = *(v2 + 39);
    *(v2 + 39) = v7;

    v9 = [[RCOnce alloc] initWithOptions:1];
    v10 = *(v2 + 40);
    *(v2 + 40) = v9;

    *(v2 + 32) = 0;
    v11 = dispatch_group_create();
    v12 = *(v2 + 41);
    *(v2 + 41) = v11;

    dispatch_group_enter(*(v2 + 41));
    v13 = RCSharedLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v2 shortOperationDescription];
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2179FC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ created", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"an operation should never be deallocated while it is still executing"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = RCOperation;
  [(RCOperation *)&v3 cancel];
  [(RCOperation *)self cancelChildOperations];
}

- (void)setRelativePriority:(int64_t)a3
{
  if (self->_relativePriority != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_relativePriority = a3;
    [(RCOperation *)self setQueuePriority:RCQueuePriorityFromRelativePriority(a3)];
    if (([(RCOperation *)self propertiesInheritedByChildOperations]& 2) != 0)
    {
      v7 = [(RCOperation *)self childOperationsLock];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __35__RCOperation_setRelativePriority___block_invoke;
      v8[3] = &unk_27822F238;
      v8[4] = self;
      v8[5] = a3;
      [v7 performWithLockSync:v8];
    }
  }
}

void __35__RCOperation_setRelativePriority___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) childOperations];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = RCProtocolCast(&unk_2829A2C08, *(*(&v9 + 1) + 8 * v6));
        [v7 setRelativePriority:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setQualityOfService:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = RCOperation;
  if ([(RCOperation *)&v8 qualityOfService]!= a3)
  {
    v7.receiver = self;
    v7.super_class = RCOperation;
    [(RCOperation *)&v7 setQualityOfService:a3];
    if (([(RCOperation *)self propertiesInheritedByChildOperations]& 1) != 0)
    {
      v5 = [(RCOperation *)self childOperationsLock];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __35__RCOperation_setQualityOfService___block_invoke;
      v6[3] = &unk_27822F238;
      v6[4] = self;
      v6[5] = a3;
      [v5 performWithLockSync:v6];
    }
  }
}

void __35__RCOperation_setQualityOfService___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) childOperations];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = RCDynamicCast(v8, v7);
        [v9 setQualityOfService:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [a1 shortOperationDescription];
  v4 = [v2 initWithFormat:@"%@ has already been started", v3];
  *buf = 136315906;
  v7 = "[RCOperation start]";
  v8 = 2080;
  v9 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOperation.m";
  v10 = 1024;
  v11 = 174;
  v12 = 2114;
  v13 = v4;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_startIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(RCOperation *)self startOnce];
  v4 = [v3 trigger];

  if (v4)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(RCOperation *)self setOperationStartTime:?];
    v5 = self;
    v17 = 0.0;
    if ([(RCOperation *)v5 _shouldThrottleOperationWithRetryAfter:&v17])
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = [(RCOperation *)v5 _errorUserInfo];
      [v6 addEntriesFromDictionary:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
      [v6 setObject:v8 forKey:@"RCErrorRetryAfter"];

      v9 = [MEMORY[0x277CCA9B8] rc_errorWithCode:8 description:@"The operation was throttled." additionalUserInfo:v6];
      [(RCOperation *)v5 _finishOperationWithError:v9];
    }

    else if ([(RCOperation *)v5 validateOperation])
    {
      if (![(RCOperation *)v5 isCancelled])
      {
        [(RCOperation *)v5 willChangeValueForKey:@"isExecuting"];
        atomic_store(1u, &v5->_executing);
        [(RCOperation *)v5 didChangeValueForKey:@"isExecuting"];
        v15 = RCSharedLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(RCOperation *)v5 longOperationDescription];
          *buf = 138543362;
          v19 = v16;
          _os_log_impl(&dword_2179FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
        }

        [(RCOperation *)v5 prepareOperation];
        [(RCOperation *)v5 performOperation];
        goto LABEL_9;
      }

      [(RCOperation *)v5 finishFromEarlyCancellation];
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [(RCOperation *)v5 _errorUserInfo];
      v12 = [v10 rc_errorWithCode:6 description:@"The operation failed validation." additionalUserInfo:v11];
      [(RCOperation *)v5 _finishOperationWithError:v12];
    }

    if (v5)
    {
LABEL_9:
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)performOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Abstract method"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)finishedPerformingOperationWithError:(id)a3
{
  v6 = a3;
  v4 = [(RCOperation *)self timedOutTest];
  v5 = v4;
  if (!v4 || ((*(v4 + 16))(v4) & 1) == 0)
  {
    [(RCOperation *)self _finishedPerformingOperationWithError:v6];
  }
}

- (void)_finishedPerformingOperationWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 rc_isOperationThrottledError] & 1) != 0)
  {
    goto LABEL_10;
  }

  v11 = 0.0;
  if ([(RCOperation *)self shouldStartThrottlingWithError:v5 retryAfter:&v11])
  {
    [(RCOperation *)self _handleThrottlingFromError:v5 delay:v11];
LABEL_10:
    [(RCOperation *)self _finishOperationWithError:v5];
    goto LABEL_11;
  }

  if (([(RCOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_10;
  }

  v6 = [(RCOperation *)self maxRetries];
  if ([(RCOperation *)self retryCount]>= v6)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v7 = [(RCOperation *)self canRetryWithError:v5 retryAfter:&v10];
  v8 = v10;
  v9 = v8;
  if (!v7)
  {

    goto LABEL_10;
  }

  [(RCOperation *)self _handleRetryFromError:v5 signal:v8];

LABEL_11:
}

- (void)_handleThrottlingFromError:(id)a3 delay:(double)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (_handleThrottlingFromError_delay__onceToken != -1)
  {
    [RCOperation _handleThrottlingFromError:delay:];
  }

  v7 = [(RCOperation *)self throttleGroup];

  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCOperation _handleThrottlingFromError:delay:];
  }

  v8 = RCSharedLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(RCOperation *)self shortOperationDescription];
    v10 = [(RCOperation *)self throttleGroup];
    *buf = 138544130;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2048;
    v18 = a4;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will start throttling requests from group %@ for %.2f seconds due to error %{public}@", buf, 0x2Au);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__RCOperation__handleThrottlingFromError_delay___block_invoke_92;
  v12[3] = &unk_27822F238;
  v12[4] = self;
  *&v12[5] = a4;
  [_handleThrottlingFromError_delay__s_throttleLock performWithLockSync:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __48__RCOperation__handleThrottlingFromError_delay___block_invoke()
{
  _handleThrottlingFromError_delay__s_throttleLock = objc_alloc_init(RCMutexLock);

  return MEMORY[0x2821F96F8]();
}

void __48__RCOperation__handleThrottlingFromError_delay___block_invoke_92(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [*(a1 + 32) _userDefaultsKeyForThrottleEndDate];
  v7 = [v2 objectForKey:v3];

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 40)];
  if (!v7 || [v4 rc_isLaterThan:v7])
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [*(a1 + 32) _userDefaultsKeyForThrottleEndDate];
    [v5 setObject:v4 forKey:v6];
  }
}

- (void)_handleRetryFromError:(id)a3 signal:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(RCOperation *)self setRetryCount:[(RCOperation *)self retryCount]+ 1];
  v8 = RCSharedLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(RCOperation *)self shortOperationDescription];
    *buf = 138544386;
    v18 = v9;
    v19 = 2048;
    v20 = [(RCOperation *)self retryCount];
    v21 = 2048;
    v22 = [(RCOperation *)self maxRetries];
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform retry %lu of %lu after %{public}@ due to error: %{public}@", buf, 0x34u);
  }

  v10 = RCDispatchQueueForQualityOfService([(RCOperation *)self qualityOfService]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__RCOperation__handleRetryFromError_signal___block_invoke;
  v14[3] = &unk_27822F260;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  [v11 onQueue:v10 signal:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __44__RCOperation__handleRetryFromError_signal___block_invoke(uint64_t a1, int a2)
{
  if (a2 && ([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 32) resetForRetry];
    v6 = *(a1 + 32);

    return [v6 performOperation];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _finishOperationWithError:v4];
  }
}

- (void)finishFromEarlyCancellation
{
  v3 = MEMORY[0x277CCA9B8];
  v5 = [(RCOperation *)self _errorUserInfo];
  v4 = [v3 rc_errorWithCode:1 description:@"The operation was cancelled." additionalUserInfo:v5];
  [(RCOperation *)self _finishOperationWithError:v4];
}

- (void)associateChildOperation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RCOperation *)self childOperationsLock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__RCOperation_associateChildOperation___block_invoke;
    v6[3] = &unk_27822F130;
    v6[4] = self;
    v7 = v4;
    [v5 performWithLockSync:v6];
  }
}

- (void)associateChildOperations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(RCOperation *)self childOperationsLock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__RCOperation_associateChildOperations___block_invoke;
    v6[3] = &unk_27822F130;
    v7 = v4;
    v8 = self;
    [v5 performWithLockSync:v6];
  }
}

void __40__RCOperation_associateChildOperations___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _associateChildOperation:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_associateChildOperation:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = RCProtocolCast(&unk_2829A2B68, v4);
    v6 = RCSharedLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [v5 shortOperationDescription];
        v9 = [(RCOperation *)self shortOperationDescription];
        v19 = 138543618;
        v20 = v8;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_2179FC000, v6, OS_LOG_TYPE_DEFAULT, "associated child operation %{public}@ with parent %{public}@", &v19, 0x16u);
      }
    }

    else if (v7)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [(RCOperation *)self shortOperationDescription];
      v19 = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_2179FC000, v6, OS_LOG_TYPE_DEFAULT, "associated child operation %{public}@ with parent %{public}@", &v19, 0x16u);
    }

    if ([(RCOperation *)self childOperationsCancelled]|| ([(RCOperation *)self childOperations], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      [v4 cancel];
    }

    else
    {
      v14 = [(RCOperation *)self childOperations];
      [v14 addObject:v4];

      if (([(RCOperation *)self propertiesInheritedByChildOperations]& 2) != 0)
      {
        v15 = RCProtocolCast(&unk_2829A2C08, v4);
        [v15 setRelativePriority:{-[RCOperation relativePriority](self, "relativePriority")}];
      }

      if (([(RCOperation *)self propertiesInheritedByChildOperations]& 1) != 0)
      {
        v16 = objc_opt_class();
        v17 = RCDynamicCast(v16, v4);
        [v17 setQualityOfService:{-[RCOperation qualityOfService](self, "qualityOfService")}];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)cancelChildOperations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v3 = [(RCOperation *)self childOperationsLock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__RCOperation_cancelChildOperations__block_invoke;
  v4[3] = &unk_27822F288;
  v4[4] = self;
  v4[5] = &v5;
  [v3 performWithLockSync:v4];

  [v6[5] makeObjectsPerformSelector:sel_cancel];
  _Block_object_dispose(&v5, 8);
}

void __36__RCOperation_cancelChildOperations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) childOperations];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1 + 32) setChildOperationsCancelled:1];
  v6 = [*(a1 + 32) childOperations];
  [v6 removeAllObjects];
}

- (id)_userDefaultsKeyForThrottleEndDate
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(RCOperation *)self throttleGroup];
  v4 = [v2 stringWithFormat:@"RCOperationThrottling:%@", v3];

  return v4;
}

- (BOOL)_shouldThrottleOperationWithRetryAfter:(double *)a3
{
  v5 = [(RCOperation *)self throttleGroup];

  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [(RCOperation *)self _userDefaultsKeyForThrottleEndDate];
  v8 = [v6 objectForKey:v7];

  if (v8 && ([v8 timeIntervalSinceNow], v9 > 0.0))
  {
    *a3 = ceil(v9) + 1.0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addCompletionHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    group = [(RCOperation *)self finishedGroup];
    v5 = RCDispatchQueueForQualityOfService([(RCOperation *)self qualityOfService]);
    dispatch_group_notify(group, v5, v4);
  }
}

- (BOOL)hasOperationStarted
{
  v2 = [(RCOperation *)self startOnce];
  v3 = [v2 hasBeenTriggered];

  return v3;
}

- (void)_finishOperationWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(RCOperation *)self isFinished]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCOperation _finishOperationWithError:];
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(RCOperation *)self setOperationEndTime:?];
  if ([(RCOperation *)self isCancelled])
  {
    v5 = RCSharedLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(RCOperation *)self shortOperationDescription];
      *buf = 138543362;
      v19 = v6;
      v7 = "%{public}@ cancelled";
      v8 = v5;
      v9 = 12;
LABEL_12:
      _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else
  {
    v10 = RCSharedLog();
    v5 = v10;
    if (v4)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(RCOperation *)self _finishOperationWithError:v4, v5];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(RCOperation *)self shortOperationDescription];
      [(RCOperation *)self operationEndTime];
      v12 = v11;
      [(RCOperation *)self operationStartTime];
      *buf = 138543618;
      v19 = v6;
      v20 = 2048;
      v21 = RCSecondsToMilliseconds(v12 - v13);
      v7 = "%{public}@ finished with total time: %llums";
      v8 = v5;
      v9 = 22;
      goto LABEL_12;
    }
  }

  [(RCOperation *)self operationWillFinishWithError:v4];
  [(RCOperation *)self willChangeValueForKey:@"isExecuting"];
  atomic_store(0, &self->_executing);
  [(RCOperation *)self didChangeValueForKey:@"isExecuting"];
  [(RCOperation *)self willChangeValueForKey:@"isFinished"];
  atomic_store(1u, &self->_finished);
  [(RCOperation *)self didChangeValueForKey:@"isFinished"];
  v14 = [(RCOperation *)self finishedGroup];
  dispatch_group_leave(v14);

  v15 = [(RCOperation *)self childOperationsLock];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__RCOperation__finishOperationWithError___block_invoke;
  v17[3] = &unk_27822F2B0;
  v17[4] = self;
  [v15 performWithLockSync:v17];

  [(RCOperation *)self operationDidFinishWithError:v4];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)_errorUserInfo
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"RCErrorOperationClassNameKey";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10[0] = v4;
  v9[1] = @"RCErrorOperationIDKey";
  v5 = [(RCOperation *)self operationID];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)shortOperationDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RCOperation *)self operationID];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];

  return v6;
}

- (id)longOperationDescription
{
  v3 = RCStringFromQualityOfService([(RCOperation *)self qualityOfService]);
  v4 = RCStringFromQueuePriority([(RCOperation *)self queuePriority]);
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(RCOperation *)self operationID];
  v8 = [v5 stringWithFormat:@"<%@ %@, qos=%@, priority=%@>", v6, v7, v3, v4];

  return v8;
}

- (void)_handleThrottlingFromError:delay:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"a throttled operation must be part of a throttle group"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishOperationWithError:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"operation must only be finished once"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishOperationWithError:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 shortOperationDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed with error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end