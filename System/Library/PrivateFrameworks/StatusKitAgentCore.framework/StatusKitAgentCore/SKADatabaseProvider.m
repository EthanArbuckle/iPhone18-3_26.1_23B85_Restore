@interface SKADatabaseProvider
+ (id)logger;
- (BOOL)_onQueue_fetchInitialImportState;
- (BOOL)clearPersistentHistoryIfNeeded;
- (BOOL)databaseHasBeenCreated;
- (BOOL)overrideDeviceEncryptionCheck;
- (CKContainer)ckContainer;
- (NSPersistentCloudKitContainer)persistentContainer;
- (SKADatabaseProvider)initWithDelegate:(id)a3;
- (SKADatabaseProvidingDelegate)delegate;
- (id)cloudDatabaseFileURL;
- (id)cloudPersistentStoreDescription;
- (id)createCkContainer;
- (id)createPersistentContainer;
- (id)databaseDirectoryURL;
- (id)existingManagedObjectWithID:(id)a3 managedObjectContext:(id)a4;
- (id)extractModifiedChannelFromPersistentStoreRemoteChangeForChannel:(id)a3 managedObjectContext:(id)a4;
- (id)extractModifiedChannelFromPersistentStoreRemoteChangeForReceivedInvitation:(id)a3 managedObjectContext:(id)a4;
- (id)lastProcessedPersistentHistoryToken;
- (id)lastProcessedPersistentHistoryTokenFileURL;
- (id)localDatabaseFileURL;
- (id)localPersistentStoreDescription;
- (id)newBackgroundContext;
- (void)_onQueue_expireCloudKitVouchers;
- (void)_onQueue_fetchInitialImportState;
- (void)_onQueue_processCloudKitAccountChangedNotification:(id)a3;
- (void)_onQueue_processCloudKitWillResetNotification:(id)a3;
- (void)_onQueue_processPersistentStoreEventChangedNotification:(id)a3;
- (void)_onQueue_processPersistentStoreRemoteChanges;
- (void)createPersistentContainer;
- (void)deviceToDeviceEncryptedDatabaseCapableWithCompletion:(id)a3;
- (void)handleCloudKitAccountChangedNotification:(id)a3;
- (void)handleCloudKitWillResetNotification:(id)a3;
- (void)handlePersistentStoreEventChangedNotification:(id)a3;
- (void)handlePersistentStoreRemoteChangeNotification:(id)a3;
- (void)hasInitialCloudKitImportOccurred:(id)a3;
- (void)lastProcessedPersistentHistoryToken;
- (void)setLastProcessedPersistentHistoryToken:(id)a3;
@end

@implementation SKADatabaseProvider

+ (id)logger
{
  if (logger_onceToken_14 != -1)
  {
    +[SKADatabaseProvider logger];
  }

  v3 = logger__logger_14;

  return v3;
}

- (BOOL)overrideDeviceEncryptionCheck
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"skipHSA2", @"com.apple.StatusKitAgent", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat && AppBooleanValue == 1;
}

- (id)newBackgroundContext
{
  v2 = [(SKADatabaseProvider *)self persistentContainer];
  v3 = [v2 newBackgroundContext];

  return v3;
}

- (NSPersistentCloudKitContainer)persistentContainer
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_persistentContainer)
  {
    v3 = [(SKADatabaseProvider *)v2 createPersistentContainer];
    persistentContainer = v2->_persistentContainer;
    v2->_persistentContainer = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_persistentContainer;

  return v5;
}

- (SKADatabaseProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SKADatabaseProvider;
  v5 = [(SKADatabaseProvider *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x277CBEB18] array];
    importCompletionHandlers = v6->_importCompletionHandlers;
    v6->_importCompletionHandlers = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_DEFAULT, 0);

    v11 = dispatch_queue_create("com.apple.StatusKitAgent.CoreData", v10);
    internalWorkQueue = v6->_internalWorkQueue;
    v6->_internalWorkQueue = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v6 selector:sel_handleCloudKitAccountChangedNotification_ name:*MEMORY[0x277CBBF00] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = *MEMORY[0x277CBE1F0];
    v16 = [(SKADatabaseProvider *)v6 persistentContainer];
    [v14 addObserver:v6 selector:sel_handlePersistentStoreEventChangedNotification_ name:v15 object:v16];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v6 selector:sel_handleCloudKitWillResetNotification_ name:*MEMORY[0x277CBE140] object:0];
  }

  return v6;
}

