@interface TCCDSyncController
+ (id)allowedClassesForSYChangeUnarchiving;
+ (id)allowedClassesForSavedSyncStateUnarchiving;
+ (id)sharedSyncController;
- (BOOL)_writeSyncState;
- (BOOL)isSyncingEnabled;
- (BOOL)peerSupportsIndependentAuthforService:(id)service;
- (BOOL)peerSupportsService:(id)service authVersion:(unint64_t)version;
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (TCCDSyncController)init;
- (TCCDSyncController)initWithAsyncSyncEngineInitialization;
- (const)_syncTypeToString:(unsigned int)string;
- (id)_beginResetSyncHook;
- (id)_makePostPairingContinuation;
- (id)_os_state_titleWithPrefix:(id)prefix withHints:(os_state_hints_s *)hints;
- (id)_savedSyncStateFile;
- (id)_syncSessionHandlerForUpdateAccessAction:(id)action;
- (id)_syncStatusDescriptionString;
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession;
- (id)stringForSYChangeType:(int64_t)type;
- (int64_t)syChangeTypeForUpdateType:(unint64_t)type;
- (unint64_t)updateTypeForSYChangeType:(int64_t)type;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)_acquireTransaction;
- (void)_addDeltaSyncChange:(id)change;
- (void)_beginAsyncSyncEngineInitialization;
- (void)_didPairToDevice:(id)device;
- (void)_didPairToNewDeviceHookWithContinuation:(id)continuation;
- (void)_didReturnToPreviouslyPairedDevice:(id)device;
- (void)_didReturnToPreviouslyPairedDeviceHookWithContinuation:(id)continuation;
- (void)_didUnPairDevice;
- (void)_endDeltaChangeBatching;
- (void)_handleSyncObject:(id)object updateType:(unint64_t)type;
- (void)_initializeSyncEngine;
- (void)_initializeSyncEngineAfterDeviceUnlock;
- (void)_initiateResetSync;
- (void)_loadSavedSyncState;
- (void)_notifySyncSessionHandlers:(id)handlers forUpdateAccessAction:(id)action;
- (void)_release_transaction;
- (void)_removeSavedSyncState;
- (void)_resetSyncingAndCancelAnyInFlightSessions;
- (void)_retrySyncCancel;
- (void)_retrySyncReset;
- (void)_retrySyncSession:(id)session;
- (void)_retrySyncType:(unsigned int)type;
- (void)_sendSyncSessionDidFinishWithResult:(unsigned int)result error:(id)error;
- (void)_setSyncingEnabled:(BOOL)enabled;
- (void)_setupOSStateHandler;
- (void)_updateDatabase:(unint64_t)database forUpdateAccessAction:(id)action;
- (void)_writeSyncStateAndAllowTermination;
- (void)beginBatchingDeltaChanges;
- (void)endBatchingDeltaChanges;
- (void)handleMemoryPressureCritical;
- (void)removeAccessDidUpdateHandlerForSession:(id)session;
- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)service:(id)service encounteredError:(id)error context:(id)context;
- (void)service:(id)service sessionEnded:(id)ended error:(id)error;
- (void)service:(id)service targetDeviceProximityChanged:(BOOL)changed;
- (void)service:(id)service willSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)setSyncSession:(id)session accessDidUpdateHandler:(id)handler;
- (void)syncAccessAction:(id)action updateType:(unint64_t)type;
- (void)syncAccessUpdateForServiceIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier clientType:(int)type accessStatus:(unint64_t)status authorizationVersion:(unint64_t)version flags:(int)flags updateType:(unint64_t)updateType;
- (void)syncAccessUpdateForServiceIdentifier:(id)identifier mainClientIdentifier:(id)clientIdentifier replicaClientIdentifier:(id)replicaClientIdentifier clientType:(int)type accessStatus:(unint64_t)status authorizationVersion:(unint64_t)version flags:(int)flags updateType:(unint64_t)self0;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
- (void)syncSession:(id)session successfullySynced:(id)synced;
- (void)testMemoryPressureCritical;
- (void)testSyncSet:(id)set;
- (void)testSyncStatus;
- (void)willShutdown;
@end

@implementation TCCDSyncController

+ (id)sharedSyncController
{
  if (qword_1000C0FF8 != -1)
  {
    sub_1000612F0();
  }

  v3 = qword_1000C0FF0;

  return v3;
}

+ (id)allowedClassesForSavedSyncStateUnarchiving
{
  if (qword_1000C1008 != -1)
  {
    sub_100061304();
  }

  v3 = qword_1000C1000;

  return v3;
}

+ (id)allowedClassesForSYChangeUnarchiving
{
  if (qword_1000C1018 != -1)
  {
    sub_100061318();
  }

  v3 = qword_1000C1010;

  return v3;
}

