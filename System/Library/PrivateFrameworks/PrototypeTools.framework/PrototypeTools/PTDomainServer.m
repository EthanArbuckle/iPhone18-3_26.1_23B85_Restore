@interface PTDomainServer
- (BOOL)_hasValueChangedFromDefault:(id)a3 forKeypath:(id)a4 settingsClassName:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSDictionary)domainInfoByID;
- (NSDictionary)testRecipeInfoByID;
- (PTDomainServer)init;
- (id)_queue_archiveForDomainID:(id)a3;
- (id)activeTestRecipeID;
- (id)localSettingsOfClass:(Class)a3;
- (id)rootSettingsArchiveForDomainID:(id)a3;
- (id)rootSettingsProxyDefinitionForDomainID:(id)a3;
- (void)_queue_applyArchiveValue:(id)a3 forKeyPath:(id)a4 domainID:(id)a5;
- (void)_queue_invokeOutletAtKeyPath:(id)a3 domainID:(id)a4;
- (void)_queue_persistChanges;
- (void)_queue_removeClient:(id)a3;
- (void)_queue_restoreDefaultsForDomainID:(id)a3;
- (void)_queue_schedulePersistChanges;
- (void)_queue_sendArchiveValue:(id)a3 forKeyPath:(id)a4 domainID:(id)a5;
- (void)_queue_sendRestoreDefaultsForDomainID:(id)a3;
- (void)applyArchiveValue:(id)a3 forKeyPath:(id)a4 domainID:(id)a5 completion:(id)a6;
- (void)applyArchiveValue:(id)a3 forRootSettingsKeyPath:(id)a4 domainID:(id)a5;
- (void)init;
- (void)invokeOutletAtKeyPath:(id)a3 domainID:(id)a4;
- (void)persistChanges;
- (void)registerDomainWithInfo:(id)a3;
- (void)registerRootSettingsProxyDefinition:(id)a3 forDomainID:(id)a4;
- (void)registerTestRecipeWithInfo:(id)a3;
- (void)requestArchiveDictionaryForDomainID:(id)a3 completion:(id)a4;
- (void)restoreDefaultValuesForDomainID:(id)a3;
- (void)restoreDefaultValuesForDomainID:(id)a3 completion:(id)a4;
- (void)sendEvent:(int64_t)a3 forTestRecipeID:(id)a4;
- (void)setActiveTestRecipeID:(id)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)settingsDidRestoreDefaults:(id)a3;
@end

@implementation PTDomainServer

- (PTDomainServer)init
{
  v40 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = PTDomainServer;
  v3 = [(PTDomainServer *)&v35 init];
  if (v3)
  {
    if (__listener)
    {
      [(PTDomainServer *)a2 init];
    }

    _PTMigrateIfNecessary();
    v4 = dispatch_queue_create("com.apple.PrototypeTools.PTSettingsServer", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    unregisteredClients = v3->_unregisteredClients;
    v3->_unregisteredClients = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientsByDomainID = v3->_clientsByDomainID;
    v3->_clientsByDomainID = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    settingsArchivesByDomainID = v3->_settingsArchivesByDomainID;
    v3->_settingsArchivesByDomainID = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loadedDomainIDs = v3->_loadedDomainIDs;
    v3->_loadedDomainIDs = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localSettingsByClassName = v3->_localSettingsByClassName;
    v3->_localSettingsByClassName = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    dirtyDomainIDs = v3->_dirtyDomainIDs;
    v3->_dirtyDomainIDs = v16;

    v18 = _PTReadDomainInfo();
    domainInfoByID = v3->_domainInfoByID;
    v3->_domainInfoByID = v18;

    v20 = _PTReadTestRecipeInfo();
    testRecipeInfoByID = v3->_testRecipeInfoByID;
    v3->_testRecipeInfoByID = v20;

    v22 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(NSMutableDictionary *)v3->_domainInfoByID count];
      v24 = [(NSMutableDictionary *)v3->_testRecipeInfoByID count];
      *buf = 67109376;
      v37 = v23;
      v38 = 1024;
      v39 = v24;
      _os_log_impl(&dword_21E61D000, v22, OS_LOG_TYPE_DEFAULT, "PTDomainServer found %d registered domains and %d registered test recipes", buf, 0xEu);
    }

    v25 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.PrototypeTools.domainserver"];
    v26 = __listener;
    __listener = v25;

    [__listener setDelegate:v3];
    [__listener resume];
    v27 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.PrototypeTools.debugserver"];
    v28 = __debugServerListener;
    __debugServerListener = v27;

    [__debugServerListener setDelegate:v3];
    [__debugServerListener resume];
    v29 = +[PTDefaults sharedInstance];
    v30 = [v29 observeTestRecipeDefaultsOnQueue:MEMORY[0x277D85CD0] withBlock:&__block_literal_global_9];

    v31 = objc_alloc_init(PTParameterRecordsPersistenceManager);
    parameterRecordsPersistenceManager = v3->_parameterRecordsPersistenceManager;
    v3->_parameterRecordsPersistenceManager = v31;

    v33 = [(PTParameterRecordsPersistenceManager *)v3->_parameterRecordsPersistenceManager createParameterRecordsFromArchiveDictionary];
    [(PTDomainServer *)v3 setParameterRecordsOfTunedSettings:v33];
  }

  return v3;
}

