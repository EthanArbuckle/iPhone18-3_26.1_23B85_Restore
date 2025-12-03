@interface BYDaemonGeneralClientConnection
- (BYDaemonGeneralClientConnection)initWithConnection:(id)connection flowSkipController:(id)controller;
- (__MKBAssertion)deviceLockAssertion;
- (void)attemptSettingsUploadForAttempt:(unint64_t)attempt maxNumberOfAttempts:(unint64_t)attempts queue:(id)queue completion:(id)completion;
- (void)backupMetadata:(id)metadata;
- (void)cancelDataMigratorDeferredExit:(id)exit;
- (void)deferDataMigratorExit:(id)exit;
- (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience programID:(id)d completion:(id)completion;
- (void)ensureShortLivedTokenUpgrade:(id)upgrade;
- (void)ensureSilentLoginUpgrade:(id)upgrade;
- (void)fetchAuthenticationContextForApplePay:(id)pay;
- (void)fetchAuthenticationContextForBiometric:(id)biometric;
- (void)observeFinishSetupTriggers:(id)triggers;
- (void)performSilentICDPUpgrade:(id)upgrade;
- (void)setDeviceLockAssertion:(__MKBAssertion *)assertion;
- (void)setLockScreenMode:(unint64_t)mode;
- (void)setupAssistantNeedsToRun:(id)run;
- (void)startExpressSettingsUpload;
- (void)storeAuthenticationContextforApplyPay:(id)pay completion:(id)completion;
- (void)storeAuthenticationContextforBiometric:(id)biometric completion:(id)completion;
@end

@implementation BYDaemonGeneralClientConnection

- (BYDaemonGeneralClientConnection)initWithConnection:(id)connection flowSkipController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = BYDaemonGeneralClientConnection;
  v8 = [(BYDaemonClientConnection *)&v11 initWithConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_flowSkipController, controller);
    if (qword_100028C68 != -1)
    {
      sub_100010D50();
    }
  }

  return v9;
}

- (void)setDeviceLockAssertion:(__MKBAssertion *)assertion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006520;
  block[3] = &unk_1000205A0;
  block[4] = assertion;
  dispatch_sync(qword_100028C70, block);
}

- (__MKBAssertion)deviceLockAssertion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000065DC;
  block[3] = &unk_100020568;
  block[4] = &v5;
  dispatch_sync(qword_100028C70, block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setupAssistantNeedsToRun:(id)run
{
  runCopy = run;
  v3 = Daemon_BYSetupAssistantNeedsToRun();
  v4 = runCopy;
  if (runCopy)
  {
    (*(runCopy + 2))(runCopy, v3);
    v4 = runCopy;
  }
}

- (void)setLockScreenMode:(unint64_t)mode
{
  if (qword_100028C80 != mode)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      modeCopy = mode;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting lockscreen mode to: %ld", &v5, 0xCu);
    }

    qword_100028C80 = mode;
  }
}

- (void)ensureSilentLoginUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v3 = +[BYSilentLoginUpgradeGuarantor sharedInstance];
  [v3 blockUntilSilentLoginUpgradeCompletes];

  v4 = upgradeCopy;
  if (upgradeCopy)
  {
    (*(upgradeCopy + 2))(upgradeCopy);
    v4 = upgradeCopy;
  }
}

- (void)ensureShortLivedTokenUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v3 = +[BYSilentLoginUpgradeGuarantor sharedInstance];
  [v3 blockUntilShortLivedTokenUpgradeCompletes];

  v4 = upgradeCopy;
  if (upgradeCopy)
  {
    (*(upgradeCopy + 2))(upgradeCopy);
    v4 = upgradeCopy;
  }
}

- (void)backupMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v4 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000068A8;
    block[3] = &unk_100020948;
    v6 = metadataCopy;
    dispatch_async(v4, block);
  }
}

- (void)observeFinishSetupTriggers:(id)triggers
{
  triggersCopy = triggers;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100006A34;
  v7[4] = sub_100006A44;
  v8 = os_transaction_create();
  if (triggersCopy)
  {
    triggersCopy[2](triggersCopy);
  }

  v5 = dispatch_get_global_queue(21, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006A4C;
  v6[3] = &unk_100020970;
  v6[4] = self;
  v6[5] = v7;
  dispatch_async(v5, v6);

  _Block_object_dispose(v7, 8);
}

- (void)performSilentICDPUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006B50;
  block[3] = &unk_100020948;
  v7 = upgradeCopy;
  v5 = upgradeCopy;
  dispatch_async(v4, block);
}

- (void)deferDataMigratorExit:(id)exit
{
  exitCopy = exit;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006C70;
  v7[3] = &unk_100020998;
  v7[4] = self;
  v8 = exitCopy;
  v6 = exitCopy;
  dispatch_async(v5, v7);
}

- (void)cancelDataMigratorDeferredExit:(id)exit
{
  exitCopy = exit;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000070A0;
  v7[3] = &unk_100020998;
  v7[4] = self;
  v8 = exitCopy;
  v6 = exitCopy;
  dispatch_async(v5, v7);
}

- (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience programID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  audienceCopy = audience;
  namedCopy = named;
  v12 = +[BYDaemonBetaReEnrollmentManager sharedInstance];
  [v12 enrollInSeedProgramNamed:namedCopy withAssetAudience:audienceCopy programID:dCopy];

  v13 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v13 = completionCopy;
  }
}

- (void)storeAuthenticationContextforApplyPay:(id)pay completion:(id)completion
{
  completionCopy = completion;
  payCopy = pay;
  context = [(BYDaemonClientConnection *)self context];
  [context setApplePayAuthenticationContext:payCopy];

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

- (void)fetchAuthenticationContextForApplePay:(id)pay
{
  payCopy = pay;
  context = [(BYDaemonClientConnection *)self context];
  applePayAuthenticationContext = [context applePayAuthenticationContext];
  (*(pay + 2))(payCopy, applePayAuthenticationContext);
}

- (void)storeAuthenticationContextforBiometric:(id)biometric completion:(id)completion
{
  completionCopy = completion;
  biometricCopy = biometric;
  context = [(BYDaemonClientConnection *)self context];
  [context setBiometricAuthenticationContext:biometricCopy];

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

- (void)fetchAuthenticationContextForBiometric:(id)biometric
{
  biometricCopy = biometric;
  context = [(BYDaemonClientConnection *)self context];
  biometricAuthenticationContext = [context biometricAuthenticationContext];
  (*(biometric + 2))(biometricCopy, biometricAuthenticationContext);
}

- (void)startExpressSettingsUpload
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100006A34;
  v7[4] = sub_100006A44;
  v8 = os_transaction_create();
  dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000770C;
  block[3] = &unk_100020730;
  v5 = block[4] = self;
  v6 = v7;
  v3 = v5;
  dispatch_async(v3, block);

  _Block_object_dispose(v7, 8);
}

- (void)attemptSettingsUploadForAttempt:(unint64_t)attempt maxNumberOfAttempts:(unint64_t)attempts queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queueCopy);
  v12 = objc_alloc_init(SASExpressCloudSettings);
  v13 = [BYExpressCloudSettings createExpressSettingsWithQueue:queueCopy];
  v14 = _BYLoggingFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating express settings...", buf, 2u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000079F4;
  v17[3] = &unk_100020A10;
  v20 = completionCopy;
  attemptCopy = attempt;
  attemptsCopy = attempts;
  v18 = queueCopy;
  selfCopy = self;
  v15 = queueCopy;
  v16 = completionCopy;
  [v12 updateSettings:v13 withCompletion:v17];
}

@end