@interface VMDaemon
+ (id)sharedDaemon;
- (VMDaemon)init;
- (id)unlock_if_needed:(BOOL *)unlock_if_needed;
- (void)executeHandlerForNotificationWithName:(id)name info:(id)info;
- (void)handleVMDeviceUnlockedNotification:(id)notification;
- (void)start;
@end

@implementation VMDaemon

+ (id)sharedDaemon
{
  if (qword_10010D8A8 != -1)
  {
    sub_10009CF04();
  }

  v3 = qword_10010D8A0;

  return v3;
}

- (VMDaemon)init
{
  v30.receiver = self;
  v30.super_class = VMDaemon;
  v2 = [(VMDaemon *)&v30 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.vmd.mainProcessingQueue", 0);
    [(VMDaemon *)v2 setQueue:v3];

    v4 = [VMTelephonyClient alloc];
    queue = [(VMDaemon *)v2 queue];
    v6 = [(VMTelephonyClient *)v4 initWithQueue:queue];
    [(VMDaemon *)v2 setTelephonyClient:v6];

    initImapNetworkLayer();
    v7 = +[VMSharedProtectionObserver sharedProtectionObserver];
    -[VMDaemon setLocked:](v2, "setLocked:", [v7 hasDeviceBeenUnlockedSinceBoot] ^ 1);

    v8 = sub_100002784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      locked = [(VMDaemon *)v2 locked];
      v10 = @"NOT locked";
      *buf = 136315650;
      v32 = "";
      if (locked)
      {
        v10 = @"locked";
      }

      v33 = 2080;
      v34 = "";
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice is %@", buf, 0x20u);
    }

    v11 = [VMVoicemailService alloc];
    queue2 = [(VMDaemon *)v2 queue];
    telephonyClient = [(VMDaemon *)v2 telephonyClient];
    v14 = [(VMVoicemailService *)v11 initWithTelephonyClient:queue2 telephonyClient:telephonyClient];
    [(VMDaemon *)v2 setVoicemailService:v14];

    if ([(VMDaemon *)v2 locked])
    {
      v15 = [VMTelephonyService alloc];
      queue3 = [(VMDaemon *)v2 queue];
      telephonyClient2 = [(VMDaemon *)v2 telephonyClient];
      v18 = [(VMTelephonyService *)v15 initWithTelephonyClient:queue3 telephonyClient:telephonyClient2];
      [(VMDaemon *)v2 setTelephonyService:v18];
    }

    else
    {
      queue4 = [(VMDaemon *)v2 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000410A0;
      block[3] = &unk_1000EE5B8;
      v29 = v2;
      dispatch_async(queue4, block);

      queue3 = v29;
    }
  }

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000410E4;
  v26 = &unk_1000EE650;
  v20 = v2;
  v27 = v20;
  xpc_set_event_stream_handler("com.apple.CTTelephonyCenter", &_dispatch_main_q, &v23);
  v21 = [NSNotificationCenter defaultCenter:v23];
  [v21 addObserver:v20 selector:"handleVMDeviceUnlockedNotification:" name:@"kVMDeviceUnlockedNotification" object:0];

  return v20;
}

- (void)start
{
  queue = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000412D8;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)unlock_if_needed:(BOOL *)unlock_if_needed
{
  queue = [(VMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  if (unlock_if_needed)
  {
    *unlock_if_needed = [(VMDaemon *)self locked];
  }

  if (![(VMDaemon *)self locked])
  {
    goto LABEL_8;
  }

  v6 = +[VMSharedProtectionObserver sharedProtectionObserver];
  checkUnlockSinceBootState = [v6 checkUnlockSinceBootState];

  if (checkUnlockSinceBootState)
  {
    v8 = sub_100002784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "";
      v14 = 2080;
      v15 = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sDaemon was locked - starting", &v12, 0x16u);
    }

    [(VMDaemon *)self setLocked:0];
    voicemailService = [(VMDaemon *)self voicemailService];
    [voicemailService full_start];

LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
LABEL_10:

  return v10;
}

- (void)executeHandlerForNotificationWithName:(id)name info:(id)info
{
  nameCopy = name;
  infoCopy = info;
  queue = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041638;
  block[3] = &unk_1000ED478;
  block[4] = self;
  v12 = nameCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

- (void)handleVMDeviceUnlockedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100002784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = notificationCopy;
    v6 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling %@", buf, 0x2Au);
  }

  queue = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041800;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end