void __22__PTDomainServer_init__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PTDomainServerActiveTestRecipeChangedNotification" object:0];
}

- (id)localSettingsOfClass:(Class)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PTDomainServer_localSettingsOfClass___block_invoke;
  block[3] = &unk_27835F078;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__PTDomainServer_localSettingsOfClass___block_invoke(uint64_t a1)
{
  v10 = NSStringFromClass(*(a1 + 48));
  v2 = [*(*(a1 + 32) + 64) objectForKey:?];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) _queue_archiveForDomainID:v10];
    v6 = *(a1 + 48);
    if (v5)
    {
      v7 = [v6 settingsFromArchiveDictionary:v5];
    }

    else
    {
      v7 = [[v6 alloc] initWithDefaultValues];
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(a1 + 32) + 64) setObject:*(*(*(a1 + 40) + 8) + 40) forKey:v10];
    [*(*(*(a1 + 40) + 8) + 40) _setObservationEnabled:1];
    [*(*(*(a1 + 40) + 8) + 40) addKeyPathObserver:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) _setRestoreDefaultsObserver:*(a1 + 32)];
  }
}

- (void)persistChanges
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PTDomainServer_persistChanges__block_invoke;
  block[3] = &unk_27835ED38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NSDictionary)domainInfoByID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__PTDomainServer_domainInfoByID__block_invoke;
  v5[3] = &unk_27835F0A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__PTDomainServer_domainInfoByID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (NSDictionary)testRecipeInfoByID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PTDomainServer_testRecipeInfoByID__block_invoke;
  v5[3] = &unk_27835F0A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__PTDomainServer_testRecipeInfoByID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)rootSettingsProxyDefinitionForDomainID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PTDomainServer_rootSettingsProxyDefinitionForDomainID___block_invoke;
  block[3] = &unk_27835F0C8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__PTDomainServer_rootSettingsProxyDefinitionForDomainID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_proxyDefinitionForDomainID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)rootSettingsArchiveForDomainID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PTDomainServer_rootSettingsArchiveForDomainID___block_invoke;
  block[3] = &unk_27835F0C8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__PTDomainServer_rootSettingsArchiveForDomainID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_archiveForDomainID:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)activeTestRecipeID
{
  v2 = +[PTDefaults sharedInstance];
  v3 = [v2 activeTestRecipeIdentifier];

  return v3;
}

- (void)applyArchiveValue:(id)a3 forRootSettingsKeyPath:(id)a4 domainID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__PTDomainServer_applyArchiveValue_forRootSettingsKeyPath_domainID___block_invoke;
  v15[3] = &unk_27835F0F0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)restoreDefaultValuesForDomainID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PTDomainServer_restoreDefaultValuesForDomainID___block_invoke;
  v7[3] = &unk_27835EC80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)invokeOutletAtKeyPath:(id)a3 domainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PTDomainServer_invokeOutletAtKeyPath_domainID___block_invoke;
  block[3] = &unk_27835ED60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)sendEvent:(int64_t)a3 forTestRecipeID:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PTDomainServer_sendEvent_forTestRecipeID___block_invoke;
  block[3] = &unk_27835F118;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

