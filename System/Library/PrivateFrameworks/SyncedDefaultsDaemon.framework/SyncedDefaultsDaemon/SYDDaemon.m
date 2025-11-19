@interface SYDDaemon
+ (id)containerForStoreType:(int64_t)a3 containerID:(id)a4 testConfiguration:(id)a5;
+ (id)defaultTestConfiguration;
+ (id)syncManagerLookupKeyForCurrentPersonaWithTestConfiguration:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)syncManager:(id)a3 shouldSyncStoreWithIdentifier:(id)a4;
- (SYDDaemon)init;
- (SYDDaemon)initWithListener:(id)a3 initialStoreCreation:(BOOL)a4;
- (id)_queue_allSyncManagers;
- (id)allStoreIdentifiersWithError:(id *)a3;
- (id)allSyncManagers;
- (id)applicationIdentifiersForStoreIdentifiers:(id)a3;
- (id)connection:(id)a3 syncManagerForStoreID:(id)a4 error:(id *)a5;
- (id)syncManagerForStoreType:(int64_t)a3 containerID:(id)a4 testConfiguration:(id)a5 createIfNecessary:(BOOL)a6 error:(id *)a7;
- (void)_processAccountChanges;
- (void)connectionDidInvalidate:(id)a3;
- (void)initializeKnownSyncManagers;
- (void)processAccountChanges;
- (void)registerForPeriodAnalyticsXPCActivity;
- (void)removeInvalidSyncManagers;
- (void)removeUnitTestSyncManagers;
- (void)sendAnalyticsEventForCurrentState;
- (void)start;
- (void)uploadContent;
- (void)willSwitchUser;
@end

@implementation SYDDaemon

- (SYDDaemon)init
{
  v3 = [MEMORY[0x277CCAE98] serviceListener];
  v4 = [(SYDDaemon *)self initWithListener:v3];

  return v4;
}

- (SYDDaemon)initWithListener:(id)a3 initialStoreCreation:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24.receiver = self;
  v24.super_class = SYDDaemon;
  v8 = [(SYDDaemon *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_xpcListener, a3);
    [(NSXPCListener *)v9->_xpcListener setDelegate:v9];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncManagersByPersona = v9->_syncManagersByPersona;
    v9->_syncManagersByPersona = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientConnections = v9->_clientConnections;
    v9->_clientConnections = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.kvs.daemon.queue", v14);
    queue = v9->_queue;
    v9->_queue = v15;

    v17 = SYDGetConnectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x277CCAC38] processInfo];
      v19 = [v18 processName];
      v20 = [MEMORY[0x277D77C08] currentPersona];
      v21 = SYDUserPersonaDescription(v20);
      *buf = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_26C384000, v17, OS_LOG_TYPE_INFO, "Welcome to %@ running as %@", buf, 0x16u);
    }

    if (v4)
    {
      [(SYDDaemon *)v9 initializeKnownSyncManagers];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)start
{
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon start];
  }

  [(SYDDaemon *)self registerForPeriodAnalyticsXPCActivity];
  v4 = SYDGetMiscLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon start];
  }

  v5 = [MEMORY[0x277D77BF8] sharedManager];
  [v5 registerUserSyncStakeholder:self withMachServiceName:@"com.apple.syncdefaultsd.usermanager.sync"];

  v6 = [(SYDDaemon *)self xpcListener];
  [v6 activate];
}

