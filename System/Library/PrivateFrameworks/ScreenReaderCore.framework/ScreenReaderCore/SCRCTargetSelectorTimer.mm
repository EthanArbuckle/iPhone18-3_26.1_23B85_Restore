@interface SCRCTargetSelectorTimer
+ (void)_assignThreadPriority;
+ (void)_runThread;
+ (void)initialize;
- (BOOL)isPending;
- (id)_initWithTarget:(id)target selector:(SEL)selector threadKeyOrThread:(id)thread;
- (void)_dispatch;
- (void)_dispatchMainThread;
- (void)_dispatchSCRCThread;
- (void)cancel;
- (void)dealloc;
- (void)dispatchAfterDelay:(double)delay;
- (void)dispatchAfterDelay:(double)delay withBlock:(id)block;
- (void)dispatchAfterDelay:(double)delay withObject:(id)object;
- (void)invalidate;
@end

@implementation SCRCTargetSelectorTimer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = MEMORY[0x277CCACC8];

    [v3 detachNewThreadSelector:sel__runThread toTarget:self withObject:0];
  }
}

+ (void)_runThread
{
  [self _assignThreadPriority];
  Current = CFRunLoopGetCurrent();
  _TimerRunLoop = CFRetain(Current);
  v6.version = 0;
  memset(&v6.retain, 0, 24);
  v6.info = self;
  v4 = CFAbsoluteTimeGetCurrent();
  v5 = CFRunLoopTimerCreate(0, v4 + 630720000.0, 630720000.0, 0, 0, _handlerMainThread, &v6);
  CFRunLoopAddTimer(_TimerRunLoop, v5, *MEMORY[0x277CBF048]);
  _HaveTimerRunLoop = 1;
  CFRunLoopRunSpecific();
  __assert_rtn("+[SCRCTargetSelectorTimer _runThread]", "SCRCTargetSelectorTimer.m", 76, "false");
}

+ (void)_assignThreadPriority
{
  v2 = +[SCRCThread defaultThreadPriority];
  if (v2)
  {
    v3 = v2;
    v7 = 0;
    v6 = 0;
    v4 = pthread_self();
    pthread_getschedparam(v4, &v6, &v7);
    v7.sched_priority = v3;
    v5 = pthread_self();
    pthread_setschedparam(v5, 2, &v7);
  }
}

- (id)_initWithTarget:(id)target selector:(SEL)selector threadKeyOrThread:(id)thread
{
  targetCopy = target;
  threadCopy = thread;
  v22.receiver = self;
  v22.super_class = SCRCTargetSelectorTimer;
  v10 = [(SCRCTargetSelector *)&v22 initWithTarget:targetCopy selector:selector];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_key, thread);
    v11->_isCanceled = 1;
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v11->_lock;
    v11->_lock = v12;

    context.version = 0;
    context.info = v11;
    context.retain = _timerRetain;
    context.release = _timerRelease;
    context.copyDescription = 0;
    v11->_createdTimer = 0;
    if (v11->_key)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = CFAbsoluteTimeGetCurrent() + 630720000.0;
      if (isKindOfClass)
      {
        v16 = _handlerSCRCThread;
      }

      else
      {
        v16 = _handler;
      }
    }

    else
    {
      v15 = CFAbsoluteTimeGetCurrent() + 630720000.0;
      v16 = _handlerMainThread;
    }

    timer = CFRunLoopTimerCreate(0, v15, 630720000.0, 0, 0, v16, &context);
    v11->_timer = timer;
    v11->_createdTimer = 1;
    if (_HaveTimerRunLoop)
    {
      v18 = 0;
    }

    else
    {
      v19 = 0;
      while (v19 != 200)
      {
        ++v19;
        usleep(0xC350u);
        if (_HaveTimerRunLoop == 1)
        {
          goto LABEL_14;
        }
      }

      v19 = 201;
LABEL_14:
      timer = v11->_timer;
      v18 = v19 > 200;
    }

    if (!timer)
    {
      [SCRCTargetSelectorTimer _initWithTarget:selector:threadKeyOrThread:];
    }

    if (!_TimerRunLoop)
    {
      [SCRCTargetSelectorTimer _initWithTarget:selector:threadKeyOrThread:];
    }

    if (v18)
    {
      [SCRCTargetSelectorTimer _initWithTarget:selector:threadKeyOrThread:];
    }

    CFRunLoopAddTimer(_TimerRunLoop, timer, *MEMORY[0x277CBF048]);
  }

  return v11;
}

