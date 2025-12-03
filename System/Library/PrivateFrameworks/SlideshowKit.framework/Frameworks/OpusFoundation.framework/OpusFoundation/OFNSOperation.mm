@interface OFNSOperation
+ (id)blockOperationWithExecutionBlock:(id)block;
+ (id)blockOperationWithExecutionBlock:(id)block finishBlock:(id)finishBlock andFinishDelegate:(id)delegate;
+ (id)nullOperationWithFinishBlock:(id)block andFinishDelegate:(id)delegate;
+ (id)operationWithBlock:(id)block progressBlock:(id)progressBlock cancelBlock:(id)cancelBlock completionHandler:(id)handler;
+ (id)operationWithFinishBlock:(id)block andFinishDelegate:(id)delegate;
- (BOOL)_finish:(BOOL)_finish;
- (BOOL)performSubOperationSynchronously:(id)synchronously progressBlock:(id)block timeout:(unint64_t)timeout;
- (BOOL)performSynchronously:(id)synchronously timeout:(unint64_t)timeout;
- (OFNSOperation)init;
- (double)elapsedTime;
- (unint64_t)launchOperation;
- (void)_launchOperation;
- (void)_updateProgressBlock;
- (void)cancel;
- (void)cancelOperation;
- (void)cleanupOperation;
- (void)dealloc;
- (void)finish;
- (void)finishOperation;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performAsynchronously:(id)asynchronously progressBlock:(id)block timeout:(unint64_t)timeout;
- (void)start;
@end

@implementation OFNSOperation

