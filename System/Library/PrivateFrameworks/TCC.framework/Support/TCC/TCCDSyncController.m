@interface TCCDSyncController
+ (id)allowedClassesForSYChangeUnarchiving;
+ (id)allowedClassesForSavedSyncStateUnarchiving;
+ (id)sharedSyncController;
- (BOOL)_writeSyncState;
- (BOOL)isSyncingEnabled;
- (BOOL)peerSupportsIndependentAuthforService:(id)a3;
- (BOOL)peerSupportsService:(id)a3 authVersion:(unint64_t)a4;
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (TCCDSyncController)init;
- (TCCDSyncController)initWithAsyncSyncEngineInitialization;
- (const)_syncTypeToString:(unsigned int)a3;
- (id)_beginResetSyncHook;
- (id)_makePostPairingContinuation;
- (id)_os_state_titleWithPrefix:(id)a3 withHints:(os_state_hints_s *)a4;
- (id)_savedSyncStateFile;
- (id)_syncSessionHandlerForUpdateAccessAction:(id)a3;
- (id)_syncStatusDescriptionString;
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5;
- (id)stringForSYChangeType:(int64_t)a3;
- (int64_t)syChangeTypeForUpdateType:(unint64_t)a3;
- (unint64_t)updateTypeForSYChangeType:(int64_t)a3;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)_acquireTransaction;
- (void)_addDeltaSyncChange:(id)a3;
- (void)_beginAsyncSyncEngineInitialization;
- (void)_didPairToDevice:(id)a3;
- (void)_didPairToNewDeviceHookWithContinuation:(id)a3;
- (void)_didReturnToPreviouslyPairedDevice:(id)a3;
- (void)_didReturnToPreviouslyPairedDeviceHookWithContinuation:(id)a3;
- (void)_didUnPairDevice;
- (void)_endDeltaChangeBatching;
- (void)_handleSyncObject:(id)a3 updateType:(unint64_t)a4;
- (void)_initializeSyncEngine;
- (void)_initializeSyncEngineAfterDeviceUnlock;
- (void)_initiateResetSync;
- (void)_loadSavedSyncState;
- (void)_notifySyncSessionHandlers:(id)a3 forUpdateAccessAction:(id)a4;
- (void)_release_transaction;
- (void)_removeSavedSyncState;
- (void)_resetSyncingAndCancelAnyInFlightSessions;
- (void)_retrySyncCancel;
- (void)_retrySyncReset;
- (void)_retrySyncSession:(id)a3;
- (void)_retrySyncType:(unsigned int)a3;
- (void)_sendSyncSessionDidFinishWithResult:(unsigned int)a3 error:(id)a4;
- (void)_setSyncingEnabled:(BOOL)a3;
- (void)_setupOSStateHandler;
- (void)_updateDatabase:(unint64_t)a3 forUpdateAccessAction:(id)a4;
- (void)_writeSyncStateAndAllowTermination;
- (void)beginBatchingDeltaChanges;
- (void)endBatchingDeltaChanges;
- (void)handleMemoryPressureCritical;
- (void)removeAccessDidUpdateHandlerForSession:(id)a3;
- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
- (void)service:(id)a3 targetDeviceProximityChanged:(BOOL)a4;
- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)setSyncSession:(id)a3 accessDidUpdateHandler:(id)a4;
- (void)syncAccessAction:(id)a3 updateType:(unint64_t)a4;
- (void)syncAccessUpdateForServiceIdentifier:(id)a3 clientIdentifier:(id)a4 clientType:(int)a5 accessStatus:(unint64_t)a6 authorizationVersion:(unint64_t)a7 flags:(int)a8 updateType:(unint64_t)a9;
- (void)syncAccessUpdateForServiceIdentifier:(id)a3 mainClientIdentifier:(id)a4 replicaClientIdentifier:(id)a5 clientType:(int)a6 accessStatus:(unint64_t)a7 authorizationVersion:(unint64_t)a8 flags:(int)a9 updateType:(unint64_t)a10;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
- (void)syncSession:(id)a3 successfullySynced:(id)a4;
- (void)testMemoryPressureCritical;
- (void)testSyncSet:(id)a3;
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
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015470;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_async(v3, block);
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

- (id)_os_state_titleWithPrefix:(id)a3 withHints:(os_state_hints_s *)a4
{
  var2 = a4->var2;
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

  return [NSString stringWithFormat:@"%@ (why: %@)", a3, v6];
}

