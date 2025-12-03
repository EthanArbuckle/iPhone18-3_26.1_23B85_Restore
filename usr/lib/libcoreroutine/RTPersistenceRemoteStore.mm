@interface RTPersistenceRemoteStore
- (RTPersistenceRemoteStore)initWithReadOnly:(BOOL)only;
- (id)_createManagedObjectContext;
- (id)createManagedObjectContext;
- (void)updateCurrentDeviceMOIDWithContext:(id)context;
@end

@implementation RTPersistenceRemoteStore

- (RTPersistenceRemoteStore)initWithReadOnly:(BOOL)only
{
  onlyCopy = only;
  v48.receiver = self;
  v48.super_class = RTPersistenceRemoteStore;
  v4 = [(RTPersistenceRemoteStore *)&v48 init];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = objc_opt_new();
  notificationHelper = v4->_notificationHelper;
  v4->_notificationHelper = v5;

  objc_initWeak(&location, v4);
  v7 = v4->_notificationHelper;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __45__RTPersistenceRemoteStore_initWithReadOnly___block_invoke;
  v45[3] = &unk_2788C5908;
  objc_copyWeak(&v46, &location);
  [(RTDarwinNotificationHelper *)v7 addObserverForNotificationName:@"kRTPersistenceDeviceIdentityChanged" handler:v45];
  v8 = objc_opt_new();
  v9 = objc_alloc(MEMORY[0x277CBE4D8]);
  latestModel = [v8 latestModel];
  v11 = [v9 initWithManagedObjectModel:latestModel];
  coordinator = v4->_coordinator;
  v4->_coordinator = v11;

  v13 = +[RTPersistenceManager defaultStoresDirectory];
  v14 = [v13 URLByAppendingPathComponent:@"Cache"];
  v15 = [v14 URLByAppendingPathExtension:@"sqlite"];

  v16 = +[RTPersistenceManager defaultStoresDirectory];
  v17 = [v16 URLByAppendingPathComponent:@"Cloud-V2"];
  v18 = [v17 URLByAppendingPathExtension:@"sqlite"];

  v19 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v15];
  v20 = *MEMORY[0x277CBE348];
  [v19 setType:*MEMORY[0x277CBE348]];
  [v19 setConfiguration:@"Cache"];
  [v19 setShouldInferMappingModelAutomatically:1];
  [v19 setShouldMigrateStoreAutomatically:0];
  [v19 setShouldAddStoreAsynchronously:0];
  [v19 setReadOnly:onlyCopy];
  v21 = *MEMORY[0x277CBE340];
  [v19 setOption:@"com.apple.routined.store.cache" forKey:*MEMORY[0x277CBE340]];
  v22 = *MEMORY[0x277CBE328];
  [v19 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE328]];
  v23 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v18];
  [v23 setType:v20];
  [v23 setConfiguration:@"Cloud"];
  [v23 setShouldInferMappingModelAutomatically:1];
  [v23 setShouldMigrateStoreAutomatically:0];
  [v23 setShouldAddStoreAsynchronously:0];
  [v23 setReadOnly:onlyCopy];
  [v23 setOption:@"com.apple.routined.store.cloud" forKey:v21];
  [v23 setOption:MEMORY[0x277CBEC38] forKey:v22];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__125;
  v43 = __Block_byref_object_dispose__125;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__125;
  v37 = __Block_byref_object_dispose__125;
  v38 = 0;
  v24 = v4->_coordinator;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __45__RTPersistenceRemoteStore_initWithReadOnly___block_invoke_5;
  v32[3] = &unk_2788CF0C8;
  v32[4] = &v33;
  [(NSPersistentStoreCoordinator *)v24 addPersistentStoreWithDescription:v19 completionHandler:v32];
  v25 = v4->_coordinator;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __45__RTPersistenceRemoteStore_initWithReadOnly___block_invoke_7;
  v31[3] = &unk_2788CF0C8;
  v31[4] = &v39;
  [(NSPersistentStoreCoordinator *)v25 addPersistentStoreWithDescription:v23 completionHandler:v31];
  if (v34[5] || v40[5])
  {
    v26 = 0;
  }

  else
  {
    _createManagedObjectContext = [(RTPersistenceRemoteStore *)v4 _createManagedObjectContext];
    [(RTPersistenceRemoteStore *)v4 updateCurrentDeviceMOIDWithContext:_createManagedObjectContext];
    currentDeviceManagedObjectId = v4->_currentDeviceManagedObjectId;
    v26 = currentDeviceManagedObjectId != 0;
    if (!currentDeviceManagedObjectId)
    {

      v4 = 0;
    }
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
  if (!v26)
  {
    v27 = 0;
  }

  else
  {
LABEL_6:
    v4 = v4;
    v27 = v4;
  }

  return v27;
}