void __44__PTDomainServer_sendEvent_forTestRecipeID___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  v3 = [v2 domainIdentifier];
  if (v3)
  {
    v4 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PTPrototypingEventShortName(a1[6]);
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_21E61D000, v4, OS_LOG_TYPE_DEFAULT, "Sending '%@' to domain %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [*(a1[4] + 24) objectForKey:{v3, 0}];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v12 + 1) + 8 * v10) remoteObjectProxy];
          [v11 sendActiveTestRecipeEvent:a1[6]];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setActiveTestRecipeID:(id)a3
{
  v4 = a3;
  v5 = +[PTDefaults sharedInstance];
  v6 = [v5 testRecipeIdentifier];
  v7 = [v6 isEqualToString:v4];

  if ((v7 & 1) == 0)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PTDomainServer_setActiveTestRecipeID___block_invoke;
    block[3] = &unk_27835F0C8;
    v17 = &v18;
    block[4] = self;
    v9 = v4;
    v16 = v9;
    dispatch_sync(queue, block);
    if (v9)
    {
      [v5 setTestRecipeIdentifier:v9];
      v10 = [v19[5] recipeDescription];
      [v5 setTestRecipeDescription:v10];

      v11 = [v19[5] events];
      [v5 setTestRecipeEatsVolumeUp:{objc_msgSend(v11, "containsIndex:", 1)}];

      v12 = [v19[5] events];
      [v5 setTestRecipeEatsVolumeDown:{objc_msgSend(v12, "containsIndex:", 2)}];

      v13 = [v19[5] events];
      [v5 setTestRecipeEatsRingerSwitch:{objc_msgSend(v13, "containsIndex:", 3)}];

      v14 = [v19[5] events];
      [v5 setTestRecipeEatsRingerButton:{objc_msgSend(v14, "containsIndex:", 4)}];
    }

    else
    {
      [v5 setTestRecipeIdentifier:0];
      [v5 setTestRecipeDescription:0];
      [v5 setTestRecipeEatsVolumeUp:0];
      [v5 setTestRecipeEatsVolumeDown:0];
      [v5 setTestRecipeEatsRingerSwitch:0];
      [v5 setTestRecipeEatsRingerButton:0];
    }

    _Block_object_dispose(&v18, 8);
  }
}

uint64_t __40__PTDomainServer_setActiveTestRecipeID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)applyArchiveValue:(id)a3 forKeyPath:(id)a4 domainID:(id)a5 completion:(id)a6
{
  v10 = a6;
  [(PTDomainServer *)self applyArchiveValue:a3 forRootSettingsKeyPath:a4 domainID:a5];
  v10[2](v10, 0);
}

- (void)requestArchiveDictionaryForDomainID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = [(PTDomainServer *)self rootSettingsArchiveForDomainID:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (void)restoreDefaultValuesForDomainID:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(PTDomainServer *)self restoreDefaultValuesForDomainID:a3];
  v6[2](v6, 0);
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _archiveValueForKeyPath:v7];
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__PTDomainServer_settings_changedValueForKeyPath___block_invoke;
  v13[3] = &unk_27835F0F0;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(queue, v13);
}

void __50__PTDomainServer_settings_changedValueForKeyPath___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [*(a1 + 40) _queue_applyArchiveValue:*(a1 + 48) forKeyPath:*(a1 + 56) domainID:v3];
}

- (void)settingsDidRestoreDefaults:(id)a3
{
  v4 = a3;
  [v4 addKeyPathObserver:self];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PTDomainServer_settingsDidRestoreDefaults___block_invoke;
  v7[3] = &unk_27835EC80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __45__PTDomainServer_settingsDidRestoreDefaults___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [*(a1 + 40) _queue_restoreDefaultsForDomainID:v3];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PTDomainServer_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_27835ED60;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);

  return 1;
}