- (void)_setupOSStateHandler
{
  objc_initWeak(&location, self);
  v3 = [(TCCDSyncController *)self syncControllerQueue];
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
      v16 = [v15 server];
      v17 = [v16 stateDirectory];
      v18 = [v17 stringByAppendingPathComponent:@"tccd_sync_config.plist"];

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

        v32 = [(TCCDSyncController *)self syncControllerQueue];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100015C90;
        handler[3] = &unk_1000A5568;
        handler[4] = self;
        notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v32, handler);

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

    v7 = [(TCCDSyncController *)self syncService];

    if (v7)
    {
      syncService = self->_syncService;
      v9 = [(TCCDSyncController *)self syncControllerQueue];
      [(SYService *)syncService setDelegate:self queue:v9];

      if ([(TCCDSyncController *)self _initializeSyncEngineAfterDeviceUnlockHook])
      {
        [(TCCDSyncController *)self setHostDeviceUnlocked:1];
        v10 = [(objc_class *)[(TCCDSyncController *)self nrPairedDeviceRegisteryClass] sharedInstance];
        v11 = [v10 getActivePairedDevice];

        if (v11)
        {
          [(TCCDSyncController *)self _didReturnToPreviouslyPairedDevice:v11];
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
  v3 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
  [v3 removeAllObjects];

  v4 = [(TCCDSyncController *)self sessionSyncChanges];
  [v4 removeAllObjects];

  v5 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
  [v5 removeAllObjects];

  [(TCCDSyncController *)self _retrySyncReset];
}

- (void)_setSyncingEnabled:(BOOL)a3
{
  v5 = [(TCCDSyncController *)self syncControllerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016018;
  v6[3] = &unk_1000A5590;
  v7 = a3;
  v6[4] = self;
  sub_100014EEC(v5, self, v6);
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

- (void)_didReturnToPreviouslyPairedDeviceHookWithContinuation:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  (*(a3 + 2))(v4, v5);
}

- (void)_didPairToNewDeviceHookWithContinuation:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  (*(a3 + 2))(v4, v5);
}

- (void)_didReturnToPreviouslyPairedDevice:(id)a3
{
  v4 = a3;
  [(TCCDSyncController *)self setPairedDevice:v4];
  v5 = [(TCCDSyncController *)self pairedDevice];
  v6 = off_1000C0C58();
  v7 = [v5 valueForProperty:v6];
  v8 = [v7 stringByAppendingPathComponent:@"com.apple.tccd"];
  [(TCCDSyncController *)self setPairedDeviceStorageRoot:v8];

  v9 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v10 = off_1000C0C60;
    v11 = v9;
    v12 = v10();
    v13 = [v4 valueForProperty:v12];
    v14 = [(TCCDSyncController *)self pairedDeviceStorageRoot];
    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Returning to a previous device: %@: %@", &v16, 0x16u);
  }

  [(TCCDSyncController *)self _loadSavedSyncState];
  v15 = [(TCCDSyncController *)self _makePostPairingContinuation];
  [(TCCDSyncController *)self _didReturnToPreviouslyPairedDeviceHookWithContinuation:v15];
}

- (void)_didPairToDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = off_1000C0C60();
    v6 = [v4 valueForProperty:v5];

    v7 = [(TCCDSyncController *)self pairedDevice];

    if (v7)
    {
      v8 = [(TCCDSyncController *)self pairedDevice];
      v9 = off_1000C0C60();
      v10 = [v8 valueForProperty:v9];

      if ([v10 isEqual:v6])
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_100061910();
        }

        v11 = [(TCCDSyncController *)self _makePostPairingContinuation];
        [(TCCDSyncController *)self _didPairToNewDeviceHookWithContinuation:v11];
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
      [(TCCDSyncController *)self setPairedDevice:v4];
      v12 = [(TCCDSyncController *)self pairedDevice];
      v13 = off_1000C0C58();
      v14 = [v12 valueForProperty:v13];
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
          v17 = [(TCCDSyncController *)self pairedDeviceStorageRoot];
          v18 = mkdir([v17 fileSystemRepresentation], 0x1EDu);

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

      v10 = [(TCCDSyncController *)self _makePostPairingContinuation];
      [(TCCDSyncController *)self _didPairToNewDeviceHookWithContinuation:v10];
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

  v4 = [(TCCDSyncController *)self syncService];
  v5 = [v4 currentSession];

  if (v5 && os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
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
  v3 = [(TCCDSyncController *)self syncTransaction];

  if (!v3)
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
  v3 = [(TCCDSyncController *)self syncTransaction];

  if (v3)
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
  v3 = [(TCCDSyncController *)self syncService];
  [v3 setNeedsResetSync];

  v4 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting a ResetSync", v5, 2u);
  }
}

