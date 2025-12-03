@interface AnalyticsWorkspace
+ (void)initialize;
+ (void)retrieveWorkspaceWithName:(id)name atPath:(id)path queue:(id)queue resultCallback:(id)callback;
- (BOOL)_primePath:(id)path;
- (BOOL)canCloneObjectsOfType:(id)type;
- (BOOL)save;
- (BOOL)setCustomPersistenceProperties:(id)properties;
- (NSManagedObjectContext)mainObjectContext;
- (NSManagedObjectModel)objectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (id)_cloneInternal:(id)internal intoWorkspace:(id)workspace ancestry:(id)ancestry iteration:(unint64_t)iteration mustFail:(BOOL *)fail;
- (id)_initWithName:(id)name inMemory:(BOOL)memory useReadOnly:(BOOL)only customModelName:(id)modelName loadModelFromBundle:(id)bundle;
- (id)cloneObject:(id)object intoWorkspace:(id)workspace;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createNewContext;
- (id)initInMemoryWorkspaceWithName:(id)name customModelName:(id)modelName objectModelBundle:(id)bundle;
- (id)initWorkspaceWithService:(id)service;
- (id)resetCompletionBlock;
- (unint64_t)currentDBSizeInBytes;
- (unint64_t)fileSystemSizeInBytes;
- (void)_migrateDBFile:(id)file;
- (void)dealloc;
- (void)enumerateResidentObjectsOfType:(id)type usingBlock:(id)block;
- (void)reset;
- (void)setResetCompletionBlock:(id)block;
@end

@implementation AnalyticsWorkspace

