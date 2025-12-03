@interface CSCoreAnalyticsXPCManager
- (CSCoreAnalyticsXPCManager)initWithMartyUploadHandler:(id)handler andKappaHandler:(id)kappaHandler andIgneousHandler:(id)igneousHandler;
- (void)registerForCoreAnalyticsUserInfoWithCriteria:(id)criteria;
- (void)registerForCoreAnalyticsUserInfoWithExplicitCriteria;
@end

@implementation CSCoreAnalyticsXPCManager

- (CSCoreAnalyticsXPCManager)initWithMartyUploadHandler:(id)handler andKappaHandler:(id)kappaHandler andIgneousHandler:(id)igneousHandler
{
  handlerCopy = handler;
  kappaHandlerCopy = kappaHandler;
  igneousHandlerCopy = igneousHandler;
  v26.receiver = self;
  v26.super_class = CSCoreAnalyticsXPCManager;
  v11 = [(CSCoreAnalyticsXPCManager *)&v26 init];
  if (v11)
  {
    v12 = +[CSPersistentConfiguration sharedConfiguration];
    v11->_xpcIntervalInSecs = [v12 integerForKey:@"CoreAnalyticsUserInfoCadence"];

    if (!v11->_xpcIntervalInSecs)
    {
      v11->_xpcIntervalInSecs = 86400;
    }

    if (qword_1004568A8 != -1)
    {
      sub_1002EA4FC();
    }

    v13 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      xpcIntervalInSecs = v11->_xpcIntervalInSecs;
      *buf = 134217984;
      v28 = xpcIntervalInSecs;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "configure to send after %llu seconds", buf, 0xCu);
    }

    v15 = objc_retainBlock(handlerCopy);
    martyHandler = v11->_martyHandler;
    v11->_martyHandler = v15;

    v17 = objc_retainBlock(kappaHandlerCopy);
    kappaHandler = v11->_kappaHandler;
    v11->_kappaHandler = v17;

    v19 = objc_retainBlock(igneousHandlerCopy);
    igneousHandler = v11->_igneousHandler;
    v11->_igneousHandler = v19;

    v21 = +[CSPersistentConfiguration sharedConfiguration];
    v22 = [v21 BOOLForKey:@"CAUnmanagedXPCActivity"];

    if (v22)
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002EA4FC();
      }

      v23 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "unmanaged xpc activity", buf, 2u);
      }

      [(CSCoreAnalyticsXPCManager *)v11 registerForCoreAnalyticsUserInfoWithExplicitCriteria];
    }

    else
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002EA4FC();
      }

      v24 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "launchd managed xpc activity", buf, 2u);
      }

      [(CSCoreAnalyticsXPCManager *)v11 registerForCoreAnalyticsUserInfo];
    }
  }

  return v11;
}

- (void)registerForCoreAnalyticsUserInfoWithExplicitCriteria
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, self->_xpcIntervalInSecs);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP, 1);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  [(CSCoreAnalyticsXPCManager *)self registerForCoreAnalyticsUserInfoWithCriteria:xdict];
}

- (void)registerForCoreAnalyticsUserInfoWithCriteria:(id)criteria
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1002E9BC0;
  handler[3] = &unk_1004318E8;
  handler[4] = self;
  xpc_activity_register("com.apple.anomalydetectiond.CoreAnalytics.UserInfo", criteria, handler);
}

@end