- (id)allSyncManagers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = [(SYDDaemon *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__SYDDaemon_allSyncManagers__block_invoke;
  v6[3] = &unk_279D2F6A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __28__SYDDaemon_allSyncManagers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allSyncManagers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_queue_allSyncManagers
{
  v3 = [(SYDDaemon *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(SYDDaemon *)self syncManagersByPersona];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__SYDDaemon__queue_allSyncManagers__block_invoke;
  v9[3] = &unk_279D2F6F0;
  v10 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 allObjects];

  return v7;
}

void __35__SYDDaemon__queue_allSyncManagers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SYDDaemon__queue_allSyncManagers__block_invoke_2;
  v4[3] = &unk_279D2F6C8;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(SYDDaemon *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SYDDaemon_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_279D2F678;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_sync(v6, v9);

  return 1;
}

void __48__SYDDaemon_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Accepting new XPC connection %@", &v8, 0xCu);
  }

  v4 = [[SYDDaemonToClientConnection alloc] initWithXPCConnection:*(a1 + 32) delegate:*(a1 + 40)];
  v5 = SYDGetConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_26C384000, v5, OS_LOG_TYPE_INFO, "Created client connection %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) clientConnections];
  [v6 addObject:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)connection:(id)a3 syncManagerForStoreID:(id)a4 error:(id *)a5
{
  v42[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  if ([v8 supportsTesting])
  {
    goto LABEL_2;
  }

  v11 = SYDContainerID([v9 type], 1);
  v12 = [v9 containerID];
  v13 = [v12 isEqual:v11];

  if ((v13 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not entitled to access store with containerID: %@", v9];
    v19 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42[0] = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v18 = [v19 errorWithDomain:@"SyncedDefaults" code:3333 userInfo:v17];
    goto LABEL_11;
  }

  v14 = [v9 testConfiguration];

  if (v14)
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not entitled to access store with test configuration: %@", v9];
    v16 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40 = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v18 = [v16 errorWithDomain:@"SyncedDefaults" code:3333 userInfo:v17];
LABEL_11:
    *a5 = v18;

    a5 = 0;
    goto LABEL_12;
  }

LABEL_2:
  v10 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SYDDaemon_connection_syncManagerForStoreID_error___block_invoke;
  block[3] = &unk_279D2F718;
  v23 = v9;
  v24 = self;
  v25 = &v27;
  v26 = &v33;
  dispatch_sync(v10, block);

  if (a5)
  {
    *a5 = v34[5];
  }

  a5 = v28[5];
  v11 = v23;
LABEL_12:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  v20 = *MEMORY[0x277D85DE8];

  return a5;
}

void __52__SYDDaemon_connection_syncManagerForStoreID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containerID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = SYDContainerID([*(a1 + 32) type], 1);
  }

  v5 = v4;

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) type];
  v8 = [*(a1 + 32) testConfiguration];
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v6 syncManagerForStoreType:v7 containerID:v5 testConfiguration:v8 createIfNecessary:1 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)connectionDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = [(SYDDaemon *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SYDDaemon_connectionDidInvalidate___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __37__SYDDaemon_connectionDidInvalidate___block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37__SYDDaemon_connectionDidInvalidate___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) clientConnections];
  [v3 removeObject:*(a1 + 32)];
}

- (void)processAccountChanges
{
  v3 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SYDDaemon_processAccountChanges__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_processAccountChanges
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [(SYDDaemon *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26C384000, v3, OS_LOG_TYPE_INFO, "Processing account changes", buf, 2u);
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  *buf = 0;
  v40 = buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(SYDDaemon *)self _queue_allSyncManagers];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v52 count:16];
  if (v5)
  {
    v7 = *v28;
    *&v6 = 138412290;
    v20 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = SYDGetConnectionLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v50 = v20;
          v51 = v9;
          _os_log_debug_impl(&dword_26C384000, v10, OS_LOG_TYPE_DEBUG, "Processing account changes for sync manager %@", v50, 0xCu);
        }

        v11 = [v9 personaUniqueString];
        if (v11)
        {
          v12 = [MEMORY[0x277D77C10] personaAttributesForPersonaUniqueString:v11];
          if (v12)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v12 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
          v11 = [v12 userPersonaUniqueString];
          if (v12)
          {
LABEL_12:
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __35__SYDDaemon__processAccountChanges__block_invoke;
            v26[3] = &unk_279D2F740;
            v26[4] = self;
            v26[5] = v9;
            v26[6] = &v45;
            v26[7] = v31;
            v26[8] = buf;
            v26[9] = &v33;
            SYDPerformWithPersona(v11, v26);
            goto LABEL_17;
          }
        }

        v13 = SYDGetConnectionLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *v50 = v20;
          v51 = v9;
          _os_log_debug_impl(&dword_26C384000, v13, OS_LOG_TYPE_DEBUG, "Persona doesn't exist for sync manager %@", v50, 0xCu);
        }

LABEL_17:
        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v27 objects:v52 count:16];
    }

    while (v5);
  }

  [(SYDDaemon *)self removeInvalidSyncManagers];
  [(SYDDaemon *)self initializeKnownSyncManagers];
  if (*(v46 + 24) == 1)
  {
    v14 = SYDGetConnectionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v50 = 0;
      _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, "The account did change, will notify clients and tell the sync engine", v50, 2u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [(SYDDaemon *)self clientConnections];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v49 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v22 + 1) + 8 * i) notifyAccountDidChangeFromAccountID:*(v40 + 5) toAccountID:v34[5] completionHandler:{0, v20}];
        }

        v16 = [v15 countByEnumeratingWithState:&v22 objects:v49 count:16];
      }

      while (v16);
    }
  }

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v45, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __35__SYDDaemon__processAccountChanges__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 syd_accountIdentifierForCurrentPersona];

  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__SYDDaemon__processAccountChanges__block_invoke_cold_1();
  }

  v5 = (a1 + 40);
  v6 = [*(a1 + 40) coreDataStore];
  v29 = 0;
  v7 = [v6 acAccountIdentifierWithError:&v29];
  v8 = v29;
  if (v8)
  {
    v9 = SYDGetConnectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __35__SYDDaemon__processAccountChanges__block_invoke_cold_2((a1 + 40));
    }

