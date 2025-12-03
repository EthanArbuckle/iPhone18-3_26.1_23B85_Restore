@interface WBSRetryableCKOperation
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)_scheduleRetryIfNeededForError:(id)error;
- (CKOperationConfiguration)configuration;
- (CKOperationGroup)group;
- (NSString)description;
- (OS_os_log)log;
- (WBSRetryableCKOperation)initWithOwner:(id)owner handlingQueue:(id)queue;
- (double)timeout;
- (id)didExceedRetryTimeout;
- (id)didReceiveNonRetryableError;
- (id)owner;
- (int64_t)_status;
- (int64_t)qualityOfService;
- (unint64_t)numberOfRetries;
- (void)_didFinishOperation;
- (void)_scheduleNextOperation;
- (void)_setStatus:(int64_t)status;
- (void)_setUpOperation:(id)operation;
- (void)cancel;
- (void)dealloc;
- (void)sentinelDidDeallocateWithContext:(id)context;
- (void)setConfiguration:(id)configuration;
- (void)setDidExceedRetryTimeout:(id)timeout;
- (void)setDidReceiveNonRetryableError:(id)error;
- (void)setGroup:(id)group;
- (void)setLog:(id)log;
- (void)setQualityOfService:(int64_t)service;
- (void)setTimeout:(double)timeout;
- (void)start;
@end

@implementation WBSRetryableCKOperation

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  keyCopy = key;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___WBSRetryableCKOperation;
  v5 = objc_msgSendSuper2(&v8, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  if (([keyCopy isEqualToString:@"isExecuting"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"isFinished"))
  {
    v6 = [v5 setByAddingObject:@"status"];

    v5 = v6;
  }

  return v5;
}

- (WBSRetryableCKOperation)initWithOwner:(id)owner handlingQueue:(id)queue
{
  ownerCopy = owner;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = WBSRetryableCKOperation;
  v8 = [(WBSRetryableCKOperation *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, ownerCopy);
    objc_storeStrong(&v9->_handlingQueue, queue);
    v10 = objc_alloc_init(WBSCloudKitOperationRetryManager);
    retryManager = v9->_retryManager;
    v9->_retryManager = v10;

    [(WBSCloudKitOperationRetryManager *)v9->_retryManager setScheduleQueue:queueCopy];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    operationID = v9->_operationID;
    v9->_operationID = uUIDString;

    array = [MEMORY[0x1E695DF70] array];
    childOperationIDs = v9->_childOperationIDs;
    v9->_childOperationIDs = array;

    v17 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v9->_operationQueue;
    v9->_operationQueue = v17;

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSRetryableCKOperation.%@.%p._operationQueue", objc_opt_class(), v9];
    [(NSOperationQueue *)v9->_operationQueue setName:v19];

    [(NSOperationQueue *)v9->_operationQueue setUnderlyingQueue:queueCopy];
    v20 = [MEMORY[0x1E695DFA8] set];
    explicitlySetProperties = v9->_explicitlySetProperties;
    v9->_explicitlySetProperties = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695B9F8]);
    [(WBSRetryableCKOperation *)v9 setConfiguration:v22];

    [ownerCopy safari_setDeallocationSentinelForObserver:v9];
    v23 = v9;
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained safari_removeDeallocationSentinelForObserver:self];

  v4.receiver = self;
  v4.super_class = WBSRetryableCKOperation;
  [(WBSRetryableCKOperation *)&v4 dealloc];
}

- (OS_os_log)log
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_log;
  os_unfair_lock_unlock(&self->_internalLock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  v5 = v4;

  return v4;
}

- (void)setLog:(id)log
{
  logCopy = log;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__WBSRetryableCKOperation_setLog___block_invoke;
  v6[3] = &unk_1E7FB6E30;
  v6[4] = self;
  v7 = logCopy;
  v5 = logCopy;
  os_unfair_lock_lock(&self->_internalLock);
  __34__WBSRetryableCKOperation_setLog___block_invoke(v6);
  os_unfair_lock_unlock(&self->_internalLock);
}

uint64_t __34__WBSRetryableCKOperation_setLog___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 328), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 328);
  v4 = *(v2 + 288);

  return [v4 setLog:v3];
}

- (double)timeout
{
  os_unfair_lock_lock(&self->_internalLock);
  [(WBSCloudKitOperationRetryManager *)self->_retryManager timeout];
  v4 = v3;
  os_unfair_lock_unlock(&self->_internalLock);
  return v4;
}

- (void)setTimeout:(double)timeout
{
  os_unfair_lock_lock(&self->_internalLock);
  [(WBSCloudKitOperationRetryManager *)self->_retryManager setTimeout:timeout];

  os_unfair_lock_unlock(&self->_internalLock);
}

