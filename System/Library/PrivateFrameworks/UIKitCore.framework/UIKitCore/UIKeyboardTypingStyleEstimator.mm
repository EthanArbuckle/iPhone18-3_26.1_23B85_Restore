@interface UIKeyboardTypingStyleEstimator
- (UIKeyboardTypingStyleEstimatorDelegate)delegate;
- (void)_setTypingStyleEstimation:(unint64_t)a3;
- (void)beganContinuousPath;
- (void)cancelContinuousPath;
- (void)endedContinuousPath;
@end

@implementation UIKeyboardTypingStyleEstimator

- (void)_setTypingStyleEstimation:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_currentTypingStyle != a3)
  {
    self->_currentTypingStyle = a3;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("TypingStyleDebug", &_setTypingStyleEstimation____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        if (a3 - 1 > 2)
        {
          v10 = @"(None)";
        }

        else
        {
          v10 = off_1E71196B8[a3 - 1];
        }

        v12 = 138412290;
        v13 = v10;
        v11 = v9;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "TypingStyle: guessing %@", &v12, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 typingStyleEstimator:self didChangeTypingStyleEstimate:a3];
    }
  }
}

- (void)beganContinuousPath
{
  [(NSTimer *)self->_tapTypingFlipTimer invalidate];
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastContinuousPathEvent < 1.0)
  {
    [(UIKeyboardTypingStyleEstimator *)self _setTypingStyleEstimation:3];
  }

  self->_lastContinuousPathEvent = Current;
}

- (void)endedContinuousPath
{
  [(UIKeyboardTypingStyleEstimator *)self _setTypingStyleEstimation:3];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UIKeyboardTypingStyleEstimator_endedContinuousPath__block_invoke;
  v6[3] = &unk_1E7119698;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:1.0];
  tapTypingFlipTimer = self->_tapTypingFlipTimer;
  self->_tapTypingFlipTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__UIKeyboardTypingStyleEstimator_endedContinuousPath__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentTypingStyleEstimation];

  if (v3 != 1)
  {
    v4 = *(a1 + 32);

    [v4 _setTypingStyleEstimation:2];
  }
}

- (void)cancelContinuousPath
{
  [(UIKeyboardTypingStyleEstimator *)self _setTypingStyleEstimation:1];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UIKeyboardTypingStyleEstimator_cancelContinuousPath__block_invoke;
  v5[3] = &unk_1E7106478;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:1.0];
  tapTypingFlipTimer = self->_tapTypingFlipTimer;
  self->_tapTypingFlipTimer = v3;

  objc_destroyWeak(&location);
}

- (UIKeyboardTypingStyleEstimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end