- (TCCDSyncController)init
{
  v6.receiver = self;
  v6.super_class = TCCDSyncController;
  v2 = [(TCCDSyncController *)&v6 init];
  if (v2)
  {
    [v2 setSyServiceClass:off_1000C0C48()];
    [v2 setNrPairedDeviceRegisteryClass:off_1000C0C50()];
    v3 = dispatch_queue_create("TCCDSyncController", 0);
    v4 = *(v2 + 12);
    *(v2 + 12) = v3;

    dispatch_queue_set_specific(*(v2 + 12), off_1000C0C40, v2, 0);
    if ([v2 syServiceClass] && objc_msgSend(v2, "nrPairedDeviceRegisteryClass") && *(v2 + 12))
    {
      if (qword_1000C0FE0 != -1)
      {
        sub_10006132C();
      }

      *(v2 + 8) = 0;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)_beginAsyncSyncEngineInitialization
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015470;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_async(syncControllerQueue, block);
}

- (TCCDSyncController)initWithAsyncSyncEngineInitialization
{
  v2 = [(TCCDSyncController *)self init];
  v3 = v2;
  if (v2)
  {
    [(TCCDSyncController *)v2 setIsMain:0];
    [(TCCDSyncController *)v3 _beginAsyncSyncEngineInitialization];
  }

  return v3;
}

- (id)_os_state_titleWithPrefix:(id)prefix withHints:(os_state_hints_s *)hints
{
  var2 = hints->var2;
  v5 = @"Error";
  if (var2 == 3)
  {
    v5 = @"Request";
  }

  if (var2 == 2)
  {
    v6 = @"Fault";
  }

  else
  {
    v6 = v5;
  }

  return [NSString stringWithFormat:@"%@ (why: %@)", prefix, v6];
}

- (void)_setupOSStateHandler
{
  objc_initWeak(&location, self);
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  objc_copyWeak(&v4, &location);
  self->_stateHandler = os_state_add_handler();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_initializeSyncEngine
{
  v3 = tcc_sync_log();
  v4 = qword_1000C12F8;
  qword_1000C12F8 = v3;

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100061354();
  }

  if ([(TCCDSyncController *)self _initializeSyncEngineHook])
  {
    v5 = dispatch_queue_create("TCCDSyncSessions", 0);
    syncSessionsQueue = self->_syncSessionsQueue;
    self->_syncSessionsQueue = v5;

    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    syncSessionsHandlers = self->_syncSessionsHandlers;
    self->_syncSessionsHandlers = v7;

    v9 = +[NSMutableArray array];
    pendingDeltaSyncChanges = self->_pendingDeltaSyncChanges;
    self->_pendingDeltaSyncChanges = v9;

    v11 = +[NSMutableArray array];
    sessionSyncChanges = self->_sessionSyncChanges;
    self->_sessionSyncChanges = v11;

    v13 = +[NSMutableArray array];
    sessionPendingConfirmationSyncChanges = self->_sessionPendingConfirmationSyncChanges;
    self->_sessionPendingConfirmationSyncChanges = v13;

    if (self->_syncSessionsQueue && self->_syncSessionsHandlers && self->_pendingDeltaSyncChanges && self->_sessionSyncChanges && self->_sessionPendingConfirmationSyncChanges)
    {
      self->_pendingSyncType = 0;
      self->_maxRetryCount = 5;
      *&self->_sessionPerMessageTimeoutSecs = xmmword_1000808F0;
      *&self->_retryIntervalSecs = vdupq_n_s64(0x3CuLL);
      [(TCCDSyncController *)self _setupOSStateHandler];
      v15 = +[TCCDPlatform currentPlatform];
      server = [v15 server];
      stateDirectory = [server stateDirectory];
      v18 = [stateDirectory stringByAppendingPathComponent:@"tccd_sync_config.plist"];

      v19 = [NSData dataWithContentsOfFile:v18 options:0 error:0];
      if (v19)
      {
        v38 = 0;
        v20 = [NSPropertyListSerialization propertyListWithData:v19 options:0 format:0 error:&v38];
        v21 = v38;
        if (v20)
        {
          v22 = [v20 objectForKeyedSubscript:@"maxRetry"];
          v23 = v22;
          if (v22)
          {
            -[TCCDSyncController setMaxRetryCount:](self, "setMaxRetryCount:", [v22 unsignedLongLongValue]);
          }

          v24 = [v20 objectForKeyedSubscript:@"retryInverval"];

          if (v24)
          {
            -[TCCDSyncController setRetryIntervalSecs:](self, "setRetryIntervalSecs:", [v24 unsignedLongLongValue]);
          }

          v25 = [v20 objectForKeyedSubscript:@"messageTimeout"];

          if (v25)
          {
            -[TCCDSyncController setSessionPerMessageTimeoutSecs:](self, "setSessionPerMessageTimeoutSecs:", [v25 unsignedLongLongValue]);
          }

          v26 = [v20 objectForKeyedSubscript:@"eventRetryInverval"];

          if (v26)
          {
            -[TCCDSyncController setEventRetryIntervalSecs:](self, "setEventRetryIntervalSecs:", [v26 unsignedLongLongValue]);
          }

          v27 = qword_1000C12F8;
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
          {
            sub_1000613C4(v27, self);
          }
        }

        else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          sub_100061494();
        }
      }

      v28 = MKBDeviceUnlockedSinceBoot();
      v29 = v28;
      if (v28 < 0)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          sub_100061568();
        }

        v30 = 0;
      }

      else if (v28)
      {
        v30 = 1;
      }

      else
      {
        out_token = 0;
        v31 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "SyncEngine init: Device locked; waiting for unlock...", buf, 2u);
        }

        syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100015C90;
        handler[3] = &unk_1000A5568;
        handler[4] = self;
        notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, syncControllerQueue, handler);

        v33 = MKBDeviceUnlockedSinceBoot();
        v30 = v33 == 1;
        if (v33 == 1)
        {
          notify_cancel(out_token);
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
          {
            sub_100061534();
          }
        }
      }

      v34 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        v35 = "No";
        if (v30)
        {
          v35 = "Yes";
        }

        out_token = 136315394;
        v40 = v35;
        v41 = 1024;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "SyncEngine init: deviceUnlocked: %s, unlockStatus: %d", &out_token, 0x12u);
      }

      if (v30)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000615DC();
        }

        [(TCCDSyncController *)self _initializeSyncEngineAfterDeviceUnlock];
      }
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100061610();
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100061388();
  }
}

- (void)_initializeSyncEngineAfterDeviceUnlock
{
  v3 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006164C(v3);
  }

  v4 = +[TCCDMessageController sharedMessageControllerForCurrentPlatform];
  messageController = self->_messageController;
  self->_messageController = v4;

  if (self->_messageController)
  {
    v6 = [objc_alloc(-[TCCDSyncController syServiceClass](self "syServiceClass"))];
    [(TCCDSyncController *)self setSyncService:v6];

    syncService = [(TCCDSyncController *)self syncService];

    if (syncService)
    {
      syncService = self->_syncService;
      syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
      [(SYService *)syncService setDelegate:self queue:syncControllerQueue];

      if ([(TCCDSyncController *)self _initializeSyncEngineAfterDeviceUnlockHook])
      {
        [(TCCDSyncController *)self setHostDeviceUnlocked:1];
        sharedInstance = [(objc_class *)[(TCCDSyncController *)self nrPairedDeviceRegisteryClass] sharedInstance];
        getActivePairedDevice = [sharedInstance getActivePairedDevice];

        if (getActivePairedDevice)
        {
          [(TCCDSyncController *)self _didReturnToPreviouslyPairedDevice:getActivePairedDevice];
        }

        else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_100061728();
        }
      }

      else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000616F4();
      }
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10006175C();
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100061798();
  }
}

- (void)_resetSyncingAndCancelAnyInFlightSessions
{
  [(TCCDSyncController *)self setPendingSyncType:0];
  pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
  [pendingDeltaSyncChanges removeAllObjects];

  sessionSyncChanges = [(TCCDSyncController *)self sessionSyncChanges];
  [sessionSyncChanges removeAllObjects];

  sessionPendingConfirmationSyncChanges = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
  [sessionPendingConfirmationSyncChanges removeAllObjects];

  [(TCCDSyncController *)self _retrySyncReset];
}

- (void)_setSyncingEnabled:(BOOL)enabled
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016018;
  v6[3] = &unk_1000A5590;
  enabledCopy = enabled;
  v6[4] = self;
  sub_100014EEC(syncControllerQueue, self, v6);
}

- (id)_makePostPairingContinuation
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016298;
  v5[3] = &unk_1000A55B8;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)_didReturnToPreviouslyPairedDeviceHookWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  v5 = objc_opt_new();
  (*(continuation + 2))(continuationCopy, v5);
}

- (void)_didPairToNewDeviceHookWithContinuation:(id)continuation
{
  continuationCopy = continuation;
  v5 = objc_opt_new();
  (*(continuation + 2))(continuationCopy, v5);
}

- (void)_didReturnToPreviouslyPairedDevice:(id)device
{
  deviceCopy = device;
  [(TCCDSyncController *)self setPairedDevice:deviceCopy];
  pairedDevice = [(TCCDSyncController *)self pairedDevice];
  v6 = off_1000C0C58();
  v7 = [pairedDevice valueForProperty:v6];
  v8 = [v7 stringByAppendingPathComponent:@"com.apple.tccd"];
  [(TCCDSyncController *)self setPairedDeviceStorageRoot:v8];

  v9 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v10 = off_1000C0C60;
    v11 = v9;
    v12 = v10();
    v13 = [deviceCopy valueForProperty:v12];
    pairedDeviceStorageRoot = [(TCCDSyncController *)self pairedDeviceStorageRoot];
    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = pairedDeviceStorageRoot;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Returning to a previous device: %@: %@", &v16, 0x16u);
  }

  [(TCCDSyncController *)self _loadSavedSyncState];
  _makePostPairingContinuation = [(TCCDSyncController *)self _makePostPairingContinuation];
  [(TCCDSyncController *)self _didReturnToPreviouslyPairedDeviceHookWithContinuation:_makePostPairingContinuation];
}

