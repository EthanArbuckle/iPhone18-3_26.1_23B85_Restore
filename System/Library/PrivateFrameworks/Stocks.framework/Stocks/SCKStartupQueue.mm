@interface SCKStartupQueue
- (SCKStartupQueue)initWithDeferredStartup:(BOOL)startup;
- (void)enqueueStartupBlock:(id)block;
- (void)executeAfterStartup:(id)startup;
@end

@implementation SCKStartupQueue

- (SCKStartupQueue)initWithDeferredStartup:(BOOL)startup
{
  startupCopy = startup;
  v9.receiver = self;
  v9.super_class = SCKStartupQueue;
  v4 = [(SCKStartupQueue *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(SCKAsyncSerialQueue);
    startupTaskQueue = v4->_startupTaskQueue;
    v4->_startupTaskQueue = v5;

    startupTaskQueue = [(SCKStartupQueue *)v4 startupTaskQueue];
    [startupTaskQueue setSuspended:startupCopy];
  }

  return v4;
}

- (void)enqueueStartupBlock:(id)block
{
  blockCopy = block;
  startupTaskQueue = [(SCKStartupQueue *)self startupTaskQueue];
  [startupTaskQueue enqueueBlock:blockCopy];
}

- (void)executeAfterStartup:(id)startup
{
  startupCopy = startup;
  startupTaskQueue = [(SCKStartupQueue *)self startupTaskQueue];
  [startupTaskQueue setSuspended:0];

  startupTaskQueue2 = [(SCKStartupQueue *)self startupTaskQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SCKStartupQueue_executeAfterStartup___block_invoke;
  v8[3] = &unk_279D16170;
  v9 = startupCopy;
  v7 = startupCopy;
  [startupTaskQueue2 enqueueBlock:v8];
}

void __39__SCKStartupQueue_executeAfterStartup___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  v4[2]();
}

@end