- (NSManagedObjectContext)mainObjectContext
{
  if (self->__persistent)
  {
    mainObjectContext = self->__mainObjectContext;
    if (mainObjectContext)
    {
      v4 = mainObjectContext;
    }

    else
    {
      persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
      v6 = self->__mainObjectContext;
      if (persistentStoreCoordinator && !v6)
      {
        v7 = objc_alloc(MEMORY[0x277CBE440]);
        v8 = [v7 initWithConcurrencyType:*MEMORY[0x277CBE518]];
        v9 = self->__mainObjectContext;
        self->__mainObjectContext = v8;

        [(NSManagedObjectContext *)self->__mainObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
        [(NSManagedObjectContext *)self->__mainObjectContext setPersistentStoreCoordinator:persistentStoreCoordinator];
        [(NSManagedObjectContext *)self->__mainObjectContext setUndoManager:0];
        v6 = self->__mainObjectContext;
      }

      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = registry;
  registry = v2;

  registryCallbackBlocks = objc_alloc_init(MEMORY[0x277CBEB38]);

  MEMORY[0x2821F96F8]();
}

- (BOOL)save
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->__persistent && ([(AnalyticsWorkspace *)self persistentStoreCoordinator], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    mainObjectContext = [(AnalyticsWorkspace *)self mainObjectContext];
    hasChanges = [mainObjectContext hasChanges];

    if (hasChanges)
    {
      mainObjectContext2 = [(AnalyticsWorkspace *)self mainObjectContext];
      v17 = 0;
      v7 = [mainObjectContext2 save:&v17];
      v8 = v17;

      if (v7)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"SymptomAnalyticsFrameworkDidSaveNotification" object:0];
      }

      else
      {
        defaultCenter = objectanalyticsHandle();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v8 localizedDescription];
          uTF8String = [localizedDescription UTF8String];
          userInfo = [v8 userInfo];
          v14 = [userInfo description];
          uTF8String2 = [v14 UTF8String];
          *buf = 136315394;
          v19 = uTF8String;
          v20 = 2080;
          v21 = uTF8String2;
          _os_log_impl(&dword_2324AD000, defaultCenter, OS_LOG_TYPE_ERROR, "Error while saving: %s\n%s", buf, 0x16u);
        }
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = registry;
  objc_sync_enter(v3);
  if (!self->__persistent)
  {
    goto LABEL_84;
  }

  persistentStoreCoordinator = self->__persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
LABEL_82:
    v54 = persistentStoreCoordinator;
    goto LABEL_85;
  }

  location = &self->__persistentStoreCoordinator;
  if (!self->__connection && self->storeKind != *MEMORY[0x277CBE170] && ![(AnalyticsWorkspace *)self _primePath:self->backingStore])
  {
    v6 = 0;
LABEL_81:

    persistentStoreCoordinator = *location;
    goto LABEL_82;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->__connection)
  {
    v5 = 0;
    v76 = 0;
  }

  else
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      backingStore = self->backingStore;
      v9 = "/write";
      if (self->readOnly)
      {
        v9 = "-only";
      }

      *buf = 138412546;
      v85 = backingStore;
      v86 = 2080;
      v87 = v9;
      _os_log_impl(&dword_2324AD000, v7, OS_LOG_TYPE_DEFAULT, "opening backingstore %@, read%s", buf, 0x16u);
    }

    v76 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->backingStore];
    [dictionary addEntriesFromDictionary:&unk_28478CA10];
    v10 = MEMORY[0x277CBEAC0];
    storeProt = self->storeProt;
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    if (self->readOnly)
    {
      [MEMORY[0x277CCABB0] numberWithBool:1];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v14 = ;
    readOnly = self->readOnly;
    if (readOnly)
    {
      null = *MEMORY[0x277CBE2B0];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v5 = [v10 dictionaryWithObjectsAndKeys:{dictionary, *MEMORY[0x277CBE2E0], storeProt, *MEMORY[0x277CBE240], v12, *MEMORY[0x277CBE1D8], v13, *MEMORY[0x277CBE178], v14, null, 0}];
    if (!readOnly)
    {
    }
  }

  objectModel = [(AnalyticsWorkspace *)self objectModel];
  if (objectModel)
  {
    self->_integrityCheckFailed = 0;
    v18 = objc_alloc(MEMORY[0x277CBE4D8]);
    objectModel2 = [(AnalyticsWorkspace *)self objectModel];
    v6 = [v18 initWithManagedObjectModel:objectModel2];

    if (v6)
    {
      if (self->_forceIntegrityCheck)
      {
        v20 = objectanalyticsHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v21 = "DATA INTEGRITY: forceIntegrityCheck is true";
        v22 = v20;
        v23 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v20 = objectanalyticsHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v21 = "forceIntegrityCheck is false";
        v22 = v20;
        v23 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(&dword_2324AD000, v22, v23, v21, buf, 2u);
LABEL_37:

      if (self->_forceIntegrityCheck)
      {
        v28 = 0;
LABEL_39:
        v29 = 1;
        goto LABEL_46;
      }

      if (self->_forceDestroyPersistentStore || self->_forceDeleteFile)
      {
        v28 = 0;
      }

      else
      {
        storeKind = self->storeKind;
        v83 = 0;
        v37 = [v6 addPersistentStoreWithType:storeKind configuration:0 URL:v76 options:v5 error:&v83];
        v28 = v83;

        if (!v37)
        {
          v47 = objectanalyticsHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v85 = v28;
            _os_log_impl(&dword_2324AD000, v47, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: addPersistentStoreWithType failed because %@. Will check integrity.", buf, 0xCu);
          }

          v29 = 1;
          self->_forceIntegrityCheck = 1;
          goto LABEL_46;
        }

        objc_storeStrong(location, v6);
        if (self->_forceIntegrityCheck)
        {
          goto LABEL_39;
        }
      }

      if (!self->_forceDestroyPersistentStore && !self->_forceDeleteFile)
      {
LABEL_79:
        v27 = v28;
        goto LABEL_80;
      }

      v29 = 0;
LABEL_46:
      if (!self->__connection && !self->readOnly && self->storeKind != *MEMORY[0x277CBE170])
      {
        forceDestroyPersistentStore = self->_forceDestroyPersistentStore;
        forceDeleteFile = self->_forceDeleteFile;
        *&self->_forceIntegrityCheck = 0;
        self->_forceDeleteFile = 0;
        if (forceDeleteFile)
        {
          v32 = objectanalyticsHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2324AD000, v32, OS_LOG_TYPE_ERROR, "DATA LOSS: Have been instructed to delete persistent store.", buf, 2u);
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v80 = v28;
          v34 = [defaultManager removeItemAtURL:v76 error:&v80];
          v27 = v80;

          healthDelegate = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate deleteDatabaseCompleted:v34 error:v27];
          }

          goto LABEL_80;
        }

        if (forceDestroyPersistentStore)
        {
          v38 = objectanalyticsHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2324AD000, v38, OS_LOG_TYPE_ERROR, "DATA LOSS: Have been instructed to destroy persistent store.", buf, 2u);
          }

          v27 = v28;
LABEL_61:
          v39 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate destroyPersistentStoreStarted];
          }

          v40 = *MEMORY[0x277CBE2E8];
          v79 = v27;
          v41 = [v6 _destroyPersistentStoreAtURL:v76 withType:v40 options:0 error:&v79];
          v42 = v79;

          v43 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate destroyPersistentStoreCompleted:v41 error:v42];
          }

          if (v41)
          {
            v44 = self->storeKind;
            v78 = v42;
            v45 = [v6 addPersistentStoreWithType:v44 configuration:0 URL:v76 options:v5 error:&v78];
            v27 = v78;

            if (v45)
            {
              objc_storeStrong(location, v6);
              persistentStoreError = self->_persistentStoreError;
              self->_persistentStoreError = 0;
            }

            else
            {
              v59 = objectanalyticsHandle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = v27;
                _os_log_impl(&dword_2324AD000, v59, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Persisting fatal failure to recover incompatibility by creating new sqlite files : %@", buf, 0xCu);
              }

              if (v27)
              {
                v60 = v27;
                v27 = v60;
              }

              else
              {
                v60 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284789E68 code:3203 userInfo:0];
                v27 = 0;
              }

              persistentStoreError = self->_persistentStoreError;
              self->_persistentStoreError = v60;
            }
          }

          else
          {
            v57 = objectanalyticsHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v42;
              _os_log_impl(&dword_2324AD000, v57, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Fatal failure to remove incompatible sqlite files: %@", buf, 0xCu);
            }

            v58 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284789E68 code:3204 userInfo:0];
            persistentStoreError = self->_persistentStoreError;
            self->_persistentStoreError = v58;
            v27 = v42;
          }

          goto LABEL_80;
        }

        if (v29)
        {
          v48 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate integrityCheckStarted];
          }

          [dictionary setObject:@"YES" forKeyedSubscript:@"integrity_check"];
          v49 = self->storeKind;
          v82 = v28;
          v50 = [v6 addPersistentStoreWithType:v49 configuration:0 URL:v76 options:v5 error:&v82];
          v27 = v82;

          if (v50)
          {
            objc_storeStrong(location, v6);
            v51 = objectanalyticsHandle();
            if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
LABEL_78:
              v53 = 0;
              goto LABEL_122;
            }

            *buf = 0;
            v52 = "DATA INTEGRITY: Integrity check passed";
