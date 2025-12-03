@interface SBKAsynchronousTask
- (NSError)error;
- (SBKAsynchronousTask)initWithHandlerQueue:(id)queue timeout:(double)timeout debugDescription:(id)description;
- (id)description;
- (id)expirationHandler;
- (id)finishedHandler;
- (id)result;
- (int)cancelType;
- (void)_invalidateAssertion:(BOOL)assertion;
- (void)_invalidateTimer;
- (void)_onQueueFireExpirationHandlerIfNecesary;
- (void)addTaskCompletionBlock:(id)block;
- (void)beginTaskOperation;
- (void)dealloc;
- (void)endTaskOperation;
- (void)finishTaskOperationWithResult:(id)result error:(id)error;
- (void)invalidate;
- (void)invokeTaskCompletionBlocksWithBlock:(id)block;
- (void)setCancelType:(int)type;
- (void)setError:(id)error;
- (void)setExpirationHandler:(id)handler;
- (void)setFinishedHandler:(id)handler;
- (void)setResult:(id)result;
@end

@implementation SBKAsynchronousTask

- (void)invokeTaskCompletionBlocksWithBlock:(id)block
{
  blockCopy = block;
  completions = [(SBKAsynchronousTask *)self completions];
  v6 = [completions copy];

  [(SBKAsynchronousTask *)self setCompletions:0];
  result = [(SBKAsynchronousTask *)self result];
  error = [(SBKAsynchronousTask *)self error];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke;
  block[3] = &unk_279D230A0;
  block[4] = self;
  block[5] = v22;
  dispatch_sync(queue, block);
  v10 = dispatch_group_create();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke_2;
  v16[3] = &unk_279D230C8;
  v11 = v10;
  v17 = v11;
  v12 = blockCopy;
  v20 = v12;
  v13 = result;
  v18 = v13;
  v14 = error;
  v19 = v14;
  [v6 enumerateObjectsUsingBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke_4;
  v15[3] = &unk_279D230A0;
  v15[4] = self;
  v15[5] = v22;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v15);

  _Block_object_dispose(v22, 8);
}

uint64_t __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke_3;
  block[3] = &unk_279D23218;
  v5 = *(a1 + 56);
  v12 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

uint64_t __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke_4(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return [*(result + 32) _invalidateAssertion:1];
  }

  return result;
}

void __59__SBKAsynchronousTask_invokeTaskCompletionBlocksWithBlock___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  (*(a1[8] + 16))();
  v5 = a1[7];

  dispatch_group_leave(v5);
}

- (void)addTaskCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = blockCopy;
    v6 = MEMORY[0x26D6917A0]();
    v9 = [v6 copy];

    completions = [(SBKAsynchronousTask *)self completions];
    v8 = MEMORY[0x26D6917A0](v9);
    [completions addObject:v8];
  }
}

- (void)invalidate
{
  [(SBKAsynchronousTask *)self _invalidateTimer];
  [(SBKAsynchronousTask *)self setExpirationHandler:0];
  [(SBKAsynchronousTask *)self setFinishedHandler:0];

  [(SBKAsynchronousTask *)self _invalidateAssertion:0];
}

- (void)_invalidateAssertion:(BOOL)assertion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBKAsynchronousTask__invalidateAssertion___block_invoke;
  block[3] = &unk_279D23078;
  assertionCopy = assertion;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  v4 = v8[5];
  if (v4)
  {
    [v4 invalidate];
  }

  _Block_object_dispose(&v7, 8);
}

void __44__SBKAsynchronousTask__invalidateAssertion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) != 1 || *(a1 + 48) == 1)
  {
    *(v2 + 40) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 96));
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = 0;
  }
}

- (void)endTaskOperation
{
  [(SBKAsynchronousTask *)self finishTaskOperationWithResult:0 error:0];

  [(SBKAsynchronousTask *)self invalidate];
}

