@interface SCKAsyncSerialQueue
- (BOOL)isSuspended;
- (SCKAsyncSerialQueue)init;
- (void)enqueueBlock:(id)block;
- (void)setSuspended:(BOOL)suspended;
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

- (void)enqueueBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    v6 = [[SCKAsyncBlockOperation alloc] initWithBlock:blockCopy];

    serialOperationQueue = [(SCKAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue addOperation:v6];
  }
}

- (void)waitUntilEmpty
{
  serialOperationQueue = [(SCKAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue waitUntilAllOperationsAreFinished];
}

- (BOOL)isSuspended
{
  serialOperationQueue = [(SCKAsyncSerialQueue *)self serialOperationQueue];
  isSuspended = [serialOperationQueue isSuspended];

  return isSuspended;
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  serialOperationQueue = [(SCKAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue setSuspended:suspendedCopy];
}

@end