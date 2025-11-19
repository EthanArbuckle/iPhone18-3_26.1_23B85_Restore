@interface RTPersistenceManager
+ (id)defaultModelsDirectory;
+ (id)defaultStoresDirectory;
+ (id)protectedStoreFilesExtensions;
+ (unint64_t)storeTypeForURL:(id)a3;
- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4;
- (BOOL)_setupPersistenceContainers;
- (BOOL)initializeContainer;
- (BOOL)initializePersistenceStores;
- (BOOL)persistenceContextPerformedSave:(id)a3 error:(id *)a4;
- (RTPersistenceDelegate)delegate;
- (RTPersistenceManager)init;
- (RTPersistenceManager)initWithModelsDirectory:(id)a3 storesDirectory:(id)a4;
- (RTPersistenceMirroringDelegate)mirroringDelegate;
- (id)URLForStoreType:(unint64_t)a3;
- (id)historyTokenForStoreType:(unint64_t)a3;
- (id)latestModel;
- (id)managedObjectContext;
- (id)modelFollowingModel:(id)a3;
- (id)modelNamed:(id)a3;
- (id)outstandingContexts;
- (id)persistenceContextWithOptions:(unint64_t)a3;
- (id)persistenceStoreConfigurations;
- (id)persistenceStoreForType:(unint64_t)a3;
- (id)sortedModelNames;
- (id)storeDescriptionForStoreWithType:(unint64_t)a3;
- (id)storeURL;
- (id)urlForModelWithName:(id)a3;
- (id)waitForPersistenceContext;
- (int64_t)mirroringDelegateStateForStoreType:(unint64_t)a3;
- (unint64_t)countOfPersistenceStores;
- (void)_onCoreDataResetSync:(id)a3;
- (void)_schemaUpdateWithModelFile:(id)a3 handler:(id)a4;
- (void)_setupRemoteStoreServers;
- (void)_shutdownWithHandler:(id)a3;
- (void)_updateAvailabilityAfterSetupAttemptWithAvailability:(unint64_t)a3;
- (void)_updateStoreAvailability:(unint64_t)a3;
- (void)createManagedObjectContext:(id)a3;
- (void)dealloc;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)mirroringDelegateSetupState:(id)a3;
- (void)onCoreDataResetSync:(id)a3;
- (void)performExportMirroringRequest:(id)a3;
- (void)performImportMirroringRequest:(id)a3;
- (void)performMirroringRequestOfType:(int64_t)a3 qualityOfService:(int64_t)a4 handler:(id)a5;
- (void)performZoneResetMirroringRequest:(id)a3;
- (void)persistenceContext:(id)a3 encounteredError:(id)a4;
- (void)schemaUpdateWithModelFile:(id)a3 handler:(id)a4;
- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5;
- (void)setupPersistenceContainers:(id)a3;
- (void)tearDownPersistenceStack:(id)a3;
- (void)trackContext:(id)a3;
- (void)updateStoreAvailability:(unint64_t)a3;
@end

@implementation RTPersistenceManager

- (RTPersistenceManager)init
{
  v3 = +[RTPersistenceManager defaultModelsDirectory];
  v4 = +[RTPersistenceManager defaultStoresDirectory];
  v5 = [(RTPersistenceManager *)self initWithModelsDirectory:v3 storesDirectory:v4];

  return v5;
}

- (RTPersistenceManager)initWithModelsDirectory:(id)a3 storesDirectory:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 isFileURL] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTPersistenceManager initWithModelsDirectory:storesDirectory:]";
      v37 = 1024;
      v38 = 162;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: modelsDirectory.isFileURL (in %s:%d)", buf, 0x12u);
    }
  }

  if (([v7 isFileURL] & 1) == 0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTPersistenceManager initWithModelsDirectory:storesDirectory:]";
      v37 = 1024;
      v38 = 163;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: storesDirectory.isFileURL (in %s:%d)", buf, 0x12u);
    }
  }

  if (![v6 isFileURL] || !objc_msgSend(v7, "isFileURL"))
  {
    goto LABEL_18;
  }

  v34.receiver = self;
  v34.super_class = RTPersistenceManager;
  v10 = [(RTNotifier *)&v34 init];
  self = v10;
  if (v10)
  {
    v10->_availability = 0;
    v11 = MEMORY[0x277CBEBC0];
    v12 = [v6 path];
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];
    modelsDirectory = self->_modelsDirectory;
    self->_modelsDirectory = v13;

    v15 = MEMORY[0x277CBEBC0];
    v16 = [v7 path];
    v17 = [v15 fileURLWithPath:v16 isDirectory:1];
    storesDirectory = self->_storesDirectory;
    self->_storesDirectory = v17;

    v19 = objc_opt_new();
    pointerArrayLock = self->_pointerArrayLock;
    self->_pointerArrayLock = v19;

    v21 = objc_opt_new();
    storesArrayLock = self->_storesArrayLock;
    self->_storesArrayLock = v21;

    v23 = objc_opt_new();
    remoteServers = self->_remoteServers;
    self->_remoteServers = v23;

    v25 = [(RTPersistenceManager *)self latestModel];
    if (v25)
    {
      v26 = v25;
      v27 = [MEMORY[0x277CCAB98] defaultCenter];
      [v27 addObserver:self selector:sel_onCoreDataResetSync_ name:*MEMORY[0x277CBE140] object:0];

      v28 = [MEMORY[0x277CCAB98] defaultCenter];
      [v28 addObserver:self selector:sel_onCoreDataResetSync_ name:*MEMORY[0x277CBE130] object:0];

      v29 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      outstandingContexts = self->_outstandingContexts;
      self->_outstandingContexts = v29;

      goto LABEL_14;
    }

    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTPersistenceManager initWithModelsDirectory:storesDirectory:]";
      v37 = 1024;
      v38 = 182;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Expected at least one model in _modelsDirectory (in %s:%d)", buf, 0x12u);
    }

LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

LABEL_14:
  self = self;
  v31 = self;
LABEL_19:

  return v31;
}

- (BOOL)initializePersistenceStores
{
  v3 = 0;
  v4 = 0;
  v18 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v5 = [(RTPersistenceManager *)self storeDescriptionForStoreWithType:v4];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = [[RTPersistenceStore alloc] initWithStoreDescription:v5];
    if (!v7)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "[RTPersistenceManager initializePersistenceStores]";
        v16 = 1024;
        v17 = 214;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Persistence store must not be nil (in %s:%d)", &v14, 0x12u);
      }

      v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v14) = 0;
        _os_log_fault_impl(&dword_2304B3000, v12, OS_LOG_TYPE_FAULT, "Persistence store must not be nil", &v14, 2u);
      }

      return v3;
    }

    v8 = v7;
    [(NSRecursiveLock *)self->_storesArrayLock lock];
    v9 = self->_stores[v4];
    self->_stores[v4] = v8;
    v10 = v8;

    [(NSRecursiveLock *)self->_storesArrayLock unlock];
    v3 = v4++ > 2;
    if (v4 == 4)
    {
      return 1;
    }
  }

  return v3;
}

- (void)_shutdownWithHandler:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RTPersistenceManager;
  [(RTPersistenceManager *)&v4 dealloc];
}

- (BOOL)initializeContainer
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_container)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[RTPersistenceManager initializeContainer]";
      v15 = 1024;
      v16 = 245;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Expected container to be nil (in %s:%d)", &v13, 0x12u);
    }

    if (self->_container)
    {
      WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v13) = 0;
        _os_log_fault_impl(&dword_2304B3000, WeakRetained, OS_LOG_TYPE_FAULT, "Expected container to be nil", &v13, 2u);
      }

      goto LABEL_10;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained != 0;
  if (!WeakRetained)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[RTPersistenceManager initializeContainer]";
      v15 = 1024;
      v16 = 252;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Expected a delegate. (in %s:%d)", &v13, 0x12u);
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_fault_impl(&dword_2304B3000, v6, OS_LOG_TYPE_FAULT, "Expected a delegate.", &v13, 2u);
    }

    goto LABEL_15;
  }

  if ([(RTPersistenceManager *)self initializePersistenceStores])
  {
    v6 = [(RTPersistenceManager *)self persistenceStoreConfigurations];
    v7 = [RTPersistenceContainer alloc];
    v8 = [(RTPersistenceManager *)self latestModel];
    v9 = [(RTPersistenceContainer *)v7 initWithName:@"All" model:v8 configurations:v6];
    container = self->_container;
    self->_container = v9;

    [(RTPersistenceContainer *)self->_container setDelegate:self];
LABEL_15:

    goto LABEL_16;
  }

LABEL_10:
  v5 = 0;
LABEL_16:

  return v5;
}

+ (id)protectedStoreFilesExtensions
{
  v2 = protectedStoreFilesExtensions_cacheFilesExtensions_0;
  if (!protectedStoreFilesExtensions_cacheFilesExtensions_0)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"sqlite", @"sqlite-wal", @"sqlite-shm", 0}];
    v4 = protectedStoreFilesExtensions_cacheFilesExtensions_0;
    protectedStoreFilesExtensions_cacheFilesExtensions_0 = v3;

    v2 = protectedStoreFilesExtensions_cacheFilesExtensions_0;
  }

  return v2;
}

- (void)createManagedObjectContext:(id)a3
{
  v4 = a3;
  container = self->_container;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTPersistenceManager_createManagedObjectContext___block_invoke;
  v7[3] = &unk_2788CC548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(RTPersistenceContainer *)container persistenceContextWithHandler:v7];
}

void __51__RTPersistenceManager_createManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDelegate:v3];
  [*(a1 + 32) trackContext:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)managedObjectContext
{
  v3 = [(RTPersistenceContainer *)self->_container persistenceContext];
  [v3 setDelegate:self];
  [(RTPersistenceManager *)self trackContext:v3];

  return v3;
}

- (id)persistenceContextWithOptions:(unint64_t)a3
{
  v4 = [(RTPersistenceContainer *)self->_container persistenceContextWithOptions:a3];
  [v4 setDelegate:self];
  [(RTPersistenceManager *)self trackContext:v4];

  return v4;
}

- (id)waitForPersistenceContext
{
  v3 = [(RTPersistenceContainer *)self->_container waitForPersistenceContext];
  [v3 setDelegate:self];
  [(RTPersistenceManager *)self trackContext:v3];

  return v3;
}

- (void)trackContext:(id)a3
{
  pointerArrayLock = self->_pointerArrayLock;
  v5 = a3;
  [(NSRecursiveLock *)pointerArrayLock lock];
  [(NSPointerArray *)self->_outstandingContexts addPointer:v5];

  v6 = self->_pointerArrayLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)setupPersistenceContainers:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTPersistenceManager_setupPersistenceContainers___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __51__RTPersistenceManager_setupPersistenceContainers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupPersistenceContainers];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_setupPersistenceContainers
{
  v3 = objc_autoreleasePoolPush();
  if ([(RTPersistenceContainer *)self->_container storesNeedSetup])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "setting up containers", v10, 2u);
      }
    }

    v5 = [(RTPersistenceManager *)self persistenceStoreConfigurations];
    v6 = [(RTPersistenceContainer *)self->_container updateContainerConfigurations:v5];
    container = self->_container;
    if (v6)
    {
      [(RTPersistenceContainer *)container setupPersistenceStores];
    }

    else
    {
      if ([(RTPersistenceContainer *)container storesNeedSetup])
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [(RTPersistenceManager *)self _updateAvailabilityAfterSetupAttemptWithAvailability:v8];
    }
  }

  objc_autoreleasePoolPop(v3);
  return [(RTPersistenceManager *)self availability]== 2;
}