- (OFNSOperation)init
{
  v5.receiver = self;
  v5.super_class = OFNSOperation;
  v2 = [(OFNSOperation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_canBeCancelled = 1;
    v2->_isExecuting = 0;
    v2->_isFinishing = 0;
    v2->_isFinished = 0;
    v2->_executionBlock = 0;
    v2->_cancelBlock = 0;
    v2->_progressBlock = 0;
    v2->_finishBlock = 0;
    v2->_progress = 0.0;
    v2->_error = 0;
    v2->_identifier = 0;
    v2->_context = 0;
    v2->_startTime = 0.0;
    v2->_finishDelegate = 0;
    v2->_finishingCondition = objc_alloc_init(MEMORY[0x277CCA928]);
    v3->_isFinishingCondition = 0;
    v3->_subOperations = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_mainOperation = 0;
    v3->_cancelTimer = 0;
    v3->_needsToRetry = 0;
    v3->_retryCount = 0;
    if (init_onceToken != -1)
    {
      [OFNSOperation init];
    }
  }

  return v3;
}

dispatch_queue_t __21__OFNSOperation_init__block_invoke()
{
  result = dispatch_queue_create("OFNSOperation", MEMORY[0x277D85CD8]);
  finishQueue = result;
  return result;
}

- (void)dealloc
{
  executionBlock = self->_executionBlock;
  if (executionBlock)
  {

    self->_executionBlock = 0;
  }

  cancelBlock = self->_cancelBlock;
  if (cancelBlock)
  {

    self->_cancelBlock = 0;
  }

  progressBlock = self->_progressBlock;
  if (progressBlock)
  {

    self->_progressBlock = 0;
  }

  finishBlock = self->_finishBlock;
  if (finishBlock)
  {

    self->_finishBlock = 0;
  }

  userData = self->_userData;
  if (userData)
  {

    self->_userData = 0;
  }

  error = self->_error;
  if (error)
  {

    self->_error = 0;
  }

  identifier = self->_identifier;
  if (identifier)
  {

    self->_identifier = 0;
  }

  self->_context = 0;
  objc_storeWeak(&self->_finishDelegate, 0);
  finishingCondition = self->_finishingCondition;
  if (finishingCondition)
  {

    self->_finishingCondition = 0;
  }

  subOperations = self->_subOperations;
  if (subOperations)
  {

    self->_subOperations = 0;
  }

  objc_storeWeak(&self->_mainOperation, 0);
  cancelTimer = self->_cancelTimer;
  if (cancelTimer && !dispatch_source_testcancel(self->_cancelTimer))
  {
    dispatch_source_cancel(cancelTimer);
  }

  v13.receiver = self;
  v13.super_class = OFNSOperation;
  [(OFNSOperation *)&v13 dealloc];
}

+ (id)operationWithFinishBlock:(id)block andFinishDelegate:(id)delegate
{
  v6 = objc_alloc_init(self);
  [v6 setFinishBlock:block];
  [v6 setFinishDelegate:delegate];

  return v6;
}

+ (id)blockOperationWithExecutionBlock:(id)block finishBlock:(id)finishBlock andFinishDelegate:(id)delegate
{
  if (objc_opt_class() == self)
  {
    v10 = objc_alloc_init(OFNSOperation);
    [(OFNSOperation *)v10 setExecutionBlock:block];
    [(OFNSOperation *)v10 setFinishBlock:finishBlock];
    [(OFNSOperation *)v10 setFinishDelegate:delegate];

    return v10;
  }

  else
  {
    if (OFLoggerLevel >= 2)
    {
      [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Operations/OFNSOperation.m" line:199 andFormat:@"This method cannot be called from %@ but only from OFNSOperation class.", self];
    }

    return 0;
  }
}

+ (id)blockOperationWithExecutionBlock:(id)block
{
  if (objc_opt_class() == self)
  {
    v5 = objc_alloc_init(OFNSOperation);
    [(OFNSOperation *)v5 setExecutionBlock:block];
  }

  else
  {
    if (OFLoggerLevel >= 2)
    {
      [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Operations/OFNSOperation.m" line:217 andFormat:@"This method cannot be called from %@ but only from MONSOperation class.", self];
    }

    return 0;
  }

  return v5;
}

+ (id)nullOperationWithFinishBlock:(id)block andFinishDelegate:(id)delegate
{
  v6 = objc_opt_class();

  return [v6 blockOperationWithExecutionBlock:&__block_literal_global_17 finishBlock:block andFinishDelegate:delegate];
}

+ (id)operationWithBlock:(id)block progressBlock:(id)progressBlock cancelBlock:(id)cancelBlock completionHandler:(id)handler
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  v12[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__OFNSOperation_operationWithBlock_progressBlock_cancelBlock_completionHandler___block_invoke;
  v11[3] = &unk_279C89F68;
  v11[4] = block;
  v11[5] = v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__OFNSOperation_operationWithBlock_progressBlock_cancelBlock_completionHandler___block_invoke_3;
  v10[3] = &unk_279C89F68;
  v10[4] = handler;
  v10[5] = v12;
  v8 = [OFNSOperation blockOperationWithExecutionBlock:v11 finishBlock:v10 andFinishDelegate:0];
  [v8 setCancelBlock:cancelBlock];
  [v8 setProgressBlock:progressBlock];
  _Block_object_dispose(v12, 8);
  return v8;
}

void __80__OFNSOperation_operationWithBlock_progressBlock_cancelBlock_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__OFNSOperation_operationWithBlock_progressBlock_cancelBlock_completionHandler___block_invoke_2;
  v10[3] = &unk_279C89F40;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[4] = a2;
  v10[5] = v6;
  (*(v5 + 16))(v5, a2, v10, v7, v8, v9);
  objc_autoreleasePoolPop(v4);
}

uint64_t __80__OFNSOperation_operationWithBlock_progressBlock_cancelBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) setError:?];
  }

  *(*(*(a1 + 40) + 8) + 40) = a2;
  v5 = *(a1 + 32);

  return [v5 finish];
}

void __80__OFNSOperation_operationWithBlock_progressBlock_cancelBlock_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    if ([a2 hasSucceeded] && !objc_msgSend(a2, "error"))
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), 0);
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [a2 error]);
    }
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  objc_autoreleasePoolPop(v4);
}

- (unint64_t)launchOperation
{
  [(OFNSOperation *)self addObserver:self forKeyPath:@"progress" options:0 context:0];
  executionBlock = self->_executionBlock;
  if (executionBlock)
  {
    executionBlock[2](executionBlock, self);
  }

  return 1;
}

