@interface RCAsyncBlockOperation
+ (id)asyncBlockOperationWithBlock:(id)block;
+ (id)asyncBlockOperationWithMainThreadBlock:(id)block;
- (RCAsyncBlockOperation)init;
- (RCAsyncBlockOperation)initWithBlock:(id)block;
- (void)start;
@end

@implementation RCAsyncBlockOperation

+ (id)asyncBlockOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [objc_alloc(objc_opt_class()) initWithBlock:blockCopy];

  return v4;
}

+ (id)asyncBlockOperationWithMainThreadBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__RCAsyncBlockOperation_asyncBlockOperationWithMainThreadBlock___block_invoke;
  v8[3] = &unk_27822FB38;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [self asyncBlockOperationWithBlock:v8];

  return v6;
}

void __64__RCAsyncBlockOperation_asyncBlockOperationWithMainThreadBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__RCAsyncBlockOperation_asyncBlockOperationWithMainThreadBlock___block_invoke_2;
  v5[3] = &unk_27822F7A0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  RCPerformBlockOnMainThread(v5);
}

- (RCAsyncBlockOperation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[RCAsyncBlockOperation init]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Utilities/RCAsyncBlockOperation.m";
    v12 = 1024;
    v13 = 39;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[RCAsyncBlockOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (RCAsyncBlockOperation)initWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCAsyncBlockOperation initWithBlock:];
  }

  v9.receiver = self;
  v9.super_class = RCAsyncBlockOperation;
  v5 = [(RCAsyncBlockOperation *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)start
{
  if ([(RCAsyncBlockOperation *)self isCancelled])
  {
    [(RCAsyncBlockOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;

    [(RCAsyncBlockOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(RCAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(RCAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];
    v3 = objc_autoreleasePoolPush();
    block = [(RCAsyncBlockOperation *)self block];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __30__RCAsyncBlockOperation_start__block_invoke;
    v5[3] = &unk_27822F2B0;
    v5[4] = self;
    (block)[2](block, v5);

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t __30__RCAsyncBlockOperation_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"isExecuting"];
  *(*(a1 + 32) + 248) = 0;
  [*(a1 + 32) didChangeValueForKey:@"isExecuting"];
  [*(a1 + 32) willChangeValueForKey:@"isFinished"];
  *(*(a1 + 32) + 249) = 1;
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"isFinished"];
}

- (void)initWithBlock:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
  *buf = 136315906;
  v3 = "[RCAsyncBlockOperation initWithBlock:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Utilities/RCAsyncBlockOperation.m";
  v6 = 1024;
  v7 = 44;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end