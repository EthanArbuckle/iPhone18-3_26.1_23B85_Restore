@interface MPCloudKit
+ (id)sharedInstance;
- (BOOL)initializedCKAfterFirstUnlockedSinceBoot;
- (BOOL)manateeZoneUpgraded;
- (MPCloudKit)initWithRecordZoneName;
- (NSString)description;
- (OS_dispatch_queue)pushDelegateQueue;
- (id)apsEnvironmentString;
- (id)hexStringForData:(id)a3;
- (id)readUserPreference:(id)a3;
- (void)_pushTimerFired:(id)a3;
- (void)accountStatusDidChange:(id)a3;
- (void)buddySetupDone;
- (void)checkAccountStatusWithCompletionHandler:(id)a3 withRetryCount:(unint64_t)a4;
- (void)createSubscritionForRecordType:(id)a3;
- (void)dealloc;
- (void)deleteCloudKitAccessoryZone;
- (void)deleteLegacyMasterKey;
- (void)didReceiveWithMessage:(id)a3;
- (void)didReceiveWithPublicToken:(id)a3;
- (void)didReceiveWithToken:(id)a3 forTopic:(id)a4 identifier:(id)a5;
- (void)fetchAccessoryKeyBlob:(unint64_t)a3;
- (void)fetchAccountStatusWithCompletion:(id)a3;
- (void)fetchKeyBlob:(unint64_t)a3;
- (void)fetchSubscriptionForRecordType:(id)a3 andPrefKey:(id)a4;
- (void)forceAccountStatus;
- (void)handleAccessoryKeyModifyError:(id)a3 forBlob:(id)a4 withRetryCount:(unint64_t)a5;
- (void)handleModifyMasterKeyError:(id)a3 forBlob:(id)a4 withRetryCount:(unint64_t)a5;
- (void)initializeCloudKit;
- (void)markLegacyNonManateeContainerMigrated;
- (void)modifyAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4;
- (void)modifyKeyBlob:(id)a3 withRetryCount:(unint64_t)a4;
- (void)pushDisable;
- (void)pushEnable;
- (void)removeSubscritionForRecordType:(id)a3;
- (void)removeuserPreference:(id)a3 sync:(BOOL)a4;
- (void)resetOldZones;
- (void)setupSubscriptions;
- (void)setuserPreference:(id)a3 value:(id)a4 sync:(BOOL)a5;
- (void)updateCloudKitAccessoryZone:(id)a3 delete:(BOOL)a4;
- (void)updateCloudKitBlobZone:(id)a3;
- (void)upgradeLegacyNonManateeContainerToManatee;
- (void)verifyAndCacheSubscriptionID:(id)a3;
- (void)writeAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4;
- (void)writeKeyBlob:(id)a3 withRetryCount:(unint64_t)a4;
@end

@implementation MPCloudKit

+ (id)sharedInstance
{
  if (qword_1002FA160 != -1)
  {
    sub_1001F1EDC();
  }

  v3 = qword_1002FA158;

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPCloudKit;
  [(MPCloudKit *)&v4 dealloc];
}

- (NSString)description
{
  v2 = [(MPCloudKit *)self cloudContainerIdentifier];
  v3 = [NSString stringWithFormat:@"MPCloudKit: Container - %@", v2];

  return v3;
}

- (MPCloudKit)initWithRecordZoneName
{
  v17.receiver = self;
  v17.super_class = MPCloudKit;
  v2 = [(MPCloudKit *)&v17 init];
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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MP BYSetupAssistantNeedsToRun : true ", buf, 2u);
    }

    v11 = +[CloudXPCService sharedInstance];
    [v11 beginTransaction:@"com.apple.bluetooth.user.services.mpcloudkit.buddysetup"];

    v3->_reinitAfterBuddy = 1;
    objc_initWeak(buf, v3);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000923F8;
    v14[3] = &unk_1002B9618;
    objc_copyWeak(&v15, buf);
    v12 = [BTStateWatcher monitorBuddyStateWithAction:v14];
    [(MPCloudKit *)v3 setBuddyStateWatcher:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
    goto LABEL_12;
  }

  if (v10)
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MP BYSetupAssistantNeedsToRun : false ", buf, 2u);
  }

  v3->_reinitAfterBuddy = 0;
  if (![(MPCloudKit *)v3 initializedCKAfterFirstUnlockedSinceBoot])
  {
LABEL_12:
    [(MPCloudKit *)v3 initializedCKAfterFirstUnlockedSinceBoot];
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unlocked since boot = %{public}@", buf, 0xCu);
  }

  if (v3 == 1)
  {
    v6 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device is already unlocked after boot ", buf, 2u);
    }

    [(MPCloudKit *)self initializeCloudKit];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000925E0;
    block[3] = &unk_1002B6880;
    block[4] = self;
    if (qword_1002FA168 != -1)
    {
      dispatch_once(&qword_1002FA168, block);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forcing account update to bluetoothd", v5, 2u);
  }

  v4 = [(MPCloudKit *)self cloudKitContainer];
  [v4 accountStatusWithCompletionHandler:&stru_1002B9C50];
}

