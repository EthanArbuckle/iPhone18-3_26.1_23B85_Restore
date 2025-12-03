@interface SBSystemStatusStatusItemDataPublisher
+ (id)_sharedCalloutQueue;
+ (id)_sharedPublishingQueue;
- (BOOL)isStatusItemEnabled;
- (SBSystemStatusStatusItemDataPublisher)initWithStatusItemIdentifier:(id)identifier;
- (SBSystemStatusStatusItemDataPublisher)initWithStatusItemIdentifier:(id)identifier statusItemsPublisher:(id)publisher;
- (void)_queue_didCompleteOperation:(id)operation;
- (void)_queue_enqueueOperation:(id)operation;
- (void)_queue_startNextOperationIfPossible;
- (void)_queue_startOperation:(id)operation;
- (void)setStatusItemEnabled:(BOOL)enabled withCompletion:(id)completion;
@end

@implementation SBSystemStatusStatusItemDataPublisher

- (SBSystemStatusStatusItemDataPublisher)initWithStatusItemIdentifier:(id)identifier
{
  v5 = SBApp;
  identifierCopy = identifier;
  systemStatusServer = [v5 systemStatusServer];
  if (!systemStatusServer)
  {
    [(SBSystemStatusStatusItemDataPublisher *)self initWithStatusItemIdentifier:a2];
  }

  v8 = [objc_alloc(MEMORY[0x277D6BB60]) initWithServerHandle:systemStatusServer];
  v9 = [(SBSystemStatusStatusItemDataPublisher *)self initWithStatusItemIdentifier:identifierCopy statusItemsPublisher:v8];

  return v9;
}

- (SBSystemStatusStatusItemDataPublisher)initWithStatusItemIdentifier:(id)identifier statusItemsPublisher:(id)publisher
{
  identifierCopy = identifier;
  publisherCopy = publisher;
  v24.receiver = self;
  v24.super_class = SBSystemStatusStatusItemDataPublisher;
  v8 = [(SBSystemStatusStatusItemDataPublisher *)&v24 init];
  if (v8)
  {
    _sharedPublishingQueue = [objc_opt_class() _sharedPublishingQueue];
    publishingQueue = v8->_publishingQueue;
    v8->_publishingQueue = _sharedPublishingQueue;

    _sharedCalloutQueue = [objc_opt_class() _sharedCalloutQueue];
    calloutQueue = v8->_calloutQueue;
    v8->_calloutQueue = _sharedCalloutQueue;

    v13 = [identifierCopy copy];
    statusItemIdentifier = v8->_statusItemIdentifier;
    v8->_statusItemIdentifier = v13;

    objc_storeStrong(&v8->_statusItemsPublisher, publisher);
    v15 = MEMORY[0x277D6B8E8];
    tokenForCurrentProcess = [MEMORY[0x277CF0B98] tokenForCurrentProcess];
    v17 = tokenForCurrentProcess;
    if (tokenForCurrentProcess)
    {
      [tokenForCurrentProcess realToken];
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    v18 = [v15 attributionWithAuditToken:v23];
    attribution = v8->_attribution;
    v8->_attribution = v18;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    queuedOperations = v8->_queuedOperations;
    v8->_queuedOperations = orderedSet;
  }

  return v8;
}

- (void)setStatusItemEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = [[_SBSystemStatusStatusItemDataProviderOperation alloc] initWithEnabling:enabledCopy completion:completionCopy];

  v8 = SBLogStatusBarish();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([(_SBSystemStatusStatusItemDataProviderOperation *)v7 isEnabling])
    {
      v9 = @"add";
    }

    else
    {
      v9 = @"remove";
    }

    v10 = STStatusItemIdentifierDescription();
    *buf = 138412546;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBSystemStatusStatusItemDataPublisher will %@ attribution for %{public}@", buf, 0x16u);
  }

  publishingQueue = self->_publishingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SBSystemStatusStatusItemDataPublisher_setStatusItemEnabled_withCompletion___block_invoke;
  v13[3] = &unk_2783A92D8;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  dispatch_async(publishingQueue, v13);
}

