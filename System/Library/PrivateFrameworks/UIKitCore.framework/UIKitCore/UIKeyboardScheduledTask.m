@interface UIKeyboardScheduledTask
- (BOOL)isValid;
- (BOOL)repeats;
- (UIKeyboardScheduledTask)initWithTaskQueue:(id)a3 timeInterval:(double)a4 repeats:(BOOL)a5 task:(id)a6 breadcrumb:(id)a7;
- (void)dealloc;
- (void)handleDeferredTimerFiredEvent;
- (void)invalidate;
- (void)resetTimer;
- (void)timerFired:(id)a3;
@end

@implementation UIKeyboardScheduledTask

- (void)handleDeferredTimerFiredEvent
{
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3042000000;
  v11 = __Block_byref_object_copy__135;
  v12 = __Block_byref_object_dispose__135;
  v13 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__UIKeyboardScheduledTask_handleDeferredTimerFiredEvent__block_invoke;
  aBlock[3] = &unk_1E7117618;
  objc_copyWeak(&v7, &location);
  aBlock[4] = &v8;
  v3 = _Block_copy(aBlock);
  objc_storeWeak(v9 + 5, v3);
  [(UIKeyboardScheduledTask *)self setEnqueuedTask:v3];
  v4 = [(UIKeyboardScheduledTask *)self taskQueue];
  v5 = [(UIKeyboardScheduledTask *)self breadcrumb];
  [v4 addTask:v3 breadcrumb:v5];

  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__UIKeyboardScheduledTask_handleDeferredTimerFiredEvent__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained && ([WeakRetained enqueuedTask], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 == v5) && (objc_msgSend(WeakRetained, "task"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "setEnqueuedTask:", 0), v6))
  {
    (v6)[2](v6, v7);
  }

  else
  {
    [v7 returnExecutionToParent];
  }
}

- (void)invalidate
{
  v4 = self;
  v2 = [(UIKeyboardScheduledTask *)v4 timer];
  [v2 invalidate];

  [(UIKeyboardScheduledTask *)v4 setTimer:0];
  v3 = [(UIKeyboardScheduledTask *)v4 deferredAction];
  [v3 invalidate];

  [(UIKeyboardScheduledTask *)v4 setDeferredAction:0];
  [(UIKeyboardScheduledTask *)v4 setEnqueuedTask:0];
}

- (void)dealloc
{
  [(_UIActionWhenIdle *)self->_deferredAction invalidate];
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = UIKeyboardScheduledTask;
  [(UIKeyboardScheduledTask *)&v3 dealloc];
}

- (BOOL)isValid
{
  v3 = [(UIKeyboardScheduledTask *)self timer];
  if ([v3 isValid])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIKeyboardScheduledTask *)self deferredAction];
    if ([v5 isValid])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UIKeyboardScheduledTask *)self enqueuedTask];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (void)resetTimer
{
  if (pthread_main_np() != 1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:860 description:{@"%s may only be called from the main thread.", "-[UIKeyboardScheduledTask resetTimer]"}];
  }

  if ([(UIKeyboardScheduledTask *)self isValid])
  {
    v4 = [(UIKeyboardScheduledTask *)self timer];
    v5 = [v4 isValid];

    if (v5)
    {
      v6 = [(UIKeyboardScheduledTask *)self timer];
      v7 = MEMORY[0x1E695DF00];
      [(UIKeyboardScheduledTask *)self timeInterval];
      v8 = [v7 dateWithTimeIntervalSinceNow:?];
      [v6 setFireDate:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695DFF0];
      [(UIKeyboardScheduledTask *)self timeInterval];
      v6 = [v9 scheduledTimerWithTimeInterval:self target:sel_timerFired_ selector:0 userInfo:-[UIKeyboardScheduledTask repeats](self repeats:{"repeats"), v10}];
      [(UIKeyboardScheduledTask *)self setTimer:v6];
    }

    v11 = [(UIKeyboardScheduledTask *)self deferredAction];
    [v11 invalidate];

    [(UIKeyboardScheduledTask *)self setDeferredAction:0];

    [(UIKeyboardScheduledTask *)self setEnqueuedTask:0];
  }
}

- (UIKeyboardScheduledTask)initWithTaskQueue:(id)a3 timeInterval:(double)a4 repeats:(BOOL)a5 task:(id)a6 breadcrumb:(id)a7
{
  v9 = a5;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = UIKeyboardScheduledTask;
  v16 = [(UIKeyboardScheduledTask *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_timeInterval = a4;
    v18 = [v14 copy];
    task = v17->_task;
    v17->_task = v18;

    objc_storeStrong(&v17->_taskQueue, a3);
    v20 = [v15 copy];
    breadcrumb = v17->_breadcrumb;
    v17->_breadcrumb = v20;

    v22 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v17 target:sel_timerFired_ selector:0 userInfo:v9 repeats:a4];
    [(UIKeyboardScheduledTask *)v17 setTimer:v22];
  }

  return v17;
}

- (BOOL)repeats
{
  v2 = [(UIKeyboardScheduledTask *)self timer];
  [v2 timeInterval];
  v4 = v3 > 0.0;

  return v4;
}

- (void)timerFired:(id)a3
{
  v5 = [(UIKeyboardScheduledTask *)self deferredAction];
  if (([v5 isValid] & 1) == 0)
  {
    v4 = [(UIKeyboardScheduledTask *)self enqueuedTask];

    if (v4)
    {
      return;
    }

    v5 = [_UIActionWhenIdle actionWhenIdleWithTarget:self selector:sel_handleDeferredTimerFiredEvent object:0];
    [(UIKeyboardScheduledTask *)self setDeferredAction:?];
  }
}

@end