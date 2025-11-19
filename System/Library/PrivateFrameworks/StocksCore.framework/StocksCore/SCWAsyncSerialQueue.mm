@interface SCWAsyncSerialQueue
- (BOOL)isSuspended;
- (SCWAsyncSerialQueue)initWithQualityOfService:(int64_t)a3;
- (void)enqueueBlock:(id)a3;
- (void)waitUntilEmpty;
@end

@implementation SCWAsyncSerialQueue

- (SCWAsyncSerialQueue)initWithQualityOfService:(int64_t)a3
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
    [(NSOperationQueue *)v4->_serialOperationQueue setQualityOfService:a3];
  }

  return v4;
}

- (void)enqueueBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [[SCWAsyncBlockOperation alloc] initWithBlock:v4];

    v5 = [(SCWAsyncSerialQueue *)self serialOperationQueue];
    [v5 addOperation:v6];
  }
}

- (void)waitUntilEmpty
{
  v2 = [(SCWAsyncSerialQueue *)self serialOperationQueue];
  [v2 waitUntilAllOperationsAreFinished];
}

- (BOOL)isSuspended
{
  v2 = [(SCWAsyncSerialQueue *)self serialOperationQueue];
  v3 = [v2 isSuspended];

  return v3;
}

@end