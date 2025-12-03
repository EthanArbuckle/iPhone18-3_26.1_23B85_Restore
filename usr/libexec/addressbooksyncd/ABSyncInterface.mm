@interface ABSyncInterface
+ (ABSyncInterface)sharedInstance;
+ (id)activeDevice;
- (ABSSyncController)syncController;
- (ABSyncInterface)init;
- (BOOL)_shouldFakeFailure;
- (BOOL)_shouldReallySendDeltaSessionWithAnchor:(id)anchor lmaData:(id)data store:(id)store;
- (BOOL)_startSendSession:(id)session;
- (BOOL)oldDatabaseDelete;
- (BOOL)oldDatabaseExists;
- (BOOL)partialSyncEligible;
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)shouldHandleLimitedAccessSyncs;
- (BOOL)shouldNextResetSyncBePartial;
- (BOOL)watchSupportsPartialSyncs;
- (double)_nextDelay:(int64_t)delay;
- (id)_fetchAnchor;
- (id)_newFileName;
- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession;
- (int64_t)limitedAccessSequenceNumber;
- (void)_checkServerStateOnStartup;
- (void)_initSyncStore;
- (void)_migrationCheck;
- (void)_recvSessionEnded:(id)ended error:(id)error;
- (void)_requestFullSync:(id)sync;
- (void)_saveAnchor:(id)anchor;
- (void)_saveGuardianRestrictionBit;
- (void)_scheduleRetrySync;
- (void)_sendSessionEnded:(id)ended error:(id)error;
- (void)_setupLogging;
- (void)_startRecvSession:(id)session;
- (void)activity:(id)activity customizeCriteria:(id)criteria;
- (void)activityRun:(id)run;
- (void)dealloc;
- (void)registerForAddressBookDarwinNotifications;
- (void)service:(id)service sessionEnded:(id)ended error:(id)error;
- (void)startUnlockTimer:(double)timer;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)tc_advanceChangeNumber;
- (void)tc_setFailureProbablity:(double)probablity;
- (void)tc_setMessageTimeout:(double)timeout;
- (void)tc_setNominal;
- (void)tc_setSessionTimeout:(double)timeout;
- (void)tc_status:(id)tc_status;
- (void)updateLMATokenForSession:(id)session;
- (void)watchUpdated:(id)updated;
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
  queue = [(ABSyncInterface *)self queue];
  [(SYService *)v7 setDelegate:self queue:queue];

  v9 = self->_syncService;
  v18 = 0;
  LOBYTE(queue) = [(SYService *)v9 resume:&v18];
  v10 = v18;
  if ((queue & 1) == 0)
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
  systemBuildVersion = [v15 systemBuildVersion];
  v17 = [systemBuildVersion copy];
  [(ABSyncInterface *)self setWatchBuildVersion:v17];
}

- (BOOL)partialSyncEligible
{
  partialResetSyncOnPairingFeatureEnabled = [(ABSyncInterface *)self partialResetSyncOnPairingFeatureEnabled];
  watchSupportsPartialSyncs = [(ABSyncInterface *)self watchSupportsPartialSyncs];
  v5 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8 = 136315650;
    v9 = "[ABSyncInterface partialSyncEligible]";
    v10 = 1024;
    partialResetSyncOnPairingFeatureEnabled2 = [(ABSyncInterface *)self partialResetSyncOnPairingFeatureEnabled];
    v12 = 1024;
    watchSupportsPartialSyncs2 = [(ABSyncInterface *)self watchSupportsPartialSyncs];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ffEnabled=%d watchSupportsPartialSync=%d", &v8, 0x18u);
  }

  return partialResetSyncOnPairingFeatureEnabled & watchSupportsPartialSyncs;
}

