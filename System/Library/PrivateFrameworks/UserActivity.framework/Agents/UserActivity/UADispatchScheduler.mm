@interface UADispatchScheduler
+ (id)dispatchScheduler:(id)scheduler frequency:(double)frequency queue:(id)queue block:(id)block;
- (BOOL)scheduleAt:(id)at;
- (BOOL)scheduleNext:(double)next;
- (id)init:(id)init frequency:(double)frequency queue:(id)queue block:(id)block;
- (id)nextRunTimeString;
- (void)_doIt;
- (void)doIt;
- (void)reset;
- (void)resume;
- (void)suspend;
- (void)updateFrequency:(double)frequency;
- (void)waitUntilComplete;
@end

@implementation UADispatchScheduler

- (void)_doIt
{
  queue = [(UADispatchScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  executingGroup = [(UADispatchScheduler *)self executingGroup];
  dispatch_group_enter(executingGroup);

  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    name = [(UADispatchScheduler *)self name];
    v14 = 138543362;
    v15 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, run.  ", &v14, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_nextTime = -1;
  dispatch_source_set_timer(selfCopy->_source, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  objc_sync_exit(selfCopy);

  ++selfCopy->_runCount;
  block = [(UADispatchScheduler *)selfCopy block];
  block[2]();

  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    name2 = [(UADispatchScheduler *)selfCopy name];
    v11 = sub_1000097AC(selfCopy->_nextTime);
    v14 = 138543618;
    v15 = name2;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, DONE run, next=%{public}@", &v14, 0x16u);
  }

  v12 = selfCopy;
  objc_sync_enter(v12);
  dispatch_source_set_timer(selfCopy->_source, selfCopy->_nextTime, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  objc_sync_exit(v12);

  executingGroup2 = [(UADispatchScheduler *)v12 executingGroup];
  dispatch_group_leave(executingGroup2);
}

- (void)doIt
{
  queue = [(UADispatchScheduler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A90;
  block[3] = &unk_1000C4D10;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resume
{
  source = [(UADispatchScheduler *)self source];
  dispatch_resume(source);
}

- (id)init:(id)init frequency:(double)frequency queue:(id)queue block:(id)block
{
  initCopy = init;
  queueCopy = queue;
  blockCopy = block;
  v29.receiver = self;
  v29.super_class = UADispatchScheduler;
  v13 = [(UADispatchScheduler *)&v29 init];
  v14 = v13;
  if (v13)
  {
    [(UADispatchScheduler *)v13 setName:initCopy];
    [(UADispatchScheduler *)v14 setFrequency:frequency];
    v14->_nextTime = -1;
    objc_storeStrong(&v14->_queue, queue);
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
    source = v14->_source;
    v14->_source = v15;

    v17 = dispatch_group_create();
    executingGroup = v14->_executingGroup;
    v14->_executingGroup = v17;

    v19 = objc_retainBlock(blockCopy);
    block = v14->_block;
    v14->_block = v19;

    v21 = sub_100001A30(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      name = [(UADispatchScheduler *)v14 name];
      v23 = sub_1000097AC(0xFFFFFFFFFFFFFFFFLL);
      [(UADispatchScheduler *)v14 frequency];
      *buf = 138543874;
      v31 = name;
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

+ (id)dispatchScheduler:(id)scheduler frequency:(double)frequency queue:(id)queue block:(id)block
{
  schedulerCopy = scheduler;
  queueCopy = queue;
  blockCopy = block;
  v12 = [[UADispatchScheduler alloc] init:schedulerCopy frequency:queueCopy queue:blockCopy block:frequency];

  return v12;
}

- (BOOL)scheduleNext:(double)next
{
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    name = [(UADispatchScheduler *)self name];
    *buf = 138543618;
    v28 = name;
    v29 = 2048;
    nextCopy2 = next;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@ scheduleNext, interval=%g", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (next > 315576000.0)
  {
    v8 = sub_100001A30(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SCHEDULE: Setting next time to DISPATCH_TIME_FOREVER because interval > anything reasonable", buf, 2u);
    }

    selfCopy->_nextTime = -1;
    dispatch_source_set_timer(selfCopy->_source, 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
LABEL_7:
    objc_sync_exit(selfCopy);

    return 1;
  }

  if (next > 0.0)
  {
    *&v9 = COERCE_DOUBLE(dispatch_time(0, (next * 1000000000.0)));
    v10 = sub_100001A30(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      name2 = [(UADispatchScheduler *)selfCopy name];
      sub_1000097AC(selfCopy->_nextTime);
      v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543874;
      v28 = name2;
      v29 = 2048;
      nextCopy2 = next;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, scheduling down to %f seconds(_next=%{public}@)", buf, 0x20u);
    }

    nextTime = selfCopy->_nextTime;
    if (v9 < nextTime || nextTime == -1)
    {
      v15 = sub_100001A30(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        name3 = [(UADispatchScheduler *)selfCopy name];
        v17 = sub_1000097AC(v9);
        v18 = sub_1000097AC(selfCopy->_nextTime);
        v19 = selfCopy->_nextTime;
        *buf = 138544386;
        v28 = name3;
        v29 = 2114;
        nextCopy2 = *&v17;
        v31 = 2048;
        v32 = *&v9;
        v33 = 2114;
        v34 = v18;
        v35 = 2048;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, next=%{public}@/%lld(was %{public}@/%lld)", buf, 0x34u);
      }

      dispatch_source_set_timer(selfCopy->_source, v9, (next * 1000000000.0), 0x1DCD6500uLL);
      selfCopy->_nextTime = v9;
    }

    goto LABEL_7;
  }

  v20 = sub_100001A30(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    name4 = [(UADispatchScheduler *)selfCopy name];
    v22 = sub_1000097AC(selfCopy->_nextTime);
    [(UADispatchScheduler *)selfCopy frequency];
    *buf = 138543874;
    v28 = name4;
    v29 = 2114;
    nextCopy2 = *&v22;
    v31 = 2048;
    v32 = v23 * 1000000000.0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, next=NOW(was %{public}@) freq=%g", buf, 0x20u);
  }

  objc_sync_exit(selfCopy);
  queue = [(UADispatchScheduler *)selfCopy queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000285E0;
  block[3] = &unk_1000C4D10;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  return 1;
}

- (BOOL)scheduleAt:(id)at
{
  atCopy = at;
  v5 = atCopy;
  if (atCopy)
  {
    [atCopy timeIntervalSinceNow];
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(UADispatchScheduler *)self scheduleNext:v6];

  return v7;
}

- (void)updateFrequency:(double)frequency
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_frequency = frequency;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    name = [(UADispatchScheduler *)selfCopy name];
    v7 = sub_1000097AC(selfCopy->_nextTime);
    [(UADispatchScheduler *)selfCopy frequency];
    v10 = 138543874;
    v11 = name;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = v8 * 1000000000.0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, setFreq, next=%{public}@ freq=%g", &v10, 0x20u);
  }

  source = [(UADispatchScheduler *)selfCopy source];
  dispatch_source_set_timer(source, [(UADispatchScheduler *)selfCopy nextTime], 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

  objc_sync_exit(selfCopy);
}

- (void)reset
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(UADispatchScheduler *)selfCopy name];
    v5 = sub_1000097AC(selfCopy->_nextTime);
    [(UADispatchScheduler *)selfCopy frequency];
    v8 = 138543874;
    v9 = name;
    v10 = 2114;
    v11 = v5;
    v12 = 2048;
    v13 = v6 * 1000000000.0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SCHEDULE:%{public}@, RESET, next=FOREVER(was %{public}@) freq=%g", &v8, 0x20u);
  }

  selfCopy->_nextTime = -1;
  source = [(UADispatchScheduler *)selfCopy source];
  dispatch_source_set_timer(source, selfCopy->_nextTime, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);

  objc_sync_exit(selfCopy);
}

- (void)suspend
{
  executingGroup = [(UADispatchScheduler *)self executingGroup];
  dispatch_group_wait(executingGroup, 0xFFFFFFFFFFFFFFFFLL);

  source = [(UADispatchScheduler *)self source];
  dispatch_suspend(source);
}

- (void)waitUntilComplete
{
  executingGroup = [(UADispatchScheduler *)self executingGroup];
  if (executingGroup)
  {
    group = executingGroup;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    executingGroup = selfCopy->_executingGroup;
    selfCopy->_executingGroup = 0;

    objc_sync_exit(selfCopy);
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    executingGroup = group;
  }
}

- (id)nextRunTimeString
{
  nextTime = [(UADispatchScheduler *)self nextTime];

  return sub_1000097AC(nextTime);
}

@end