- (void)_addDeltaSyncChange:(id)a3
{
  v4 = a3;
  if ([(TCCDSyncController *)self pendingSyncType]== 1)
  {
    v5 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v4 description];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Skipping pending delta sync change (%@) because we have a pending reset sync.", &v10, 0xCu);

LABEL_8:
    }
  }

  else
  {
    [(TCCDSyncController *)self setPendingSyncType:2];
    [(TCCDSyncController *)self _acquireTransaction];
    v8 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [v8 addObject:v4];

    v9 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100061D04(v9);
    }

    if (![(TCCDSyncController *)self batchDeltaChanges])
    {
      v6 = [(TCCDSyncController *)self syncService];
      [v6 setHasChangesAvailable];
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

  v7 = [(TCCDSyncController *)self pendingSyncType];
  v8 = qword_1000C12F8;
  v9 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO);
  if (v7 != 2)
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

  v10 = [(TCCDSyncController *)self syncService];
  [v10 setHasChangesAvailable];
}

- (id)_savedSyncStateFile
{
  v3 = [(TCCDSyncController *)self pairedDeviceStorageRoot];

  if (v3)
  {
    v4 = [(TCCDSyncController *)self pairedDeviceStorageRoot];
    v5 = [v4 stringByAppendingPathComponent:@"PendedSyncState"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_loadSavedSyncState
{
  v3 = [(TCCDSyncController *)self _savedSyncStateFile];
  if (v3)
  {
    v4 = [NSData dataWithContentsOfFile:v3];
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
          v13 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
          [v13 addObjectsFromArray:v10];

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
    v3 = [(TCCDSyncController *)self syncService];
    v4 = [v3 currentSession];

    if (!v4)
    {
      return 1;
    }

    v5 = [(TCCDSyncController *)self syncService];
    v6 = [v5 currentSession];
    v7 = [v6 isResetSync];

    if (v7)
    {
      [(TCCDSyncController *)self setPendingSyncType:1];
      v8 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      [v8 removeAllObjects];

      v9 = [(TCCDSyncController *)self sessionSyncChanges];
      [v9 removeAllObjects];
    }

    else
    {
      [(TCCDSyncController *)self setPendingSyncType:2];
      v11 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      v9 = [v11 copy];

      v12 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      [v12 removeAllObjects];

      v13 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      v14 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      [v13 addObjectsFromArray:v14];

      v15 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      v16 = [(TCCDSyncController *)self sessionSyncChanges];
      [v15 addObjectsFromArray:v16];

      v17 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      [v17 addObjectsFromArray:v9];

      v18 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      [v18 removeAllObjects];

      v19 = [(TCCDSyncController *)self sessionSyncChanges];
      [v19 removeAllObjects];
    }

    [(TCCDSyncController *)self setSessionShouldCancelWhenActive:1];
  }

  v20 = objc_opt_new();
  if ([(TCCDSyncController *)self pendingSyncType]== 2)
  {
    [v20 setObject:@"Delta" forKeyedSubscript:@"SyncType"];
    v21 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [v20 setObject:v21 forKeyedSubscript:@"SyncChanges"];

    v22 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      v24 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      *buf = 134217984;
      v37 = [v24 count];
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
    v28 = [(TCCDSyncController *)self _savedSyncStateFile];
    v29 = qword_1000C12F8;
    v30 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (v30)
      {
        *buf = 138543362;
        v37 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Writing sync state to: %{public}@", buf, 0xCu);
      }

      v34 = 0;
      v10 = [v26 writeToFile:v28 options:1 error:&v34];
      v31 = v34;
      v32 = qword_1000C12F8;
      if (v10)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v37 = v28;
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
  v2 = [(TCCDSyncController *)self _savedSyncStateFile];
  v3 = +[NSFileManager defaultManager];
  v4 = v3;
  if (v2)
  {
    v7 = 0;
    v5 = [v3 removeItemAtPath:v2 error:&v7];
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
  v3 = [(TCCDSyncController *)self retryBlock];

  if (v3)
  {
    v4 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100062070(v4);
    }

    v5 = [(TCCDSyncController *)self retryBlock];
    dispatch_block_cancel(v5);

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
    v6 = [(TCCDSyncController *)self retryCount];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_retrySyncReset: retryCount: %llu", &v5, 0xCu);
  }
}

- (void)_retrySyncSession:(id)a3
{
  v4 = a3;
  if ([v4 isResetSync])
  {
    v5 = 1;
    [(TCCDSyncController *)self setPendingSyncType:1];
    v6 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [v6 removeAllObjects];

    v7 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [v7 removeAllObjects];

    v8 = [(TCCDSyncController *)self sessionSyncChanges];
    [v8 removeAllObjects];

    v9 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v4 identifier];
      *buf = 138543362;
      v58 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_retrySyncSession(session: %{public}@): for reset sync.", buf, 0xCu);
    }
  }

  else
  {
    [(TCCDSyncController *)self setPendingSyncType:2];
    v12 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    v13 = [v12 copy];

    v14 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [v14 removeAllObjects];

    v15 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v4 identifier];
      v18 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
      v19 = [v18 count];
      v20 = [(TCCDSyncController *)self sessionSyncChanges];
      *buf = 138544130;
      v58 = v17;
      v59 = 2048;
      v60 = v19;
      v61 = 2048;
      v62 = [v20 count];
      v63 = 2048;
      v64 = [v13 count];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "_retrySyncSession(session: %{public}@): for delta sync: confirmationSyncChanges: %lu, sessionSyncChanges %lu, currentPendingChanges: %lu", buf, 0x2Au);
    }

    v21 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    v22 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [v21 addObjectsFromArray:v22];

    v23 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    v24 = [(TCCDSyncController *)self sessionSyncChanges];
    [v23 addObjectsFromArray:v24];

    v25 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [v25 addObjectsFromArray:v13];

    v26 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [v26 removeAllObjects];

    v27 = [(TCCDSyncController *)self sessionSyncChanges];
    [v27 removeAllObjects];

    v5 = 2;
  }

  v28 = [(TCCDSyncController *)self retryCount];
  [(TCCDSyncController *)self setRetryCount:[(TCCDSyncController *)self retryCount]+ 1];
  [(TCCDSyncController *)self _retrySyncCancel];
  v49 = _NSConcreteStackBlock;
  v50 = 3221225472;
  v51 = sub_100017F5C;
  v52 = &unk_1000A55E0;
  v53 = self;
  v29 = v4;
  v54 = v29;
  v55 = v28;
  v56 = v5;
  v30 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v49);
  [(TCCDSyncController *)self setRetryBlock:v30, v49, v50, v51, v52, v53];

  v31 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v32 = v31;
    v33 = [(TCCDSyncController *)self retryBlock];
    v34 = objc_retainBlock(v33);
    v35 = [v29 identifier];
    v36 = [(TCCDSyncController *)self retryCount];
    *buf = 134218754;
    v58 = v34;
    v59 = 2114;
    v60 = v35;
    v61 = 2048;
    v62 = v28;
    v63 = 2048;
    v64 = v36;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "_retrySyncSession(%p) session: %{public}@: current count: %llu, retryCount: %llu", buf, 0x2Au);
  }

  v37 = [(TCCDSyncController *)self retryBlock];

  if (!v37)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000621BC();
    }

    v47 = self;
    v48 = 5;
    goto LABEL_20;
  }

  v38 = [(TCCDSyncController *)self maxRetryCount];
  v39 = qword_1000C12F8;
  if (v28 >= v38)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10006211C();
    }

    v47 = self;
    v48 = 6;
