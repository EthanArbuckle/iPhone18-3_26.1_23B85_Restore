@interface ABSyncInterface
+ (ABSyncInterface)sharedInstance;
+ (id)activeDevice;
- (ABSSyncController)syncController;
- (ABSyncInterface)init;
- (BOOL)_shouldFakeFailure;
- (BOOL)_shouldReallySendDeltaSessionWithAnchor:(id)a3 lmaData:(id)a4 store:(id)a5;
- (BOOL)_startSendSession:(id)a3;
- (BOOL)oldDatabaseDelete;
- (BOOL)oldDatabaseExists;
- (BOOL)partialSyncEligible;
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (BOOL)shouldHandleLimitedAccessSyncs;
- (BOOL)shouldNextResetSyncBePartial;
- (BOOL)watchSupportsPartialSyncs;
- (double)_nextDelay:(int64_t)a3;
- (id)_fetchAnchor;
- (id)_newFileName;
- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5;
- (int64_t)limitedAccessSequenceNumber;
- (void)_checkServerStateOnStartup;
- (void)_initSyncStore;
- (void)_migrationCheck;
- (void)_recvSessionEnded:(id)a3 error:(id)a4;
- (void)_requestFullSync:(id)a3;
- (void)_saveAnchor:(id)a3;
- (void)_saveGuardianRestrictionBit;
- (void)_scheduleRetrySync;
- (void)_sendSessionEnded:(id)a3 error:(id)a4;
- (void)_setupLogging;
- (void)_startRecvSession:(id)a3;
- (void)activity:(id)a3 customizeCriteria:(id)a4;
- (void)activityRun:(id)a3;
- (void)dealloc;
- (void)registerForAddressBookDarwinNotifications;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
- (void)startUnlockTimer:(double)a3;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
- (void)tc_advanceChangeNumber;
- (void)tc_setFailureProbablity:(double)a3;
- (void)tc_setMessageTimeout:(double)a3;
- (void)tc_setNominal;
- (void)tc_setSessionTimeout:(double)a3;
- (void)tc_status:(id)a3;
- (void)updateLMATokenForSession:(id)a3;
- (void)watchUpdated:(id)a3;
@end

@implementation ABSyncInterface

+ (ABSyncInterface)sharedInstance
{
  if (qword_100071CF0 != -1)
  {
    sub_10003BD10();
  }

  v3 = qword_100071CE8;

  return v3;
}

- (ABSyncInterface)init
{
  v38.receiver = self;
  v38.super_class = ABSyncInterface;
  v2 = [(ABSyncInterface *)&v38 init];
  [v2 _setupLogging];
  if (v2)
  {
    objc_storeStrong(&qword_100071CE8, v2);
    *(v2 + 36) = 0;
    v3 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.addressbooksyncd"];
    v4 = *(v2 + 20);
    *(v2 + 20) = v3;

    [*(v2 + 20) setDelegate:v2];
    v5 = sub_10002AD40("com.apple.addressbook.sync.queue");
    v6 = *(v2 + 8);
    *(v2 + 8) = v5;

    v7 = sub_10002AD40("com.apple.addressbook.sync.unlockqueue");
    v8 = *(v2 + 11);
    *(v2 + 11) = v7;

    v9 = sub_10002AD40("com.apple.addressbook.sync.session.idle");
    v10 = *(v2 + 12);
    *(v2 + 12) = v9;

    dispatch_activate(*(v2 + 12));
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "== Started AddressBookSync-299", buf, 2u);
    }

    v12 = +[ABSDatabaseFileManager pairingID];
    v13 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Pairing ID: %{public}@", buf, 0xCu);
    }

    v14 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Class C block", buf, 2u);
    }

    [v2 _blockUntilUnlock];
    v15 = [NDTSignalCoalescer alloc];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10003486C;
    v36[3] = &unk_10005CDF0;
    v16 = v2;
    v37 = v16;
    v17 = [(NDTSignalCoalescer *)v15 initWithLeadingEdgeDelay:&stru_10005DA00 nextDelay:v36 action:2.0];
    v18 = v16[19];
    v16[19] = v17;

    [v16[19] setHoldTransaction:1];
    v19 = [NDTServerState alloc];
    v20 = [ABSDatabaseFileManager syncStateDBPathFor:@"ServerState.plist"];
    v21 = [(NDTServerState *)v19 initWithPath:v20];
    v22 = v16[6];
    v16[6] = v21;

    [v16 _initSyncStore];
    if (v16[5])
    {
      v23 = v16[7];
      v16[7] = 0;

      v24 = v16[9];
      v16[9] = 0;

      v16[13] = -1;
      *(v16 + 33) = 0;
      [v16[6] getDoubleValueForKey:@"deltaRate" default:5.0];
      v16[16] = v25;
      [v16[6] getDoubleValueForKey:@"fullRate" default:5.0];
      v16[17] = v26;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v16, sub_100034968, @"ABSyncClientBeginningMultiSave", 0, 0);
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v16, sub_100034AA0, @"ABSyncClientFinishedMultiSave", 0, 0);
      v28 = +[NSNotificationCenter defaultCenter];
      [v28 addObserver:v16 selector:"watchUpdated:" name:SYDeviceOSInfoChangedNotification object:0];

      if ([v16 oldDatabaseExists])
      {
        v29 = *(qword_100071D00 + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Old database file found. Triggering full sync.", buf, 2u);
        }

        [v16 requestFullSync:@"Old database found"];
      }
    }

    [v16 registerForAddressBookDarwinNotifications];
    v30 = [[ABSTestControl alloc] initWithSyncInterface:v16];
    v31 = v16[23];
    v16[23] = v30;

    v32 = [[NDTActivity alloc] initWithDelegate:v16];
    v33 = v16[3];
    v16[3] = v32;

    v34 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "ABSyncInterface, init completed", buf, 2u);
    }

    [v16 _checkServerStateOnStartup];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"ABSyncClientBeginningMultiSave", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"ABSyncClientFinishedMultiSave", 0);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ABSyncInterface;
  [(ABSyncInterface *)&v5 dealloc];
}