- (void)buddySetupDone
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "buddySetupDone : reset timer now ", buf, 2u);
  }

  if (self->_reinitAfterBuddy)
  {
    [(MPCloudKit *)self initializedCKAfterFirstUnlockedSinceBoot];
  }

  else
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"accountStatusDidChange:" name:CKAccountChangedNotification object:0];

    v5 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buddySetupDone : re-intt cloud kit not needed", v7, 2u);
    }
  }

  self->_reinitAfterBuddy = 0;
  v6 = +[CloudXPCService sharedInstance];
  [v6 endTransaction:@"com.apple.bluetooth.user.services.mpcloudkit.buddysetup"];
}

- (void)initializeCloudKit
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "non manatee initializeCloudKit : start ", v13, 2u);
  }

  v4 = [CKContainer containerWithIdentifier:@"com.apple.bluetooth"];
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
  [(MPCloudKit *)self pushEnable];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"accountStatusDidChange:" name:CKAccountChangedNotification object:0];

  [(MPCloudKit *)self accountStatusDidChange:0];
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
  v5 = [(MPCloudKit *)self manateeZoneUpgraded];
  v6 = sub_100005C14("MagicPairing");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "accountStatusDidChange check on manatee side", buf, 2u);
    }

    v8 = +[MPCloudKit_Manatee sharedInstance];
    [v8 getAccountStatus];
  }

  else
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "accountStatusDidChange calling accountStatusWithCompletionHandler", buf, 2u);
    }

    v9 = [(MPCloudKit *)self cloudKitContainer];

    if (!v9)
    {
      v10 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "non-Manatee accountStatusDidChange cloudKitContainer is nil", buf, 2u);
      }

      [(MPCloudKit *)self initializeCloudKit];
    }

    objc_initWeak(buf, self);
    v11 = [(MPCloudKit *)self cloudKitContainer];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009300C;
    v12[3] = &unk_1002B9C78;
    objc_copyWeak(&v13, buf);
    [v11 accountStatusWithCompletionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)setupSubscriptions
{
  [(MPCloudKit *)self createSubscritionForRecordType:@"EncryptedMasterKeyBlob"];

  [(MPCloudKit *)self createSubscritionForRecordType:@"EncryptedAccessoryBlob"];
}

- (void)fetchAccountStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPCloudKit *)self cloudKitContainer];

  if (v5)
  {
    cloudKitContainer = self->_cloudKitContainer;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000936A4;
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
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "non-Manatee fetchAccountStatusWithCompletion cloudKitContainer is nil", buf, 2u);
  }

  if (v4)
  {
    v7 = [NSError errorWithDomain:@"CloudKit Account Not Active" code:0 userInfo:0];
    (*(v4 + 2))(v4, 0, v7);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_pushTimerFired:(id)a3
{
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MP Push Timer Fired: %@", buf, 0xCu);
  }

  v6 = [(MPCloudKit *)self pushTimer];

  if (v6)
  {
    v7 = [(MPCloudKit *)self pushTimer];
    [v7 invalidate];

    [(MPCloudKit *)self setPushTimer:0];
  }

  if ([(MPCloudKit *)self manateeZoneUpgraded])
  {
    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MP Push Timer fired but we are now upgraded to manatee", buf, 2u);
    }

    v9 = +[MPCloudKit_Manatee sharedInstance];
    [v9 fetchAccessoryKeyBlob:0];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009388C;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)fetchKeyBlob:(unint64_t)a3
{
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MP fetchKeyBlob: %lu", buf, 0xCu);
  }

  if ([(MPCloudKit *)self manateeZoneUpgraded])
  {
    v6 = +[MPCloudKit_Manatee sharedInstance];
    [v6 fetchKeyBlob:0];
    goto LABEL_14;
  }

  if ([(MPCloudKit *)self isWriteMasterKeysInProgress])
  {
    v6 = sub_100005C14("MagicPairing");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = "MP already writing new key";
    goto LABEL_8;
  }

  v10 = [(MPCloudKit *)self masterBlob];
  v11 = [v10 length];

  if (v11 != 33)
  {
    if (a3 >= 5)
    {
      v6 = sub_100005C14("MagicPairing");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 134217984;
      v24 = a3;
      v7 = "MP Exhausted all retries...: %lu";
      v8 = v6;
      v9 = 12;
      goto LABEL_9;
    }

    if ([(MPCloudKit *)self isFetchMasterKeyInProgress])
    {
      v6 = sub_100005C14("MagicPairing");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v7 = "MP fetchKeyBlob already fetching defer";
    }

    else
    {
      v16 = [(MPCloudKit *)self recordZoneBlob];

      if (v16)
      {
        [(MPCloudKit *)self setIsFetchMasterKeyInProgress:1];
        [(MPCloudKit *)self setMasterBlob:0];
        v17 = [CKRecordID alloc];
        v18 = [(MPCloudKit *)self recordZoneBlob];
        v19 = [v18 zoneID];
        v6 = [v17 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v19];

        v20 = +[CloudXPCService sharedInstance];
        [v20 beginTransaction:@"fetchKeyBlob"];

        v21 = [(MPCloudKit *)self cloudKitDatabase];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100093D00;
        v22[3] = &unk_1002B9CE8;
        v22[4] = self;
        v22[5] = a3;
        [v21 fetchRecordWithID:v6 completionHandler:v22];

        goto LABEL_14;
      }

      v6 = sub_100005C14("MagicPairing");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v7 = "non-Manatee recordZoneBlob is nil";
    }

LABEL_8:
    v8 = v6;
    v9 = 2;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_14;
  }

  v12 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MPCloudKit *)self masterBlob];
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MP fetchKeyBlob: already have master blob read  %@", buf, 0xCu);
  }

  v6 = +[CloudXPCService sharedInstance];
  v14 = [(MPCloudKit *)self masterBlob];
  v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v14, @"kMasterKeyBlob", 0];
  [v6 sendCloudKitMsg:@"MasterKeysAvailable" args:v15];