- (id)createPersistentContainer
{
  v71[1] = *MEMORY[0x277D85DE8];
  v3 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Creating persistent container: %p", &buf, 0xCu);
  }

  v38 = [(SKADatabaseProvider *)self containerName];
  v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = MEMORY[0x277CBE450];
  v71[0] = v39;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
  v37 = [v4 mergedModelFromBundles:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE470]) initWithName:v38 managedObjectModel:v37];
  v7 = [(SKADatabaseProvider *)self localPersistentStoreDescription];
  v70[0] = v7;
  v8 = [(SKADatabaseProvider *)self cloudPersistentStoreDescription];
  v70[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  [v6 setPersistentStoreDescriptions:v9];

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__0;
  v68 = __Block_byref_object_dispose__0;
  v69 = 0;
  v36 = [SKACALogger startLoggingEvent:4 forClient:0];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __48__SKADatabaseProvider_createPersistentContainer__block_invoke;
  v46[3] = &unk_27843E738;
  v49 = &v52;
  p_buf = &buf;
  v47 = v6;
  v48 = self;
  v51 = &v56;
  v40 = v47;
  [v47 loadPersistentStoresWithCompletionHandler:v46];
  v10 = *(*(&buf + 1) + 40);
  if (v10)
  {
    [SKACALogger logFailureWithError:v10 forToken:v36];
  }

  else
  {
    [SKACALogger logSuccessForToken:v36];
  }

  if (v53[3])
  {
    if (_os_feature_enabled_impl())
    {
      v45 = 0;
      v11 = [v40 initializeCloudKitSchemaWithOptions:0 error:&v45];
      v12 = v45;
      if (v11)
      {
        v13 = +[SKADatabaseProvider logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 0;
          _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Successfully inited schema", v62, 2u);
        }
      }

      else
      {
        v13 = +[SKADatabaseProvider logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SKADatabaseProvider createPersistentContainer];
        }
      }
    }

    if (*(v57 + 24) == 1)
    {
      v16 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SKADatabaseProvider createPersistentContainer];
      }

      [v40 loadPersistentStoresWithCompletionHandler:&__block_literal_global_14];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [v40 persistentStoreCoordinator];
    v18 = [v17 persistentStores];

    v19 = [v18 countByEnumeratingWithState:&v41 objects:v64 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = *v42;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v41 + 1) + 8 * i);
          v25 = [v24 configurationName];
          v26 = [v25 isEqualToString:@"Local"];

          if (v26)
          {
            v27 = +[SKADatabaseProvider logger];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v24 URL];
              *v62 = 138412290;
              v63 = v28;
              _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Found local store: %@", v62, 0xCu);
            }

            v21 = 1;
          }

          else
          {
            v29 = [v24 configurationName];
            v30 = [v29 isEqualToString:@"Cloud"];

            if (v30)
            {
              v27 = +[SKADatabaseProvider logger];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v31 = [v24 URL];
                *v62 = 138412290;
                v63 = v31;
                _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Found cloud store: %@", v62, 0xCu);
              }

              v20 = 1;
            }

            else
            {
              v27 = +[SKADatabaseProvider logger];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v32 = [v24 URL];
                [(SKADatabaseProvider *)v32 createPersistentContainer:v60];
              }
            }
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v41 objects:v64 count:16];
      }

      while (v19);
      if (v20 & v21)
      {
        v33 = v40;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v15 = v33;
  }

  else
  {
    v14 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseProvider createPersistentContainer];
    }

    v15 = 0;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  v34 = *MEMORY[0x277D85DE8];

  return v15;
}

void __48__SKADatabaseProvider_createPersistentContainer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v7 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__SKADatabaseProvider_createPersistentContainer__block_invoke_cold_1();
    }

    v8 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __48__SKADatabaseProvider_createPersistentContainer__block_invoke_cold_2(v5);
    }

    v9 = [*(a1 + 32) persistentStoreCoordinator];
    v10 = [v5 URL];
    v11 = [v5 type];
    v12 = [v5 options];
    v17 = 0;
    v13 = [v9 destroyPersistentStoreAtURL:v10 withType:v11 options:v12 error:&v17];
    v14 = v17;

    if (v13)
    {
      [*(a1 + 40) setLastProcessedPersistentHistoryToken:0];
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      v15 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __48__SKADatabaseProvider_createPersistentContainer__block_invoke_cold_3(v5);
      }
    }
  }

  else
  {
    v14 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Completed loading of persistent store: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __48__SKADatabaseProvider_createPersistentContainer__block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = +[SKADatabaseProvider logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__SKADatabaseProvider_createPersistentContainer__block_invoke_27_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Completed loading of persistent store: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)hasInitialCloudKitImportOccurred:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SKADatabaseProvider_hasInitialCloudKitImportOccurred___block_invoke;
  v7[3] = &unk_27843E780;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalWorkQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__SKADatabaseProvider_hasInitialCloudKitImportOccurred___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained onQueue_isInitialImportDBStateQueryable])
  {
    [*(a1 + 32) _onQueue_fetchInitialImportState];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v2 = [WeakRetained importCompletionHandlers];
    v3 = _Block_copy(*(a1 + 40));
    [v2 addObject:v3];
  }
}

- (CKContainer)ckContainer
{
  v2 = self;
  objc_sync_enter(v2);
  ckContainer = v2->_ckContainer;
  if (!ckContainer)
  {
    v4 = [(SKADatabaseProvider *)v2 createCkContainer];
    v5 = v2->_ckContainer;
    v2->_ckContainer = v4;

    ckContainer = v2->_ckContainer;
  }

  v6 = ckContainer;
  objc_sync_exit(v2);

  return v6;
}