- (BOOL)shouldNextResetSyncBePartial
{
  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    mustBeReset = [(ABSyncInterface *)self mustBeReset];
    v6 = [(NDTServerState *)self->_serverState getBoolValueForKey:@"MustBePartialReset" default:1];
    v8 = 136315650;
    v9 = "[ABSyncInterface shouldNextResetSyncBePartial]";
    v10 = 1024;
    v11 = mustBeReset;
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

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
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

  [(ABSyncInterface *)self setPsySyncSession:sessionCopy];
  kdebug_trace();
  if ([sessionCopy syncSessionType])
  {
    if ([sessionCopy syncSessionType] == 1)
    {
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Paired sync coordinator wants a delta sync.", &v12, 2u);
      }

      syncService = [(ABSyncInterface *)self syncService];
      [syncService setHasChangesAvailable];

      [sessionCopy syncDidComplete];
    }
  }

  else
  {
    v11 = +[ABSyncInterface sharedInstance];
    [v11 requestFullSync:@"Paired sync coordinator commanded it."];
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  syncRestriction = [restriction syncRestriction];
  v4 = *(qword_100071D00 + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (syncRestriction == 1)
  {
    if (!v5)
    {
      return;
    }

    LOWORD(v9[0]) = 0;
    v6 = "Paired sync restriction is now Limit Push";
    goto LABEL_7;
  }

  if (!syncRestriction)
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
  v9[1] = syncRestriction;
  v6 = "Paired sync restriction is unknown value: %d";
  v7 = v4;
  v8 = 8;
LABEL_10:
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v9, v8);
}