uint64_t __53__PTDomainServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == __debugServerListener)
  {
    v7 = PTDebugServerInterface();
    [v2 setExportedInterface:v7];

    [*(a1 + 40) setExportedObject:*(a1 + 48)];
  }

  else
  {
    v3 = PTDomainClientInterface();
    [v2 setRemoteObjectInterface:v3];

    v4 = *(a1 + 40);
    v5 = PTDomainServerInterface();
    [v4 setExportedInterface:v5];

    [*(a1 + 40) setExportedObject:*(a1 + 48)];
    [*(*(a1 + 48) + 16) addObject:*(a1 + 40)];
    objc_initWeak(&location, *(a1 + 40));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__PTDomainServer_listener_shouldAcceptNewConnection___block_invoke_2;
    v9[3] = &unk_27835F140;
    v6 = *(a1 + 40);
    v9[4] = *(a1 + 48);
    objc_copyWeak(&v10, &location);
    [v6 setInvalidationHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return [*(a1 + 40) resume];
}

void __53__PTDomainServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__PTDomainServer_listener_shouldAcceptNewConnection___block_invoke_3;
  v3[3] = &unk_27835F140;
  v3[4] = v1;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

void __53__PTDomainServer_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _queue_removeClient:WeakRetained];
}

- (void)registerDomainWithInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    PTTransactionBegin(@"PTDomainServer domain registration");
    v5 = [MEMORY[0x277CCAE80] currentConnection];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PTDomainServer_registerDomainWithInfo___block_invoke;
    block[3] = &unk_27835ED60;
    v9 = v4;
    v10 = self;
    v11 = v5;
    v7 = v5;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E61D000, v7, OS_LOG_TYPE_DEFAULT, "Attempt to register prototype domain with nil info. Doing nothing.", buf, 2u);
    }
  }
}

void __41__PTDomainServer_registerDomainWithInfo___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] uniqueIdentifier];
  if ([*(a1[5] + 2) containsObject:a1[6]])
  {
    v3 = [*(a1[5] + 3) objectForKey:v2];
    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(a1[5] + 3) setObject:v3 forKey:v2];
    }

    [v3 addObject:a1[6]];
    [*(a1[5] + 2) removeObject:a1[6]];
  }

  v4 = [*(a1[5] + 4) objectForKeyedSubscript:v2];
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = PTLogObjectForTopic(2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *v11 = 138412290;
        *&v11[4] = v2;
        v7 = "Replacing domain info for %@";
LABEL_11:
        _os_log_impl(&dword_21E61D000, v5, OS_LOG_TYPE_DEFAULT, v7, v11, 0xCu);
      }
    }

    else if (v6)
    {
      *v11 = 138412290;
      *&v11[4] = v2;
      v7 = "Adding domain info for %@";
      goto LABEL_11;
    }

    [*(a1[5] + 4) setObject:a1[4] forKey:v2];
    _PTWriteDomainInfo(*(a1[5] + 4));
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_42);
  }

  v8 = [a1[5] _queue_archiveForDomainID:{v2, *v11}];
  v9 = [a1[6] remoteObjectProxy];
  v10 = v9;
  if (v8)
  {
    [v9 updateSettingsFromArchive:v8];
  }

  else
  {
    [v9 restoreDefaultSettings];
  }

  PTTransactionEnd(@"PTDomainServer domain registration");
}

void __41__PTDomainServer_registerDomainWithInfo___block_invoke_40()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PTDomainServerDomainsChangedNotification" object:0];
}

- (void)registerTestRecipeWithInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    PTTransactionBegin(@"PTDomainServer test recipe registration");
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__PTDomainServer_registerTestRecipeWithInfo___block_invoke;
    v7[3] = &unk_27835EC80;
    v8 = v4;
    v9 = self;
    dispatch_async(queue, v7);
    v6 = v8;
  }

  else
  {
    v6 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Attempt to register test recipe with nil info. Doing nothing.", buf, 2u);
    }
  }
}

void __45__PTDomainServer_registerTestRecipeWithInfo___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [*(*(a1 + 40) + 40) objectForKey:v2];
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = PTLogObjectForTopic(2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v7 = 138412290;
        v8 = v2;
        v6 = "Replacing test recipe info for %@";
LABEL_7:
        _os_log_impl(&dword_21E61D000, v4, OS_LOG_TYPE_DEFAULT, v6, &v7, 0xCu);
      }
    }

    else if (v5)
    {
      v7 = 138412290;
      v8 = v2;
      v6 = "Adding test recipe info for %@";
      goto LABEL_7;
    }

    [*(*(a1 + 40) + 40) setObject:*(a1 + 32) forKey:v2];
    _PTWriteTestRecipeInfo(*(*(a1 + 40) + 40));
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_48);
  }

  PTTransactionEnd(@"PTDomainServer test recipe registration");
}

