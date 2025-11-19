@interface VoicemailCompanionReplication
- (BOOL)_isSyncing;
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (NSMutableArray)remoteVoicemails;
- (VoicemailCompanionReplication)init;
- (id)changesBetween:(id)a3 and:(id)a4;
- (id)voicemails;
- (int64_t)currentMigrationVersion;
- (int64_t)indexOfVoicemail:(id)a3 inArray:(id)a4;
- (void)_handleVoicemailsChangedNotification:(id)a3;
- (void)_retrySyncSession:(id)a3;
- (void)_syncRestrictionUpdated;
- (void)dealloc;
- (void)handleSIGTERM;
- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4;
- (void)remoteVoicemails;
- (void)removeFromRemoteVoicemails:(id)a3;
- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
- (void)serviceDidPairDevice:(id)a3;
- (void)setCurrentMigrationVersion:(int64_t)a3;
- (void)setRemoteVoicemails:(id)a3;
- (void)setSyncing:(BOOL)a3;
- (void)sync:(BOOL)a3 force:(BOOL)a4;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
- (void)syncSessionManager:(id)a3 reportProgress:(double)a4;
- (void)syncSessionManagerDidCompleteSending:(id)a3;
@end

@implementation VoicemailCompanionReplication

- (VoicemailCompanionReplication)init
{
  v47[1] = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "[VoicemailCompanionReplication init]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v41.receiver = self;
  v41.super_class = VoicemailCompanionReplication;
  v4 = [(VoicemailCompanionReplication *)&v41 init];
  if (v4)
  {
    v5 = +[_TtC12TelephonyRPC21VoicemailManager_ObjC shared];
    voicemailManager = v4->_voicemailManager;
    v4->_voicemailManager = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCA928]);
    voicemailsLoadedCondition = v4->_voicemailsLoadedCondition;
    v4->_voicemailsLoadedCondition = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCA928]);
    notSyncingCondition = v4->_notSyncingCondition;
    v4->_notSyncingCondition = v9;

    v11 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.mobilephone"];
    domainAccessor = v4->_domainAccessor;
    v4->_domainAccessor = v11;

    v13 = objc_alloc_init(NPHVMSyncSessionManager);
    syncSessionManager = v4->_syncSessionManager;
    v4->_syncSessionManager = v13;

    [(NPHVMSyncSessionManager *)v4->_syncSessionManager setDelegate:v4];
    v15 = dispatch_semaphore_create(0);
    initialSyncComplete = v4->_initialSyncComplete;
    v4->_initialSyncComplete = v15;

    v17 = [MEMORY[0x277D37C40] syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanophone"];
    initialSyncCoordinator = v4->_initialSyncCoordinator;
    v4->_initialSyncCoordinator = v17;

    v19 = [objc_alloc(MEMORY[0x277D37C30]) initWithDelegate:v4];
    initialSyncStateObserver = v4->_initialSyncStateObserver;
    v4->_initialSyncStateObserver = v19;

    [(PSYSyncCoordinator *)v4->_initialSyncCoordinator setDelegate:v4];
    [(VoicemailCompanionReplication *)v4 _syncRestrictionUpdated];
    v21 = objc_alloc(MEMORY[0x277CFBAA0]);
    v46 = *MEMORY[0x277D18678];
    v47[0] = MEMORY[0x277CBEC38];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v23 = [v21 initWithService:@"com.apple.private.alloy.voicemailsync" priority:0 asMasterStore:1 options:v22];
    syncService = v4->_syncService;
    v4->_syncService = v23;

    v25 = dispatch_queue_create("com.apple.mobilephone.VoicemailCompanionReplication.syncServiceQueue", 0);
    syncServiceQueue = v4->_syncServiceQueue;
    v4->_syncServiceQueue = v25;

    [(SYService *)v4->_syncService setDelegate:v4 queue:v4->_syncServiceQueue];
    v27 = v4->_syncService;
    v40 = 0;
    LOBYTE(v22) = [(SYService *)v27 resume:&v40];
    v28 = v40;
    if ((v22 & 1) == 0)
    {
      v29 = nph_general_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "[VoicemailCompanionReplication init]";
        v44 = 2112;
        v45 = v28;
        _os_log_impl(&dword_26D269000, v29, OS_LOG_TYPE_DEFAULT, "%s: error resuming _syncService: %@", buf, 0x16u);
      }
    }

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    v31 = [MEMORY[0x277CCAB88] VoicemailManager_ObjC_VoicemailsChangedNotification];
    [v30 addObserver:v4 selector:sel__handleVoicemailsChangedNotification_ name:v31 object:0];

    v32 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__VoicemailCompanionReplication_init__block_invoke;
    block[3] = &unk_279D961C0;
    v33 = v4;
    v39 = v33;
    dispatch_async(v32, block);

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__VoicemailCompanionReplication_init__block_invoke_2;
    handler[3] = &unk_279D961E8;
    v37 = v33;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], handler);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v4;
}

