@interface MPCloudKit_Manatee
+ (id)sharedInstance;
- (BOOL)initializedCKAfterFirstUnlockedSinceBoot;
- (BOOL)manateeZoneUpgraded;
- (MPCloudKit_Manatee)initWithRecordZoneName;
- (NSString)description;
- (OS_dispatch_queue)pushDelegateQueue;
- (id)apsEnvironmentString;
- (id)readUserPreference:(id)a3;
- (void)_fetchAccessoryKeyBlob:(unint64_t)a3;
- (void)_fetchKeyBlob:(unint64_t)a3;
- (void)_pushTimerFired:(id)a3;
- (void)_updateMasterZoneBlob:(id)a3 accessoryblob:(id)a4;
- (void)accountStatusDidChange:(id)a3;
- (void)buddySetupDone;
- (void)checkAccountStatusWithCompletionHandler:(id)a3 withRetryCount:(unint64_t)a4;
- (void)createSubscritionForRecordType:(id)a3;
- (void)dealloc;
- (void)deleteCloudKitAccessoryZone;
- (void)didReceiveWithMessage:(id)a3;
- (void)didReceiveWithPublicToken:(id)a3;
- (void)didReceiveWithToken:(id)a3 forTopic:(id)a4 identifier:(id)a5;
- (void)fetchAccessoryKeyBlob:(unint64_t)a3;
- (void)fetchAccountStatusWithCompletion:(id)a3;
- (void)fetchKeyBlob:(unint64_t)a3;
- (void)fetchSubscriptionForRecordType:(id)a3 andPrefKey:(id)a4;
- (void)forceAccountStatus;
- (void)handleAccessoryModifyError:(id)a3 forBlob:(id)a4 withRetryCount:(unint64_t)a5;
- (void)handleModifyMasterKeyError:(id)a3 forBlob:(id)a4 withRetryCount:(unint64_t)a5;
- (void)initializeCloudKit;
- (void)manateeZoneAvailable;
- (void)modifyAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4;
- (void)modifyKeyBlob:(id)a3 withRetryCount:(unint64_t)a4;
- (void)pushDisable;
- (void)pushEnable;
- (void)removeSubscritionForRecordType:(id)a3;
- (void)removeuserPreference:(id)a3 sync:(BOOL)a4;
- (void)resetAccessoryZone:(id)a3;
- (void)resetCloudContainerManateeIdentityLost;
- (void)resetMasterZone:(id)a3 accessoryblob:(id)a4;
- (void)resetPushTimer;
- (void)setupSubscriptions;
- (void)setuserPreference:(id)a3 value:(id)a4 sync:(BOOL)a5;
- (void)updateCloudKitAccessoryZone:(id)a3 delete:(BOOL)a4;
- (void)updateCloudKitBlobZone:(id)a3;
- (void)upgradeAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4;
- (void)verifyAndCacheSubscriptionID:(id)a3;
- (void)writeAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4;
- (void)writeKeyBlob:(id)a3 withRetryCount:(unint64_t)a4;
@end

@implementation MPCloudKit_Manatee

+ (id)sharedInstance
{
  if (qword_1002FA1C0 != -1)
  {
    sub_1001F66EC();
  }

  v3 = qword_1002FA1B8;

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPCloudKit_Manatee;
  [(MPCloudKit_Manatee *)&v4 dealloc];
}

- (NSString)description
{
  v2 = [(MPCloudKit_Manatee *)self cloudContainerIdentifier];
  v3 = [NSString stringWithFormat:@"MPCloudKit_Manatee: Container - %@", v2];

  return v3;
}

- (MPCloudKit_Manatee)initWithRecordZoneName
{
  v17.receiver = self;
  v17.super_class = MPCloudKit_Manatee;
  v2 = [(MPCloudKit_Manatee *)&v17 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  countdownTimer = v2->_countdownTimer;
  if (countdownTimer)
  {
    [(NSTimer *)countdownTimer invalidate];
    v5 = v3->_countdownTimer;
    v3->_countdownTimer = 0;
  }

  v6 = objc_alloc_init(NSOperationQueue);
  modifyOperationQueue = v3->_modifyOperationQueue;
  v3->_modifyOperationQueue = v6;

  [(NSOperationQueue *)v3->_modifyOperationQueue setMaxConcurrentOperationCount:1];
  v8 = +[BTSystemConfiguration isBuddyComplete];
  v9 = sub_100005C14("MagicPairing");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee BYSetupAssistantNeedsToRun : true ", buf, 2u);
    }

    v11 = +[CloudXPCService sharedInstance];
    [v11 beginTransaction:@"com.apple.bluetooth.user.services.mpcloudkitmanatee.buddysetup"];

    v3->_reinitAfterBuddy = 1;
    objc_initWeak(buf, v3);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000B7474;
    v14[3] = &unk_1002B9618;
    objc_copyWeak(&v15, buf);
    v12 = [BTStateWatcher monitorBuddyStateWithAction:v14];
    [(MPCloudKit_Manatee *)v3 setBuddyStateWatcher:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
    goto LABEL_12;
  }

  if (v10)
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee BYSetupAssistantNeedsToRun : false ", buf, 2u);
  }

  v3->_reinitAfterBuddy = 0;
  if (![(MPCloudKit_Manatee *)v3 initializedCKAfterFirstUnlockedSinceBoot])
  {
LABEL_12:
    [(MPCloudKit_Manatee *)v3 initializedCKAfterFirstUnlockedSinceBoot];
  }

  return v3;
}

- (BOOL)initializedCKAfterFirstUnlockedSinceBoot
{
  v3 = MKBDeviceUnlockedSinceBoot();
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"YES";
    if (!v3)
    {
      v5 = @"NO";
    }

    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee: Unlocked since boot = %{public}@", buf, 0xCu);
  }

  if (v3 == 1)
  {
    v6 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: device is already unlocked after boot ", buf, 2u);
    }

    [(MPCloudKit_Manatee *)self initializeCloudKit];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B76F0;
    block[3] = &unk_1002B6880;
    block[4] = self;
    if (qword_1002FA1C8 != -1)
    {
      dispatch_once(&qword_1002FA1C8, block);
    }
  }

  return v3 == 1;
}

