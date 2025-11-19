@interface BYDaemonGeneralClientConnection
- (BYDaemonGeneralClientConnection)initWithConnection:(id)a3 flowSkipController:(id)a4;
- (__MKBAssertion)deviceLockAssertion;
- (void)attemptSettingsUploadForAttempt:(unint64_t)a3 maxNumberOfAttempts:(unint64_t)a4 queue:(id)a5 completion:(id)a6;
- (void)backupMetadata:(id)a3;
- (void)cancelDataMigratorDeferredExit:(id)a3;
- (void)deferDataMigratorExit:(id)a3;
- (void)enrollInSeedProgramNamed:(id)a3 withAssetAudience:(id)a4 programID:(id)a5 completion:(id)a6;
- (void)ensureShortLivedTokenUpgrade:(id)a3;
- (void)ensureSilentLoginUpgrade:(id)a3;
- (void)fetchAuthenticationContextForApplePay:(id)a3;
- (void)fetchAuthenticationContextForBiometric:(id)a3;
- (void)observeFinishSetupTriggers:(id)a3;
- (void)performSilentICDPUpgrade:(id)a3;
- (void)setDeviceLockAssertion:(__MKBAssertion *)a3;
- (void)setLockScreenMode:(unint64_t)a3;
- (void)setupAssistantNeedsToRun:(id)a3;
- (void)startExpressSettingsUpload;
- (void)storeAuthenticationContextforApplyPay:(id)a3 completion:(id)a4;
- (void)storeAuthenticationContextforBiometric:(id)a3 completion:(id)a4;
@end

@implementation BYDaemonGeneralClientConnection

- (BYDaemonGeneralClientConnection)initWithConnection:(id)a3 flowSkipController:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BYDaemonGeneralClientConnection;
  v8 = [(BYDaemonClientConnection *)&v11 initWithConnection:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_flowSkipController, a4);
    if (qword_100028C68 != -1)
    {
      sub_100010D50();
    }
  }

  return v9;
}

- (void)setDeviceLockAssertion:(__MKBAssertion *)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006520;
  block[3] = &unk_1000205A0;
  block[4] = a3;
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

- (void)setupAssistantNeedsToRun:(id)a3
{
  v5 = a3;
  v3 = Daemon_BYSetupAssistantNeedsToRun();
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
    v4 = v5;
  }
}

- (void)setLockScreenMode:(unint64_t)a3
{
  if (qword_100028C80 != a3)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting lockscreen mode to: %ld", &v5, 0xCu);
    }

    qword_100028C80 = a3;
  }
}

- (void)ensureSilentLoginUpgrade:(id)a3
{
  v5 = a3;
  v3 = +[BYSilentLoginUpgradeGuarantor sharedInstance];
  [v3 blockUntilSilentLoginUpgradeCompletes];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)ensureShortLivedTokenUpgrade:(id)a3
{
  v5 = a3;
  v3 = +[BYSilentLoginUpgradeGuarantor sharedInstance];
  [v3 blockUntilShortLivedTokenUpgradeCompletes];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)backupMetadata:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000068A8;
    block[3] = &unk_100020948;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

- (void)observeFinishSetupTriggers:(id)a3
{
  v4 = a3;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100006A34;
  v7[4] = sub_100006A44;
  v8 = os_transaction_create();
  if (v4)
  {
    v4[2](v4);
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

- (void)performSilentICDPUpgrade:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006B50;
  block[3] = &unk_100020948;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)deferDataMigratorExit:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006C70;
  v7[3] = &unk_100020998;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)cancelDataMigratorDeferredExit:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000070A0;
  v7[3] = &unk_100020998;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)enrollInSeedProgramNamed:(id)a3 withAssetAudience:(id)a4 programID:(id)a5 completion:(id)a6
{
  v14 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[BYDaemonBetaReEnrollmentManager sharedInstance];
  [v12 enrollInSeedProgramNamed:v11 withAssetAudience:v10 programID:v9];

  v13 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14);
    v13 = v14;
  }
}

- (void)storeAuthenticationContextforApplyPay:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(BYDaemonClientConnection *)self context];
  [v7 setApplePayAuthenticationContext:v6];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (void)fetchAuthenticationContextForApplePay:(id)a3
{
  v5 = a3;
  v7 = [(BYDaemonClientConnection *)self context];
  v6 = [v7 applePayAuthenticationContext];
  (*(a3 + 2))(v5, v6);
}

- (void)storeAuthenticationContextforBiometric:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(BYDaemonClientConnection *)self context];
  [v7 setBiometricAuthenticationContext:v6];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (void)fetchAuthenticationContextForBiometric:(id)a3
{
  v5 = a3;
  v7 = [(BYDaemonClientConnection *)self context];
  v6 = [v7 biometricAuthenticationContext];
  (*(a3 + 2))(v5, v6);
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

- (void)attemptSettingsUploadForAttempt:(unint64_t)a3 maxNumberOfAttempts:(unint64_t)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  dispatch_assert_queue_V2(v10);
  v12 = objc_alloc_init(SASExpressCloudSettings);
  v13 = [BYExpressCloudSettings createExpressSettingsWithQueue:v10];
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
  v20 = v11;
  v21 = a3;
  v22 = a4;
  v18 = v10;
  v19 = self;
  v15 = v10;
  v16 = v11;
  [v12 updateSettings:v13 withCompletion:v17];
}

@end