- (void)cancelOperation
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = OFNSOperation;
  [(OFNSOperation *)&v14 cancel];
  [(OFNSOperation *)self setIsFinishing:1];
  cancelTimer = self->_cancelTimer;
  if (cancelTimer && !dispatch_source_testcancel(self->_cancelTimer))
  {
    dispatch_source_cancel(cancelTimer);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__OFNSOperation_cancelOperation__block_invoke;
  block[3] = &unk_279C89F90;
  block[4] = self;
  if (cancelOperation_onceToken != -1)
  {
    dispatch_once(&cancelOperation_onceToken, block);
  }

  [(OFNSOperation *)self setError:cancelOperation_cancelError];
  subOperations = self->_subOperations;
  objc_sync_enter(subOperations);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_subOperations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * i) cancel];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(subOperations);
}

id __32__OFNSOperation_cancelOperation__block_invoke()
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:@"OFNSOperationErrorDomain" code:2 localizedDescription:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Operation was cancelled.", @"Operation was cancelled.", @"Localizable"}];
  cancelOperation_cancelError = result;
  return result;
}

- (void)finishOperation
{
  [(OFNSOperation *)self setIsFinishing:1];
  cancelTimer = self->_cancelTimer;
  if (cancelTimer && !dispatch_source_testcancel(self->_cancelTimer))
  {
    dispatch_source_cancel(cancelTimer);
  }

  if (([(OFNSOperation *)self isCancelled]& 1) == 0 && ![(OFNSOperation *)self error])
  {
    LODWORD(v4) = 1.0;
    [(OFNSOperation *)self setProgress:v4];
  }

  if ([(OFNSOperation *)self isExecuting])
  {

    [(OFNSOperation *)self removeObserver:self forKeyPath:@"progress" context:0];
  }
}

