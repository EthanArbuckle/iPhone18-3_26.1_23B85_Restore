@interface ASPCarryLog_XpcActivityMgr
- (ASPCarryLog_XpcActivityMgr)initWithXpcActivity:(id)a3;
- (BOOL)shouldDeferXpcActivity;
- (BOOL)tryDeferXpcActivity;
- (void)forceDeferXpcActivity;
@end

@implementation ASPCarryLog_XpcActivityMgr

- (ASPCarryLog_XpcActivityMgr)initWithXpcActivity:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASPCarryLog_XpcActivityMgr;
  v6 = [(ASPCarryLog_XpcActivityMgr *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcActivity, a3);
    v7->_isActivityDeferred = 0;
    v8 = v7;
  }

  return v7;
}

- (BOOL)shouldDeferXpcActivity
{
  v2 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
  should_defer = xpc_activity_should_defer(v2);

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
    v4 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
    if (v4)
    {
      v5 = v4;
      v6 = [(ASPCarryLog_XpcActivityMgr *)self shouldDeferXpcActivity];

      if (v6)
      {
        [(ASPCarryLog_XpcActivityMgr *)self setIsActivityDeferred:1];
        v7 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
        v8 = xpc_activity_set_state(v7, 3);

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
  v3 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];

  if (v3)
  {
    v4 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
    v5 = xpc_activity_set_state(v4, 3);

    v6 = oslog;
    if (v5)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [(ASPCarryLog_XpcActivityMgr *)self xpcActivity];
        v9 = 134217984;
        v10 = v8;
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