- (void)forceAccountStatus
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee: Forcing account update to bluetoothd", v5, 2u);
  }

  v4 = [(MPCloudKit_Manatee *)self cloudKitContainer];
  [v4 accountStatusWithCompletionHandler:&stru_1002BAA60];
}

- (void)buddySetupDone
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee: buddySetupDone : reset timer now ", buf, 2u);
  }

  if (self->_reinitAfterBuddy)
  {
    [(MPCloudKit_Manatee *)self initializeCloudKit];
  }

  else
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"accountStatusDidChange:" name:CKAccountChangedNotification object:0];

    v5 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee: buddySetupDone : re-intt cloud kit not needed", v7, 2u);
    }
  }

  self->_reinitAfterBuddy = 0;
  v6 = +[CloudXPCService sharedInstance];
  [v6 endTransaction:@"com.apple.bluetooth.user.services.mpcloudkitmanatee.buddysetup"];
}

- (void)initializeCloudKit
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee: initializeCloudKit : start ", v15, 2u);
  }

  v4 = [CKContainer containerWithIdentifier:@"com.apple.securedBluetooth"];
  cloudKitContainer = self->_cloudKitContainer;
  self->_cloudKitContainer = v4;

  v6 = [(CKContainer *)self->_cloudKitContainer privateCloudDatabase];
  cloudKitDatabase = self->_cloudKitDatabase;
  self->_cloudKitDatabase = v6;

  v8 = [[CKRecordZone alloc] initWithZoneName:@"MagicCloudPairingCustomKeyBlobZone"];
  recordZoneBlob = self->_recordZoneBlob;
  self->_recordZoneBlob = v8;

  v10 = [[CKRecordZone alloc] initWithZoneName:@"MagicCloudPairingCustomAccessoryZone"];
  recordZoneAccessoryDatabase = self->_recordZoneAccessoryDatabase;
  self->_recordZoneAccessoryDatabase = v10;

  self->_isWriteMasterKeysInProgress = 0;
  [(MPCloudKit_Manatee *)self pushEnable];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"accountStatusDidChange:" name:CKAccountChangedNotification object:0];

  [(MPCloudKit_Manatee *)self accountStatusDidChange:0];
  v13 = [(MPCloudKit_Manatee *)self pushTimer];

  if (v13)
  {
    v14 = [(MPCloudKit_Manatee *)self pushTimer];
    [v14 invalidate];

    [(MPCloudKit_Manatee *)self setPushTimer:0];
  }
}

- (void)fetchAccountStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPCloudKit_Manatee *)self cloudKitContainer];

  if (v5)
  {
    cloudKitContainer = self->_cloudKitContainer;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B7E10;
    v9[3] = &unk_1002B9CA0;
    v10 = v4;
    [(CKContainer *)cloudKitContainer accountInfoWithCompletionHandler:v9];
    v7 = v10;
LABEL_7:

    goto LABEL_8;
  }

  v8 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee fetchAccountStatusWithCompletion cloudKitContainer is nil", buf, 2u);
  }

  if (v4)
  {
    v7 = [NSError errorWithDomain:@"CloudKit Account Not Active" code:0 userInfo:0];
    (*(v4 + 2))(v4, 0, v7);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)manateeZoneAvailable
{
  v3 = +[CloudXPCService sharedInstance];
  v4 = [v3 networkMonitor];
  v5 = [v4 isNetworkUp];

  if (v5)
  {
    v6 = [(MPCloudKit_Manatee *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    if (v6)
    {
      v7 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee Upgrade Check: Master zone has been already upgraded successfully", v9, 2u);
      }
    }

    else
    {
      cloudKitContainer = self->_cloudKitContainer;

      [(CKContainer *)cloudKitContainer accountInfoWithCompletionHandler:&stru_1002BAAA0];
    }
  }

  else
  {
    sub_1001F6700();
  }
}

- (id)readUserPreference:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

- (void)setuserPreference:(id)a3 value:(id)a4 sync:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] prefName %@\n", &v11, 0xCu);
  }

  CFPreferencesSetValue(v7, v8, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v5 && !CFPreferencesSynchronize(@"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", &v11, 2u);
    }
  }
}

- (void)removeuserPreference:(id)a3 sync:(BOOL)a4
{
  v4 = a4;
  CFPreferencesSetValue(a3, 0, @"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v4 && !CFPreferencesSynchronize(@"com.apple.cloudpaird", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v5 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", v6, 2u);
    }
  }
}

- (void)accountStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee accountStatusDidChange calling accountStatusWithCompletionHandler", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [(MPCloudKit_Manatee *)self cloudKitContainer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B8460;
  v7[3] = &unk_1002BAAE8;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  [v6 accountStatusWithCompletionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)setupSubscriptions
{
  [(MPCloudKit_Manatee *)self createSubscritionForRecordType:@"EncryptedMasterKeyBlob"];

  [(MPCloudKit_Manatee *)self createSubscritionForRecordType:@"EncryptedAccessoryBlob"];
}

- (void)resetPushTimer
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MPCloudKit_Manatee *)self pushTimer];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee: resetPushTimer called %@", &v8, 0xCu);
  }

  v5 = [(MPCloudKit_Manatee *)self pushTimer];

  if (v5)
  {
    v6 = [(MPCloudKit_Manatee *)self pushTimer];
    [v6 invalidate];

    [(MPCloudKit_Manatee *)self setPushTimer:0];
  }

  v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_pushTimerFired:" selector:0 userInfo:0 repeats:5.0];
  [(MPCloudKit_Manatee *)self setPushTimer:v7];
}

