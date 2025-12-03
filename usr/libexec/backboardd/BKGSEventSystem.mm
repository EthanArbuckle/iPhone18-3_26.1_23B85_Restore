@interface BKGSEventSystem
+ (id)sharedInstance;
- (BKGSEventSystem)init;
- (void)_handleEvent:(__GSEvent *)event;
@end

@implementation BKGSEventSystem

- (void)_handleEvent:(__GSEvent *)event
{
  Type = GSEventGetType();
  if (Type == 50)
  {
    v7 = +[BKHIDSystemInterface sharedInstance];
    [v7 injectGSEvent:event];
  }

  else
  {
    v5 = Type;
    if (Type == 100)
    {
      v6 = sub_100052774();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        SenderPID = GSEventGetSenderPID();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring call to deprecated GSEventResetIdleTimer received from %d", buf, 8u);
      }
    }

    else
    {
      v6 = BKLogEventDelivery();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        SenderPID = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "_handleEvent: Ignoring GSEvent type:%d.", buf, 8u);
      }
    }
  }
}

- (BKGSEventSystem)init
{
  v4.receiver = self;
  v4.super_class = BKGSEventSystem;
  v2 = [(BKGSEventSystem *)&v4 init];
  if (v2)
  {
    GSEventRegisterEventCallBack();
    GSEventInitializeWorkspaceWithQueue();
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036C30;
  block[3] = &unk_1000FC018;
  block[4] = self;
  if (qword_100125E40 != -1)
  {
    dispatch_once(&qword_100125E40, block);
  }

  v2 = qword_100125E38;

  return v2;
}

@end