- (void)_didPairToDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = off_1000C0C60();
    v6 = [deviceCopy valueForProperty:v5];

    pairedDevice = [(TCCDSyncController *)self pairedDevice];

    if (pairedDevice)
    {
      pairedDevice2 = [(TCCDSyncController *)self pairedDevice];
      v9 = off_1000C0C60();
      _makePostPairingContinuation2 = [pairedDevice2 valueForProperty:v9];

      if ([_makePostPairingContinuation2 isEqual:v6])
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_100061910();
        }

        _makePostPairingContinuation = [(TCCDSyncController *)self _makePostPairingContinuation];
        [(TCCDSyncController *)self _didPairToNewDeviceHookWithContinuation:_makePostPairingContinuation];
      }

      else
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000618A0();
        }

        [(TCCDSyncController *)self setPairedDevice:0];
        [(TCCDSyncController *)self setPairedDeviceStorageRoot:0];
      }
    }

    else
    {
      [(TCCDSyncController *)self setPairedDevice:deviceCopy];
      pairedDevice3 = [(TCCDSyncController *)self pairedDevice];
      v13 = off_1000C0C58();
      v14 = [pairedDevice3 valueForProperty:v13];
      v15 = [v14 stringByAppendingPathComponent:@"com.apple.tccd"];
      [(TCCDSyncController *)self setPairedDeviceStorageRoot:v15];

      memset(&v21, 0, sizeof(v21));
      *__error() = 0;
      v16 = [(TCCDSyncController *)self pairedDeviceStorageRoot:*&v21.st_dev];
      LODWORD(v13) = stat([v16 fileSystemRepresentation], &v21);

      if (v13)
      {
        if (*__error() == 2)
        {
          pairedDeviceStorageRoot = [(TCCDSyncController *)self pairedDeviceStorageRoot];
          v18 = mkdir([pairedDeviceStorageRoot fileSystemRepresentation], 0x1EDu);

          v19 = qword_1000C12F8;
          if (v18)
          {
            if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
            {
              sub_100061A00(v19, self);
            }
          }

          else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
          {
            sub_100061ABC(v19);
          }
        }

        else
        {
          v20 = qword_1000C12F8;
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
          {
            sub_100061944(v20, self);
          }
        }
      }

      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_100061B54();
      }

      _makePostPairingContinuation2 = [(TCCDSyncController *)self _makePostPairingContinuation];
      [(TCCDSyncController *)self _didPairToNewDeviceHookWithContinuation:_makePostPairingContinuation2];
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100061BF4();
  }
}

- (void)_didUnPairDevice
{
  v3 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100061C30(v3);
  }

  syncService = [(TCCDSyncController *)self syncService];
  currentSession = [syncService currentSession];

  if (currentSession && os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100061CC8();
  }

  [(TCCDSyncController *)self _didUnPairDeviceHook];
  [(TCCDSyncController *)self setPairedDevice:0];
  [(TCCDSyncController *)self setPairedDeviceStorageRoot:0];
  [(TCCDSyncController *)self _setSyncingEnabled:0];
}

- (void)_acquireTransaction
{
  syncTransaction = [(TCCDSyncController *)self syncTransaction];

  if (!syncTransaction)
  {
    v4 = os_transaction_create();
    [(TCCDSyncController *)self setSyncTransaction:v4];

    v5 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_acquire_transaction...", v6, 2u);
    }
  }
}

- (void)_release_transaction
{
  syncTransaction = [(TCCDSyncController *)self syncTransaction];

  if (syncTransaction)
  {
    [(TCCDSyncController *)self setSyncTransaction:0];
    v4 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_release_transaction...", v5, 2u);
    }
  }
}

- (void)_initiateResetSync
{
  [(TCCDSyncController *)self _resetSyncingAndCancelAnyInFlightSessions];
  [(TCCDSyncController *)self _acquireTransaction];
  [(TCCDSyncController *)self setPendingSyncType:1];
  syncService = [(TCCDSyncController *)self syncService];
  [syncService setNeedsResetSync];

  v4 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting a ResetSync", v5, 2u);
  }
}

- (void)_addDeltaSyncChange:(id)change
{
  changeCopy = change;
  if ([(TCCDSyncController *)self pendingSyncType]== 1)
  {
    v5 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      syncService = v5;
      v7 = [changeCopy description];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, syncService, OS_LOG_TYPE_INFO, "Skipping pending delta sync change (%@) because we have a pending reset sync.", &v10, 0xCu);

LABEL_8:
    }
  }

  else
  {
    [(TCCDSyncController *)self setPendingSyncType:2];
    [(TCCDSyncController *)self _acquireTransaction];
    pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [pendingDeltaSyncChanges addObject:changeCopy];

    v9 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100061D04(v9);
    }

    if (![(TCCDSyncController *)self batchDeltaChanges])
    {
      syncService = [(TCCDSyncController *)self syncService];
      [syncService setHasChangesAvailable];
      goto LABEL_8;
    }
  }
}

- (void)_endDeltaChangeBatching
{
  [(TCCDSyncController *)self setBatchDeltaChanges:0];
  if ([(TCCDSyncController *)self pendingSyncType]== 1)
  {
    v3 = qword_1000C12F8;
    if (!os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v13 = 0;
    v4 = "Ending delta sync batching when we have a pending reset sync.";
    v5 = &v13;
    v6 = v3;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v4, v5, 2u);
    return;
  }

  pendingSyncType = [(TCCDSyncController *)self pendingSyncType];
  v8 = qword_1000C12F8;
  v9 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO);
  if (pendingSyncType != 2)
  {
    if (!v9)
    {
      return;
    }

    v11 = 0;
    v4 = "Ending batching of changes; nothing to do.";
    v5 = &v11;
    v6 = v8;
    goto LABEL_10;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ending batching of delta changes; requesting DeltaSync.", buf, 2u);
  }

  syncService = [(TCCDSyncController *)self syncService];
  [syncService setHasChangesAvailable];
}

- (id)_savedSyncStateFile
{
  pairedDeviceStorageRoot = [(TCCDSyncController *)self pairedDeviceStorageRoot];

  if (pairedDeviceStorageRoot)
  {
    pairedDeviceStorageRoot2 = [(TCCDSyncController *)self pairedDeviceStorageRoot];
    v5 = [pairedDeviceStorageRoot2 stringByAppendingPathComponent:@"PendedSyncState"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_loadSavedSyncState
{
  _savedSyncStateFile = [(TCCDSyncController *)self _savedSyncStateFile];
  if (_savedSyncStateFile)
  {
    v4 = [NSData dataWithContentsOfFile:_savedSyncStateFile];
    if (v4)
    {
      v5 = v4;
      v6 = +[TCCDSyncController allowedClassesForSavedSyncStateUnarchiving];
      v17 = 0;
      v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v5 error:&v17];
      v8 = v17;

      if (!v7)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          sub_100061E7C();
        }

        goto LABEL_21;
      }

      v9 = [v7 objectForKeyedSubscript:@"SyncType"];
      v10 = [v7 objectForKeyedSubscript:@"SyncChanges"];
      if ([v9 isEqualToString:@"Reset"])
      {
        v11 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Unarchived reset sync.";
LABEL_7:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
        }
      }

      else
      {
        if (![v9 isEqualToString:@"Delta"])
        {
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
          {
            sub_100061D9C();
          }

          goto LABEL_20;
        }

        if (!v10)
        {
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
          {
            sub_100061E0C();
          }

          goto LABEL_20;
        }

        if ([v10 count])
        {
          [(TCCDSyncController *)self setPendingSyncType:2];
          pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
          [pendingDeltaSyncChanges addObjectsFromArray:v10];

          v14 = qword_1000C12F8;
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
            v16 = [v10 count];
            *buf = 134218242;
            v19 = v16;
            v20 = 2112;
            v21 = v10;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Unarchived %lu delta changes: %@", buf, 0x16u);
          }

          goto LABEL_20;
        }

        v11 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Unarchived delta sync but there are 0 changes; reset sync instead";
          goto LABEL_7;
        }
      }

      [(TCCDSyncController *)self setPendingSyncType:1];
LABEL_20:
      [(TCCDSyncController *)self _removeSavedSyncState];