LABEL_14:
}

- (void)checkAccountStatusWithCompletionHandler:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  if (a4 < 5)
  {
    objc_initWeak(buf, self);
    v8 = [(MPCloudKit *)self cloudKitContainer];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100094774;
    v9[3] = &unk_1002B9D38;
    objc_copyWeak(v11, buf);
    v9[4] = self;
    v10 = v6;
    v11[1] = a4;
    [v8 accountStatusWithCompletionHandler:v9];

    objc_destroyWeak(v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[MPCloudKit checkAccountStatusWithCompletionHandler:withRetryCount:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MP Exhausted all account retries: %s", buf, 0xCu);
    }
  }
}

- (void)fetchAccessoryKeyBlob:(unint64_t)a3
{
  if ([(MPCloudKit *)self manateeZoneUpgraded])
  {
    v5 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory zone has been upgraded. Dont generate keys", buf, 2u);
    }

    v6 = +[MPCloudKit_Manatee sharedInstance];
    [v6 fetchAccessoryKeyBlob:a3];
LABEL_5:

    return;
  }

  if ([(MPCloudKit *)self shouldPauseFetch])
  {
    v7 = +[MPCloudKit_Manatee sharedInstance];
    v8 = [v7 shouldPauseFetch];

    if (v8)
    {
      v9 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(MPCloudKit *)self pauseErrorReason];
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetch is currently paused due to: %@", buf, 0xCu);
      }

LABEL_19:

      return;
    }
  }

  v11 = sub_100005C14("MagicPairing");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a3 < 5)
  {
    if (v12)
    {
      *buf = 134217984;
      v23 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MP fetchAccessoryKeyBlob: %lu", buf, 0xCu);
    }

    if ([(MPCloudKit *)self isFetchInProgress])
    {
      v9 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(MPCloudKit *)self isFetchInProgress];
        *buf = 67109120;
        LODWORD(v23) = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MP fetchAccessoryKeyBlob already in-progress: %i", buf, 8u);
      }

      goto LABEL_19;
    }

    v14 = [(MPCloudKit *)self recordZoneAccessoryDatabase];

    if (!v14)
    {
      v6 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "non-Manatee recordZoneAccessoryDatabase is nil", buf, 2u);
      }

      goto LABEL_5;
    }

    [(MPCloudKit *)self setIsFetchInProgress:1];
    v15 = [CKRecordID alloc];
    v16 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
    v17 = [v16 zoneID];
    v18 = [v15 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v17];

    v19 = +[CloudXPCService sharedInstance];
    [v19 beginTransaction:@"fetchAccessoryKeyBlob"];

    v20 = [(MPCloudKit *)self cloudKitDatabase];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100094D7C;
    v21[3] = &unk_1002B9CE8;
    v21[4] = self;
    v21[5] = a3;
    [v20 fetchRecordWithID:v18 completionHandler:v21];
  }

  else
  {
    if (v12)
    {
      *buf = 136315138;
      v23 = "[MPCloudKit fetchAccessoryKeyBlob:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MP Exhausted all retries...: %s", buf, 0xCu);
    }

    [(MPCloudKit *)self setIsFetchInProgress:0];
  }
}

