@interface VMDaemon
+ (id)sharedDaemon;
- (VMDaemon)init;
- (id)unlock_if_needed:(BOOL *)a3;
- (void)executeHandlerForNotificationWithName:(id)a3 info:(id)a4;
- (void)handleVMDeviceUnlockedNotification:(id)a3;
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
    v5 = [(VMDaemon *)v2 queue];
    v6 = [(VMTelephonyClient *)v4 initWithQueue:v5];
    [(VMDaemon *)v2 setTelephonyClient:v6];

    initImapNetworkLayer();
    v7 = +[VMSharedProtectionObserver sharedProtectionObserver];
    -[VMDaemon setLocked:](v2, "setLocked:", [v7 hasDeviceBeenUnlockedSinceBoot] ^ 1);

    v8 = sub_100002784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VMDaemon *)v2 locked];
      v10 = @"NOT locked";
      *buf = 136315650;
      v32 = "";
      if (v9)
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
    v12 = [(VMDaemon *)v2 queue];
    v13 = [(VMDaemon *)v2 telephonyClient];
    v14 = [(VMVoicemailService *)v11 initWithTelephonyClient:v12 telephonyClient:v13];
    [(VMDaemon *)v2 setVoicemailService:v14];

    if ([(VMDaemon *)v2 locked])
    {
      v15 = [VMTelephonyService alloc];
      v16 = [(VMDaemon *)v2 queue];
      v17 = [(VMDaemon *)v2 telephonyClient];
      v18 = [(VMTelephonyService *)v15 initWithTelephonyClient:v16 telephonyClient:v17];
      [(VMDaemon *)v2 setTelephonyService:v18];
    }

    else
    {
      v19 = [(VMDaemon *)v2 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000410A0;
      block[3] = &unk_1000EE5B8;
      v29 = v2;
      dispatch_async(v19, block);

      v16 = v29;
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
  v3 = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000412D8;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)unlock_if_needed:(BOOL *)a3
{
  v5 = [(VMDaemon *)self queue];
  dispatch_assert_queue_V2(v5);

  if (a3)
  {
    *a3 = [(VMDaemon *)self locked];
  }

  if (![(VMDaemon *)self locked])
  {
    goto LABEL_8;
  }

  v6 = +[VMSharedProtectionObserver sharedProtectionObserver];
  v7 = [v6 checkUnlockSinceBootState];

  if (v7)
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
    v9 = [(VMDaemon *)self voicemailService];
    [v9 full_start];

LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
LABEL_10:

  return v10;
}

- (void)executeHandlerForNotificationWithName:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041638;
  block[3] = &unk_1000ED478;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleVMDeviceUnlockedNotification:(id)a3
{
  v4 = a3;
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
    v16 = v4;
    v6 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling %@", buf, 0x2Au);
  }

  v7 = [(VMDaemon *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041800;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(v7, block);
}

@end