- (void)cleanupOperation
{
  v18 = *MEMORY[0x277D85DE8];
  executionBlock = self->_executionBlock;
  if (executionBlock)
  {

    self->_executionBlock = 0;
  }

  cancelBlock = self->_cancelBlock;
  if (cancelBlock)
  {

    self->_cancelBlock = 0;
  }

  progressBlock = self->_progressBlock;
  if (progressBlock)
  {

    self->_progressBlock = 0;
  }

  finishBlock = self->_finishBlock;
  if (finishBlock)
  {

    self->_finishBlock = 0;
  }

  objc_storeWeak(&self->_finishDelegate, 0);
  cancelTimer = self->_cancelTimer;
  if (cancelTimer && !dispatch_source_testcancel(self->_cancelTimer))
  {
    dispatch_source_cancel(cancelTimer);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dependencies = [(OFNSOperation *)self dependencies];
  v9 = [dependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(dependencies);
        }

        [(OFNSOperation *)self removeDependency:*(*(&v13 + 1) + 8 * i)];
      }

      v10 = [dependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_launchOperation
{
  [(OFNSOperation *)self launchOperation];
  [(NSCondition *)self->_finishingCondition lock];
  while (!self->_isFinishingCondition)
  {
    [(NSCondition *)self->_finishingCondition wait];
  }

  v3 = [(OFNSOperation *)self _finish:0];
  [(NSCondition *)self->_finishingCondition unlock];
  if (v3 && ![(OFNSOperation *)self isFinished]&& [(OFNSOperation *)self isExecuting])
  {
    [(OFNSOperation *)self setCanBeCancelled:1];
    [(OFNSOperation *)self setIsFinishing:0];
    self->_progress = 0.0;
    [(OFNSOperation *)self setError:0];
    self->_needsToRetry = 0;
    ++self->_retryCount;

    [(OFNSOperation *)self _launchOperation];
  }
}

- (void)start
{
  v3 = objc_autoreleasePoolPush();
  if (([(OFNSOperation *)self isCancelled]& 1) == 0 && ![(OFNSOperation *)self isFinished]&& ![(OFNSOperation *)self isExecuting]&& ![(OFNSOperation *)self isFinishing])
  {
    self->_startTime = CFAbsoluteTimeGetCurrent();
    [(OFNSOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_isExecuting = 1;
    [(OFNSOperation *)self didChangeValueForKey:@"isExecuting"];
    [(OFNSOperation *)self setError:0];
  }

  if ([(OFNSOperation *)self isExecuting])
  {
    [(OFNSOperation *)self _launchOperation];
  }

  else
  {
    [(OFNSOperation *)self _finish:1];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)cancel
{
  objc_sync_enter(self);
  if (([(OFNSOperation *)self isCancelled]& 1) == 0 && ![(OFNSOperation *)self isFinished]&& ![(OFNSOperation *)self isFinishing]&& ([(OFNSOperation *)self canBeCancelled]|| ![(OFNSOperation *)self isExecuting]))
  {
    [(OFNSOperation *)self cancelOperation];
    cancelBlock = self->_cancelBlock;
    if (cancelBlock)
    {
      cancelBlock[2](cancelBlock, self);
    }
  }

  objc_sync_exit(self);
}

- (double)elapsedTime
{
  result = -1.0;
  if (self->_startTime != 0.0)
  {
    return CFAbsoluteTimeGetCurrent() - self->_startTime;
  }

  return result;
}

- (BOOL)_finish:(BOOL)_finish
{
  if ([(OFNSOperation *)self isFinished])
  {
    return 0;
  }

  [(OFNSOperation *)self finishOperation];
  finishBlock = self->_finishBlock;
  if (finishBlock)
  {
    finishBlock[2](finishBlock, self);
  }

  if (!self->_needsToRetry || _finish || ([(OFNSOperation *)self isCancelled]& 1) != 0)
  {
    if ([(OFNSOperation *)self isCancelled])
    {
      if ([(OFNSOperation *)self finishDelegate])
      {
        [(OFNSOperation *)self finishDelegate];
        if (objc_opt_respondsToSelector())
        {
          [(OFNSOperationDelegate *)[(OFNSOperation *)self finishDelegate] operationDidCancel:self];
        }
      }
    }

    else
    {
      error = [(OFNSOperation *)self error];
      finishDelegate = [(OFNSOperation *)self finishDelegate];
      if (error)
      {
        if (finishDelegate)
        {
          [(OFNSOperation *)self finishDelegate];
          if (objc_opt_respondsToSelector())
          {
            [(OFNSOperationDelegate *)[(OFNSOperation *)self finishDelegate] operationDidFail:self withError:[(OFNSOperation *)self error]];
          }
        }
      }

      else if (finishDelegate)
      {
        [(OFNSOperation *)self finishDelegate];
        if (objc_opt_respondsToSelector())
        {
          [(OFNSOperationDelegate *)[(OFNSOperation *)self finishDelegate] operationDidFinishWithSuccess:self];
        }
      }
    }

    [(OFNSOperation *)self cleanupOperation];
    [(OFNSOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_isExecuting = 0;
    [(OFNSOperation *)self didChangeValueForKey:@"isExecuting"];
    [(OFNSOperation *)self willChangeValueForKey:@"isFinished"];
    self->_isFinished = 1;
    [(OFNSOperation *)self didChangeValueForKey:@"isFinished"];
    return 0;
  }

  if ([(OFNSOperation *)self finishDelegate])
  {
    [(OFNSOperation *)self finishDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(OFNSOperationDelegate *)[(OFNSOperation *)self finishDelegate] operationWillRetry:self];
    }
  }

  return 1;
}

- (void)finish
{
  [(OFNSOperation *)self setCanBeCancelled:0];
  if (pthread_main_np())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__OFNSOperation_finish__block_invoke;
    block[3] = &unk_279C89F90;
    block[4] = self;
    dispatch_async(finishQueue, block);
  }

  else
  {
    [(NSCondition *)self->_finishingCondition lock];
    if (!self->_isFinishingCondition)
    {
      self->_isFinishingCondition = 1;
      [(NSCondition *)self->_finishingCondition signal];
    }

    finishingCondition = self->_finishingCondition;

    [(NSCondition *)finishingCondition unlock];
  }
}

uint64_t __23__OFNSOperation_finish__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 336) lock];
  v2 = *(a1 + 32);
  if ((*(v2 + 344) & 1) == 0)
  {
    *(v2 + 344) = 1;
    [*(*(a1 + 32) + 336) signal];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 336);

  return [v3 unlock];
}

- (void)_updateProgressBlock
{
  objc_sync_enter(self);
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    v5 = 0;
    [(OFNSOperation *)self progress];
    progressBlock[2](progressBlock, [(OFNSOperation *)self userData], &v5, v4);
    if (v5 == 1)
    {
      [(OFNSOperation *)self cancel];
    }
  }

  objc_sync_exit(self);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:@"progress"])
  {

    [(OFNSOperation *)self _updateProgressBlock];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = OFNSOperation;
    [(OFNSOperation *)&v11 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

- (BOOL)performSubOperationSynchronously:(id)synchronously progressBlock:(id)block timeout:(unint64_t)timeout
{
  if (!synchronously)
  {
    return 0;
  }

  [synchronously setMainOperation:self];
  subOperations = self->_subOperations;
  objc_sync_enter(subOperations);
  [(NSMutableArray *)self->_subOperations addObject:synchronously];
  objc_sync_exit(subOperations);
  [synchronously setQualityOfService:{-[OFNSOperation qualityOfService](self, "qualityOfService")}];
  v10 = [synchronously performSynchronously:block timeout:timeout];
  v11 = self->_subOperations;
  objc_sync_enter(v11);
  [(NSMutableArray *)self->_subOperations removeObject:synchronously];
  objc_sync_exit(v11);
  [(OFNSOperation *)self _updateProgressBlock];
  return v10;
}

- (BOOL)performSynchronously:(id)synchronously timeout:(unint64_t)timeout
{
  [(OFNSOperation *)self setProgressBlock:synchronously];
  if (timeout - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
    dispatch_source_set_timer(v7, timeout, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__OFNSOperation_performSynchronously_timeout___block_invoke;
    handler[3] = &unk_279C89FB8;
    handler[4] = self;
    handler[5] = v7;
    dispatch_source_set_event_handler(v7, handler);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__OFNSOperation_performSynchronously_timeout___block_invoke_2;
    v9[3] = &unk_279C89FB8;
    v9[4] = self;
    v9[5] = v7;
    dispatch_source_set_cancel_handler(v7, v9);
    self->_cancelTimer = v7;
    dispatch_resume(v7);
  }

  [(OFNSOperation *)self start];
  return ([(OFNSOperation *)self isCancelled]& 1) == 0 && [(OFNSOperation *)self error]== 0;
}

void __46__OFNSOperation_performSynchronously_timeout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);
  if (!dispatch_source_testcancel(v2))
  {

    dispatch_source_cancel(v2);
  }
}

- (void)performAsynchronously:(id)asynchronously progressBlock:(id)block timeout:(unint64_t)timeout
{
  [(OFNSOperation *)self setProgressBlock:block];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__OFNSOperation_performAsynchronously_progressBlock_timeout___block_invoke;
  v8[3] = &unk_279C89EF0;
  v8[4] = self;
  v8[5] = timeout;
  [self performBlock:v8 usingQueue:asynchronously];
}

uint64_t __61__OFNSOperation_performAsynchronously_progressBlock_timeout___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) + 1) >= 2)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
    dispatch_source_set_timer(v3, *(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __61__OFNSOperation_performAsynchronously_progressBlock_timeout___block_invoke_2;
    handler[3] = &unk_279C89FB8;
    handler[4] = *(a1 + 32);
    handler[5] = v3;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__OFNSOperation_performAsynchronously_progressBlock_timeout___block_invoke_3;
    v5[3] = &unk_279C89FB8;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_source_set_cancel_handler(v3, v5);
    *(*(a1 + 32) + 368) = v3;
    dispatch_resume(v3);
  }

  return [*(a1 + 32) start];
}

void __61__OFNSOperation_performAsynchronously_progressBlock_timeout___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);
  if (!dispatch_source_testcancel(v2))
  {

    dispatch_source_cancel(v2);
  }
}

@end