- (id)createCkContainer
{
  v3 = objc_alloc(MEMORY[0x277CBC220]);
  v4 = [(SKADatabaseProvider *)self ckContainerIdentifier];
  v5 = [v3 initWithContainerIdentifier:v4 environment:1];

  v6 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v5];

  return v6;
}

- (id)databaseDirectoryURL
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v4 = [v3 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v12];

  v5 = [v4 URLByAppendingPathComponent:@"StatusKit" isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:@"database" isDirectory:1];
  v7 = [(SKADatabaseProvider *)self fileManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(SKADatabaseProvider *)self fileManager];
    [v10 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v6;
}

- (id)localDatabaseFileURL
{
  v2 = [(SKADatabaseProvider *)self databaseDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"statuskit-local-v1.db" isDirectory:0];

  return v3;
}

- (id)cloudDatabaseFileURL
{
  v2 = [(SKADatabaseProvider *)self databaseDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"statuskit-cloud.db" isDirectory:0];

  return v3;
}

- (id)lastProcessedPersistentHistoryTokenFileURL
{
  v2 = [(SKADatabaseProvider *)self databaseDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"lastProcessedPersistentHistoryToken.data" isDirectory:0];

  return v3;
}

- (id)localPersistentStoreDescription
{
  v2 = [(SKADatabaseProvider *)self localDatabaseFileURL];
  v3 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v2];
  [v3 setType:*MEMORY[0x277CBE2E8]];
  [v3 setConfiguration:@"Local"];
  [v3 setShouldAddStoreAsynchronously:0];
  [v3 setOption:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CBE210]];
  v4 = MEMORY[0x277CBEC38];
  [v3 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE1D8]];
  [v3 setOption:v4 forKey:*MEMORY[0x277CBE178]];

  return v3;
}

- (id)cloudPersistentStoreDescription
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [(SKADatabaseProvider *)self cloudDatabaseFileURL];
  v4 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v3];
  [v4 setType:*MEMORY[0x277CBE2E8]];
  [v4 setShouldAddStoreAsynchronously:0];
  v5 = [(SKADatabaseProvider *)self ckContainerIdentifier];
  v6 = [objc_alloc(MEMORY[0x277CBE498]) initWithContainerIdentifier:v5];
  [v6 setUseDeviceToDeviceEncryption:1];
  [v6 setApsConnectionMachServiceName:@"com.apple.aps.StatusKit.CloudKitMirroring"];
  [v6 setOperationMemoryThresholdBytes:&unk_2833EBA98];
  v7 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v7 setQualityOfService:25];
  v8 = objc_alloc(MEMORY[0x277CBE478]);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Setup Voucher", @"statuskit-cloud.db"];
  v10 = [v8 initWithLabel:v9 forEventsOfType:1 withConfiguration:v7 affectingObjectsMatching:0];

  v18[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v6 setActivityVouchers:v11];

  v12 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Boosting import priority with voucher: %@", buf, 0xCu);
  }

  [v4 setCloudKitContainerOptions:v6];
  [v4 setConfiguration:@"Cloud"];
  v13 = MEMORY[0x277CBEC38];
  [v4 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE210]];
  [v4 setOption:v13 forKey:*MEMORY[0x277CBE1D8]];
  [v4 setOption:v13 forKey:*MEMORY[0x277CBE178]];

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)extractModifiedChannelFromPersistentStoreRemoteChangeForChannel:(id)a3 managedObjectContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 changeType];
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v10 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring delete channel change: %@", &v17, 0xCu);
      }
    }

    else
    {
      v10 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [SKADatabaseProvider extractModifiedChannelFromPersistentStoreRemoteChangeForChannel:managedObjectContext:];
      }
    }

    v13 = 0;
  }

  else
  {
    v9 = [v6 changedObjectID];
    v10 = [(SKADatabaseProvider *)self existingManagedObjectWithID:v9 managedObjectContext:v7];

    v11 = +[SKADatabaseProvider logger];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v17 = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Have channel matching persistent history change. Channel: %@ Change: %@", &v17, 0x16u);
      }

      v10 = v10;
      v13 = v10;
    }

    else
    {
      if (v12)
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Could not find channel matching persisent history change: %@", &v17, 0xCu);
      }

      v13 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)extractModifiedChannelFromPersistentStoreRemoteChangeForReceivedInvitation:(id)a3 managedObjectContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 changeType];
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v10 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring delete received invitation change: %@", &v19, 0xCu);
      }
    }

    else
    {
      v10 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [SKADatabaseProvider extractModifiedChannelFromPersistentStoreRemoteChangeForChannel:managedObjectContext:];
      }
    }

    v15 = 0;
  }

  else
  {
    v9 = [v6 changedObjectID];
    v10 = [(SKADatabaseProvider *)self existingManagedObjectWithID:v9 managedObjectContext:v7];

    v11 = +[SKADatabaseProvider logger];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v19 = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Have received invitation matching persistent history change. ReceivedInvitation: %@ Change: %@", &v19, 0x16u);
      }

      v11 = [v10 channel];
      v13 = +[SKADatabaseProvider logger];
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412546;
          v20 = v11;
          v21 = 2112;
          v22 = v6;
          _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "ReceivedInvitation matching persistent history change has channel. Channel: %@ Change: %@", &v19, 0x16u);
        }

        v11 = v11;
        v15 = v11;
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SKADatabaseProvider extractModifiedChannelFromPersistentStoreRemoteChangeForReceivedInvitation:managedObjectContext:];
        }

        v15 = 0;
      }
    }

    else
    {
      if (v12)
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Could not find encryption key matching persisent history change: %@", &v19, 0xCu);
      }

      v15 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)existingManagedObjectWithID:(id)a3 managedObjectContext:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v4 = [a4 existingObjectWithID:a3 error:&v12];
  v5 = v12;
  v6 = v5;
  if (!v4)
  {
    v7 = [v5 domain];
    if ([v7 isEqual:*MEMORY[0x277CCA050]])
    {
      v8 = [v6 code];

      if (v8 == 133000)
      {
        v9 = +[SKADatabaseProvider logger];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v6;
          _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Did not find object matching change history event. Object has already been deleted. Error: %@", buf, 0xCu);
        }

LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseProvider existingManagedObjectWithID:managedObjectContext:];
    }

    goto LABEL_9;
  }