- (void)tearDownPersistenceStack:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RTPersistenceManager_tearDownPersistenceStack___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__RTPersistenceManager_tearDownPersistenceStack___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateStoreAvailability:1];
  [*(*(a1 + 32) + 88) setServeContexts:0];
  v5 = [*(*(a1 + 32) + 88) tearDownPersistenceStack];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)_setupRemoteStoreServers
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  for (i = 0; i != 4; ++i)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [WeakRetained remoteServerOptionsForStoreWithType:i];
      if (v4)
      {
        v5 = [(RTPersistenceManager *)self sortedModelNames];
        v6 = [v5 lastObject];
        v7 = [(RTPersistenceManager *)self urlForModelWithName:v6];

        v8 = [RTPersistenceRemoteStoreServer alloc];
        v9 = [(RTPersistenceManager *)self URLForStoreType:i];
        v10 = [(RTPersistenceRemoteStoreServer *)v8 initWithStoreURL:v9 modelURL:v7 options:v4];

        if (v10 && ([(NSMutableArray *)self->_remoteServers containsObject:v10]& 1) == 0)
        {
          [(NSMutableArray *)self->_remoteServers addObject:v10];
          [(RTPersistenceRemoteStoreServer *)v10 startListening];
        }
      }
    }
  }
}

- (id)URLForStoreType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 >= 4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTPersistenceManager URLForStoreType:]";
      v11 = 1024;
      v12 = 404;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: 0 <= type && type < RTPersistenceStoreTypeCount (in %s:%d)", &v9, 0x12u);
    }
  }

  if (a3 > 3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSURL *)self->_storesDirectory URLByAppendingPathComponent:off_2788CC600[a3]];
    v7 = [v6 URLByAppendingPathExtension:@"sqlite"];
  }

  return v7;
}

+ (unint64_t)storeTypeForURL:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "+[RTPersistenceManager storeTypeForURL:]";
      v11 = 1024;
      v12 = 417;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url (in %s:%d)", &v9, 0x12u);
    }
  }

  v5 = [v3 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];
  if ([v6 isEqualToString:@"Cache"])
  {
    v7 = 0;
  }

  else if ([v6 isEqualToString:@"Cloud-V2"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToString:@"Local"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToString:@"SafetyCache"])
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

- (id)persistenceStoreConfigurations
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v5 = 0;
  *&v6 = 136315394;
  v17 = v6;
  do
  {
    [(NSRecursiveLock *)self->_storesArrayLock lock];
    v7 = self->_stores[v5];
    [(NSRecursiveLock *)self->_storesArrayLock unlock];
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [WeakRetained mirroringOptionsForStoreWithType:v5];
        v9 = [v8 objectForKeyedSubscript:@"RTPersistenceDriverMirroringDelegateOptionsKey"];
        [(RTPersistenceStore *)v7 setMirroringDelegateOptions:v9];
      }

      v10 = [RTPersistenceMigrator alloc];
      v11 = [(RTPersistenceManager *)self delegate];
      v12 = [(RTPersistenceMigrator *)v10 initWithStore:v7 modelProvider:self delegate:v11];
      [(RTPersistenceStore *)v7 setMigrator:v12];

      v13 = [(RTPersistenceStore *)v7 migrator];

      if (!v13)
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = v17;
          v19 = "[RTPersistenceManager persistenceStoreConfigurations]";
          v20 = 1024;
          v21 = 447;
          _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Persistence store migrator must not be nil (in %s:%d)", buf, 0x12u);
        }
      }

      v15 = [[RTPersistenceStoreConfiguration alloc] initWithName:off_2788CC620[v5] readOnly:0 store:v7];
      if (v15)
      {
        [v4 addObject:v15];
      }
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
      {
        *buf = v17;
        v19 = "[RTPersistenceManager persistenceStoreConfigurations]";
        v20 = 1024;
        v21 = 434;
        _os_log_error_impl(&dword_2304B3000, &v15->super, OS_LOG_TYPE_ERROR, "Persistence store must not be nil (in %s:%d)", buf, 0x12u);
      }
    }

    ++v5;
  }

  while (v5 != 4);

  return v4;
}

- (id)storeDescriptionForStoreWithType:(unint64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3 >= 4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTPersistenceManager storeDescriptionForStoreWithType:]";
      v27 = 1024;
      v28 = 464;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: 0 <= type && type < RTPersistenceStoreTypeCount (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = [(RTPersistenceManager *)self URLForStoreType:a3];
  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setShouldAddStoreAsynchronously:0];
    [v7 setShouldMigrateStoreAutomatically:0];
    [v7 setShouldInferMappingModelAutomatically:0];
    [v7 setURL:v6];
    [v7 setType:*MEMORY[0x277CBE2E8]];
    [v7 setOption:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CBE240]];
    [v7 setValue:@"WAL" forPragmaNamed:@"journal_mode"];
    if (a3 - 1 <= 2)
    {
      [v7 setOption:MEMORY[0x277CBEC10] forKey:*MEMORY[0x277CBE210]];
    }

    v8 = [(RTPersistenceManager *)self delegate];
    if (v8)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v9 = 0;