- (void)_initSyncStore
{
  Current = CFAbsoluteTimeGetCurrent();
  v21[0] = SYServiceOptionDiskBufferProtectionClass;
  v21[1] = IDSSendMessageOptionBypassDuetKey;
  v22[0] = &off_100061DC0;
  v22[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v5 = [[SYService alloc] initWithService:@"com.apple.private.alloy.addressbooksync" priority:0 qos:17 asMasterStore:1 options:v4];
  syncService = self->_syncService;
  self->_syncService = v5;

  [(SYService *)self->_syncService setSendingBufferCap:0x40000];
  v7 = self->_syncService;
  v8 = [(ABSyncInterface *)self queue];
  [(SYService *)v7 setDelegate:self queue:v8];

  v9 = self->_syncService;
  v18 = 0;
  LOBYTE(v8) = [(SYService *)v9 resume:&v18];
  v10 = v18;
  if ((v8 & 1) == 0)
  {
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003BE08(v10, v11);
    }

    v12 = self->_syncService;
    self->_syncService = 0;
  }

  v13 = CFAbsoluteTimeGetCurrent();
  v14 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v13 - Current;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CS Startup time: %f", buf, 0xCu);
  }

  v15 = +[SYDevice targetableDevice];
  v16 = [v15 systemBuildVersion];
  v17 = [v16 copy];
  [(ABSyncInterface *)self setWatchBuildVersion:v17];
}

- (BOOL)partialSyncEligible
{
  v3 = [(ABSyncInterface *)self partialResetSyncOnPairingFeatureEnabled];
  v4 = [(ABSyncInterface *)self watchSupportsPartialSyncs];
  v5 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8 = 136315650;
    v9 = "[ABSyncInterface partialSyncEligible]";
    v10 = 1024;
    v11 = [(ABSyncInterface *)self partialResetSyncOnPairingFeatureEnabled];
    v12 = 1024;
    v13 = [(ABSyncInterface *)self watchSupportsPartialSyncs];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ffEnabled=%d watchSupportsPartialSync=%d", &v8, 0x18u);
  }

  return v3 & v4;
}

- (BOOL)shouldNextResetSyncBePartial
{
  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(ABSyncInterface *)self mustBeReset];
    v6 = [(NDTServerState *)self->_serverState getBoolValueForKey:@"MustBePartialReset" default:1];
    v8 = 136315650;
    v9 = "[ABSyncInterface shouldNextResetSyncBePartial]";
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s mustBeReset=%d mustBePartialReset=%d", &v8, 0x18u);
  }

  if ([(ABSyncInterface *)self mustBeReset])
  {
    return 0;
  }

  else
  {
    return [(NDTServerState *)self->_serverState getBoolValueForKey:@"MustBePartialReset" default:1];
  }
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446722;
    v13 = "ABSyncInterface.m";
    v14 = 1024;
    v15 = 351;
    v16 = 2080;
    v17 = "[ABSyncInterface syncCoordinator:beginSyncSession:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d %s --mark--", &v12, 0x1Cu);
  }

  [(ABSyncInterface *)self setPsySyncSession:v7];
  kdebug_trace();
  if ([v7 syncSessionType])
  {
    if ([v7 syncSessionType] == 1)
    {
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Paired sync coordinator wants a delta sync.", &v12, 2u);
      }

      v10 = [(ABSyncInterface *)self syncService];
      [v10 setHasChangesAvailable];

      [v7 syncDidComplete];
    }
  }

  else
  {
    v11 = +[ABSyncInterface sharedInstance];
    [v11 requestFullSync:@"Paired sync coordinator commanded it."];
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v3 = [a3 syncRestriction];
  v4 = *(qword_100071D00 + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (!v5)
    {
      return;
    }

    LOWORD(v9[0]) = 0;
    v6 = "Paired sync restriction is now Limit Push";
    goto LABEL_7;
  }

  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    LOWORD(v9[0]) = 0;
    v6 = "Paired sync restriction is now None";
LABEL_7:
    v7 = v4;
    v8 = 2;
    goto LABEL_10;
  }

  if (!v5)
  {
    return;
  }

  v9[0] = 67109120;
  v9[1] = v3;
  v6 = "Paired sync restriction is unknown value: %d";
  v7 = v4;
  v8 = 8;
LABEL_10:
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v9, v8);
}

- (void)registerForAddressBookDarwinNotifications
{
  v3 = [(ABSyncInterface *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000356E4;
  handler[3] = &unk_10005DA50;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v3, handler);

  v4 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "ABSyncInterface.m";
    v8 = 1024;
    v9 = 449;
    v10 = 2080;
    v11 = "[ABSyncInterface registerForAddressBookDarwinNotifications]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d %s --mark--", buf, 0x1Cu);
  }
}