void __45__PTDomainServer_registerTestRecipeWithInfo___block_invoke_46()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PTDomainServerTestRecipesChangedNotification" object:0];
}

- (void)registerRootSettingsProxyDefinition:(id)a3 forDomainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    PTTransactionBegin(@"PTDomainServer proxy definition registration");
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__PTDomainServer_registerRootSettingsProxyDefinition_forDomainID___block_invoke;
    v11[3] = &unk_27835EC80;
    v12 = v6;
    v13 = v8;
    dispatch_async(queue, v11);

    v10 = v12;
  }

  else
  {
    v10 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E61D000, v10, OS_LOG_TYPE_DEFAULT, "Attempt to register proxy definition with either nil definition or nil domainID. Ignoring.", buf, 2u);
    }
  }
}

void __66__PTDomainServer_registerRootSettingsProxyDefinition_forDomainID___block_invoke(uint64_t a1)
{
  _PTWriteSettingsProxyDefinition(*(a1 + 32), *(a1 + 40));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__PTDomainServer_registerRootSettingsProxyDefinition_forDomainID___block_invoke_2;
  v2[3] = &unk_27835EC80;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  PTTransactionEnd(@"PTDomainServer proxy definition registration");
}

void __66__PTDomainServer_registerRootSettingsProxyDefinition_forDomainID___block_invoke_2(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"PTDomainIdentifierKey";
  v4[1] = @"PTDomainSettingsProxyDefinitionKey";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"PTDomainServerSettingsProxyDefinitionChangedNotification" object:0 userInfo:v2];
}

- (id)_queue_archiveForDomainID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_settingsArchivesByDomainID objectForKeyedSubscript:v4];
  if (!v5)
  {
    if (([(NSMutableSet *)self->_loadedDomainIDs containsObject:v4]& 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = _PTReadSettingsArchive(v4);
      [(NSMutableDictionary *)self->_settingsArchivesByDomainID setObject:v5 forKeyedSubscript:v4];
      [(NSMutableSet *)self->_loadedDomainIDs addObject:v4];
    }
  }

  return v5;
}

- (void)_queue_applyArchiveValue:(id)a3 forKeyPath:(id)a4 domainID:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PTDomainServer *)self _queue_archiveForDomainID:v9];
  v11 = [(NSMutableDictionary *)self->_domainInfoByID objectForKeyedSubscript:v9];
  v12 = [v11 settingsClassName];

  if (!v10)
  {
    v10 = [PTSettings emptyArchiveForSettingsClassName:v12];
    [(NSMutableDictionary *)self->_settingsArchivesByDomainID setObject:v10 forKeyedSubscript:v9];
  }

  [PTSettings _applyArchiveValue:v18 forKeyPath:v8 toArchive:v10];
  [(PTDomainServer *)self _queue_sendArchiveValue:v18 forKeyPath:v8 domainID:v9];
  [(NSMutableSet *)self->_dirtyDomainIDs addObject:v9];
  [(PTDomainServer *)self _queue_schedulePersistChanges];
  v13 = [(PTDomainServer *)self _hasValueChangedFromDefault:v18 forKeypath:v8 settingsClassName:v12];
  v14 = [(PTDomainServer *)self parameterRecordsOfTunedSettings];
  v15 = v14;
  if (v13)
  {
    [v14 addRecordWithKeyPath:v8 domainID:v9 recordClassName:v12 value:v18];
  }

  else
  {
    [v14 removeRecordWithKeyPath:v8 domainID:v9];
  }

  parameterRecordsPersistenceManager = self->_parameterRecordsPersistenceManager;
  v17 = [(PTDomainServer *)self parameterRecordsOfTunedSettings];
  [(PTParameterRecordsPersistenceManager *)parameterRecordsPersistenceManager writeToDisk:v17];
}

- (BOOL)_hasValueChangedFromDefault:(id)a3 forKeypath:(id)a4 settingsClassName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(NSClassFromString(a5)) initWithDefaultValues];
  v10 = [v9 valueForKeyPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v7 doubleValue];
    [v10 doubleValue];
    v11 = BSFloatEqualToFloat();
  }

  else
  {
    v11 = [v7 isEqual:v10];
  }

  v12 = v11;

  return v12 ^ 1;
}