LABEL_77:
            _os_log_impl(&dword_2324AD000, v51, OS_LOG_TYPE_INFO, v52, buf, 2u);
            goto LABEL_78;
          }

          v61 = objectanalyticsHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2324AD000, v61, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Integrity check failed", buf, 2u);
          }

          self->_integrityCheckFailed = 1;
          code = [(NSError *)v27 code];
          v63 = isDBFileCorrupted(v27, 0);
          if ((code - 134000) >= 0x15 && (code - 134100) >= 0x47)
          {
            v65 = v63;
          }

          else
          {
            v65 = 1;
          }

          if (v65 == 1)
          {
            v51 = objectanalyticsHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v27;
              _os_log_impl(&dword_2324AD000, v51, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: DB content truncated due to model incompatibility or corruption. PSC creation failed with: %@", buf, 0xCu);
            }

            v53 = 1;
          }

          else
          {
            domain = [(NSError *)v27 domain];
            if ([domain isEqualToString:*MEMORY[0x277CBE2C8]])
            {
              v67 = [(NSError *)v27 code]== 13;

              if (v67)
              {
                v51 = objectanalyticsHandle();
                if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_78;
                }

                *buf = 0;
                v52 = "DATA INTEGRITY WARNING: The disk is full";
                goto LABEL_77;
              }
            }

            else
            {
            }

            v68 = objectanalyticsHandle();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v27;
              _os_log_impl(&dword_2324AD000, v68, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Error while creating persistent store: %@", buf, 0xCu);
            }

            v69 = self->storeKind;
            v81 = v27;
            v51 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v69 URL:v76 options:v5 error:&v81];
            v70 = v81;

            if (v51)
            {
              objectModel3 = [(AnalyticsWorkspace *)self objectModel];
              v72 = [objectModel3 isConfiguration:0 compatibleWithStoreMetadata:v51];

              v73 = objectanalyticsHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v85 = v51;
                v86 = 1024;
                LODWORD(v87) = v72;
                _os_log_impl(&dword_2324AD000, v73, OS_LOG_TYPE_INFO, "DATA INTEGRITY WARNING: metadata %@, compat %d", buf, 0x12u);
              }
            }

            v53 = 0;
            v27 = v70;
          }

LABEL_122:

          v74 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate integrityCheckCompleted:!self->_integrityCheckFailed error:v27];
          }

          if (!v53)
          {
            goto LABEL_80;
          }

          goto LABEL_61;
        }
      }

      goto LABEL_79;
    }

    v26 = objectanalyticsHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2324AD000, v26, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Fatal error while allocating persistent store", buf, 2u);
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284789E68 code:3202 userInfo:0];
  }

  else
  {
    v24 = objectanalyticsHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2324AD000, v24, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Unable to load the object model", buf, 2u);
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284789E68 code:3201 userInfo:0];
  }

  v6 = 0;
  v27 = self->_persistentStoreError;
  self->_persistentStoreError = v25;
LABEL_80:

  if (objectModel)
  {
    goto LABEL_81;
  }

LABEL_84:
  v54 = 0;
LABEL_85:
  objc_sync_exit(v3);

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (void)dealloc
{
  connection = self->__connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->__connection;
    self->__connection = 0;
  }

  v5.receiver = self;
  v5.super_class = AnalyticsWorkspace;
  [(AnalyticsWorkspace *)&v5 dealloc];
}

- (id)_initWithName:(id)name inMemory:(BOOL)memory useReadOnly:(BOOL)only customModelName:(id)modelName loadModelFromBundle:(id)bundle
{
  memoryCopy = memory;
  nameCopy = name;
  modelNameCopy = modelName;
  bundleCopy = bundle;
  v29.receiver = self;
  v29.super_class = AnalyticsWorkspace;
  v16 = [(AnalyticsWorkspace *)&v29 init];
  if (v16)
  {
    v26 = nameCopy;
    v17 = [(__CFString *)modelNameCopy length];
    v27 = 0;
    v28 = 0;
    if (v17)
    {
      v18 = modelNameCopy;
    }

    else
    {
      v18 = @"SymptomAnalyticsLegacy";
    }

    createPolicy(memoryCopy, v17 != 0, &v28, &v27);
    v19 = v28;
    v20 = v28;
    v21 = v27;
    v22 = v27;
    objc_storeStrong(&v16->storeKind, v19);
    objc_storeStrong(&v16->storeProt, v21);
    objc_storeStrong(&v16->backingStore, name);
    v16->readOnly = only;
    v16->pathKnownToFail = 0;
    v16->_lastDBSizeUpdateTimestamp = 0.0;
    v16->_fileSystemSizeInBytes = 0;
    v16->_currentDBSizeInBytes = 0;
    objc_storeStrong(&v16->_objectModelName, v18);
    if (bundleCopy)
    {
      v23 = bundleCopy;
    }

    else
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    }

    objectModelResidentBundle = v16->_objectModelResidentBundle;
    v16->_objectModelResidentBundle = v23;

    v16->__persistent = 1;
    nameCopy = v26;
  }

  return v16;
}