- (void)invalidate
{
  [(NSLock *)self->_lock lock];
  timer = self->_timer;
  if (timer)
  {
    CFRunLoopTimerInvalidate(timer);
    CFRelease(self->_timer);
    self->_timer = 0;
  }

  self->_isCanceled = 1;
  self->_isPending = 0;
  lock = self->_lock;
  object = self->_object;
  self->_lock = 0;
  v6 = object;
  v8 = lock;

  v7 = self->_object;
  self->_object = 0;

  [(NSLock *)v8 unlock];
}

- (void)dealloc
{
  [(SCRCTargetSelectorTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = SCRCTargetSelectorTimer;
  [(SCRCTargetSelectorTimer *)&v3 dealloc];
}

- (void)dispatchAfterDelay:(double)delay
{
  [(NSLock *)self->_lock lock];
  if (self->_timer)
  {
    v8 = self->_object;
    object = self->_object;
    self->_object = 0;

    self->_isCanceled = 0;
    self->_isPending = 1;
    timer = self->_timer;
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(timer, Current + delay);
  }

  else
  {
    v8 = 0;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)dispatchAfterDelay:(double)delay withBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_lock lock];
  if (self->_timer)
  {
    v6 = MEMORY[0x266744B50](blockCopy);
    block = self->_block;
    self->_block = v6;

    self->_isCanceled = 0;
    self->_isPending = 1;
    timer = self->_timer;
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(timer, Current + delay);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)dispatchAfterDelay:(double)delay withObject:(id)object
{
  objectCopy = object;
  [(NSLock *)self->_lock lock];
  v7 = self->_object;
  objc_storeStrong(&self->_object, object);
  timer = self->_timer;
  if (timer)
  {
    self->_isCanceled = 0;
    self->_isPending = 1;
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(timer, Current + delay);
  }

  [(NSLock *)self->_lock unlock];
}

- (void)cancel
{
  [(NSLock *)self->_lock lock];
  if (self->_isCanceled)
  {
    v7 = 0;
  }

  else
  {
    block = self->_block;
    self->_block = 0;

    self->_isCanceled = 1;
    timer = self->_timer;
    if (timer)
    {
      Current = CFAbsoluteTimeGetCurrent();
      CFRunLoopTimerSetNextFireDate(timer, Current + 630720000.0);
    }

    v7 = self->_object;
    object = self->_object;
    self->_object = 0;
  }

  [(NSLock *)self->_lock unlock];
}

- (BOOL)isPending
{
  [(NSLock *)self->_lock lock];
  isPending = self->_isPending;
  [(NSLock *)self->_lock unlock];
  return isPending;
}

- (void)_dispatch
{
  [(NSLock *)self->_lock lock];
  v7 = self->_object;
  object = self->_object;
  self->_object = 0;

  [(NSLock *)self->_lock unlock];
  if (self->_block)
  {
    key = self->_key;
    v5 = MEMORY[0x266744B50]();
    [self performSelector:sel__dispatchThreadHelper_ withThreadKey:key count:1 objects:v5];

    block = self->_block;
    self->_block = 0;
  }

  else
  {
    block = [(SCRCTargetSelector *)self target];
    [block performSelector:-[SCRCTargetSelector selector](self withThreadKey:"selector") count:self->_key objects:{1, v7}];
  }

  [(NSLock *)self->_lock lock];
  self->_isPending = 0;
  [(NSLock *)self->_lock unlock];
}

- (void)_dispatchMainThread
{
  [(NSLock *)self->_lock lock];
  v5 = self->_object;
  object = self->_object;
  self->_object = 0;

  [(NSLock *)self->_lock unlock];
  if (self->_block)
  {
    dispatch_async(MEMORY[0x277D85CD0], self->_block);
    block = self->_block;
    self->_block = 0;
  }

  else
  {
    block = [(SCRCTargetSelector *)self target];
    [block performSelectorOnMainThread:-[SCRCTargetSelector selector](self withObject:"selector") waitUntilDone:{v5, 0}];
  }

  [(NSLock *)self->_lock lock];
  self->_isPending = 0;
  [(NSLock *)self->_lock unlock];
}

- (void)_dispatchSCRCThread
{
  [(NSLock *)self->_lock lock];
  v8 = self->_object;
  object = self->_object;
  self->_object = 0;

  [(NSLock *)self->_lock unlock];
  key = self->_key;
  if (self->_block)
  {
    v5 = MEMORY[0x266744B50]();
    [key performSelector:sel__runTimerBlock_ onTarget:self count:1 objects:v5];

    block = self->_block;
    self->_block = 0;
  }

  else
  {
    selector = [(SCRCTargetSelector *)self selector];
    block = [(SCRCTargetSelector *)self target];
    [key performSelector:selector onTarget:block count:1 objects:v8];
  }

  [(NSLock *)self->_lock lock];
  self->_isPending = 0;
  [(NSLock *)self->_lock unlock];
}

@end