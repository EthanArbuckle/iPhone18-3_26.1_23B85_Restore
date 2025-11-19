@interface SCKStartupQueue
- (SCKStartupQueue)initWithDeferredStartup:(BOOL)a3;
- (void)enqueueStartupBlock:(id)a3;
- (void)executeAfterStartup:(id)a3;
@end

@implementation SCKStartupQueue

- (SCKStartupQueue)initWithDeferredStartup:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SCKStartupQueue;
  v4 = [(SCKStartupQueue *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(SCKAsyncSerialQueue);
    startupTaskQueue = v4->_startupTaskQueue;
    v4->_startupTaskQueue = v5;

    v7 = [(SCKStartupQueue *)v4 startupTaskQueue];
    [v7 setSuspended:v3];
  }

  return v4;
}

- (void)enqueueStartupBlock:(id)a3
{
  v4 = a3;
  v5 = [(SCKStartupQueue *)self startupTaskQueue];
  [v5 enqueueBlock:v4];
}

- (void)executeAfterStartup:(id)a3
{
  v4 = a3;
  v5 = [(SCKStartupQueue *)self startupTaskQueue];
  [v5 setSuspended:0];

  v6 = [(SCKStartupQueue *)self startupTaskQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SCKStartupQueue_executeAfterStartup___block_invoke;
  v8[3] = &unk_279D16170;
  v9 = v4;
  v7 = v4;
  [v6 enqueueBlock:v8];
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