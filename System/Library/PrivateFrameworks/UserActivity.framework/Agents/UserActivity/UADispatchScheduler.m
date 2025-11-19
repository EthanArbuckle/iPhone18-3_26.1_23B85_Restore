@interface UADispatchScheduler
+ (id)dispatchScheduler:(id)a3 frequency:(double)a4 queue:(id)a5 block:(id)a6;
- (BOOL)scheduleAt:(id)a3;
- (BOOL)scheduleNext:(double)a3;
- (id)init:(id)a3 frequency:(double)a4 queue:(id)a5 block:(id)a6;
- (id)nextRunTimeString;
- (void)_doIt;
- (void)doIt;
- (void)reset;
- (void)resume;
- (void)suspend;
- (void)updateFrequency:(double)a3;
- (void)waitUntilComplete;
@end

@implementation UADispatchScheduler

- (void)_doIt
{
  v3 = [(UADispatchScheduler *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(UADispatchScheduler *)self executingGroup];
  dispatch_group_enter(v4);

  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UADispatchScheduler *)self name];
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, run.  ", &v14, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  v7->_nextTime = -1;
  dispatch_source_set_timer(v7->_source, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  objc_sync_exit(v7);

  ++v7->_runCount;
  v8 = [(UADispatchScheduler *)v7 block];
  v8[2]();

  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(UADispatchScheduler *)v7 name];
    v11 = sub_1000097AC(v7->_nextTime);
    v14 = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, DONE run, next=%{public}@", &v14, 0x16u);
  }

  v12 = v7;
  objc_sync_enter(v12);
  dispatch_source_set_timer(v7->_source, v7->_nextTime, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  objc_sync_exit(v12);

  v13 = [(UADispatchScheduler *)v12 executingGroup];
  dispatch_group_leave(v13);
}

- (void)doIt
{
  v3 = [(UADispatchScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A90;
  block[3] = &unk_1000C4D10;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)resume
{
  v2 = [(UADispatchScheduler *)self source];
  dispatch_resume(v2);
}

- (id)init:(id)a3 frequency:(double)a4 queue:(id)a5 block:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v29.receiver = self;
  v29.super_class = UADispatchScheduler;
  v13 = [(UADispatchScheduler *)&v29 init];
  v14 = v13;
  if (v13)
  {
    [(UADispatchScheduler *)v13 setName:v10];
    [(UADispatchScheduler *)v14 setFrequency:a4];
    v14->_nextTime = -1;
    objc_storeStrong(&v14->_queue, a5);
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
    source = v14->_source;
    v14->_source = v15;

    v17 = dispatch_group_create();
    executingGroup = v14->_executingGroup;
    v14->_executingGroup = v17;

    v19 = objc_retainBlock(v12);
    block = v14->_block;
    v14->_block = v19;

    v21 = sub_100001A30(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(UADispatchScheduler *)v14 name];
      v23 = sub_1000097AC(0xFFFFFFFFFFFFFFFFLL);
      [(UADispatchScheduler *)v14 frequency];
      *buf = 138543874;
      v31 = v22;
      v32 = 2114;
      v33 = v23;
      v34 = 2048;
      v35 = v24 * 1000000000.0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, next=%{public}@ freq=%g", buf, 0x20u);
    }

    dispatch_source_set_timer(v14->_source, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v25 = v14->_source;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002805C;
    handler[3] = &unk_1000C4D10;
    v28 = v14;
    dispatch_source_set_event_handler(v25, handler);
  }

  return v14;
}

+ (id)dispatchScheduler:(id)a3 frequency:(double)a4 queue:(id)a5 block:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [[UADispatchScheduler alloc] init:v9 frequency:v10 queue:v11 block:a4];

  return v12;
}