LABEL_10:

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_onQueue_expireCloudKitVouchers
{
  v37 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(SKADatabaseProvider *)self persistentContainer];
  v4 = [v3 persistentStoreDescriptions];

  v5 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v22 = *v30;
    do
    {
      v8 = 0;
      v23 = v6;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v24 = v8;
        v9 = *(*(&v29 + 1) + 8 * v8);
        v10 = [v9 URL];
        v11 = [(SKADatabaseProvider *)self cloudDatabaseFileURL];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = [v9 cloudKitContainerOptions];
          v14 = [v13 activityVouchers];

          v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v25 + 1) + 8 * i);
                v20 = +[SKADatabaseProvider logger];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v34 = v19;
                  _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Expiring voucher %@", buf, 0xCu);
                }

                [(NSPersistentCloudKitContainer *)self->_persistentContainer expireActivityVoucher:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
            }

            while (v16);
          }

          v7 = v22;
          v6 = v23;
        }

        v8 = v24 + 1;
      }

      while (v24 + 1 != v6);
      v6 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_onQueue_fetchInitialImportState
{
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  if (self->_onQueue_isInitialImportDBStateQueryable)
  {
    onQueue_hasInitialCloudKitImportOccurred = self->_onQueue_hasInitialCloudKitImportOccurred;
    if (!onQueue_hasInitialCloudKitImportOccurred)
    {
      v4 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Fetching NSPersistentCloudKitContainerEvents for first import check", buf, 2u);
      }

      v5 = [MEMORY[0x277CBE488] fetchRequestForEvents];
      v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(succeeded == YES) AND (type == %ld) AND (endDate != nil)", 1];
      [v5 setPredicate:v6];

      v7 = [MEMORY[0x277CBE488] fetchEventsMatchingFetchRequest:v5];
      [v7 setResultType:1];
      v8 = [(SKADatabaseProvider *)self persistentContainer];
      v9 = [v8 persistentStoreCoordinator];
      v10 = [v9 persistentStores];
      [v7 setAffectedStores:v10];

      *buf = 0;
      v24 = buf;
      v25 = 0x2020000000;
      v26 = 0;
      v11 = [(SKADatabaseProvider *)self persistentContainer];
      v12 = [v11 newBackgroundContext];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __55__SKADatabaseProvider__onQueue_fetchInitialImportState__block_invoke;
      v19[3] = &unk_27843E558;
      v13 = v12;
      v20 = v13;
      v14 = v7;
      v21 = v14;
      v22 = buf;
      [v13 performBlockAndWait:v19];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v24[24]];
      v16 = self->_onQueue_hasInitialCloudKitImportOccurred;
      self->_onQueue_hasInitialCloudKitImportOccurred = v15;

      _Block_object_dispose(buf, 8);
      onQueue_hasInitialCloudKitImportOccurred = self->_onQueue_hasInitialCloudKitImportOccurred;
    }

    return [(NSNumber *)onQueue_hasInitialCloudKitImportOccurred BOOLValue];
  }

  else
  {
    v18 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseProvider _onQueue_fetchInitialImportState];
    }

    return 0;
  }
}

void __55__SKADatabaseProvider__onQueue_fetchInitialImportState__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) executeRequest:*(a1 + 40) error:0];
  v2 = [v5 result];
  v3 = [v2 firstObject];
  v4 = [v3 unsignedIntegerValue];

  *(*(*(a1 + 48) + 8) + 24) = v4 != 0;
}