LABEL_20:
    [(TCCDSyncController *)v47 _sendSyncSessionDidFinishWithResult:v48 error:0];
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v40 = v39;
    v41 = [(TCCDSyncController *)self retryIntervalSecs];
    v42 = [(TCCDSyncController *)self retryBlock];
    v43 = objc_retainBlock(v42);
    *buf = 134218496;
    v58 = v41;
    v59 = 2048;
    v60 = v28;
    v61 = 2048;
    v62 = v43;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Will retry sync in %llu seconds with retry-block: %llu (%p)", buf, 0x20u);
  }

  v44 = dispatch_time(0, 1000000000 * [(TCCDSyncController *)self retryIntervalSecs]);
  v45 = [(TCCDSyncController *)self syncControllerQueue];
  v46 = [(TCCDSyncController *)self retryBlock];
  dispatch_after(v44, v45, v46);

LABEL_21:
}

- (void)_retrySyncType:(unsigned int)a3
{
  v3 = *&a3;
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
    v8 = [(TCCDSyncController *)self syncService];
    [v8 setHasChangesAvailable];
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v7 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
    [v7 removeAllObjects];

    v8 = [(TCCDSyncController *)self syncService];
    [v8 setNeedsResetSync];
  }

  [(TCCDSyncController *)self _acquireTransaction];
}