- (void)finishTaskOperationWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [(SBKAsynchronousTask *)self setResult:resultCopy];
  [(SBKAsynchronousTask *)self setError:errorCopy];
  [(SBKAsynchronousTask *)self setExpirationHandler:0];
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBKAsynchronousTask_finishTaskOperationWithResult_error___block_invoke;
  block[3] = &unk_279D23050;
  block[4] = self;
  v12 = resultCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(handlerQueue, block);
}

void __59__SBKAsynchronousTask_finishTaskOperationWithResult_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) finishedHandler];
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_26BC19000, v3, OS_LOG_TYPE_DEFAULT, "Invoking completion handler for %@, result = %@, error = %@", &v8, 0x20u);
    }

    v2[2](v2);
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)beginTaskOperation
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_26BC19000, v4, OS_LOG_TYPE_DEFAULT, "beginTaskOperation %@", buf, 0xCu);
  }

  finishedHandler = [(SBKAsynchronousTask *)self finishedHandler];
  if (!finishedHandler || (v6 = finishedHandler, [(SBKAsynchronousTask *)self expirationHandler], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBKAsynchronousTask.m" lineNumber:201 description:@"must have a finish and expiration handler specified"];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SBKAsynchronousTask_beginTaskOperation__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_sync(queue, block);
  v10 = *MEMORY[0x277D85DE8];
}

void __41__SBKAsynchronousTask_beginTaskOperation__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D27F40]) initWithName:@"SBKAsynchronousTask" pid:getpid() subsystem:@"com.apple.amp.StoreBookkeeper" reason:2 flags:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  objc_initWeak(&location, *(a1 + 32));
  v5 = *(*(a1 + 32) + 96);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__SBKAsynchronousTask_beginTaskOperation__block_invoke_2;
  v10[3] = &unk_279D23028;
  objc_copyWeak(&v11, &location);
  [v5 setInvalidationHandler:v10];
  v6 = *(*(a1 + 32) + 32);
  if (v6)
  {
    dispatch_suspend(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    v9 = dispatch_time(0, (*(v7 + 48) * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(*(a1 + 32) + 32));
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __41__SBKAsynchronousTask_beginTaskOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateTimer];
  [WeakRetained setCancelType:1];
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__SBKAsynchronousTask_error__block_invoke;
  v5[3] = &unk_279D230A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SBKAsynchronousTask_setError___block_invoke;
  v7[3] = &unk_279D23150;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_sync(queue, v7);
}

void __32__SBKAsynchronousTask_setError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 72);
  v3 = (v2 + 72);
  if (v1 != v4)
  {
    objc_storeStrong(v3, v1);
  }
}

- (id)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SBKAsynchronousTask_result__block_invoke;
  v5[3] = &unk_279D230A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SBKAsynchronousTask_setResult___block_invoke;
  v7[3] = &unk_279D23150;
  v8 = resultCopy;
  selfCopy = self;
  v6 = resultCopy;
  dispatch_sync(queue, v7);
}

void __33__SBKAsynchronousTask_setResult___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 64);
  v3 = (v2 + 64);
  if (v1 != v4)
  {
    objc_storeStrong(v3, v1);
  }
}

- (int)cancelType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SBKAsynchronousTask_cancelType__block_invoke;
  v5[3] = &unk_279D230A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCancelType:(int)type
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__SBKAsynchronousTask_setCancelType___block_invoke;
  v4[3] = &unk_279D23000;
  typeCopy = type;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

uint64_t __37__SBKAsynchronousTask_setCancelType___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 56))
  {
    *(v2 + 56) = v1;
    result = *(result + 32);
    if (*(result + 56))
    {
      return [result _onQueueFireExpirationHandlerIfNecesary];
    }
  }

  return result;
}

- (void)_onQueueFireExpirationHandlerIfNecesary
{
  v3 = MEMORY[0x26D6917A0](self->_expirationHandler, a2);
  if (v3)
  {
    expirationHandler = self->_expirationHandler;
    self->_expirationHandler = 0;

    cancelType = self->_cancelType;
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SBKAsynchronousTask__onQueueFireExpirationHandlerIfNecesary__block_invoke;
    block[3] = &unk_279D22FD8;
    block[4] = self;
    v9 = cancelType;
    v8 = v3;
    dispatch_async(handlerQueue, block);
  }
}