- (void)activity:(id)a3 customizeCriteria:(id)a4
{
  serverState = self->_serverState;
  xdict = a4;
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, [(NDTServerState *)serverState getIntegerValueForKey:@"failureCount" default:0]< 4);
}

- (void)activityRun:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(ABSyncInterface *)self sessionIdleQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035BFC;
  block[3] = &unk_10005D100;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (void)_scheduleRetrySync
{
  v3 = [(NDTServerState *)self->_serverState getIntegerValueForKey:@"failureCount" default:0];
  if (v3 < 1)
  {
    v8 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_scheduleRetrySync doesn't see any failures. Not rescheduling.", v10, 2u);
    }
  }

  else
  {
    v4 = v3;
    if ([(SYService *)self->_syncService targetIsConnected])
    {
      [(ABSyncInterface *)self _nextDelay:v4];
      v6 = (v5 + 0.5);
      v7 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67109120;
        v10[1] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_scheduleRetrySync is scheduling retry in %d seconds.", v10, 8u);
      }

      [(NDTActivity *)self->_activity completeAndFireIn:v6];
    }

    else
    {
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_scheduleRetrySync is requesting retry on connection", v10, 2u);
      }

      [(NDTActivity *)self->_activity completeAndFireOnConnection];
    }
  }
}

- (BOOL)_shouldFakeFailure
{
  if (!+[NDTLog isInternalDevice])
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"internal_probabilityOfSyncFailure", @"com.apple.addressbooksync");
  v3 = v2;
  v7 = 0;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
    v6 = arc4random();
    if (scalbn(v6, -32) < v5)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (double)_nextDelay:(int64_t)a3
{
  [(NDTServerState *)self->_serverState getDoubleValueForKey:@"tc_fixedRetryInterval" default:-1.0];
  if (result < 0.0)
  {
    v5 = 4;
    if (a3 < 4)
    {
      v5 = a3;
    }

    return *(&unk_100048C00 + (((v5 << 32) - 0x100000000) >> 30));
  }

  return result;
}

- (void)_checkServerStateOnStartup
{
  v3 = os_transaction_create();
  v4 = [(ABSyncInterface *)self sessionIdleQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036118;
  v6[3] = &unk_10005CFC8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)startUnlockTimer:(double)a3
{
  v5 = [(ABSyncInterface *)self unlockQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036254;
  v6[3] = &unk_10005DA78;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)_migrationCheck
{
  objc_initWeak(&location, self);
  v3 = [(ABSyncInterface *)self sessionIdleQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000364F4;
  v4[3] = &unk_10005CE40;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)tc_status:(id)a3
{
  v4 = a3;
  v18 = objc_opt_new();
  [(NDTServerState *)self->_serverState getDoubleValueForKey:@"tc_fixedRetryInterval" default:-1.0];
  v6 = v5;
  v7 = CFPreferencesCopyAppValue(@"internal_probabilityOfSyncFailure", @"com.apple.addressbooksync");
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(ABSyncInterface *)self automaticSync];
  [(ABSyncInterface *)self sessionTimeout];
  v13 = v12;
  [(ABSyncInterface *)self messageTimeout];
  v15 = v14;
  [(ABSyncInterface *)self objectDelay];
  v17 = v16;
  [v18 appendFormat:@"Fixed retry interval: %.3f\n", v6];
  [v18 appendFormat:@"Failure probability: %.3f\n", v10];
  [v18 appendFormat:@"Automatic sync: %d\n", v11];
  [v18 appendFormat:@"Session timeout: %.3f\n", v13];
  [v18 appendFormat:@"Message timeout: %.3f\n", v15];
  [v18 appendFormat:@"Object delay: %.3f\n", v17];
  v4[2](v4, v18);
}

- (void)tc_setNominal
{
  [(NDTServerState *)self->_serverState deleteKey:@"tc_fixedRetryInterval"];
  CFPreferencesSetAppValue(@"internal_probabilityOfSyncFailure", 0, @"com.apple.addressbooksync");
  [(NDTServerState *)self->_serverState setIntegerValue:1 forKey:@"tc_automaticSync"];
  [(ABSyncInterface *)self tc_setSessionTimeout:-1.0];
  [(ABSyncInterface *)self tc_setMessageTimeout:-1.0];

  [(ABSyncInterface *)self tc_setObjectDelay:0.0];
}

- (void)tc_advanceChangeNumber
{
  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Advancing change number", v6, 2u);
  }

  v4 = objc_alloc_init(CNContactStore);
  v5 = [v4 currentHistoryToken];
  [(ABSyncInterface *)self _saveAnchor:v5];
}

- (void)tc_setSessionTimeout:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 10800.0;
  }

  [(NDTServerState *)self->_serverState setDoubleValue:@"tc_sessionTimeout" forKey:a3];
}

- (void)tc_setMessageTimeout:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 1500.0;
  }

  [(NDTServerState *)self->_serverState setDoubleValue:@"tc_messageTimeout" forKey:a3];
}

