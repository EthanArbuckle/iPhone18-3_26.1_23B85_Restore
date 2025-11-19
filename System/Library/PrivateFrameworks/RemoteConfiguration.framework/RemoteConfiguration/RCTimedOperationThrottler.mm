@interface RCTimedOperationThrottler
- (BOOL)suspended;
- (RCOperationThrottlerDelegate)delegate;
- (RCTimedOperationThrottler)init;
- (RCTimedOperationThrottler)initWithDelegate:(id)a3;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
- (void)tickle;
- (void)tickleWithCompletion:(id)a3;
@end

@implementation RCTimedOperationThrottler

- (RCTimedOperationThrottler)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[RCTimedOperationThrottler init]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOperationThrottler.m";
    v12 = 1024;
    v13 = 189;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[RCTimedOperationThrottler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (RCTimedOperationThrottler)initWithDelegate:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCTimedOperationThrottler initWithDelegate:];
  }

  v10.receiver = self;
  v10.super_class = RCTimedOperationThrottler;
  v5 = [(RCTimedOperationThrottler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [[RCOperationThrottler alloc] initWithDelegate:v6];
    operationThrottler = v6->_operationThrottler;
    v6->_operationThrottler = v7;
  }

  return v6;
}

- (void)tickle
{
  v2 = [(RCTimedOperationThrottler *)self operationThrottler];
  [v2 tickle];
}

- (void)tickleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RCTimedOperationThrottler *)self operationThrottler];
  [v5 tickleWithCompletion:v4];
}

- (BOOL)suspended
{
  v2 = [(RCTimedOperationThrottler *)self operationThrottler];
  v3 = [v2 suspended];

  return v3;
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v5 = a4;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __84__RCTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v12 = &unk_27822F1A8;
  v13 = self;
  v6 = v5;
  v14 = v6;
  v7 = _Block_copy(&v9);
  v8 = [(RCTimedOperationThrottler *)self delegate:v9];
  if (objc_opt_respondsToSelector())
  {
    [v8 operationThrottlerPerformOperation:self];
LABEL_5:
    v7[2](v7);
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  [v8 operationThrottler:self performAsyncOperationWithCompletion:v7];
LABEL_6:
}

void __84__RCTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cooldownTime];
  v3 = dispatch_time(0, (v2 * 1000000000.0));
  v4 = RCDispatchQueueForQualityOfService(9);
  dispatch_after(v3, v4, *(a1 + 40));
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
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "delegate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end