@interface RCAsyncOnceOperation
- (BOOL)finishedExecuting;
- (BOOL)finishedExecutingWithFailure;
- (RCAsyncOnceOperation)initWithBlock:(id)block;
- (RCAsyncOnceOperation)initWithTarget:(id)target selector:(SEL)selector;
- (id)executeWithCompletionHandler:(id)handler;
- (void)setRelativePriority:(int64_t)priority;
@end

@implementation RCAsyncOnceOperation

- (RCAsyncOnceOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(RCAsyncOnceOperation *)self init];
  if (v5)
  {
    v6 = [blockCopy copy];
    workBlock = v5->_workBlock;
    v5->_workBlock = v6;

    v8 = objc_alloc_init(RCMutexLock);
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

- (RCAsyncOnceOperation)initWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  objc_initWeak(&location, targetCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__RCAsyncOnceOperation_initWithTarget_selector___block_invoke;
  aBlock[3] = &unk_27822F378;
  objc_copyWeak(v11, &location);
  v11[1] = selector;
  v7 = _Block_copy(aBlock);
  v8 = [(RCAsyncOnceOperation *)self initWithBlock:v7];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);

  return v8;
}

id __48__RCAsyncOnceOperation_initWithTarget_selector___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = ([WeakRetained methodForSelector:*(a1 + 40)])(WeakRetained, *(a1 + 40), v3);
  }

  else
  {
    v3[2](v3, 0);
    v6 = 0;
  }

  return v6;
}

- (id)executeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(RCMutexLock *)self->_lock lock];
  if ([(RCAsyncOnceOperation *)self finished])
  {
    [(RCMutexLock *)self->_lock unlock];
    v5 = 0;
  }

  else
  {
    if (![(RCAsyncOnceOperation *)self interest])
    {
      activeGroup = [(RCAsyncOnceOperation *)self activeGroup];

      if (activeGroup && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RCAsyncOnceOperation executeWithCompletionHandler:];
      }

      activeOperation = [(RCAsyncOnceOperation *)self activeOperation];

      if (activeOperation && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RCAsyncOnceOperation executeWithCompletionHandler:];
      }

      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      [(RCAsyncOnceOperation *)self setActiveGroup:v8];
      workBlock = [(RCAsyncOnceOperation *)self workBlock];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__RCAsyncOnceOperation_executeWithCompletionHandler___block_invoke;
      v18[3] = &unk_27822F3A0;
      v18[4] = self;
      v19 = v8;
      v10 = workBlock[2];
      v11 = v8;
      v12 = v10(workBlock, v18);
      [(RCAsyncOnceOperation *)self setActiveOperation:v12];

      relativePriority = [(RCAsyncOnceOperation *)self relativePriority];
      activeOperation2 = [(RCAsyncOnceOperation *)self activeOperation];
      [activeOperation2 setRelativePriority:relativePriority];
    }

    [(RCAsyncOnceOperation *)self setInterest:[(RCAsyncOnceOperation *)self interest]+ 1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__RCAsyncOnceOperation_executeWithCompletionHandler___block_invoke_2;
    v17[3] = &unk_27822F2B0;
    v17[4] = self;
    v5 = [RCCancelHandler cancelHandlerWithBlock:v17];
    activeGroup2 = [(RCAsyncOnceOperation *)self activeGroup];
    [(RCMutexLock *)self->_lock unlock];
    if (activeGroup2)
    {
      dispatch_group_notify(activeGroup2, MEMORY[0x277D85CD0], handlerCopy);

      goto LABEL_14;
    }
  }

  handlerCopy[2](handlerCopy);
LABEL_14:

  return v5;
}

void __53__RCAsyncOnceOperation_executeWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 56) lock];
  v4 = [*(a1 + 32) activeGroup];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    [*(a1 + 32) setFinished:1];
    [*(a1 + 32) setSucceeded:a2];
    [*(a1 + 32) setInterest:0];
    [*(a1 + 32) setActiveGroup:0];
    [*(a1 + 32) setActiveOperation:0];
    [*(a1 + 32) setWorkBlock:0];
  }

  [*(*(a1 + 32) + 56) unlock];
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

uint64_t __53__RCAsyncOnceOperation_executeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 56) lock];
  [*(a1 + 32) setInterest:{objc_msgSend(*(a1 + 32), "interest") - 1}];
  if (![*(a1 + 32) interest])
  {
    [*(a1 + 32) setActiveGroup:0];
    v2 = [*(a1 + 32) activeOperation];
    [v2 cancel];

    [*(a1 + 32) setActiveOperation:0];
  }

  v3 = *(*(a1 + 32) + 56);

  return [v3 unlock];
}

- (BOOL)finishedExecuting
{
  [(RCMutexLock *)self->_lock lock];
  finished = [(RCAsyncOnceOperation *)self finished];
  [(RCMutexLock *)self->_lock unlock];
  return finished;
}

- (BOOL)finishedExecutingWithFailure
{
  [(RCMutexLock *)self->_lock lock];
  if ([(RCAsyncOnceOperation *)self finished])
  {
    v3 = ![(RCAsyncOnceOperation *)self succeeded];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  [(RCMutexLock *)self->_lock unlock];
  return v3;
}

- (void)setRelativePriority:(int64_t)priority
{
  [(RCMutexLock *)self->_lock lock];
  self->_relativePriority = priority;
  activeOperation = [(RCAsyncOnceOperation *)self activeOperation];
  [activeOperation setRelativePriority:priority];

  lock = self->_lock;

  [(RCMutexLock *)lock unlock];
}

- (void)executeWithCompletionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"already have an active group"];
  v2 = 136315906;
  v3 = "[RCAsyncOnceOperation executeWithCompletionHandler:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOnce.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)executeWithCompletionHandler:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"already have an active operation"];
  v2 = 136315906;
  v3 = "[RCAsyncOnceOperation executeWithCompletionHandler:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOnce.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end