LABEL_21:
    }
  }
}

- (BOOL)_writeSyncState
{
  if (![(TCCDSyncController *)self pendingSyncType])
  {
    syncService = [(TCCDSyncController *)self syncService];
    currentSession = [syncService currentSession];

    if (!currentSession)
    {
      return 1;
    }

    syncService2 = [(TCCDSyncController *)self syncService];
    currentSession2 = [syncService2 currentSession];
    isResetSync = [currentSession2 isResetSync];

    if (isResetSync)
    {
      [(TCCDSyncController *)self setPendingSyncType:1];
      sessionPendingConfirmationSyncChanges = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      [sessionPendingConfirmationSyncChanges removeAllObjects];

      sessionSyncChanges = [(TCCDSyncController *)self sessionSyncChanges];
      [sessionSyncChanges removeAllObjects];
    }

    else
    {
      [(TCCDSyncController *)self setPendingSyncType:2];
      pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      sessionSyncChanges = [pendingDeltaSyncChanges copy];

      pendingDeltaSyncChanges2 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      [pendingDeltaSyncChanges2 removeAllObjects];

      pendingDeltaSyncChanges3 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      sessionPendingConfirmationSyncChanges2 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      [pendingDeltaSyncChanges3 addObjectsFromArray:sessionPendingConfirmationSyncChanges2];

      pendingDeltaSyncChanges4 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      sessionSyncChanges2 = [(TCCDSyncController *)self sessionSyncChanges];
      [pendingDeltaSyncChanges4 addObjectsFromArray:sessionSyncChanges2];

      pendingDeltaSyncChanges5 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      [pendingDeltaSyncChanges5 addObjectsFromArray:sessionSyncChanges];

      sessionPendingConfirmationSyncChanges3 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      [sessionPendingConfirmationSyncChanges3 removeAllObjects];

      sessionSyncChanges3 = [(TCCDSyncController *)self sessionSyncChanges];
      [sessionSyncChanges3 removeAllObjects];
    }

    [(TCCDSyncController *)self setSessionShouldCancelWhenActive:1];
  }

  v20 = objc_opt_new();
  if ([(TCCDSyncController *)self pendingSyncType]== 2)
  {
    [v20 setObject:@"Delta" forKeyedSubscript:@"SyncType"];
    pendingDeltaSyncChanges6 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [v20 setObject:pendingDeltaSyncChanges6 forKeyedSubscript:@"SyncChanges"];

    v22 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      pendingDeltaSyncChanges7 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      *buf = 134217984;
      v37 = [pendingDeltaSyncChanges7 count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Adding %lu pending sync changes to archive.", buf, 0xCu);
    }
  }

  else
  {
    [v20 setObject:@"Reset" forKeyedSubscript:@"SyncType"];
    v25 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Adding Reset sync to archive.", buf, 2u);
    }
  }

  v35 = 0;
  v26 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v35];
  v27 = v35;
  if (v26)
  {
    _savedSyncStateFile = [(TCCDSyncController *)self _savedSyncStateFile];
    v29 = qword_1000C12F8;
    v30 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO);
    if (_savedSyncStateFile)
    {
      if (v30)
      {
        *buf = 138543362;
        v37 = _savedSyncStateFile;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Writing sync state to: %{public}@", buf, 0xCu);
      }

      v34 = 0;
      v10 = [v26 writeToFile:_savedSyncStateFile options:1 error:&v34];
      v31 = v34;
      v32 = qword_1000C12F8;
      if (v10)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v37 = _savedSyncStateFile;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Wrote sync state to: %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100061EEC();
      }
    }

    else
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Skipping the writing sync state... no paired-storage file.", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100061F8C();
    }

    v10 = 0;
  }

  return v10;
}

- (void)_removeSavedSyncState
{
  _savedSyncStateFile = [(TCCDSyncController *)self _savedSyncStateFile];
  v3 = +[NSFileManager defaultManager];
  v4 = v3;
  if (_savedSyncStateFile)
  {
    v7 = 0;
    v5 = [v3 removeItemAtPath:_savedSyncStateFile error:&v7];
    v6 = v7;
    if (v5 && os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100061FFC();
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)_writeSyncStateAndAllowTermination
{
  [(TCCDSyncController *)self _writeSyncState];
  [(TCCDSyncController *)self setRetryCount:0];

  [(TCCDSyncController *)self _release_transaction];
}

- (void)_retrySyncCancel
{
  retryBlock = [(TCCDSyncController *)self retryBlock];

  if (retryBlock)
  {
    v4 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100062070(v4);
    }

    retryBlock2 = [(TCCDSyncController *)self retryBlock];
    dispatch_block_cancel(retryBlock2);

    [(TCCDSyncController *)self setRetryBlock:0];
  }
}

- (void)_retrySyncReset
{
  [(TCCDSyncController *)self _retrySyncCancel];
  [(TCCDSyncController *)self setRetryCount:0];
  v3 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = 134217984;
    retryCount = [(TCCDSyncController *)self retryCount];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_retrySyncReset: retryCount: %llu", &v5, 0xCu);
  }
}

- (void)_retrySyncSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy isResetSync])
  {
    v5 = 1;
    [(TCCDSyncController *)self setPendingSyncType:1];
    pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [pendingDeltaSyncChanges removeAllObjects];

    sessionPendingConfirmationSyncChanges = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [sessionPendingConfirmationSyncChanges removeAllObjects];

    sessionSyncChanges = [(TCCDSyncController *)self sessionSyncChanges];
    [sessionSyncChanges removeAllObjects];

    v9 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      identifier = [sessionCopy identifier];
      *buf = 138543362;
      v58 = identifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_retrySyncSession(session: %{public}@): for reset sync.", buf, 0xCu);
    }
  }

  else
  {
    [(TCCDSyncController *)self setPendingSyncType:2];
    pendingDeltaSyncChanges2 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    v13 = [pendingDeltaSyncChanges2 copy];

    pendingDeltaSyncChanges3 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [pendingDeltaSyncChanges3 removeAllObjects];

    v15 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      identifier2 = [sessionCopy identifier];
      sessionPendingConfirmationSyncChanges2 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      v19 = [sessionPendingConfirmationSyncChanges2 count];
      sessionSyncChanges2 = [(TCCDSyncController *)self sessionSyncChanges];
      *buf = 138544130;
      v58 = identifier2;
      v59 = 2048;
      v60 = v19;
      v61 = 2048;
      v62 = [sessionSyncChanges2 count];
      v63 = 2048;
      v64 = [v13 count];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "_retrySyncSession(session: %{public}@): for delta sync: confirmationSyncChanges: %lu, sessionSyncChanges %lu, currentPendingChanges: %lu", buf, 0x2Au);
    }

    pendingDeltaSyncChanges4 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    sessionPendingConfirmationSyncChanges3 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [pendingDeltaSyncChanges4 addObjectsFromArray:sessionPendingConfirmationSyncChanges3];

    pendingDeltaSyncChanges5 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    sessionSyncChanges3 = [(TCCDSyncController *)self sessionSyncChanges];
    [pendingDeltaSyncChanges5 addObjectsFromArray:sessionSyncChanges3];

    pendingDeltaSyncChanges6 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [pendingDeltaSyncChanges6 addObjectsFromArray:v13];

    sessionPendingConfirmationSyncChanges4 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [sessionPendingConfirmationSyncChanges4 removeAllObjects];

    sessionSyncChanges4 = [(TCCDSyncController *)self sessionSyncChanges];
    [sessionSyncChanges4 removeAllObjects];

    v5 = 2;
  }

  retryCount = [(TCCDSyncController *)self retryCount];
  [(TCCDSyncController *)self setRetryCount:[(TCCDSyncController *)self retryCount]+ 1];
  [(TCCDSyncController *)self _retrySyncCancel];
  v49 = _NSConcreteStackBlock;
  v50 = 3221225472;
  v51 = sub_100017F5C;
  v52 = &unk_1000A55E0;
  selfCopy = self;
  v29 = sessionCopy;
  v54 = v29;
  v55 = retryCount;
  v56 = v5;
  v30 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v49);
  [(TCCDSyncController *)self setRetryBlock:v30, v49, v50, v51, v52, selfCopy];

  v31 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v32 = v31;
    retryBlock = [(TCCDSyncController *)self retryBlock];
    v34 = objc_retainBlock(retryBlock);
    identifier3 = [v29 identifier];
    retryCount2 = [(TCCDSyncController *)self retryCount];
    *buf = 134218754;
    v58 = v34;
    v59 = 2114;
    v60 = identifier3;
    v61 = 2048;
    v62 = retryCount;
    v63 = 2048;
    v64 = retryCount2;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "_retrySyncSession(%p) session: %{public}@: current count: %llu, retryCount: %llu", buf, 0x2Au);
  }

  retryBlock2 = [(TCCDSyncController *)self retryBlock];

  if (!retryBlock2)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000621BC();
    }

    selfCopy3 = self;
    v48 = 5;
    goto LABEL_20;
  }

  maxRetryCount = [(TCCDSyncController *)self maxRetryCount];
  v39 = qword_1000C12F8;
  if (retryCount >= maxRetryCount)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10006211C();
    }

    selfCopy3 = self;
    v48 = 6;
