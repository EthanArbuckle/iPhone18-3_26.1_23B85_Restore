@interface PAAggregateVisibilityStateMonitorHandle
- (PAAggregateVisibilityStateMonitorHandle)initWithStartupInterval:(double)interval onQueue:(id)queue delegate:(id)delegate;
- (void)bindToRawHandle:(id)handle;
- (void)invalidate;
- (void)recomputeCurrentState;
- (void)setVisibilityState:(int64_t)state forBundleID:(id)d;
- (void)startupIntervalExpired;
@end

@implementation PAAggregateVisibilityStateMonitorHandle

- (PAAggregateVisibilityStateMonitorHandle)initWithStartupInterval:(double)interval onQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = PAAggregateVisibilityStateMonitorHandle;
  v11 = [(PAAggregateVisibilityStateMonitorHandle *)&v24 init];
  if (v11)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    states = v11->_states;
    v11->_states = dictionary;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_queue, queue);
    v11->_currentState = 0;
    if (interval <= 0.0)
    {
      v11->_startupPeriodElapsed = 1;
    }

    else
    {
      objc_initWeak(&location, v11);
      v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11->_queue);
      startupTimer = v11->_startupTimer;
      v11->_startupTimer = v14;

      v16 = v11->_startupTimer;
      v17 = dispatch_time(0, (interval * 1000000000.0));
      dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, (interval * 1000000000.0) >> 2);
      v18 = v11->_startupTimer;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __84__PAAggregateVisibilityStateMonitorHandle_initWithStartupInterval_onQueue_delegate___block_invoke;
      v21[3] = &unk_1E86ABD58;
      objc_copyWeak(&v22, &location);
      dispatch_source_set_event_handler(v18, v21);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    v19 = v11;
  }

  return v11;
}

void __84__PAAggregateVisibilityStateMonitorHandle_initWithStartupInterval_onQueue_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startupIntervalExpired];
}

- (void)bindToRawHandle:(id)handle
{
  handleCopy = handle;
  objc_storeStrong(&self->_rawHandle, handle);
  startupTimer = self->_startupTimer;
  if (startupTimer)
  {
    dispatch_activate(startupTimer);
  }
}

- (void)startupIntervalExpired
{
  dispatch_assert_queue_V2(self->_queue);
  dispatch_source_cancel(self->_startupTimer);
  startupTimer = self->_startupTimer;
  self->_startupTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setVisibilityState:self->_currentState];

  self->_startupPeriodElapsed = 1;

  [(PAAggregateVisibilityStateMonitorHandle *)self recomputeCurrentState];
}

- (void)setVisibilityState:(int64_t)state forBundleID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(NSMutableDictionary *)self->_states setObject:v8 forKeyedSubscript:dCopy];

  [(PAAggregateVisibilityStateMonitorHandle *)self recomputeCurrentState];
}

- (void)recomputeCurrentState
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentState = self->_currentState;
  v4 = self->_states;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMutableDictionary *)self->_states objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i), v14];
        integerValue = [v10 integerValue];
        if (integerValue > v7)
        {
          v7 = integerValue;
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (self->_startupPeriodElapsed)
  {
    self->_currentState = v7;
    if (currentState != v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained setVisibilityState:v7];
    }
  }

  else if (v7 > currentState)
  {
    self->_currentState = v7;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  startupTimer = self->_startupTimer;
  if (startupTimer)
  {
    dispatch_source_cancel(startupTimer);
    v4 = self->_startupTimer;
    self->_startupTimer = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  states = self->_states;
  self->_states = 0;

  [(PAProcessStateMonitoringEnding *)self->_rawHandle invalidate];
  rawHandle = self->_rawHandle;
  self->_rawHandle = 0;
}

@end