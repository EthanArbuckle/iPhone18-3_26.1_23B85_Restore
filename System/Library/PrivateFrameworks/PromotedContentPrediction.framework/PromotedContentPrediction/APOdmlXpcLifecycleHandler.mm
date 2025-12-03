@interface APOdmlXpcLifecycleHandler
- (APOdmlXpcLifecycleHandler)initWithActivity:(id)activity;
- (BOOL)continueTask;
- (BOOL)deferTask;
- (BOOL)finishTask;
- (BOOL)shouldDefer;
- (BOOL)taskCanContinueForTime:(id)time;
- (BOOL)taskIsContinuing;
- (BOOL)taskIsDeferred;
- (void)_backgroundDeferralCheck:(id)check completion:(id)completion;
- (void)endBackgroundDeferralCheck;
- (void)startBackgroundDeferralCheckForTime:(id)time completionHandler:(id)handler;
@end

@implementation APOdmlXpcLifecycleHandler

- (APOdmlXpcLifecycleHandler)initWithActivity:(id)activity
{
  activityCopy = activity;
  v11.receiver = self;
  v11.super_class = APOdmlXpcLifecycleHandler;
  v6 = [(APOdmlXpcLifecycleHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpc_activity, activity);
    v7->_performDeferralCheck = 0;
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;
  }

  return v7;
}

- (BOOL)continueTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpc_activity = selfCopy->_xpc_activity;
  if (xpc_activity)
  {
    v4 = xpc_activity_set_state(xpc_activity, 4);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)taskIsContinuing
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = xpc_activity_get_state(selfCopy->_xpc_activity) == 4;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpc_activity = selfCopy->_xpc_activity;
  if (xpc_activity)
  {
    should_defer = xpc_activity_should_defer(xpc_activity);
  }

  else
  {
    should_defer = 0;
  }

  objc_sync_exit(selfCopy);

  return should_defer;
}

- (BOOL)deferTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpc_activity = selfCopy->_xpc_activity;
  if (xpc_activity)
  {
    v4 = xpc_activity_set_state(xpc_activity, 3);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)taskIsDeferred
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = xpc_activity_get_state(selfCopy->_xpc_activity) == 3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_backgroundDeferralCheck:(id)check completion:(id)completion
{
  checkCopy = check;
  completionCopy = completion;
  v8 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EEEA00;
  block[3] = &unk_279AC68B0;
  block[4] = self;
  v12 = checkCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = checkCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

- (void)startBackgroundDeferralCheckForTime:(id)time completionHandler:(id)handler
{
  timeCopy = time;
  selfCopy = self;
  handlerCopy = handler;
  objc_sync_enter(selfCopy);
  selfCopy->_performDeferralCheck = 1;
  startDate = selfCopy->_startDate;
  selfCopy->_startDate = timeCopy;
  v9 = timeCopy;

  objc_sync_exit(selfCopy);
  objc_msgSend__backgroundDeferralCheck_completion_(selfCopy, v10, selfCopy->_startDate, handlerCopy);
}

- (BOOL)taskCanContinueForTime:(id)time
{
  timeCopy = time;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_isEqualToDate_(timeCopy, v6, selfCopy->_startDate))
  {
    IsContinuing = objc_msgSend_taskIsContinuing(selfCopy, v7, v8);
  }

  else
  {
    IsContinuing = 0;
  }

  objc_sync_exit(selfCopy);

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