LABEL_21:
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = v9;
        v12 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
                objc_enumerationMutation(v9);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              v17 = [v9 objectForKeyedSubscript:v16, v19];
              [v7 setOption:v17 forKey:v16];
            }

            v13 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
          }

          while (v13);
        }

        v10 = v7;
        goto LABEL_29;
      }

      v23 = 0;
      v9 = [v8 optionsForStoreWithType:a3 error:&v23];
      if (!v23)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[RTPersistenceManager storeDescriptionForStoreWithType:]";
        v27 = 1024;
        v28 = 490;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "no available persistence delegate (in %s:%d)", buf, 0x12u);
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v9, OS_LOG_TYPE_FAULT, "no available persistence delegate", buf, 2u);
      }
    }

    v10 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown URL for store type", buf, 2u);
  }

  v10 = 0;
LABEL_30:

  return v10;
}

- (int64_t)mirroringDelegateStateForStoreType:(unint64_t)a3
{
  if (a3 < 4)
  {
    [(NSRecursiveLock *)self->_storesArrayLock lock];
    v7 = [(RTPersistenceStore *)self->_stores[a3] mirroringDelegateState];
    [(NSRecursiveLock *)self->_storesArrayLock unlock];
    return v7;
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: 0 <= storeType && storeType < RTPersistenceStoreTypeCount", v8, 2u);
    }

    return 0;
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTPersistenceManagerNotificationAvailabilityDidChange alloc] initWithAvailability:[(RTPersistenceManager *)self availability]];
    [(RTNotifier *)self postNotification:v10 toObserver:v6];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v13, 0xCu);
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = v7;
      v15 = 2080;
      v16 = "[RTPersistenceManager internalAddObserver:name:]";
      v17 = 1024;
      v18 = 538;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "unhandled notification %@ (in %s:%d)", &v13, 0x1Cu);
    }
  }
}

- (void)updateStoreAvailability:(unint64_t)a3
{
  v5 = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__RTPersistenceManager_updateStoreAvailability___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

uint64_t __48__RTPersistenceManager_updateStoreAvailability___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    [*(*(a1 + 32) + 88) suspendPersistenceStores];
  }

  else if (v2 == 2)
  {
    [*(*(a1 + 32) + 88) resumePersistenceStores];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _updateStoreAvailability:v4];
}

- (void)_updateStoreAvailability:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(RTPersistenceManager *)self availability]!= a3)
  {
    [(RTPersistenceManager *)self setAvailability:a3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(RTPersistenceManager *)self availability];
        v7 = @"Unknown";
        if (v6 == 1)
        {
          v7 = @"Unavailable";
        }

        if (v6 == 2)
        {
          v7 = @"Available";
        }

        v8 = v7;
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "update persistence manager available, %@", &v10, 0xCu);
      }
    }

    v9 = [[RTPersistenceManagerNotificationAvailabilityDidChange alloc] initWithAvailability:[(RTPersistenceManager *)self availability]];
    [(RTNotifier *)self postNotification:v9];
  }
}

- (id)latestModel
{
  latestModel = self->_latestModel;
  if (!latestModel)
  {
    v4 = [(RTPersistenceManager *)self sortedModelNames];
    v5 = [v4 lastObject];
    v6 = [(RTPersistenceManager *)self modelNamed:v5];
    v7 = self->_latestModel;
    self->_latestModel = v6;

    latestModel = self->_latestModel;
  }

  return latestModel;
}

- (id)modelFollowingModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTPersistenceManager *)self sortedModelNames];
    v6 = [v4 versionIdentifiers];
    v7 = [v6 anyObject];

    v8 = [v5 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v5 usingComparator:{"count"), 1536, &__block_literal_global_75}];
    v9 = 0;
    if (v8 < [v5 count])
    {
      v10 = [v5 objectAtIndexedSubscript:v8];
      v9 = [(RTPersistenceManager *)self modelNamed:v10];
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: model", v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)sortedModelNames
{
  v13 = *MEMORY[0x277D85DE8];
  sortedModelNames = self->_sortedModelNames;
  if (!sortedModelNames)
  {
    v4 = [MEMORY[0x277CCAA00] sortedContentsOfDirectoryAtURL:self->_modelsDirectory withExtension:@"mom"];
    if (![v4 count])
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "[RTPersistenceManager sortedModelNames]";
        v11 = 1024;
        v12 = 608;
        _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Expected at least one model in _modelsDirectory (in %s:%d)", &v9, 0x12u);
      }
    }

    v6 = [v4 valueForKeyPath:@"lastPathComponent.stringByDeletingPathExtension"];
    v7 = self->_sortedModelNames;
    self->_sortedModelNames = v6;

    sortedModelNames = self->_sortedModelNames;
  }

  return sortedModelNames;
}

- (id)urlForModelWithName:(id)a3
{
  if (a3)
  {
    v4 = [a3 stringByAppendingPathExtension:@"mom"];
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1 relativeToURL:self->_modelsDirectory];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)modelNamed:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTPersistenceManager *)self urlForModelWithName:v4];
    v6 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v5];
    if (!v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412802;
        v11 = v4;
        v12 = 2080;
        v13 = "[RTPersistenceManager modelNamed:]";
        v14 = 1024;
        v15 = 632;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Model named, %@, doesn't appear to exist. (in %s:%d)", &v10, 0x1Cu);
      }
    }

    v8 = [MEMORY[0x277CBEB98] setWithObject:v4];
    [v6 setVersionIdentifiers:v8];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name", &v10, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)persistenceContext:(id)a3 encounteredError:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  v9 = *MEMORY[0x277CBE2C8];
  v10 = [v8 isEqualToString:*MEMORY[0x277CBE2C8]];

  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_15:
    v23 = [v7 domain];
    v24 = [v23 isEqual:*MEMORY[0x277CCA050]];

    if (!v24)
    {
      goto LABEL_29;
    }

    v25 = [v7 code];
    v17 = 0;
    if (v25 == 256 || v25 == 259)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      if (v25 != 512)
      {
        goto LABEL_29;
      }
    }