- (void)_sendSyncSessionDidFinishWithResult:(unsigned int)a3 error:(id)a4
{
  v6 = a4;
  v7 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = sub_100014FFC(a3);
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Send-Sync Session did finish: %{public}@, error: %@", &v13, 0x16u);
  }

  if (a3 <= 5)
  {
    if (a3 - 1 < 2)
    {
      [(TCCDSyncController *)self _removeSavedSyncState];
      [(TCCDSyncController *)self _retrySyncReset];
      goto LABEL_13;
    }

    if (a3 == 3)
    {
LABEL_13:
      [(TCCDSyncController *)self _release_transaction];
      goto LABEL_14;
    }

    if (a3 != 5)
    {
      goto LABEL_14;
    }

LABEL_11:
    [(TCCDSyncController *)self _resetSyncingAndCancelAnyInFlightSessions];
    goto LABEL_13;
  }

  switch(a3)
  {
    case 6u:
      [(TCCDSyncController *)self _writeSyncStateAndAllowTermination];
      v10 = [(TCCDSyncController *)self syncService];
      v11 = [v10 targetIsInProximity];

      v12 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR);
      if (v11)
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

- (void)syncAccessUpdateForServiceIdentifier:(id)a3 mainClientIdentifier:(id)a4 replicaClientIdentifier:(id)a5 clientType:(int)a6 accessStatus:(unint64_t)a7 authorizationVersion:(unint64_t)a8 flags:(int)a9 updateType:(unint64_t)a10
{
  v12 = *&a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(TCCDSyncClientAccessAction *)[TCCDSyncUpdateAccessAction alloc] initWithServiceIdentifier:v18 mainClientIdentifier:v17 replicaClientIdentifier:v16 clientType:v12];

  [(TCCDSyncUpdateAccessAction *)v19 setUpdateAccessActionStatus:a7];
  [(TCCDSyncUpdateAccessAction *)v19 setAuthorizationVersion:a8];
  [(TCCDSyncUpdateAccessAction *)v19 setDatabaseFlags:a9];
  [(TCCDSyncController *)self syncAccessAction:v19 updateType:a10];
}

- (void)syncAccessUpdateForServiceIdentifier:(id)a3 clientIdentifier:(id)a4 clientType:(int)a5 accessStatus:(unint64_t)a6 authorizationVersion:(unint64_t)a7 flags:(int)a8 updateType:(unint64_t)a9
{
  v12 = *&a5;
  v15 = a3;
  v16 = a4;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100062270();
  }

  LODWORD(v17) = a8;
  [(TCCDSyncController *)self syncAccessUpdateForServiceIdentifier:v15 mainClientIdentifier:0 replicaClientIdentifier:v16 clientType:v12 accessStatus:a6 authorizationVersion:a7 flags:v17 updateType:a9];
}

- (id)stringForSYChangeType:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return *(&off_1000A56E0 + a3 - 1);
  }

  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000622E4();
  }

  return @"<Unknown>";
}

- (unint64_t)updateTypeForSYChangeType:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (int64_t)syChangeTypeForUpdateType:(unint64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000186BC;
  v5[3] = &unk_1000A5608;
  v5[4] = v2;
  v5[5] = &v6;
  sub_100014EEC(v3, v2, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)beginBatchingDeltaChanges
{
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001875C;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(v3, self, v4);
}

- (void)endBatchingDeltaChanges
{
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018838;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(v3, self, v4);
}

- (void)willShutdown
{
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000188CC;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(v3, self, v4);
}

- (void)setSyncSession:(id)a3 accessDidUpdateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCCDSyncController *)self syncSessionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A1C;
  block[3] = &unk_1000A5630;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removeAccessDidUpdateHandlerForSession:(id)a3
{
  v4 = a3;
  v5 = [(TCCDSyncController *)self syncSessionsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018B30;
  v7[3] = &unk_1000A50C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)syncAccessAction:(id)a3 updateType:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(TCCDSyncController *)self syncControllerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018BF8;
    block[3] = &unk_1000A5658;
    v9 = v6;
    v10 = self;
    v11 = a4;
    dispatch_async(v7, block);
  }
}

- (void)handleMemoryPressureCritical
{
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018CD0;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014EEC(v3, self, v4);
}

- (id)_syncSessionHandlerForUpdateAccessAction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(TCCDSyncController *)self syncSessionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001909C;
  block[3] = &unk_1000A5098;
  block[4] = self;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_sync(v6, block);

  v9 = [v7 copy];

  return v9;
}

