@interface BYDaemonBetaReEnrollmentManager
+ (id)sharedInstance;
+ (void)unregisterActivityUsingRegistrar:(id)a3;
- (BOOL)_onSerialQueue_needsEnrollWithCheckForExistingEnrollment:(BOOL)a3 enrollBlock:(id)a4;
- (BOOL)_onSerialQueue_needsEnrollWithProgramName:(id)a3 assetAudience:(id)a4 programID:(id)a5;
- (BYDaemonBetaReEnrollmentManager)initWithSeedProgramManager:(id)a3 xpcActivityRegistrar:(id)a4 setupAssistantFrameworkDefaults:(id)a5 lockAssertionManager:(id)a6;
- (void)_onSerialQueue_attemptLockAssertionIfNecessary;
- (void)_onSerialQueue_performOneEnrollWithProgramName:(id)a3 assetAudience:(id)a4 programID:(id)a5 completionOnSerialQueue:(id)a6;
- (void)_onSerialQueue_registerActivityForPurpose:(id)a3;
- (void)daemonStart;
- (void)enrollInSeedProgramNamed:(id)a3 withAssetAudience:(id)a4 programID:(id)a5;
@end

@implementation BYDaemonBetaReEnrollmentManager

+ (id)sharedInstance
{
  if (qword_100028CD0 != -1)
  {
    sub_10001106C();
  }

  v3 = qword_100028CC8;

  return v3;
}

- (BYDaemonBetaReEnrollmentManager)initWithSeedProgramManager:(id)a3 xpcActivityRegistrar:(id)a4 setupAssistantFrameworkDefaults:(id)a5 lockAssertionManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BYDaemonBetaReEnrollmentManager;
  v14 = [(BYDaemonBetaReEnrollmentManager *)&v17 init];
  if (v14)
  {
    v15 = dispatch_queue_create("com.apple.budd.betaReEnrollmentManager", 0);
    [(BYDaemonBetaReEnrollmentManager *)v14 setSerialQueue:v15];

    [(BYDaemonBetaReEnrollmentManager *)v14 setSeedProgramManager:v10];
    [(BYDaemonBetaReEnrollmentManager *)v14 setXpcActivityRegistrar:v11];
    [(BYDaemonBetaReEnrollmentManager *)v14 setSetupAssistantFrameworkDefaults:v12];
    [(BYDaemonBetaReEnrollmentManager *)v14 setLockAssertionManager:v13];
  }

  return v14;
}

- (void)daemonStart
{
  v3 = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B6CC;
  block[3] = &unk_100020868;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)enrollInSeedProgramNamed:(id)a3 withAssetAudience:(id)a4 programID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B898;
  v15[3] = &unk_100020C90;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

+ (void)unregisterActivityUsingRegistrar:(id)a3
{
  v3 = a3;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistering beta re-enrollment activity...", v5, 2u);
  }

  [v3 unregisterActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment"];
}

- (void)_onSerialQueue_registerActivityForPurpose:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Registering activity (%{public}@)", buf, 0xCu);
  }

  v7 = [(BYDaemonBetaReEnrollmentManager *)self xpcActivityRegistrar];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BBF8;
  v9[3] = &unk_100020D08;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 registerActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment" criteria:XPC_ACTIVITY_CHECK_IN handler:v9];
}

- (BOOL)_onSerialQueue_needsEnrollWithCheckForExistingEnrollment:(BOOL)a3 enrollBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v9 = [v8 objectForKey:@"SeedEnrollmentProgramName"];

  v10 = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v11 = [v10 objectForKey:@"SeedEnrollmentAssetAudience"];

  v12 = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v13 = [v12 objectForKey:@"SeedEnrollmentProgramID"];

  v14 = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v15 = [v14 objectForKey:@"SeedEnrollmentFailureCount"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v16 = [v15 unsignedIntegerValue];
    v17 = v16 < 0xF0;
    if (v16 <= 0xEF && v4)
    {
      v17 = [(BYDaemonBetaReEnrollmentManager *)self _onSerialQueue_needsEnrollWithProgramName:v9 assetAudience:v11 programID:v13];
    }

    if (v6 && v17)
    {
      v6[2](v6, v9, v11, v13);
      LOBYTE(v17) = 1;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)_onSerialQueue_needsEnrollWithProgramName:(id)a3 assetAudience:(id)a4 programID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(BYDaemonBetaReEnrollmentManager *)self seedProgramManager];
  v13 = [v12 currentEnrollmentMetadata];

  v14 = [v13 bySeedProgramManager_valueForProgramKey];
  v15 = [v10 isEqualToString:v14];

  if (v15)
  {
    v16 = [v13 bySeedProgramManager_valueForAssetAudienceKey];
    if ([v8 isEqualToString:v16])
    {
      v17 = [v13 bySeedProgramManager_valueForProgramIDKey];
      v18 = [v9 isEqualToString:v17] ^ 1;
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  else
  {
    LOBYTE(v18) = 1;
  }

  return v18;
}

- (void)_onSerialQueue_performOneEnrollWithProgramName:(id)a3 assetAudience:(id)a4 programID:(id)a5 completionOnSerialQueue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(v14);

  v15 = _BYLoggingFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Starting enroll", buf, 2u);
  }

  v16 = [(BYDaemonBetaReEnrollmentManager *)self seedProgramManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000C878;
  v18[3] = &unk_100020D58;
  v18[4] = self;
  v19 = v10;
  v17 = v10;
  [v16 enrollInSeedProgramNamed:v13 withAssetAudience:v12 programID:v11 completion:v18];
}

- (void)_onSerialQueue_attemptLockAssertionIfNecessary
{
  v3 = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BYDaemonBetaReEnrollmentManager *)self lockAssertion];

  if (!v4)
  {
    v5 = [(BYDaemonBetaReEnrollmentManager *)self lockAssertionManager];
    v10 = @"MKBAssertionKey";
    v11 = @"Other";
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v5 acquireLockAssertionWithOptions:v6 purpose:@"Beta Re-Enroll"];
    [(BYDaemonBetaReEnrollmentManager *)self setLockAssertion:v7];

    v8 = [(BYDaemonBetaReEnrollmentManager *)self lockAssertion];

    if (!v8)
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000110F8(v9);
      }
    }
  }
}

@end