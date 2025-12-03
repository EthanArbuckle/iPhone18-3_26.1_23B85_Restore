@interface BRCDeadlineSource
- (BOOL)willRunEvenHandler;
- (BRCDeadlineSource)initWithScheduler:(id)scheduler name:(id)name;
- (id)description;
- (void)cancel;
- (void)resume;
- (void)runEventHandler;
- (void)signalWithDeadline:(int64_t)deadline extend:(BOOL)extend;
- (void)suspend;
@end

@implementation BRCDeadlineSource

- (BOOL)willRunEvenHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_suspendCount <= 0 && !selfCopy->_cancelled;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)runEventHandler
{
  dispatch_assert_queue_V2(self->_workloop);
  obj = objc_loadWeakRetained(&self->_scheduler);
  objc_sync_enter(obj);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_suspendCount > 0 || selfCopy->_cancelled)
  {
    selfCopy->_signaled = 1;
    selfCopy->_deadline = 0;
    objc_sync_exit(selfCopy);

    objc_sync_exit(obj);
  }

  else
  {
    selfCopy->_signaled = 0;
    selfCopy->_deadline = 0x7FFFFFFFFFFFFFFFLL;
    objc_sync_exit(selfCopy);

    objc_sync_exit(obj);
    obj = [(BRCDeadlineSource *)selfCopy eventHandler];
    obj[2]();
  }
}

- (void)suspend
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_suspendCount;
  objc_sync_exit(obj);
}

- (void)resume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspendCount = selfCopy->_suspendCount;
  selfCopy->_suspendCount = suspendCount - 1;
  if (suspendCount <= 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(BRCDeadlineSource *)v5 resume];
    }

    if (selfCopy->_suspendCount)
    {
      goto LABEL_3;
    }
  }

  else if (suspendCount != 1)
  {
LABEL_3:
    objc_sync_exit(selfCopy);
    WeakRetained = selfCopy;
    goto LABEL_9;
  }

  signaled = selfCopy->_signaled;
  objc_sync_exit(selfCopy);

  if (!signaled)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_scheduler);
  objc_sync_enter(WeakRetained);
  [(BRCDeadlineSource *)selfCopy signalWithDeadline:selfCopy->_deadline];
  objc_sync_exit(WeakRetained);
LABEL_9:
}

- (BRCDeadlineSource)initWithScheduler:(id)scheduler name:(id)name
{
  schedulerCopy = scheduler;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = BRCDeadlineSource;
  v8 = [(BRCDeadlineSource *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scheduler, schedulerCopy);
    fairScheduler = [schedulerCopy fairScheduler];
    workloop = [fairScheduler workloop];
    workloop = v9->_workloop;
    v9->_workloop = workloop;

    v9->_deadline = 0x7FFFFFFFFFFFFFFFLL;
    v9->_suspendCount = 1;
    objc_storeStrong(&v9->_name, name);
  }

  return v9;
}

- (id)description
{
  deadline = self->_deadline;
  brc_current_date_nsec();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_cancelled)
  {
    v5 = @"cancelled";
  }

  else if (selfCopy->_suspendCount < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"suspended (%d)", selfCopy->_suspendCount];
  }

  objc_sync_exit(selfCopy);

  if (!v5)
  {
    if (brc_is_before_deadline())
    {
      v5 = @"ready";
    }

    else if (deadline == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = @"idle";
    }

    else
    {
      v6 = MEMORY[0x277CCACA8];
      brc_interval_from_nsec();
      v5 = [v6 stringWithFormat:@"ready in %.3fs", v7];
    }
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<deadline %@: %@>", selfCopy->_name, v5];

  return v8;
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = 1;
  objc_sync_exit(obj);
}

- (void)signalWithDeadline:(int64_t)deadline extend:(BOOL)extend
{
  extendCopy = extend;
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v8 = WeakRetained;
    objc_sync_enter(v8);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_signaled = 1;
    objc_sync_exit(selfCopy);

    if (selfCopy->_deadline >= deadline || extendCopy)
    {
      selfCopy->_deadline = deadline;
      [v8 addSource:selfCopy deadline:deadline];
    }

    objc_sync_exit(v8);

    WeakRetained = v10;
  }
}

@end