LABEL_20:
    [(TCCDSyncController *)selfCopy3 _sendSyncSessionDidFinishWithResult:v48 error:0];
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v40 = v39;
    retryIntervalSecs = [(TCCDSyncController *)self retryIntervalSecs];
    retryBlock3 = [(TCCDSyncController *)self retryBlock];
    v43 = objc_retainBlock(retryBlock3);
    *buf = 134218496;
    v58 = retryIntervalSecs;
    v59 = 2048;
    v60 = retryCount;
    v61 = 2048;
    v62 = v43;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Will retry sync in %llu seconds with retry-block: %llu (%p)", buf, 0x20u);
  }

  v44 = dispatch_time(0, 1000000000 * [(TCCDSyncController *)self retryIntervalSecs]);
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  retryBlock4 = [(TCCDSyncController *)self retryBlock];
  dispatch_after(v44, syncControllerQueue, retryBlock4);

LABEL_21:
}

- (void)_retrySyncType:(unsigned int)type
{
  v3 = *&type;
  [(TCCDSyncController *)self _retrySyncCancel];
  v5 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v9 = 136446210;
    v10 = [(TCCDSyncController *)self _syncTypeToString:v3];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Retry sync for pending state: requesting '%{public}s' sync", &v9, 0xCu);
  }

  if (v3 == 2)
  {
    syncService = [(TCCDSyncController *)self syncService];
    [syncService setHasChangesAvailable];
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [pendingDeltaSyncChanges removeAllObjects];

    syncService = [(TCCDSyncController *)self syncService];
    [syncService setNeedsResetSync];
  }

  [(TCCDSyncController *)self _acquireTransaction];
}

- (void)_sendSyncSessionDidFinishWithResult:(unsigned int)result error:(id)error
{
  errorCopy = error;
  v7 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = sub_100014FFC(result);
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Send-Sync Session did finish: %{public}@, error: %@", &v13, 0x16u);
  }

  if (result <= 5)
  {
    if (result - 1 < 2)
    {
      [(TCCDSyncController *)self _removeSavedSyncState];
      [(TCCDSyncController *)self _retrySyncReset];
      goto LABEL_13;
    }

    if (result == 3)
    {
LABEL_13:
      [(TCCDSyncController *)self _release_transaction];
      goto LABEL_14;
    }

    if (result != 5)
    {
      goto LABEL_14;
    }

LABEL_11:
    [(TCCDSyncController *)self _resetSyncingAndCancelAnyInFlightSessions];
    goto LABEL_13;
  }

  switch(result)
  {
    case 6u:
      [(TCCDSyncController *)self _writeSyncStateAndAllowTermination];
      syncService = [(TCCDSyncController *)self syncService];
      targetIsInProximity = [syncService targetIsInProximity];

      v12 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR);
      if (targetIsInProximity)
      {
        if (v12)
        {
          sub_100062234();
        }
      }

      else if (v12)
      {
        sub_1000621F8();
      }

      break;
    case 7u:
      [(TCCDSyncController *)self _writeSyncStateAndAllowTermination];
      break;
    case 8u:
      goto LABEL_11;
  }

LABEL_14:
}

- (void)syncAccessUpdateForServiceIdentifier:(id)identifier mainClientIdentifier:(id)clientIdentifier replicaClientIdentifier:(id)replicaClientIdentifier clientType:(int)type accessStatus:(unint64_t)status authorizationVersion:(unint64_t)version flags:(int)flags updateType:(unint64_t)self0
{
  v12 = *&type;
  replicaClientIdentifierCopy = replicaClientIdentifier;
  clientIdentifierCopy = clientIdentifier;
  identifierCopy = identifier;
  v19 = [(TCCDSyncClientAccessAction *)[TCCDSyncUpdateAccessAction alloc] initWithServiceIdentifier:identifierCopy mainClientIdentifier:clientIdentifierCopy replicaClientIdentifier:replicaClientIdentifierCopy clientType:v12];

  [(TCCDSyncUpdateAccessAction *)v19 setUpdateAccessActionStatus:status];
  [(TCCDSyncUpdateAccessAction *)v19 setAuthorizationVersion:version];
  [(TCCDSyncUpdateAccessAction *)v19 setDatabaseFlags:flags];
  [(TCCDSyncController *)self syncAccessAction:v19 updateType:updateType];
}

- (void)syncAccessUpdateForServiceIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier clientType:(int)type accessStatus:(unint64_t)status authorizationVersion:(unint64_t)version flags:(int)flags updateType:(unint64_t)updateType
{
  v12 = *&type;
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100062270();
  }

  LODWORD(v17) = flags;
  [(TCCDSyncController *)self syncAccessUpdateForServiceIdentifier:identifierCopy mainClientIdentifier:0 replicaClientIdentifier:clientIdentifierCopy clientType:v12 accessStatus:status authorizationVersion:version flags:v17 updateType:updateType];
}

- (id)stringForSYChangeType:(int64_t)type
{
  if ((type - 1) < 3)
  {
    return *(&off_1000A56E0 + type - 1);
  }

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000622E4();
  }

  return @"<Unknown>";
}

- (unint64_t)updateTypeForSYChangeType:(int64_t)type
{
  if (type == 3)
  {
    return 2;
  }

  else
  {
    return type == 2;
  }
}

- (int64_t)syChangeTypeForUpdateType:(unint64_t)type
{
  v3 = 1;
  if (type == 1)
  {
    v3 = 2;
  }

  if (type == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isSyncingEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000186BC;
  v5[3] = &unk_1000A5608;
  v5[4] = selfCopy;
  v5[5] = &v6;
  sub_100014EEC(syncControllerQueue, selfCopy, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)beginBatchingDeltaChanges
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001875C;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(syncControllerQueue, self, v4);
}

- (void)endBatchingDeltaChanges
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018838;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(syncControllerQueue, self, v4);
}

- (void)willShutdown
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000188CC;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(syncControllerQueue, self, v4);
}

- (void)setSyncSession:(id)session accessDidUpdateHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  syncSessionsQueue = [(TCCDSyncController *)self syncSessionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A1C;
  block[3] = &unk_1000A5630;
  v12 = sessionCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = sessionCopy;
  v10 = handlerCopy;
  dispatch_async(syncSessionsQueue, block);
}