- (void)_pushTimerFired:(id)a3
{
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee: Push Fetch", buf, 2u);
  }

  v5 = [(MPCloudKit_Manatee *)self pushTimer];

  if (v5)
  {
    v6 = [(MPCloudKit_Manatee *)self pushTimer];
    [v6 invalidate];

    [(MPCloudKit_Manatee *)self setPushTimer:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B8BC0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)fetchKeyBlob:(unint64_t)a3
{
  cloudKitContainer = self->_cloudKitContainer;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B8C84;
  v4[3] = &unk_1002BAB10;
  v4[4] = self;
  v4[5] = a3;
  [(CKContainer *)cloudKitContainer accountInfoWithCompletionHandler:v4];
}

- (void)_fetchKeyBlob:(unint64_t)a3
{
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob: retry count -  %lu", buf, 0xCu);
  }

  if (a3 >= 5)
  {
    v6 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = a3;
      v7 = "Manatee: Exhausted all retries...: %lu";
      v8 = v6;
      v9 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if ([(MPCloudKit_Manatee *)self isWriteMasterKeysInProgress])
  {
    v6 = sub_100005C14("MagicPairing");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v7 = "Manatee: already writing new key";
LABEL_9:
    v8 = v6;
    v9 = 2;
    goto LABEL_10;
  }

  v10 = [(MPCloudKit_Manatee *)self masterBlob];
  v11 = [v10 length] == 33;

  if (v11)
  {
    v12 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MPCloudKit_Manatee *)self masterBlob];
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob: already have master blob read  %@", buf, 0xCu);
    }

    v6 = +[CloudXPCService sharedInstance];
    v14 = [(MPCloudKit_Manatee *)self masterBlob];
    v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v14, @"kMasterKeyBlob", 0];
    [v6 sendCloudKitMsg:@"MasterKeysAvailable" args:v15];

    goto LABEL_15;
  }

  v16 = [(MPCloudKit_Manatee *)self recordZoneBlob];
  v17 = v16 == 0;

  if (v17)
  {
    v6 = sub_100005C14("MagicPairing");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v7 = "Manatee recordZoneBlob is nil";
    goto LABEL_9;
  }

  v18 = +[CloudXPCService sharedInstance];
  v19 = [v18 deviceManager];
  v20 = [v19 cloudAccountInfo];
  v21 = [v20 manateeAvailable];

  if ((v21 & 1) == 0)
  {
    v6 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001F67E8();
    }

    goto LABEL_15;
  }

  if (![(MPCloudKit_Manatee *)self isFetchMasterKeyInProgress])
  {
    [(MPCloudKit_Manatee *)self setIsFetchMasterKeyInProgress:1];
    v22 = [CKRecordID alloc];
    v23 = [(MPCloudKit_Manatee *)self recordZoneBlob];
    v24 = [v23 zoneID];
    v6 = [v22 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v24];

    v25 = +[CloudXPCService sharedInstance];
    [v25 beginTransaction:@"ManateefetchKeyBlob"];

    objc_initWeak(buf, self);
    v26 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B92C0;
    v27[3] = &unk_1002BAB58;
    v27[4] = self;
    v28[1] = a3;
    objc_copyWeak(v28, buf);
    [v26 fetchRecordWithID:v6 completionHandler:v27];

    objc_destroyWeak(v28);
    objc_destroyWeak(buf);
    goto LABEL_15;
  }

  v6 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = "Manatee fetchKeyBlob already fetching defer";
    goto LABEL_9;
  }

LABEL_15:
}

- (void)checkAccountStatusWithCompletionHandler:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a4 <= 4)
  {
    if (v8)
    {
      *buf = 134217984;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: checkAccountStatus: %lu", buf, 0xCu);
    }

    v9 = +[CloudXPCService sharedInstance];
    [v9 beginTransaction:@"ManateeCheckAccountStatusWithCompletionHandler"];

    objc_initWeak(buf, self);
    v10 = [(MPCloudKit_Manatee *)self cloudKitContainer];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BA04C;
    v11[3] = &unk_1002BAB80;
    objc_copyWeak(v13, buf);
    v12 = v6;
    v13[1] = a4;
    [v10 accountStatusWithCompletionHandler:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      *buf = 134217984;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: Exhausted all retries for: %lu", buf, 0xCu);
    }
  }
}

- (void)fetchAccessoryKeyBlob:(unint64_t)a3
{
  cloudKitContainer = self->_cloudKitContainer;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BA2F8;
  v4[3] = &unk_1002BAB10;
  v4[4] = self;
  v4[5] = a3;
  [(CKContainer *)cloudKitContainer accountInfoWithCompletionHandler:v4];
}

- (void)_fetchAccessoryKeyBlob:(unint64_t)a3
{
  v5 = +[CloudXPCService sharedInstance];
  v6 = [v5 deviceManager];
  v7 = [v6 cloudAccountInfo];
  v8 = [v7 manateeAvailable];

  if (v8)
  {
    v9 = sub_100005C14("MagicPairing");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (a3 <= 4)
    {
      if (v10)
      {
        *buf = 134217984;
        v25 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob: %lu", buf, 0xCu);
      }

      if ([(MPCloudKit_Manatee *)self isFetchInProgress])
      {
        v9 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(MPCloudKit_Manatee *)self isFetchInProgress];
          *buf = 67109120;
          LODWORD(v25) = v14;
          v11 = "Manatee: fetchAccessoryKeyBlob already in-progress: %i";
          v12 = v9;
          v13 = 8;
          goto LABEL_16;
        }
      }

      else
      {
        v15 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
        v16 = v15 == 0;

        if (v16)
        {
          v9 = sub_100005C14("MagicPairing");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "Manatee: recordZoneAccessoryDatabase is nil";
            v12 = v9;
            v13 = 2;
            goto LABEL_16;
          }
        }

        else
        {
          [(MPCloudKit_Manatee *)self setIsFetchInProgress:1];
          v17 = [CKRecordID alloc];
          v18 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
          v19 = [v18 zoneID];
          v9 = [v17 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v19];

          v20 = +[CloudXPCService sharedInstance];
          [v20 beginTransaction:@"ManateeFetchAccessoryKeyBlob"];

          objc_initWeak(buf, self);
          v21 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1000BA808;
          v22[3] = &unk_1002BAB58;
          v22[4] = self;
          v23[1] = a3;
          objc_copyWeak(v23, buf);
          [v21 fetchRecordWithID:v9 completionHandler:v22];

          objc_destroyWeak(v23);
          objc_destroyWeak(buf);
        }
      }
    }

    else if (v10)
    {
      *buf = 136315138;
      v25 = "[MPCloudKit_Manatee _fetchAccessoryKeyBlob:]";
      v11 = "Manatee: Exhausted all retries...: %s";
      v12 = v9;
      v13 = 12;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

  else
  {
    v9 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001F689C();
    }
  }
}

