@interface RMDebounceTimer
+ (id)debounceTimerWithMinimumInterval:(double)interval maximumInterval:(double)maximumInterval delegate:(id)delegate identifier:(id)identifier;
- (RMDebounceTimer)initWithMinimumInterval:(double)interval maximumInterval:(double)maximumInterval delegate:(id)delegate identifier:(id)identifier;
- (RMDebounceTimerDelegate)delegate;
- (void)_timerDidFire;
- (void)dealloc;
- (void)trigger;
@end

@implementation RMDebounceTimer

+ (id)debounceTimerWithMinimumInterval:(double)interval maximumInterval:(double)maximumInterval delegate:(id)delegate identifier:(id)identifier
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v11 = [[RMDebounceTimer alloc] initWithMinimumInterval:delegateCopy maximumInterval:identifierCopy delegate:interval identifier:maximumInterval];

  return v11;
}

- (RMDebounceTimer)initWithMinimumInterval:(double)interval maximumInterval:(double)maximumInterval delegate:(id)delegate identifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = RMDebounceTimer;
  v12 = [(RMDebounceTimer *)&v16 init];
  if (v12)
  {
    v13 = objc_opt_new();
    lock = v12->_lock;
    v12->_lock = v13;

    v12->_minimumInterval = interval;
    v12->_maximumInterval = maximumInterval;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_identifier, identifier);
  }

  return v12;
}

- (void)dealloc
{
  minimumTimer = [(RMDebounceTimer *)self minimumTimer];

  if (minimumTimer)
  {
    minimumTimer2 = [(RMDebounceTimer *)self minimumTimer];
    [minimumTimer2 cancel];

    [(RMDebounceTimer *)self setMinimumTimer:0];
  }

  maximumTimer = [(RMDebounceTimer *)self maximumTimer];

  if (maximumTimer)
  {
    maximumTimer2 = [(RMDebounceTimer *)self maximumTimer];
    [maximumTimer2 cancel];

    [(RMDebounceTimer *)self setMaximumTimer:0];
  }

  v7.receiver = self;
  v7.super_class = RMDebounceTimer;
  [(RMDebounceTimer *)&v7 dealloc];
}

- (void)trigger
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[RMLog debounceTimer];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    identifier = [(RMDebounceTimer *)self identifier];
    v5 = identifier;
    v6 = @"unknown";
    if (identifier)
    {
      v6 = identifier;
    }

    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_1E1168000, v3, OS_LOG_TYPE_INFO, "Debounce triggered for %{public}@", buf, 0xCu);
  }

  v7 = self->_lock;
  objc_sync_enter(v7);
  minimumTimer = [(RMDebounceTimer *)self minimumTimer];
  v9 = minimumTimer == 0;

  if (!v9)
  {
    v10 = +[RMLog debounceTimer];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(RMDebounceTimer *)v10 trigger:v11];
    }

    minimumTimer2 = [(RMDebounceTimer *)self minimumTimer];
    [minimumTimer2 cancel];

    [(RMDebounceTimer *)self setMinimumTimer:0];
  }

  [(RMDebounceTimer *)self minimumInterval];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __26__RMDebounceTimer_trigger__block_invoke;
  v24[3] = &unk_1E8706038;
  v24[4] = self;
  v19 = [RMTimedDispatch timedDispatchAfterInterval:v24 completionBlock:?];
  [(RMDebounceTimer *)self setMinimumTimer:v19];

  maximumTimer = [(RMDebounceTimer *)self maximumTimer];
  LODWORD(v19) = maximumTimer == 0;

  if (v19)
  {
    [(RMDebounceTimer *)self maximumInterval];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __26__RMDebounceTimer_trigger__block_invoke_11;
    v23[3] = &unk_1E8706038;
    v23[4] = self;
    v21 = [RMTimedDispatch timedDispatchAfterInterval:v23 completionBlock:?];
    [(RMDebounceTimer *)self setMaximumTimer:v21];
  }

  objc_sync_exit(v7);

  v22 = *MEMORY[0x1E69E9840];
}

void __26__RMDebounceTimer_trigger__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) minimumTimer];

  if (v3)
  {
    v4 = +[RMLog debounceTimer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) minimumTimer];
      v6 = [v5 timerID];
      __26__RMDebounceTimer_trigger__block_invoke_cold_1(v6, v18, v4, v5);
    }

    v7 = [*(a1 + 32) minimumTimer];
    v8 = [v7 timerID];
    [*(a1 + 32) setLastTimerID:v8];

    [*(a1 + 32) _timerDidFire];
  }

  else
  {
    v9 = +[RMLog debounceTimer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __26__RMDebounceTimer_trigger__block_invoke_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  objc_sync_exit(v2);

  v17 = *MEMORY[0x1E69E9840];
}

void __26__RMDebounceTimer_trigger__block_invoke_11(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) maximumTimer];

  if (v3)
  {
    v4 = +[RMLog debounceTimer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) maximumTimer];
      v6 = [v5 timerID];
      __26__RMDebounceTimer_trigger__block_invoke_11_cold_1(v6, v18, v4, v5);
    }

    v7 = [*(a1 + 32) maximumTimer];
    v8 = [v7 timerID];
    [*(a1 + 32) setLastTimerID:v8];

    [*(a1 + 32) _timerDidFire];
  }

  else
  {
    v9 = +[RMLog debounceTimer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __26__RMDebounceTimer_trigger__block_invoke_11_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  objc_sync_exit(v2);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_timerDidFire
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[RMLog debounceTimer];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    identifier = [(RMDebounceTimer *)self identifier];
    v5 = identifier;
    v6 = @"unknown";
    if (identifier)
    {
      v6 = identifier;
    }

    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_1E1168000, v3, OS_LOG_TYPE_INFO, "Debounce fired for %{public}@", &v11, 0xCu);
  }

  minimumTimer = [(RMDebounceTimer *)self minimumTimer];
  [minimumTimer cancel];

  [(RMDebounceTimer *)self setMinimumTimer:0];
  maximumTimer = [(RMDebounceTimer *)self maximumTimer];
  [maximumTimer cancel];

  [(RMDebounceTimer *)self setMaximumTimer:0];
  delegate = [(RMDebounceTimer *)self delegate];
  [delegate triggerAggregatingTimerAction];

  v10 = *MEMORY[0x1E69E9840];
}

- (RMDebounceTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __26__RMDebounceTimer_trigger__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1E1168000, log, OS_LOG_TYPE_DEBUG, "Debounce execute minimum timer: %{public}@", buf, 0xCu);
}

void __26__RMDebounceTimer_trigger__block_invoke_11_cold_1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1E1168000, log, OS_LOG_TYPE_DEBUG, "Debounce execute maximum timer: %{public}@", buf, 0xCu);
}

@end