- (void)_queue_restoreDefaultsForDomainID:(id)a3
{
  settingsArchivesByDomainID = self->_settingsArchivesByDomainID;
  v5 = a3;
  [(NSMutableDictionary *)settingsArchivesByDomainID removeObjectForKey:v5];
  [(NSMutableSet *)self->_loadedDomainIDs addObject:v5];
  [(PTDomainServer *)self _queue_sendRestoreDefaultsForDomainID:v5];
  [(NSMutableSet *)self->_dirtyDomainIDs addObject:v5];

  [(PTDomainServer *)self _queue_schedulePersistChanges];
}

- (void)_queue_removeClient:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_unregisteredClients removeObject:v4];
  clientsByDomainID = self->_clientsByDomainID;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PTDomainServer__queue_removeClient___block_invoke;
  v7[3] = &unk_27835F168;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)clientsByDomainID enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_queue_schedulePersistChanges
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_persistScheduled)
  {
    PTTransactionBegin(@"PTDomainServer scheduled to persist changes");
    v3 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = 0x4024000000000000;
      _os_log_impl(&dword_21E61D000, v3, OS_LOG_TYPE_DEFAULT, "Will persist changes %gs from now", buf, 0xCu);
    }

    v4 = dispatch_time(0, 10000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PTDomainServer__queue_schedulePersistChanges__block_invoke;
    block[3] = &unk_27835ED38;
    block[4] = self;
    dispatch_after(v4, queue, block);
    self->_persistScheduled = 1;
  }
}

void __47__PTDomainServer__queue_schedulePersistChanges__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_persistChanges];
  *(*(a1 + 32) + 80) = 0;

  PTTransactionEnd(@"PTDomainServer scheduled to persist changes");
}

- (void)_queue_persistChanges
{
  v26 = *MEMORY[0x277D85DE8];
  PTTransactionBegin(@"PTDomainServer persisting changes");
  if ([(NSMutableSet *)self->_dirtyDomainIDs count])
  {
    v3 = [MEMORY[0x277CCAB68] string];
    v4 = [(NSMutableSet *)self->_dirtyDomainIDs allObjects];
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = v5 - 1;
      do
      {
        v9 = [v4 objectAtIndex:v7];
        [v3 appendString:v9];
        if (v7 < v8)
        {
          [v3 appendString:{@", "}];
        }

        ++v7;
      }

      while (v6 != v7);
    }

    v10 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v3;
      _os_log_impl(&dword_21E61D000, v10, OS_LOG_TYPE_DEFAULT, "Persisting changes for domains: %{public}@", buf, 0xCu);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_dirtyDomainIDs;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [(PTDomainServer *)self _queue_archiveForDomainID:v16, v19];
        v18 = v17;
        if (v17)
        {
          _PTWriteSettingsArchive(v17, v16);
        }

        else
        {
          _PTClearSettingsArchive(v16);
        }
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(NSMutableSet *)self->_dirtyDomainIDs removeAllObjects];
  PTTransactionEnd(@"PTDomainServer persisting changes");
}

- (void)_queue_sendArchiveValue:(id)a3 forKeyPath:(id)a4 domainID:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(NSMutableDictionary *)self->_clientsByDomainID objectForKey:a5, 0];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v16 + 1) + 8 * v14) remoteObjectProxy];
        [v15 setArchiveValue:v8 forKeyPath:v9];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)_queue_sendRestoreDefaultsForDomainID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_clientsByDomainID objectForKey:a3, 0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) remoteObjectProxy];
        [v8 restoreDefaultSettings];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_queue_invokeOutletAtKeyPath:(id)a3 domainID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PTLogObjectForTopic(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_21E61D000, v8, OS_LOG_TYPE_DEFAULT, "Invoking outlet %@ in domain %@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(NSMutableDictionary *)self->_clientsByDomainID objectForKey:v7, 0];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v15 + 1) + 8 * v13) remoteObjectProxy];
        [v14 invokeOutletAtKeyPath:v6];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PTDomainServer.m" lineNumber:62 description:@"PTDomainServer should only be instantiated once."];
}

@end