LABEL_6:

    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  if (v7)
  {
    if (v3)
    {
      v22 = [v3 isEqualToString:v7];
      v9 = SYDGetConnectionLog();
      v23 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v22)
      {
        if (v23)
        {
          __35__SYDDaemon__processAccountChanges__block_invoke_cold_4();
        }

        goto LABEL_6;
      }

      if (v23)
      {
        __35__SYDDaemon__processAccountChanges__block_invoke_cold_3();
      }

      [v6 deleteDataForAllStoresWithError:0];
      v26 = v6;
      v27 = v3;
    }

    else
    {
      v25 = SYDGetConnectionLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __35__SYDDaemon__processAccountChanges__block_invoke_cold_5();
      }

      [v6 deleteDataForAllStoresWithError:0];
      v26 = v6;
      v27 = 0;
    }

    [v26 setACAccountIdentifier:v27 error:0];
    v10 = 0;
    v11 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v9 = SYDGetConnectionLog();
  v24 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (!v3)
  {
    if (v24)
    {
      __35__SYDDaemon__processAccountChanges__block_invoke_cold_7();
    }

    goto LABEL_6;
  }

  if (v24)
  {
    __35__SYDDaemon__processAccountChanges__block_invoke_cold_6();
  }

  [v6 clearServerSystemFieldsRecordsForAllStoresWithError:0];
  [v6 setACAccountIdentifier:v3 error:0];
  v10 = 1;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v11 = 1;
LABEL_7:
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v3);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (v11)
  {
    v12 = *(a1 + 32);
    v28 = v10;
    v13 = objc_opt_class();
    v14 = [*(a1 + 40) storeType];
    [*(a1 + 40) container];
    v15 = v6;
    v16 = v7;
    v18 = v17 = v3;
    v19 = [v18 containerID];
    v20 = [*(a1 + 40) testConfiguration];
    v21 = [v13 containerForStoreType:v14 containerID:v19 testConfiguration:v20];

    v3 = v17;
    v7 = v16;
    v6 = v15;
    v5 = (a1 + 40);
    [*(a1 + 40) resetSyncEngineWithContainer:v21];

    v10 = v28;
  }

  if (v10)
  {
    [*v5 markAllKeyValuesAsNeedingToBeUploaded];
  }
}

- (BOOL)syncManager:(id)a3 shouldSyncStoreWithIdentifier:(id)a4
{
  v4 = a4;
  v5 = +[SYDStoreBundleMap sharedInstance];
  v6 = [v5 shouldSyncStoreWithIdentifier:v4];

  return v6;
}

- (id)applicationIdentifiersForStoreIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = +[SYDStoreBundleMap sharedInstance];
        v13 = [v12 bundleIdentifiersForStoreIdentifier:v11];

        if (v13)
        {
          [v5 addObjectsFromArray:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v14 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SYDDaemon_applicationIdentifiersForStoreIdentifiers___block_invoke;
  block[3] = &unk_279D2F768;
  block[4] = self;
  v15 = v6;
  v22 = v15;
  v16 = v5;
  v23 = v16;
  dispatch_sync(v14, block);

  if (![v16 count])
  {
    v17 = SYDGetConnectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemon applicationIdentifiersForStoreIdentifiers:];
    }
  }

  v18 = [v16 allObjects];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __55__SYDDaemon_applicationIdentifiersForStoreIdentifiers___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [*(a1 + 32) clientConnections];
  v3 = [v2 copy];

  obj = v3;
  v22 = [v3 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = [v5 registeredStoreIDs];
        v7 = [v6 copy];

        v8 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v23 + 1) + 8 * j);
              v13 = *(a1 + 40);
              v14 = [v12 identifier];
              LODWORD(v13) = [v13 containsObject:v14];

              if (v13)
              {
                v15 = [v12 identifier];
                v16 = [v5 relatedApplicationsForStoreIdentifier:v15];

                if ([v16 count])
                {
                  [*(a1 + 48) addObjectsFromArray:v16];
                }

                else
                {
                  v17 = SYDGetConnectionLog();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                  {
                    v18 = [v12 identifier];
                    *buf = 138412546;
                    v32 = v18;
                    v33 = 2112;
                    v34 = v5;
                    _os_log_debug_impl(&dword_26C384000, v17, OS_LOG_TYPE_DEBUG, "Found registered store %@, but no application identifier from %@", buf, 0x16u);
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v9);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v22);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)syncManagerLookupKeyForCurrentPersonaWithTestConfiguration:(id)a3
{
  v3 = a3;
  if (!SYDIsDataSeparatedPersona())
  {
    v5 = @"PersonalPersona";
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = [MEMORY[0x277D77C08] currentPersona];
  v5 = [v4 userPersonaUniqueString];

  if (v3)
  {
LABEL_5:
    v6 = [v3 testServerName];
    v7 = [v3 testDeviceID];
    v8 = [(__CFString *)v5 stringByAppendingFormat:@"::%@::%@", v6, v7];

    v5 = v8;
  }

LABEL_6:

  return v5;
}

- (id)syncManagerForStoreType:(int64_t)a3 containerID:(id)a4 testConfiguration:(id)a5 createIfNecessary:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v85 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  if (SYDCurrentPlatformSupportsStoreType())
  {
    v14 = [objc_opt_class() syncManagerLookupKeyForCurrentPersonaWithTestConfiguration:v13];
    v15 = SYDGetConnectionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v51 = SYDStringForStoreType(a3);
      *buf = 138412802;
      v80 = v14;
      v81 = 2112;
      v82 = v51;
      v83 = 2112;
      v84 = v12;
      _os_log_debug_impl(&dword_26C384000, v15, OS_LOG_TYPE_DEBUG, "Getting sync manager for lookup key=%@ storeType=%@ container=%@", buf, 0x20u);
    }

    v16 = [(SYDDaemon *)self syncManagersByPersona];
    v17 = [v16 objectForKeyedSubscript:v14];

    if (!v17)
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
      v18 = [(SYDDaemon *)self syncManagersByPersona];
      [v18 setObject:v17 forKeyedSubscript:v14];
    }

    v19 = [v17 objectForKeyedSubscript:v12];
    v20 = 0;
    if (v19 || !v8)
    {
      goto LABEL_59;
    }

    v21 = SYDGetConnectionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v80 = v14;
      _os_log_impl(&dword_26C384000, v21, OS_LOG_TYPE_INFO, "No existing sync manager, creating now for lookupKey=%@", buf, 0xCu);
    }

    v22 = [objc_opt_class() containerForStoreType:a3 containerID:v12 testConfiguration:v13];
    v76 = 0;
    v23 = SYDCoreDataStoreURL(v12, v13, &v76);
    v20 = v76;
    v67 = v23;
    if (v20)
    {
      v24 = SYDGetConnectionLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }

      if (a7)
      {
        v25 = v20;
        v19 = 0;
        *a7 = v20;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_58;
    }

    v66 = v22;
    v59 = [v23 checkResourceIsReachableAndReturnError:0];
    if (v59)
    {
      goto LABEL_30;
    }

    v75 = 0;
    v27 = SYDOldCoreDataStoreURL(v12, &v75);
    v28 = v75;
    if (v28)
    {
      v29 = SYDGetConnectionLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }

      v23 = v67;
    }

    v64 = v28;
    v20 = 0;
    if (![v27 checkResourceIsReachableAndReturnError:0])
    {
LABEL_29:

LABEL_30:
      v60 = v14;
      v77 = *MEMORY[0x277CCA1B0];
      v78 = *MEMORY[0x277CCA1A0];
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v33 = [v23 URLByDeletingLastPathComponent];
      v34 = [MEMORY[0x277CCAA00] defaultManager];
      v71 = v20;
      v62 = v33;
      v65 = v32;
      LOBYTE(v33) = [v34 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:v32 error:&v71];
      v35 = v71;

      if ((v33 & 1) == 0)
      {
        v36 = SYDGetConnectionLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
        }
      }

      v37 = [MEMORY[0x277CCAA00] defaultManager];
      v38 = [v62 path];
      v70 = v35;
      v39 = [v37 setAttributes:v65 ofItemAtPath:v38 error:&v70];
      v20 = v70;

      if ((v39 & 1) == 0)
      {
        v40 = SYDGetConnectionLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
        }
      }

      v41 = SYDFileProtectionTypeForStoreType(a3);
      v42 = [[SYDCoreDataStore alloc] initWithURL:v67 fileProtectionType:v41];
      v43 = v42;
      if (!v13)
      {
        [(SYDCoreDataStore *)v42 setShouldSendAnalytics:1];
      }

      v14 = v60;
      if ((v59 & 1) == 0)
      {
        v44 = SYDGetConnectionLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_26C384000, v44, OS_LOG_TYPE_INFO, "Will set initial account identifier", buf, 2u);
        }

        v45 = dispatch_time(0, 500000000);
        v46 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__SYDDaemon_syncManagerForStoreType_containerID_testConfiguration_createIfNecessary_error___block_invoke;
        block[3] = &unk_279D2F678;
        block[4] = self;
        v69 = v43;
        dispatch_after(v45, v46, block);

        v14 = v60;
      }

      if (!a3 && !v13 && (SYDIsDataSeparatedPersona() & 1) == 0)
      {
        [SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:v43 deleteMigratedPlists:1 error:0];
      }

      v19 = [[SYDSyncManager alloc] initWithContainer:v66 coreDataStore:v43 storeType:a3 testConfiguration:v13];
      [(SYDSyncManager *)v19 setDelegate:self];
      [v17 setObject:v19 forKeyedSubscript:v12];
      v47 = SYDGetConnectionLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v80 = v19;
        _os_log_impl(&dword_26C384000, v47, OS_LOG_TYPE_INFO, "Created sync manager %@", buf, 0xCu);
      }

      if (!v13 && ![(SYDDaemon *)self isInitializingSyncManagers])
      {
        v48 = SYDGetConnectionLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
        }
      }

