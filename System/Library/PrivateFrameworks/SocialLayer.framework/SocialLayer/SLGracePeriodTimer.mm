@interface SLGracePeriodTimer
+ (id)timerWithQueue:(id)a3 delay:(double)a4 action:(id)a5;
- (BOOL)isValid;
- (SLGracePeriodTimer)initWithQueue:(id)a3 delay:(double)a4 action:(id)a5;
- (id)description;
- (void)_createTimer;
- (void)arm;
- (void)dealloc;
- (void)suppress;
@end

@implementation SLGracePeriodTimer

+ (id)timerWithQueue:(id)a3 delay:(double)a4 action:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[SLGracePeriodTimer alloc] initWithQueue:v8 delay:v7 action:a4];

  return v9;
}

- (SLGracePeriodTimer)initWithQueue:(id)a3 delay:(double)a4 action:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SLGracePeriodTimer;
  v11 = [(SLGracePeriodTimer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_callbackQueue, a3);
    v12->_delay = a4;
    v13 = _Block_copy(v10);
    action = v12->_action;
    v12->_action = v13;
  }

  return v12;
}

- (void)dealloc
{
  [(SLGracePeriodTimer *)self suppress];
  v3.receiver = self;
  v3.super_class = SLGracePeriodTimer;
  [(SLGracePeriodTimer *)&v3 dealloc];
}

- (BOOL)isValid
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_timer != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)_createTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_callbackQueue);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  dispatch_set_qos_class_fallback();
  delay = self->_delay;
  v7 = (delay / 10.0 * 1000000000.0);
  v8 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(self->_timer, v8, 0xFFFFFFFFFFFFFFFFLL, v7);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_expectedFiringTimeSinceReferenceDate = v9 + self->_delay;
  objc_initWeak(&location, self);
  v10 = self->_timer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__SLGracePeriodTimer__createTimer__block_invoke;
  v13[3] = &unk_278925C50;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v13);
  dispatch_source_set_event_handler(v11, v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __34__SLGracePeriodTimer__createTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = _Block_copy(WeakRetained[1]);
    v3 = v2;
    if (v2)
    {
      (*(v2 + 2))(v2);
    }

    [v4 suppress];

    WeakRetained = v4;
  }
}

- (void)arm
{
  obj = self;
  objc_sync_enter(obj);
  [(SLGracePeriodTimer *)obj suppress];
  [(SLGracePeriodTimer *)obj _createTimer];
  dispatch_resume(obj->_timer);
  objc_sync_exit(obj);
}

- (void)suppress
{
  obj = self;
  objc_sync_enter(obj);
  timer = obj->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v3 = obj->_timer;
    obj->_timer = 0;

    obj->_expectedFiringTimeSinceReferenceDate = 0.0;
  }

  objc_sync_exit(obj);
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_timer)
  {
    v3 = MEMORY[0x277CCACA8];
    expectedFiringTimeSinceReferenceDate = v2->_expectedFiringTimeSinceReferenceDate;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = [v3 stringWithFormat:@"armed, firing in %.1gs", expectedFiringTimeSinceReferenceDate - v5];
  }

  else
  {
    v6 = @"not running";
  }

  objc_sync_exit(v2);

  return v6;
}

@end