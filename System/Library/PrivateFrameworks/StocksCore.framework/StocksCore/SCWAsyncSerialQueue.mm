@interface SCWAsyncSerialQueue
- (BOOL)isSuspended;
- (SCWAsyncSerialQueue)initWithQualityOfService:(int64_t)service;
- (void)enqueueBlock:(id)block;
- (void)waitUntilEmpty;
@end

@implementation SCWAsyncSerialQueue

- (SCWAsyncSerialQueue)initWithQualityOfService:(int64_t)service
{
  v8.receiver = self;
  v8.super_class = SCWAsyncSerialQueue;
  v4 = [(SCWAsyncSerialQueue *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialOperationQueue = v4->_serialOperationQueue;
    v4->_serialOperationQueue = v5;

    [(NSOperationQueue *)v4->_serialOperationQueue setName:@"SCWAsyncSerialQueue.operationQueue"];
    [(NSOperationQueue *)v4->_serialOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v4->_serialOperationQueue setQualityOfService:service];
  }

  return v4;
}

- (void)enqueueBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    v6 = [[SCWAsyncBlockOperation alloc] initWithBlock:blockCopy];

    serialOperationQueue = [(SCWAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue addOperation:v6];
  }
}

- (void)waitUntilEmpty
{
  serialOperationQueue = [(SCWAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue waitUntilAllOperationsAreFinished];
}

- (BOOL)isSuspended
{
  serialOperationQueue = [(SCWAsyncSerialQueue *)self serialOperationQueue];
  isSuspended = [serialOperationQueue isSuspended];

  return isSuspended;
}

@end