void __37__VoicemailCompanionReplication_init__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (deviceUnlockedSinceBoot_onceToken != -1)
  {
    __37__VoicemailCompanionReplication_init__block_invoke_cold_1();
  }

  dispatch_semaphore_wait(deviceUnlockedSinceBoot_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VoicemailCompanionReplication init]_block_invoke";
  }

  v3 = [*(a1 + 32) initialSyncComplete];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VoicemailCompanionReplication init]_block_invoke";
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__VoicemailCompanionReplication_init__block_invoke_49;
  block[3] = &unk_279D961C0;
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __37__VoicemailCompanionReplication_init__block_invoke_49(uint64_t a1)
{
  [*(a1 + 32) setSyncPermitted:1];
  v2 = *(a1 + 32);

  return [v2 sync:0];
}

void __37__VoicemailCompanionReplication_init__block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430])}];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "received com.apple.notifyd.matching event named %@", &v6, 0xCu);
  }

  if ([v3 isEqualToString:@"com.apple.nanophone.vm.fullsync"])
  {
    [*(a1 + 32) sync:1];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  initialSyncCoordinator = self->_initialSyncCoordinator;
  self->_initialSyncCoordinator = 0;

  v5.receiver = self;
  v5.super_class = VoicemailCompanionReplication;
  [(VoicemailCompanionReplication *)&v5 dealloc];
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VoicemailCompanionReplication syncCoordinator:beginSyncSession:]";
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v7 = [v5 syncSessionType];
  [(VoicemailCompanionReplication *)self sync:v7 == 0 force:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[VoicemailCompanionReplication syncCoordinator:didInvalidateSyncSession:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s: initialSyncSession: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VoicemailCompanionReplication syncCoordinatorDidChangeSyncRestriction:]";
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(VoicemailCompanionReplication *)self _syncRestrictionUpdated];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[VoicemailCompanionReplication initialSyncStateObserver:syncDidCompleteForPairingIdentifier:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  [(VoicemailCompanionReplication *)self _syncRestrictionUpdated];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_syncRestrictionUpdated
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VoicemailCompanionReplication _syncRestrictionUpdated]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(VoicemailCompanionReplication *)self initialSyncStateObserver];
  v5 = [(NPSDomainAccessor *)self->_domainAccessor pairingID];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__VoicemailCompanionReplication__syncRestrictionUpdated__block_invoke;
  v7[3] = &unk_279D96210;
  v7[4] = self;
  [v4 requestSyncStateForPairingIdentifier:v5 completion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __56__VoicemailCompanionReplication__syncRestrictionUpdated__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) initialSyncCoordinator];
    v7 = [v6 syncRestriction] == 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) initialSyncCoordinator];
    v12[0] = 67109632;
    v12[1] = v7;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = [v9 syncRestriction];
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "syncRestricted: %d (hasCompletedSync: %d syncRestriction: %lu)", v12, 0x18u);
  }

  if (!v7)
  {
    v10 = [*(a1 + 32) initialSyncComplete];
    dispatch_semaphore_signal(v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleSIGTERM
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VoicemailCompanionReplication handleSIGTERM]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(VoicemailCompanionReplication *)self syncSessionManager];
  [v4 setCancelled:1];

  v5 = [(VoicemailCompanionReplication *)self notSyncingCondition];
  [v5 lock];

  if ([(VoicemailCompanionReplication *)self _isSyncing])
  {
    do
    {
      v6 = nph_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "[VoicemailCompanionReplication handleSIGTERM]";
        _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s - sync in progress; waiting for it to cancel out", buf, 0xCu);
      }

      v7 = [(VoicemailCompanionReplication *)self notSyncingCondition];
      [v7 wait];
    }

    while ([(VoicemailCompanionReplication *)self _isSyncing]);
  }

  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VoicemailCompanionReplication handleSIGTERM]";
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s - sync no longer in progress; exiting", buf, 0xCu);
  }

  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VoicemailCompanionReplication handleSIGTERM]";
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s - done waiting", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setSyncing:(BOOL)a3
{
  v3 = a3;
  v5 = [(VoicemailCompanionReplication *)self notSyncingCondition];
  [v5 lock];

  if ([(VoicemailCompanionReplication *)self _isSyncing]!= v3)
  {
    if (v3)
    {
      v6 = os_transaction_create();
      [(VoicemailCompanionReplication *)self setTransaction:v6];
    }

    else
    {
      [(VoicemailCompanionReplication *)self setTransaction:0];
    }

    if (![(VoicemailCompanionReplication *)self _isSyncing])
    {
      v7 = [(VoicemailCompanionReplication *)self notSyncingCondition];
      [v7 broadcast];
    }
  }

  v8 = [(VoicemailCompanionReplication *)self notSyncingCondition];
  [v8 unlock];
}

