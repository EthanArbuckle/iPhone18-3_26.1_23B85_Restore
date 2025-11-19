@interface PCSPairedSyncDelegate
+ (id)sharedSyncDelegate;
- (BOOL)syncingIsRestrictedForPairingID:(id)a3;
- (PCSPairedSyncDelegate)init;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
@end

@implementation PCSPairedSyncDelegate

+ (id)sharedSyncDelegate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DEDC;
  block[3] = &unk_100039098;
  block[4] = a1;
  if (qword_100040730 != -1)
  {
    dispatch_once(&qword_100040730, block);
  }

  v2 = qword_100040728;

  return v2;
}

- (PCSPairedSyncDelegate)init
{
  v8.receiver = self;
  v8.super_class = PCSPairedSyncDelegate;
  v2 = [(PCSPairedSyncDelegate *)&v8 init];
  if (v2)
  {
    v3 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.protectedcloudkeysyncing"];
    coordinator = v2->_coordinator;
    v2->_coordinator = v3;

    [(PSYSyncCoordinator *)v2->_coordinator setDelegate:v2];
    v5 = [[PSYInitialSyncStateObserver alloc] initWithDelegate:v2];
    stateObserver = v2->_stateObserver;
    v2->_stateObserver = v5;
  }

  return v2;
}

- (BOOL)syncingIsRestrictedForPairingID:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(PCSPairedSyncDelegate *)self stateObserver];
  if (!v6)
  {
    __assert_rtn("[PCSPairedSyncDelegate syncingIsRestrictedForPairingID:]", "PCSPairedSyncDelegate.m", 64, "self.stateObserver");
  }

  v7 = [(PCSPairedSyncDelegate *)self stateObserver];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E140;
  v11[3] = &unk_1000390C0;
  v8 = v4;
  v12 = v8;
  v14 = &v15;
  v9 = v5;
  v13 = v9;
  [v7 requestSyncStateForPairingIdentifier:v8 completion:v11];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v7) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    [v6 syncSessionType];
    v9 = NSStringfromPSYSyncSessionType();
    v22 = 138412290;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning %@ sync session", &v22, 0xCu);
  }

  v10 = +[PCSDeviceManager sharedManager];
  v11 = [v6 pairingID];
  v12 = [v10 deviceForPairingID:v11];

  if ([v12 supportsPCSKeySync])
  {
    v13 = +[PCSKeySyncing defaultSyncingManager];
    v14 = [v12 idsDeviceIdentifier];
    v15 = [v13 getClientWithIdentifier:v14];

    v16 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v15 isNewWatch];
      v22 = 138412546;
      v23 = v15;
      v24 = 1024;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found watch: %@ new: %d", &v22, 0x12u);
    }

    if ([v12 supportsNewProtocol])
    {
      v19 = +[PCSKeySyncing defaultSyncingManager];
      [v19 updateProtocolVersionIfNeeded:v15];
    }

    v20 = +[PCSSyncing defaultPCSSyncing];
    v21 = [v12 idsDeviceIdentifier];
    [v20 checkSyncingForPeer:v21 force:1];
  }

  [v6 syncDidComplete];
}

@end