LABEL_56:
      v22 = v66;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    v30 = SYDGetConnectionLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v30, OS_LOG_TYPE_DEFAULT, "Need to migrate old store", buf, 2u);
    }

    v74 = 0;
    v31 = SYDMigrateToDaemonContainerIfNecessary(&v74);
    v20 = v74;
    if (v31)
    {
LABEL_28:
      v23 = v67;
      goto LABEL_29;
    }

    v73 = 0;
    v61 = v27;
    v58 = [v27 checkResourceIsReachableAndReturnError:&v73];
    v52 = v73;
    v72 = 0;
    v57 = [v67 checkResourceIsReachableAndReturnError:&v72];
    v53 = v72;
    if (SYDIsFileNotFoundError(v52))
    {

      v63 = 0;
    }

    else
    {
      v63 = v52;
    }

    v27 = v61;
    if (SYDIsFileNotFoundError(v53))
    {

      v53 = 0;
    }

    if (v63 | v53)
    {
      v54 = SYDGetConnectionLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }
    }

    else
    {
      if ((v58 ^ 1 | v57))
      {
        if ((v58 ^ 1 | v57 ^ 1))
        {
          if ((v58 | v57))
          {
            if ((v58 | v57 ^ 1))
            {
              goto LABEL_28;
            }

            v55 = SYDGetConnectionLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
            }
          }

          else
          {
            v55 = SYDGetConnectionLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
            }
          }
        }

        else
        {
          v55 = SYDGetConnectionLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
          }
        }

        v20 = 0;
        goto LABEL_28;
      }

      v54 = SYDGetConnectionLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        [SYDDaemon syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:];
      }
    }

    if (a7)
    {
      v56 = v20;
      *a7 = v20;
    }

    v19 = 0;
    goto LABEL_56;
  }

  v26 = SYDGetConnectionLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v80) = a3;
    _os_log_impl(&dword_26C384000, v26, OS_LOG_TYPE_DEFAULT, "Not creating sync manager for store type %d because it is not supported", buf, 8u);
  }

  v19 = 0;
  if (a7)
  {
    *a7 = 0;
  }

LABEL_60:

  v49 = *MEMORY[0x277D85DE8];

  return v19;
}

void __91__SYDDaemon_syncManagerForStoreType_containerID_testConfiguration_createIfNecessary_error___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 syd_accountIdentifierForCurrentPersona];

  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_26C384000, v4, OS_LOG_TYPE_INFO, "Setting initial account identifier to %@", &v6, 0xCu);
  }

  [*(a1 + 40) setACAccountIdentifier:v3 error:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initializeKnownSyncManagers
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = os_transaction_create();
  v3 = SYDGetMiscLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon initializeKnownSyncManagers];
  }

  [(SYDDaemon *)self setInitializingSyncManagers:1];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [MEMORY[0x277D77BF8] sharedManager];
  v5 = [v4 listAllPersonaWithAttributes];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 userPersonaType];
        if (v11 <= 6 && ((1 << v11) & 0x45) != 0)
        {
          v13 = [v10 userPersonaUniqueString];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __40__SYDDaemon_initializeKnownSyncManagers__block_invoke;
          v16[3] = &unk_279D2F678;
          v16[4] = v10;
          v16[5] = self;
          SYDPerformWithPersona(v13, v16);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(SYDDaemon *)self setInitializingSyncManagers:0];
  v14 = *MEMORY[0x277D85DE8];
}