- (id)initInMemoryWorkspaceWithName:(id)name customModelName:(id)modelName objectModelBundle:(id)bundle
{
  bundleCopy = bundle;
  modelNameCopy = modelName;
  nameCopy = name;
  v11 = [[AnalyticsWorkspace alloc] _initWithName:nameCopy inMemory:1 useReadOnly:0 customModelName:modelNameCopy loadModelFromBundle:bundleCopy];

  return v11;
}

+ (void)retrieveWorkspaceWithName:(id)name atPath:(id)path queue:(id)queue resultCallback:(id)callback
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathCopy = path;
  queueCopy = queue;
  callbackCopy = callback;
  v13 = callbackCopy;
  if (queueCopy && callbackCopy)
  {
    v28 = 0;
    v14 = assembleFullName(nameCopy, pathCopy, &v28);
    v15 = v28;
    if (v14)
    {
      v16 = registry;
      objc_sync_enter(v16);
      v17 = [registry objectForKey:v15];
      if (v17)
      {
        v18 = objectanalyticsHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v15;
          _os_log_impl(&dword_2324AD000, v18, OS_LOG_TYPE_DEFAULT, "Retrieve an initialized workspace at %@, dispatching callback with the workspace now", buf, 0xCu);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__AnalyticsWorkspace_retrieveWorkspaceWithName_atPath_queue_resultCallback___block_invoke;
        block[3] = &unk_278987440;
        v27 = v13;
        v26 = v17;
        dispatch_async(queueCopy, block);

        v19 = v27;
      }

      else
      {
        v20 = objectanalyticsHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v15;
          _os_log_impl(&dword_2324AD000, v20, OS_LOG_TYPE_DEFAULT, "Trying to retrieve an uninitialized workspace at %@, adding to a list of callbacks for later invocation", buf, 0xCu);
        }

        v19 = [registryCallbackBlocks objectForKey:v15];
        v21 = objc_alloc_init(AnalyticsWorkspaceRetrievalCallback);
        [(AnalyticsWorkspaceRetrievalCallback *)v21 setWorkspaceCallback:v13];
        [(AnalyticsWorkspaceRetrievalCallback *)v21 setCallbackQueue:queueCopy];
        if (v19)
        {
          [v19 addObject:v21];
        }

        else
        {
          v24 = registryCallbackBlocks;
          v22 = [MEMORY[0x277CBEB18] arrayWithObject:v21];
          [v24 setObject:v22 forKey:v15];
        }
      }

      objc_sync_exit(v16);
    }

    else
    {
      v17 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __124__AnalyticsWorkspace_workspaceWithName_atPath_objectModelName_objectModelBundle_useReadOnly_legacyDBContainerPathToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 callbackQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __124__AnalyticsWorkspace_workspaceWithName_atPath_objectModelName_objectModelBundle_useReadOnly_legacyDBContainerPathToMigrate___block_invoke_2;
  v6[3] = &unk_278987468;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __124__AnalyticsWorkspace_workspaceWithName_atPath_objectModelName_objectModelBundle_useReadOnly_legacyDBContainerPathToMigrate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workspaceCallback];
  v2[2](v2, *(a1 + 40));
}

- (id)initWorkspaceWithService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    goto LABEL_7;
  }

  v16.receiver = self;
  v16.super_class = AnalyticsWorkspace;
  self = [(AnalyticsWorkspace *)&v16 init];
  if (self)
  {
    v14 = 0;
    v15 = 0;
    createPolicy(1, 0, &v15, &v14);
    v5 = v15;
    v6 = v15;
    v7 = v14;
    v8 = v14;
    objc_storeStrong(&self->storeKind, v5);
    objc_storeStrong(&self->storeProt, v7);
    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:serviceCopy options:4096];
    connection = self->__connection;
    self->__connection = v9;

    if (self->__connection)
    {
      v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847909E0];
      [(NSXPCConnection *)self->__connection setRemoteObjectInterface:v11];

      [(NSXPCConnection *)self->__connection resume];
      goto LABEL_5;
    }

LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BOOL)setCustomPersistenceProperties:(id)properties
{
  v4 = [properties objectForKeyedSubscript:@"PersistentWorkspace"];
  if (!v4)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v8 = "Invalid value for persistent key";
      v9 = &v11;
LABEL_11:
      _os_log_impl(&dword_2324AD000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    }

LABEL_12:

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  bOOLValue = [v4 BOOLValue];
  if ((bOOLValue & 1) == 0 && (self->__persistentStoreCoordinator || self->__mainObjectContext))
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "Requesting non-persistent but the workspace already has a PersistentStoreCoordinator and/or a MainObjectContext";
      v9 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  self->__persistent = bOOLValue;
  v6 = 1;
LABEL_14:

  return v6;
}