- (void)tc_setFailureProbablity:(double)a3
{
  valuePtr = a3;
  v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFPreferencesSetAppValue(@"internal_probabilityOfSyncFailure", v3, @"com.apple.addressbooksync");
  CFRelease(v3);
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 valueForKey:@"identifier"];
    if ([v8 isSending])
    {
      v12 = @"sending";
    }

    else
    {
      v12 = @"receiving";
    }

    v13 = [v8 isResetSync];
    v14 = @"delta";
    *buf = 136446978;
    v39 = "[ABSyncInterface service:startSession:error:]";
    v40 = 2114;
    v41 = v11;
    if (v13)
    {
      v14 = @"reset";
    }

    v42 = 2114;
    v43 = v12;
    v44 = 2114;
    v45 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ #%{public}@ #%{public}@", buf, 0x2Au);
  }

  if (!-[NDTServerState getBoolValueForKey:default:](self->_serverState, "getBoolValueForKey:default:", @"RetryMustBeReset", 0) || ([v8 isResetSync] & 1) != 0)
  {
    if (atomic_fetch_add(&self->_sessionChecker, 1u))
    {
      sub_10003BEB4();
    }

    [(ABSyncInterface *)self sessionIdleQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036EC4;
    v15 = block[3] = &unk_10005CDF0;
    v37 = v15;
    dispatch_barrier_sync(v15, block);
    v16 = objc_alloc_init(ABSLasordaSession);
    [(ABSyncInterface *)self setSyncSession:v16];

    [(ABSyncInterface *)self objectDelay];
    v18 = (v17 * 1000000.0);
    v19 = [(ABSyncInterface *)self syncSession];
    [v19 setDelayUs:v18];

    [(ABSyncInterface *)self setSySession:v8];
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"internal_abortAfter", @"com.apple.addressbooksync", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v21 = AppIntegerValue;
      if (AppIntegerValue >= 1)
      {
        if (+[NDTLog isInternalDevice])
        {
          CFPreferencesSetAppValue(@"internal_abortAfter", 0, @"com.apple.addressbooksync");
          v22 = [(ABSyncInterface *)self syncSession];
          [v22 setAbortAfter:v21];
        }
      }
    }

    v23 = [(ABSyncInterface *)self syncController];
    v24 = [(ABSyncInterface *)self syncSession];
    [v24 setSyncController:v23];

    Current = CFAbsoluteTimeGetCurrent();
    v26 = [(ABSyncInterface *)self syncSession];
    [v26 setStart:Current];

    [v8 setMaxConcurrentMessages:2];
    [(ABSyncInterface *)self sessionTimeout];
    [v8 setFullSessionTimeout:?];
    [(ABSyncInterface *)self messageTimeout];
    [v8 setPerMessageTimeout:?];
    v27 = [(ABSyncInterface *)self syncSession];
    [v8 setDelegate:v27];

    v28 = objc_opt_new();
    [v8 setSerializer:v28];

    [v8 setCanRestart:0];
    [v8 setCanRollback:0];
    if ([v8 isSending])
    {
      if (![(ABSyncInterface *)self _startSendSession:v8])
      {
        [(ABSyncInterface *)self setSyncSession:0];
        [(ABSyncInterface *)self setSySession:0];
        atomic_fetch_add(&self->_sessionChecker, 0xFFFFFFFF);
        dispatch_resume(v15);
        [(NDTActivity *)self->_activity completeAndFireNever];
        v29 = 0;
LABEL_22:

        goto LABEL_26;
      }
    }

    else
    {
      [(ABSyncInterface *)self _startRecvSession:v8];
    }

    v30 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v8 protocolVersion];
      *buf = 67109120;
      LODWORD(v39) = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Session protocol version: %d", buf, 8u);
    }

    kdebug_trace();
    v29 = 1;
    goto LABEL_22;
  }

  v33 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Rejecting delta sync request as we need a reset sync.", buf, 2u);
  }

  [(ABSyncInterface *)self requestFullSync:@"Reset recovery sync"];
  v29 = 0;
LABEL_26:

  return v29;
}

