@interface SCKAsyncSerialQueue
- (BOOL)isSuspended;
- (SCKAsyncSerialQueue)init;
- (void)enqueueBlock:(id)a3;
- (void)setSuspended:(BOOL)a3;
- (void)waitUntilEmpty;
@end

@implementation SCKAsyncSerialQueue

- (SCKAsyncSerialQueue)init
{
  v6.receiver = self;
  v6.super_class = SCKAsyncSerialQueue;
  v2 = [(SCKAsyncSerialQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    serialOperationQueue = v2->_serialOperationQueue;
    v2->_serialOperationQueue = v3;

    [(NSOperationQueue *)v2->_serialOperationQueue setName:@"SCKAsyncSerialQueue.operationQueue"];
    [(NSOperationQueue *)v2->_serialOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_serialOperationQueue setQualityOfService:17];
  }

  return v2;
}

- (void)enqueueBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [[SCKAsyncBlockOperation alloc] initWithBlock:v4];

    v5 = [(SCKAsyncSerialQueue *)self serialOperationQueue];
    [v5 addOperation:v6];
  }
}

- (void)waitUntilEmpty
{
  v2 = [(SCKAsyncSerialQueue *)self serialOperationQueue];
  [v2 waitUntilAllOperationsAreFinished];
}

- (BOOL)isSuspended
{
  v2 = [(SCKAsyncSerialQueue *)self serialOperationQueue];
  v3 = [v2 isSuspended];

  return v3;
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  v4 = [(SCKAsyncSerialQueue *)self serialOperationQueue];
  [v4 setSuspended:v3];
}

@end