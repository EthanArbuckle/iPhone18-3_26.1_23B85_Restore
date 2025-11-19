@interface SOSDaemon
+ (void)connectToDaemon;
- (SOSDaemon)init;
- (id)keepAliveFileDirectory;
- (id)keepAliveFilePath;
- (void)SOSHasActiveTriggerChanged:(id)a3;
- (void)SOSSendingLocationUpdateChanged:(id)a3;
- (void)createKeepAlivePathStateFile;
- (void)dealloc;
- (void)deleteKeepAlivePathStateFile;
- (void)languageDidChange;
- (void)releaseLocationStatusBarAssertion;
- (void)releaseMessageSendingOSTransaction;
- (void)run;
- (void)startSendingLocationUpdateNotification;
- (void)stopSendingLocationUpdateNotification;
- (void)takeLocationStatusBarAssertion;
- (void)takeMessageSendingOSTransaction;
@end

@implementation SOSDaemon

- (void)run
{
  v3 = sub_10000225C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v4 = +[NSRunLoop mainRunLoop];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100000FB4;
  v5[3] = &unk_100004230;
  v5[4] = self;
  [v4 performBlock:v5];
  [v4 run];
}

- (SOSDaemon)init
{
  v3 = sub_10000225C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "initializing SOSDaemon", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = SOSDaemon;
  v4 = [(SOSDaemon *)&v21 init];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"SOSSendingLocationUpdateChanged:" name:SOSSendingLocationUpdateChangedNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"SOSHasActiveTriggerChanged:" name:SOSHasActiveTriggerChangedNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_10000124C, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = +[SOSEngine sharedInstance];
    sosEngine = v4->_sosEngine;
    v4->_sosEngine = v8;

    v10 = [NSXPCListener alloc];
    v11 = [v10 initWithMachServiceName:SOSMachService];
    xpcListener = v4->_xpcListener;
    v4->_xpcListener = v11;

    [(NSXPCListener *)v4->_xpcListener setDelegate:v4->_sosEngine];
    [(NSXPCListener *)v4->_xpcListener resume];
    v13 = [NSXPCListener alloc];
    v14 = [v13 initWithMachServiceName:SOSStatusMachService];
    v15 = v4->_xpcListener;
    v4->_xpcListener = v14;

    v16 = v4->_xpcListener;
    v17 = [(SOSEngine *)v4->_sosEngine sosStatusManager];
    [(NSXPCListener *)v16 setDelegate:v17];

    [(NSXPCListener *)v4->_xpcListener resume];
    v18 = notify_register_dispatch(SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME, &v4->_notifyToken, &_dispatch_main_q, &stru_100004270);
    if (v18 || !notify_is_valid_token(v4->_notifyToken))
    {
      v19 = sub_10000225C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100002374(&v4->_notifyToken, v18, v19);
      }
    }

    else
    {
      notify_set_state(v4->_notifyToken, 1uLL);
    }

    notify_post(SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME);
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:SOSSendingLocationUpdateChangedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:SOSHasActiveTriggerChangedNotification object:0];

  notify_cancel(self->_notifyToken);
  v5.receiver = self;
  v5.super_class = SOSDaemon;
  [(SOSDaemon *)&v5 dealloc];
}

- (void)SOSSendingLocationUpdateChanged:(id)a3
{
  v4 = a3;
  v5 = sub_10000225C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:SOSSendingLocationUpdateValueKey];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [(SOSDaemon *)self startSendingLocationUpdateNotification];
  }

  else
  {
    [(SOSDaemon *)self stopSendingLocationUpdateNotification];
  }
}

- (void)startSendingLocationUpdateNotification
{
  v3 = sub_10000225C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [(SOSDaemon *)self createKeepAlivePathStateFile];
  [(SOSDaemon *)self takeMessageSendingOSTransaction];
  [(SOSDaemon *)self takeLocationStatusBarAssertion];
}

- (void)stopSendingLocationUpdateNotification
{
  v3 = sub_10000225C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [(SOSDaemon *)self releaseLocationStatusBarAssertion];
  [(SOSDaemon *)self releaseMessageSendingOSTransaction];
  if (!self->_sosIsStarting)
  {
    [(SOSDaemon *)self deleteKeepAlivePathStateFile];
  }
}

- (void)SOSHasActiveTriggerChanged:(id)a3
{
  v4 = a3;
  v5 = sub_10000225C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSDaemon, SOSHasActiveTriggerChanged", v8, 2u);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:SOSHasActiveTriggerValueKey];
  self->_sosIsStarting = [v7 BOOLValue];

  if (self->_sosIsStarting)
  {
    [(SOSDaemon *)self createKeepAlivePathStateFile];
  }

  else if (!self->_sendingMessagesOSTransaction)
  {
    [(SOSDaemon *)self deleteKeepAlivePathStateFile];
  }
}