void __40__SYDDaemon_initializeKnownSyncManagers__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__SYDDaemon_initializeKnownSyncManagers__block_invoke_cold_1(a1);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = SYDStoreTypesForCurrentPlatform();
  v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 138412290;
    v19 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 integerValue];
        v11 = SYDContainerID(v10, 1);
        if (NSClassFromString(&cfstr_Cktestserver.isa))
        {
          v12 = *(a1 + 40);
          v13 = [objc_opt_class() defaultTestConfiguration];
        }

        else
        {
          v13 = 0;
        }

        v14 = *(a1 + 40);
        v21 = 0;
        v15 = [v14 syncManagerForStoreType:v10 containerID:v11 testConfiguration:v13 createIfNecessary:1 error:{&v21, v19}];
        v16 = v21;

        if (!v15)
        {
          v17 = SYDGetConnectionLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v27 = v16;
            _os_log_error_impl(&dword_26C384000, v17, OS_LOG_TYPE_ERROR, "Error creating sync manager during initialization: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeInvalidSyncManagers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(SYDDaemon *)self syncManagersByPersona];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__SYDDaemon_removeInvalidSyncManagers__block_invoke;
  v10[3] = &unk_279D2F6F0;
  v5 = v3;
  v11 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  if ([v5 count])
  {
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Forgetting about sync managers for account identifiers: %@", buf, 0xCu);
    }

    v7 = [(SYDDaemon *)self syncManagersByPersona];
    v8 = [v5 allObjects];
    [v7 removeObjectsForKeys:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __38__SYDDaemon_removeInvalidSyncManagers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"PersonalPersona"] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2;
    v7[3] = &unk_279D2F790;
    v8 = *(a1 + 32);
    v9 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SYDGetConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2_cold_1();
  }

  v6 = [v4 personaUniqueString];

  if (v6)
  {
    v7 = MEMORY[0x277D77C10];
    v8 = [v4 personaUniqueString];
    v9 = [v7 personaAttributesForPersonaUniqueString:v8];

    v10 = SYDGetConnectionLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_26C384000, v10, OS_LOG_TYPE_INFO, "Persona still exists for sync manager %@", &v13, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_26C384000, v10, OS_LOG_TYPE_INFO, "Persona no longer exists for sync manager %@", &v13, 0xCu);
      }

      [*(a1 + 32) addObject:*(a1 + 40)];
    }
  }

  else
  {
    v9 = SYDGetConnectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2_cold_2();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)containerForStoreType:(int64_t)a3 containerID:(id)a4 testConfiguration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBC230]);
  v10 = v9;
  if (!a3)
  {
    [v9 setUseClearAssetEncryption:1];
  }

  v11 = [MEMORY[0x277D77C08] currentPersona];
  v12 = [v11 userPersonaUniqueString];
  [v10 setPersonaIdentifier:v12];

  if (!v8)
  {
    goto LABEL_11;
  }

  if (!CloudKitTestingLibraryCore())
  {
    if (containerForStoreType_containerID_testConfiguration__onceToken != -1)
    {
      +[SYDDaemon containerForStoreType:containerID:testConfiguration:];
    }

    goto LABEL_11;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v13 = getCKTestServerManagerClass_softClass;
  v25 = getCKTestServerManagerClass_softClass;
  if (!getCKTestServerManagerClass_softClass)
  {
    CloudKitTestingLibraryCore();
    v23[3] = objc_getClass("CKTestServerManager");
    getCKTestServerManagerClass_softClass = v23[3];
    v13 = v23[3];
  }

  v14 = v13;
  _Block_object_dispose(&v22, 8);
  v15 = [v13 sharedManager];
  v16 = [v8 testServerName];
  v17 = [v15 persistedServerWithName:v16];

  v18 = [v8 testDeviceID];
  v19 = [v17 deviceWithDeviceID:v18 error:0 deviceConfigurationBlock:0];

  v20 = [v19 containerWithContainerID:v7 options:v10];

  if (!v20)
  {
LABEL_11:
    v20 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v7 options:v10];
  }

  return v20;
}

void __65__SYDDaemon_containerForStoreType_containerID_testConfiguration___block_invoke()
{
  v0 = SYDGetMiscLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __65__SYDDaemon_containerForStoreType_containerID_testConfiguration___block_invoke_cold_1();
  }
}

+ (id)defaultTestConfiguration
{
  v2 = [objc_alloc(MEMORY[0x277D6B890]) initWithTestServerName:@"CloudKeyValues" testDeviceID:@"DefaultDevice"];

  return v2;
}

- (id)allStoreIdentifiersWithError:(id *)a3
{
  v22 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v5 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SYDDaemon_allStoreIdentifiersWithError___block_invoke;
  block[3] = &unk_279D2F6A0;
  block[4] = self;
  block[5] = &v31;
  dispatch_sync(v5, block);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v32[5];
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v7)
  {
    v24 = *v27;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v8);
        v11 = [v10 coreDataStore];
        v25 = v9;
        v12 = [v11 allStoreIdentifiersWithError:&v25];
        v6 = v25;

        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "storeType")}];
        v14 = [v4 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [v12 arrayByAddingObjectsFromArray:v14];

          v12 = v15;
        }

        v16 = [v12 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "storeType")}];
        [v4 setObject:v16 forKeyedSubscript:v17];

        ++v8;
        v9 = v6;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v7);
  }

  if (v22)
  {
    v18 = v6;
    *v22 = v6;
  }

  v19 = [v4 copy];

  _Block_object_dispose(&v31, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __42__SYDDaemon_allStoreIdentifiersWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allSyncManagers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)removeUnitTestSyncManagers
{
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26C384000, v3, OS_LOG_TYPE_INFO, "Removing unit test sync managers in daemon", buf, 2u);
  }

  v4 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = SYDAllStoreTypes();
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = SYDContainerID([*(*(&v14 + 1) + 8 * v7) integerValue], 1);
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) syncManagersByPersona];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_2;
  v12[3] = &unk_279D2F6F0;
  v13 = v2;
  v10 = v2;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_3;
  v10 = &unk_279D2F790;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v7];
  [v4 removeObjectsForKeys:{v6, v7, v8, v9, v10}];
}