- (id)lastProcessedPersistentHistoryToken
{
  v2 = [(SKADatabaseProvider *)self lastProcessedPersistentHistoryTokenFileURL];
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2];
  if ([v3 length])
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SKADatabaseProvider lastProcessedPersistentHistoryToken];
      }
    }
  }

  else
  {
    v5 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseProvider lastProcessedPersistentHistoryToken];
    }

    v4 = 0;
  }

  return v4;
}

- (void)setLastProcessedPersistentHistoryToken:(id)a3
{
  if (a3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SKADatabaseProvider setLastProcessedPersistentHistoryToken:];
      }
    }

    else if ([v4 length])
    {
      v6 = [(SKADatabaseProvider *)self lastProcessedPersistentHistoryTokenFileURL];
      [v4 writeToURL:v6 atomically:1];
    }

    else
    {
      v6 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SKADatabaseProvider setLastProcessedPersistentHistoryToken:];
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(SKADatabaseProvider *)self lastProcessedPersistentHistoryTokenFileURL];
  v10 = 0;
  [v7 removeItemAtURL:v8 error:&v10];
  v5 = v10;

  if (v5)
  {
    v4 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseProvider setLastProcessedPersistentHistoryToken:];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)deviceToDeviceEncryptedDatabaseCapableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Checking device to device encrypted database capability.", buf, 2u);
  }

  if ([(SKADatabaseProvider *)self overrideDeviceEncryptionCheck])
  {
    v6 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Overriding device-to-device encryption check because default has been set.", buf, 2u);
    }

    v4[2](v4, 1);
  }

  else
  {
    objc_initWeak(buf, self);
    internalWorkQueue = self->_internalWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke;
    block[3] = &unk_27843E780;
    objc_copyWeak(&v10, buf);
    block[4] = self;
    v9 = v4;
    dispatch_async(internalWorkQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained onQueue_accountCheckCompleted])
  {
    (*(a1[5] + 2))(a1[5], [WeakRetained onQueue_accountSupportsDeviceToDeviceEncryption]);
  }

  else
  {
    v3 = [a1[4] ckContainer];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke_2;
    v4[3] = &unk_27843E7D0;
    v4[4] = WeakRetained;
    objc_copyWeak(&v6, a1 + 6);
    v5 = a1[5];
    [v3 accountInfoWithCompletionHandler:v4];

    objc_destroyWeak(&v6);
  }
}

void __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKADatabaseProvider logger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v20 = v6;
      v9 = "Failed to fetch account info: %@";
LABEL_9:
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
    }
  }

  else if (v8)
  {
    v10 = [v5 accountStatus];
    if (v10 > 4)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_27843E840[v10];
    }

    *buf = 138412290;
    v20 = v11;
    v9 = "Account status is: %@";
    goto LABEL_9;
  }

  v12 = [a1[4] internalWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke_78;
  block[3] = &unk_27843E7A8;
  objc_copyWeak(&v18, a1 + 6);
  v16 = v5;
  v17 = a1[5];
  v13 = v5;
  dispatch_async(v12, block);

  objc_destroyWeak(&v18);
  v14 = *MEMORY[0x277D85DE8];
}

void __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke_78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) supportsDeviceToDeviceEncryption];
  [WeakRetained setOnQueue_accountCheckCompleted:1];
  [WeakRetained setOnQueue_accountSupportsDeviceToDeviceEncryption:v3];
  v4 = +[SKADatabaseProvider logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account supports device-to-device encryption", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke_78_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)databaseHasBeenCreated
{
  v3 = [(SKADatabaseProvider *)self fileManager];
  v4 = [(SKADatabaseProvider *)self localDatabaseFileURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  return v6;
}

- (void)handlePersistentStoreRemoteChangeNotification:(id)a3
{
  v4 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Received persistent store remote change notification.", buf, 2u);
  }

  objc_initWeak(buf, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SKADatabaseProvider_handlePersistentStoreRemoteChangeNotification___block_invoke;
  block[3] = &unk_27843E7F8;
  objc_copyWeak(&v7, buf);
  dispatch_async(internalWorkQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __69__SKADatabaseProvider_handlePersistentStoreRemoteChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onQueue_processPersistentStoreRemoteChanges];
}

- (void)handlePersistentStoreEventChangedNotification:(id)a3
{
  v4 = a3;
  v5 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received persistent store event changed notification.", buf, 2u);
  }

  objc_initWeak(buf, self);
  internalWorkQueue = self->_internalWorkQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SKADatabaseProvider_handlePersistentStoreEventChangedNotification___block_invoke;
  v8[3] = &unk_27843E820;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(internalWorkQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __69__SKADatabaseProvider_handlePersistentStoreEventChangedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onQueue_processPersistentStoreEventChangedNotification:*(a1 + 32)];
}

- (void)handleCloudKitWillResetNotification:(id)a3
{
  v4 = a3;
  v5 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received CloudKit will reset sync notification.", buf, 2u);
  }

  objc_initWeak(buf, self);
  internalWorkQueue = self->_internalWorkQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SKADatabaseProvider_handleCloudKitWillResetNotification___block_invoke;
  v8[3] = &unk_27843E820;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(internalWorkQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __59__SKADatabaseProvider_handleCloudKitWillResetNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onQueue_processCloudKitWillResetNotification:*(a1 + 32)];
}