- (void)updateCloudKitBlobZone:(id)a3
{
  v4 = a3;
  if (![(MPCloudKit *)self manateeZoneUpgraded])
  {
    v5 = [(MPCloudKit *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    if (v5)
    {
      v6 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Accessory zone has been upgraded. Dont generate keys", buf, 2u);
      }
    }

    else
    {
      v7 = [(MPCloudKit *)self isWriteMasterKeysInProgress];
      v8 = sub_100005C14("MagicPairing");
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateCloudKitBlobZone already in the process...", v11, 2u);
        }
      }

      else
      {
        if (v9)
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updating CloudKit Blob", v10, 2u);
        }

        [(MPCloudKit *)self setIsWriteMasterKeysInProgress:1];
        [(MPCloudKit *)self modifyKeyBlob:v4 withRetryCount:0];
      }
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
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "modifyKeyBlob with retry count: %lu", buf, 0xCu);
  }

  v8 = +[CloudXPCService sharedInstance];
  [v8 beginTransaction:@"modifyKeyBlob"];

  v9 = [CKRecordID alloc];
  v10 = [(MPCloudKit *)self recordZoneBlob];
  v11 = [v10 zoneID];
  v12 = [v9 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v11];

  v13 = [(MPCloudKit *)self cloudKitDatabase];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100095770;
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
    goto LABEL_17;
  }

  v10 = [v8 domain];
  if ([v10 isEqualToString:CKErrorDomain] && (objc_msgSend(v8, "code") == 3 || objc_msgSend(v8, "code") == 7 || objc_msgSend(v8, "code") == 4 || objc_msgSend(v8, "code") == 9 || objc_msgSend(v8, "code") == 6))
  {

    v11 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2048;
      v28 = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating master key failed with error %@, retry count = %lu", buf, 0x16u);
    }

    v12 = [v8 userInfo];
    v13 = [v12 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v13)
    {
      v14 = [v8 userInfo];
      v15 = [v14 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v15 doubleValue];
      v17 = v16;

      v18 = dispatch_time(0, (v17 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100095E48;
      block[3] = &unk_1002B86B8;
      block[4] = self;
      v23 = v9;
      v24 = a5;
      dispatch_after(v18, &_dispatch_main_q, block);

      goto LABEL_18;
    }

LABEL_17:
    [(MPCloudKit *)self setIsWriteMasterKeysInProgress:0];
    goto LABEL_18;
  }

  v19 = [v8 domain];
  if (![v19 isEqualToString:CKErrorDomain])
  {

    goto LABEL_17;
  }

  if ([v8 code] == 26)
  {
  }

  else
  {
    v20 = [v8 code];

    if (v20 != 11)
    {
      goto LABEL_17;
    }
  }

  v21 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1001F2118();
  }

  [(MPCloudKit *)self writeKeyBlob:v9 withRetryCount:0];
LABEL_18:
}

- (void)writeKeyBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  if (![(MPCloudKit *)self manateeZoneUpgraded])
  {
    v7 = [(MPCloudKit *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    v8 = v7 == 0;
    v9 = sub_100005C14("MagicPairing");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [(MPCloudKit *)self recordZoneBlob];
        v12 = [v11 zoneID];
        v13 = [v12 zoneName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " >>>writeKeyBlob  Record Zone %@", &buf, 0xCu);
      }

      v14 = [CKRecordID alloc];
      v15 = [(MPCloudKit *)self recordZoneBlob];
      v16 = [v15 zoneID];
      v9 = [v14 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v16];

      v17 = [[CKRecord alloc] initWithRecordType:@"MasterKey" recordID:v9];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v47 = 0x3032000000;
      v48 = sub_100003958;
      v49 = sub_100003858;
      v50 = 0;
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v41 = 0;
      v18 = dispatch_semaphore_create(0);
      v19 = [v17 encryptedValues];
      [v19 setObject:v6 forKeyedSubscript:@"EncryptedMasterKeyBlob"];

      v20 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v42 = 138412290;
        v43 = v6;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "writeKeyBlob: kMagicCloudPairingProtectedMasterBlob fetch: encryptedBlob %@", v42, 0xCu);
      }

      v21 = +[CloudXPCService sharedInstance];
      [v21 beginTransaction:@"writeKeyBlob"];

      v22 = [(MPCloudKit *)self cloudKitDatabase];
      v23 = [(MPCloudKit *)self recordZoneBlob];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10009636C;
      v33[3] = &unk_1002B9DD0;
      v38 = v40;
      v39 = a4;
      p_buf = &buf;
      v33[4] = self;
      v34 = v6;
      v24 = v17;
      v35 = v24;
      v25 = v18;
      v36 = v25;
      [v22 saveRecordZone:v23 completionHandler:v33];

      v26 = dispatch_time(0, 60000000000);
      dispatch_semaphore_wait(v25, v26);
      [(MPCloudKit *)self setIsWriteMasterKeysInProgress:0];
      v27 = +[CloudXPCService sharedInstance];
      [v27 endTransaction:@"writeKeyBlob"];

      if (*(*(&buf + 1) + 40))
      {
        v28 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(MPCloudKit *)self recordZoneBlob];
          v30 = [v29 zoneID];
          v31 = [v30 zoneName];
          v32 = *(*(&buf + 1) + 40);
          *v42 = 138412546;
          v43 = v31;
          v44 = 2112;
          v45 = v32;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " >>>writeKeyBlob  Record Zone %@ failed with error %@", v42, 0x16u);
        }
      }

      _Block_object_dispose(v40, 8);
      _Block_object_dispose(&buf, 8);
    }

    else if (v10)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accessory zone has been upgraded. Dont generate keys", &buf, 2u);
    }
  }
}

- (void)updateCloudKitAccessoryZone:(id)a3 delete:(BOOL)a4
{
  v6 = a3;
  if (![(MPCloudKit *)self manateeZoneUpgraded])
  {
    v7 = [(MPCloudKit *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    if (v7)
    {
      v8 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Accessory zone has been upgraded. Dont update keys to this container", buf, 2u);
      }
    }

    else if ([(MPCloudKit *)self isAccountActive])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100096C58;
      block[3] = &unk_1002B7170;
      v12 = a4;
      v10 = v6;
      v11 = self;
      dispatch_async(&_dispatch_main_q, block);
      v8 = v10;
    }

    else
    {
      v8 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001F2180();
      }
    }
  }
}

