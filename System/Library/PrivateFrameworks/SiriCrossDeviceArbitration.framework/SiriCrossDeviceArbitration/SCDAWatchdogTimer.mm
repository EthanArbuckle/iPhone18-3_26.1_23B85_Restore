@interface SCDAWatchdogTimer
- (BOOL)cancelIfNotAlreadyCanceled;
- (SCDAWatchdogTimer)initWithTimeoutInterval:(double)interval onQueue:(id)queue timeoutHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)start;
- (void)stop;
@end

@implementation SCDAWatchdogTimer

- (BOOL)cancelIfNotAlreadyCanceled
{
  v3 = dispatch_source_testcancel(self->_timerSource);
  if (!v3)
  {
    [(SCDAWatchdogTimer *)self cancel];
  }

  return v3 == 0;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_timerLock);
  dispatch_source_cancel(self->_timerSource);
  if (self->_isStopped)
  {
    dispatch_resume(self->_timerSource);
    self->_isStopped = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource && self->_isStopped)
  {
    dispatch_resume(timerSource);
  }

  v4.receiver = self;
  v4.super_class = SCDAWatchdogTimer;
  [(SCDAWatchdogTimer *)&v4 dealloc];
}

- (void)start
{
  os_unfair_lock_lock(&self->_timerLock);
  if (self->_isStopped)
  {
    timerSource = self->_timerSource;
    v4 = dispatch_time(0, (self->_remainingInterval * 1000000000.0));
    dispatch_source_set_timer(timerSource, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_timerSource);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    self->_startTime = v6;

    self->_isStopped = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (void)reset
{
  [(SCDAWatchdogTimer *)self stop];
  self->_remainingInterval = self->_interval;

  [(SCDAWatchdogTimer *)self start];
}

- (void)stop
{
  os_unfair_lock_lock(&self->_timerLock);
  if (!self->_isStopped)
  {
    dispatch_suspend(self->_timerSource);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v5 = v4 - self->_startTime;

    v6 = self->_interval - v5;
    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    self->_remainingInterval = v6;
    self->_isStopped = 1;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  interval = self->_interval;
  queue = self->_queue;
  timeoutHandler = self->_timeoutHandler;

  return [v4 initWithTimeoutInterval:queue onQueue:timeoutHandler timeoutHandler:interval];
}

- (SCDAWatchdogTimer)initWithTimeoutInterval:(double)interval onQueue:(id)queue timeoutHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = SCDAWatchdogTimer;
  v11 = [(SCDAWatchdogTimer *)&v23 init];
  v12 = v11;
  if (v11)
  {
    v11->_interval = interval;
    v11->_remainingInterval = interval;
    objc_storeStrong(&v11->_queue, queue);
    v13 = MEMORY[0x1E1270630](handlerCopy);
    timeoutHandler = v12->_timeoutHandler;
    v12->_timeoutHandler = v13;

    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v12->_queue);
    timerSource = v12->_timerSource;
    v12->_timerSource = v15;

    v12->_timerLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v12);
    v17 = v12->_timerSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__SCDAWatchdogTimer_initWithTimeoutInterval_onQueue_timeoutHandler___block_invoke;
    handler[3] = &unk_1E85D3208;
    objc_copyWeak(&v21, &location);
    v20 = handlerCopy;
    dispatch_source_set_event_handler(v17, handler);
    v12->_isStopped = 1;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

uint64_t __68__SCDAWatchdogTimer_initWithTimeoutInterval_onQueue_timeoutHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancelIfNotAlreadyCanceled];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

@end