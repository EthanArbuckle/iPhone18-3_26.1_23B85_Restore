@interface BRCDeadlineSource
- (BOOL)willRunEvenHandler;
- (BRCDeadlineSource)initWithScheduler:(id)a3 name:(id)a4;
- (id)description;
- (void)cancel;
- (void)resume;
- (void)runEventHandler;
- (void)signalWithDeadline:(int64_t)a3 extend:(BOOL)a4;
- (void)suspend;
@end

@implementation BRCDeadlineSource

- (BOOL)willRunEvenHandler
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_suspendCount <= 0 && !v2->_cancelled;
  objc_sync_exit(v2);

  return v3;
}

- (void)runEventHandler
{
  dispatch_assert_queue_V2(self->_workloop);
  obj = objc_loadWeakRetained(&self->_scheduler);
  objc_sync_enter(obj);
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_suspendCount > 0 || v3->_cancelled)
  {
    v3->_signaled = 1;
    v3->_deadline = 0;
    objc_sync_exit(v3);

    objc_sync_exit(obj);
  }

  else
  {
    v3->_signaled = 0;
    v3->_deadline = 0x7FFFFFFFFFFFFFFFLL;
    objc_sync_exit(v3);

    objc_sync_exit(obj);
    obj = [(BRCDeadlineSource *)v3 eventHandler];
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
  v2 = self;
  objc_sync_enter(v2);
  suspendCount = v2->_suspendCount;
  v2->_suspendCount = suspendCount - 1;
  if (suspendCount <= 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(BRCDeadlineSource *)v5 resume];
    }

    if (v2->_suspendCount)
    {
      goto LABEL_3;
    }
  }

  else if (suspendCount != 1)
  {
LABEL_3:
    objc_sync_exit(v2);
    WeakRetained = v2;
    goto LABEL_9;
  }

  signaled = v2->_signaled;
  objc_sync_exit(v2);

  if (!signaled)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&v2->_scheduler);
  objc_sync_enter(WeakRetained);
  [(BRCDeadlineSource *)v2 signalWithDeadline:v2->_deadline];
  objc_sync_exit(WeakRetained);
LABEL_9:
}

- (BRCDeadlineSource)initWithScheduler:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BRCDeadlineSource;
  v8 = [(BRCDeadlineSource *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scheduler, v6);
    v10 = [v6 fairScheduler];
    v11 = [v10 workloop];
    workloop = v9->_workloop;
    v9->_workloop = v11;

    v9->_deadline = 0x7FFFFFFFFFFFFFFFLL;
    v9->_suspendCount = 1;
    objc_storeStrong(&v9->_name, a4);
  }

  return v9;
}

- (id)description
{
  deadline = self->_deadline;
  brc_current_date_nsec();
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_cancelled)
  {
    v5 = @"cancelled";
  }

  else if (v4->_suspendCount < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"suspended (%d)", v4->_suspendCount];
  }

  objc_sync_exit(v4);

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

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<deadline %@: %@>", v4->_name, v5];

  return v8;
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = 1;
  objc_sync_exit(obj);
}

- (void)signalWithDeadline:(int64_t)a3 extend:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v8 = WeakRetained;
    objc_sync_enter(v8);
    v9 = self;
    objc_sync_enter(v9);
    v9->_signaled = 1;
    objc_sync_exit(v9);

    if (v9->_deadline >= a3 || v4)
    {
      v9->_deadline = a3;
      [v8 addSource:v9 deadline:a3];
    }

    objc_sync_exit(v8);

    WeakRetained = v10;
  }
}

@end