@interface VUIDelayOperation
+ (id)delayOperationWithDelay:(double)delay;
+ (id)delayOperationWithFireDate:(id)date;
- (VUIDelayOperation)init;
- (VUIDelayOperation)initWithDelay:(double)delay tolerance:(double)tolerance;
- (VUIDelayOperation)initWithFireDate:(id)date tolerance:(double)tolerance;
- (void)_cancelTimer;
- (void)cancel;
- (void)dealloc;
- (void)executionDidBegin;
@end

@implementation VUIDelayOperation

+ (id)delayOperationWithDelay:(double)delay
{
  v3 = [[VUIDelayOperation alloc] initWithDelay:delay tolerance:delay / 10.0];

  return v3;
}

+ (id)delayOperationWithFireDate:(id)date
{
  dateCopy = date;
  v4 = [[VUIDelayOperation alloc] initWithFireDate:dateCopy tolerance:0.0];

  [(VUIDelayOperation *)v4 setShouldIgnoreTolerance:1];

  return v4;
}

- (VUIDelayOperation)initWithDelay:(double)delay tolerance:(double)tolerance
{
  if (delay <= 0.0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The delay argument must be greater than zero."];
  }

  v8.receiver = self;
  v8.super_class = VUIDelayOperation;
  result = [(VUIDelayOperation *)&v8 init];
  if (result)
  {
    result->_delay = delay;
    result->_tolerance = tolerance;
  }

  return result;
}

- (VUIDelayOperation)initWithFireDate:(id)date tolerance:(double)tolerance
{
  dateCopy = date;
  if (!dateCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The %@ parameter must not be nil.", @"fireDate"}];
  }

  v11.receiver = self;
  v11.super_class = VUIDelayOperation;
  v7 = [(VUIDelayOperation *)&v11 init];
  if (v7)
  {
    v8 = [dateCopy copy];
    fireDate = v7->_fireDate;
    v7->_fireDate = v8;

    v7->_tolerance = tolerance;
  }

  return v7;
}

- (VUIDelayOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)dealloc
{
  [(VUIDelayOperation *)self _cancelTimer];
  v3.receiver = self;
  v3.super_class = VUIDelayOperation;
  [(VUIDelayOperation *)&v3 dealloc];
}

- (void)_cancelTimer
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
  }
}

- (void)executionDidBegin
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.VUIDelayOperation.%p", self];
  v4 = dispatch_queue_create([v3 UTF8String], 0);
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __38__VUIDelayOperation_executionDidBegin__block_invoke;
  handler[3] = &unk_279E217C0;
  objc_copyWeak(&v18, &location);
  dispatch_source_set_event_handler(v5, handler);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__VUIDelayOperation_executionDidBegin__block_invoke_18;
  v15[3] = &unk_279E217C0;
  objc_copyWeak(&v16, &location);
  dispatch_source_set_cancel_handler(v5, v15);
  [(VUIDelayOperation *)self delay];
  v7 = v6;
  [(VUIDelayOperation *)self tolerance];
  v9 = v8;
  fireDate = [(VUIDelayOperation *)self fireDate];
  v11 = fireDate;
  if (fireDate)
  {
    [fireDate timeIntervalSinceNow];
    v7 = v12;
    if ([(VUIDelayOperation *)self shouldIgnoreTolerance])
    {
      v9 = v7 / 10.0;
    }
  }

  if (v7 <= 9223372040.0)
  {
    v13 = dispatch_time(0, (v7 * 1000000000.0));
  }

  else
  {
    v13 = -1;
  }

  dispatch_source_set_timer(v5, v13, 0xFFFFFFFFFFFFFFFFLL, (v9 * 1000000000.0));
  v14 = VUICDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_270E6E000, v14, OS_LOG_TYPE_DEFAULT, "Delay operation timer will begin %@", buf, 0xCu);
  }

  dispatch_resume(v5);
  objc_storeStrong(&self->_timerSource, v5);
  if ([(VUIDelayOperation *)self isCancelled])
  {
    [(VUIDelayOperation *)self _cancelTimer];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __38__VUIDelayOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = VUICDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = WeakRetained;
      _os_log_impl(&dword_270E6E000, v2, OS_LOG_TYPE_DEFAULT, "Delay operation timer did fire %@", &v3, 0xCu);
    }

    [WeakRetained finishExecutionIfPossible];
  }
}

void __38__VUIDelayOperation_executionDidBegin__block_invoke_18(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = VUICDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = WeakRetained;
      _os_log_impl(&dword_270E6E000, v2, OS_LOG_TYPE_DEFAULT, "Delay operation timer cancelled %@", &v3, 0xCu);
    }

    [WeakRetained finishExecutionIfPossible];
  }
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = VUIDelayOperation;
  [(VUIDelayOperation *)&v3 cancel];
  [(VUIDelayOperation *)self _cancelTimer];
}

@end