uint64_t __62__SBKAsynchronousTask__onQueueFireExpirationHandlerIfNecesary__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v7 = 138412546;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_26BC19000, v2, OS_LOG_TYPE_DEFAULT, "Invoking expiration handler for %@, with cancelType = %d", &v7, 0x12u);
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)finishedHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1686;
  v10 = __Block_byref_object_dispose__1687;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SBKAsynchronousTask_finishedHandler__block_invoke;
  v5[3] = &unk_279D230A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = MEMORY[0x26D6917A0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__SBKAsynchronousTask_finishedHandler__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setFinishedHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SBKAsynchronousTask_setFinishedHandler___block_invoke;
  v7[3] = &unk_279D23100;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

void *__42__SBKAsynchronousTask_setFinishedHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result != *(*(a1 + 32) + 88))
  {
    v3 = [result copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)expirationHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1686;
  v10 = __Block_byref_object_dispose__1687;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SBKAsynchronousTask_expirationHandler__block_invoke;
  v5[3] = &unk_279D230A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = MEMORY[0x26D6917A0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__SBKAsynchronousTask_expirationHandler__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setExpirationHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SBKAsynchronousTask_setExpirationHandler___block_invoke;
  v7[3] = &unk_279D23100;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

void *__44__SBKAsynchronousTask_setExpirationHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result != *(*(a1 + 32) + 80))
  {
    v3 = [result copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBKAsynchronousTask;
  v4 = [(SBKAsynchronousTask *)&v8 description];
  v5 = [(SBKAsynchronousTask *)self debugDescription];
  v6 = [v3 stringWithFormat:@"%@ '%@'", v4, v5];

  return v6;
}

- (void)_invalidateTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SBKAsynchronousTask__invalidateTimer__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__SBKAsynchronousTask__invalidateTimer__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

- (void)dealloc
{
  [(SBKAsynchronousTask *)self _invalidateTimer];
  [(SBKAsynchronousTask *)self setResult:0];
  [(SBKAsynchronousTask *)self setError:0];
  [(SBKAsynchronousTask *)self setFinishedHandler:0];
  [(SBKAsynchronousTask *)self setExpirationHandler:0];
  handlerQueue = self->_handlerQueue;
  if (handlerQueue)
  {
    self->_handlerQueue = 0;
  }

  queue = self->_queue;
  if (queue)
  {
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = SBKAsynchronousTask;
  [(SBKAsynchronousTask *)&v5 dealloc];
}

- (SBKAsynchronousTask)initWithHandlerQueue:(id)queue timeout:(double)timeout debugDescription:(id)description
{
  queueCopy = queue;
  descriptionCopy = description;
  v23.receiver = self;
  v23.super_class = SBKAsynchronousTask;
  v11 = [(SBKAsynchronousTask *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_handlerQueue, queue);
    v13 = dispatch_queue_create(0, 0);
    queue = v12->_queue;
    v12->_queue = v13;

    v12->_timeout = timeout;
    array = [MEMORY[0x277CBEB18] array];
    [(SBKAsynchronousTask *)v12 setCompletions:array];

    objc_storeStrong(&v12->_debugDescription, description);
    v16 = dispatch_queue_create(0, 0);
    v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v16);
    timeoutTimer = v12->_timeoutTimer;
    v12->_timeoutTimer = v17;

    dispatch_source_set_timer(v12->_timeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v19 = v12->_timeoutTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __69__SBKAsynchronousTask_initWithHandlerQueue_timeout_debugDescription___block_invoke;
    handler[3] = &unk_279D231C8;
    v22 = v12;
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(v12->_timeoutTimer);
  }

  return v12;
}

uint64_t __69__SBKAsynchronousTask_initWithHandlerQueue_timeout_debugDescription___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_26BC19000, v2, OS_LOG_TYPE_ERROR, "[SBKAsynchronousTask] WARNING: task timed out: %@", &v6, 0xCu);
  }

  [*(a1 + 32) _invalidateTimer];
  [*(a1 + 32) _invalidateAssertion:1];
  result = [*(a1 + 32) setCancelType:2];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end