- (void)_notifySyncSessionHandlers:(id)a3 forUpdateAccessAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v18 = "[TCCDSyncController _notifySyncSessionHandlers:forUpdateAccessAction:]";
          v19 = 2112;
          v20 = v6;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s: Running handler for session matching: %@", buf, 0x16u);
        }

        (*(v11 + 16))(v11, v6);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_updateDatabase:(unint64_t)a3 forUpdateAccessAction:(id)a4
{
  v6 = a4;
  v7 = [(TCCDSyncController *)self _syncSessionHandlerForUpdateAccessAction:v6];
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
    v15 = v6;
    v16 = 2080;
    v17 = v10;
    v18 = 2048;
    v19 = [v7 count];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: %@, killClient: %s, handler count: %ld", &v12, 0x2Au);
  }

  [v6 updateDatabase:a3 killClient:v8 == 0];
  if ([v7 count])
  {
    [(TCCDSyncController *)self _notifySyncSessionHandlers:v7 forUpdateAccessAction:v6];
  }
}

- (void)_handleSyncObject:(id)a3 updateType:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_10001C558(a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000625E8();
      }

      [(TCCDSyncController *)self _updateDatabase:a4 forUpdateAccessAction:v8];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v6;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_100062574();
        }

        [v9 updateDatabase:a4 killClient:1];
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

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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

    v13 = [v9 identifier];
    if ([v9 isResetSync])
    {
      v14 = "ResetSync";
    }

    else
    {
      v14 = "DeltaSync";
    }

    v15 = [v9 isSending];
    v16 = "Receiving";
    *buf = 136446978;
    v49 = v12;
    v50 = 2114;
    if (v15)
    {
      v16 = "Sending";
    }

    v51 = v13;
    v52 = 2082;
    v53 = v14;
    v54 = 2082;
    v55 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SYService %{public}s starting SYSession:%{public}@, type: %{public}s, direction: %{public}s", buf, 0x2Au);
  }

  if (!self->_isSyncingEnabled)
  {
    v17 = [(TCCDSyncController *)self pendingSyncType];
    v18 = qword_1000C12F8;
    if (!v17)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v18;
        v38 = [v9 identifier];
        *buf = 138543362;
        v49 = v38;
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
    *a5 = v39;
    goto LABEL_54;
  }

  if ([v9 isSending])
  {
    [(TCCDSyncController *)self setSessionShouldCancelWhenActive:0];
LABEL_23:
    [v9 setDelegate:self];
    [v9 setSerializer:self];
    v24 = [(TCCDSyncController *)self syncControllerQueue];
    [v9 setTargetQueue:v24];

    [v9 setPerMessageTimeout:{-[TCCDSyncController sessionPerMessageTimeoutSecs](self, "sessionPerMessageTimeoutSecs")}];
    if (![v9 isSending])
    {
      [(TCCDSyncController *)self _acquireTransaction];
LABEL_48:
      v23 = 1;
      goto LABEL_54;
    }

    v25 = [(TCCDSyncController *)self sessionSyncChanges];
    v26 = [v25 count];

    if (v26)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100062760();
      }

      v27 = [(TCCDSyncController *)self sessionSyncChanges];
      [v27 removeAllObjects];
    }

    if (![v9 isResetSync])
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_100062818();
      }

      v29 = [(TCCDSyncController *)self sessionSyncChanges];
      v35 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      v34 = v29;
      v36 = v35;
      goto LABEL_47;
    }

    if ([(TCCDSyncController *)self isMain])
    {
      v28 = [(TCCDSyncController *)self _beginResetSyncHook];
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006295C();
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
              objc_enumerationMutation(v29);
            }

            [*(*(&v43 + 1) + 8 * i) setSyncChangeType:{1, v43}];
          }

          v31 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v31);
      }

      v34 = [(TCCDSyncController *)self sessionSyncChanges];
      v35 = v34;
      v36 = v29;
LABEL_47:
      [v34 addObjectsFromArray:{v36, v43}];

      v40 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
      [v40 removeAllObjects];

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

  if (![v9 isResetSync])
  {
    goto LABEL_23;
  }

  v21 = [(TCCDSyncController *)self retryBlock];

  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100062698(v22, v9);
  }

  *a5 = [[NSError alloc] initWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:5 userInfo:0];
  [(TCCDSyncController *)self _retrySyncType:[(TCCDSyncController *)self pendingSyncType]];
  v23 = 0;
LABEL_54:

  return v23;
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 state] == 5)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:@"com.apple.identityservices.error"] && objc_msgSend(v8, "code") == 23 || objc_msgSend(v9, "isEqualToString:", @"SYErrorDomain") && objc_msgSend(v8, "code") == 2007)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100062F04();
      }
    }

    else if ([v9 isEqualToString:@"SYErrorDomain"] && objc_msgSend(v8, "code") == 2023)
    {
      v13 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100062E6C(v13);
      }
    }

    else if ([v9 isEqualToString:@"com.apple.tccd.TCCDSyncControllerErrorDomain"] && objc_msgSend(v8, "code") == 5)
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

    if ([v7 isSending])
    {
      [(TCCDSyncController *)self _retrySyncSession:v7];
    }