- (BOOL)_isSyncing
{
  v2 = [(VoicemailCompanionReplication *)self transaction];
  v3 = v2 != 0;

  return v3;
}

- (void)sync:(BOOL)a3 force:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[VoicemailCompanionReplication sync:force:]";
    v15 = 1024;
    *v16 = v5;
    *&v16[4] = 1024;
    *&v16[6] = v4;
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s: reset: %d force: %d", &v13, 0x18u);
  }

  if (v5 || [(VoicemailCompanionReplication *)self isSyncPermitted]|| v4)
  {
    [(VoicemailCompanionReplication *)self setSyncing:1];
    v8 = [(VoicemailCompanionReplication *)self currentMigrationVersion];
    v9 = nph_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[VoicemailCompanionReplication sync:force:]";
      v15 = 2048;
      *v16 = v8;
      *&v16[8] = 2048;
      v17 = 1;
      _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: currentMigrationVersion: %ld requiredMigrationVersion: %ld", &v13, 0x20u);
    }

    v10 = [(VoicemailCompanionReplication *)self syncService];
    v11 = v10;
    if (v5 || v8 <= 0)
    {
      [v10 setNeedsResetSync];
    }

    else
    {
      [v10 setHasChangesAvailable];
    }
  }

  else
  {
    v11 = nph_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[VoicemailCompanionReplication sync:force:]";
      _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s: bailing, isSyncPermitted: 0 force: 0", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_retrySyncSession:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VoicemailCompanionReplication _retrySyncSession:]";
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [v4 isResetSync];
  v7 = [v4 wasCancelled];
  if (v6)
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3600000000000;
    }

    v9 = nph_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[VoicemailCompanionReplication _retrySyncSession:]";
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: scheduling setNeedsResetSync in %lld ns", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v10 = dispatch_time(0, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__VoicemailCompanionReplication__retrySyncSession___block_invoke;
    block[3] = &unk_279D96238;
    objc_copyWeak(&v14, buf);
    block[4] = self;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__VoicemailCompanionReplication__retrySyncSession___block_invoke_60;
    v12[3] = &unk_279D961C0;
    v12[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__VoicemailCompanionReplication__retrySyncSession___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained remoteVoicemails];
  v4 = [v3 count];

  v5 = nph_general_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = "[VoicemailCompanionReplication _retrySyncSession:]_block_invoke";
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s setNeedsResetSync trigger canceled. Remote Voicemail count: %lu", &v8, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 136315138;
      v9 = "[VoicemailCompanionReplication _retrySyncSession:]_block_invoke";
      _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s setNeedsResetSync triggered", &v8, 0xCu);
    }

    [*(a1 + 32) sync:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncSessionManager:(id)a3 reportProgress:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
    v8 = [v7 activeSyncSession];
    v12 = 136315650;
    v13 = "[VoicemailCompanionReplication syncSessionManager:reportProgress:]";
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s: progress: %f activeSyncSession: %@", &v12, 0x20u);
  }

  v9 = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
  v10 = [v9 activeSyncSession];
  [v10 reportProgress:a4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncSessionManagerDidCompleteSending:(id)a3
{
  v4 = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
  v3 = [v4 activeSyncSession];
  [v3 syncDidCompleteSending];
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[VoicemailCompanionReplication syncSession:didEndWithError:]";
    v20 = 2112;
    *v21 = v7;
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s: error: %@", &v18, 0x16u);
  }

  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 isSending];
    v11 = [v6 wasCancelled];
    v12 = [v6 isResetSync];
    v18 = 136315906;
    v19 = "[VoicemailCompanionReplication syncSession:didEndWithError:]";
    v20 = 1024;
    *v21 = v10;
    *&v21[4] = 1024;
    *&v21[6] = v11;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: session isSending: %d wasCanceled: %d isResetSync: %d", &v18, 0x1Eu);
  }

  if ([v6 isSending])
  {
    if (v7)
    {
      v13 = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
      v14 = [v13 activeSyncSession];
      [v14 syncDidFailWithError:v7];
    }

    else
    {
      v15 = [(VoicemailCompanionReplication *)self syncingVoicemails];
      [(VoicemailCompanionReplication *)self setRemoteVoicemails:v15];

      if ([v6 isResetSync])
      {
        [(VoicemailCompanionReplication *)self setCurrentMigrationVersion:1];
      }

      v13 = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
      v14 = [v13 activeSyncSession];
      [v14 syncDidComplete];
    }

    [(VoicemailCompanionReplication *)self setSyncingVoicemails:0];
    v16 = [v6 wasCancelled];
    if (v7 || v16)
    {
      [(VoicemailCompanionReplication *)self _retrySyncSession:v6];
    }
  }

  [(VoicemailCompanionReplication *)self setSyncing:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v25 = a5;
  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[VoicemailCompanionReplication syncSession:applyChanges:completion:]";
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = nph_general_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v14;
          _os_log_impl(&dword_26D269000, v15, OS_LOG_TYPE_DEFAULT, "change: %@", buf, 0xCu);
        }

        v16 = nph_general_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v14 changeType];
          *buf = 134217984;
          v34 = v17;
          _os_log_impl(&dword_26D269000, v16, OS_LOG_TYPE_DEFAULT, "changeType: %ld", buf, 0xCu);
        }

        v18 = [v7 serializer];
        v19 = [v18 dataFromChange:v14];

        v20 = [[NanoPhoneVoicemailMeta alloc] initWithData:v19];
        v21 = nph_general_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v20;
          _os_log_impl(&dword_26D269000, v21, OS_LOG_TYPE_DEFAULT, "vmMeta: %@", buf, 0xCu);
        }

        v22 = [v14 changeType];
        switch(v22)
        {
          case 3:
            [(VoicemailCompanionReplication *)self removeFromRemoteVoicemails:v20];
            [(VoicemailManager_ObjC *)self->_voicemailManager moveToTrash:v20];
            break;
          case 2:
            if (([(NanoPhoneVoicemailMeta *)v20 flags]& 1) != 0)
            {
              [(VoicemailManager_ObjC *)self->_voicemailManager markAsRead:v20];
            }

            break;
          case 1:
            v23 = nph_general_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v34 = "[VoicemailCompanionReplication syncSession:applyChanges:completion:]";
              _os_log_impl(&dword_26D269000, v23, OS_LOG_TYPE_DEFAULT, "%s - did not expect gizmo to be adding a voicemail!", buf, 0xCu);
            }

            break;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v25[2](v25, 1, 0);
  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VoicemailCompanionReplication *)self syncService];
    v9 = 136315394;
    v10 = "[VoicemailCompanionReplication syncSession:resetDataStoreWithError:]";
    v11 = 1024;
    v12 = [v6 isMasterStore];
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s: isMasterStore: %d", &v9, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)changesBetween:(id)a3 and:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[VoicemailCompanionReplication changesBetween:and:]";
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_INFO, "%s: from: %@", &v23, 0x16u);
  }

  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[VoicemailCompanionReplication changesBetween:and:]";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_INFO, "%s: and: %@", &v23, 0x16u);
  }

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v9 = [objc_alloc(MEMORY[0x277CFBA90]) initWithChangesBetween:v5 and:v6];
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 added];
    v12 = [v11 count];
    v13 = [v9 updated];
    v14 = [v13 count];
    v15 = [v9 deleted];
    v16 = [v15 count];
    v23 = 136315906;
    v24 = "[VoicemailCompanionReplication changesBetween:and:]";
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = v14;
    v29 = 2048;
    v30 = v16;
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s: counts: added: %lu updated: %lu deleted: %lu", &v23, 0x2Au);
  }

  v17 = nph_general_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v9 added];
    v19 = [v9 updated];
    v20 = [v9 deleted];
    v23 = 136315906;
    v24 = "[VoicemailCompanionReplication changesBetween:and:]";
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    _os_log_impl(&dword_26D269000, v17, OS_LOG_TYPE_INFO, "%s: added: %@ updated: %@ deleted: %@", &v23, 0x2Au);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_handleVoicemailsChangedNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VoicemailCompanionReplication _handleVoicemailsChangedNotification:]";
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v5 = ListOfVoicemailsToSyncWithManager(self->_voicemailManager);

  if (v5)
  {
    v6 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [v6 lock];

    v7 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [v7 broadcast];

    v8 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [v8 unlock];

    v9 = nph_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[VoicemailCompanionReplication _handleVoicemailsChangedNotification:]";
      _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: broadcasted voicemailsLoadedCondition", &v11, 0xCu);
    }
  }

  [(VoicemailCompanionReplication *)self sync:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)serviceDidPairDevice:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  syncService = self->_syncService;
  v8 = 0;
  v4 = [(SYService *)syncService resume:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = nph_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[VoicemailCompanionReplication serviceDidPairDevice:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s: error resuming _syncService:%@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v47[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 136315138;
    v43 = "[VoicemailCompanionReplication service:startSession:error:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v42, 0xCu);
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 138412290;
    v43 = v8;
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "service: %@", &v42, 0xCu);
  }

  v12 = nph_general_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 138412290;
    v43 = v9;
    _os_log_impl(&dword_26D269000, v12, OS_LOG_TYPE_DEFAULT, "session: %@", &v42, 0xCu);
  }

  v13 = nph_general_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 state];
    v42 = 134217984;
    v43 = v14;
    _os_log_impl(&dword_26D269000, v13, OS_LOG_TYPE_DEFAULT, "session.state: %ld", &v42, 0xCu);
  }

  v15 = 1;
  [(VoicemailCompanionReplication *)self setSyncing:1];
  [v9 setDelegate:self->_syncSessionManager];
  [v9 setSerializer:self->_syncSessionManager];
  [v9 setTargetQueue:self->_syncServiceQueue];
  v46 = *MEMORY[0x277D18568];
  v47[0] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  [v9 setOptions:v16];

  if ([v9 isSending])
  {
    v17 = [(VoicemailCompanionReplication *)self voicemails];
    v18 = [v17 mutableCopy];
    [(VoicemailCompanionReplication *)self setSyncingVoicemails:v18];

    if ([v9 isResetSync])
    {
      v19 = nph_general_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(VoicemailCompanionReplication *)self syncingVoicemails];
        if (v20)
        {
          v21 = MEMORY[0x277CCABB0];
          v5 = [(VoicemailCompanionReplication *)self syncingVoicemails];
          v22 = [v21 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
        }

        else
        {
          v22 = 0;
        }

        v42 = 136315394;
        v43 = "[VoicemailCompanionReplication service:startSession:error:]";
        v44 = 2112;
        v45 = v22;
        _os_log_impl(&dword_26D269000, v19, OS_LOG_TYPE_DEFAULT, "%s: there are %@ voicemails to be reset synced", &v42, 0x16u);
        if (v20)
        {
        }
      }

      syncSessionManager = self->_syncSessionManager;
      v25 = [(VoicemailCompanionReplication *)self syncingVoicemails];
      v32 = 1;
      [(NPHVMSyncSessionManager *)syncSessionManager enqueueVoicemailChanges:v25 changeType:1];
    }

    else
    {
      v23 = [(VoicemailCompanionReplication *)self remoteVoicemails];
      v24 = [(VoicemailCompanionReplication *)self syncingVoicemails];
      v25 = [(VoicemailCompanionReplication *)self changesBetween:v23 and:v24];

      v26 = [v25 added];
      v27 = [v25 updated];
      v28 = [v25 deleted];
      v29 = [v26 count];
      v30 = [v27 count] + v29;
      v31 = [v28 count];
      v32 = v30 + v31 != 0;
      if (v30 + v31)
      {
        if ([v26 count])
        {
          v33 = self->_syncSessionManager;
          v34 = [v26 allObjects];
          [(NPHVMSyncSessionManager *)v33 enqueueVoicemailChanges:v34 changeType:1];
        }

        if ([v27 count])
        {
          v35 = self->_syncSessionManager;
          v36 = [v27 allObjects];
          [(NPHVMSyncSessionManager *)v35 enqueueVoicemailChanges:v36 changeType:2];
        }

        if ([v28 count])
        {
          v37 = self->_syncSessionManager;
          v38 = [v28 allObjects];
          [(NPHVMSyncSessionManager *)v37 enqueueVoicemailChanges:v38 changeType:3];
        }
      }
    }

    v15 = v32;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[VoicemailCompanionReplication service:sessionEnded:error:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "service: %@", &v15, 0xCu);
  }

  v12 = nph_general_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_26D269000, v12, OS_LOG_TYPE_DEFAULT, "session: %@", &v15, 0xCu);
  }

  v13 = nph_general_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_26D269000, v13, OS_LOG_TYPE_DEFAULT, "error: %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[VoicemailCompanionReplication service:encounteredError:context:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "service: %@", &v15, 0xCu);
  }

  v12 = nph_general_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_26D269000, v12, OS_LOG_TYPE_DEFAULT, "context: %@", &v15, 0xCu);
  }

  v13 = nph_general_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_26D269000, v13, OS_LOG_TYPE_DEFAULT, "error: %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSMutableArray)remoteVoicemails
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v4 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:@"kVoicemailForReplicationKey"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v14 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v4 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = nph_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [VoicemailCompanionReplication remoteVoicemails];
    }
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = [v11 mutableCopy];

  return v12;
}

