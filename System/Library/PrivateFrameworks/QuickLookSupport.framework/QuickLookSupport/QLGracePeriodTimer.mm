@interface QLGracePeriodTimer
- (QLGracePeriodTimer)initWithAction:(id)action callbackQueue:(id)queue delay:(double)delay;
- (void)_createTimer;
- (void)_suppress;
- (void)arm;
- (void)suppress;
@end

@implementation QLGracePeriodTimer

- (QLGracePeriodTimer)initWithAction:(id)action callbackQueue:(id)queue delay:(double)delay
{
  actionCopy = action;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = QLGracePeriodTimer;
  v10 = [(QLGracePeriodTimer *)&v14 init];
  if (v10)
  {
    v11 = MEMORY[0x2667062A0](actionCopy);
    action = v10->_action;
    v10->_action = v11;

    objc_storeStrong(&v10->_callbackQueue, queue);
    v10->_delay = delay;
  }

  return v10;
}

- (void)_createTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_callbackQueue);
  timer = self->_timer;
  self->_timer = v3;

  delay = self->_delay;
  v6 = (delay / 10.0 * 1000000000.0);
  v7 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(self->_timer, v7, 0xFFFFFFFFFFFFFFFFLL, v6);
  objc_initWeak(&location, self);
  v8 = self->_timer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__QLGracePeriodTimer__createTimer__block_invoke;
  v9[3] = &unk_279ADB5C8;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__QLGracePeriodTimer__createTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained action];
    v3 = v2;
    if (v2)
    {
      (*(v2 + 16))(v2);
    }

    [v4 _suppress];

    WeakRetained = v4;
  }
}

- (void)_suppress
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)arm
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  [(QLGracePeriodTimer *)self _suppress];
  [(QLGracePeriodTimer *)self _createTimer];
  timer = self->_timer;

  dispatch_resume(timer);
}

- (void)suppress
{
  dispatch_assert_queue_V2(self->_callbackQueue);

  [(QLGracePeriodTimer *)self _suppress];
}

@end