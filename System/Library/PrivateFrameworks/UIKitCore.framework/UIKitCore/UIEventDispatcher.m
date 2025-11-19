@interface UIEventDispatcher
- (UIEventDispatcher)initWithApplication:(id)a3;
- (void)_installEventRunLoopSources:(uint64_t)a1;
- (void)dealloc;
- (void)eventFetcherDidReceiveEvents:(id)a3;
@end

@implementation UIEventDispatcher

- (UIEventDispatcher)initWithApplication:(id)a3
{
  v10.receiver = self;
  v10.super_class = UIEventDispatcher;
  v4 = [(UIEventDispatcher *)&v10 init];
  if (v4)
  {
    v5 = [[UIEventEnvironment alloc] initWithApplication:a3];
    mainEnvironment = v4->_mainEnvironment;
    v4->_mainEnvironment = v5;

    if (_UIUpdateCycleEnabled())
    {
      v7 = qword_1ED491718;
      qword_1ED491710 = v4;
      qword_1ED491718 = &__block_literal_global_425;

      v8 = qword_1ED4916B8;
      qword_1ED4916B0 = v4;
      qword_1ED4916B8 = &__block_literal_global_3_6;
    }
  }

  return v4;
}

- (void)_installEventRunLoopSources:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 40) = a2;
    v4 = *(a1 + 8);
    *(a1 + 16) = *(v4[1] + 152);
    memset(&v8.retain, 0, 64);
    v8.version = 0;
    v8.info = v4;
    if (_UIUpdateCycleEnabled())
    {
      v5 = *MEMORY[0x1E695E8D0];
    }

    else
    {
      v8.perform = __eventQueueSourceCallback;
      v6 = CFRunLoopSourceCreate(0, -1, &v8);
      *(a1 + 24) = v6;
      v5 = *MEMORY[0x1E695E8D0];
      CFRunLoopAddSource(a2, v6, *MEMORY[0x1E695E8D0]);
      CFRelease(*(a1 + 24));
    }

    v8.perform = __eventFetcherSourceCallback;
    v8.info = a1;
    v7 = CFRunLoopSourceCreate(0, -2, &v8);
    *(a1 + 32) = v7;
    CFRunLoopAddSource(a2, v7, v5);
    CFRelease(*(a1 + 32));
  }
}

- (void)eventFetcherDidReceiveEvents:(id)a3
{
  CFRunLoopSourceSignal(self->_collectHIDEventsRunLoopSource);
  runLoop = self->_runLoop;

  CFRunLoopWakeUp(runLoop);
}

- (void)dealloc
{
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    CFRunLoopSourceInvalidate(self->_handleEventQueueRunLoopSource);
  }

  CFRunLoopSourceInvalidate(self->_collectHIDEventsRunLoopSource);
  v3.receiver = self;
  v3.super_class = UIEventDispatcher;
  [(UIEventDispatcher *)&v3 dealloc];
}

@end