- (BOOL)isStatusItemEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  publishingQueue = self->_publishingQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SBSystemStatusStatusItemDataPublisher_isStatusItemEnabled__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(publishingQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__SBSystemStatusStatusItemDataPublisher_isStatusItemEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)_sharedPublishingQueue
{
  if (_sharedPublishingQueue_onceToken != -1)
  {
    +[SBSystemStatusStatusItemDataPublisher _sharedPublishingQueue];
  }

  v3 = _sharedPublishingQueue_sPublishingQueue;

  return v3;
}

void __63__SBSystemStatusStatusItemDataPublisher__sharedPublishingQueue__block_invoke()
{
  Serial = BSDispatchQueueCreateSerial();
  v1 = _sharedPublishingQueue_sPublishingQueue;
  _sharedPublishingQueue_sPublishingQueue = Serial;
}

+ (id)_sharedCalloutQueue
{
  if (_sharedCalloutQueue_onceToken != -1)
  {
    +[SBSystemStatusStatusItemDataPublisher _sharedCalloutQueue];
  }

  v3 = _sharedCalloutQueue_sCalloutQueue;

  return v3;
}

void __60__SBSystemStatusStatusItemDataPublisher__sharedCalloutQueue__block_invoke()
{
  Serial = BSDispatchQueueCreateSerial();
  v1 = _sharedCalloutQueue_sCalloutQueue;
  _sharedCalloutQueue_sCalloutQueue = Serial;
}

- (void)_queue_enqueueOperation:(id)operation
{
  operationCopy = operation;
  BSDispatchQueueAssert();
  [(NSMutableOrderedSet *)self->_queuedOperations addObject:operationCopy];

  [(SBSystemStatusStatusItemDataPublisher *)self _queue_startNextOperationIfPossible];
}

- (void)_queue_didCompleteOperation:(id)operation
{
  operationCopy = operation;
  BSDispatchQueueAssert();
  v5 = [(_SBSystemStatusStatusItemDataProviderOperation *)self->_currentOperation isEqual:operationCopy];

  if (v5)
  {
    currentOperation = self->_currentOperation;
    self->_currentOperation = 0;

    [(SBSystemStatusStatusItemDataPublisher *)self _queue_startNextOperationIfPossible];
  }
}

- (void)_queue_startNextOperationIfPossible
{
  BSDispatchQueueAssert();
  if (!self->_currentOperation)
  {
    firstObject = [(NSMutableOrderedSet *)self->_queuedOperations firstObject];
    objc_storeStrong(&self->_currentOperation, firstObject);
    if (firstObject)
    {
      [(NSMutableOrderedSet *)self->_queuedOperations removeObject:firstObject];
      [(SBSystemStatusStatusItemDataPublisher *)self _queue_startOperation:firstObject];
    }
  }
}