LABEL_25:
    v26 = [(RTPersistenceManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v26 persistenceStore:v17 encounteredCriticalError:v7];
    }

    goto LABEL_28;
  }

  v22 = [v7 userInfo];
  v11 = [v22 objectForKeyedSubscript:v9];

  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_3:
  v12 = [v11 intValue];
  if (v12 == 11 || v12 == 26)
  {
    v14 = [v7 userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA170]];

    if (v15)
    {
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15 isDirectory:0];
      [(NSRecursiveLock *)self->_storesArrayLock lock];
      v17 = self->_stores[[RTPersistenceManager storeTypeForURL:v16]];
      [(NSRecursiveLock *)self->_storesArrayLock unlock];
      v18 = [v6 persistentStoreCoordinator];
      v30 = @"RTPersistentStoreMetadataStoreCorruptKey";
      v31[0] = MEMORY[0x277CBEC38];
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v27 = 0;
      [(RTPersistenceStore *)v17 updateMetadata:v19 coordinator:v18 error:&v27];
      v20 = v27;

      if (v20)
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v20;
          _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Failed to update metadata, %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_25;
  }

  if (v12 == 1555)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v15, OS_LOG_TYPE_FAULT, "Save failed due to primary key constraints. Please file a radar with sysdiagnose and wedge diagnose and attach to rdar://50515616", buf, 2u);
    }

LABEL_28:
  }

LABEL_29:
}

- (BOOL)persistenceContextPerformedSave:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mirroringDelegate);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v20 persistentStoreCoordinator];
  v6 = [v5 persistentStores];

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = *MEMORY[0x277CBE258];
    v12 = *MEMORY[0x277CBE250];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 options];
        v16 = [v15 objectForKey:v11];
        v17 = [v16 objectForKey:v12];

        if (v17)
        {
          [WeakRetained performMirroringRequestWithType:1 affectedStore:v14 qualityOfService:objc_msgSend(v20 handler:{"mirroringQualityOfService"), 0}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (void)performMirroringRequestOfType:(int64_t)a3 qualityOfService:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke;
  v10[3] = &unk_2788CC5C0;
  v10[4] = self;
  v11 = v8;
  v12 = a3;
  v13 = a4;
  v9 = v8;
  [(RTPersistenceManager *)self createManagedObjectContext:v10];
}

void __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke(uint64_t a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
    v23 = objc_opt_new();
    group = dispatch_group_create();
    v25 = v3;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = [v3 persistentStoreCoordinator];
    v5 = [v4 persistentStores];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      v9 = *MEMORY[0x277CBE258];
      v10 = *MEMORY[0x277CBE250];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [v12 options];
          v14 = [v13 objectForKey:v9];
          v15 = [v14 objectForKey:v10];

          if (v15)
          {
            dispatch_group_enter(group);
            v16 = *(a1 + 48);
            v17 = *(a1 + 56);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke_93;
            v30[3] = &unk_2788CC598;
            v30[4] = *(a1 + 32);
            v31 = v23;
            v32 = group;
            [WeakRetained performMirroringRequestWithType:v16 affectedStore:v12 qualityOfService:v17 managedObjectContext:v25 handler:v30];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v7);
    }

    v18 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke_3;
    block[3] = &unk_2788C4938;
    v28 = v23;
    v29 = *(a1 + 40);
    v19 = v23;
    v20 = group;
    dispatch_group_notify(group, v18, block);

    v3 = v25;
  }

  else
  {
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"A managed object context is required to perform a mirroring request.";
    WeakRetained = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:7 userInfo:?];
    v21 = *(a1 + 40);
    if (v21)
    {
      (*(v21 + 16))(v21, 0, v20);
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v20;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "invalid managed object context while servicing mirroring request, %@", buf, 0xCu);
    }
  }
}

void __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke_93(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke_2;
  v8[3] = &unk_2788CC570;
  v12 = a2;
  v9 = v5;
  v10 = a1[5];
  v11 = a1[6];
  v7 = v5;
  dispatch_async(v6, v8);
}

void __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

LABEL_5:
    [*(a1 + 40) addObject:?];
    goto LABEL_9;
  }

  if (v2)
  {
    goto LABEL_5;
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:0];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

LABEL_9:
  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void __79__RTPersistenceManager_performMirroringRequestOfType_qualityOfService_handler___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _RTSafeArray();
  v3 = _RTMultiErrorCreate();

  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "multiple errors occurred while servicing mirroring request, %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0, v3);
  }
}