- (void)modifyAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " >>> modifyAccessoryBlob - %lu", buf, 0xCu);
  }

  v8 = dispatch_semaphore_create(0);
  v9 = [CKRecordID alloc];
  v10 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
  v11 = [v10 zoneID];
  v12 = [v9 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v11];

  objc_initWeak(buf, self);
  v13 = [(MPCloudKit *)self cloudKitDatabase];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100097220;
  v17[3] = &unk_1002B9E48;
  v14 = v8;
  v18 = v14;
  objc_copyWeak(v20, buf);
  v15 = v6;
  v19 = v15;
  v20[1] = a4;
  [v13 fetchRecordWithID:v12 completionHandler:v17];

  v16 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v14, v16);

  objc_destroyWeak(v20);
  objc_destroyWeak(buf);
}

- (void)handleAccessoryKeyModifyError:(id)a3 forBlob:(id)a4 withRetryCount:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    goto LABEL_37;
  }

  if (a5 >= 5)
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2458();
    }

    goto LABEL_37;
  }

  v11 = [v8 domain];
  if ([v11 isEqualToString:CKErrorDomain])
  {
    if ([v8 code] == 3 || objc_msgSend(v8, "code") == 4 || objc_msgSend(v8, "code") == 9)
    {

      goto LABEL_11;
    }

    v28 = [v8 code];

    if (v28 == 6)
    {
LABEL_11:
      v12 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001F23F0();
      }

LABEL_13:

      v13 = +[CloudXPCService sharedInstance];
      v14 = [NSNumber numberWithBool:0];
      v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v14, @"kUploadStatus", 0];
      [v13 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v15];

      goto LABEL_37;
    }
  }

  else
  {
  }

  if ([v8 code] == 7)
  {
    v16 = [v8 userInfo];
    v17 = CKErrorRetryAfterKey;
    v18 = [v16 objectForKeyedSubscript:CKErrorRetryAfterKey];
    if (v18)
    {

LABEL_21:
      v20 = [v8 userInfo];
      v21 = [v20 objectForKeyedSubscript:v17];
      [v21 doubleValue];
      v23 = v22;

      v24 = sub_100005C14("MagicPairing");
      v25 = v23 + 10.0;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v39 = v8;
        v40 = 2048;
        v41 = a5;
        v42 = 2048;
        v43 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "modify AccessoryBlob failed with error %@, retry count = %lu, retry time: %lu", buf, 0x20u);
      }

      v26 = dispatch_time(0, (v25 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100097E70;
      block[3] = &unk_1002B86B8;
      block[4] = self;
      v36 = v9;
      v37 = a5;
      dispatch_after(v26, &_dispatch_main_q, block);

      goto LABEL_37;
    }

    IsCode = CKErrorIsCode();

    if (IsCode)
    {
      goto LABEL_21;
    }
  }

  else if (CKErrorIsCode())
  {
    v17 = CKErrorRetryAfterKey;
    goto LABEL_21;
  }

  v27 = [v8 domain];
  if (![v27 isEqualToString:CKErrorDomain])
  {

    goto LABEL_28;
  }

  if ([v8 code] != 26)
  {
    v29 = [v8 code];

    if (v29 == 11)
    {
      goto LABEL_34;
    }

LABEL_28:
    v12 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2320();
    }

    goto LABEL_13;
  }

LABEL_34:
  v30 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1001F2388();
  }

  objc_initWeak(buf, self);
  v31 = [(MPCloudKit *)self modifyOperationQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100097FC4;
  v32[3] = &unk_1002B9E98;
  objc_copyWeak(&v34, buf);
  v33 = v9;
  [v31 addOperationWithBlock:v32];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
LABEL_37:
}

- (void)writeAccessoryBlob:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  if (![(MPCloudKit *)self manateeZoneUpgraded])
  {
    v7 = [(MPCloudKit *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    v8 = sub_100005C14("MagicPairing");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Accessory zone has been upgraded. Dont generate keys", buf, 2u);
      }
    }

    else
    {
      if (v9)
      {
        v10 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
        v11 = [v10 zoneID];
        v12 = [v11 zoneName];
        *buf = 138412290;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " >>> writeAccessoryBlob Record Zone %@", buf, 0xCu);
      }

      v13 = [CKRecordID alloc];
      v14 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
      v15 = [v14 zoneID];
      v8 = [v13 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v15];

      v16 = [[CKRecord alloc] initWithRecordType:@"AccessoryDatabase" recordID:v8];
      v17 = [v16 encryptedValues];
      [v17 setObject:v6 forKeyedSubscript:@"EncryptedAccessoryBlob"];

      v18 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "writeAccessoryBlob: MagicCloudPairingProtectedAccessoryBlob fetch:  encryptedBlob %@", buf, 0xCu);
      }

      v19 = +[CloudXPCService sharedInstance];
      [v19 beginTransaction:@"WriteAccessoryBlob"];

      v20 = dispatch_semaphore_create(0);
      v21 = [(MPCloudKit *)self cloudKitDatabase];
      v22 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100098370;
      v26[3] = &unk_1002B9EE8;
      v26[4] = self;
      v27 = v16;
      v30 = a4;
      v28 = v6;
      v29 = v20;
      v23 = v20;
      v24 = v16;
      [v21 saveRecordZone:v22 completionHandler:v26];

      v25 = dispatch_time(0, 60000000000);
      dispatch_semaphore_wait(v23, v25);
    }
  }
}