- (BOOL)shouldHandleLimitedAccessSyncs
{
  v2 = [objc_opt_class() activeDevice];
  v3 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

+ (id)activeDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (BOOL)watchSupportsPartialSyncs
{
  v2 = [objc_opt_class() activeDevice];
  v3 = [[NSUUID alloc] initWithUUIDString:@"B727AD95-5778-41B6-A9DB-05E7289820ED"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (int64_t)limitedAccessSequenceNumber
{
  v2 = [(ABSyncInterface *)self serverState];
  v3 = [v2 getIntegerValueForKey:@"LMA_SEQUENCE_NUMBER_KEY" default:0];

  return v3;
}

- (BOOL)_startSendSession:(id)a3
{
  v4 = a3;
  activity = self->_activity;
  v6 = [(ABSyncInterface *)self syncSession];
  [v6 setActivity:activity];

  v7 = [(ABSyncInterface *)self _fetchAnchor];
  v8 = objc_alloc_init(CNContactStore);
  if ([(ABSyncInterface *)self shouldHandleLimitedAccessSyncs])
  {
    v9 = [v8 getWatchLimitedAccessSyncDataStartingAtSequenceNumber:{-[ABSyncInterface limitedAccessSequenceNumber](self, "limitedAccessSequenceNumber")}];
  }

  else
  {
    v9 = 0;
  }

  if ([v4 isResetSync])
  {
    if ([(ABSyncInterface *)self shouldUseBackgroundPriority])
    {
      v10 = -20;
    }

    else
    {
      v10 = 0;
    }

    [v4 setPriority:v10];
    v11 = [ABSContactsResetSource alloc];
    v12 = sub_1000191A8();
    v13 = [(ABSContactsResetSource *)v11 initWithKeys:v12 store:v8 lmaData:v9];

    v50 = 0;
    v14 = [v8 unifiedContactCountWithError:&v50];
    v15 = v50;
    v16 = [v14 integerValue];

    if ([(ABSyncInterface *)self partialSyncEligible])
    {
      v17 = [(ABSyncInterface *)self shouldNextResetSyncBePartial];
      if (v16 > 1000)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    [(ABSyncInterface *)self setShouldResetSyncBePartial:v18];
    [(NDTServerState *)self->_serverState setBoolValue:1 forKey:@"RetryMustBeReset"];

    [(ABSContactsResetSource *)v13 setShouldRunPartialResetSync:[(ABSyncInterface *)self shouldResetSyncBePartial]];
    v25 = [(ABSyncInterface *)self syncSession];
    [v25 setContactsSource:v13];

    v7 = 0;
  }

  else
  {
    if (![(ABSyncInterface *)self _shouldReallySendDeltaSessionWithAnchor:v7 lmaData:v9 store:v8])
    {
      v38 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Delta sync effort suppressed, no relevent changes", buf, 2u);
      }

      goto LABEL_32;
    }

    v19 = [ABSContactsDeltaSource alloc];
    v20 = sub_1000191A8();
    v21 = [(ABSContactsDeltaSource *)v19 initWithAnchor:v7 keys:v20 store:v8 lmaData:v9];
    v22 = [(ABSyncInterface *)self syncSession];
    [v22 setContactsSource:v21];

    v23 = [(ABSyncInterface *)self syncSession];
    v24 = [v23 contactsSource];

    if (!v24)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003BF1C();
      }

      goto LABEL_32;
    }
  }

  v26 = [(ABSyncInterface *)self syncSession];
  v27 = [v26 contactsSource];
  if ([v27 isReset])
  {
    v28 = [v4 isResetSync];

    if ((v28 & 1) == 0)
    {
      [(NDTServerState *)self->_serverState setBoolValue:1 forKey:@"RetryMustBeReset"];
      v29 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Rejecting delta sync request as we need a reset sync (truncation?)", buf, 2u);
      }

      [(ABSyncInterface *)self requestFullSync:@"Reset recovery sync due to truncation"];
LABEL_32:
      v39 = 0;
      goto LABEL_37;
    }
  }

  else
  {
  }

  [(NDTServerState *)self->_serverState setIntegerValue:[(NDTServerState *)self->_serverState getIntegerValueForKey:@"failureCount" default:0]+ 1 forKey:@"failureCount"];
  v30 = +[ABSContactsShadow instance];
  [v30 beginTransaction];

  if ([v4 isResetSync])
  {
    v31 = [(ABSyncInterface *)self syncController];
    [v31 resetSyncState];
  }

  v32 = [(ABSyncInterface *)self preemptedSessionProgressReporter];

  if (v32)
  {
    v33 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Using preempted session", buf, 2u);
    }

    v34 = [(ABSyncInterface *)self preemptedSessionProgressReporter];
    v35 = [(ABSyncInterface *)self syncSession];
    [v35 setProgressReporter:v34];

    v36 = [(ABSyncInterface *)self syncSession];
    v37 = [v36 progressReporter];
    [v37 resume];

    [(ABSyncInterface *)self setPreemptedSessionProgressReporter:0];
  }

  else
  {
    v40 = [ABSProgressTestifier alloc];
    v41 = [(ABSyncInterface *)self psySyncSession];
    v42 = [(ABSProgressReporter *)v40 initWithSession:v41];

    v43 = [(ABSyncInterface *)self syncSession];
    [v43 setProgressReporter:v42];
  }

  v44 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v44;
    [v4 fullSessionTimeout];
    *buf = 134217984;
    v55 = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Session timeout: %f", buf, 0xCu);
  }

  v52 = off_100071990;
  v51 = off_1000719A0;
  v39 = 1;
  v47 = [NSArray arrayWithObjects:&v51 count:1];
  v53 = v47;
  v48 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  [v4 setSessionMetadata:v48];

LABEL_37:
  return v39;
}

- (void)_startRecvSession:(id)a3
{
  v3 = a3;
  v4 = +[ABSContactsInterface sharedInstance];
  [v4 sendMultisaveBegin];

  v5 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v6 = [v3 sessionMetadata];
  v7 = [v6 objectForKeyedSubscript:off_100071990];
  v8 = [v7 containsObject:off_1000719A0];

  if (v8)
  {
    [v5 setObject:off_1000719A0 forKeyedSubscript:off_100071990];
    v9 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Selecting fast encoding";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

  else
  {
    v11 = [v3 sessionMetadata];
    v12 = [v11 objectForKeyedSubscript:off_100071990];
    v13 = [v12 containsObject:off_1000719B0];

    if (v13)
    {
      [v5 setObject:off_1000719B0 forKeyedSubscript:off_100071990];
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Selecting protobuf encoding";
        goto LABEL_9;
      }
    }

    else
    {
      [v5 setObject:off_100071998 forKeyedSubscript:off_100071990];
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Selecting vCard encoding";
        goto LABEL_9;
      }
    }
  }

  if (+[NDTLog isInternalDevice]&& (keyExistsAndHasValidFormat = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"internal_accountIDs_accepted", @"com.apple.addressbooksync", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat))
  {
    v15 = AppBooleanValue;
    v16 = AppBooleanValue != 0;
    v17 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = v15 != 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "accountIDsAccepted [override]: %d", buf, 8u);
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = [NSNumber numberWithBool:v16];
  [v5 setObject:v18 forKeyedSubscript:off_1000719B8];

  [v3 setSessionMetadata:v5];
  v19 = +[ABSContactsShadow instance];
  [v19 beginTransaction];
}

- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446722;
    v17 = "ABSyncInterface.m";
    v18 = 1024;
    v19 = 939;
    v20 = 2080;
    v21 = "[ABSyncInterface service:willPreferSession:overSession:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d %s --mark--", &v16, 0x1Cu);
  }

  if ([v10 isSending])
  {
    v12 = [v10 delegate];
    v13 = [v12 progressReporter];
    [(ABSyncInterface *)self setPreemptedSessionProgressReporter:v13];

    v14 = [(ABSyncInterface *)self preemptedSessionProgressReporter];
    [v14 pause];
  }

  return v9;
}

- (BOOL)_shouldReallySendDeltaSessionWithAnchor:(id)a3 lmaData:(id)a4 store:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(ABSFavoritesSyncObject);
  v12 = objc_alloc_init(ABSFavoritesDiffObject);
  if ([(ABSFavoritesDiffObject *)v12 matches:v11])
  {

    v11 = objc_alloc_init(ABSAccountsDiffObject);
    if ([(ABSSyncObject *)v11 matches:0])
    {
      v13 = +[ABSyncInterface sharedInstance];
      v14 = [v13 serverState];

      v15 = [v14 getIntegerValueForKey:@"isGuardianRestricted" default:0];
      if (+[ABSContainerSyncObject currentGuardianRestriction]!= v15)
      {
        v19 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v16 = [objc_opt_class() estimatedLogCountForAnchor:v8 store:v10];
      if (v16 >> 3 >= 0x271)
      {
        v17 = v16;
        v18 = *(qword_100071D00 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v29[0] = 67109120;
          v29[1] = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Change log appears to be large (%d), bailing to reset behavior.", v29, 8u);
        }

        [(ABSyncInterface *)self requestFullSync:@"Big change log"];
        v19 = 0;
        goto LABEL_26;
      }

      v22 = [ABSContactsDeltaSource alloc];
      v23 = sub_1000191A8();
      v24 = [(ABSContactsDeltaSource *)v22 initWithAnchor:v8 keys:v23 store:v10 lmaData:v9];

      if (v24)
      {
        v25 = [(ABSContactsDeltaSource *)v24 containsInterestingChanges];
        v26 = *(qword_100071D00 + 8);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v27)
          {
            LOWORD(v29[0]) = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Contacts change detected", v29, 2u);
          }

          v19 = 1;
          goto LABEL_25;
        }

        if (v27)
        {
          LOWORD(v29[0]) = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Upon further reflection, we have decided this session is not worth our precious electrons.", v29, 2u);
        }
      }

      else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003BF50();
      }

      v19 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v21 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Accounts change detected", v29, 2u);
    }
  }

  else
  {
    v20 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Favorites change detected", v29, 2u);
    }
  }

  v19 = 1;
LABEL_27:

  return v19;
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 valueForKey:@"identifier"];
    if ([v9 isSending])
    {
      v14 = @"sending";
    }

    else
    {
      v14 = @"receiving";
    }

    v15 = [v9 isResetSync];
    v16 = @"delta";
    *v24 = 136446978;
    *&v24[4] = "[ABSyncInterface service:sessionEnded:error:]";
    *&v24[12] = 2114;
    *&v24[14] = v13;
    if (v15)
    {
      v16 = @"reset";
    }

    *&v24[22] = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ #%{public}@ #%{public}@", v24, 0x2Au);
  }

  kdebug_trace();
  if (atomic_fetch_add(&self->_sessionChecker, 0xFFFFFFFF) != 1)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003BF84();
    }

    abort();
  }

  v17 = [(ABSyncInterface *)self syncSession];
  v18 = [v17 capturedError];

  if (v18)
  {
    v19 = [v17 capturedError];

    v10 = v19;
  }

  if (v10)
  {
    v20 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003BFB8(v10, v20);
    }
  }

  if ([v9 isSending])
  {
    [(ABSyncInterface *)self _sendSessionEnded:v9 error:v10];
  }

  else
  {
    [(ABSyncInterface *)self _recvSessionEnded:v9 error:v10];
  }

  if ([v9 isSending])
  {
    [(ABSyncInterface *)self updateLMATokenForSession:v9];
  }

  [(ABSyncInterface *)self setSySession:0];
  [v9 setDelegate:0];
  [(ABSyncInterface *)self setSyncSession:0];
  [(ABSyncInterface *)self setPsySyncSession:0];
  if (self->_activity)
  {
    v21 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Telling XPC_ACTIVITY we're done.", v24, 2u);
    }

    [(NDTActivity *)self->_activity completeAndFireNever];
  }

  v22 = [(ABSyncInterface *)self sessionIdleQueue];
  dispatch_resume(v22);

  v23 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Done.", v24, 2u);
  }
}