- (unint64_t)numberOfRetries
{
  os_unfair_lock_lock(&self->_internalLock);
  numberOfRetries = [(WBSCloudKitOperationRetryManager *)self->_retryManager numberOfRetries];
  os_unfair_lock_unlock(&self->_internalLock);
  return numberOfRetries;
}

- (int64_t)_status
{
  os_unfair_lock_lock(&self->_internalLock);
  status = self->_status;
  os_unfair_lock_unlock(&self->_internalLock);
  return status;
}

- (void)_setStatus:(int64_t)status
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_status = status;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (id)didReceiveNonRetryableError
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = [self->_didReceiveNonRetryableError copy];
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setDidReceiveNonRetryableError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = [errorCopy copy];

  didReceiveNonRetryableError = self->_didReceiveNonRetryableError;
  self->_didReceiveNonRetryableError = v5;

  [(NSMutableSet *)self->_explicitlySetProperties addObject:@"didReceiveNonRetryableError"];

  os_unfair_lock_unlock(&self->_internalLock);
}

- (id)didExceedRetryTimeout
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = [self->_didExceedRetryTimeout copy];
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setDidExceedRetryTimeout:(id)timeout
{
  timeoutCopy = timeout;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = [timeoutCopy copy];

  didExceedRetryTimeout = self->_didExceedRetryTimeout;
  self->_didExceedRetryTimeout = v5;

  [(NSMutableSet *)self->_explicitlySetProperties addObject:@"didExceedRetryTimeout"];

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)start
{
  v10 = *MEMORY[0x1E69E9840];
  [(WBSRetryableCKOperation *)self _setStatus:1];
  if ([(WBSRetryableCKOperation *)self isCancelled])
  {
    [(WBSRetryableCKOperation *)self _setStatus:2];
    v3 = [(WBSRetryableCKOperation *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Operation %{public}@ was cancelled before starting", buf, 0xCu);
    }
  }

  else
  {
    v4 = [(WBSRetryableCKOperation *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ is starting", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    operationQueue = self->_operationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__WBSRetryableCKOperation_start__block_invoke;
    v6[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v7, buf);
    [(NSOperationQueue *)operationQueue addOperationWithBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __32__WBSRetryableCKOperation_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _scheduleNextOperation];
    WeakRetained = v2;
  }
}

- (void)cancel
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(WBSRetryableCKOperation *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Operation %{public}@ will cancel", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = WBSRetryableCKOperation;
  [(WBSRetryableCKOperation *)&v8 cancel];
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained safari_removeDeallocationSentinelForObserver:self];

  if ([(WBSRetryableCKOperation *)self isExecuting])
  {
    objc_initWeak(buf, self);
    operationQueue = self->_operationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__WBSRetryableCKOperation_cancel__block_invoke;
    v6[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v7, buf);
    [(NSOperationQueue *)operationQueue addBarrierBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __33__WBSRetryableCKOperation_cancel__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 68);
    v3 = *&v2[90]._os_unfair_lock_opaque;
    v4 = *&v2[90]._os_unfair_lock_opaque;
    *&v2[90]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v2 + 68);
    v5 = [(os_unfair_lock_s *)v2 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = [v3 operationID];
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v2;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Cancelling %{public}@ with ID %{public}@ in %{public}@", &v8, 0x20u);
    }

    [v3 cancel];
    [(os_unfair_lock_s *)v2 _setStatus:2];
  }
}

- (int64_t)qualityOfService
{
  v15.receiver = self;
  v15.super_class = WBSRetryableCKOperation;
  qualityOfService = [(WBSRetryableCKOperation *)&v15 qualityOfService];
  configuration = [(WBSRetryableCKOperation *)self configuration];
  hasQualityOfService = [configuration hasQualityOfService];

  if (hasQualityOfService)
  {
    configuration2 = [(WBSRetryableCKOperation *)self configuration];
    qualityOfService2 = [configuration2 qualityOfService];
  }

  else
  {
    group = [(WBSRetryableCKOperation *)self group];
    defaultConfiguration = [group defaultConfiguration];
    hasQualityOfService2 = [defaultConfiguration hasQualityOfService];

    qualityOfService2 = qualityOfService;
    if (!hasQualityOfService2)
    {
      goto LABEL_6;
    }

    configuration2 = [(WBSRetryableCKOperation *)self group];
    defaultConfiguration2 = [configuration2 defaultConfiguration];
    qualityOfService2 = [defaultConfiguration2 qualityOfService];
  }

LABEL_6:
  if (qualityOfService2 == -1)
  {
    configuration3 = [(WBSRetryableCKOperation *)self configuration];
    qualityOfService2 = [configuration3 qualityOfService];
  }

  if (qualityOfService2 != qualityOfService)
  {
    v14.receiver = self;
    v14.super_class = WBSRetryableCKOperation;
    [(WBSRetryableCKOperation *)&v14 setQualityOfService:qualityOfService2];
  }

  [(NSOperationQueue *)self->_operationQueue setQualityOfService:qualityOfService2];
  return qualityOfService2;
}

- (void)setQualityOfService:(int64_t)service
{
  os_unfair_lock_lock(&self->_internalLock);
  [(CKOperationConfiguration *)self->_configuration setQualityOfService:service];
  os_unfair_lock_unlock(&self->_internalLock);

  [(WBSRetryableCKOperation *)self qualityOfService];
}

- (CKOperationConfiguration)configuration
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_configuration;
  os_unfair_lock_unlock(&self->_internalLock);
  v4 = [(CKOperationConfiguration *)v3 copy];

  return v4;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = objc_alloc_init(MEMORY[0x1E695B9F8]);
  }

  v7 = configurationCopy;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = [v7 copy];
  configuration = self->_configuration;
  self->_configuration = v5;

  os_unfair_lock_unlock(&self->_internalLock);
  [(WBSRetryableCKOperation *)self qualityOfService];
}