- (void)deleteCloudKitAccessoryZone
{
  v3 = dispatch_semaphore_create(0);
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
    v6 = [v5 zoneID];
    v7 = [v6 zoneName];
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " >>> deleteCloudKitAccessoryZone %@", buf, 0xCu);
  }

  v8 = [CKRecordID alloc];
  v9 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
  v10 = [v9 zoneID];
  v11 = [v8 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v10];

  v12 = [(MPCloudKit *)self cloudKitDatabase];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100098EF4;
  v17[3] = &unk_1002B9F10;
  v18 = v3;
  v13 = v3;
  [v12 deleteRecordWithID:v11 completionHandler:v17];

  v14 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v13, v14);
  v15 = +[CloudXPCService sharedInstance];
  v16 = [v15 deviceManager];
  [v16 deleteLegacyMagicPairingRecordsWithUserInitiated:1 completion:&stru_1002B9F30];
}

- (void)createSubscritionForRecordType:(id)a3
{
  v4 = a3;
  v5 = [(MPCloudKit *)self manateeZoneUpgraded];
  v6 = sub_100005C14("MagicPairing");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setup manatee zone for push notifications", buf, 2u);
    }

    goto LABEL_23;
  }

  if (v7)
  {
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "createSubscritionForRecordType: %@", buf, 0xCu);
  }

  if ([v4 isEqualToString:@"EncryptedMasterKeyBlob"])
  {
    v8 = [CKRecordZoneSubscription alloc];
    v9 = [(MPCloudKit *)self recordZoneBlob];
    v10 = [v9 zoneID];
    v6 = [v8 initWithZoneID:v10];

    v11 = [(MPCloudKit *)self readUserPreference:@"MagicCloudPairingMasterSubscriptionID"];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Master subscription already exists: %@", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v16 = [CKRecordZoneSubscription alloc];
    v17 = [(MPCloudKit *)self recordZoneBlob];
    v18 = [v17 zoneID];
    v19 = [v16 initWithZoneID:v18];

    v20 = @"MagicCloudPairingMasterSubscriptionID";
    v6 = v19;
    goto LABEL_18;
  }

  if (![v4 isEqualToString:@"EncryptedAccessoryBlob"])
  {
LABEL_20:
    v6 = sub_100005C14("MagicPairing");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v12 = [(MPCloudKit *)self recordZoneBlob];
    v23 = [v12 zoneID];
    v24 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
    v25 = [v24 zoneID];
    *buf = 138412546;
    v30 = v23;
    v31 = 2112;
    v32 = v25;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to create zone subscription key %@ or Accessory %@", buf, 0x16u);

LABEL_22:
    goto LABEL_23;
  }

  v14 = [(MPCloudKit *)self readUserPreference:@"MagicCloudPairingAccessorySubscriptionID"];
  if (!v14)
  {
    v21 = [CKRecordZoneSubscription alloc];
    v17 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
    v18 = [v17 zoneID];
    v6 = [v21 initWithZoneID:v18];
    v20 = @"MagicCloudPairingAccessorySubscriptionID";
LABEL_18:

    if (v6)
    {
      v22 = [(MPCloudKit *)self cloudKitDatabase];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000994FC;
      v26[3] = &unk_1002B9F58;
      v27 = v20;
      v28 = self;
      [v22 saveSubscription:v6 completionHandler:v26];

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v6 = v14;
  v15 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Accessory subscription already exists: %@", buf, 0xCu);
  }

LABEL_23:
}

- (void)fetchSubscriptionForRecordType:(id)a3 andPrefKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPCloudKit *)self readUserPreference:v7];
  v9 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Verify Fetch cached Subscription ID - %@ for record - %@", buf, 0x16u);
  }

  v10 = sub_100005C14("MagicPairing");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found cached Subscription ID - %@", buf, 0xCu);
    }

    v12 = [(MPCloudKit *)self cloudKitDatabase];
    v13 = [(MPCloudKit *)self readUserPreference:v7];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000999C0;
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
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Subscription cannot be Fetched, create it...", buf, 2u);
    }

    [(MPCloudKit *)self createSubscritionForRecordType:v6];
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "verifyAndCacheSubscriptionID - %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(MPCloudKit *)self cloudKitDatabase];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100099D88;
  v8[3] = &unk_1002B9FA8;
  objc_copyWeak(&v10, buf);
  v7 = v4;
  v9 = v7;
  [v6 fetchSubscriptionWithID:v7 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to delete Subscription for record type - %@ ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(MPCloudKit *)self cloudKitDatabase];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009A11C;
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
  v22 = sub_100003958;
  v23 = sub_100003858;
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
        v8 = [(MPCloudKit *)self cloudKitContainer];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10009A8A8;
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
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, ">>>>> Using push environment %@", buf, 0xCu);
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)hexStringForData:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 length];
  v6 = [v3 bytes];
  if (v5 >= 1)
  {
    v7 = v6;
    do
    {
      v8 = *v7++;
      [v4 appendFormat:@"%02X", v8];
      --v5;
    }

    while (v5);
  }

  v9 = [v4 copy];

  return v9;
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
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enable Push Notification Updated for bundle ID: %@", &v10, 0xCu);
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
  v2 = [(MPCloudKit *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Master zone has been upgraded. Dont generate keys", v5, 2u);
    }
  }

  return v2 != 0;
}

