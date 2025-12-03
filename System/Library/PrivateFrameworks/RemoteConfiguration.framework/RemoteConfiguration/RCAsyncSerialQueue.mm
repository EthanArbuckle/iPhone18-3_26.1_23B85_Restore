@interface RCAsyncSerialQueue
- (BOOL)suspended;
- (RCAsyncSerialQueue)initWithQualityOfService:(int64_t)service;
- (void)cancelAllBlocks;
- (void)enqueueBlock:(id)block;
- (void)enqueueBlockForMainThread:(id)thread;
- (void)enqueueOperation:(id)operation;
- (void)withQualityOfService:(int64_t)service enqueueBlockForMainThread:(id)thread;
@end

@implementation RCAsyncSerialQueue

- (RCAsyncSerialQueue)initWithQualityOfService:(int64_t)service
{
  v8.receiver = self;
  v8.super_class = RCAsyncSerialQueue;
  v4 = [(RCAsyncSerialQueue *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    serialOperationQueue = v4->_serialOperationQueue;
    v4->_serialOperationQueue = v5;

    [(NSOperationQueue *)v4->_serialOperationQueue setQualityOfService:service];
    [(NSOperationQueue *)v4->_serialOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v4;
}

- (void)enqueueBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    serialOperationQueue = [(RCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue rc_addAsyncOperationWithBlock:blockCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCAsyncSerialQueue enqueueBlock:];
  }
}

- (void)enqueueBlockForMainThread:(id)thread
{
  threadCopy = thread;
  v5 = threadCopy;
  if (threadCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__RCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke;
    v6[3] = &unk_27822FB38;
    v7 = threadCopy;
    [(RCAsyncSerialQueue *)self enqueueBlock:v6];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCAsyncSerialQueue enqueueBlockForMainThread:];
  }
}

void __48__RCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__RCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke_2;
  v5[3] = &unk_27822F7A0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)withQualityOfService:(int64_t)service enqueueBlockForMainThread:(id)thread
{
  threadCopy = thread;
  if (threadCopy)
  {
    v7 = [RCAsyncBlockOperation asyncBlockOperationWithMainThreadBlock:threadCopy];
    [v7 setQualityOfService:service];
    serialOperationQueue = [(RCAsyncSerialQueue *)self serialOperationQueue];
    [serialOperationQueue addOperation:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCAsyncSerialQueue withQualityOfService:enqueueBlockForMainThread:];
  }
}

- (void)enqueueOperation:(id)operation
{
  operationCopy = operation;
  serialOperationQueue = [(RCAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue addOperation:operationCopy];
}

- (void)cancelAllBlocks
{
  serialOperationQueue = [(RCAsyncSerialQueue *)self serialOperationQueue];
  [serialOperationQueue cancelAllOperations];
}

- (BOOL)suspended
{
  serialOperationQueue = [(RCAsyncSerialQueue *)self serialOperationQueue];
  isSuspended = [serialOperationQueue isSuspended];

  return isSuspended;
}

- (void)enqueueBlock:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enqueueBlockForMainThread:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)withQualityOfService:enqueueBlockForMainThread:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end