- (NSManagedObjectModel)objectModel
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->__persistent)
  {
    objectModel = self->__objectModel;
    if (objectModel)
    {
      v4 = objectModel;
    }

    else
    {
      v5 = objectanalyticsHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        objectModelName = [(AnalyticsWorkspace *)self objectModelName];
        uTF8String = [objectModelName UTF8String];
        objectModelResidentBundle = [(AnalyticsWorkspace *)self objectModelResidentBundle];
        bundlePath = [objectModelResidentBundle bundlePath];
        v23 = 136315394;
        v24 = uTF8String;
        v25 = 2080;
        uTF8String2 = [bundlePath UTF8String];
        _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_DEFAULT, "Loading object model %s.momd from bundle at %s", &v23, 0x16u);
      }

      objectModelResidentBundle2 = [(AnalyticsWorkspace *)self objectModelResidentBundle];
      objectModelName2 = [(AnalyticsWorkspace *)self objectModelName];
      v12 = [objectModelResidentBundle2 pathForResource:objectModelName2 ofType:@"momd"];

      if (v12)
      {
        v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
        v14 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v13];
        v15 = self->__objectModel;
        self->__objectModel = v14;

        v16 = objectanalyticsHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v13;
          _os_log_impl(&dword_2324AD000, v16, OS_LOG_TYPE_DEFAULT, "Loaded object model from URL %@", &v23, 0xCu);
        }
      }

      else
      {
        v13 = objectanalyticsHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          objectModelName3 = [(AnalyticsWorkspace *)self objectModelName];
          v23 = 138412290;
          v24 = objectModelName3;
          _os_log_impl(&dword_2324AD000, v13, OS_LOG_TYPE_ERROR, "Did not find path for object model %@", &v23, 0xCu);
        }

        v14 = 0;
      }

      v18 = self->__objectModel;
      if (!v18)
      {
        v19 = objectanalyticsHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          objectModelName4 = [(AnalyticsWorkspace *)self objectModelName];
          v23 = 138412290;
          v24 = objectModelName4;
          _os_log_impl(&dword_2324AD000, v19, OS_LOG_TYPE_ERROR, "Couldn't match expected object model %@", &v23, 0xCu);
        }

        v18 = self->__objectModel;
      }

      v4 = v18;
    }
  }

  else
  {
    v4 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)createNewContext
{
  if (self->__persistent)
  {
    persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v3 = objc_alloc(MEMORY[0x277CBE440]);
      v4 = [v3 initWithConcurrencyType:*MEMORY[0x277CBE518]];
      v5 = v4;
      if (v4)
      {
        [v4 setMergePolicy:*MEMORY[0x277CBE1D0]];
        [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];
        [v5 setUndoManager:0];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  createNewContext = [(AnalyticsWorkspace *)self createNewContext];
  if (createNewContext || !self->__persistent)
  {
    v5 = objc_alloc_init(AnalyticsWorkspace);
    objc_storeStrong(&v5->backingStore, self->backingStore);
    objc_storeStrong(&v5->storeKind, self->storeKind);
    objc_storeStrong(&v5->_objectModelName, self->_objectModelName);
    objc_storeStrong(&v5->_objectModelResidentBundle, self->_objectModelResidentBundle);
    objc_storeStrong(&v5->storeProt, self->storeProt);
    persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    persistentStoreCoordinator = v5->__persistentStoreCoordinator;
    v5->__persistentStoreCoordinator = persistentStoreCoordinator;

    objc_storeStrong(&v5->__mainObjectContext, createNewContext);
    objectModel = [(AnalyticsWorkspace *)self objectModel];
    objectModel = v5->__objectModel;
    v5->__objectModel = objectModel;

    connection = [(AnalyticsWorkspace *)self connection];
    connection = v5->__connection;
    v5->__connection = connection;

    v5->__persistent = [(AnalyticsWorkspace *)self persistent];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resetCompletionBlock
{
  v2 = MEMORY[0x2383849E0](self->__resetCompletionBlock, a2);

  return v2;
}

- (void)setResetCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = MEMORY[0x2383849E0](self->__resetCompletionBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__AnalyticsWorkspace_setResetCompletionBlock___block_invoke;
    v9[3] = &unk_2789874B8;
    v10 = v5;
    v11 = blockCopy;
    v6 = v5;
    v7 = MEMORY[0x2383849E0](v9);
    resetCompletionBlock = self->__resetCompletionBlock;
    self->__resetCompletionBlock = v7;
  }
}

uint64_t __46__AnalyticsWorkspace_setResetCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)reset
{
  if (self->__persistent)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self mainObjectContext];
    [mainObjectContext reset];
  }

  resetCompletionBlock = [(AnalyticsWorkspace *)self resetCompletionBlock];
  if (resetCompletionBlock)
  {
    v5 = resetCompletionBlock;
    resetCompletionBlock[2]();
    resetCompletionBlock = v5;
  }
}

- (BOOL)canCloneObjectsOfType:(id)type
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->__persistent)
  {
    relationshipsByName = [type relationshipsByName];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    allValues = [relationshipsByName allValues];
    v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v12 + 1) + 8 * i) isToMany])
          {
            v9 = 0;
            goto LABEL_13;
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)enumerateResidentObjectsOfType:(id)type usingBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  mainObjectContext = [(AnalyticsWorkspace *)self mainObjectContext];
  registeredObjects = [mainObjectContext registeredObjects];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__AnalyticsWorkspace_enumerateResidentObjectsOfType_usingBlock___block_invoke;
  v12[3] = &unk_2789874E0;
  v13 = typeCopy;
  v14 = blockCopy;
  v10 = typeCopy;
  v11 = blockCopy;
  [registeredObjects enumerateObjectsUsingBlock:v12];
}