- (CKOperationGroup)group
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_group;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_internalLock);
  group = self->_group;
  self->_group = groupCopy;
  v6 = groupCopy;

  os_unfair_lock_unlock(&self->_internalLock);
  [(WBSCloudKitOperationRetryManager *)self->_retryManager setOperationGroup:v6];

  [(WBSRetryableCKOperation *)self qualityOfService];
}

- (void)_scheduleNextOperation
{
  v26 = *MEMORY[0x1E69E9840];
  if (([(WBSRetryableCKOperation *)self isCancelled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_internalLock);
    _makeOperation = [(WBSRetryableCKOperation *)self _makeOperation];
    [(WBSRetryableCKOperation *)self _setUpOperation:_makeOperation];
    operationID = [(CKOperation *)_makeOperation operationID];
    [(NSMutableArray *)self->_childOperationIDs addObject:operationID];
    os_unfair_lock_unlock(&self->_internalLock);
    v5 = [(WBSRetryableCKOperation *)self description];
    v6 = objc_opt_class();
    numberOfRetries = [(WBSRetryableCKOperation *)self numberOfRetries];
    v8 = [(WBSRetryableCKOperation *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138544130;
      v19 = v6;
      v20 = 2114;
      v21 = operationID;
      v22 = 2114;
      v23 = v5;
      v24 = 2048;
      v25 = numberOfRetries;
      _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Will begin %{public}@ with ID %{public}@ in %{public}@ retry: %zu", buf, 0x2Au);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__WBSRetryableCKOperation__scheduleNextOperation__block_invoke;
    v13[3] = &unk_1E7FCA158;
    v13[4] = self;
    v14 = operationID;
    v15 = v5;
    v16 = v6;
    v17 = numberOfRetries;
    v9 = v5;
    v10 = operationID;
    [(CKOperation *)_makeOperation setCompletionBlock:v13];
    os_unfair_lock_lock(&self->_internalLock);
    currentOperation = self->_currentOperation;
    self->_currentOperation = _makeOperation;
    v12 = _makeOperation;

    os_unfair_lock_unlock(&self->_internalLock);
    [(NSOperationQueue *)self->_operationQueue addOperation:v12];
  }
}

void __49__WBSRetryableCKOperation__scheduleNextOperation__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = 138544130;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Did finish %{public}@ with ID %{public}@ in %{public}@ retry: %zu", &v7, 0x2Au);
  }
}

- (void)sentinelDidDeallocateWithContext:(id)context
{
  if (![(WBSRetryableCKOperation *)self isFinished]&& ([(WBSRetryableCKOperation *)self isCancelled]& 1) == 0)
  {
    [(WBSRetryableCKOperation *)self cancel];
    ownerDidDeallocateBlock = self->_ownerDidDeallocateBlock;
    if (ownerDidDeallocateBlock)
    {
      v5 = *(ownerDidDeallocateBlock + 2);

      v5();
    }
  }
}

- (BOOL)_scheduleRetryIfNeededForError:(id)error
{
  location[4] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  if (WeakRetained)
  {
    objc_initWeak(location, self);
    retryManager = self->_retryManager;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __58__WBSRetryableCKOperation__scheduleRetryIfNeededForError___block_invoke;
    v18 = &unk_1E7FB86B8;
    objc_copyWeak(&v19, location);
    v7 = [(WBSCloudKitOperationRetryManager *)retryManager scheduleRetryIfNeededForError:errorCopy usingBlock:&v15];
    if (v7 == 1)
    {
      v10 = [(WBSRetryableCKOperation *)self log:v15];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [errorCopy safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSRetryableCKOperation _scheduleRetryIfNeededForError:];
      }
    }

    else
    {
      if (v7 == 2)
      {
        v12 = [(WBSRetryableCKOperation *)self log:v15];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [errorCopy safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSRetryableCKOperation _scheduleRetryIfNeededForError:];
        }

        os_unfair_lock_lock(&self->_internalLock);
        v13 = MEMORY[0x1BFB13CE0](self->_didExceedRetryTimeout);
        os_unfair_lock_unlock(&self->_internalLock);
        v10 = MEMORY[0x1BFB13CE0](v13);

        v11 = v10 != 0;
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 != 3)
        {
          v11 = 0;
          goto LABEL_19;
        }

        v8 = [(WBSRetryableCKOperation *)self log:v15];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [errorCopy safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSRetryableCKOperation _scheduleRetryIfNeededForError:];
        }

        os_unfair_lock_lock(&self->_internalLock);
        v9 = MEMORY[0x1BFB13CE0](self->_didReceiveNonRetryableError);
        os_unfair_lock_unlock(&self->_internalLock);
        v10 = MEMORY[0x1BFB13CE0](v9);

        v11 = v10 != 0;
        if (!v10)
        {
LABEL_17:

LABEL_19:
          objc_destroyWeak(&v19);
          objc_destroyWeak(location);
          goto LABEL_20;
        }
      }

      (*(v10 + 16))(v10, self, WeakRetained, errorCopy);
      [(WBSRetryableCKOperation *)self _didFinishOperation];
    }

    v11 = 1;
    goto LABEL_17;
  }

  v11 = 1;