void __39__SYDDaemon_removeUnitTestSyncManagers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)registerForPeriodAnalyticsXPCActivity
{
  v3 = SYDGetAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon registerForPeriodAnalyticsXPCActivity];
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke;
  handler[3] = &unk_279D2F7B8;
  handler[4] = self;
  xpc_activity_register("com.apple.kvs.periodic-analytics", v4, handler);
}

void __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    [*(a1 + 32) sendAnalyticsEventForCurrentState];
  }

  else if (!state)
  {
    v5 = SYDGetAnalyticsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke_cold_1();
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v7 = xpc_activity_copy_criteria(v3);
    v8 = v7;
    if (!v7 || !xpc_equal(v7, v6))
    {
      v9 = SYDGetAnalyticsLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __50__SYDDaemon_registerForPeriodAnalyticsXPCActivity__block_invoke_cold_2();
      }

      xpc_activity_set_criteria(v3, v6);
    }
  }
}

- (void)sendAnalyticsEventForCurrentState
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = SYDGetAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon sendAnalyticsEventForCurrentState];
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__1;
  v62 = __Block_byref_object_dispose__1;
  v63 = 0;
  v4 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SYDDaemon_sendAnalyticsEventForCurrentState__block_invoke;
  block[3] = &unk_279D2F6A0;
  block[4] = self;
  block[5] = &v58;
  dispatch_sync(v4, block);

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v59[5];
  v41 = [obj countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (v41)
  {
    v40 = *v54;
    *&v5 = 138412290;
    v38 = v5;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v53 + 1) + 8 * i);
        v6 = [v47 testConfiguration];

        if (!v6)
        {
          v7 = [v47 coreDataStore];
          v8 = [v7 allStoreIdentifiersWithError:0];

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v43 = v8;
          v9 = [v43 countByEnumeratingWithState:&v49 objects:v72 count:16];
          if (v9)
          {
            v46 = 0;
            v44 = *v50;
            do
            {
              v10 = 0;
              v45 = v9;
              do
              {
                if (*v50 != v44)
                {
                  objc_enumerationMutation(v43);
                }

                v11 = *(*(&v49 + 1) + 8 * v10);
                v12 = [v47 coreDataStore];
                v13 = [v12 numberOfKeyValuesInStoreWithIdentifier:v11 error:0];

                v14 = v11;
                v48 = v14;
                if (([(__CFString *)v14 hasPrefix:@"com.apple."]& 1) == 0)
                {
                  v48 = v14;
                  if (arc4random_uniform(0x3E8u) != 13)
                  {

                    v48 = @"ThirdPartyStore";
                  }
                }

                v70[0] = @"containerIdentifier";
                v15 = [v47 container];
                v16 = [v15 containerIdentifier];
                v71[0] = v16;
                v70[1] = @"containerEnvironment";
                v17 = MEMORY[0x277CCABB0];
                v18 = [v47 container];
                v19 = [v18 containerID];
                v20 = [v17 numberWithInteger:{objc_msgSend(v19, "environment")}];
                v71[1] = v20;
                v71[2] = v48;
                v70[2] = @"storeIdentifier";
                v70[3] = @"keyValueCount";
                v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
                v71[3] = v21;
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:4];

                v23 = SYDGetAnalyticsLog();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v67 = v14;
                  v68 = 2112;
                  v69 = v22;
                  _os_log_impl(&dword_26C384000, v23, OS_LOG_TYPE_INFO, "Store state for %@: %@", buf, 0x16u);
                }

                AnalyticsSendEvent();
                v46 += v13;
                ++v10;
              }

              while (v45 != v10);
              v9 = [v43 countByEnumeratingWithState:&v49 objects:v72 count:16];
            }

            while (v9);
          }

          else
          {
            v46 = 0;
          }

          v64[0] = @"containerIdentifier";
          v24 = [v47 container];
          v25 = [v24 containerIdentifier];
          v65[0] = v25;
          v64[1] = @"containerEnvironment";
          v26 = MEMORY[0x277CCABB0];
          v27 = [v47 container];
          v28 = [v27 containerID];
          v29 = [v26 numberWithInteger:{objc_msgSend(v28, "environment")}];
          v65[1] = v29;
          v64[2] = @"storeCount";
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
          v65[2] = v30;
          v64[3] = @"keyValueCount";
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
          v65[3] = v31;
          v64[4] = @"databaseSizeBytes";
          v32 = MEMORY[0x277CCABB0];
          v33 = [v47 coreDataStore];
          v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "fileSizeBytes")}];
          v65[4] = v34;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:5];

          v36 = SYDGetAnalyticsLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = v38;
            v67 = v35;
            _os_log_impl(&dword_26C384000, v36, OS_LOG_TYPE_INFO, "Container state: %@", buf, 0xCu);
          }

          AnalyticsSendEvent();
        }
      }

      v41 = [obj countByEnumeratingWithState:&v53 objects:v73 count:16];
    }

    while (v41);
  }

  _Block_object_dispose(&v58, 8);
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __46__SYDDaemon_sendAnalyticsEventForCurrentState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allSyncManagers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)willSwitchUser
{
  v3 = SYDGetMiscLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemon willSwitchUser];
  }

  v4 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SYDDaemon_willSwitchUser__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __27__SYDDaemon_willSwitchUser__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_allSyncManagers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  v3 = v1;
  if (v2)
  {
    v4 = v2;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasPendingChangesToUpload])
        {

          v7 = SYDGetMiscLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            __27__SYDDaemon_willSwitchUser__block_invoke_cold_1();
          }

          v3 = [MEMORY[0x277D77C28] taskWithName:@"KVSPendingChanges" reason:@"Saving pending records"];
          [v3 begin];
          goto LABEL_13;
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v3 = v1;
  }