- (void)onCoreDataResetSync:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTPersistenceManager_onCoreDataResetSync___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onCoreDataResetSync:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 name];
  v7 = [v6 isEqualToString:*MEMORY[0x277CBE140]];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v4 userInfo];
        v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBE138]];
        v20 = 134217984;
        v21 = [v10 unsignedIntegerValue];
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "received will reset sync notification, reason %lu", &v20, 0xCu);
      }
    }

    v11 = [v4 userInfo];
    v12 = [(RTPersistenceContainer *)self->_container persistenceContextWithOptions:1];
    [WeakRetained persistenceManagerWillStartResetSync:self userInfo:v11 context:v12];

    [(RTPersistenceContainer *)self->_container suspendPersistenceStores];
    [(RTPersistenceManager *)self _updateStoreAvailability:1];
  }

  else
  {
    v13 = [v4 name];
    v14 = [v13 isEqualToString:*MEMORY[0x277CBE130]];

    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "received did reset sync notification", &v20, 2u);
        }
      }

      v16 = [v4 userInfo];
      [WeakRetained persistenceManagerDidFinishResetSync:self userInfo:v16];

      [(RTPersistenceContainer *)self->_container resumePersistenceStores];
      [(RTPersistenceManager *)self _updateStoreAvailability:2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "initiating import after reset sync", &v20, 2u);
        }
      }

      [(RTPersistenceManager *)self performImportMirroringRequestWithQualityOfService:3 handler:&__block_literal_global_97_0];
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v4 name];
        v20 = 138412802;
        v21 = v19;
        v22 = 2080;
        v23 = "[RTPersistenceManager _onCoreDataResetSync:]";
        v24 = 1024;
        v25 = 858;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "unknown notification name %@ (in %s:%d)", &v20, 0x1Cu);
      }
    }
  }
}

void __45__RTPersistenceManager__onCoreDataResetSync___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "finished import after reset sync, error, %@", &v5, 0xCu);
    }
  }
}

- (id)outstandingContexts
{
  [(NSRecursiveLock *)self->_pointerArrayLock lock];
  v3 = [(NSPointerArray *)self->_outstandingContexts allObjects];
  [(NSRecursiveLock *)self->_pointerArrayLock unlock];

  return v3;
}

- (id)historyTokenForStoreType:(unint64_t)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a3 < 4)
  {
    v3 = [(RTPersistenceManager *)self URLForStoreType:?];
    if (v3)
    {
      v5 = [(RTPersistenceContainer *)self->_container coordinator];
      v6 = [v5 persistentStoreForURL:v3];

      if (v6)
      {
        v7 = [(RTPersistenceContainer *)self->_container coordinator];
        v12[0] = v6;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
        v9 = [v7 currentPersistentHistoryTokenFromStores:v8];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: 0 <= storeType && storeType < RTPersistenceStoreTypeCount", v11, 2u);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)persistenceStoreForType:(unint64_t)a3
{
  if (a3 < 4)
  {
    [(NSRecursiveLock *)self->_storesArrayLock lock];
    v4 = self->_stores[a3];
    [(NSRecursiveLock *)self->_storesArrayLock unlock];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: 0 <= storeType && storeType < RTPersistenceStoreTypeCount", v8, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (unint64_t)countOfPersistenceStores
{
  [(NSRecursiveLock *)self->_storesArrayLock lock];
  [(NSRecursiveLock *)self->_storesArrayLock unlock];
  return 4;
}

+ (id)defaultModelsDirectory
{
  v2 = [MEMORY[0x277CCA8D8] _coreroutineBundle];
  v3 = [v2 URLForResource:@"CoreRoutine" withExtension:@"momd"];

  return v3;
}

+ (id)defaultStoresDirectory
{
  v2 = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateAvailabilityAfterSetupAttemptWithAvailability:(unint64_t)a3
{
  [(RTPersistenceManager *)self _updateStoreAvailability:a3];
  if ([(RTPersistenceManager *)self availability]== 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained persistenceManager:self didFinishSetup:1];
    }

    [(RTPersistenceManager *)self _setupRemoteStoreServers];
  }
}

- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(RTPersistenceManager *)self delegate];
  if (v8)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v19 = 0;
      goto LABEL_28;
    }

    aSelector = a2;
    v28 = a4;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; i != 4; ++i)
    {
      [(NSRecursiveLock *)self->_storesArrayLock lock];
      v11 = self->_stores[i];
      [(NSRecursiveLock *)self->_storesArrayLock unlock];
      if (v11)
      {
        v29 = 0;
        v12 = [v8 copyPersistenceStore:v11 outputURL:v7 error:&v29];
        v13 = v29;
        if ((v12 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v31 = v11;
              v32 = 2112;
              v33 = v13;
              _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "copy persistence store, %@, error, %@", buf, 0x16u);
            }
          }

          if (v13)
          {
            [v9 addObject:v13];
          }
        }
      }
    }

    v15 = _RTSafeArray();
    v16 = _RTMultiErrorCreate();

    if (v28)
    {
      v17 = v16;
      *v28 = v16;
    }

    v18 = [v9 count];
    v19 = v18 == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(aSelector);
        v24 = v23;
        v25 = @"NO:";
        *buf = 138413058;
        v31 = v22;
        v32 = 2112;
        if (!v18)
        {
          v25 = @"YES";
        }

        v33 = v23;
        v34 = 2112;
        v35 = v25;
        v36 = 2112;
        v37 = v16;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@ %@, success, %@, error, %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: strongDelegate", buf, 2u);
    }

    v19 = 0;
  }

LABEL_28:
  return v19;
}

- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTPersistenceManager_sendDiagnosticsToURL_options_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v10;
  v18 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v10;
  dispatch_async(v12, block);
}

void __61__RTPersistenceManager_sendDiagnosticsToURL_options_handler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = *(a1 + 40);
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@ %@, options, %@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) hasMask:1])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v18 = 0;
    v9 = [v7 _generateDiagnosticFilesAtURL:v8 error:&v18];
    v10 = v18;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 64));
        v15 = v14;
        v16 = @"NO";
        *buf = 138413058;
        v20 = v13;
        v21 = 2112;
        if (v9)
        {
          v16 = @"YES";
        }

        v22 = v14;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@ %@, success, %@, error, %@", buf, 0x2Au);
      }
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v10);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)storeURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_storesDirectory;
  objc_sync_exit(v2);

  return v3;
}

