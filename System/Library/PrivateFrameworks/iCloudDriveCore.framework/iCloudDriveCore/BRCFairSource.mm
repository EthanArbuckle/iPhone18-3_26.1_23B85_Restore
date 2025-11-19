@interface BRCFairSource
- (BRCFairSource)initWithName:(id)a3 scheduler:(id)a4;
- (id)description;
- (void)_runEventHandler;
- (void)cancel;
- (void)resume;
- (void)signal;
- (void)suspend;
@end

@implementation BRCFairSource

- (void)_runEventHandler
{
  dispatch_assert_queue_V2(self->_workloop);
  obj = self;
  objc_sync_enter(obj);
  if (obj->_suspendCount > 0 || obj->_cancelled)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_signaled = 0;
    objc_sync_exit(obj);

    obj = [(BRCFairSource *)obj eventHandler];
    (obj->_name)();
  }
}

- (void)signal
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_signaled = 1;
  suspendCount = v2->_suspendCount;
  objc_sync_exit(v2);

  if (suspendCount <= 0)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_scheduler);
    [WeakRetained signalSourceForBitIndex:v2->_schedulerBitIndex];
  }
}

- (BRCFairSource)initWithName:(id)a3 scheduler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCFairSource;
  v9 = [(BRCFairSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeWeak(&v10->_scheduler, v8);
    [v8 addSource:v10];
    v10->_suspendCount = 1;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = self->_name;
  workloop = self->_workloop;
  if (workloop)
  {
    label = dispatch_queue_get_label(workloop);
  }

  else
  {
    label = "(no-queue)";
  }

  return [v3 stringWithFormat:@"<%@:%p %@ on:%s>", v4, self, name, label];
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = 1;
  objc_sync_exit(obj);
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
  if (suspendCount <= 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(BRCFairSource *)v7 resume];
    }

    suspendCount = v2->_suspendCount;
  }

  v4 = suspendCount - 1;
  v2->_suspendCount = v4;
  if (v4)
  {
    objc_sync_exit(v2);
  }

  else
  {
    signaled = v2->_signaled;
    objc_sync_exit(v2);

    if (!signaled)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&v2->_scheduler);
    [(BRCFairSource *)WeakRetained signalSourceForBitIndex:v2->_schedulerBitIndex];
    v2 = WeakRetained;
  }
}

@end