- (void)removeAccessDidUpdateHandlerForSession:(id)session
{
  sessionCopy = session;
  syncSessionsQueue = [(TCCDSyncController *)self syncSessionsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018B30;
  v7[3] = &unk_1000A50C0;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(syncSessionsQueue, v7);
}

- (void)syncAccessAction:(id)action updateType:(unint64_t)type
{
  actionCopy = action;
  if (actionCopy)
  {
    syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018BF8;
    block[3] = &unk_1000A5658;
    v9 = actionCopy;
    selfCopy = self;
    typeCopy = type;
    dispatch_async(syncControllerQueue, block);
  }
}

- (void)handleMemoryPressureCritical
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018CD0;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(syncControllerQueue, self, v4);
}

- (id)_syncSessionHandlerForUpdateAccessAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(NSMutableArray);
  syncSessionsQueue = [(TCCDSyncController *)self syncSessionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001909C;
  block[3] = &unk_1000A5098;
  block[4] = self;
  v12 = actionCopy;
  v13 = v5;
  v7 = v5;
  v8 = actionCopy;
  dispatch_sync(syncSessionsQueue, block);

  v9 = [v7 copy];

  return v9;
}

- (void)_notifySyncSessionHandlers:(id)handlers forUpdateAccessAction:(id)action
{
  handlersCopy = handlers;
  actionCopy = action;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [handlersCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(handlersCopy);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v18 = "[TCCDSyncController _notifySyncSessionHandlers:forUpdateAccessAction:]";
          v19 = 2112;
          v20 = actionCopy;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s: Running handler for session matching: %@", buf, 0x16u);
        }

        (*(v11 + 16))(v11, actionCopy);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [handlersCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_updateDatabase:(unint64_t)database forUpdateAccessAction:(id)action
{
  actionCopy = action;
  v7 = [(TCCDSyncController *)self _syncSessionHandlerForUpdateAccessAction:actionCopy];
  v8 = [v7 count];
  v9 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    if (v8)
    {
      v10 = "No";
    }

    else
    {
      v10 = "Yes";
    }

    v11 = v9;
    v12 = 136315906;
    v13 = "[TCCDSyncController _updateDatabase:forUpdateAccessAction:]";
    v14 = 2112;
    v15 = actionCopy;
    v16 = 2080;
    v17 = v10;
    v18 = 2048;
    v19 = [v7 count];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: %@, killClient: %s, handler count: %ld", &v12, 0x2Au);
  }

  [actionCopy updateDatabase:database killClient:v8 == 0];
  if ([v7 count])
  {
    [(TCCDSyncController *)self _notifySyncSessionHandlers:v7 forUpdateAccessAction:actionCopy];
  }
}

- (void)_handleSyncObject:(id)object updateType:(unint64_t)type
{
  objectCopy = object;
  v7 = sub_10001C558(type);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000625E8();
      }

      [(TCCDSyncController *)self _updateDatabase:type forUpdateAccessAction:v8];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objectCopy;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_100062574();
        }

        [v9 updateDatabase:type killClient:1];
      }

      else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_1000624B4();
      }
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_1000623F4();
  }
}

- (id)_beginResetSyncHook
{
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_10006265C();
  }

  v2 = +[NSArray array];

  return v2;
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  serviceCopy = service;
  sessionCopy = session;
  v10 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    if ([(TCCDSyncController *)self isMain])
    {
      v12 = "Main";
    }

    else
    {
      v12 = "Replica";
    }

    identifier = [sessionCopy identifier];
    if ([sessionCopy isResetSync])
    {
      v14 = "ResetSync";
    }

    else
    {
      v14 = "DeltaSync";
    }

    isSending = [sessionCopy isSending];
    v16 = "Receiving";
    *buf = 136446978;
    v49 = v12;
    v50 = 2114;
    if (isSending)
    {
      v16 = "Sending";
    }

    v51 = identifier;
    v52 = 2082;
    v53 = v14;
    v54 = 2082;
    v55 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SYService %{public}s starting SYSession:%{public}@, type: %{public}s, direction: %{public}s", buf, 0x2Au);
  }

  if (!self->_isSyncingEnabled)
  {
    pendingSyncType = [(TCCDSyncController *)self pendingSyncType];
    v18 = qword_1000C12F8;
    if (!pendingSyncType)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v18;
        identifier2 = [sessionCopy identifier];
        *buf = 138543362;
        v49 = identifier2;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Rejecting new SYSession:%{public}@ when syncing is not enabled.", buf, 0xCu);
      }

      v39 = 0;
      goto LABEL_53;
    }

    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000629FC(v18);
    }

    v19 = [NSError alloc];
    v20 = 1;
LABEL_52:
    v39 = [v19 initWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:v20 userInfo:0];
LABEL_53:
    v23 = 0;
    *error = v39;
    goto LABEL_54;
  }

  if ([sessionCopy isSending])
  {
    [(TCCDSyncController *)self setSessionShouldCancelWhenActive:0];
LABEL_23:
    [sessionCopy setDelegate:self];
    [sessionCopy setSerializer:self];
    syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
    [sessionCopy setTargetQueue:syncControllerQueue];

    [sessionCopy setPerMessageTimeout:{-[TCCDSyncController sessionPerMessageTimeoutSecs](self, "sessionPerMessageTimeoutSecs")}];
    if (![sessionCopy isSending])
    {
      [(TCCDSyncController *)self _acquireTransaction];
LABEL_48:
      v23 = 1;
      goto LABEL_54;
    }

    sessionSyncChanges = [(TCCDSyncController *)self sessionSyncChanges];
    v26 = [sessionSyncChanges count];

    if (v26)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100062760();
      }

      sessionSyncChanges2 = [(TCCDSyncController *)self sessionSyncChanges];
      [sessionSyncChanges2 removeAllObjects];
    }

    if (![sessionCopy isResetSync])
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_100062818();
      }

      sessionSyncChanges3 = [(TCCDSyncController *)self sessionSyncChanges];
      pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      sessionSyncChanges4 = sessionSyncChanges3;
      v36 = pendingDeltaSyncChanges;
      goto LABEL_47;
    }

    if ([(TCCDSyncController *)self isMain])
    {
      _beginResetSyncHook = [(TCCDSyncController *)self _beginResetSyncHook];
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006295C();
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      sessionSyncChanges3 = _beginResetSyncHook;
      v30 = [sessionSyncChanges3 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v44;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v44 != v32)
            {
              objc_enumerationMutation(sessionSyncChanges3);
            }

            [*(*(&v43 + 1) + 8 * i) setSyncChangeType:{1, v43}];
          }

          v31 = [sessionSyncChanges3 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v31);
      }

      sessionSyncChanges4 = [(TCCDSyncController *)self sessionSyncChanges];
      pendingDeltaSyncChanges = sessionSyncChanges4;
      v36 = sessionSyncChanges3;
LABEL_47:
      [sessionSyncChanges4 addObjectsFromArray:{v36, v43}];

      pendingDeltaSyncChanges2 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      [pendingDeltaSyncChanges2 removeAllObjects];

      [(TCCDSyncController *)self setPendingSyncType:0];
      goto LABEL_48;
    }

    v41 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000628C4(v41);
    }

    v19 = [NSError alloc];
    v20 = 4;
    goto LABEL_52;
  }

  if (![sessionCopy isResetSync])
  {
    goto LABEL_23;
  }

  retryBlock = [(TCCDSyncController *)self retryBlock];

  if (!retryBlock)
  {
    goto LABEL_23;
  }

  v22 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100062698(v22, sessionCopy);
  }

  *error = [[NSError alloc] initWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:5 userInfo:0];
  [(TCCDSyncController *)self _retrySyncType:[(TCCDSyncController *)self pendingSyncType]];
  v23 = 0;