- (void)updateLMATokenForSession:(id)a3
{
  v4 = a3;
  if ([(ABSyncInterface *)self shouldHandleLimitedAccessSyncs])
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = sub_1000385E4;
    v19 = sub_1000385F4;
    v20 = 0;
    v5 = objc_alloc_init(CNContactStore);
    v6 = [v5 getWatchLimitedAccessSyncDataStartingAtSequenceNumber:{-[ABSyncInterface limitedAccessSequenceNumber](self, "limitedAccessSequenceNumber")}];
    if ([v4 isResetSync])
    {
      v7 = [ABSContactsResetSource alloc];
      v8 = sub_1000191A8();
      v9 = [(ABSContactsResetSource *)v7 initWithKeys:v8 store:v5 lmaData:v6];
    }

    else
    {
      v11 = [ABSContactsDeltaSource alloc];
      v8 = [(ABSyncInterface *)self _fetchAnchor];
      v12 = sub_1000191A8();
      v9 = [(ABSContactsDeltaSource *)v11 initWithAnchor:v8 keys:v12 store:v5 lmaData:v6];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003860C;
    v14[3] = &unk_10005D338;
    v14[4] = buf;
    [(ABSContactsResetSource *)v9 enumerateContactsAdd:&stru_10005DAB8 remove:&stru_10005DAD8 lmaAdd:v14];
    if (*(v16 + 5))
    {
      v13 = [(ABSyncInterface *)self serverState];
      [v13 setIntegerValue:objc_msgSend(*(v16 + 5) forKey:{"integerValue"), @"LMA_SEQUENCE_NUMBER_KEY"}];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not updating LMA token, shouldHandleLimitedAccessSyncs said no", buf, 2u);
    }
  }
}

- (void)_sendSessionEnded:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ABSyncInterface *)self syncSession];
  v9 = [(ABSyncInterface *)self shouldResetSyncBePartial];
  [(ABSyncInterface *)self setShouldResetSyncBePartial:0];
  if (!v7 && !-[ABSyncInterface _shouldFakeFailure](self, "_shouldFakeFailure") && [v6 state] == 9)
  {
    if ([v6 isResetSync])
    {
      v10 = 136;
    }

    else
    {
      v10 = 128;
    }

    Current = CFAbsoluteTimeGetCurrent();
    [v8 start];
    v13 = v12;
    v14 = +[ABSContactsShadow instance];
    [v14 commitTransaction];

    if ([v8 count])
    {
      v15 = [v8 count] / (Current - v13);
      v16 = *(qword_100071D08 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 134217984;
        *&v37[4] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Session rate: %f", v37, 0xCu);
      }

      *(&self->super.isa + v10) = (v15 + *(&self->super.isa + v10) + *(&self->super.isa + v10)) / 3.0;
      [(NDTServerState *)self->_serverState setDoubleValue:@"fullRate" forKey:self->_fullRateEstimate];
      [(NDTServerState *)self->_serverState setDoubleValue:@"deltaRate" forKey:self->_deltaRateEstimate];
      v17 = *(qword_100071D08 + 8);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      deltaRateEstimate = self->_deltaRateEstimate;
      fullRateEstimate = self->_fullRateEstimate;
      *v37 = 134218240;
      *&v37[4] = fullRateEstimate;
      *&v37[12] = 2048;
      *&v37[14] = deltaRateEstimate;
      v20 = "Full sync rate: %f, Delta: %f";
      v21 = v17;
      v22 = 22;
    }

    else
    {
      v33 = *(qword_100071D00 + 8);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
LABEL_35:
        [(NDTServerState *)self->_serverState setIntegerValue:0 forKey:@"failureCount", *v37, *&v37[16]];
        if ([v6 isResetSync])
        {
          if (!v9)
          {
            [(NDTServerState *)self->_serverState setIntegerValue:8 forKey:@"sessionEdition"];
          }

          [(NDTServerState *)self->_serverState setBoolValue:0 forKey:@"MustBePartialReset"];
        }

        [(NDTServerState *)self->_serverState setBoolValue:v9 forKey:@"RetryMustBeReset"];
        v34 = [(ABSyncInterface *)self syncSession];
        v35 = [v34 contactsSource];
        v36 = [v35 historyAnchor];
        [(ABSyncInterface *)self _saveAnchor:v36];

        [(ABSyncInterface *)self _saveGuardianRestrictionBit];
        goto LABEL_24;
      }

      *v37 = 0;
      v20 = "Count was zero, not updating rate estimates.";
      v21 = v33;
      v22 = 2;
    }

    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, v37, v22);
    goto LABEL_35;
  }

  v23 = *(qword_100071D10 + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    if (v7)
    {
      v31 = v7;
    }

    else
    {
      v31 = @"(FAKE/None)";
    }

    v32 = v23;
    *v37 = 138543618;
    *&v37[4] = v31;
    *&v37[12] = 1024;
    *&v37[14] = [v6 state];
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "There was a sync error %{public}@, cs_state: %{companionsync:SYSessionState}d.", v37, 0x12u);
  }

  v24 = +[ABSContactsShadow instance];
  [v24 rollbackTransaction];

  if ([(__CFString *)v7 code]== 2007)
  {
    if ([v6 isResetSync])
    {
      v25 = 136;
    }

    else
    {
      v25 = 128;
    }

    v26 = [(ABSyncInterface *)self syncSession];
    v27 = [v26 count];
    [v6 fullSessionTimeout];
    *(&self->super.isa + v25) = v27 / (v28 + v28);

    [(NDTServerState *)self->_serverState setDoubleValue:@"fullRate" forKey:self->_fullRateEstimate];
    [(NDTServerState *)self->_serverState setDoubleValue:@"deltaRate" forKey:self->_deltaRateEstimate];
    goto LABEL_21;
  }

  if ([(__CFString *)v7 code]!= 2023)
  {
LABEL_21:
    [v6 isResetSync];
    v29 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Rescheduling.", v37, 2u);
    }

    [(ABSyncInterface *)self _scheduleRetrySync];
    goto LABEL_24;
  }

  if ([v6 isResetSync])
  {
    [(ABSyncInterface *)self requestFullSync:@"Requesting reset sync due to collision"];
  }

  else
  {
    v30 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Requesting delta sync due to collision", v37, 2u);
    }

    [(SYService *)self->_syncService setHasChangesAvailable];
  }

