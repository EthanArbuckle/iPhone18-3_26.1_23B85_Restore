@interface _UIFocusUpdateThrottle
- (_UIFocusUpdateThrottle)initWithUpdateHandler:(id)handler;
- (void)_performScheduledUpdate;
- (void)didCreateProgrammaticFocusUpdateContext:(id)context;
- (void)reset;
- (void)scheduleProgrammaticFocusUpdate;
- (void)teardown;
@end

@implementation _UIFocusUpdateThrottle

- (_UIFocusUpdateThrottle)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateThrottle.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"updateHandler"}];
  }

  v12.receiver = self;
  v12.super_class = _UIFocusUpdateThrottle;
  v6 = [(_UIFocusUpdateThrottle *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_currentTimeout = 0.0166666667;
    v8 = _Block_copy(handlerCopy);
    updateHandler = v7->_updateHandler;
    v7->_updateHandler = v8;
  }

  return v7;
}

- (void)teardown
{
  WeakRetained = objc_loadWeakRetained(&self->_updateTimer);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_updateTimer);
    [v4 invalidate];

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34___UIFocusUpdateThrottle_teardown__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIApp _performBlockAfterCATransactionCommits:v5];
  }
}

- (void)scheduleProgrammaticFocusUpdate
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_updateIsScheduled)
  {
    self->_updateIsScheduled = 1;
    lastUpdate = self->_lastUpdate;
    currentTimeout = self->_currentTimeout;
    Current = CFAbsoluteTimeGetCurrent();
    if (self->_nilUpdateCount && (v6 = lastUpdate + currentTimeout - Current, v6 >= 0.0166666667))
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &scheduleProgrammaticFocusUpdate___s_category);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v13 = v6;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Delaying focus update for %.2g seconds due to too many failed focus updates.", buf, 0xCu);
        }
      }

      v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__performScheduledUpdate selector:0 userInfo:0 repeats:v6];
      objc_storeWeak(&self->_updateTimer, v8);

      WeakRetained = objc_loadWeakRetained(&self->_updateTimer);
      [WeakRetained setTolerance:0.0166666667];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __57___UIFocusUpdateThrottle_scheduleProgrammaticFocusUpdate__block_invoke;
      v11[3] = &unk_1E70F3590;
      v11[4] = self;
      [UIApp _performBlockAfterCATransactionCommits:v11];
    }
  }
}

- (void)didCreateProgrammaticFocusUpdateContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  self->_lastUpdate = CFAbsoluteTimeGetCurrent();
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem)
  {
    self->_nilUpdateCount = 0;
    self->_currentTimeout = 0.0166666667;
  }

  else
  {
    ++self->_nilUpdateCount;
    currentTimeout = self->_currentTimeout;
    if (currentTimeout < 1.0)
    {
      self->_currentTimeout = fmin(currentTimeout * 1.3, 1.0);
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &didCreateProgrammaticFocusUpdateContext____s_category);
      if (*CategoryCachedImpl)
      {
        v8 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = self->_currentTimeout;
          nilUpdateCount = self->_nilUpdateCount;
          v11 = 134218240;
          v12 = v9;
          v13 = 2048;
          v14 = nilUpdateCount;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Encountered a programmatic focus update to a nil environment. Increasing cooldown period for programmatic focus updates to %.2g due to %lu failed focus updates.", &v11, 0x16u);
        }
      }
    }
  }
}

- (void)_performScheduledUpdate
{
  if (self->_updateIsScheduled)
  {
    self->_updateIsScheduled = 0;
    WeakRetained = objc_loadWeakRetained(&self->_updateTimer);
    [WeakRetained invalidate];

    v5 = *(self->_updateHandler + 2);

    v5();
  }
}

- (void)reset
{
  self->_nilUpdateCount = 0;
  self->_currentTimeout = 0.0166666667;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31___UIFocusUpdateThrottle_reset__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v2];
}

@end