- (void)setRemoteVoicemails:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) voicemailBody];
        [v9 setVoicemailRecording:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = nph_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [VoicemailCompanionReplication setRemoteVoicemails:];
    }
  }

  [(NPSDomainAccessor *)self->_domainAccessor setObject:v10 forKey:@"kVoicemailForReplicationKey"];
  v13 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentMigrationVersion:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[VoicemailCompanionReplication setCurrentMigrationVersion:]";
    v10 = 2048;
    v11 = a3;
    v12 = 2048;
    v13 = [(VoicemailCompanionReplication *)self currentMigrationVersion];
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s: %ld (oldValue: %ld)", &v8, 0x20u);
  }

  [(NPSDomainAccessor *)self->_domainAccessor setInteger:a3 forKey:@"NPHVoicemailCompanionReplicationCurrentMigrationVersionKey"];
  v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v7 = *MEMORY[0x277D85DE8];
}

- (int64_t)currentMigrationVersion
{
  v2 = [(VoicemailCompanionReplication *)self domainAccessor];
  v3 = [v2 integerForKey:@"NPHVoicemailCompanionReplicationCurrentMigrationVersionKey"];

  return v3;
}

- (void)removeFromRemoteVoicemails:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VoicemailCompanionReplication *)self remoteVoicemails];
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[VoicemailCompanionReplication removeFromRemoteVoicemails:]";
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s - %@ removed from %@", &v9, 0x20u);
  }

  v7 = [(VoicemailCompanionReplication *)self indexOfVoicemail:v4 inArray:v5];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v7];
  }

  [(VoicemailCompanionReplication *)self setRemoteVoicemails:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)indexOfVoicemail:(id)a3 inArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndex:v7];
      v9 = [v8 identifier];
      v10 = [v5 identifier];

      if (v9 == v10)
      {
        break;
      }

      if (++v7 >= [v6 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)voicemails
{
  v17 = *MEMORY[0x277D85DE8];
  for (i = ListOfVoicemailsToSyncWithManager(self->_voicemailManager);
  {
    v4 = nph_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[VoicemailCompanionReplication voicemails]";
      _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s: waiting for voicemailsLoadedCondition", buf, 0xCu);
    }

    v5 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [v5 lock];

    v6 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [v6 wait];

    v7 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [v7 unlock];

    ListOfVoicemailsToSyncWithManager(self->_voicemailManager);
  }

  v8 = i;
  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    *buf = 136315394;
    v14 = "[VoicemailCompanionReplication voicemails]";
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: %lu", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)remoteVoicemails
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s: error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setRemoteVoicemails:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s: error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end