- (void)handleCloudKitAccountChangedNotification:(id)a3
{
  v4 = a3;
  v5 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received CloudKit account changed notification", buf, 2u);
  }

  objc_initWeak(buf, self);
  internalWorkQueue = self->_internalWorkQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SKADatabaseProvider_handleCloudKitAccountChangedNotification___block_invoke;
  v8[3] = &unk_27843E820;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(internalWorkQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __64__SKADatabaseProvider_handleCloudKitAccountChangedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onQueue_processCloudKitAccountChangedNotification:*(a1 + 32)];
}

- (void)_onQueue_processPersistentStoreRemoteChanges
{
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  v3 = [(SKADatabaseProvider *)self persistentContainer];
  v4 = [v3 newBackgroundContext];

  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SKADatabaseProvider__onQueue_processPersistentStoreRemoteChanges__block_invoke;
  v10[3] = &unk_27843E358;
  v10[4] = self;
  v11 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [v7 performBlockAndWait:v10];
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [v6 array];
    [WeakRetained databaseDidReceiveRemoteChangesForChannels:v9];
  }
}

void __67__SKADatabaseProvider__onQueue_processPersistentStoreRemoteChanges__block_invoke(uint64_t a1)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE4C8] fetchRequest];
  v3 = [*(a1 + 32) appTransactionAuthorName];
  v4 = MEMORY[0x277CCAC30];
  v51 = v3;
  v71[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
  v6 = [v4 predicateWithFormat:@"author != %@" argumentArray:v5];

  [v2 setPredicate:v6];
  v49 = [*(a1 + 32) lastProcessedPersistentHistoryToken];
  v7 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:?];
  [v7 setFetchRequest:v2];
  v8 = *(a1 + 40);
  v66 = 0;
  v9 = [v8 executeRequest:v7 error:&v66];
  v10 = v66;
  v11 = [v9 result];
  v12 = v11;
  v50 = v10;
  if (v10)
  {
    v13 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v10;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Recovering from history token expiration: %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:0];

    [v14 setFetchRequest:v2];
    v15 = *(a1 + 40);
    v65 = 0;
    v16 = [v15 executeRequest:v14 error:&v65];
    v17 = v65;

    v18 = [v16 result];

    if (v17)
    {
      v19 = +[SKADatabaseProvider logger];
      v20 = v51;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __67__SKADatabaseProvider__onQueue_processPersistentStoreRemoteChanges__block_invoke_cold_1();
      }

LABEL_36:
      v43 = v49;
      goto LABEL_37;
    }

    v21 = v18;
  }

  else
  {
    v14 = v7;
    v16 = v9;
    v21 = v11;
  }

  v20 = v51;
  if (![v21 count])
  {
    v18 = v21;
    v17 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "History change request found no results.", buf, 2u);
    }

    goto LABEL_36;
  }

  v45 = v16;
  v46 = v14;
  v47 = v6;
  v48 = v2;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v21;
  v54 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (!v54)
  {
    goto LABEL_33;
  }

  v53 = *v62;
  do
  {
    v22 = 0;
    do
    {
      if (*v62 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v56 = v22;
      v23 = *(*(&v61 + 1) + 8 * v22);
      context = objc_autoreleasePoolPush();
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v24 = [v23 changes];
      v25 = [v24 countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v58;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v58 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v57 + 1) + 8 * i);
            v30 = objc_autoreleasePoolPush();
            v31 = [v29 changedObjectID];
            v32 = [v31 entity];
            v33 = [v32 name];

            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            LODWORD(v32) = [v33 isEqualToString:v35];

            if (v32)
            {
              v36 = [*(a1 + 32) extractModifiedChannelFromPersistentStoreRemoteChangeForChannel:v29 managedObjectContext:*(a1 + 40)];
            }

            else
            {
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              v39 = [v33 isEqualToString:v38];

              if (!v39)
              {
                goto LABEL_29;
              }

              v36 = [*(a1 + 32) extractModifiedChannelFromPersistentStoreRemoteChangeForReceivedInvitation:v29 managedObjectContext:*(a1 + 40)];
            }

            v40 = v36;
            if (v36)
            {
              v41 = [v36 identifier];
              if ([v41 length])
              {
                [*(a1 + 48) addObject:v41];
              }
            }

LABEL_29:

            objc_autoreleasePoolPop(v30);
          }

          v26 = [v24 countByEnumeratingWithState:&v57 objects:v67 count:16];
        }

        while (v26);
      }

      objc_autoreleasePoolPop(context);
      v22 = v56 + 1;
    }

    while (v56 + 1 != v54);
    v54 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  }

  while (v54);
LABEL_33:
  v18 = obj;

  v42 = [obj lastObject];
  v17 = [v42 token];

  [*(a1 + 32) setLastProcessedPersistentHistoryToken:v17];
  v6 = v47;
  v2 = v48;
  v20 = v51;
  v43 = v49;
  v16 = v45;
  v14 = v46;