- (void)takeLocationStatusBarAssertion
{
  if (+[SOSUtilities isSOSLiveActivityEnabled](SOSUtilities, "isSOSLiveActivityEnabled") && +[SOSUtilities deviceHasDynamicIsland])
  {
    v3 = sub_10000225C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not taking location status bar assertion since live activity will cover this on phone", buf, 2u);
    }
  }

  else
  {
    v4 = sub_10000225C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
    }

    v5 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:0x10000 forPID:getpid() exclusive:0 showsWhenForeground:1];
    locationSBAssertion = self->_locationSBAssertion;
    self->_locationSBAssertion = v5;

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SOS_USING_YOUR_LOCATION" value:&stru_100004398 table:0];
    [(SBSStatusBarStyleOverridesAssertion *)self->_locationSBAssertion setStatusString:v8];

    v9 = self->_locationSBAssertion;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000018C4;
    v11[3] = &unk_100004298;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000019A0;
    v10[3] = &unk_100004230;
    v10[4] = self;
    [(SBSStatusBarStyleOverridesAssertion *)v9 acquireWithHandler:v11 invalidationHandler:v10];
  }
}

- (void)releaseLocationStatusBarAssertion
{
  v3 = sub_10000225C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    locationSBAssertion = self->_locationSBAssertion;
    v6 = 138412290;
    v7 = locationSBAssertion;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_locationSBAssertion: %@", &v6, 0xCu);
  }

  [(SBSStatusBarStyleOverridesAssertion *)self->_locationSBAssertion invalidate];
  v5 = self->_locationSBAssertion;
  self->_locationSBAssertion = 0;
}

- (void)takeMessageSendingOSTransaction
{
  v3 = os_transaction_create();
  sendingMessagesOSTransaction = self->_sendingMessagesOSTransaction;
  self->_sendingMessagesOSTransaction = v3;

  _objc_release_x1();
}

- (void)releaseMessageSendingOSTransaction
{
  sendingMessagesOSTransaction = self->_sendingMessagesOSTransaction;
  self->_sendingMessagesOSTransaction = 0;
  _objc_release_x1();
}

- (id)keepAliveFileDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v7[0] = v3;
  v7[1] = @"SOS";
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSString pathWithComponents:v4];

  return v5;
}

- (id)keepAliveFilePath
{
  v3 = [(SOSDaemon *)self keepAliveFileDirectory];
  v4 = [(SOSDaemon *)self keepAliveFilename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (void)createKeepAlivePathStateFile
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(SOSDaemon *)self keepAliveFilePath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

  if ((v5 & 1) == 0)
  {
    v6 = [(SOSDaemon *)self keepAliveFileDirectory];
    v17 = 0;
    v7 = [v3 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v17];
    v8 = v17;

    v9 = sub_10000225C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SOSDaemon *)self keepAliveFileDirectory];
      *buf = 138412802;
      v19 = v10;
      v20 = 1024;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created directory at path %@ with success: %d error: %@", buf, 0x1Cu);
    }

    v11 = [(SOSDaemon *)self keepAliveFilePath];
    v16 = 0;
    v12 = [@"SOS_in_progress\n" writeToFile:v11 atomically:1 encoding:4 error:&v16];
    v13 = v16;

    v14 = sub_10000225C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(SOSDaemon *)self keepAliveFilePath];
      *buf = 138412802;
      v19 = v15;
      v20 = 1024;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wrote to file at path %@ with success: %d error: %@", buf, 0x1Cu);
    }
  }
}

- (void)deleteKeepAlivePathStateFile
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(SOSDaemon *)self keepAliveFilePath];
  v9 = 0;
  v5 = [v3 removeItemAtPath:v4 error:&v9];
  v6 = v9;

  v7 = sub_10000225C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SOSDaemon *)self keepAliveFilePath];
    *buf = 138412802;
    v11 = v8;
    v12 = 1024;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removed file at path %@ success: %d error: %@", buf, 0x1Cu);
  }
}

+ (void)connectToDaemon
{
  v2 = sub_10000225C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v8, 2u);
  }

  v3 = +[IMDaemonController sharedInstance];
  v4 = [v3 hasListenerForID:@"SOSMessages"];

  if ((v4 & 1) == 0)
  {
    v5 = +[IMDaemonController sharedInstance];
    if (qword_100008378 != -1)
    {
      sub_100002480();
    }

    [v5 addListenerID:@"SOSMessages" capabilities:dword_100008370];

    v6 = +[IMDaemonController sharedInstance];
    [v6 blockUntilConnected];

    v7 = +[IMDaemonController sharedInstance];
    [v7 _setBlocksConnectionAtResume:1];
  }
}

- (void)languageDidChange
{
  v2 = sub_10000225C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v3, 2u);
  }

  exit(0);
}

@end