void __64__AnalyticsWorkspace_enumerateResidentObjectsOfType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 40) && (([v5 isUpdated] & 1) != 0 || (objc_msgSend(v5, "isInserted") & 1) != 0 || objc_msgSend(v5, "isDeleted")))
  {
    v3 = [v5 entity];
    v4 = [v3 isEqual:*(a1 + 32)];

    if (v4)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (id)cloneObject:(id)object intoWorkspace:(id)workspace
{
  v12 = 0;
  v6 = MEMORY[0x277CBEB38];
  workspaceCopy = workspace;
  objectCopy = object;
  v9 = [[v6 alloc] initWithCapacity:5];
  v10 = [(AnalyticsWorkspace *)self _cloneInternal:objectCopy intoWorkspace:workspaceCopy ancestry:v9 iteration:0 mustFail:&v12];

  return v10;
}

- (id)_cloneInternal:(id)internal intoWorkspace:(id)workspace ancestry:(id)ancestry iteration:(unint64_t)iteration mustFail:(BOOL *)fail
{
  v66 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  workspaceCopy = workspace;
  ancestryCopy = ancestry;
  mainObjectContext = [workspaceCopy mainObjectContext];
  entity = [internalCopy entity];
  name = [entity name];
  if (!name)
  {
    v15 = objectanalyticsHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v25 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v51 = entity;
    v22 = mainObjectContext;
    v23 = ancestryCopy;
    if (internalCopy)
    {
      ancestryCopy = [internalCopy objectID];
      mainObjectContext = [ancestryCopy URIRepresentation];
      iteration = [mainObjectContext description];
      uTF8String = [iteration UTF8String];
    }

    else
    {
      uTF8String = "(no nmo)";
    }

    *buf = 136315138;
    uTF8String2 = uTF8String;
    _os_log_impl(&dword_2324AD000, v15, OS_LOG_TYPE_ERROR, "Nil entity name for nmo: %s", buf, 0xCu);
    if (internalCopy)
    {
    }

    v25 = 0;
    ancestryCopy = v23;
    mainObjectContext = v22;
LABEL_32:
    entity = v51;
    goto LABEL_33;
  }

  if (iteration >= 6)
  {
    v15 = objectanalyticsHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [internalCopy objectID];
      v17 = v16 = entity;
      [v17 URIRepresentation];
      v19 = v18 = ancestryCopy;
      [v19 description];
      v21 = v20 = mainObjectContext;
      *buf = 136315138;
      uTF8String2 = [v21 UTF8String];
      _os_log_impl(&dword_2324AD000, v15, OS_LOG_TYPE_ERROR, "Too long a chain sequence leading to: %s", buf, 0xCu);

      mainObjectContext = v20;
      ancestryCopy = v18;

      entity = v16;
    }

    goto LABEL_8;
  }

  [internalCopy objectID];
  v26 = v51 = entity;
  v25 = [ancestryCopy objectForKeyedSubscript:v26];

  entity = v51;
  if (!v25)
  {
    v25 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:name inManagedObjectContext:mainObjectContext];
    if (v25)
    {
      iterationCopy = iteration;
      v50 = mainObjectContext;
      v54 = workspaceCopy;
      objectID = [internalCopy objectID];
      v53 = ancestryCopy;
      [ancestryCopy setObject:v25 forKey:objectID];

      entity2 = [internalCopy entity];
      attributesByName = [entity2 attributesByName];
      allKeys = [attributesByName allKeys];

      v49 = allKeys;
      [internalCopy dictionaryWithValuesForKeys:allKeys];
      v48 = v52 = v25;
      [v25 setValuesForKeysWithDictionary:?];
      entity3 = [internalCopy entity];
      relationshipsByName = [entity3 relationshipsByName];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      allKeys2 = [relationshipsByName allKeys];
      v34 = [allKeys2 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v60;
        while (2)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v60 != v36)
            {
              objc_enumerationMutation(allKeys2);
            }

            v38 = *(*(&v59 + 1) + 8 * i);
            v39 = [relationshipsByName objectForKeyedSubscript:v38];
            if (([v39 isToMany] & 1) == 0 && (objc_msgSend(v39, "isTransient") & 1) == 0)
            {
              v40 = allKeys2;
              v41 = internalCopy;
              v42 = [internalCopy valueForKey:v38];
              ++iterationCopy;
              v43 = [AnalyticsWorkspace _cloneInternal:"_cloneInternal:intoWorkspace:ancestry:iteration:mustFail:" intoWorkspace:v42 ancestry:v54 iteration:v53 mustFail:?];
              if (!v43)
              {
                *fail = 1;

                v25 = 0;
                internalCopy = v41;
                v15 = v52;
                goto LABEL_31;
              }

              v44 = v43;
              [v52 setValue:v43 forKey:v38];

              internalCopy = v41;
              allKeys2 = v40;
            }
          }

          v35 = [allKeys2 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v15 = v52;
      if (*fail)
      {
        v45 = 0;
      }

      else
      {
        v45 = v52;
      }

      v25 = v45;
LABEL_31:

      ancestryCopy = v53;
      workspaceCopy = v54;
      mainObjectContext = v50;
      goto LABEL_32;
    }
  }