- (void)markLegacyNonManateeContainerMigrated
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MPCloudKit *)self recordZoneBlob];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " >>>markLegacyNonManateeContainerMigrated  Record Zone %@", &buf, 0xCu);
  }

  v7 = self->_cloudKitDatabase;
  v8 = [CKRecordID alloc];
  v9 = [(MPCloudKit *)self recordZoneBlob];
  v10 = [v9 zoneID];
  v11 = [v8 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v10];

  v12 = [CKRecordID alloc];
  v13 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
  v14 = [v13 zoneID];
  v15 = [v12 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v14];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = sub_100003958;
  v50 = sub_100003858;
  v51 = [[CKRecord alloc] initWithRecordType:@"MasterKey" recordID:v11];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100003958;
  v44 = sub_100003858;
  v45 = [[CKRecord alloc] initWithRecordType:@"AccessoryDatabase" recordID:v15];
  v39 = -1;
  v16 = [NSData dataWithBytes:&v39 length:2];
  v17 = [*(*(&buf + 1) + 40) encryptedValues];
  [v17 setObject:v16 forKeyedSubscript:@"EncryptedMasterKeyBlob"];

  v38 = -1;
  v18 = [NSData dataWithBytes:&v38 length:4];
  v19 = [v41[5] encryptedValues];
  [v19 setObject:v18 forKeyedSubscript:@"EncryptedAccessoryBlob"];

  v20 = [CKFetchRecordsOperation alloc];
  v46[0] = v11;
  v46[1] = v15;
  v21 = [NSArray arrayWithObjects:v46 count:2];
  v22 = [v20 initWithRecordIDs:v21];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10009B150;
  v33[3] = &unk_1002BA048;
  v23 = v11;
  v34 = v23;
  p_buf = &buf;
  v24 = v15;
  v35 = v24;
  v37 = &v40;
  [v22 setPerRecordCompletionBlock:v33];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10009B3C0;
  v27[3] = &unk_1002BA0C0;
  v31 = &buf;
  v27[4] = self;
  v25 = v23;
  v28 = v25;
  v32 = &v40;
  v26 = v24;
  v29 = v26;
  v30 = v7;
  [v22 setCompletionBlock:v27];
  [(CKDatabase *)v7 addOperation:v22];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)upgradeLegacyNonManateeContainerToManatee
{
  if ([(MPCloudKit *)self manateeZoneUpgraded])
  {
    sub_1001F2B3C(&buf);
LABEL_11:
    v11 = buf;
    goto LABEL_8;
  }

  v3 = +[CloudXPCService sharedInstance];
  v4 = [v3 networkMonitor];
  v5 = [v4 isNetworkUp];

  v6 = sub_100005C14("MagicPairing");
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    sub_1001F2A8C(v6, &buf);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MPCloudKit *)self recordZoneBlob];
    v9 = [v8 zoneID];
    v10 = [v9 zoneName];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " >>>upgradeLegacyNonManateeContainerToManatee Record Zone %@", &buf, 0xCu);
  }

  v11 = self->_cloudKitDatabase;
  v12 = +[MPCloudKit_Manatee sharedInstance];
  v13 = [v12 cloudKitDatabase];

  if (v13)
  {
    v14 = [CKRecordID alloc];
    v15 = [(MPCloudKit *)self recordZoneBlob];
    v16 = [v15 zoneID];
    v17 = [v14 initWithRecordName:@"EncryptedMasterKeyBlob" zoneID:v16];

    v18 = [CKRecordID alloc];
    v19 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
    v20 = [v19 zoneID];
    v21 = [v18 initWithRecordName:@"EncryptedAccessoryBlob" zoneID:v20];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = sub_100003958;
    v50 = sub_100003858;
    v51 = [[CKRecord alloc] initWithRecordType:@"MasterKey" recordID:v17];
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_100003958;
    v44[4] = sub_100003858;
    v45 = [[CKRecord alloc] initWithRecordType:@"AccessoryDatabase" recordID:v21];
    v22 = [CKFetchRecordsOperation alloc];
    v46[0] = v17;
    v46[1] = v21;
    v23 = [NSArray arrayWithObjects:v46 count:2];
    v24 = [v22 initWithRecordIDs:v23];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10009C010;
    v39[3] = &unk_1002BA048;
    v25 = v17;
    v40 = v25;
    p_buf = &buf;
    v26 = v21;
    v41 = v26;
    v43 = v44;
    [v24 setPerRecordCompletionBlock:v39];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_10009C280;
    v32 = &unk_1002BA138;
    v37 = &buf;
    v38 = v44;
    v27 = v25;
    v33 = v27;
    v28 = v26;
    v34 = v28;
    v35 = self;
    v36 = v13;
    [v24 setCompletionBlock:&v29];
    [(CKDatabase *)v11 addOperation:v24, v29, v30, v31, v32];

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    sub_1001F2ADC(&buf);
    v27 = buf;
  }