- (RTPersistenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RTPersistenceMirroringDelegate)mirroringDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mirroringDelegate);

  return WeakRetained;
}

- (void)performImportMirroringRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__RTPersistenceManager_Internal__performImportMirroringRequest___block_invoke;
  v6[3] = &unk_2788C7D58;
  v7 = v4;
  v5 = v4;
  [(RTPersistenceManager *)self performImportMirroringRequestWithQualityOfService:3 handler:v6];
}

void __64__RTPersistenceManager_Internal__performImportMirroringRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v4)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = [v4 domain];
      v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v4 userInfo:{"code"), 0}];

      v5 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    (*(v5 + 16))(v5, v9);
  }
}

- (void)performExportMirroringRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__RTPersistenceManager_Internal__performExportMirroringRequest___block_invoke;
  v6[3] = &unk_2788C7D58;
  v7 = v4;
  v5 = v4;
  [(RTPersistenceManager *)self performExportMirroringRequestWithQualityOfService:3 handler:v6];
}

void __64__RTPersistenceManager_Internal__performExportMirroringRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v4)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = [v4 domain];
      v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v4 userInfo:{"code"), 0}];

      v5 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    (*(v5 + 16))(v5, v9);
  }
}

- (void)performZoneResetMirroringRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__RTPersistenceManager_Internal__performZoneResetMirroringRequest___block_invoke;
  v6[3] = &unk_2788C7D58;
  v7 = v4;
  v5 = v4;
  [(RTPersistenceManager *)self performZoneResetMirroringRequestWithQualityOfService:3 handler:v6];
}

void __67__RTPersistenceManager_Internal__performZoneResetMirroringRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v4)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = [v4 domain];
      v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v4 userInfo:{"code"), 0}];

      v5 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    (*(v5 + 16))(v5, v9);
  }
}

- (void)_schemaUpdateWithModelFile:(id)a3 handler:(id)a4
{
  v82[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v61 = a4;
  if (!v61)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTPersistenceManager(Internal) _schemaUpdateWithModelFile:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 84;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v60 = v5;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v77 = v5;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@:%@, CloudKit schema update started with modelFile, %@", buf, 0x20u);
      }
    }

    v11 = [objc_alloc(MEMORY[0x277CBE3A0]) initWithContainerIdentifier:@"com.apple.CoreRoutine-3"];
    [v11 setUseDeviceToDeviceEncryption:1];
    [v11 setOperationMemoryThresholdBytes:&unk_2845A0710];
    [v11 setPreserveLegacyRecordMetadataBehavior:1];
    v62 = objc_opt_new();
    [v62 setUseZoneWidePCS:1];
    [v62 setBypassPCSEncryption:0];
    v12 = objc_opt_new();
    [v12 setShouldAddStoreAsynchronously:0];
    [v12 setShouldMigrateStoreAutomatically:0];
    [v12 setShouldInferMappingModelAutomatically:0];
    [v12 setConfiguration:@"Cloud"];
    v13 = [(RTPersistenceManager *)self storeDescriptionForStoreWithType:1];
    v14 = [v13 URL];
    [v12 setURL:v14];

    [v12 setType:*MEMORY[0x277CBE2E8]];
    [v12 setOption:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CBE240]];
    [v12 setValue:@"WAL" forPragmaNamed:@"journal_mode"];
    [v12 setOption:MEMORY[0x277CBEC10] forKey:*MEMORY[0x277CBE210]];
    v57 = [objc_alloc(MEMORY[0x277CBE398]) initWithOptions:v11];
    [v12 setOption:v57 forMirroringKey:*MEMORY[0x277CBE250]];
    v15 = objc_alloc(MEMORY[0x277CBE450]);
    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v60];
    v56 = [v15 initWithContentsOfURL:v16];

    v58 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v56];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        *&buf[22] = 2112;
        v77 = v12;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@:%@, CloudKit schema update in progress - NSPersistentStoreCoordinator initialized with description, %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v77 = __Block_byref_object_copy__191;
    v78 = __Block_byref_object_dispose__191;
    v79 = 0;
    v21 = dispatch_semaphore_create(0);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __69__RTPersistenceManager_Internal___schemaUpdateWithModelFile_handler___block_invoke;
    v68[3] = &unk_2788D2C70;
    v70 = buf;
    v22 = v21;
    v69 = v22;
    [v58 addPersistentStoreWithDescription:v12 completionHandler:v68];
    v23 = v22;
    v24 = [MEMORY[0x277CBEAA8] now];
    v25 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v23, v25))
    {
      v26 = [MEMORY[0x277CBEAA8] now];
      [v26 timeIntervalSinceDate:v24];
      v28 = v27;
      v29 = objc_opt_new();
      v30 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_151];
      v31 = [MEMORY[0x277CCACC8] callStackSymbols];
      v32 = [v31 filteredArrayUsingPredicate:v30];
      v33 = [v32 firstObject];

      [v29 submitToCoreAnalytics:v33 type:1 duration:v28];
      v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *v71 = 0;
        _os_log_fault_impl(&dword_2304B3000, v34, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v71, 2u);
      }

      v35 = MEMORY[0x277CCA9B8];
      v82[0] = *MEMORY[0x277CCA450];
      *v71 = @"semaphore wait timeout";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v82 count:1];
      v37 = [v35 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v36];

      if (v37)
      {
        v38 = v37;
      }
    }

    else
    {
      v37 = 0;
    }

    v39 = v37;
    if (v39)
    {
      objc_storeStrong((*&buf[8] + 40), v37);
    }

    if (*(*&buf[8] + 40))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = NSStringFromSelector(a2);
        v54 = *(*&buf[8] + 40);
        *v71 = 138412802;
        *&v71[4] = v52;
        v72 = 2112;
        v73 = v53;
        v74 = 2112;
        v75 = v54;
        _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@:%@, CloudKit schema update in progress - error while adding persistent store, %@", v71, 0x20u);
      }

      v61[2](v61, *(*&buf[8] + 40));
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v41 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = NSStringFromSelector(a2);
          *v71 = 138412546;
          *&v71[4] = v43;
          v72 = 2112;
          v73 = v44;
          _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@:%@, CloudKit schema update in progress - persistent store added", v71, 0x16u);
        }
      }

      v45 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      [v45 setPersistentStoreCoordinator:v58];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v46 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = NSStringFromSelector(a2);
          *v71 = 138412546;
          *&v71[4] = v48;
          v72 = 2112;
          v73 = v49;
          _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@:%@, CloudKit schema update in progress - managed object context created", v71, 0x16u);
        }
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __69__RTPersistenceManager_Internal___schemaUpdateWithModelFile_handler___block_invoke_22;
      v63[3] = &unk_2788CB638;
      v63[4] = self;
      v67 = a2;
      v50 = v45;
      v64 = v50;
      v65 = v39;
      v66 = buf;
      [v50 performBlockAndWait:v63];
      v61[2](v61, *(*&buf[8] + 40));
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v80 = *MEMORY[0x277CCA450];
    v81 = @"file path to model is required.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v62 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v11];
    (v61)[2](v61, v62);
  }
}

