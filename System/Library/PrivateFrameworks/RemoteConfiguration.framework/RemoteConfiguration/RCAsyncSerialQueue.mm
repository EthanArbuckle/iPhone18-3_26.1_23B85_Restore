@interface RCAsyncSerialQueue
- (BOOL)suspended;
- (RCAsyncSerialQueue)initWithQualityOfService:(int64_t)a3;
- (void)cancelAllBlocks;
- (void)enqueueBlock:(id)a3;
- (void)enqueueBlockForMainThread:(id)a3;
- (void)enqueueOperation:(id)a3;
- (void)withQualityOfService:(int64_t)a3 enqueueBlockForMainThread:(id)a4;
@end

@implementation RCAsyncSerialQueue

- (RCAsyncSerialQueue)initWithQualityOfService:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = RCAsyncSerialQueue;
  v4 = [(RCAsyncSerialQueue *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    serialOperationQueue = v4->_serialOperationQueue;
    v4->_serialOperationQueue = v5;

    [(NSOperationQueue *)v4->_serialOperationQueue setQualityOfService:a3];
    [(NSOperationQueue *)v4->_serialOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v4;
}

- (void)enqueueBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RCAsyncSerialQueue *)self serialOperationQueue];
    [v5 rc_addAsyncOperationWithBlock:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCAsyncSerialQueue enqueueBlock:];
  }
}

- (void)enqueueBlockForMainThread:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__RCAsyncSerialQueue_enqueueBlockForMainThread___block_invoke;
    v6[3] = &unk_27822FB38;
    v7 = v4;
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

- (void)withQualityOfService:(int64_t)a3 enqueueBlockForMainThread:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [RCAsyncBlockOperation asyncBlockOperationWithMainThreadBlock:v6];
    [v7 setQualityOfService:a3];
    v8 = [(RCAsyncSerialQueue *)self serialOperationQueue];
    [v8 addOperation:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCAsyncSerialQueue withQualityOfService:enqueueBlockForMainThread:];
  }
}

- (void)enqueueOperation:(id)a3
{
  v4 = a3;
  v5 = [(RCAsyncSerialQueue *)self serialOperationQueue];
  [v5 addOperation:v4];
}

- (void)cancelAllBlocks
{
  v2 = [(RCAsyncSerialQueue *)self serialOperationQueue];
  [v2 cancelAllOperations];
}

- (BOOL)suspended
{
  v2 = [(RCAsyncSerialQueue *)self serialOperationQueue];
  v3 = [v2 isSuspended];

  return v3;
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