LABEL_37:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_processPersistentStoreEventChangedNotification:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE1F8]];

  v7 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 type];
    if (v8 > 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_27843E868[v8];
    }

    v10 = [v6 endDate];
    *buf = 138412546;
    v44 = v9;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "%@ notification received: endDate = %@", buf, 0x16u);
  }

  v11 = [v6 type];
  if (v11 == 2)
  {
    if ([v6 succeeded])
    {
      v28 = [v6 endDate];

      if (v28)
      {
        v29 = +[SKADatabaseProvider logger];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v6 endDate];
          v31 = [v30 dateByAddingTimeInterval:-15552000.0];
          *buf = 138412290;
          v44 = v31;
          _os_log_impl(&dword_220099000, v29, OS_LOG_TYPE_DEFAULT, "Export completed, will clear persistent history before %@ in maintenance activity", buf, 0xCu);
        }

        v18 = [v6 endDate];
        CFPreferencesSetAppValue(@"lastDatabaseExportDate", v18, @"com.apple.StatusKitAgent");
        goto LABEL_35;
      }
    }
  }

  else if (v11 == 1)
  {
    v19 = [v6 endDate];

    if (v19)
    {
      [(SKADatabaseProvider *)self _onQueue_expireCloudKitVouchers];
      [(SKADatabaseProvider *)self setOnQueue_isInitialImportDBStateQueryable:1];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = [(SKADatabaseProvider *)self importCompletionHandlers];
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            (*(*(*(&v33 + 1) + 8 * i) + 16))();
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v22);
      }

      v25 = [(SKADatabaseProvider *)self importCompletionHandlers];
      [v25 removeAllObjects];

      v26 = [(SKADatabaseProvider *)self onQueue_hasInitialCloudKitImportOccurred];
      v27 = [v26 BOOLValue];

      if ((v27 & 1) == 0)
      {
        [(SKADatabaseProvider *)self setOnQueue_hasInitialCloudKitImportOccurred:MEMORY[0x277CBEC38]];
        v18 = [(SKADatabaseProvider *)self delegate];
        [v18 initialCloudKitImportReceived:self];
LABEL_35:
      }
    }
  }

  else
  {
    if (v11)
    {
      v18 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SKADatabaseProvider *)v6 _onQueue_processPersistentStoreEventChangedNotification:v18];
      }

      goto LABEL_35;
    }

    v12 = [v6 endDate];

    if (v12)
    {
      [(SKADatabaseProvider *)self setOnQueue_isInitialImportDBStateQueryable:1];
      [(SKADatabaseProvider *)self _onQueue_fetchInitialImportState];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = [(SKADatabaseProvider *)self importCompletionHandlers];
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v13);
            }

            (*(*(*(&v37 + 1) + 8 * j) + 16))();
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v15);
      }

      v18 = [(SKADatabaseProvider *)self importCompletionHandlers];
      [v18 removeAllObjects];
      goto LABEL_35;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearPersistentHistoryIfNeeded
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v3 = CFPreferencesCopyAppValue(@"lastDatabaseExportDate", @"com.apple.StatusKitAgent");
  if (v3 && ([MEMORY[0x277CBEAA8] now], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeIntervalSinceDate:", v3), v6 = v5 > 0.0, v4, v6))
  {
    v7 = [v3 dateByAddingTimeInterval:-15552000.0];
    v8 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v7;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to clear persistent history before %@ (export date: %@)", buf, 0x16u);
    }

    v9 = [(SKADatabaseProvider *)self newBackgroundContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__SKADatabaseProvider_clearPersistentHistoryIfNeeded__block_invoke;
    v15[3] = &unk_27843E558;
    v10 = v7;
    v16 = v10;
    v11 = v9;
    v17 = v11;
    v18 = &v19;
    [v11 performBlockAndWait:v15];
  }

  else
  {
    v10 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "No date found for last database export, will not clear persistent history", buf, 2u);
    }
  }

  v12 = v20[5] == 0;
  _Block_object_dispose(&v19, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __53__SKADatabaseProvider_clearPersistentHistoryIfNeeded__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [MEMORY[0x277CBE4B0] deleteHistoryBeforeDate:*(a1 + 32)];
  [v3 setFetchLimit:10000];
  [v3 setResultType:0];
  v5 = *(a1 + 48);
  v4 = a1 + 48;
  v6 = *(v4 - 8);
  v7 = *(v5 + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeRequest:v3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(*v4 + 8) + 40);
  v10 = +[SKADatabaseProvider logger];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__SKADatabaseProvider_clearPersistentHistoryIfNeeded__block_invoke_cold_1(v2, v4, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v2;
    v13 = [v8 result];
    *buf = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Clearing persistent history before %@ succeeded with result: %@", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_processCloudKitAccountChangedNotification:(id)a3
{
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  v4 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Received CloudKit account changed notification, resetting cached account state", v5, 2u);
  }

  [(SKADatabaseProvider *)self setOnQueue_accountCheckCompleted:0];
  [(SKADatabaseProvider *)self setOnQueue_accountSupportsDeviceToDeviceEncryption:0];
}

- (void)_onQueue_processCloudKitWillResetNotification:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  internalWorkQueue = self->_internalWorkQueue;
  v5 = a3;
  dispatch_assert_queue_V2(internalWorkQueue);
  v6 = +[SKADatabaseProvider logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Received CloudKit reset notification, CloudKit store will be reset synced", buf, 2u);
  }

  v7 = [v5 userInfo];

  v8 = [v7 objectForKey:*MEMORY[0x277CBE138]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 unsignedIntValue]- 1;
      if (v11 > 6)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_27843E880[v11];
      }

      *buf = 138412290;
      v32 = v12;
      _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Resetting CloudKit store for reason: %@", buf, 0xCu);
    }

    if ([v9 unsignedIntValue]== 2)
    {
      [(SKADatabaseProvider *)self setOnQueue_accountCheckCompleted:0];
      [(SKADatabaseProvider *)self setOnQueue_accountSupportsDeviceToDeviceEncryption:0];
      [(SKADatabaseProvider *)self setOnQueue_isInitialImportDBStateQueryable:0];
      [(SKADatabaseProvider *)self setOnQueue_hasInitialCloudKitImportOccurred:0];
      v13 = +[SKADatabaseProvider logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(SKADatabaseProvider *)self localPersistentStoreDescription];
        v15 = [v14 URL];
        *buf = 138412290;
        v32 = v15;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Destroying local store %@", buf, 0xCu);
      }

      v28 = [(SKADatabaseProvider *)self persistentContainer];
      v16 = [v28 persistentStoreCoordinator];
      v17 = [(SKADatabaseProvider *)self localPersistentStoreDescription];
      v18 = [v17 URL];
      v19 = [(SKADatabaseProvider *)self localPersistentStoreDescription];
      v20 = [v19 type];
      v21 = [(SKADatabaseProvider *)self localPersistentStoreDescription];
      v22 = [v21 options];
      v30 = 0;
      v27 = [v16 destroyPersistentStoreAtURL:v18 withType:v20 options:v22 error:&v30];
      v29 = v30;

      v23 = +[SKADatabaseProvider logger];
      v24 = v23;
      if (v27)
      {
        v25 = v29;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_220099000, v24, OS_LOG_TYPE_DEFAULT, "Successfully destroyed local persistent store", buf, 2u);
        }
      }

      else
      {
        v25 = v29;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [SKADatabaseProvider _onQueue_processCloudKitWillResetNotification:?];
        }
      }

      [(SKADatabaseProvider *)self setPersistentContainer:0];
    }
  }

  else
  {
    v9 = +[SKADatabaseProvider logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseProvider _onQueue_processCloudKitWillResetNotification:];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __29__SKADatabaseProvider_logger__block_invoke()
{
  logger__logger_14 = os_log_create("com.apple.StatusKit", "SKADatabaseProvider");

  return MEMORY[0x2821F96F8]();
}

- (SKADatabaseProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createPersistentContainer
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_220099000, log, OS_LOG_TYPE_ERROR, "Unexpected store configuration name: %@", buf, 0xCu);
}