LABEL_8:
}

- (void)deleteLegacyMasterKey
{
  v3 = [(MPCloudKit *)self isAccountActive];
  v4 = sub_100005C14("MagicPairing");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(MPCloudKit *)self recordZoneBlob];
      v7 = [v6 zoneID];
      v8 = [v7 zoneName];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " >>>deleteLegacyMasterKey  Record Zone %@", buf, 0xCu);
    }

    v9 = [CKRecordID alloc];
    v10 = [(MPCloudKit *)self recordZoneBlob];
    v11 = [v10 zoneID];
    v4 = [v9 initWithRecordName:@"KeyBlob" zoneID:v11];

    v12 = [(MPCloudKit *)self cloudKitDatabase];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009D104;
    v13[3] = &unk_1002B9F10;
    v13[4] = self;
    [v12 deleteRecordWithID:v4 completionHandler:v13];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No Active Account", buf, 2u);
  }
}

- (OS_dispatch_queue)pushDelegateQueue
{
  v3 = [(MPCloudKit *)self pushQueue];

  if (!v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.bluetooth.mpcloudkit.push", v4);
    [(MPCloudKit *)self setPushQueue:v5];
  }

  return [(MPCloudKit *)self pushQueue];
}

- (void)didReceiveWithMessage:(id)a3
{
  v4 = a3;
  if ([(MPCloudKit *)self manateeZoneUpgraded])
  {
    v5 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "*****>>>> Push received for non-manatee but we have upgraded reset this container...", buf, 2u);
    }

    [(MPCloudKit *)self markLegacyNonManateeContainerMigrated];
  }

  else
  {
    v6 = [v4 userInfo];
    v7 = [CKNotification notificationFromRemoteNotificationDictionary:v6];
    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 topic];
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "***** APS Push received: %@ \n %@ \n", buf, 0x16u);
    }

    v10 = [v7 containerIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.bluetooth"];

    if (v11)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10009D7A4;
      v12[3] = &unk_1002B6D18;
      v13 = v7;
      v14 = self;
      dispatch_async(&_dispatch_main_q, v12);
    }
  }
}

- (void)resetOldZones
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MPCloudKit *)self recordZoneBlob];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    sub_10008DCC4();
    sub_10009DC38(&_mh_execute_header, v7, v8, ">>> resetOldZones Key Record Zone %@", v9, v10, v11, v12, v62);
  }

  v13 = [(MPCloudKit *)self cloudKitDatabase];
  v14 = [(MPCloudKit *)self recordZoneBlob];
  v15 = [v14 zoneID];
  [v13 deleteRecordZoneWithID:v15 completionHandler:&stru_1002BA178];

  v16 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
    v18 = [v17 zoneID];
    v19 = [v18 zoneName];
    sub_10008DCC4();
    sub_10009DC38(&_mh_execute_header, v20, v21, ">>> resetOldZones Accessory Record Zone %@", v22, v23, v24, v25, v62);
  }

  v26 = [(MPCloudKit *)self cloudKitDatabase];
  v27 = [(MPCloudKit *)self recordZoneAccessoryDatabase];
  v28 = [v27 zoneID];
  [v26 deleteRecordZoneWithID:v28 completionHandler:&stru_1002BA198];

  v29 = +[MPCloudKit_Manatee sharedInstance];

  if (v29)
  {
    v30 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = +[MPCloudKit_Manatee sharedInstance];
      v32 = [v31 recordZoneBlob];
      v33 = [v32 zoneID];
      v34 = [v33 zoneName];
      sub_10008DCC4();
      sub_10009DC7C(&_mh_execute_header, v35, v36, ">>> resetOldZones Key Record Zone %@", v37, v38, v39, v40, v62);
    }

    v41 = +[MPCloudKit_Manatee sharedInstance];
    v42 = [v41 cloudKitDatabase];
    v43 = +[MPCloudKit_Manatee sharedInstance];
    v44 = [v43 recordZoneBlob];
    v45 = [v44 zoneID];
    [v42 deleteRecordZoneWithID:v45 completionHandler:&stru_1002BA1B8];

    v46 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = +[MPCloudKit_Manatee sharedInstance];
      v48 = [v47 recordZoneBlob];
      v49 = [v48 zoneID];
      v50 = [v49 zoneName];
      sub_10008DCC4();
      sub_10009DC7C(&_mh_execute_header, v51, v52, " >>> resetOldZones Accessory Record Zone %@", v53, v54, v55, v56, v62);
    }

    v57 = +[MPCloudKit_Manatee sharedInstance];
    v58 = [v57 cloudKitDatabase];
    v59 = +[MPCloudKit_Manatee sharedInstance];
    v60 = [v59 recordZoneAccessoryDatabase];
    v61 = [v60 zoneID];
    [v58 deleteRecordZoneWithID:v61 completionHandler:&stru_1002BA1D8];
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
      sub_10009DC38(&_mh_execute_header, v6, v7, "Received public token %@ on connection", v8, v9, v10, v11, v12);
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
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received per-topic push token %@ for topic %@ identifier %@ on connection", v12, 0x20u);
    }
  }
}

@end