- (void)updateCloudKitBlobZone:(id)a3
{
  v4 = a3;
  if ([(MPCloudKit_Manatee *)self manateeZoneUpgraded])
  {
    v5 = [(MPCloudKit_Manatee *)self isWriteMasterKeysInProgress];
    v6 = sub_100005C14("MagicPairing");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: updateCloudKitBlobZone already in the process...", buf, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: updating CloudKit Blob", v8, 2u);
      }

      [(MPCloudKit_Manatee *)self setIsWriteMasterKeysInProgress:1];
      [(MPCloudKit_Manatee *)self modifyKeyBlob:v4 withRetryCount:0];
    }
  }
}

- (void)modifyKeyBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: modifyKeyBlob with retry count: %lu", buf, 0xCu);
  }

  v8 = +[CloudXPCService sharedInstance];
  [v8 beginTransaction:@"ManateeModifyKeyBlob"];

  v9 = [CKRecordID alloc];
  v10 = [(MPCloudKit_Manatee *)self recordZoneBlob];
  v11 = [v10 zoneID];
  v12 = [v9 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v11];

  v13 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000BB524;
  v15[3] = &unk_1002B9D80;
  v16 = v6;
  v17 = a4;
  v15[4] = self;
  v14 = v6;
  [v13 fetchRecordWithID:v12 completionHandler:v15];
}

- (void)handleModifyMasterKeyError:(id)a3 forBlob:(id)a4 withRetryCount:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8 || a5 > 3)
  {
    goto LABEL_48;
  }

  v10 = [v8 domain];
  if ([v10 isEqualToString:CKErrorDomain])
  {
    if ([v8 code] == 3 || objc_msgSend(v8, "code") == 7 || objc_msgSend(v8, "code") == 4 || objc_msgSend(v8, "code") == 9)
    {

      goto LABEL_9;
    }

    v43 = [v8 code];

    if (v43 == 6)
    {
LABEL_9:
      v11 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6AF0();
      }

      v12 = [v8 userInfo];
      v13 = [v12 objectForKeyedSubscript:CKErrorRetryAfterKey];

      if (v13)
      {
        v14 = [v8 userInfo];
        v15 = [v14 objectForKeyedSubscript:CKErrorRetryAfterKey];
        [v15 doubleValue];
        v17 = v16;

        v18 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v54 = v8;
          v55 = 2048;
          v56 = a5;
          v57 = 2048;
          v58 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Manatee: Updating master key failed with error %@, retry count = %lu with time: %lu", buf, 0x20u);
        }

        v19 = dispatch_time(0, (v17 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000BBE8C;
        block[3] = &unk_1002B86B8;
        block[4] = self;
        v50 = v9;
        v51 = a5;
        dispatch_after(v19, &_dispatch_main_q, block);

        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else
  {
  }

  v20 = [v8 domain];
  if ([v20 isEqualToString:CKErrorDomain])
  {
    if ([v8 code] == 26)
    {

LABEL_44:
      v39 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6A88();
      }

      [(MPCloudKit_Manatee *)self writeKeyBlob:v9 withRetryCount:0];
      goto LABEL_49;
    }

    v38 = [v8 code];

    if (v38 == 11)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v21 = [v8 domain];
  if ([v21 isEqualToString:CKErrorDomain])
  {
    v22 = [v8 code];

    if (v22 == 112)
    {
      v23 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Manatee: handleModifyMasterKeyError lost access to manatee data. Reset and recreate zone.", buf, 2u);
      }

      v24 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Manatee: handleModifyMasterKeyError Reset and recreate zone DONE!", buf, 2u);
      }

      [(MPCloudKit_Manatee *)self resetCloudContainerManateeIdentityLost];
      goto LABEL_49;
    }
  }

  else
  {
  }

  v25 = [v8 domain];
  if (([v25 isEqualToString:CKErrorDomain] & 1) == 0)
  {

    goto LABEL_48;
  }

  v26 = [v8 userInfo];
  v27 = [v26 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  if (!v27)
  {
LABEL_48:
    [(MPCloudKit_Manatee *)self setIsWriteMasterKeysInProgress:0];
    goto LABEL_49;
  }

  v44 = v9;
  v28 = [v8 userInfo];
  v29 = [v28 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v46;
    while (2)
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [v30 objectForKey:*(*(&v45 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = [v35 domain];
          if ([v36 isEqualToString:CKErrorDomain])
          {
            v37 = [v35 code];

            if (v37 == 112)
            {
              v40 = sub_100005C14("MagicPairing");
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v54 = v35;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Manatee: handleModifyMasterKeyError lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
              }

              v42 = sub_100005C14("MagicPairing");
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Manatee: handleModifyMasterKeyError. Reset and recreate zone DONE!", buf, 2u);
              }

              [(MPCloudKit_Manatee *)self resetCloudContainerManateeIdentityLost];
              goto LABEL_55;
            }
          }

          else
          {
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

LABEL_55:

  v9 = v44;
LABEL_49:
}

- (void)writeKeyBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  if ([(MPCloudKit_Manatee *)self manateeZoneUpgraded])
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MPCloudKit_Manatee *)self recordZoneBlob];
      v9 = [v8 zoneID];
      v10 = [v9 zoneName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " >>>writeKeyBlob  Record Zone %@", &buf, 0xCu);
    }

    v11 = [CKRecordID alloc];
    v12 = [(MPCloudKit_Manatee *)self recordZoneBlob];
    v13 = [v12 zoneID];
    v14 = [v11 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v13];

    v15 = [[CKRecord alloc] initWithRecordType:@"MasterKey" recordID:v14];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = sub_100003988;
    v49 = sub_100003870;
    v50 = 0;
    v16 = dispatch_semaphore_create(0);
    v17 = [v15 encryptedValues];
    [v17 setObject:v6 forKeyedSubscript:@"EncryptedMasterKeyBlob"];

    v18 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 138412290;
      v43 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "writeKeyBlob: kMagicCloudPairingProtectedMasterBlob fetch: encryptedBlob %@", v42, 0xCu);
    }

    v19 = +[CloudXPCService sharedInstance];
    [v19 beginTransaction:@"ManateeWriteKeyBlob"];

    objc_initWeak(&location, self);
    v20 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v21 = [(MPCloudKit_Manatee *)self recordZoneBlob];
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_1000BC394;
    v34 = &unk_1002BAC10;
    v40[1] = a4;
    p_buf = &buf;
    v35 = self;
    v36 = v6;
    objc_copyWeak(v40, &location);
    v22 = v15;
    v37 = v22;
    v23 = v16;
    v38 = v23;
    [v20 saveRecordZone:v21 completionHandler:&v31];

    v24 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v23, v24);
    [(MPCloudKit_Manatee *)self setIsWriteMasterKeysInProgress:0, v31, v32, v33, v34, v35];
    [(MPCloudKit_Manatee *)self setMasterBlob:0];
    v25 = +[CloudXPCService sharedInstance];
    [v25 endTransaction:@"ManateeWriteKeyBlob"];

    if (*(*(&buf + 1) + 40))
    {
      v26 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(MPCloudKit_Manatee *)self recordZoneBlob];
        v28 = [v27 zoneID];
        v29 = [v28 zoneName];
        v30 = *(*(&buf + 1) + 40);
        *v42 = 138412546;
        v43 = v29;
        v44 = 2112;
        v45 = v30;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " >>>writeKeyBlob  Record Zone %@ failed with error %@", v42, 0x16u);
      }
    }

    objc_destroyWeak(v40);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [(MPCloudKit_Manatee *)self setIsWriteMasterKeysInProgress:0];
  }
}

