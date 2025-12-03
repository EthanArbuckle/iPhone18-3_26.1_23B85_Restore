@interface UIKeyboardScheduledTask
- (BOOL)isValid;
- (BOOL)repeats;
- (UIKeyboardScheduledTask)initWithTaskQueue:(id)queue timeInterval:(double)interval repeats:(BOOL)repeats task:(id)task breadcrumb:(id)breadcrumb;
- (void)dealloc;
- (void)handleDeferredTimerFiredEvent;
- (void)invalidate;
- (void)resetTimer;
- (void)timerFired:(id)fired;
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
  taskQueue = [(UIKeyboardScheduledTask *)self taskQueue];
  breadcrumb = [(UIKeyboardScheduledTask *)self breadcrumb];
  [taskQueue addTask:v3 breadcrumb:breadcrumb];

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
  selfCopy = self;
  timer = [(UIKeyboardScheduledTask *)selfCopy timer];
  [timer invalidate];

  [(UIKeyboardScheduledTask *)selfCopy setTimer:0];
  deferredAction = [(UIKeyboardScheduledTask *)selfCopy deferredAction];
  [deferredAction invalidate];

  [(UIKeyboardScheduledTask *)selfCopy setDeferredAction:0];
  [(UIKeyboardScheduledTask *)selfCopy setEnqueuedTask:0];
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
  timer = [(UIKeyboardScheduledTask *)self timer];
  if ([timer isValid])
  {
    v4 = 1;
  }

  else
  {
    deferredAction = [(UIKeyboardScheduledTask *)self deferredAction];
    if ([deferredAction isValid])
    {
      v4 = 1;
    }

    else
    {
      enqueuedTask = [(UIKeyboardScheduledTask *)self enqueuedTask];
      v4 = enqueuedTask != 0;
    }
  }

  return v4;
}

- (void)resetTimer
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:860 description:{@"%s may only be called from the main thread.", "-[UIKeyboardScheduledTask resetTimer]"}];
  }

  if ([(UIKeyboardScheduledTask *)self isValid])
  {
    timer = [(UIKeyboardScheduledTask *)self timer];
    isValid = [timer isValid];

    if (isValid)
    {
      timer2 = [(UIKeyboardScheduledTask *)self timer];
      v7 = MEMORY[0x1E695DF00];
      [(UIKeyboardScheduledTask *)self timeInterval];
      v8 = [v7 dateWithTimeIntervalSinceNow:?];
      [timer2 setFireDate:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695DFF0];
      [(UIKeyboardScheduledTask *)self timeInterval];
      timer2 = [v9 scheduledTimerWithTimeInterval:self target:sel_timerFired_ selector:0 userInfo:-[UIKeyboardScheduledTask repeats](self repeats:{"repeats"), v10}];
      [(UIKeyboardScheduledTask *)self setTimer:timer2];
    }

    deferredAction = [(UIKeyboardScheduledTask *)self deferredAction];
    [deferredAction invalidate];

    [(UIKeyboardScheduledTask *)self setDeferredAction:0];

    [(UIKeyboardScheduledTask *)self setEnqueuedTask:0];
  }
}

- (UIKeyboardScheduledTask)initWithTaskQueue:(id)queue timeInterval:(double)interval repeats:(BOOL)repeats task:(id)task breadcrumb:(id)breadcrumb
{
  repeatsCopy = repeats;
  queueCopy = queue;
  taskCopy = task;
  breadcrumbCopy = breadcrumb;
  v24.receiver = self;
  v24.super_class = UIKeyboardScheduledTask;
  v16 = [(UIKeyboardScheduledTask *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_timeInterval = interval;
    v18 = [taskCopy copy];
    task = v17->_task;
    v17->_task = v18;

    objc_storeStrong(&v17->_taskQueue, queue);
    v20 = [breadcrumbCopy copy];
    breadcrumb = v17->_breadcrumb;
    v17->_breadcrumb = v20;

    v22 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v17 target:sel_timerFired_ selector:0 userInfo:repeatsCopy repeats:interval];
    [(UIKeyboardScheduledTask *)v17 setTimer:v22];
  }

  return v17;
}

- (BOOL)repeats
{
  timer = [(UIKeyboardScheduledTask *)self timer];
  [timer timeInterval];
  v4 = v3 > 0.0;

  return v4;
}

- (void)timerFired:(id)fired
{
  deferredAction = [(UIKeyboardScheduledTask *)self deferredAction];
  if (([deferredAction isValid] & 1) == 0)
  {
    enqueuedTask = [(UIKeyboardScheduledTask *)self enqueuedTask];

    if (enqueuedTask)
    {
      return;
    }

    deferredAction = [_UIActionWhenIdle actionWhenIdleWithTarget:self selector:sel_handleDeferredTimerFiredEvent object:0];
    [(UIKeyboardScheduledTask *)self setDeferredAction:?];
  }
}

@end