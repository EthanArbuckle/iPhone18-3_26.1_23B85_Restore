@interface WBSDispatchSourceTimer
+ (id)scheduledRepeatingTimerWithStartDelay:(double)delay interval:(double)interval handler:(id)handler;
+ (id)scheduledTimerWithInterval:(double)interval repeats:(BOOL)repeats handler:(id)handler;
+ (id)scheduledTimerWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue handler:(id)handler;
+ (id)timerWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue handler:(id)handler;
- (BOOL)isValid;
- (WBSDispatchSourceTimer)initWithStartDelay:(double)delay interval:(double)interval repeats:(BOOL)repeats queue:(id)queue handler:(id)handler;
- (void)_scheduleTimer;
- (void)dealloc;
- (void)invalidate;
- (void)resetFireDate;
- (void)schedule;
@end

@implementation WBSDispatchSourceTimer

- (void)_scheduleTimer
{
  os_unfair_lock_assert_owner(&self->_lock);
  timer = self->_timer;
  if (timer)
  {
    v4 = dispatch_time(0, (self->_startDelay * 1000000000.0));
    v5 = (self->_interval * 1000000000.0);
    v6 = (self->_startDelay * 0.1 * 1000000000.0);

    dispatch_source_set_timer(timer, v4, v5, v6);
  }
}

- (void)schedule
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_timer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v3;

    objc_initWeak(&location, self);
    v5 = self->_timer;
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __34__WBSDispatchSourceTimer_schedule__block_invoke;
    v9 = &unk_1E7FB86B8;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v5, &v6);
    [(WBSDispatchSourceTimer *)self _scheduleTimer:v6];
    dispatch_activate(self->_timer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(WBSDispatchSourceTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = WBSDispatchSourceTimer;
  [(WBSDispatchSourceTimer *)&v3 dealloc];
}

void __34__WBSDispatchSourceTimer_schedule__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (([WeakRetained repeats] & 1) == 0)
    {
      [v3 invalidate];
    }

    v2 = [v3 handler];
    v2[2]();

    WeakRetained = v3;
  }
}

+ (id)scheduledTimerWithInterval:(double)interval repeats:(BOOL)repeats handler:(id)handler
{
  v5 = [self timerWithInterval:repeats repeats:MEMORY[0x1E69E96A0] queue:handler handler:interval];
  [v5 schedule];

  return v5;
}

+ (id)scheduledTimerWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue handler:(id)handler
{
  v6 = [self timerWithInterval:repeats repeats:queue queue:handler handler:interval];
  [v6 schedule];

  return v6;
}

+ (id)scheduledRepeatingTimerWithStartDelay:(double)delay interval:(double)interval handler:(id)handler
{
  handlerCopy = handler;
  v9 = [self alloc];
  v10 = [v9 initWithStartDelay:1 interval:MEMORY[0x1E69E96A0] repeats:handlerCopy queue:delay handler:interval];

  [v10 schedule];

  return v10;
}

+ (id)timerWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue handler:(id)handler
{
  repeatsCopy = repeats;
  handlerCopy = handler;
  queueCopy = queue;
  v12 = [[self alloc] initWithStartDelay:repeatsCopy interval:queueCopy repeats:handlerCopy queue:interval handler:interval];

  return v12;
}

- (WBSDispatchSourceTimer)initWithStartDelay:(double)delay interval:(double)interval repeats:(BOOL)repeats queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = WBSDispatchSourceTimer;
  v15 = [(WBSDispatchSourceTimer *)&v21 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    v15->_interval = interval;
    v15->_startDelay = delay;
    v15->_repeats = repeats;
    objc_storeStrong(&v15->_queue, queue);
    v17 = MEMORY[0x1BFB13CE0](handlerCopy);
    handler = v16->_handler;
    v16->_handler = v17;

    v19 = v16;
  }

  return v16;
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_timer;
  os_unfair_lock_unlock(&self->_lock);

  return v3 != 0;
}

- (void)resetFireDate
{
  os_unfair_lock_lock(&self->_lock);
  [(WBSDispatchSourceTimer *)self _scheduleTimer];

  os_unfair_lock_unlock(&self->_lock);
}

@end