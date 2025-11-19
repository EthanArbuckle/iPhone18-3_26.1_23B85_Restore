@interface PowerManagerIdleTracker
+ (id)idleTracker:(id)a3 queue:(id)a4 interval:(double)a5 block:(id)a6;
+ (unint64_t)setup:(id)a3 interval:(double)a4;
- (BOOL)active;
- (BOOL)enabled;
- (double)interval;
- (id)init:(id)a3 queue:(id)a4 interval:(double)a5 block:(id)a6;
- (void)dealloc;
- (void)invalidate;
- (void)setActive:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setInterval:(double)a3;
@end

@implementation PowerManagerIdleTracker

- (BOOL)active
{
  v2 = self;
  objc_sync_enter(v2);
  active = v2->_active;
  objc_sync_exit(v2);

  return active;
}

- (BOOL)enabled
{
  v2 = self;
  objc_sync_enter(v2);
  enabled = v2->_enabled;
  objc_sync_exit(v2);

  return enabled;
}

+ (id)idleTracker:(id)a3 queue:(id)a4 interval:(double)a5 block:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[PowerManagerIdleTracker alloc] init:v11 queue:v10 interval:v9 block:a5];

  return v12;
}

- (id)init:(id)a3 queue:(id)a4 interval:(double)a5 block:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = sub_100001A30(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v25 = v11;
    v26 = 2050;
    v27 = a5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "IdleTracker:alloc(%{public}@) interval=%{public}g", buf, 0x16u);
  }

  v23.receiver = self;
  v23.super_class = PowerManagerIdleTracker;
  v15 = [(PowerManagerIdleTracker *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    objc_storeStrong(&v16->_queue, a4);
    *&v16->_active = 257;
    v16->_firstTime = 1;
    v16->_interval = a5;
    v17 = [v13 copy];
    block = v16->_block;
    v16->_block = v17;

    objc_initWeak(buf, v16);
    v19 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(buf);
    -[PowerManagerIdleTracker setUserActivityNotificationRef:](v16, "setUserActivityNotificationRef:", [v19 setup:WeakRetained interval:a5]);

    if (![(PowerManagerIdleTracker *)v16 userActivityNotificationRef])
    {
      v21 = [(PowerManagerIdleTracker *)v16 block];
      (v21)[2](v21, [(PowerManagerIdleTracker *)v16 active]);
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
    v4 = [(PowerManagerIdleTracker *)self name];
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "IdleTracker:dealloc(%{public}@", buf, 0xCu);
  }

  [(PowerManagerIdleTracker *)self invalidate];
  v5.receiver = self;
  v5.super_class = PowerManagerIdleTracker;
  [(PowerManagerIdleTracker *)&v5 dealloc];
}

+ (unint64_t)setup:(id)a3 interval:(double)a4
{
  v4 = a3;
  v5 = [v4 queue];
  v9 = v4;
  v6 = v4;
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

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_active != v3)
  {
    obj->_active = v3;
    if (v3)
    {
      v5 = +[NSDate date];
      startTime = obj->_startTime;
      obj->_startTime = v5;

      v4 = obj;
    }
  }

  if (![(PowerManagerIdleTracker *)v4 userActivityNotificationRef]&& [(PowerManagerIdleTracker *)obj enabled])
  {
    v7 = [(PowerManagerIdleTracker *)obj block];
    (v7)[2](v7, [(PowerManagerIdleTracker *)obj active]);
  }

  objc_sync_exit(obj);
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_enabled != v3)
  {
    obj->_enabled = v3;
    [(PowerManagerIdleTracker *)obj userActivityNotificationRef];
    v4 = obj;
    if (v3)
    {
      v5 = [(PowerManagerIdleTracker *)obj block];
      (v5)[2](v5, [(PowerManagerIdleTracker *)obj active]);

      v4 = obj;
    }
  }

  objc_sync_exit(v4);
}

- (double)interval
{
  v2 = self;
  objc_sync_enter(v2);
  interval = v2->_interval;
  objc_sync_exit(v2);

  return interval;
}

- (void)setInterval:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_interval = a3;
  [(PowerManagerIdleTracker *)obj userActivityNotificationRef];
  [(PowerManagerIdleTracker *)obj interval];
  IOPMSetUserActivityIdleTimeout();
  objc_sync_exit(obj);
}

@end