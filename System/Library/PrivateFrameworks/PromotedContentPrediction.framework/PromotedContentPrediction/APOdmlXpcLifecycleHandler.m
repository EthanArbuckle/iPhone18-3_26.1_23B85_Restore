@interface APOdmlXpcLifecycleHandler
- (APOdmlXpcLifecycleHandler)initWithActivity:(id)a3;
- (BOOL)continueTask;
- (BOOL)deferTask;
- (BOOL)finishTask;
- (BOOL)shouldDefer;
- (BOOL)taskCanContinueForTime:(id)a3;
- (BOOL)taskIsContinuing;
- (BOOL)taskIsDeferred;
- (void)_backgroundDeferralCheck:(id)a3 completion:(id)a4;
- (void)endBackgroundDeferralCheck;
- (void)startBackgroundDeferralCheckForTime:(id)a3 completionHandler:(id)a4;
@end

@implementation APOdmlXpcLifecycleHandler

- (APOdmlXpcLifecycleHandler)initWithActivity:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = APOdmlXpcLifecycleHandler;
  v6 = [(APOdmlXpcLifecycleHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpc_activity, a3);
    v7->_performDeferralCheck = 0;
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;
  }

  return v7;
}

- (BOOL)continueTask
{
  v2 = self;
  objc_sync_enter(v2);
  xpc_activity = v2->_xpc_activity;
  if (xpc_activity)
  {
    v4 = xpc_activity_set_state(xpc_activity, 4);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)taskIsContinuing
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = xpc_activity_get_state(v2->_xpc_activity) == 4;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)finishTask
{
  xpc_activity = self->_xpc_activity;
  if (xpc_activity)
  {
    LOBYTE(xpc_activity) = xpc_activity_set_state(xpc_activity, 5);
  }

  return xpc_activity;
}

- (BOOL)shouldDefer
{
  v2 = self;
  objc_sync_enter(v2);
  xpc_activity = v2->_xpc_activity;
  if (xpc_activity)
  {
    should_defer = xpc_activity_should_defer(xpc_activity);
  }

  else
  {
    should_defer = 0;
  }

  objc_sync_exit(v2);

  return should_defer;
}

- (BOOL)deferTask
{
  v2 = self;
  objc_sync_enter(v2);
  xpc_activity = v2->_xpc_activity;
  if (xpc_activity)
  {
    v4 = xpc_activity_set_state(xpc_activity, 3);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)taskIsDeferred
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = xpc_activity_get_state(v2->_xpc_activity) == 3;
  objc_sync_exit(v2);

  return v3;
}

- (void)_backgroundDeferralCheck:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EEEA00;
  block[3] = &unk_279AC68B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

- (void)startBackgroundDeferralCheckForTime:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = self;
  v11 = a4;
  objc_sync_enter(v7);
  v7->_performDeferralCheck = 1;
  startDate = v7->_startDate;
  v7->_startDate = v6;
  v9 = v6;

  objc_sync_exit(v7);
  objc_msgSend__backgroundDeferralCheck_completion_(v7, v10, v7->_startDate, v11);
}

- (BOOL)taskCanContinueForTime:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (objc_msgSend_isEqualToDate_(v4, v6, v5->_startDate))
  {
    IsContinuing = objc_msgSend_taskIsContinuing(v5, v7, v8);
  }

  else
  {
    IsContinuing = 0;
  }

  objc_sync_exit(v5);

  return IsContinuing;
}

- (void)endBackgroundDeferralCheck
{
  obj = self;
  objc_sync_enter(obj);
  obj->_performDeferralCheck = 0;
  startDate = obj->_startDate;
  obj->_startDate = 0;

  objc_sync_exit(obj);
}

@end