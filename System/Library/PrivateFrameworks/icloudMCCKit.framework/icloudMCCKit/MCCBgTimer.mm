@interface MCCBgTimer
- (BOOL)isValid;
- (MCCBgTimer)initWithTimeIntervalSinceNow:(double)now queue:(id)queue block:(id)block;
- (void)cancel;
- (void)start;
@end

@implementation MCCBgTimer

- (MCCBgTimer)initWithTimeIntervalSinceNow:(double)now queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = MCCBgTimer;
  v10 = [(MCCBgTimer *)&v22 init];
  v11 = v10;
  if (v10)
  {
    v10->_interval = (now * 1000000000.0);
    if (queueCopy)
    {
      v12 = queueCopy;
    }

    else
    {
      v12 = dispatch_queue_create("com.apple.mcckit.bgtimer", 0);
    }

    queue = v11->_queue;
    v11->_queue = v12;

    v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11->_queue);
    timer = v11->_timer;
    v11->_timer = v14;

    objc_initWeak(&location, v11);
    v16 = v11->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__MCCBgTimer_initWithTimeIntervalSinceNow_queue_block___block_invoke;
    handler[3] = &unk_1E8458140;
    v19 = blockCopy;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v16, handler);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  return v11;
}

void __55__MCCBgTimer_initWithTimeIntervalSinceNow_queue_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 cancel];
  }
}

- (void)start
{
  os_unfair_lock_lock(&_lock);
  timer = self->_timer;
  if (!timer)
  {
    [MCCBgTimer start];
  }

  v4 = dispatch_walltime(0, self->_interval);
  dispatch_source_set_timer(timer, v4, self->_interval, 0);
  dispatch_resume(self->_timer);

  os_unfair_lock_unlock(&_lock);
}

- (void)cancel
{
  os_unfair_lock_lock(&_lock);
  if ([(MCCBgTimer *)self isValid])
  {
    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;
  }

  os_unfair_lock_unlock(&_lock);
}

- (BOOL)isValid
{
  timer = self->_timer;
  if (timer)
  {
    LOBYTE(timer) = dispatch_source_testcancel(timer) == 0;
  }

  return timer;
}

@end