LABEL_34:

  v46 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)_primePath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->pathKnownToFail)
  {
    v3 = 0;
  }

  else
  {
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    if ([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v17] && (v17 & 1) != 0)
    {
      v3 = 1;
    }

    else
    {
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:self->storeProt forKey:*MEMORY[0x277CCA1B0]];
      v16 = 0;
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v7 error:&v16];
      v8 = v16;
      v3 = v8 == 0;
      if (v8)
      {
        v9 = objectanalyticsHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v8 localizedDescription];
          uTF8String = [localizedDescription UTF8String];
          *buf = 136315138;
          v19 = uTF8String;
          _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_ERROR, "Error creating directory path: %s", buf, 0xCu);
        }

        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284789E68 code:3101 userInfo:0];
        persistentStoreError = self->_persistentStoreError;
        self->_persistentStoreError = v12;
      }
    }

    self->pathKnownToFail = !v3;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_migrateDBFile:(id)file
{
  v44 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  stringByDeletingLastPathComponent = [(NSString *)self->backingStore stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v37] & 1) == 0)
  {
    p_super = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"_networkd", *MEMORY[0x277CCA160], @"wheel", *MEMORY[0x277CCA120], 0}];
    v8 = objectanalyticsHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = stringByDeletingLastPathComponent;
      _os_log_impl(&dword_2324AD000, v8, OS_LOG_TYPE_DEFAULT, "DB Container (%@) doesn't exist. Will create it", buf, 0xCu);
    }

    [p_super setObject:self->storeProt forKeyedSubscript:*MEMORY[0x277CCA1B0]];
    v36 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:p_super error:&v36];
    v9 = v36;
    if (v9)
    {
      v10 = v9;
      v11 = objectanalyticsHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v39 = stringByDeletingLastPathComponent;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&dword_2324AD000, v11, OS_LOG_TYPE_ERROR, "Couldn't create DB Container: %@ because %@", buf, 0x16u);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284789E68 code:3101 userInfo:0];
      persistentStoreError = self->_persistentStoreError;
      self->_persistentStoreError = v12;

      goto LABEL_16;
    }
  }

  if (!-[NSObject length](fileCopy, "length") || ![defaultManager fileExistsAtPath:fileCopy isDirectory:&v37] || (v37 & 1) != 0)
  {
    p_super = objectanalyticsHandle();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    *buf = 0;
    v14 = "Legacy path netusage doesn't exist. Nothing to do";
    v15 = p_super;
    v16 = OS_LOG_TYPE_DEBUG;
LABEL_14:
    _os_log_impl(&dword_2324AD000, v15, v16, v14, buf, 2u);
    goto LABEL_15;
  }

  v18 = objectanalyticsHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    backingStore = self->backingStore;
    *buf = 138412290;
    v39 = backingStore;
    _os_log_impl(&dword_2324AD000, v18, OS_LOG_TYPE_DEFAULT, "Legacy path netusage exists. backingstore %@", buf, 0xCu);
  }

  if (!-[NSString length](self->backingStore, "length") || ([defaultManager fileExistsAtPath:self->backingStore isDirectory:&v37] & 1) != 0 || (v37 & 1) != 0)
  {
    p_super = objectanalyticsHandle();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v14 = "New path netusage exists. Don't replace it with a possibly older database";
    v15 = p_super;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  v20 = objectanalyticsHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2324AD000, v20, OS_LOG_TYPE_DEFAULT, "New path netusage doesn't exist so we shall migrate it from the old location", buf, 2u);
  }

  v21 = self->backingStore;
  v35 = 0;
  v22 = [defaultManager moveItemAtPath:fileCopy toPath:v21 error:&v35];
  v10 = v35;
  v23 = objectanalyticsHandle();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2324AD000, v24, OS_LOG_TYPE_DEFAULT, "Successfully moved over netusage to new location", buf, 2u);
    }

    fileCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-shm", fileCopy];
    if ([defaultManager fileExistsAtPath:fileCopy isDirectory:&v37] && (v37 & 1) == 0)
    {
      v34 = v10;
      v29 = [defaultManager removeItemAtPath:fileCopy error:&v34];
      v26 = v34;

      if ((v29 & 1) == 0)
      {
        v30 = objectanalyticsHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v39 = fileCopy;
          v40 = 2112;
          v41 = v26;
          _os_log_impl(&dword_2324AD000, v30, OS_LOG_TYPE_ERROR, "Failed to remove %@ because %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v26 = v10;
    }

    p_super = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-wal", fileCopy];

    if ([defaultManager fileExistsAtPath:p_super isDirectory:&v37] && (v37 & 1) == 0)
    {
      v33 = v26;
      v31 = [defaultManager removeItemAtPath:p_super error:&v33];
      v10 = v33;

      if ((v31 & 1) == 0)
      {
        v32 = objectanalyticsHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v39 = p_super;
          v40 = 2112;
          v41 = v10;
          _os_log_impl(&dword_2324AD000, v32, OS_LOG_TYPE_ERROR, "Failed to remove %@ because %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = v26;
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = self->backingStore;
      *buf = 138412802;
      v39 = fileCopy;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_2324AD000, v24, OS_LOG_TYPE_ERROR, "Failed to move %@ to %@ because %@", buf, 0x20u);
    }

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284789E68 code:3103 userInfo:0];
    p_super = &self->_persistentStoreError->super;
    self->_persistentStoreError = v28;
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)currentDBSizeInBytes
{
  v45 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  if (v3 - self->_lastDBSizeUpdateTimestamp >= 300.0)
  {
    persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];

    if (persistentStores)
    {
      selfCopy = self;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = persistentStores;
      v9 = persistentStores;
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v10)
      {
        v11 = v10;
        v34 = 0;
        v12 = *v37;
        while (2)
        {
          v13 = 0;
          v33 = v11;
          do
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v36 + 1) + 8 * v13) URL];
            if ([v14 isFileURL])
            {
              path = [v14 path];
              v16 = path;
              if (!path || ![path length])
              {
                v24 = objectanalyticsHandle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v41 = v14;
                  _os_log_impl(&dword_2324AD000, v24, OS_LOG_TYPE_ERROR, "Error retrieving file path, storeURL: %@", buf, 0xCu);
                }

                goto LABEL_27;
              }

              v35 = 0;
              v17 = [defaultManager attributesOfItemAtPath:v16 error:&v35];
              v18 = v35;
              if (v18)
              {
                v19 = objectanalyticsHandle();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v41 = v18;
                  _os_log_impl(&dword_2324AD000, v19, OS_LOG_TYPE_ERROR, "Error retrieving file size: %@", buf, 0xCu);
                }
              }

              else
              {
                v20 = v12;
                v21 = v9;
                v22 = defaultManager;
                fileSize = [v17 fileSize];
                v34 += fileSize;
                v19 = objectanalyticsHandle();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v41 = v16;
                  v42 = 2048;
                  v43 = *&fileSize;
                  _os_log_impl(&dword_2324AD000, v19, OS_LOG_TYPE_DEFAULT, "Analytics Workspace path = %@, file size = %llu", buf, 0x16u);
                }

                defaultManager = v22;
                v9 = v21;
                v12 = v20;
                v11 = v33;
              }
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v34 = 0;
      }

