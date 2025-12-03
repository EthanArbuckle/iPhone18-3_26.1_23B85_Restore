@interface PowerManagerIdleTracker
+ (id)idleTracker:(id)tracker queue:(id)queue interval:(double)interval block:(id)block;
+ (unint64_t)setup:(id)setup interval:(double)interval;
- (BOOL)active;
- (BOOL)enabled;
- (double)interval;
- (id)init:(id)init queue:(id)queue interval:(double)interval block:(id)block;
- (void)dealloc;
- (void)invalidate;
- (void)setActive:(BOOL)active;
- (void)setEnabled:(BOOL)enabled;
- (void)setInterval:(double)interval;
@end

@implementation PowerManagerIdleTracker

- (BOOL)active
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  active = selfCopy->_active;
  objc_sync_exit(selfCopy);

  return active;
}

- (BOOL)enabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabled = selfCopy->_enabled;
  objc_sync_exit(selfCopy);

  return enabled;
}

+ (id)idleTracker:(id)tracker queue:(id)queue interval:(double)interval block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  trackerCopy = tracker;
  v12 = [[PowerManagerIdleTracker alloc] init:trackerCopy queue:queueCopy interval:blockCopy block:interval];

  return v12;
}

- (id)init:(id)init queue:(id)queue interval:(double)interval block:(id)block
{
  initCopy = init;
  queueCopy = queue;
  blockCopy = block;
  v14 = sub_100001A30(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v25 = initCopy;
    v26 = 2050;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "IdleTracker:alloc(%{public}@) interval=%{public}g", buf, 0x16u);
  }

  v23.receiver = self;
  v23.super_class = PowerManagerIdleTracker;
  v15 = [(PowerManagerIdleTracker *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, init);
    objc_storeStrong(&v16->_queue, queue);
    *&v16->_active = 257;
    v16->_firstTime = 1;
    v16->_interval = interval;
    v17 = [blockCopy copy];
    block = v16->_block;
    v16->_block = v17;

    objc_initWeak(buf, v16);
    v19 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(buf);
    -[PowerManagerIdleTracker setUserActivityNotificationRef:](v16, "setUserActivityNotificationRef:", [v19 setup:WeakRetained interval:interval]);

    if (![(PowerManagerIdleTracker *)v16 userActivityNotificationRef])
    {
      block = [(PowerManagerIdleTracker *)v16 block];
      (block)[2](block, [(PowerManagerIdleTracker *)v16 active]);
    }

    objc_destroyWeak(buf);
  }

  return v16;
}

- (void)dealloc
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(PowerManagerIdleTracker *)self name];
    *buf = 138543362;
    v7 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "IdleTracker:dealloc(%{public}@", buf, 0xCu);
  }

  [(PowerManagerIdleTracker *)self invalidate];
  v5.receiver = self;
  v5.super_class = PowerManagerIdleTracker;
  [(PowerManagerIdleTracker *)&v5 dealloc];
}

+ (unint64_t)setup:(id)setup interval:(double)interval
{
  setupCopy = setup;
  queue = [setupCopy queue];
  v9 = setupCopy;
  v6 = setupCopy;
  v7 = IOPMScheduleUserActivityLevelNotificationWithTimeout();

  return v7;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if ([(PowerManagerIdleTracker *)obj userActivityNotificationRef])
  {
    [(PowerManagerIdleTracker *)obj userActivityNotificationRef];
    IOPMUnregisterNotification();
    [(PowerManagerIdleTracker *)obj setUserActivityNotificationRef:0];
  }

  objc_sync_exit(obj);
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_active != activeCopy)
  {
    obj->_active = activeCopy;
    if (activeCopy)
    {
      v5 = +[NSDate date];
      startTime = obj->_startTime;
      obj->_startTime = v5;

      v4 = obj;
    }
  }

  if (![(PowerManagerIdleTracker *)v4 userActivityNotificationRef]&& [(PowerManagerIdleTracker *)obj enabled])
  {
    block = [(PowerManagerIdleTracker *)obj block];
    (block)[2](block, [(PowerManagerIdleTracker *)obj active]);
  }

  objc_sync_exit(obj);
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_enabled != enabledCopy)
  {
    obj->_enabled = enabledCopy;
    [(PowerManagerIdleTracker *)obj userActivityNotificationRef];
    v4 = obj;
    if (enabledCopy)
    {
      block = [(PowerManagerIdleTracker *)obj block];
      (block)[2](block, [(PowerManagerIdleTracker *)obj active]);

      v4 = obj;
    }
  }

  objc_sync_exit(v4);
}

- (double)interval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  interval = selfCopy->_interval;
  objc_sync_exit(selfCopy);

  return interval;
}

- (void)setInterval:(double)interval
{
  obj = self;
  objc_sync_enter(obj);
  obj->_interval = interval;
  [(PowerManagerIdleTracker *)obj userActivityNotificationRef];
  [(PowerManagerIdleTracker *)obj interval];
  IOPMSetUserActivityIdleTimeout();
  objc_sync_exit(obj);
}

@end