- (void)updateCloudKitAccessoryZone:(id)a3 delete:(BOOL)a4
{
  v6 = a3;
  if ([(MPCloudKit_Manatee *)self isAccountActive])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BCF4C;
    block[3] = &unk_1002B7170;
    v11 = a4;
    v9 = v6;
    v10 = self;
    dispatch_async(&_dispatch_main_q, block);
    v7 = v9;
  }

  else
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6B64();
    }
  }
}

- (void)modifyAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  if ([(MPCloudKit_Manatee *)self manateeZoneUpgraded])
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, ">>> Manatee: modifyAccessoryBlob - %lu", buf, 0xCu);
    }

    v8 = dispatch_semaphore_create(0);
    v9 = +[CloudXPCService sharedInstance];
    [v9 beginTransaction:@"ManateeModifyAccessoryBlob"];

    v10 = [CKRecordID alloc];
    v11 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v12 = [v11 zoneID];
    v13 = [v10 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v12];

    objc_initWeak(buf, self);
    v14 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BD544;
    v17[3] = &unk_1002BAC38;
    objc_copyWeak(v20, buf);
    v18 = v6;
    v20[1] = a4;
    v15 = v8;
    v19 = v15;
    [v14 fetchRecordWithID:v13 completionHandler:v17];

    v16 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v15, v16);

    objc_destroyWeak(v20);
    objc_destroyWeak(buf);
  }
}

- (void)handleAccessoryModifyError:(id)a3 forBlob:(id)a4 withRetryCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v51 = v8;
    if (a5 >= 5)
    {
      v9 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6E3C();
      }

      goto LABEL_24;
    }

    v10 = [v7 domain];
    if ([v10 isEqualToString:CKErrorDomain])
    {
      if ([v7 code] == 3 || objc_msgSend(v7, "code") == 4 || objc_msgSend(v7, "code") == 9)
      {

        goto LABEL_11;
      }

      v31 = [v7 code];

      if (v31 == 6)
      {
LABEL_11:
        v11 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001F6DD4();
        }

LABEL_13:

        v12 = +[CloudXPCService sharedInstance];
        v13 = [NSNumber numberWithBool:0];
        v14 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v13, @"kUploadStatus", 0];
        [v12 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v14];

