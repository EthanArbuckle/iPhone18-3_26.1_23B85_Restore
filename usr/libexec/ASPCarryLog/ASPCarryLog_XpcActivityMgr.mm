@interface ASPCarryLog_XpcActivityMgr
- (ASPCarryLog_XpcActivityMgr)initWithXpcActivity:(id)activity;
- (BOOL)shouldDeferXpcActivity;
- (BOOL)tryDeferXpcActivity;
- (void)forceDeferXpcActivity;
@end

@implementation ASPCarryLog_XpcActivityMgr

- (ASPCarryLog_XpcActivityMgr)initWithXpcActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ASPCarryLog_XpcActivityMgr;
  v6 = [(ASPCarryLog_XpcActivityMgr *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcActivity, activity);
    v7->_isActivityDeferred = 0;
    v8 = v7;
  }

  return v7;
}

- (BOOL)shouldDeferXpcActivity
{
  xpcActivity = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
  should_defer = xpc_activity_should_defer(xpcActivity);

  return should_defer;
}

- (BOOL)tryDeferXpcActivity
{
  if ([(ASPCarryLog_XpcActivityMgr *)self isActivityDeferred])
  {
    v3 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100049734(v3);
    }
  }

  else
  {
    xpcActivity = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
    if (xpcActivity)
    {
      v5 = xpcActivity;
      shouldDeferXpcActivity = [(ASPCarryLog_XpcActivityMgr *)self shouldDeferXpcActivity];

      if (shouldDeferXpcActivity)
      {
        [(ASPCarryLog_XpcActivityMgr *)self setIsActivityDeferred:1];
        xpcActivity2 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
        v8 = xpc_activity_set_state(xpcActivity2, 3);

        v9 = oslog;
        v10 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
        if (v8)
        {
          if (v10)
          {
            sub_1000496A4(v9);
          }
        }

        else if (v10)
        {
          sub_100049614(v9);
        }
      }
    }
  }

  return [(ASPCarryLog_XpcActivityMgr *)self isActivityDeferred];
}

- (void)forceDeferXpcActivity
{
  [(ASPCarryLog_XpcActivityMgr *)self setIsActivityDeferred:1];
  xpcActivity = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];

  if (xpcActivity)
  {
    xpcActivity2 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
    v5 = xpc_activity_set_state(xpcActivity2, 3);

    v6 = oslog;
    if (v5)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        xpcActivity3 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
        v9 = 134217984;
        v10 = xpcActivity3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "xpc_activity %p force deferred!", &v9, 0xCu);
      }
    }

    else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000497D4(v6);
    }
  }
}

@end