LABEL_13:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)uploadContent
{
  v3 = [(SYDDaemon *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SYDDaemon_uploadContent__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __26__SYDDaemon_uploadContent__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __26__SYDDaemon_uploadContent__block_invoke_cold_1();
  }

  v14 = [MEMORY[0x277D77C28] taskWithName:@"KVSUpload" reason:@"Saving pending records"];
  [v14 begin];
  v3 = dispatch_group_create();
  v15 = a1;
  v4 = [*(a1 + 32) _queue_allSyncManagers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = SYDGetMiscLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v9;
          _os_log_debug_impl(&dword_26C384000, v10, OS_LOG_TYPE_DEBUG, "About to upload pending changes in sync bubble for %@", buf, 0xCu);
        }

        dispatch_group_enter(v3);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __26__SYDDaemon_uploadContent__block_invoke_98;
        v18[3] = &unk_279D2F7E0;
        v18[4] = v9;
        v19 = v3;
        [v9 savePendingChangesToCloudForAllStoresWithCompletionHandler:v18];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v11 = [*(v15 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SYDDaemon_uploadContent__block_invoke_100;
  block[3] = &unk_279D2F628;
  v17 = v14;
  v12 = v14;
  dispatch_group_notify(v3, v11, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __26__SYDDaemon_uploadContent__block_invoke_98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetMiscLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __26__SYDDaemon_uploadContent__block_invoke_98_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __26__SYDDaemon_uploadContent__block_invoke_98_cold_2(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __26__SYDDaemon_uploadContent__block_invoke_100(uint64_t a1)
{
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __26__SYDDaemon_uploadContent__block_invoke_100_cold_1();
  }

  return [*(a1 + 32) end];
}

void __37__SYDDaemon_connectionDidInvalidate___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__SYDDaemon__processAccountChanges__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __35__SYDDaemon__processAccountChanges__block_invoke_cold_2(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__SYDDaemon__processAccountChanges__block_invoke_cold_3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)applicationIdentifiersForStoreIdentifiers:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26C384000, v0, OS_LOG_TYPE_ERROR, "Couldn't get store URL to initialize sync manager: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26C384000, v0, OS_LOG_TYPE_ERROR, "Error getting old store URL, not migrating: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Failed to migrate store to daemon container while creating sync manager: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Both the migrated and non-migrated store files exist after migration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Neither the migrated nor non-migrated store files exist after migration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Unrelated error migrating to daemon container while trying to create sync manager: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.7()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error ensuring KVS directory exists: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error ensuring KVS directory has the right attributes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManagerForStoreType:containerID:testConfiguration:createIfNecessary:error:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Should not lazily create sync manager %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__SYDDaemon_initializeKnownSyncManagers__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__SYDDaemon_removeInvalidSyncManagers__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __26__SYDDaemon_uploadContent__block_invoke_98_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __26__SYDDaemon_uploadContent__block_invoke_98_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end