LABEL_24:
        v8 = v51;
        goto LABEL_25;
      }
    }

    else
    {
    }

    if ([v7 code] == 7)
    {
      v15 = [v7 userInfo];
      v16 = CKErrorRetryAfterKey;
      v17 = [v15 objectForKeyedSubscript:CKErrorRetryAfterKey];
      if (v17)
      {

LABEL_21:
        v19 = [v7 userInfo];
        v20 = [v19 objectForKeyedSubscript:v16];
        [v20 doubleValue];
        v22 = v21;

        v23 = sub_100005C14("MagicPairing");
        v24 = v22 + 10.0;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v64 = v7;
          v65 = 2048;
          v66 = a5;
          v67 = 2048;
          v68 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Manatee: modify AccessoryBlob failed with error %@, retry count = %lu, retry time: %lu", buf, 0x20u);
        }

        v25 = dispatch_time(0, (v24 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000BE404;
        block[3] = &unk_1002B86B8;
        block[4] = self;
        v60 = v51;
        v61 = a5;
        dispatch_after(v25, &_dispatch_main_q, block);

        goto LABEL_24;
      }

      IsCode = CKErrorIsCode();

      if (IsCode)
      {
        goto LABEL_21;
      }
    }

    else if (CKErrorIsCode())
    {
      v16 = CKErrorRetryAfterKey;
      goto LABEL_21;
    }

    v26 = [v7 domain];
    if ([v26 isEqualToString:CKErrorDomain])
    {
      if ([v7 code] == 26)
      {

LABEL_56:
        v45 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1001F6D6C();
        }

        objc_initWeak(buf, self);
        v46 = [(MPCloudKit_Manatee *)self modifyOperationQueue];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000BE558;
        v56[3] = &unk_1002B9E98;
        objc_copyWeak(&v58, buf);
        v57 = v51;
        [v46 addOperationWithBlock:v56];

        objc_destroyWeak(&v58);
        objc_destroyWeak(buf);
        goto LABEL_24;
      }

      v44 = [v7 code];

      if (v44 == 11)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    v27 = [v7 domain];
    if ([v27 isEqualToString:CKErrorDomain])
    {
      v28 = [v7 code];

      if (v28 == 112)
      {
        v29 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError lost access to manatee data. Reset and recreate zone.", buf, 2u);
        }

        v30 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError Reset and recreate zone DONE!", buf, 2u);
        }

        [(MPCloudKit_Manatee *)self resetCloudContainerManateeIdentityLost];
        goto LABEL_24;
      }
    }

    else
    {
    }

    v32 = [v7 domain];
    if ([v32 isEqualToString:CKErrorDomain])
    {
      v33 = [v7 userInfo];
      v34 = [v33 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      if (v34)
      {
        v35 = [v7 userInfo];
        v36 = [v35 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v37 = v36;
        v38 = [v37 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v38)
        {
          v39 = *v53;
          while (2)
          {
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v53 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = [v37 objectForKey:*(*(&v52 + 1) + 8 * i)];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = [v41 domain];
                if ([v42 isEqualToString:CKErrorDomain])
                {
                  v43 = [v41 code] == 112;

                  if (v43)
                  {
                    v47 = sub_100005C14("MagicPairing");
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v64 = v41;
                      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                    }

                    v49 = sub_100005C14("MagicPairing");
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError. Reset and recreate zone DONE!", buf, 2u);
                    }

                    [(MPCloudKit_Manatee *)self resetCloudContainerManateeIdentityLost];
                    goto LABEL_68;
                  }
                }

                else
                {
                }
              }
            }

            v38 = [v37 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

LABEL_68:

        goto LABEL_24;
      }
    }

    else
    {
    }

    v11 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6D04();
    }

    goto LABEL_13;
  }

LABEL_25:
}

- (void)writeAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  if ([(MPCloudKit_Manatee *)self manateeZoneUpgraded])
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
      v9 = [v8 zoneID];
      v10 = [v9 zoneName];
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: >>> writeAccessoryBlob Record Zone %@", buf, 0xCu);
    }

    v11 = [CKRecordID alloc];
    v12 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v13 = [v12 zoneID];
    v14 = [v11 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v13];

    v15 = [[CKRecord alloc] initWithRecordType:@"AccessoryDatabase" recordID:v14];
    v16 = [v15 encryptedValues];
    [v16 setObject:v6 forKeyedSubscript:@"EncryptedAccessoryBlob"];

    v17 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob: MagicCloudPairingProtectedAccessoryBlob fetch: encryptedBlob %@", buf, 0xCu);
    }

    v18 = +[CloudXPCService sharedInstance];
    [v18 beginTransaction:@"ManateeWriteAccessoryBlob"];

    v19 = dispatch_semaphore_create(0);
    objc_initWeak(buf, self);
    v20 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v21 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000BE920;
    v25[3] = &unk_1002BAC60;
    objc_copyWeak(v29, buf);
    v25[4] = self;
    v22 = v15;
    v26 = v22;
    v29[1] = a4;
    v27 = v6;
    v23 = v19;
    v28 = v23;
    [v20 saveRecordZone:v21 completionHandler:v25];

    v24 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v23, v24);

    objc_destroyWeak(v29);
    objc_destroyWeak(buf);
  }
}

- (void)deleteCloudKitAccessoryZone
{
  v3 = dispatch_semaphore_create(0);
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v6 = [v5 zoneID];
    v7 = [v6 zoneName];
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee: >>> deleteCloudKitAccessoryZone %@", buf, 0xCu);
  }

  v8 = [CKRecordID alloc];
  v9 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
  v10 = [v9 zoneID];
  v11 = [v8 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v10];

  v12 = +[CloudXPCService sharedInstance];
  [v12 beginTransaction:@"ManateeDeleteCloudKitAccessoryZone"];

  v13 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BF814;
  v19[3] = &unk_1002B9F10;
  v20 = v3;
  v14 = v3;
  [v13 deleteRecordWithID:v11 completionHandler:v19];

  v15 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v14, v15);
  v16 = +[CloudXPCService sharedInstance];
  v17 = [v16 deviceManager];
  [v17 deleteLegacyMagicPairingRecordsWithUserInitiated:1 completion:&stru_1002BAC80];

  v18 = +[CloudXPCService sharedInstance];
  [v18 endTransaction:@"ManateeDeleteCloudKitAccessoryZone"];
}