- (void)_queue_startOperation:(id)operation
{
  v42 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  BSDispatchQueueAssert();
  if (!operationCopy)
  {
    [(SBSystemStatusStatusItemDataPublisher *)a2 _queue_startOperation:?];
  }

  isEnabling = [operationCopy isEnabling];
  objc_initWeak(&location, self);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke;
  v34[3] = &unk_2783B3700;
  objc_copyWeak(&v36, &location);
  v7 = operationCopy;
  v35 = v7;
  v8 = MEMORY[0x223D6F7F0](v34);
  if (isEnabling == [(SBSystemStatusStatusItemDataPublisher *)self _queue_isEnabled])
  {
    v15 = SBLogStatusBarish();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = STStatusItemIdentifierDescription();
      v17 = v16;
      v18 = @"removing";
      if (isEnabling)
      {
        v18 = @"adding";
      }

      *buf = 138412546;
      v39 = v18;
      v40 = 2114;
      v41 = v16;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SBSystemStatusStatusItemDataPublisher skipped operation %@ attribution for %{public}@", buf, 0x16u);
    }

    (v8)[2](v8, v7);
  }

  else
  {
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = STStatusItemIdentifierDescription();
      v11 = v10;
      v12 = @"removing";
      if (isEnabling)
      {
        v12 = @"adding";
      }

      *buf = 138412546;
      v39 = v12;
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBSystemStatusStatusItemDataPublisher starting operation %@ attribution for %{public}@", buf, 0x16u);
    }

    if ([v7 isEnabling])
    {
      v13 = [objc_alloc(MEMORY[0x277D6BB68]) initWithStatusItemIdentifier:self->_statusItemIdentifier activityAttribution:self->_attribution];
      v14 = 0;
    }

    else
    {
      v14 = self->_queue_attribution;
      v13 = 0;
    }

    statusItemsPublisher = [(SBSystemStatusStatusItemDataPublisher *)self statusItemsPublisher];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_38;
    v31[3] = &unk_2783B3728;
    v20 = v14;
    v32 = v20;
    v21 = v13;
    v33 = v21;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_2;
    v24[3] = &unk_2783B3750;
    objc_copyWeak(&v29, &location);
    v22 = v20;
    v25 = v22;
    v23 = v21;
    v26 = v23;
    v30 = isEnabling;
    v28 = v8;
    v27 = v7;
    [statusItemsPublisher updateVolatileDataWithBlock:v31 completion:v24];

    objc_destroyWeak(&v29);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [v5 completion];
    if (v4)
    {
      dispatch_async(WeakRetained[3], v4);
    }

    [(dispatch_queue_t *)WeakRetained _queue_didCompleteOperation:*(a1 + 32)];
  }
}

void __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 removeAttribution:?];
    v3 = v4;
  }

  if (*(a1 + 40))
  {
    [v4 addAttribution:?];
    v3 = v4;
  }
}

void __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_3;
    v10[3] = &unk_2783B3750;
    objc_copyWeak(&v13, (a1 + 64));
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v14 = *(a1 + 72);
    v7 = *(a1 + 56);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = v7;
    *&v9 = v5;
    *(&v9 + 1) = v6;
    v11 = v9;
    v12 = v8;
    dispatch_async(v4, v10);

    objc_destroyWeak(&v13);
  }
}

void __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) isEqual:WeakRetained[6]];
    v4 = v3;
    if (*(a1 + 40))
    {
      if (WeakRetained[6])
      {
        v5 = SBLogStatusBarish();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_3_cold_1();
        }

        goto LABEL_12;
      }
    }

    else if ((v3 & 1) == 0)
    {
      v11 = SBLogStatusBarish();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_3_cold_2();
      }

      v8 = *(a1 + 40);
      if (!v8)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 72))
      {
        v6 = @"add";
      }

      else
      {
        v6 = @"remove";
      }

      v7 = STStatusItemIdentifierDescription();
      v12 = 138412546;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBSystemStatusStatusItemDataPublisher did %@ attribution for %{public}@", &v12, 0x16u);
    }

LABEL_12:

    v8 = *(a1 + 40);
    if (!v8)
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      v9 = 0;
LABEL_14:
      v10 = WeakRetained[6];
      WeakRetained[6] = v9;

LABEL_15:
      (*(*(a1 + 56) + 16))();
      goto LABEL_16;
    }

LABEL_13:
    v9 = v8;
    goto LABEL_14;
  }

LABEL_16:
}

- (void)initWithStatusItemIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBSystemStatusStatusItemDataPublisher.m" lineNumber:47 description:{@"don't initialize %@ before the server handle exists!", objc_opt_class()}];
}

- (void)_queue_startOperation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemStatusStatusItemDataPublisher.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
}

void __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_3_cold_1()
{
  v0 = STStatusItemIdentifierDescription();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "SBSystemStatusStatusItemDataPublisher attempting to add attribution for %{public}@ when we already have one!", v3, v4, v5, v6, 2u);
}

void __63__SBSystemStatusStatusItemDataPublisher__queue_startOperation___block_invoke_3_cold_2()
{
  v0 = STStatusItemIdentifierDescription();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "SBSystemStatusStatusItemDataPublisher attempted to remove attribution for %{public}@ but it didn't match what we had!", v3, v4, v5, v6, 2u);
}

@end