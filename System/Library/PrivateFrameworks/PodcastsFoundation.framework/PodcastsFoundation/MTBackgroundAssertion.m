@interface MTBackgroundAssertion
- (id)description;
- (void)_cancelInvalidationTimer;
- (void)_createScheduledTimerWithInterval:(double)a3;
- (void)_invalidate;
- (void)_invalidationTimerFired;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateAfterDelay:(double)a3;
@end

@implementation MTBackgroundAssertion

void __51__MTBackgroundAssertion_initWithName_flags_reason___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "Assertion with name %@ was invalidated.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MTBackgroundAssertion *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MTBackgroundAssertion;
  [(MTBackgroundAssertion *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p assertion: %@>", v5, self, self->_assertion];

  return v6;
}

- (void)invalidate
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MTBackgroundAssertion_invalidate__block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)invalidateAfterDelay:(double)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MTBackgroundAssertion_invalidateAfterDelay___block_invoke;
  v4[3] = &unk_1E856B590;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(serialQueue, v4);
}

uint64_t __46__MTBackgroundAssertion_invalidateAfterDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelInvalidationTimer];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _createScheduledTimerWithInterval:v3];
}

- (void)_invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating %@", &v5, 0xCu);
  }

  [(MTBackgroundAssertion *)self _cancelInvalidationTimer];
  [(BKSProcessAssertion *)self->_assertion invalidate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_invalidationTimerFired
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Assertion %@ just timed out, force invalidating.", &v5, 0xCu);
  }

  [(MTBackgroundAssertion *)self invalidate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_cancelInvalidationTimer
{
  [(NSTimer *)self->_invalidationTimer invalidate];
  invalidationTimer = self->_invalidationTimer;
  self->_invalidationTimer = 0;
}

- (void)_createScheduledTimerWithInterval:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = _MTLogCategoryBackgroundFetching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Assertion %@ timer set %f", &v10, 0x16u);
  }

  v6 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__invalidationTimerFired selector:0 userInfo:0 repeats:a3];
  invalidationTimer = self->_invalidationTimer;
  self->_invalidationTimer = v6;

  v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v8 addTimer:self->_invalidationTimer forMode:*MEMORY[0x1E695D918]];

  v9 = *MEMORY[0x1E69E9840];
}

@end