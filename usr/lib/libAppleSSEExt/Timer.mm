@interface Timer
- (BOOL)isActive;
- (void)cancel;
- (void)dealloc;
- (void)resetWithTimeInterval:(double)interval block:(id)block;
@end

@implementation Timer

- (void)resetWithTimeInterval:(double)interval block:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(Timer *)selfCopy cancel];
  if (blockCopy)
  {
    objc_initWeak(&location, selfCopy);
    v8 = dispatch_get_global_queue(21, 0);
    v9 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v8);
    timer = selfCopy->_timer;
    selfCopy->_timer = v9;

    v11 = selfCopy->_timer;
    v12 = dispatch_walltime(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v13 = selfCopy->_timer;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3254779904;
    handler[2] = __37__Timer_resetWithTimeInterval_block___block_invoke;
    handler[3] = &__block_descriptor_48_e8_32bs40w_e5_v8__0l;
    objc_copyWeak(&v16, &location);
    v15 = blockCopy;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(selfCopy->_timer);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __37__Timer_resetWithTimeInterval_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancel];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timer = selfCopy->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = selfCopy->_timer;
    selfCopy->_timer = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isActive
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timer != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)dealloc
{
  [(Timer *)self cancel];
  v3.receiver = self;
  v3.super_class = Timer;
  [(Timer *)&v3 dealloc];
}

@end