LABEL_24:
}

- (void)_recvSessionEnded:(id)a3 error:(id)a4
{
  v22 = a3;
  v6 = [(ABSyncInterface *)self syncSession];
  if (!a4)
  {
    v7 = [(ABSyncInterface *)self syncSession];
    v8 = [v7 accountsMessage];

    if (v8)
    {
      v9 = [(ABSyncInterface *)self syncSession];
      v10 = [v9 accountsMessage];
      [ABSAccountsSyncObject processSyncObjEndOfSessionPortion:v10];
    }
  }

  if ([v22 isResetSync])
  {
    v11 = [v6 capturedError];
    if (v11)
    {
    }

    else
    {
      v12 = [v22 error];

      if (!v12)
      {
        v13 = [(ABSyncInterface *)self syncController];
        [v13 deleteUnmarked];

        v14 = [v6 accountIdentifiers];
        v15 = objc_alloc_init(CNContactStore);
        [ABSAccountsManager deleteNotThese:v14 fromStore:v15];

        [(NDTServerState *)self->_serverState setBoolValue:0 forKey:@"RetryMustBeReset"];
      }
    }
  }

  v16 = [(ABSyncInterface *)self syncSession];
  v17 = [v16 validationMessage];

  if (!a4 && v17)
  {
    v18 = [(ABSyncInterface *)self syncSession];
    v19 = [v18 validationMessage];
    [ABSValidationSyncObject validateAgainst:v19];
  }

  v20 = +[ABSContactsShadow instance];
  [v20 commitTransaction];

  v21 = +[ABSContactsInterface sharedInstance];
  [v21 sendMultisaveFinished];
}

- (id)_fetchAnchor
{
  v2 = [(NDTServerState *)self->_serverState getStringValueForKey:@"syncAnchor" default:0];
  if (v2)
  {
    v3 = [[NSData alloc] initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_saveAnchor:(id)a3
{
  v6 = a3;
  if (v6 && ([v6 base64EncodedStringWithOptions:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [(NDTServerState *)self->_serverState setStringValue:v4 forKey:@"syncAnchor"];
  }

  else
  {
    [(NDTServerState *)self->_serverState deleteKey:@"syncAnchor"];
  }
}

- (void)_saveGuardianRestrictionBit
{
  v3 = +[ABSContainerSyncObject currentGuardianRestriction];
  serverState = self->_serverState;

  [(NDTServerState *)serverState setIntegerValue:v3 forKey:@"isGuardianRestricted"];
}

- (BOOL)oldDatabaseExists
{
  v2 = +[NSFileManager defaultManager];
  v3 = [ABSDatabaseFileManager syncStateDBPathFor:@"ABSyncState.local"];
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

- (BOOL)oldDatabaseDelete
{
  v2 = +[NSFileManager defaultManager];
  v3 = [ABSDatabaseFileManager syncStateDBPathFor:@"ABSyncState.local"];
  v4 = [v2 removeItemAtPath:v3 error:0];

  return v4;
}

- (void)_requestFullSync:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(ABSyncInterface *)self sySession];
  if (v6 && (v7 = v6, -[ABSyncInterface sySession](self, "sySession"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isResetSync], v8, v7, v9))
  {
    v10 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disregarding reset request during a reset session, proposed reason: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = [(ABSyncInterface *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000391A0;
    block[3] = &unk_10005D100;
    block[4] = self;
    v13 = v4;
    v14 = v5;
    dispatch_async(v11, block);
  }
}

- (ABSSyncController)syncController
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_syncController)
  {
    v3 = objc_alloc_init(ABSSyncController);
    syncController = v2->_syncController;
    v2->_syncController = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_syncController;

  return v5;
}

- (void)_setupLogging
{
  v3 = [NDTLog facilityWithSubsystem:@"com.apple.addressbooksync" category:@"phone"];
  v4 = qword_100071D00;
  qword_100071D00 = v3;

  v5 = [NDTLog facilityWithSubsystem:@"com.apple.addressbooksync" category:@"cs"];
  v6 = qword_100071D10;
  qword_100071D10 = v5;

  v7 = [NDTLog facilityWithSubsystem:@"com.apple.addressbooksync" category:@"performance"];
  v8 = qword_100071D08;
  qword_100071D08 = v7;

  [(ABSyncInterface *)self _enableDisableLogging];
}

- (id)_newFileName
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"Logs/CrashReporter/DiagnosticLogs/AddressBookSync"];

  v5 = +[NSFileManager defaultManager];
  [v5 contentsOfDirectoryAtPath:v4 error:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 length] == 32 && objc_msgSend(v11, "hasPrefix:", @"abs-log-") && (objc_msgSend(v11, "hasSuffix:", @".sqlitedb") & 1) != 0)
        {
          v12 = [v4 stringByAppendingPathComponent:v11];

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v4 stringByAppendingPathComponent:@"abs-log-%t.sqlitedb"];
LABEL_13:

  return v12;
}

- (void)watchUpdated:(id)a3
{
  v4 = os_transaction_create();
  v5 = [(ABSyncInterface *)self sessionIdleQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000396B0;
  v7[3] = &unk_10005CFC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end