LABEL_27:

      persistentStores = v31;
      self = selfCopy;
      v25 = v34;
    }

    else
    {
      v25 = 0;
    }

    self->_currentDBSizeInBytes = v25;
    self->_lastDBSizeUpdateTimestamp = v4;
    v26 = objectanalyticsHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      currentDBSizeInBytes = self->_currentDBSizeInBytes;
      lastDBSizeUpdateTimestamp = self->_lastDBSizeUpdateTimestamp;
      *buf = 134218240;
      v41 = currentDBSizeInBytes;
      v42 = 2048;
      v43 = lastDBSizeUpdateTimestamp;
      _os_log_impl(&dword_2324AD000, v26, OS_LOG_TYPE_DEFAULT, "Total DB size = %llu, last update = %f", buf, 0x16u);
    }

    v5 = self->_currentDBSizeInBytes;
  }

  else
  {
    v5 = self->_currentDBSizeInBytes;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)fileSystemSizeInBytes
{
  v33 = *MEMORY[0x277D85DE8];
  result = self->_fileSystemSizeInBytes;
  if (!result)
  {
    persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];

    if (persistentStores)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = persistentStores;
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v7)
      {
        v9 = v7;
        v10 = *v27;
        v23 = *MEMORY[0x277CCA1D8];
        *&v8 = 134217984;
        v22 = v8;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = [*(*(&v26 + 1) + 8 * i) URL];
            if ([v12 isFileURL])
            {
              path = [v12 path];
              v14 = path;
              if (!path || ![path length])
              {
                v15 = objectanalyticsHandle();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v31 = v12;
                  _os_log_impl(&dword_2324AD000, v15, OS_LOG_TYPE_ERROR, "Error retrieving file path, storeURL: %@", buf, 0xCu);
                }

LABEL_28:

                goto LABEL_29;
              }

              v25 = 0;
              v15 = [defaultManager attributesOfFileSystemForPath:v14 error:&v25];
              v16 = v25;
              if (v16 || !v15)
              {
                v20 = objectanalyticsHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v31 = v16;
                  _os_log_impl(&dword_2324AD000, v20, OS_LOG_TYPE_ERROR, "Error retrieving file system size: %@", buf, 0xCu);
                }
              }

              else
              {
                v17 = [v15 objectForKeyedSubscript:v23];
                self->_fileSystemSizeInBytes = [v17 unsignedLongLongValue];

                v18 = objectanalyticsHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  fileSystemSizeInBytes = self->_fileSystemSizeInBytes;
                  *buf = v22;
                  v31 = fileSystemSizeInBytes;
                  _os_log_impl(&dword_2324AD000, v18, OS_LOG_TYPE_DEFAULT, "File System Size = %llu", buf, 0xCu);
                }

                if (self->_fileSystemSizeInBytes)
                {
                  goto LABEL_28;
                }
              }
            }
          }

          v9 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:
    }

    else
    {
      v6 = objectanalyticsHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2324AD000, v6, OS_LOG_TYPE_ERROR, "Persistent store is nil.", buf, 2u);
      }
    }

    result = self->_fileSystemSizeInBytes;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

@end