void __45__RTPersistenceRemoteStore_initWithReadOnly___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _createManagedObjectContext];
    [v3 updateCurrentDeviceMOIDWithContext:v2];

    WeakRetained = v3;
  }
}

void __45__RTPersistenceRemoteStore_initWithReadOnly___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

void __45__RTPersistenceRemoteStore_initWithReadOnly___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (void)updateCurrentDeviceMOIDWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__RTPersistenceRemoteStore_updateCurrentDeviceMOIDWithContext___block_invoke;
    v7[3] = &unk_2788C4A70;
    v8 = contextCopy;
    selfCopy = self;
    [v8 performBlockAndWait:v7];
    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }
  }
}

void __63__RTPersistenceRemoteStore_updateCurrentDeviceMOIDWithContext___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[RTPersistenceManager defaultStoresDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"Cloud-V2"];
  v4 = [v3 URLByAppendingPathExtension:@"sqlite"];

  v5 = [*(a1 + 32) persistentStoreCoordinator];
  v6 = [v5 persistentStoreForURL:v4];

  v7 = [*(a1 + 32) persistentStoreCoordinator];
  v8 = [v7 metadataForPersistentStore:v6];
  v9 = v8;
  if (!v8)
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v10 = [v8 mutableCopy];

  v11 = [v10 objectForKeyedSubscript:@"RTPersistentStoreMetadataDeviceRecordIDKey"];
  v12 = +[RTDeviceMO fetchRequest];
  v13 = MEMORY[0x277CCAC30];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  v15 = [v13 predicateWithFormat:@"identifier == %@", v14];
  [v12 setPredicate:v15];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "fetching device record with identifier %@", buf, 0xCu);
    }
  }

  v17 = *(a1 + 32);
  v24 = 0;
  v18 = [v17 executeFetchRequest:v12 error:&v24];
  v19 = v24;
  if ([v18 count])
  {
    v20 = [v18 firstObject];
    v21 = [v20 objectID];
    v22 = *(a1 + 40);
    v23 = *(v22 + 16);
    *(v22 + 16) = v21;
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v11;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "failed to fetch device record with identifier %@", buf, 0xCu);
    }
  }
}

- (id)_createManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  mergeByPropertyObjectTrumpMergePolicy = [MEMORY[0x277CBE460] mergeByPropertyObjectTrumpMergePolicy];
  [v3 setMergePolicy:mergeByPropertyObjectTrumpMergePolicy];

  [v3 setPersistentStoreCoordinator:self->_coordinator];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  [v3 setTransactionAuthor:processName];

  return v3;
}

- (id)createManagedObjectContext
{
  _createManagedObjectContext = [(RTPersistenceRemoteStore *)self _createManagedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTPersistenceRemoteStore_createManagedObjectContext__block_invoke;
  v7[3] = &unk_2788C4A70;
  v4 = _createManagedObjectContext;
  v8 = v4;
  selfCopy = self;
  [v4 performBlockAndWait:v7];
  v5 = v4;

  return v4;
}

void __54__RTPersistenceRemoteStore_createManagedObjectContext__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = *(*(a1 + 40) + 16);
  v5 = @"RTPersistenceDriverUserInfoDeviceMOIDKey";
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:v4];
}

@end