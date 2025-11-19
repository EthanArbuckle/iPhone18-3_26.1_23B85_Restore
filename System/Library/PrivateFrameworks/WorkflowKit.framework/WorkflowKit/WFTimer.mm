@interface WFTimer
- (BOOL)shouldHaveTimeout;
- (WFTimer)initWithHandler:(id)a3 duration:(double)a4;
- (WFTimerHandler)handler;
- (void)cancel;
- (void)restart;
- (void)start;
@end

@implementation WFTimer

- (WFTimerHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

- (BOOL)shouldHaveTimeout
{
  v3 = [(WFTimer *)self handler];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(WFTimer *)self handler];
  v6 = [v5 timerShouldStart:self];

  return v6;
}

- (void)cancel
{
  v3 = [(WFTimer *)self timeoutTimer];

  if (v3)
  {
    v4 = [(WFTimer *)self timeoutTimer];
    dispatch_source_cancel(v4);

    [(WFTimer *)self setTimeoutTimer:0];
  }
}

- (void)restart
{
  [(WFTimer *)self cancel];

  [(WFTimer *)self start];
}

- (void)start
{
  if ([(WFTimer *)self shouldHaveTimeout])
  {
    objc_initWeak(&location, self);
    v3 = [(WFTimer *)self timerQueue];
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
    [(WFTimer *)self setTimeoutTimer:v4];

    [(WFTimer *)self duration];
    v6 = v5;
    v7 = [(WFTimer *)self timeoutTimer];
    v8 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v7, v8, (v6 * 1000000000.0), 0x3B9ACA00uLL);

    v9 = [(WFTimer *)self timeoutTimer];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __16__WFTimer_start__block_invoke;
    v14 = &unk_1E837B8F8;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(v9, &v11);

    v10 = [(WFTimer *)self timeoutTimer:v11];
    dispatch_activate(v10);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __16__WFTimer_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained handler];
  [v1 timerDidFire:WeakRetained];
}

- (WFTimer)initWithHandler:(id)a3 duration:(double)a4
{
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFTimer.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v16.receiver = self;
  v16.super_class = WFTimer;
  v8 = [(WFTimer *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_handler, v7);
    v9->_duration = a4;
    v10 = dispatch_get_global_queue(21, 0);
    v11 = dispatch_queue_create_with_target_V2("com.apple.WorkflowKit.WFTimer", 0, v10);
    timerQueue = v9->_timerQueue;
    v9->_timerQueue = v11;

    v13 = v9;
  }

  return v9;
}

@end