void __69__RTPersistenceManager_Internal___schemaUpdateWithModelFile_handler___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__RTPersistenceManager_Internal___schemaUpdateWithModelFile_handler___block_invoke_22(uint64_t a1)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__191;
  v54 = __Block_byref_object_dispose__191;
  v55 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc(MEMORY[0x277CBE3D0]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __69__RTPersistenceManager_Internal___schemaUpdateWithModelFile_handler___block_invoke_2;
  v46[3] = &unk_2788D2C98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v48 = &v50;
  v49 = v5;
  v46[4] = v4;
  v6 = v2;
  v47 = v6;
  v7 = [v3 initWithOptions:0 completionBlock:v46];
  [v7 setSchemaInitializationOptions:4];
  v8 = *(a1 + 40);
  v44 = v7;
  v45 = 0;
  v9 = [v8 executeRequest:v7 error:&v45];
  v10 = v45;
  v11 = v6;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_151];
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [v19 filteredArrayUsingPredicate:v18];
    v21 = [v20 firstObject];

    [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v61[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v61 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = v25;
  v28 = *(a1 + 48);
  if (v28)
  {
    v29 = v28;

    v10 = v29;
LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412802;
        *&buf[4] = v32;
        v57 = 2112;
        v58 = v33;
        v59 = 2112;
        v60 = v10;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@:%@, CloudKit schema initialization request failed - error, %@", buf, 0x20u);
      }
    }

    v34 = *(*(a1 + 56) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v10;
    v36 = v10;

    goto LABEL_15;
  }

  if (v10)
  {
    goto LABEL_10;
  }

  v37 = v51[5];
  if (!v37)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      *&buf[4] = v40;
      v57 = 2112;
      v58 = v41;
      v59 = 2112;
      v60 = 0;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@:%@, CloudKit schema initialization request failed - error, %@", buf, 0x20u);
    }

    v37 = v51[5];
  }

  v42 = *(*(a1 + 56) + 8);
  v43 = v37;
  v36 = *(v42 + 40);
  *(v42 + 40) = v43;
LABEL_15:

LABEL_16:
  _Block_object_dispose(&v50, 8);
}

void __69__RTPersistenceManager_Internal___schemaUpdateWithModelFile_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 56));
      if ([v3 success])
      {
        v8 = "YES";
      }

      else
      {
        v8 = "NO";
      }

      v9 = [v3 error];
      v14 = 138413058;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2080;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@:%@, CloudKit schema initialization executed - success?, %s, error, %@", &v14, 0x2Au);
    }
  }

  v10 = [v3 error];

  if (v10)
  {
    v11 = [v3 error];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)schemaUpdateWithModelFile:(id)a3 handler:(id)a4
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__RTPersistenceManager_Internal__schemaUpdateWithModelFile_handler___block_invoke;
  v9[3] = &unk_2788C56C0;
  v10 = v7;
  v11 = a2;
  v9[4] = self;
  v8 = v7;
  [(RTPersistenceManager *)self _schemaUpdateWithModelFile:a3 handler:v9];
}

void __68__RTPersistenceManager_Internal__schemaUpdateWithModelFile_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_4;
    }

    v9 = objc_opt_class();
    v7 = NSStringFromClass(v9);
    v8 = NSStringFromSelector(*(a1 + 48));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@: %@: #CloudKit schema update failed with error %@", &v10, 0x20u);
LABEL_11:

    goto LABEL_3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@: %@: #CloudKit schema update succeeded", &v10, 0x16u);
    goto LABEL_11;
  }

LABEL_4:
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)mirroringDelegateSetupState:(id)a3
{
  v6 = a3;
  v4 = [(RTPersistenceManager *)self mirroringDelegateStateForStoreType:1];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4, 0);
    v5 = v6;
  }
}

@end