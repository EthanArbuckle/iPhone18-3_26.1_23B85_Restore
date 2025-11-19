@interface PHAServiceCancelableOperation
+ (id)operationNotFoundError:(int64_t)a3;
- (BOOL)cancel;
- (BOOL)isCancelled;
- (PHAServiceCancelableOperation)initWithOperationId:(int64_t)a3 invocation:(id)a4;
- (PHAServiceOperationListener)delegate;
- (id)description;
- (id)operationCanceledError:(BOOL)a3;
- (id)progressBlock;
- (void)_startWork;
- (void)addCompletionBlock:(id)a3;
- (void)enqueueOnQueue:(id)a3;
- (void)setCancellationBlock:(id)a3;
- (void)setProgressBlock:(id)a3;
@end

@implementation PHAServiceCancelableOperation

- (PHAServiceOperationListener)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  cancelRequested = v2->_cancelRequested;
  objc_sync_exit(v2);

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v2->_operationId];
  v8 = NSStringFromSelector([(NSInvocation *)v2->_invocation selector]);
  v9 = [v4 stringWithFormat:@"<%@ %p>: operationId %@ canceled=%d SEL=%@", v6, v2, v7, cancelRequested, v8];

  return v9;
}

- (id)operationCanceledError:(BOOL)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 18;
  }

  v4 = MEMORY[0x277CCA9B8];
  v9 = @"operationId";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_operationId];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 pl_analysisErrorWithCode:v3 userInfo:v6];

  return v7;
}

- (void)enqueueOnQueue:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PHAServiceCancelableOperation_enqueueOnQueue___block_invoke;
  block[3] = &unk_2788B2E78;
  block[4] = self;
  v3 = a3;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v3, v4);
}

- (void)_startWork
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 operationWillStart:self];
  }

  [(NSInvocation *)self->_invocation invoke];
  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 operationDidFinish:self];
  }

  dispatch_group_leave(self->_completionGroup);
  invocation = self->_invocation;
  self->_invocation = 0;
}

- (BOOL)isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  cancelRequested = v2->_cancelRequested;
  objc_sync_exit(v2);

  return cancelRequested;
}

- (BOOL)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  cancelRequested = v2->_cancelRequested;
  if (v2->_cancelRequested)
  {
    v4 = 0;
  }

  else
  {
    v4 = _Block_copy(v2->_cancellationBlock);
    cancellationBlock = v2->_cancellationBlock;
    v2->_cancellationBlock = 0;
  }

  v2->_cancelRequested = 1;
  objc_sync_exit(v2);

  if (v4)
  {
    v4[2](v4);
  }

  return !cancelRequested;
}

- (void)setProgressBlock:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  v5 = _Block_copy(v4);

  progressBlock = obj->_progressBlock;
  obj->_progressBlock = v5;

  objc_sync_exit(obj);
}

- (id)progressBlock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _Block_copy(v2->_progressBlock);
  objc_sync_exit(v2);

  return v3;
}

- (void)setCancellationBlock:(id)a3
{
  aBlock = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_cancelRequested)
  {
    objc_sync_exit(v4);

    aBlock[2]();
  }

  else
  {
    v5 = _Block_copy(aBlock);
    cancellationBlock = v4->_cancellationBlock;
    v4->_cancellationBlock = v5;

    objc_sync_exit(v4);
  }
}

- (void)addCompletionBlock:(id)a3
{
  completionGroup = self->_completionGroup;
  v5 = dispatch_get_global_queue(17, 0);
  dispatch_group_notify(completionGroup, v5, a3);
}

- (PHAServiceCancelableOperation)initWithOperationId:(int64_t)a3 invocation:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PHAServiceCancelableOperation;
  v8 = [(PHAServiceCancelableOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_invocation, a4);
    v9->_operationId = a3;
    v10 = dispatch_group_create();
    completionGroup = v9->_completionGroup;
    v9->_completionGroup = v10;

    dispatch_group_enter(v9->_completionGroup);
  }

  return v9;
}

+ (id)operationNotFoundError:(int64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = @"operationId";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 pl_analysisErrorWithCode:19 userInfo:v5];

  return v6;
}

@end