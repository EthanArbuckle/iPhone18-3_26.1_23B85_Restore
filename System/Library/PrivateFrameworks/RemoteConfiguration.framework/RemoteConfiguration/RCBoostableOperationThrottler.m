@interface RCBoostableOperationThrottler
- (BOOL)suspended;
- (RCBoostableOperationThrottler)init;
- (RCBoostableOperationThrottler)initWithDelegate:(id)a3;
- (RCOperationThrottlerDelegate)delegate;
- (void)setSuspended:(BOOL)a3;
- (void)suspended;
- (void)tickleWithQualityOfService:(int64_t)a3 completion:(id)a4;
@end

@implementation RCBoostableOperationThrottler

- (RCBoostableOperationThrottler)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[RCBoostableOperationThrottler init]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOperationThrottler.m";
    v12 = 1024;
    v13 = 268;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[RCBoostableOperationThrottler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (RCBoostableOperationThrottler)initWithDelegate:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCBoostableOperationThrottler initWithDelegate:];
  }

  v13.receiver = self;
  v13.super_class = RCBoostableOperationThrottler;
  v5 = [(RCBoostableOperationThrottler *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [[RCUnfairLock alloc] initWithOptions:1];
    workPendingLock = v6->_workPendingLock;
    v6->_workPendingLock = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("RCBoostableOperationThrottler.serial", v9);
    serialWorkQueue = v6->_serialWorkQueue;
    v6->_serialWorkQueue = v10;
  }

  return v6;
}

- (void)tickleWithQualityOfService:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(RCBoostableOperationThrottler *)self workPendingLock];
  [v7 lock];

  if ([(RCBoostableOperationThrottler *)self workPending])
  {
    v8 = [(RCBoostableOperationThrottler *)self workPendingLock];
    [v8 unlock];
  }

  else
  {
    [(RCBoostableOperationThrottler *)self setWorkPending:1];
    v9 = [(RCBoostableOperationThrottler *)self workPendingLock];
    [v9 unlock];

    v10 = [(RCBoostableOperationThrottler *)self delegate];
    objc_initWeak(&location, v10);

    v11 = [(RCBoostableOperationThrottler *)self serialWorkQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__RCBoostableOperationThrottler_tickleWithQualityOfService_completion___block_invoke;
    v15[3] = &unk_27822FC00;
    v15[4] = self;
    objc_copyWeak(&v16, &location);
    RCDispatchAsyncWithQualityOfService(v11, a3, v15);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v12 = [(RCBoostableOperationThrottler *)self serialWorkQueue];
  v13 = v12;
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = &__block_literal_global_1;
  }

  RCDispatchAsyncWithQualityOfService(v12, a3, v14);
}

void __71__RCBoostableOperationThrottler_tickleWithQualityOfService_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workPendingLock];
  [v2 lock];

  [*(a1 + 32) setWorkPending:0];
  v3 = [*(a1 + 32) workPendingLock];
  [v3 unlock];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__RCBoostableOperationThrottler_tickleWithQualityOfService_completion___block_invoke_2;
  v5[3] = &unk_27822FBD8;
  v5[4] = *(a1 + 32);
  RCPerformIfNonNil(WeakRetained, v5);
}

void __71__RCBoostableOperationThrottler_tickleWithQualityOfService_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 operationThrottlerPerformOperation:*(a1 + 32)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) serialWorkQueue];
    dispatch_suspend(v4);

    v5 = *(a1 + 32);
    [v3 operationThrottler:? performAsyncOperationWithCompletion:?];
  }
}

void __71__RCBoostableOperationThrottler_tickleWithQualityOfService_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) serialWorkQueue];
  dispatch_resume(v1);
}

- (BOOL)suspended
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCBoostableOperationThrottler suspended];
  }

  return 0;
}

- (void)setSuspended:(BOOL)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCBoostableOperationThrottler setSuspended:];
  }
}

- (RCOperationThrottlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "delegate != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)suspended
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"suspending a boostable operation throttler is not yet supported"];
  v2 = 136315906;
  v3 = "[RCBoostableOperationThrottler suspended]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOperationThrottler.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)setSuspended:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"suspending a boostable operation throttler is not yet supported"];
  v2 = 136315906;
  v3 = "[RCBoostableOperationThrottler setSuspended:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOperationThrottler.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end