- (void)createSubscritionForRecordType:(id)a3
{
  v4 = a3;
  v5 = [(MPCloudKit_Manatee *)self manateeZoneUpgraded];
  v6 = sub_100005C14("MagicPairing");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 1) == 0)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    *buf = 0;
    v11 = "Manatee zone not upgraded.";
    v12 = v6;
    v13 = 2;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_25;
  }

  if (v7)
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: createSubscritionForRecordType: %@", buf, 0xCu);
  }

  if ([v4 isEqualToString:@"EncryptedMasterKeyBlob"])
  {
    v8 = [(MPCloudKit_Manatee *)self readUserPreference:@"MagicCloudPairingMasterSubscriptionManateeID"];
    if (v8)
    {
      v6 = v8;
      v9 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v6;
        v10 = "Manatee: master subscription already exists: %@";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v15 = [CKRecordZoneSubscription alloc];
    v16 = [(MPCloudKit_Manatee *)self recordZoneBlob];
    v17 = @"MagicCloudPairingMasterSubscriptionManateeID";
  }

  else
  {
    if (![v4 isEqualToString:@"EncryptedAccessoryBlob"])
    {
LABEL_22:
      v6 = sub_100005C14("MagicPairing");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v25 = v4;
      v11 = "Manatee: Unable to create zone subscription key: %@";
      v12 = v6;
      v13 = 12;
      goto LABEL_24;
    }

    v14 = [(MPCloudKit_Manatee *)self readUserPreference:@"MagicCloudPairingAccessorySubscriptionManateeID"];
    if (v14)
    {
      v6 = v14;
      v9 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v6;
        v10 = "Manatee: accessory subscription already exists: %@";
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_25;
    }

    v15 = [CKRecordZoneSubscription alloc];
    v16 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v17 = @"MagicCloudPairingAccessorySubscriptionManateeID";
  }

  v18 = [v16 zoneID];
  v6 = [v15 initWithZoneID:v18];

  if (!v6)
  {
    goto LABEL_22;
  }

  v19 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Manatee: Attempting to save subscription for recordType: %@", buf, 0xCu);
  }

  v20 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000BFDA4;
  v21[3] = &unk_1002B9F58;
  v22 = v17;
  v23 = self;
  [v20 saveSubscription:v6 completionHandler:v21];

LABEL_25:
}

- (void)fetchSubscriptionForRecordType:(id)a3 andPrefKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPCloudKit_Manatee *)self readUserPreference:v7];
  v9 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: Verify Fetch cached Subscription ID - %@ for record - %@", buf, 0x16u);
  }

  v10 = sub_100005C14("MagicPairing");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee: Found cached Subscription ID - %@", buf, 0xCu);
    }

    v12 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v13 = [(MPCloudKit_Manatee *)self readUserPreference:v7];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C027C;
    v14[3] = &unk_1002B9F80;
    v15 = v8;
    v16 = self;
    v17 = v7;
    v18 = v6;
    [v12 fetchSubscriptionWithID:v13 completionHandler:v14];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee: Subscription cannot be Fetched, create it...", buf, 2u);
    }

    [(MPCloudKit_Manatee *)self createSubscritionForRecordType:v6];
  }
}

- (void)verifyAndCacheSubscriptionID:(id)a3
{
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee: verifyAndCacheSubscriptionID - %@", buf, 0xCu);
  }

  v6 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C05F0;
  v8[3] = &unk_1002B9F58;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 fetchSubscriptionWithID:v7 completionHandler:v8];
}

- (void)removeSubscritionForRecordType:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee: Attempting to delete Subscription for record type - %@ ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C0940;
  v8[3] = &unk_1002B9FF8;
  objc_copyWeak(&v11, buf);
  v7 = v4;
  v9 = v7;
  v10 = v12;
  [v6 fetchAllSubscriptionsWithCompletionHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  _Block_object_dispose(v12, 8);
}

- (id)apsEnvironmentString
{
  v3 = xpc_copy_entitlement_for_token();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003988;
  v23 = sub_100003870;
  v24 = 0;
  if (v3)
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = v20[5];
    v20[5] = v4;

    v6 = v20[5];
    if (v6)
    {
      if (![v6 compare:CKPushEnvironmentServerPreferred options:1])
      {
        v7 = dispatch_semaphore_create(0);
        v8 = [(MPCloudKit_Manatee *)self cloudKitContainer];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000C10CC;
        v16[3] = &unk_1002BA020;
        v18 = &v19;
        v9 = v7;
        v17 = v9;
        [v8 serverPreferredPushEnvironmentWithCompletionHandler:v16];

        v10 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(v9, v10))
        {
          v11 = sub_100005C14("MagicPairing");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timeout getting server preferred push environment", buf, 2u);
          }
        }
      }
    }
  }

  v12 = v20[5];
  if (!v12)
  {
    v12 = APSEnvironmentProduction;
  }

  v13 = v12;
  v14 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using push environment %@", buf, 0xCu);
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)pushEnable
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];

  if (![v4 length])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 executablePath];
    v7 = [v6 lastPathComponent];

    v4 = v7;
  }

  v8 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: Enable Push Notification Updated for bundle ID: %@", &v10, 0xCu);
  }

  v9 = +[_TtC15audioaccessoryd16CloudPushService shared];
  [v9 addWithDelegate:self];
}

- (void)pushDisable
{
  v3 = +[_TtC15audioaccessoryd16CloudPushService shared];
  [v3 removeWithDelegate:self];
}

- (BOOL)manateeZoneUpgraded
{
  v2 = [(MPCloudKit_Manatee *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee: Master zone has been upgraded. Dont generate keys", v5, 2u);
    }
  }

  return v2 != 0;
}