LABEL_20:

  return v11;
}

void __58__WBSRetryableCKOperation__scheduleRetryIfNeededForError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 33);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__WBSRetryableCKOperation__scheduleRetryIfNeededForError___block_invoke_2;
    v4[3] = &unk_1E7FB6D90;
    v4[4] = v2;
    [v3 addOperationWithBlock:v4];
  }
}

uint64_t __58__WBSRetryableCKOperation__scheduleRetryIfNeededForError___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Will attempt retry of %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) _scheduleNextOperation];
}

- (void)_didFinishOperation
{
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  self->_currentOperation = 0;

  os_unfair_lock_unlock(&self->_internalLock);

  [(WBSRetryableCKOperation *)self _setStatus:2];
}

- (void)_setUpOperation:(id)operation
{
  operationCopy = operation;
  [operationCopy setConfiguration:self->_configuration];
  [operationCopy setGroup:self->_group];
  if ([(CKOperationConfiguration *)self->_configuration isLongLived])
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__WBSRetryableCKOperation__setUpOperation___block_invoke;
    v5[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v6, &location);
    [operationCopy setLongLivedOperationWasPersistedBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __43__WBSRetryableCKOperation__setUpOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 33);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__WBSRetryableCKOperation__setUpOperation___block_invoke_2;
    v4[3] = &unk_1E7FB6D90;
    v4[4] = v2;
    [v3 addOperationWithBlock:v4];
  }
}

void __43__WBSRetryableCKOperation__setUpOperation___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 376));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, *(a1 + 32), WeakRetained);
    }

    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Long lived operation of %{public}@ was persisted", &v7, 0xCu);
    }

    [*(a1 + 32) _didFinishOperation];
  }
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = [(NSMutableArray *)self->_childOperationIDs copy];
  os_unfair_lock_unlock(&self->_internalLock);
  if ([v3 count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@" childOperationIDs: %@", v5];;
  }

  else
  {
    v6 = &stru_1F3A5E418;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  operationID = self->_operationID;
  safari_logDescription = [(CKOperationGroup *)self->_group safari_logDescription];
  v11 = [v7 stringWithFormat:@"<%@: %p operationID: %@; %@%@>", v8, self, operationID, safari_logDescription, v6];;

  return v11;
}

- (id)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)_scheduleRetryIfNeededForError:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3_1(&dword_1BB6F3000, "Retry timeout of %{public}@ exceeded, with error: %{public}@", v4, v5);
}

- (void)_scheduleRetryIfNeededForError:.cold.2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3_1(&dword_1BB6F3000, "Failed to perform operation of %{public}@ with retryable error: %{public}@; will retry", v4, v5);
}

- (void)_scheduleRetryIfNeededForError:.cold.3()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3_1(&dword_1BB6F3000, "Operation of %{public}@ failed with non-retryable error: %{public}@", v4, v5);
}

@end