LABEL_54:

  return v23;
}

- (void)service:(id)service sessionEnded:(id)ended error:(id)error
{
  endedCopy = ended;
  errorCopy = error;
  if ([endedCopy state] == 5)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"com.apple.identityservices.error"] && objc_msgSend(errorCopy, "code") == 23 || objc_msgSend(domain, "isEqualToString:", @"SYErrorDomain") && objc_msgSend(errorCopy, "code") == 2007)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100062F04();
      }
    }

    else if ([domain isEqualToString:@"SYErrorDomain"] && objc_msgSend(errorCopy, "code") == 2023)
    {
      v13 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100062E6C(v13);
      }
    }

    else if ([domain isEqualToString:@"com.apple.tccd.TCCDSyncControllerErrorDomain"] && objc_msgSend(errorCopy, "code") == 5)
    {
      v17 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100062DD4(v17);
      }
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_FAULT))
    {
      sub_100062D14();
    }

    if ([endedCopy isSending])
    {
      [(TCCDSyncController *)self _retrySyncSession:endedCopy];
    }

LABEL_33:

    goto LABEL_34;
  }

  if ([endedCopy state] == 3)
  {
    sessionShouldCancelWhenActive = [(TCCDSyncController *)self sessionShouldCancelWhenActive];
    v11 = qword_1000C12F8;
    v12 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG);
    if (sessionShouldCancelWhenActive)
    {
      if (v12)
      {
        sub_100062C7C(v11);
      }

      [(TCCDSyncController *)self setSessionShouldCancelWhenActive:0];
    }

    else
    {
      if (v12)
      {
        sub_100062BE4(v11);
      }

      [(TCCDSyncController *)self _sendSyncSessionDidFinishWithResult:3 error:0];
      if ([endedCopy isSending])
      {
        [(TCCDSyncController *)self _retrySyncSession:endedCopy];
      }
    }
  }

  else
  {
    state = [endedCopy state];
    v15 = qword_1000C12F8;
    if (state == 9)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_100062B4C(v15);
      }

      if (![endedCopy isSending])
      {
        [(TCCDSyncController *)self _release_transaction];
        retryBlock = [(TCCDSyncController *)self retryBlock];

        if (!retryBlock)
        {
          goto LABEL_34;
        }

        v20 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "After receive-session completed: retrying pending state.", buf, 2u);
        }

        domain = [(TCCDSyncController *)self retryBlock];
        domain[2]();
        goto LABEL_33;
      }

      if ([endedCopy isResetSync])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      [(TCCDSyncController *)self _sendSyncSessionDidFinishWithResult:v16 error:0];
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100062A94(v15);
    }
  }

LABEL_34:
  v18 = endedCopy;
  AnalyticsSendEventLazy();
}

- (void)service:(id)service encounteredError:(id)error context:(id)context
{
  v6 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100062FD8(v6, context);
  }
}

- (void)service:(id)service willSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000630A4();
    if (!dCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (dCopy)
  {
LABEL_3:
    [(TCCDSyncController *)self _didUnPairDevice];
  }

LABEL_4:
}

- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006314C();
    if (!iDCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (iDCopy)
  {
LABEL_3:
    sharedInstance = [(objc_class *)[(TCCDSyncController *)self nrPairedDeviceRegisteryClass] sharedInstance];
    v12 = [sharedInstance deviceForPairingID:iDCopy];
    [(TCCDSyncController *)self _didPairToDevice:v12];
  }

LABEL_4:
}

- (void)service:(id)service targetDeviceProximityChanged:(BOOL)changed
{
  changedCopy = changed;
  serviceCopy = service;
  if (changedCopy)
  {
    if ([(TCCDSyncController *)self pendingSyncType])
    {
      [(TCCDSyncController *)self _acquireTransaction];
      v7 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Paired device is now in proximity: requesting sync of pending state.", v8, 2u);
      }

      [(TCCDSyncController *)self _retrySyncType:[(TCCDSyncController *)self pendingSyncType]];
      [(TCCDSyncController *)self setRetryCount:0];
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100063228();
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000631F4();
  }
}

- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession
{
  serviceCopy = service;
  sessionCopy = session;
  overSessionCopy = overSession;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006325C();
  }

  if (![overSessionCopy isSending])
  {
    goto LABEL_7;
  }

  syncService = [(TCCDSyncController *)self syncService];
  currentSession = [syncService currentSession];
  v13 = currentSession;
  if (currentSession != overSessionCopy)
  {

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  isSending = [sessionCopy isSending];

  if (isSending)
  {
    goto LABEL_7;
  }

  syncService2 = [(TCCDSyncController *)self syncService];
  currentSession2 = [syncService2 currentSession];
  [(TCCDSyncController *)self _retrySyncSession:currentSession2];

  v15 = sessionCopy;
LABEL_8:

  return v15;
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  sessionCopy = session;
  changesCopy = changes;
  if ([(TCCDSyncController *)self sessionShouldCancelWhenActive])
  {
    v10 = qword_1000C12F8;
    if (!os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v14 = 3;
      goto LABEL_25;
    }

    v11 = v10;
    identifier = [sessionCopy identifier];
    *buf = 138543362;
    v34 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cancelling an active SYSession:%{public}@ in enqueueChanges", buf, 0xCu);

LABEL_8:
    goto LABEL_9;
  }

  if ([(TCCDSyncController *)self retryTestMaxRetry])
  {
    [(TCCDSyncController *)self setRetryTestMaxRetry:0];
    [(TCCDSyncController *)self setRetryCount:[(TCCDSyncController *)self maxRetryCount]];
    v13 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10006344C(v13);
    }

    v31 = NSLocalizedDescriptionKey;
    v32 = @"Testing maxRetry handling.";
    v11 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    *error = [[NSError alloc] initWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:6 userInfo:v11];
    goto LABEL_8;
  }

  sessionSyncChanges = [(TCCDSyncController *)self sessionSyncChanges];
  v16 = [sessionSyncChanges copy];

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100063304();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * i);
        if ((changesCopy[2](changesCopy, v22) & 1) == 0)
        {
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
          {
            sub_1000633A0();
          }

          v14 = 1;
          goto LABEL_24;
        }

        sessionSyncChanges2 = [(TCCDSyncController *)self sessionSyncChanges];
        [sessionSyncChanges2 removeObjectAtIndex:0];

        sessionPendingConfirmationSyncChanges = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
        [sessionPendingConfirmationSyncChanges addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v14 = 2;
LABEL_24:

LABEL_25:
  return v14;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  sessionCopy = session;
  changesCopy = changes;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000634E4();
  }

  v33 = sessionCopy;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = changesCopy;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_28;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v35;
  do
  {
    v15 = 0;
    do
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      changeType = [v16 changeType];
      v18 = [(TCCDSyncController *)self updateTypeForSYChangeType:changeType];
      v19 = [(TCCDSyncController *)self stringForSYChangeType:changeType];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          v25 = v22;
          v30 = objc_opt_class();
          v27 = NSStringFromClass(v30);
          *buf = 138543618;
          v39 = v19;
          v40 = 2114;
          v41 = v27;
          v28 = v25;
          v29 = "applying change: %{public}@: Unexpected object of class: %{public}@";
LABEL_24:
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
        }