- (void)registerForAddressBookDarwinNotifications
{
  queue = [(ABSyncInterface *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000356E4;
  handler[3] = &unk_10005DA50;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", queue, handler);

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

- (void)activity:(id)activity customizeCriteria:(id)criteria
{
  serverState = self->_serverState;
  xdict = criteria;
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, [(NDTServerState *)serverState getIntegerValueForKey:@"failureCount" default:0]< 4);
}

- (void)activityRun:(id)run
{
  runCopy = run;
  v5 = os_transaction_create();
  sessionIdleQueue = [(ABSyncInterface *)self sessionIdleQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035BFC;
  block[3] = &unk_10005D100;
  block[4] = self;
  v10 = runCopy;
  v11 = v5;
  v7 = v5;
  v8 = runCopy;
  dispatch_async(sessionIdleQueue, block);
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

- (double)_nextDelay:(int64_t)delay
{
  [(NDTServerState *)self->_serverState getDoubleValueForKey:@"tc_fixedRetryInterval" default:-1.0];
  if (result < 0.0)
  {
    delayCopy = 4;
    if (delay < 4)
    {
      delayCopy = delay;
    }

    return *(&unk_100048C00 + (((delayCopy << 32) - 0x100000000) >> 30));
  }

  return result;
}

- (void)_checkServerStateOnStartup
{
  v3 = os_transaction_create();
  sessionIdleQueue = [(ABSyncInterface *)self sessionIdleQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036118;
  v6[3] = &unk_10005CFC8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(sessionIdleQueue, v6);
}

- (void)startUnlockTimer:(double)timer
{
  unlockQueue = [(ABSyncInterface *)self unlockQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036254;
  v6[3] = &unk_10005DA78;
  v6[4] = self;
  *&v6[5] = timer;
  dispatch_async(unlockQueue, v6);
}

- (void)_migrationCheck
{
  objc_initWeak(&location, self);
  sessionIdleQueue = [(ABSyncInterface *)self sessionIdleQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000364F4;
  v4[3] = &unk_10005CE40;
  objc_copyWeak(&v5, &location);
  dispatch_async(sessionIdleQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)tc_status:(id)tc_status
{
  tc_statusCopy = tc_status;
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

  automaticSync = [(ABSyncInterface *)self automaticSync];
  [(ABSyncInterface *)self sessionTimeout];
  v13 = v12;
  [(ABSyncInterface *)self messageTimeout];
  v15 = v14;
  [(ABSyncInterface *)self objectDelay];
  v17 = v16;
  [v18 appendFormat:@"Fixed retry interval: %.3f\n", v6];
  [v18 appendFormat:@"Failure probability: %.3f\n", v10];
  [v18 appendFormat:@"Automatic sync: %d\n", automaticSync];
  [v18 appendFormat:@"Session timeout: %.3f\n", v13];
  [v18 appendFormat:@"Message timeout: %.3f\n", v15];
  [v18 appendFormat:@"Object delay: %.3f\n", v17];
  tc_statusCopy[2](tc_statusCopy, v18);
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
  currentHistoryToken = [v4 currentHistoryToken];
  [(ABSyncInterface *)self _saveAnchor:currentHistoryToken];
}

- (void)tc_setSessionTimeout:(double)timeout
{
  if (timeout < 0.0)
  {
    timeout = 10800.0;
  }

  [(NDTServerState *)self->_serverState setDoubleValue:@"tc_sessionTimeout" forKey:timeout];
}

- (void)tc_setMessageTimeout:(double)timeout
{
  if (timeout < 0.0)
  {
    timeout = 1500.0;
  }

  [(NDTServerState *)self->_serverState setDoubleValue:@"tc_messageTimeout" forKey:timeout];
}

- (void)tc_setFailureProbablity:(double)probablity
{
  valuePtr = probablity;
  v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFPreferencesSetAppValue(@"internal_probabilityOfSyncFailure", v3, @"com.apple.addressbooksync");
  CFRelease(v3);
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  serviceCopy = service;
  sessionCopy = session;
  v9 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [sessionCopy valueForKey:@"identifier"];
    if ([sessionCopy isSending])
    {
      v12 = @"sending";
    }

    else
    {
      v12 = @"receiving";
    }

    isResetSync = [sessionCopy isResetSync];
    v14 = @"delta";
    *buf = 136446978;
    v39 = "[ABSyncInterface service:startSession:error:]";
    v40 = 2114;
    v41 = v11;
    if (isResetSync)
    {
      v14 = @"reset";
    }

    v42 = 2114;
    v43 = v12;
    v44 = 2114;
    v45 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ #%{public}@ #%{public}@", buf, 0x2Au);
  }

  if (!-[NDTServerState getBoolValueForKey:default:](self->_serverState, "getBoolValueForKey:default:", @"RetryMustBeReset", 0) || ([sessionCopy isResetSync] & 1) != 0)
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
    syncSession = [(ABSyncInterface *)self syncSession];
    [syncSession setDelayUs:v18];

    [(ABSyncInterface *)self setSySession:sessionCopy];
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
          syncSession2 = [(ABSyncInterface *)self syncSession];
          [syncSession2 setAbortAfter:v21];
        }
      }
    }

    syncController = [(ABSyncInterface *)self syncController];
    syncSession3 = [(ABSyncInterface *)self syncSession];
    [syncSession3 setSyncController:syncController];

    Current = CFAbsoluteTimeGetCurrent();
    syncSession4 = [(ABSyncInterface *)self syncSession];
    [syncSession4 setStart:Current];

    [sessionCopy setMaxConcurrentMessages:2];
    [(ABSyncInterface *)self sessionTimeout];
    [sessionCopy setFullSessionTimeout:?];
    [(ABSyncInterface *)self messageTimeout];
    [sessionCopy setPerMessageTimeout:?];
    syncSession5 = [(ABSyncInterface *)self syncSession];
    [sessionCopy setDelegate:syncSession5];

    v28 = objc_opt_new();
    [sessionCopy setSerializer:v28];

    [sessionCopy setCanRestart:0];
    [sessionCopy setCanRollback:0];
    if ([sessionCopy isSending])
    {
      if (![(ABSyncInterface *)self _startSendSession:sessionCopy])
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
      [(ABSyncInterface *)self _startRecvSession:sessionCopy];
    }

    v30 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      protocolVersion = [sessionCopy protocolVersion];
      *buf = 67109120;
      LODWORD(v39) = protocolVersion;
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
  activeDevice = [objc_opt_class() activeDevice];
  v3 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v4 = [activeDevice supportsCapability:v3];

  return v4;
}

+ (id)activeDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (BOOL)watchSupportsPartialSyncs
{
  activeDevice = [objc_opt_class() activeDevice];
  v3 = [[NSUUID alloc] initWithUUIDString:@"B727AD95-5778-41B6-A9DB-05E7289820ED"];
  v4 = [activeDevice supportsCapability:v3];

  return v4;
}

- (int64_t)limitedAccessSequenceNumber
{
  serverState = [(ABSyncInterface *)self serverState];
  v3 = [serverState getIntegerValueForKey:@"LMA_SEQUENCE_NUMBER_KEY" default:0];

  return v3;
}

- (BOOL)_startSendSession:(id)session
{
  sessionCopy = session;
  activity = self->_activity;
  syncSession = [(ABSyncInterface *)self syncSession];
  [syncSession setActivity:activity];

  _fetchAnchor = [(ABSyncInterface *)self _fetchAnchor];
  v8 = objc_alloc_init(CNContactStore);
  if ([(ABSyncInterface *)self shouldHandleLimitedAccessSyncs])
  {
    v9 = [v8 getWatchLimitedAccessSyncDataStartingAtSequenceNumber:{-[ABSyncInterface limitedAccessSequenceNumber](self, "limitedAccessSequenceNumber")}];
  }

  else
  {
    v9 = 0;
  }

  if ([sessionCopy isResetSync])
  {
    if ([(ABSyncInterface *)self shouldUseBackgroundPriority])
    {
      v10 = -20;
    }

    else
    {
      v10 = 0;
    }

    [sessionCopy setPriority:v10];
    v11 = [ABSContactsResetSource alloc];
    v12 = sub_1000191A8();
    v13 = [(ABSContactsResetSource *)v11 initWithKeys:v12 store:v8 lmaData:v9];

    v50 = 0;
    v14 = [v8 unifiedContactCountWithError:&v50];
    v15 = v50;
    integerValue = [v14 integerValue];

    if ([(ABSyncInterface *)self partialSyncEligible])
    {
      shouldNextResetSyncBePartial = [(ABSyncInterface *)self shouldNextResetSyncBePartial];
      if (integerValue > 1000)
      {
        v18 = shouldNextResetSyncBePartial;
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
    syncSession2 = [(ABSyncInterface *)self syncSession];
    [syncSession2 setContactsSource:v13];

    _fetchAnchor = 0;
  }

  else
  {
    if (![(ABSyncInterface *)self _shouldReallySendDeltaSessionWithAnchor:_fetchAnchor lmaData:v9 store:v8])
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
    v21 = [(ABSContactsDeltaSource *)v19 initWithAnchor:_fetchAnchor keys:v20 store:v8 lmaData:v9];
    syncSession3 = [(ABSyncInterface *)self syncSession];
    [syncSession3 setContactsSource:v21];

    syncSession4 = [(ABSyncInterface *)self syncSession];
    contactsSource = [syncSession4 contactsSource];

    if (!contactsSource)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003BF1C();
      }

      goto LABEL_32;
    }
  }

  syncSession5 = [(ABSyncInterface *)self syncSession];
  contactsSource2 = [syncSession5 contactsSource];
  if ([contactsSource2 isReset])
  {
    isResetSync = [sessionCopy isResetSync];

    if ((isResetSync & 1) == 0)
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

  if ([sessionCopy isResetSync])
  {
    syncController = [(ABSyncInterface *)self syncController];
    [syncController resetSyncState];
  }

  preemptedSessionProgressReporter = [(ABSyncInterface *)self preemptedSessionProgressReporter];

  if (preemptedSessionProgressReporter)
  {
    v33 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Using preempted session", buf, 2u);
    }

    preemptedSessionProgressReporter2 = [(ABSyncInterface *)self preemptedSessionProgressReporter];
    syncSession6 = [(ABSyncInterface *)self syncSession];
    [syncSession6 setProgressReporter:preemptedSessionProgressReporter2];

    syncSession7 = [(ABSyncInterface *)self syncSession];
    progressReporter = [syncSession7 progressReporter];
    [progressReporter resume];

    [(ABSyncInterface *)self setPreemptedSessionProgressReporter:0];
  }

  else
  {
    v40 = [ABSProgressTestifier alloc];
    psySyncSession = [(ABSyncInterface *)self psySyncSession];
    v42 = [(ABSProgressReporter *)v40 initWithSession:psySyncSession];

    syncSession8 = [(ABSyncInterface *)self syncSession];
    [syncSession8 setProgressReporter:v42];
  }

  v44 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v44;
    [sessionCopy fullSessionTimeout];
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
  [sessionCopy setSessionMetadata:v48];

LABEL_37:
  return v39;
}

- (void)_startRecvSession:(id)session
{
  sessionCopy = session;
  v4 = +[ABSContactsInterface sharedInstance];
  [v4 sendMultisaveBegin];

  v5 = [[NSMutableDictionary alloc] initWithCapacity:2];
  sessionMetadata = [sessionCopy sessionMetadata];
  v7 = [sessionMetadata objectForKeyedSubscript:off_100071990];
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
    sessionMetadata2 = [sessionCopy sessionMetadata];
    v12 = [sessionMetadata2 objectForKeyedSubscript:off_100071990];
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

  [sessionCopy setSessionMetadata:v5];
  v19 = +[ABSContactsShadow instance];
  [v19 beginTransaction];
}

- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession
{
  serviceCopy = service;
  sessionCopy = session;
  overSessionCopy = overSession;
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

  if ([overSessionCopy isSending])
  {
    delegate = [overSessionCopy delegate];
    progressReporter = [delegate progressReporter];
    [(ABSyncInterface *)self setPreemptedSessionProgressReporter:progressReporter];

    preemptedSessionProgressReporter = [(ABSyncInterface *)self preemptedSessionProgressReporter];
    [preemptedSessionProgressReporter pause];
  }

  return sessionCopy;
}

- (BOOL)_shouldReallySendDeltaSessionWithAnchor:(id)anchor lmaData:(id)data store:(id)store
{
  anchorCopy = anchor;
  dataCopy = data;
  storeCopy = store;
  v11 = objc_alloc_init(ABSFavoritesSyncObject);
  v12 = objc_alloc_init(ABSFavoritesDiffObject);
  if ([(ABSFavoritesDiffObject *)v12 matches:v11])
  {

    v11 = objc_alloc_init(ABSAccountsDiffObject);
    if ([(ABSSyncObject *)v11 matches:0])
    {
      v13 = +[ABSyncInterface sharedInstance];
      serverState = [v13 serverState];

      v15 = [serverState getIntegerValueForKey:@"isGuardianRestricted" default:0];
      if (+[ABSContainerSyncObject currentGuardianRestriction]!= v15)
      {
        v19 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v16 = [objc_opt_class() estimatedLogCountForAnchor:anchorCopy store:storeCopy];
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
      v24 = [(ABSContactsDeltaSource *)v22 initWithAnchor:anchorCopy keys:v23 store:storeCopy lmaData:dataCopy];

      if (v24)
      {
        containsInterestingChanges = [(ABSContactsDeltaSource *)v24 containsInterestingChanges];
        v26 = *(qword_100071D00 + 8);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (containsInterestingChanges)
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

- (void)service:(id)service sessionEnded:(id)ended error:(id)error
{
  serviceCopy = service;
  endedCopy = ended;
  errorCopy = error;
  v11 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [endedCopy valueForKey:@"identifier"];
    if ([endedCopy isSending])
    {
      v14 = @"sending";
    }

    else
    {
      v14 = @"receiving";
    }

    isResetSync = [endedCopy isResetSync];
    v16 = @"delta";
    *v24 = 136446978;
    *&v24[4] = "[ABSyncInterface service:sessionEnded:error:]";
    *&v24[12] = 2114;
    *&v24[14] = v13;
    if (isResetSync)
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

  syncSession = [(ABSyncInterface *)self syncSession];
  capturedError = [syncSession capturedError];

  if (capturedError)
  {
    capturedError2 = [syncSession capturedError];

    errorCopy = capturedError2;
  }

  if (errorCopy)
  {
    v20 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003BFB8(errorCopy, v20);
    }
  }

  if ([endedCopy isSending])
  {
    [(ABSyncInterface *)self _sendSessionEnded:endedCopy error:errorCopy];
  }

  else
  {
    [(ABSyncInterface *)self _recvSessionEnded:endedCopy error:errorCopy];
  }

  if ([endedCopy isSending])
  {
    [(ABSyncInterface *)self updateLMATokenForSession:endedCopy];
  }

  [(ABSyncInterface *)self setSySession:0];
  [endedCopy setDelegate:0];
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

  sessionIdleQueue = [(ABSyncInterface *)self sessionIdleQueue];
  dispatch_resume(sessionIdleQueue);

  v23 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Done.", v24, 2u);
  }
}

- (void)updateLMATokenForSession:(id)session
{
  sessionCopy = session;
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
    if ([sessionCopy isResetSync])
    {
      v7 = [ABSContactsResetSource alloc];
      _fetchAnchor = sub_1000191A8();
      v9 = [(ABSContactsResetSource *)v7 initWithKeys:_fetchAnchor store:v5 lmaData:v6];
    }

    else
    {
      v11 = [ABSContactsDeltaSource alloc];
      _fetchAnchor = [(ABSyncInterface *)self _fetchAnchor];
      v12 = sub_1000191A8();
      v9 = [(ABSContactsDeltaSource *)v11 initWithAnchor:_fetchAnchor keys:v12 store:v5 lmaData:v6];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003860C;
    v14[3] = &unk_10005D338;
    v14[4] = buf;
    [(ABSContactsResetSource *)v9 enumerateContactsAdd:&stru_10005DAB8 remove:&stru_10005DAD8 lmaAdd:v14];
    if (*(v16 + 5))
    {
      serverState = [(ABSyncInterface *)self serverState];
      [serverState setIntegerValue:objc_msgSend(*(v16 + 5) forKey:{"integerValue"), @"LMA_SEQUENCE_NUMBER_KEY"}];
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

- (void)_sendSessionEnded:(id)ended error:(id)error
{
  endedCopy = ended;
  errorCopy = error;
  syncSession = [(ABSyncInterface *)self syncSession];
  shouldResetSyncBePartial = [(ABSyncInterface *)self shouldResetSyncBePartial];
  [(ABSyncInterface *)self setShouldResetSyncBePartial:0];
  if (!errorCopy && !-[ABSyncInterface _shouldFakeFailure](self, "_shouldFakeFailure") && [endedCopy state] == 9)
  {
    if ([endedCopy isResetSync])
    {
      v10 = 136;
    }

    else
    {
      v10 = 128;
    }

    Current = CFAbsoluteTimeGetCurrent();
    [syncSession start];
    v13 = v12;
    v14 = +[ABSContactsShadow instance];
    [v14 commitTransaction];

    if ([syncSession count])
    {
      v15 = [syncSession count] / (Current - v13);
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
        if ([endedCopy isResetSync])
        {
          if (!shouldResetSyncBePartial)
          {
            [(NDTServerState *)self->_serverState setIntegerValue:8 forKey:@"sessionEdition"];
          }

          [(NDTServerState *)self->_serverState setBoolValue:0 forKey:@"MustBePartialReset"];
        }

        [(NDTServerState *)self->_serverState setBoolValue:shouldResetSyncBePartial forKey:@"RetryMustBeReset"];
        syncSession2 = [(ABSyncInterface *)self syncSession];
        contactsSource = [syncSession2 contactsSource];
        historyAnchor = [contactsSource historyAnchor];
        [(ABSyncInterface *)self _saveAnchor:historyAnchor];

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
    if (errorCopy)
    {
      v31 = errorCopy;
    }

    else
    {
      v31 = @"(FAKE/None)";
    }

    v32 = v23;
    *v37 = 138543618;
    *&v37[4] = v31;
    *&v37[12] = 1024;
    *&v37[14] = [endedCopy state];
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "There was a sync error %{public}@, cs_state: %{companionsync:SYSessionState}d.", v37, 0x12u);
  }

  v24 = +[ABSContactsShadow instance];
  [v24 rollbackTransaction];

  if ([(__CFString *)errorCopy code]== 2007)
  {
    if ([endedCopy isResetSync])
    {
      v25 = 136;
    }

    else
    {
      v25 = 128;
    }

    syncSession3 = [(ABSyncInterface *)self syncSession];
    v27 = [syncSession3 count];
    [endedCopy fullSessionTimeout];
    *(&self->super.isa + v25) = v27 / (v28 + v28);

    [(NDTServerState *)self->_serverState setDoubleValue:@"fullRate" forKey:self->_fullRateEstimate];
    [(NDTServerState *)self->_serverState setDoubleValue:@"deltaRate" forKey:self->_deltaRateEstimate];
    goto LABEL_21;
  }

  if ([(__CFString *)errorCopy code]!= 2023)
  {
LABEL_21:
    [endedCopy isResetSync];
    v29 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Rescheduling.", v37, 2u);
    }

    [(ABSyncInterface *)self _scheduleRetrySync];
    goto LABEL_24;
  }

  if ([endedCopy isResetSync])
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

- (void)_recvSessionEnded:(id)ended error:(id)error
{
  endedCopy = ended;
  syncSession = [(ABSyncInterface *)self syncSession];
  if (!error)
  {
    syncSession2 = [(ABSyncInterface *)self syncSession];
    accountsMessage = [syncSession2 accountsMessage];

    if (accountsMessage)
    {
      syncSession3 = [(ABSyncInterface *)self syncSession];
      accountsMessage2 = [syncSession3 accountsMessage];
      [ABSAccountsSyncObject processSyncObjEndOfSessionPortion:accountsMessage2];
    }
  }

  if ([endedCopy isResetSync])
  {
    capturedError = [syncSession capturedError];
    if (capturedError)
    {
    }

    else
    {
      error = [endedCopy error];

      if (!error)
      {
        syncController = [(ABSyncInterface *)self syncController];
        [syncController deleteUnmarked];

        accountIdentifiers = [syncSession accountIdentifiers];
        v15 = objc_alloc_init(CNContactStore);
        [ABSAccountsManager deleteNotThese:accountIdentifiers fromStore:v15];

        [(NDTServerState *)self->_serverState setBoolValue:0 forKey:@"RetryMustBeReset"];
      }
    }
  }

  syncSession4 = [(ABSyncInterface *)self syncSession];
  validationMessage = [syncSession4 validationMessage];

  if (!error && validationMessage)
  {
    syncSession5 = [(ABSyncInterface *)self syncSession];
    validationMessage2 = [syncSession5 validationMessage];
    [ABSValidationSyncObject validateAgainst:validationMessage2];
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

- (void)_saveAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (anchorCopy && ([anchorCopy base64EncodedStringWithOptions:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (void)_requestFullSync:(id)sync
{
  syncCopy = sync;
  v5 = os_transaction_create();
  sySession = [(ABSyncInterface *)self sySession];
  if (sySession && (v7 = sySession, -[ABSyncInterface sySession](self, "sySession"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isResetSync], v8, v7, v9))
  {
    v10 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = syncCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disregarding reset request during a reset session, proposed reason: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    queue = [(ABSyncInterface *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000391A0;
    block[3] = &unk_10005D100;
    block[4] = self;
    v13 = syncCopy;
    v14 = v5;
    dispatch_async(queue, block);
  }
}

- (ABSSyncController)syncController
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_syncController)
  {
    v3 = objc_alloc_init(ABSSyncController);
    syncController = selfCopy->_syncController;
    selfCopy->_syncController = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_syncController;

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

- (void)watchUpdated:(id)updated
{
  v4 = os_transaction_create();
  sessionIdleQueue = [(ABSyncInterface *)self sessionIdleQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000396B0;
  v7[3] = &unk_10005CFC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sessionIdleQueue, v7);
}

@end