- (BOOL)scheduleNext:(double)a3
{
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UADispatchScheduler *)self name];
    *buf = 138543618;
    v28 = v6;
    v29 = 2048;
    v30 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@ scheduleNext, interval=%g", buf, 0x16u);
  }

  v7 = self;
  objc_sync_enter(v7);
  if (a3 > 315576000.0)
  {
    v8 = sub_100001A30(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SCHEDULE: Setting next time to DISPATCH_TIME_FOREVER because interval > anything reasonable", buf, 2u);
    }

    v7->_nextTime = -1;
    dispatch_source_set_timer(v7->_source, 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
LABEL_7:
    objc_sync_exit(v7);

    return 1;
  }

  if (a3 > 0.0)
  {
    *&v9 = COERCE_DOUBLE(dispatch_time(0, (a3 * 1000000000.0)));
    v10 = sub_100001A30(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(UADispatchScheduler *)v7 name];
      sub_1000097AC(v7->_nextTime);
      v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543874;
      v28 = v11;
      v29 = 2048;
      v30 = a3;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, scheduling down to %f seconds(_next=%{public}@)", buf, 0x20u);
    }

    nextTime = v7->_nextTime;
    if (v9 < nextTime || nextTime == -1)
    {
      v15 = sub_100001A30(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [(UADispatchScheduler *)v7 name];
        v17 = sub_1000097AC(v9);
        v18 = sub_1000097AC(v7->_nextTime);
        v19 = v7->_nextTime;
        *buf = 138544386;
        v28 = v16;
        v29 = 2114;
        v30 = *&v17;
        v31 = 2048;
        v32 = *&v9;
        v33 = 2114;
        v34 = v18;
        v35 = 2048;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, next=%{public}@/%lld(was %{public}@/%lld)", buf, 0x34u);
      }

      dispatch_source_set_timer(v7->_source, v9, (a3 * 1000000000.0), 0x1DCD6500uLL);
      v7->_nextTime = v9;
    }

    goto LABEL_7;
  }

  v20 = sub_100001A30(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [(UADispatchScheduler *)v7 name];
    v22 = sub_1000097AC(v7->_nextTime);
    [(UADispatchScheduler *)v7 frequency];
    *buf = 138543874;
    v28 = v21;
    v29 = 2114;
    v30 = *&v22;
    v31 = 2048;
    v32 = v23 * 1000000000.0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, next=NOW(was %{public}@) freq=%g", buf, 0x20u);
  }

  objc_sync_exit(v7);
  v24 = [(UADispatchScheduler *)v7 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000285E0;
  block[3] = &unk_1000C4D10;
  block[4] = v7;
  dispatch_async(v24, block);

  return 1;
}

- (BOOL)scheduleAt:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceNow];
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(UADispatchScheduler *)self scheduleNext:v6];

  return v7;
}

- (void)updateFrequency:(double)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v4->_frequency = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UADispatchScheduler *)v4 name];
    v7 = sub_1000097AC(v4->_nextTime);
    [(UADispatchScheduler *)v4 frequency];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = v8 * 1000000000.0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, setFreq, next=%{public}@ freq=%g", &v10, 0x20u);
  }

  v9 = [(UADispatchScheduler *)v4 source];
  dispatch_source_set_timer(v9, [(UADispatchScheduler *)v4 nextTime], 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

  objc_sync_exit(v4);
}

- (void)reset
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UADispatchScheduler *)v2 name];
    v5 = sub_1000097AC(v2->_nextTime);
    [(UADispatchScheduler *)v2 frequency];
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2048;
    v13 = v6 * 1000000000.0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, RESET, next=FOREVER(was %{public}@) freq=%g", &v8, 0x20u);
  }

  v2->_nextTime = -1;
  v7 = [(UADispatchScheduler *)v2 source];
  dispatch_source_set_timer(v7, v2->_nextTime, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);

  objc_sync_exit(v2);
}

- (void)suspend
{
  v3 = [(UADispatchScheduler *)self executingGroup];
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = [(UADispatchScheduler *)self source];
  dispatch_suspend(v4);
}

- (void)waitUntilComplete
{
  v3 = [(UADispatchScheduler *)self executingGroup];
  if (v3)
  {
    group = v3;
    v4 = self;
    objc_sync_enter(v4);
    executingGroup = v4->_executingGroup;
    v4->_executingGroup = 0;

    objc_sync_exit(v4);
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    v3 = group;
  }
}

- (id)nextRunTimeString
{
  v2 = [(UADispatchScheduler *)self nextTime];

  return sub_1000097AC(v2);
}

@end