LABEL_14:
        v20 = v13;
        v13 = [[NSError alloc] initWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:2 userInfo:0];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v16;
        v21 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v39 = v19;
          v40 = 2112;
          v41 = v20;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "applying change: update access: %@ -> %@", buf, 0x16u);
        }

        [(TCCDSyncController *)self _updateDatabase:v18 forUpdateAccessAction:v20];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = qword_1000C12F8;
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
          {
            v25 = v24;
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            *buf = 138543618;
            v39 = v19;
            v40 = 2114;
            v41 = v27;
            v28 = v25;
            v29 = "applying change: %{public}@: Unexpected subclass: %{public}@";
            goto LABEL_24;
          }

          goto LABEL_14;
        }

        v20 = v16;
        v23 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v39 = v19;
          v40 = 2112;
          v41 = v20;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "applying change: override access: %@ -> %@", buf, 0x16u);
        }

        [v20 updateDatabase:v18 killClient:1];
      }

LABEL_15:

      v15 = v15 + 1;
    }

    while (v12 != v15);
    v31 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
    v12 = v31;
  }

  while (v31);
LABEL_28:

  completionCopy[2](completionCopy, v13 == 0, v13);
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = qword_1000C12F8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100063580(sessionCopy, errorCopy);
  }

  if (!errorCopy)
  {
    sessionPendingConfirmationSyncChanges = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [sessionPendingConfirmationSyncChanges removeAllObjects];
  }
}

- (void)syncSession:(id)session successfullySynced:(id)synced
{
  v6 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    syncedCopy = synced;
    identifier = [session identifier];
    v10 = [syncedCopy count];

    v11 = 138543618;
    v12 = identifier;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SYSession:%{public}@; successfullySynced: %lu changes", &v11, 0x16u);
  }
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  sessionCopy = session;
  isMain = [(TCCDSyncController *)self isMain];
  v8 = qword_1000C12F8;
  if (isMain)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000636E4(v8);
    }

    v9 = [[NSError alloc] initWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:3 userInfo:0];
  }

  else
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006364C(v8);
    }

    sub_10001E97C();
    v9 = 0;
  }

  *error = v9;

  return isMain ^ 1;
}

- (id)dataFromChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:changeCopy requiringSecureCoding:1 error:&v8];
    v5 = v8;
    if (!v4 && os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100063818();
    }
  }

  else
  {
    v6 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10006377C(v6);
    }

    v4 = 0;
  }

  return v4;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  dataCopy = data;
  v6 = +[TCCDSyncController allowedClassesForSYChangeUnarchiving];
  v11 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:dataCopy error:&v11];

  v8 = v11;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v7 setSyncChangeType:type];
      goto LABEL_11;
    }

    v9 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100063888(v9);
    }
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100063924();
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (const)_syncTypeToString:(unsigned int)string
{
  if (string > 2)
  {
    return "<Unknown TCCDSyncType>";
  }

  else
  {
    return off_1000A56F8[string];
  }
}

- (id)_syncStatusDescriptionString
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Sync Status:\n"];
  currentSession2 = "No";
  if ([(TCCDSyncController *)self isSyncingEnabled])
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  [v3 appendFormat:@"  syncing enabled: %s\n", v5];
  pairedDeviceStorageRoot = [(TCCDSyncController *)self pairedDeviceStorageRoot];
  v7 = pairedDeviceStorageRoot;
  v8 = @"<not paired>";
  if (pairedDeviceStorageRoot)
  {
    v8 = pairedDeviceStorageRoot;
  }

  [v3 appendFormat:@"  paired storage root %@\n", v8];

  syncService = [(TCCDSyncController *)self syncService];
  targetIsInProximity = [syncService targetIsInProximity];
  v11 = @"Not";
  if (targetIsInProximity)
  {
    v11 = @"In";
  }

  [v3 appendFormat:@"  proximity: %@\n", v11];

  v12 = [(TCCDSyncController *)self _syncTypeToString:[(TCCDSyncController *)self pendingSyncType]];
  pendingDeltaSyncChanges = [(TCCDSyncController *)self pendingDeltaSyncChanges];
  v14 = [pendingDeltaSyncChanges count];
  if ([(TCCDSyncController *)self batchDeltaChanges])
  {
    v15 = "Yes";
  }

  else
  {
    v15 = "No";
  }

  [v3 appendFormat:@"  pendingSync -- type: %s, number of pendingDeltaSyncChanges: %lu, batching: %s\n", v12, v14, v15];

  syncService2 = [(TCCDSyncController *)self syncService];
  currentSession = [syncService2 currentSession];
  if (currentSession)
  {
    syncService3 = [(TCCDSyncController *)self syncService];
    currentSession2 = [syncService3 currentSession];
    identifier = [currentSession2 identifier];
  }

  else
  {
    identifier = @"<None>";
  }

  sessionSyncChanges = [(TCCDSyncController *)self sessionSyncChanges];
  v20 = [sessionSyncChanges count];
  sessionPendingConfirmationSyncChanges = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
  [v3 appendFormat:@"  session -- currentSession: %@, sessionSyncChanges.count: %lu, sessionPendingConfirmationSyncChanges.count:  %lu, per-message timeout %llu secs.\n", identifier, v20, objc_msgSend(sessionPendingConfirmationSyncChanges, "count"), -[TCCDSyncController sessionPerMessageTimeoutSecs](self, "sessionPerMessageTimeoutSecs")];

  if (currentSession)
  {
  }

  sessionShouldCancelWhenActive = [(TCCDSyncController *)self sessionShouldCancelWhenActive];
  v23 = "No";
  if (sessionShouldCancelWhenActive)
  {
    v23 = "Yes";
  }

  [v3 appendFormat:@"  session -- ShouldCancelWhenActive: %s\n", v23];
  retryCount = [(TCCDSyncController *)self retryCount];
  maxRetryCount = [(TCCDSyncController *)self maxRetryCount];
  retryIntervalSecs = [(TCCDSyncController *)self retryIntervalSecs];
  retryBlock = [(TCCDSyncController *)self retryBlock];
  v28 = objc_retainBlock(retryBlock);
  [v3 appendFormat:@"  retry -- current count: %llu, max count: %llu, interval: %llu secs, retryBlock: %p\n", retryCount, maxRetryCount, retryIntervalSecs, v28];

  syncTransaction = [(TCCDSyncController *)self syncTransaction];
  v30 = "Acquired";
  if (!syncTransaction)
  {
    v30 = "None";
  }

  [v3 appendFormat:@"  transaction -- %s\n", v30];

  v31 = [v3 copy];

  return v31;
}

- (void)testSyncStatus
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B808;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014F74(syncControllerQueue, self, v4);
}

- (void)testSyncSet:(id)set
{
  setCopy = set;
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B9AC;
  v7[3] = &unk_1000A50C0;
  v8 = setCopy;
  selfCopy = self;
  v6 = setCopy;
  sub_100014EEC(syncControllerQueue, self, v7);
}

- (void)testMemoryPressureCritical
{
  syncControllerQueue = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BDE0;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014F74(syncControllerQueue, self, v4);
}

- (BOOL)peerSupportsService:(id)service authVersion:(unint64_t)version
{
  v6 = [service isEqualToString:@"kTCCServiceCalendar"];
  if (version != 2 || !v6)
  {
    return 1;
  }

  pairedDevice = [(TCCDSyncController *)self pairedDevice];
  v8 = [[NSUUID alloc] initWithUUIDString:@"E7B1CD81-445C-4840-9F24-3A32B510B6A1"];
  v9 = [pairedDevice supportsCapability:v8];

  return v9;
}

- (BOOL)peerSupportsIndependentAuthforService:(id)service
{
  v4 = [service isEqualToString:@"kTCCServiceBluetoothAlways"];
  if (v4)
  {
    pairedDevice = [(TCCDSyncController *)self pairedDevice];
    v6 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
    v7 = [pairedDevice supportsCapability:v6];

    LOBYTE(v4) = v7;
  }

  return v4;
}

@end