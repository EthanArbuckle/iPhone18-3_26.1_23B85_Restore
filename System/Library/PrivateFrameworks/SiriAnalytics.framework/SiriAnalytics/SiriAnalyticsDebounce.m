@interface SiriAnalyticsDebounce
- (SiriAnalyticsDebounce)initWithDebounceInterval:(double)a3 maximumInterval:(double)a4 queue:(id)a5 delegate:(id)a6;
- (SiriAnalyticsDebounce)initWithDebounceInterval:(double)a3 queue:(id)a4 delegate:(id)a5;
- (void)_debounceFired;
- (void)_pulse;
- (void)_reset;
- (void)_timedOut;
- (void)cancel;
- (void)pulse;
@end

@implementation SiriAnalyticsDebounce

- (void)_pulse
{
  objc_initWeak(&location, self);
  debounceInterval = self->_debounceInterval;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __31__SiriAnalyticsDebounce__pulse__block_invoke;
  v13[3] = &unk_1E8587940;
  objc_copyWeak(&v14, &location);
  v5 = SiriAnalyticsCreateFireOnceTimer(queue, v13, debounceInterval);
  debounceTimer = self->_debounceTimer;
  self->_debounceTimer = v5;

  dispatch_resume(self->_debounceTimer);
  if (self->_hasMaximumInterval && !self->_maximumTimer)
  {
    maximumInterval = self->_maximumInterval;
    v8 = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __31__SiriAnalyticsDebounce__pulse__block_invoke_2;
    v11[3] = &unk_1E8587940;
    objc_copyWeak(&v12, &location);
    v9 = SiriAnalyticsCreateFireOnceTimer(v8, v11, maximumInterval);
    maximumTimer = self->_maximumTimer;
    self->_maximumTimer = v9;

    dispatch_resume(self->_maximumTimer);
    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __31__SiriAnalyticsDebounce__pulse__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timedOut];
}

- (void)_timedOut
{
  v8 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[SiriAnalyticsDebounce _timedOut]";
    _os_log_debug_impl(&dword_1D9863000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  [(SiriAnalyticsDebounce *)self _reset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained debounceFired:self maximumReached:1];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_reset
{
  v11 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[SiriAnalyticsDebounce _reset]";
    _os_log_debug_impl(&dword_1D9863000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v9, 0xCu);
  }

  debounceTimer = self->_debounceTimer;
  if (debounceTimer)
  {
    dispatch_source_cancel(debounceTimer);
    v5 = self->_debounceTimer;
    self->_debounceTimer = 0;
  }

  maximumTimer = self->_maximumTimer;
  if (maximumTimer)
  {
    dispatch_source_cancel(maximumTimer);
    v7 = self->_maximumTimer;
    self->_maximumTimer = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __31__SiriAnalyticsDebounce__pulse__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _debounceFired];
}

- (void)_debounceFired
{
  v8 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[SiriAnalyticsDebounce _debounceFired]";
    _os_log_debug_impl(&dword_1D9863000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  [(SiriAnalyticsDebounce *)self _reset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained debounceFired:self maximumReached:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)pulse
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SiriAnalyticsDebounce_pulse__block_invoke;
  block[3] = &unk_1E8587918;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SiriAnalyticsDebounce_cancel__block_invoke;
  block[3] = &unk_1E8587918;
  block[4] = self;
  dispatch_async(queue, block);
}

- (SiriAnalyticsDebounce)initWithDebounceInterval:(double)a3 maximumInterval:(double)a4 queue:(id)a5 delegate:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SiriAnalyticsDebounce;
  v13 = [(SiriAnalyticsDebounce *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, a5);
    v14->_debounceInterval = a3;
    v14->_maximumInterval = a4;
    v14->_hasMaximumInterval = 1;
    objc_storeWeak(&v14->_delegate, v12);
  }

  return v14;
}

- (SiriAnalyticsDebounce)initWithDebounceInterval:(double)a3 queue:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SiriAnalyticsDebounce;
  v11 = [(SiriAnalyticsDebounce *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, a4);
    v12->_debounceInterval = a3;
    objc_storeWeak(&v12->_delegate, v10);
  }

  return v12;
}

@end