LABEL_33:

    goto LABEL_34;
  }

  if ([v7 state] == 3)
  {
    v10 = [(TCCDSyncController *)self sessionShouldCancelWhenActive];
    v11 = qword_1000C12F8;
    v12 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG);
    if (v10)
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
      if ([v7 isSending])
      {
        [(TCCDSyncController *)self _retrySyncSession:v7];
      }
    }
  }

  else
  {
    v14 = [v7 state];
    v15 = qword_1000C12F8;
    if (v14 == 9)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
      {
        sub_100062B4C(v15);
      }

      if (![v7 isSending])
      {
        [(TCCDSyncController *)self _release_transaction];
        v19 = [(TCCDSyncController *)self retryBlock];

        if (!v19)
        {
          goto LABEL_34;
        }

        v20 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "After receive-session completed: retrying pending state.", buf, 2u);
        }

        v9 = [(TCCDSyncController *)self retryBlock];
        v9[2]();
        goto LABEL_33;
      }

      if ([v7 isResetSync])
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
  v18 = v7;
  AnalyticsSendEventLazy();
}

- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5
{
  v6 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100062FD8(v6, a5);
  }
}

- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000630A4();
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v9)
  {
LABEL_3:
    [(TCCDSyncController *)self _didUnPairDevice];
  }

LABEL_4:
}

- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006314C();
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v10)
  {
LABEL_3:
    v11 = [(objc_class *)[(TCCDSyncController *)self nrPairedDeviceRegisteryClass] sharedInstance];
    v12 = [v11 deviceForPairingID:v10];
    [(TCCDSyncController *)self _didPairToDevice:v12];
  }

LABEL_4:
}

- (void)service:(id)a3 targetDeviceProximityChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
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

- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006325C();
  }

  if (![v10 isSending])
  {
    goto LABEL_7;
  }

  v11 = [(TCCDSyncController *)self syncService];
  v12 = [v11 currentSession];
  v13 = v12;
  if (v12 != v10)
  {

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v14 = [v9 isSending];

  if (v14)
  {
    goto LABEL_7;
  }

  v17 = [(TCCDSyncController *)self syncService];
  v18 = [v17 currentSession];
  [(TCCDSyncController *)self _retrySyncSession:v18];

  v15 = v9;
LABEL_8:

  return v15;
}

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
    v12 = [v8 identifier];
    *buf = 138543362;
    v34 = v12;
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
    *a5 = [[NSError alloc] initWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:6 userInfo:v11];
    goto LABEL_8;
  }

  v15 = [(TCCDSyncController *)self sessionSyncChanges];
  v16 = [v15 copy];

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
        if ((v9[2](v9, v22) & 1) == 0)
        {
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
          {
            sub_1000633A0();
          }

          v14 = 1;
          goto LABEL_24;
        }

        v23 = [(TCCDSyncController *)self sessionSyncChanges];
        [v23 removeObjectAtIndex:0];

        v24 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
        [v24 addObject:v22];
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

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v32 = a5;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000634E4();
  }

  v33 = v8;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v9;
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
      v17 = [v16 changeType];
      v18 = [(TCCDSyncController *)self updateTypeForSYChangeType:v17];
      v19 = [(TCCDSyncController *)self stringForSYChangeType:v17];
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

  v32[2](v32, v13 == 0, v13);
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000C12F8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100063580(v6, v7);
  }

  if (!v7)
  {
    v9 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
    [v9 removeAllObjects];
  }
}

- (void)syncSession:(id)a3 successfullySynced:(id)a4
{
  v6 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = a4;
    v9 = [a3 identifier];
    v10 = [v8 count];

    v11 = 138543618;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SYSession:%{public}@; successfullySynced: %lu changes", &v11, 0x16u);
  }
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v6 = a3;
  v7 = [(TCCDSyncController *)self isMain];
  v8 = qword_1000C12F8;
  if (v7)
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

  *a4 = v9;

  return v7 ^ 1;
}

- (id)dataFromChange:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
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

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v5 = a3;
  v6 = +[TCCDSyncController allowedClassesForSYChangeUnarchiving];
  v11 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v5 error:&v11];

  v8 = v11;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v7 setSyncChangeType:a4];
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

- (const)_syncTypeToString:(unsigned int)a3
{
  if (a3 > 2)
  {
    return "<Unknown TCCDSyncType>";
  }

  else
  {
    return off_1000A56F8[a3];
  }
}

