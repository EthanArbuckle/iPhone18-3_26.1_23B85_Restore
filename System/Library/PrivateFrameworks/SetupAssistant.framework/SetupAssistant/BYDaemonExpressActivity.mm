@interface BYDaemonExpressActivity
+ (id)sharedActivity;
- (BYDaemonExpressActivity)init;
- (SASExpressCloudSettings)cloudSettings;
- (void)_updateSettingsForActivity:(id)a3;
- (void)registerActivity;
- (void)registerBackupActivity;
- (void)registerMaintenanceActivity;
- (void)unregisterActivity;
@end

@implementation BYDaemonExpressActivity

+ (id)sharedActivity
{
  if (qword_100028C48 != -1)
  {
    sub_100010CE4();
  }

  v3 = qword_100028C40;

  return v3;
}

- (BYDaemonExpressActivity)init
{
  v6.receiver = self;
  v6.super_class = BYDaemonExpressActivity;
  v2 = [(BYDaemonExpressActivity *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Express Activity Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)registerActivity
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for express activities...", v4, 2u);
  }

  [(BYDaemonExpressActivity *)self registerMaintenanceActivity];
  [(BYDaemonExpressActivity *)self registerBackupActivity];
}

- (void)unregisterActivity
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unregistering for express activities...", v5, 2u);
  }

  v3 = +[BYXPCActivityRegistrar sharedInstance];
  [v3 unregisterActivityWithIdentifier:"com.apple.purplebuddy.maintenance"];

  v4 = +[BYXPCActivityRegistrar sharedInstance];
  [v4 unregisterActivityWithIdentifier:"com.apple.purplebuddy.backup"];
}

- (SASExpressCloudSettings)cloudSettings
{
  v3 = [(BYDaemonExpressActivity *)self queue];
  dispatch_assert_queue_V2(v3);

  cloudSettings = self->_cloudSettings;
  if (!cloudSettings)
  {
    v5 = objc_alloc_init(SASExpressCloudSettings);
    v6 = self->_cloudSettings;
    self->_cloudSettings = v5;

    cloudSettings = self->_cloudSettings;
  }

  v7 = cloudSettings;

  return v7;
}

- (void)registerMaintenanceActivity
{
  v3 = +[BYXPCActivityRegistrar sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003584;
  v4[3] = &unk_1000206E0;
  v4[4] = self;
  [v3 registerActivityWithIdentifier:"com.apple.purplebuddy.maintenance" criteria:XPC_ACTIVITY_CHECK_IN handler:v4];
}

- (void)registerBackupActivity
{
  v3 = +[BYXPCActivityRegistrar sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000036C0;
  v4[3] = &unk_1000206E0;
  v4[4] = self;
  [v3 registerActivityWithIdentifier:"com.apple.purplebuddy.backup" criteria:XPC_ACTIVITY_CHECK_IN handler:v4];
}

- (void)_updateSettingsForActivity:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MBManager);
  if ([v5 isBackupEnabled] && (+[BYPreferencesController buddyPreferencesInternal](BYPreferencesController, "buddyPreferencesInternal"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLForKey:", @"SkipExpressSettingsUpload"), v6, !v7))
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = sub_100003938;
    v17 = sub_100003948;
    v18 = os_transaction_create();
    [v4 setState:4];
    v9 = [(BYDaemonExpressActivity *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003950;
    block[3] = &unk_100020730;
    block[4] = self;
    v11 = v4;
    v12 = buf;
    dispatch_async(v9, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping updating express settings", buf, 2u);
    }

    [v4 setState:5];
  }
}

@end