void __48__SKADatabaseProvider_createPersistentContainer__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Failed to load persistent store. Error: %@ Store: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __48__SKADatabaseProvider_createPersistentContainer__block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 URL];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __48__SKADatabaseProvider_createPersistentContainer__block_invoke_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 URL];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __48__SKADatabaseProvider_createPersistentContainer__block_invoke_27_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Failed to load %@ on second attempt due to %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)extractModifiedChannelFromPersistentStoreRemoteChangeForChannel:managedObjectContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_220099000, v0, OS_LOG_TYPE_FAULT, "Unhandled NSPersistentHistoryChangeType: %ld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)extractModifiedChannelFromPersistentStoreRemoteChangeForReceivedInvitation:managedObjectContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "ReceivedInvitation matching persistent history change has not channel. ReceivedInvitation: %@ Change: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)existingManagedObjectWithID:managedObjectContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_fetchInitialImportState
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)lastProcessedPersistentHistoryToken
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLastProcessedPersistentHistoryToken:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLastProcessedPersistentHistoryToken:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setLastProcessedPersistentHistoryToken:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__SKADatabaseProvider_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke_78_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__SKADatabaseProvider__onQueue_processPersistentStoreRemoteChanges__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_processPersistentStoreEventChangedNotification:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 type];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_220099000, a2, OS_LOG_TYPE_FAULT, "Unhandled NSPersistentCloudKitContainerEventType: %ld", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __53__SKADatabaseProvider_clearPersistentHistoryIfNeeded__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_4(&dword_220099000, a2, a3, "Clearing persistent history before %@ failed with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_processCloudKitWillResetNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onQueue_processCloudKitWillResetNotification:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localPersistentStoreDescription];
  v2 = [v1 URL];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end