- (id)_syncStatusDescriptionString
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Sync Status:\n"];
  v4 = "No";
  if ([(TCCDSyncController *)self isSyncingEnabled])
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  [v3 appendFormat:@"  syncing enabled: %s\n", v5];
  v6 = [(TCCDSyncController *)self pairedDeviceStorageRoot];
  v7 = v6;
  v8 = @"<not paired>";
  if (v6)
  {
    v8 = v6;
  }

  [v3 appendFormat:@"  paired storage root %@\n", v8];

  v9 = [(TCCDSyncController *)self syncService];
  v10 = [v9 targetIsInProximity];
  v11 = @"Not";
  if (v10)
  {
    v11 = @"In";
  }

  [v3 appendFormat:@"  proximity: %@\n", v11];

  v12 = [(TCCDSyncController *)self _syncTypeToString:[(TCCDSyncController *)self pendingSyncType]];
  v13 = [(TCCDSyncController *)self pendingDeltaSyncChanges];
  v14 = [v13 count];
  if ([(TCCDSyncController *)self batchDeltaChanges])
  {
    v15 = "Yes";
  }

  else
  {
    v15 = "No";
  }

  [v3 appendFormat:@"  pendingSync -- type: %s, number of pendingDeltaSyncChanges: %lu, batching: %s\n", v12, v14, v15];

  v16 = [(TCCDSyncController *)self syncService];
  v17 = [v16 currentSession];
  if (v17)
  {
    v33 = [(TCCDSyncController *)self syncService];
    v4 = [v33 currentSession];
    v18 = [v4 identifier];
  }

  else
  {
    v18 = @"<None>";
  }

  v19 = [(TCCDSyncController *)self sessionSyncChanges];
  v20 = [v19 count];
  v21 = [(TCCDSyncController *)self sessionPendingConfirmationSyncChanges];
  [v3 appendFormat:@"  session -- currentSession: %@, sessionSyncChanges.count: %lu, sessionPendingConfirmationSyncChanges.count:  %lu, per-message timeout %llu secs.\n", v18, v20, objc_msgSend(v21, "count"), -[TCCDSyncController sessionPerMessageTimeoutSecs](self, "sessionPerMessageTimeoutSecs")];

  if (v17)
  {
  }

  v22 = [(TCCDSyncController *)self sessionShouldCancelWhenActive];
  v23 = "No";
  if (v22)
  {
    v23 = "Yes";
  }

  [v3 appendFormat:@"  session -- ShouldCancelWhenActive: %s\n", v23];
  v24 = [(TCCDSyncController *)self retryCount];
  v25 = [(TCCDSyncController *)self maxRetryCount];
  v26 = [(TCCDSyncController *)self retryIntervalSecs];
  v27 = [(TCCDSyncController *)self retryBlock];
  v28 = objc_retainBlock(v27);
  [v3 appendFormat:@"  retry -- current count: %llu, max count: %llu, interval: %llu secs, retryBlock: %p\n", v24, v25, v26, v28];

  v29 = [(TCCDSyncController *)self syncTransaction];
  v30 = "Acquired";
  if (!v29)
  {
    v30 = "None";
  }

  [v3 appendFormat:@"  transaction -- %s\n", v30];

  v31 = [v3 copy];

  return v31;
}

- (void)testSyncStatus
{
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B808;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014F74(v3, self, v4);
}

- (void)testSyncSet:(id)a3
{
  v4 = a3;
  v5 = [(TCCDSyncController *)self syncControllerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B9AC;
  v7[3] = &unk_1000A50C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  sub_100014EEC(v5, self, v7);
}

- (void)testMemoryPressureCritical
{
  v3 = [(TCCDSyncController *)self syncControllerQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BDE0;
  v4[3] = &unk_1000A4F58;
  v4[4] = self;
  sub_100014F74(v3, self, v4);
}

- (BOOL)peerSupportsService:(id)a3 authVersion:(unint64_t)a4
{
  v6 = [a3 isEqualToString:@"kTCCServiceCalendar"];
  if (a4 != 2 || !v6)
  {
    return 1;
  }

  v7 = [(TCCDSyncController *)self pairedDevice];
  v8 = [[NSUUID alloc] initWithUUIDString:@"E7B1CD81-445C-4840-9F24-3A32B510B6A1"];
  v9 = [v7 supportsCapability:v8];

  return v9;
}

- (BOOL)peerSupportsIndependentAuthforService:(id)a3
{
  v4 = [a3 isEqualToString:@"kTCCServiceBluetoothAlways"];
  if (v4)
  {
    v5 = [(TCCDSyncController *)self pairedDevice];
    v6 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
    v7 = [v5 supportsCapability:v6];

    LOBYTE(v4) = v7;
  }

  return v4;
}

@end