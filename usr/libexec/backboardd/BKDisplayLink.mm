@interface BKDisplayLink
- (BKDisplayLink)initWithDisplayLinkClass:(Class)class display:(id)display target:(id)target action:(SEL)action;
- (void)_thread_displayLinkFired;
- (void)_thread_invalidate;
- (void)_thread_setPaused:(id)paused;
- (void)_thread_startRunLoop;
- (void)dealloc;
- (void)invalidate;
- (void)setPaused:(BOOL)paused;
@end

@implementation BKDisplayLink

- (void)_thread_startRunLoop
{
  v12 = 63;
  v3 = pthread_self();
  v4 = pthread_setschedparam(v3, 2, &v12);
  if (v4)
  {
    v5 = v4;
    v6 = BKLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cannot set event router thread priority (error %d)", buf, 8u);
    }
  }

  v7 = +[NSRunLoop currentRunLoop];
  runLoop = self->_runLoop;
  self->_runLoop = v7;

  v9 = [(objc_class *)self->_displayLinkClass displayLinkWithDisplay:self->_display target:self selector:"_thread_displayLinkFired"];
  thread_displayLink = self->_thread_displayLink;
  self->_thread_displayLink = v9;

  v11 = self->_thread_displayLink;
  if (objc_opt_respondsToSelector())
  {
    [(CADisplayLink *)self->_thread_displayLink setLocalEarlyWakeupOffset:0.0006];
  }

  [(CADisplayLink *)self->_thread_displayLink addToRunLoop:self->_runLoop forMode:NSRunLoopCommonModes];
  CFRunLoopRun();
}

- (void)_thread_displayLinkFired
{
  if (!self->_thread_invalid)
  {
    action = self->_action;
    target = self->_target;
    if (action)
    {
      [target action];
    }

    else
    {
      [target 0];
    }
  }
}

- (void)_thread_invalidate
{
  thread_invalid = self->_thread_invalid;
  v4 = BKLogMousePointer();
  v5 = v4;
  if (thread_invalid)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "BKDisplayLink %p _thread_invalidate already invalid", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKDisplayLink %p _thread_invalidate", &v9, 0xCu);
    }

    self->_thread_invalid = 1;
    [(CADisplayLink *)self->_thread_displayLink invalidate];
    thread_displayLink = self->_thread_displayLink;
    self->_thread_displayLink = 0;

    display = self->_display;
    self->_display = 0;

    Current = CFRunLoopGetCurrent();
    CFRunLoopStop(Current);
    CFRunLoopWakeUp(Current);
  }
}

- (void)_thread_setPaused:(id)paused
{
  thread_displayLink = self->_thread_displayLink;
  bOOLValue = [paused BOOLValue];

  [(CADisplayLink *)thread_displayLink setPaused:bOOLValue];
}

- (void)setPaused:(BOOL)paused
{
  self->_paused = paused;
  thread = self->_thread;
  v5 = [NSNumber numberWithBool:?];
  [(BKDisplayLink *)self performSelector:"_thread_setPaused:" onThread:thread withObject:v5 waitUntilDone:0];
}

- (void)invalidate
{
  v3 = BKLogMousePointer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKDisplayLink %p invalidate start ", &v5, 0xCu);
  }

  [(BKDisplayLink *)self performSelector:"_thread_invalidate" onThread:self->_thread withObject:0 waitUntilDone:0];
  v4 = BKLogMousePointer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BKDisplayLink %p invalidate finish", &v5, 0xCu);
  }
}

- (void)dealloc
{
  if (!self->_thread_invalid)
  {
    v4 = [NSString stringWithFormat:@"must -invalidate before dealloc"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKDisplayLink.m";
      v17 = 1024;
      v18 = 61;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10000D0A8);
  }

  v8.receiver = self;
  v8.super_class = BKDisplayLink;
  [(BKDisplayLink *)&v8 dealloc];
}

- (BKDisplayLink)initWithDisplayLinkClass:(Class)class display:(id)display target:(id)target action:(SEL)action
{
  displayCopy = display;
  targetCopy = target;
  v30.receiver = self;
  v30.super_class = BKDisplayLink;
  v13 = [(BKDisplayLink *)&v30 init];
  v14 = v13;
  if (v13)
  {
    v13->_displayLinkClass = class;
    objc_storeStrong(&v13->_display, display);
    uniqueId = [(CADisplay *)v14->_display uniqueId];
    v16 = [uniqueId length];
    v17 = BKSDisplayUUIDMainKey;
    if (v16)
    {
      v17 = uniqueId;
    }

    v18 = v17;

    displayUUID = v14->_displayUUID;
    v14->_displayUUID = v18;

    objc_storeStrong(&v14->_target, target);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v14->_action = actionCopy;
    v21 = BKLogMousePointer();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v14->_displayUUID;
      *buf = 134218242;
      v33 = v14;
      v34 = 2114;
      v35 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BKDisplayLink init %p %{public}@", buf, 0x16u);
    }

    v23 = [[NSThread alloc] initWithTarget:v14 selector:"_thread_startRunLoop" object:0];
    thread = v14->_thread;
    v14->_thread = v23;

    [(NSThread *)v14->_thread start];
    v25 = [objc_opt_class() description];
    v26 = [NSString stringWithFormat:@"%@ BKDisplayLink:%p for %@", v25, v14, v14->_displayUUID];

    [(NSThread *)v14->_thread setName:v26];
    v27 = v14->_thread;
    v31 = NSRunLoopCommonModes;
    v28 = [NSArray arrayWithObjects:&v31 count:1];
    [(BKDisplayLink *)v14 performSelector:"description" onThread:v27 withObject:0 waitUntilDone:0 modes:v28];
  }

  return v14;
}

@end