- (void)resetCloudContainerManateeIdentityLost
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C146C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)resetMasterZone:(id)a3 accessoryblob:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MPCloudKit_Manatee *)self isAccountActive])
  {
    v8 = +[CloudXPCService sharedInstance];
    [v8 beginTransaction:@"resetMasterZone"];

    v9 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MPCloudKit_Manatee *)self recordZoneBlob];
      v11 = [v10 zoneID];
      v12 = [v11 zoneName];
      *buf = 138412290;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " >>> resetMasterZone Record Zone %@", buf, 0xCu);
    }

    v13 = dispatch_time(0, 10000000000);
    v14 = dispatch_semaphore_create(0);
    v15 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v16 = [(MPCloudKit_Manatee *)self recordZoneBlob];
    v17 = [v16 zoneID];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1000C1FD4;
    v27 = &unk_1002BACA8;
    v28 = v14;
    v18 = v14;
    [v15 deleteRecordZoneWithID:v17 completionHandler:&v24];

    dispatch_semaphore_wait(v18, v13);
    [(MPCloudKit_Manatee *)self _updateMasterZoneBlob:v6 accessoryblob:v7, v24, v25, v26, v27];
    v19 = +[CloudXPCService sharedInstance];
    [v19 endTransaction:@"resetMasterZone"];
  }

  else
  {
    v20 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "resetMasterZone account not active upgrade pref and reload account status", buf, 2u);
    }

    v21 = [(MPCloudKit_Manatee *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    if (!v21)
    {
      [(MPCloudKit_Manatee *)self setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      v22 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "resetMasterZone Master zone has been upgraded successfully", buf, 2u);
      }

      [(MPCloudKit_Manatee *)self accountStatusDidChange:0];
      v23 = dispatch_time(0, 10000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C1FC4;
      block[3] = &unk_1002B6CF0;
      block[4] = self;
      v30 = v6;
      v31 = v7;
      dispatch_after(v23, &_dispatch_main_q, block);
    }
  }
}

- (void)_updateMasterZoneBlob:(id)a3 accessoryblob:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CloudXPCService sharedInstance];
  [v8 beginTransaction:@"updateMasterZoneBlob"];

  v9 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MPCloudKit_Manatee *)self recordZoneBlob];
    v11 = [v10 zoneID];
    v12 = [v11 zoneName];
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " >>>updateMasterZoneBlob  Record Zone %@", buf, 0xCu);
  }

  v13 = [CKRecordID alloc];
  v14 = [(MPCloudKit_Manatee *)self recordZoneBlob];
  v15 = [v14 zoneID];
  v16 = [v13 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v15];

  v17 = [[CKRecord alloc] initWithRecordType:@"MasterKey" recordID:v16];
  v18 = [v17 encryptedValues];
  [v18 setObject:v7 forKeyedSubscript:@"EncryptedMasterKeyBlob"];

  v19 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob: kMagicCloudPairingProtectedMasterBlob fetch: encryptedBlob %@", buf, 0xCu);
  }

  v20 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
  v21 = [(MPCloudKit_Manatee *)self recordZoneBlob];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000C2388;
  v24[3] = &unk_1002BAD68;
  v24[4] = self;
  v25 = v17;
  v26 = v6;
  v22 = v6;
  v23 = v17;
  [v20 saveRecordZone:v21 completionHandler:v24];
}

- (void)resetAccessoryZone:(id)a3
{
  v4 = a3;
  if ([(MPCloudKit_Manatee *)self isAccountActive])
  {
    v5 = +[CloudXPCService sharedInstance];
    [v5 beginTransaction:@"resetAccessoryZone"];

    v6 = dispatch_semaphore_create(0);
    v7 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v8 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v9 = [v8 zoneID];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000C2978;
    v15[3] = &unk_1002BACA8;
    v10 = v6;
    v16 = v10;
    [v7 deleteRecordZoneWithID:v9 completionHandler:v15];

    v11 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v10, v11);
    v12 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "resetAccessoryZone record", v14, 2u);
    }

    [(MPCloudKit_Manatee *)self upgradeAccessoryBlob:v4 withRetryCount:4];
    v13 = +[CloudXPCService sharedInstance];
    [v13 endTransaction:@"resetAccessoryZone"];
  }
}

- (void)upgradeAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  if ([(MPCloudKit_Manatee *)self isAccountActive])
  {
    v7 = +[CloudXPCService sharedInstance];
    [v7 beginTransaction:@"upgradeAccessoryBlob"];

    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
      v10 = [v9 zoneID];
      v11 = [v10 zoneName];
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob:  Creating Record Zone %@", buf, 0xCu);
    }

    v12 = [CKRecordID alloc];
    v13 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v14 = [v13 zoneID];
    v15 = [v12 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v14];

    v16 = [[CKRecord alloc] initWithRecordType:@"AccessoryDatabase" recordID:v15];
    v17 = [v16 encryptedValues];
    [v17 setObject:v6 forKeyedSubscript:@"EncryptedAccessoryBlob"];

    v18 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob: MagicCloudPairingProtectedAccessoryBlob fetch: encryptedBlob %@", buf, 0xCu);
    }

    v19 = [(MPCloudKit_Manatee *)self cloudKitDatabase];
    v20 = [(MPCloudKit_Manatee *)self recordZoneAccessoryDatabase];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000C2D28;
    v22[3] = &unk_1002BAD90;
    v25 = a4;
    v22[4] = self;
    v23 = v6;
    v24 = v16;
    v21 = v16;
    [v19 saveRecordZone:v20 completionHandler:v22];
  }
}

- (OS_dispatch_queue)pushDelegateQueue
{
  v3 = [(MPCloudKit_Manatee *)self pushQueue];

  if (!v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.bluetooth.mpcloudkit.push", v4);
    [(MPCloudKit_Manatee *)self setPushQueue:v5];
  }

  return [(MPCloudKit_Manatee *)self pushQueue];
}

- (void)didReceiveWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [CKNotification notificationFromRemoteNotificationDictionary:v5];
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 topic];
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: ***** APS Push received: %@ \n %@ \n", buf, 0x16u);
  }

  v9 = [v6 containerIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.securedBluetooth"];

  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C3784;
    v11[3] = &unk_1002B6D18;
    v12 = v6;
    v13 = self;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

- (void)didReceiveWithPublicToken:(id)a3
{
  v3 = a3;
  if (IsAppleInternalBuild())
  {
    v4 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 base64EncodedStringWithOptions:0];
      sub_10008DCC4();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee: Received public token %@ on connection", v6, 0xCu);
    }
  }
}

- (void)didReceiveWithToken:(id)a3 forTopic:(id)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IsAppleInternalBuild())
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 base64EncodedStringWithOptions:0];
      sub_10008DCC4();
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee: Received per-topic push token %@ for topic %@ identifier %@ on connection", v12, 0x20u);
    }
  }
}

@end