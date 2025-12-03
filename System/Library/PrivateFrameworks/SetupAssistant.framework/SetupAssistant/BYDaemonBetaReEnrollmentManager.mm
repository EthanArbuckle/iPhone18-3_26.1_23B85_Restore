@interface BYDaemonBetaReEnrollmentManager
+ (id)sharedInstance;
+ (void)unregisterActivityUsingRegistrar:(id)registrar;
- (BOOL)_onSerialQueue_needsEnrollWithCheckForExistingEnrollment:(BOOL)enrollment enrollBlock:(id)block;
- (BOOL)_onSerialQueue_needsEnrollWithProgramName:(id)name assetAudience:(id)audience programID:(id)d;
- (BYDaemonBetaReEnrollmentManager)initWithSeedProgramManager:(id)manager xpcActivityRegistrar:(id)registrar setupAssistantFrameworkDefaults:(id)defaults lockAssertionManager:(id)assertionManager;
- (void)_onSerialQueue_attemptLockAssertionIfNecessary;
- (void)_onSerialQueue_performOneEnrollWithProgramName:(id)name assetAudience:(id)audience programID:(id)d completionOnSerialQueue:(id)queue;
- (void)_onSerialQueue_registerActivityForPurpose:(id)purpose;
- (void)daemonStart;
- (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience programID:(id)d;
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

- (BYDaemonBetaReEnrollmentManager)initWithSeedProgramManager:(id)manager xpcActivityRegistrar:(id)registrar setupAssistantFrameworkDefaults:(id)defaults lockAssertionManager:(id)assertionManager
{
  managerCopy = manager;
  registrarCopy = registrar;
  defaultsCopy = defaults;
  assertionManagerCopy = assertionManager;
  v17.receiver = self;
  v17.super_class = BYDaemonBetaReEnrollmentManager;
  v14 = [(BYDaemonBetaReEnrollmentManager *)&v17 init];
  if (v14)
  {
    v15 = dispatch_queue_create("com.apple.budd.betaReEnrollmentManager", 0);
    [(BYDaemonBetaReEnrollmentManager *)v14 setSerialQueue:v15];

    [(BYDaemonBetaReEnrollmentManager *)v14 setSeedProgramManager:managerCopy];
    [(BYDaemonBetaReEnrollmentManager *)v14 setXpcActivityRegistrar:registrarCopy];
    [(BYDaemonBetaReEnrollmentManager *)v14 setSetupAssistantFrameworkDefaults:defaultsCopy];
    [(BYDaemonBetaReEnrollmentManager *)v14 setLockAssertionManager:assertionManagerCopy];
  }

  return v14;
}

- (void)daemonStart
{
  serialQueue = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B6CC;
  block[3] = &unk_100020868;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience programID:(id)d
{
  namedCopy = named;
  audienceCopy = audience;
  dCopy = d;
  serialQueue = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B898;
  v15[3] = &unk_100020C90;
  v15[4] = self;
  v16 = namedCopy;
  v17 = audienceCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = audienceCopy;
  v14 = namedCopy;
  dispatch_sync(serialQueue, v15);
}

+ (void)unregisterActivityUsingRegistrar:(id)registrar
{
  registrarCopy = registrar;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistering beta re-enrollment activity...", v5, 2u);
  }

  [registrarCopy unregisterActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment"];
}

- (void)_onSerialQueue_registerActivityForPurpose:(id)purpose
{
  purposeCopy = purpose;
  serialQueue = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = purposeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Registering activity (%{public}@)", buf, 0xCu);
  }

  xpcActivityRegistrar = [(BYDaemonBetaReEnrollmentManager *)self xpcActivityRegistrar];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BBF8;
  v9[3] = &unk_100020D08;
  v10 = purposeCopy;
  selfCopy = self;
  v8 = purposeCopy;
  [xpcActivityRegistrar registerActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment" criteria:XPC_ACTIVITY_CHECK_IN handler:v9];
}

- (BOOL)_onSerialQueue_needsEnrollWithCheckForExistingEnrollment:(BOOL)enrollment enrollBlock:(id)block
{
  enrollmentCopy = enrollment;
  blockCopy = block;
  serialQueue = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  setupAssistantFrameworkDefaults = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v9 = [setupAssistantFrameworkDefaults objectForKey:@"SeedEnrollmentProgramName"];

  setupAssistantFrameworkDefaults2 = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v11 = [setupAssistantFrameworkDefaults2 objectForKey:@"SeedEnrollmentAssetAudience"];

  setupAssistantFrameworkDefaults3 = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v13 = [setupAssistantFrameworkDefaults3 objectForKey:@"SeedEnrollmentProgramID"];

  setupAssistantFrameworkDefaults4 = [(BYDaemonBetaReEnrollmentManager *)self setupAssistantFrameworkDefaults];
  v15 = [setupAssistantFrameworkDefaults4 objectForKey:@"SeedEnrollmentFailureCount"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    unsignedIntegerValue = [v15 unsignedIntegerValue];
    v17 = unsignedIntegerValue < 0xF0;
    if (unsignedIntegerValue <= 0xEF && enrollmentCopy)
    {
      v17 = [(BYDaemonBetaReEnrollmentManager *)self _onSerialQueue_needsEnrollWithProgramName:v9 assetAudience:v11 programID:v13];
    }

    if (blockCopy && v17)
    {
      blockCopy[2](blockCopy, v9, v11, v13);
      LOBYTE(v17) = 1;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)_onSerialQueue_needsEnrollWithProgramName:(id)name assetAudience:(id)audience programID:(id)d
{
  audienceCopy = audience;
  dCopy = d;
  nameCopy = name;
  serialQueue = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  seedProgramManager = [(BYDaemonBetaReEnrollmentManager *)self seedProgramManager];
  currentEnrollmentMetadata = [seedProgramManager currentEnrollmentMetadata];

  bySeedProgramManager_valueForProgramKey = [currentEnrollmentMetadata bySeedProgramManager_valueForProgramKey];
  v15 = [nameCopy isEqualToString:bySeedProgramManager_valueForProgramKey];

  if (v15)
  {
    bySeedProgramManager_valueForAssetAudienceKey = [currentEnrollmentMetadata bySeedProgramManager_valueForAssetAudienceKey];
    if ([audienceCopy isEqualToString:bySeedProgramManager_valueForAssetAudienceKey])
    {
      bySeedProgramManager_valueForProgramIDKey = [currentEnrollmentMetadata bySeedProgramManager_valueForProgramIDKey];
      v18 = [dCopy isEqualToString:bySeedProgramManager_valueForProgramIDKey] ^ 1;
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

- (void)_onSerialQueue_performOneEnrollWithProgramName:(id)name assetAudience:(id)audience programID:(id)d completionOnSerialQueue:(id)queue
{
  queueCopy = queue;
  dCopy = d;
  audienceCopy = audience;
  nameCopy = name;
  serialQueue = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v15 = _BYLoggingFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Starting enroll", buf, 2u);
  }

  seedProgramManager = [(BYDaemonBetaReEnrollmentManager *)self seedProgramManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000C878;
  v18[3] = &unk_100020D58;
  v18[4] = self;
  v19 = queueCopy;
  v17 = queueCopy;
  [seedProgramManager enrollInSeedProgramNamed:nameCopy withAssetAudience:audienceCopy programID:dCopy completion:v18];
}

- (void)_onSerialQueue_attemptLockAssertionIfNecessary
{
  serialQueue = [(BYDaemonBetaReEnrollmentManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  lockAssertion = [(BYDaemonBetaReEnrollmentManager *)self lockAssertion];

  if (!lockAssertion)
  {
    lockAssertionManager = [(BYDaemonBetaReEnrollmentManager *)self lockAssertionManager];
    v10 = @"MKBAssertionKey";
    v11 = @"Other";
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [lockAssertionManager acquireLockAssertionWithOptions:v6 purpose:@"Beta Re-Enroll"];
    [(BYDaemonBetaReEnrollmentManager *)self setLockAssertion:v7];

    lockAssertion2 = [(BYDaemonBetaReEnrollmentManager *)self lockAssertion];

    if (!lockAssertion2)
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