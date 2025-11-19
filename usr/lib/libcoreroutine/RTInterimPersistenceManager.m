@interface RTInterimPersistenceManager
+ (id)defaultModelsDirectory;
+ (id)defaultStoresDirectory;
+ (id)protectedStoreFilesExtensions;
- (BOOL)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4;
- (BOOL)_acquireBackgroundProcessingPermissions;
- (RTInterimPersistenceManager)initWithDataProtectionManager:(id)a3 platform:(id)a4;
- (RTInterimPersistenceManager)initWithDataProtectionManager:(id)a3 platform:(id)a4 modelsDirectory:(id)a5 storesDirectory:(id)a6;
- (void)_loadStore;
- (void)_onDataProtectionChange:(id)a3;
- (void)_setup;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)onDataProtectionChange:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
@end

@implementation RTInterimPersistenceManager

- (void)_loadStore
{
  if ([(RTInterimPersistenceManager *)self availability]!= 2)
  {
    [(RTInterimPersistenceManager *)self _acquireBackgroundProcessingPermissions];
    persistentContainer = self->_persistentContainer;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__RTInterimPersistenceManager__loadStore__block_invoke;
    v5[3] = &unk_2788C9A30;
    v5[4] = self;
    v5[5] = a2;
    [(NSPersistentContainer *)persistentContainer loadPersistentStoresWithCompletionHandler:v5];
  }
}

- (RTInterimPersistenceManager)initWithDataProtectionManager:(id)a3 platform:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RTInterimPersistenceManager defaultModelsDirectory];
  v9 = +[RTInterimPersistenceManager defaultStoresDirectory];
  v10 = [(RTInterimPersistenceManager *)self initWithDataProtectionManager:v7 platform:v6 modelsDirectory:v8 storesDirectory:v9];

  return v10;
}

- (RTInterimPersistenceManager)initWithDataProtectionManager:(id)a3 platform:(id)a4 modelsDirectory:(id)a5 storesDirectory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: dataProtectionManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_17;
  }

  if (!v12)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: platform";
    goto LABEL_16;
  }

  if (([v13 isFileURL] & 1) == 0)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: modelsDirectory.isFileURL";
    goto LABEL_16;
  }

  if (([v14 isFileURL] & 1) == 0)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: storesDirectory.isFileURL";
      goto LABEL_16;
    }

LABEL_17:

    v25 = 0;
    goto LABEL_18;
  }

  v29.receiver = self;
  v29.super_class = RTInterimPersistenceManager;
  v15 = [(RTNotifier *)&v29 init];
  v16 = v15;
  if (v15)
  {
    v15->_availability = 0;
    objc_storeStrong(&v15->_dataProtectionManager, a3);
    objc_storeStrong(&v16->_platform, a4);
    objc_storeStrong(&v16->_modelsDirectory, a5);
    objc_storeStrong(&v16->_storesDirectory, a6);
    v17 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v16->_modelsDirectory];
    managedObjectModel = v16->_managedObjectModel;
    v16->_managedObjectModel = v17;

    v19 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"Interim" managedObjectModel:v16->_managedObjectModel];
    persistentContainer = v16->_persistentContainer;
    v16->_persistentContainer = v19;

    v21 = objc_opt_new();
    [v21 setShouldAddStoreAsynchronously:0];
    [v21 setShouldMigrateStoreAutomatically:1];
    [v21 setShouldInferMappingModelAutomatically:1];
    [v21 setURL:v16->_storesDirectory];
    [v21 setType:*MEMORY[0x277CBE2E8]];
    [v21 setOption:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CBE240]];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:{v21, 0}];
    [(NSPersistentContainer *)v16->_persistentContainer setPersistentStoreDescriptions:v22];

    v23 = [(NSPersistentContainer *)v16->_persistentContainer newBackgroundContext];
    managedObjectContext = v16->_managedObjectContext;
    v16->_managedObjectContext = v23;
  }

  [(RTService *)v16 setup];
  self = v16;
  v25 = self;
LABEL_18:

  return v25;
}

- (void)_setup
{
  if (_os_feature_enabled_impl())
  {
    [(RTInterimPersistenceManager *)self _loadStore];
    v4 = [(RTInterimPersistenceManager *)self dataProtectionManager];
    v3 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
    [v4 addObserver:self selector:sel_onDataProtectionChange_ name:v3];
  }
}

void __41__RTInterimPersistenceManager__loadStore__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__RTInterimPersistenceManager__loadStore__block_invoke_2;
  v11[3] = &unk_2788C4C70;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void __41__RTInterimPersistenceManager__loadStore__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v2 setAvailability:v4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = [*(a1 + 32) availability];
      v12 = 138413058;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, description, %@, error, %@, availability, %lu", &v12, 0x2Au);
    }
  }

  v10 = *(a1 + 32);
  v11 = -[RTInterimPersistenceManagerNotificationAvailabilityDidChange initWithAvailability:]([RTInterimPersistenceManagerNotificationAvailabilityDidChange alloc], "initWithAvailability:", [v10 availability]);
  [v10 postNotification:v11];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(RTInterimPersistenceManager *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__RTInterimPersistenceManager_performBlock___block_invoke;
  v8[3] = &unk_2788C4D38;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
  [v6 performBlock:v8];
}

void __44__RTInterimPersistenceManager_performBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)performBlockAndWait:(id)a3
{
  v4 = a3;
  v5 = [(RTInterimPersistenceManager *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__RTInterimPersistenceManager_performBlockAndWait___block_invoke;
  v8[3] = &unk_2788C4D38;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
  [v6 performBlockAndWait:v8];
}

void __51__RTInterimPersistenceManager_performBlockAndWait___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

+ (id)defaultModelsDirectory
{
  v2 = [MEMORY[0x277CCA8D8] _coreroutineBundle];
  v3 = [v2 URLForResource:@"Interim" withExtension:@"momd"];

  return v3;
}

+ (id)defaultStoresDirectory
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:@"interim.sqlite"];
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, cache directory, %@, storeURL, %@", &v9, 0x20u);
    }
  }

  return v5;
}

+ (id)protectedStoreFilesExtensions
{
  v2 = protectedStoreFilesExtensions_cacheFilesExtensions;
  if (!protectedStoreFilesExtensions_cacheFilesExtensions)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"sqlite", @"sqlite-wal", @"sqlite-shm", 0}];
    v4 = protectedStoreFilesExtensions_cacheFilesExtensions;
    protectedStoreFilesExtensions_cacheFilesExtensions = v3;

    v2 = protectedStoreFilesExtensions_cacheFilesExtensions;
  }

  return v2;
}

- (void)onDataProtectionChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__RTInterimPersistenceManager_onDataProtectionChange___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v5, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 name];
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 name];
      *buf = 138412802;
      v13 = v9;
      v14 = 2080;
      v15 = "[RTInterimPersistenceManager onDataProtectionChange:]";
      v16 = 1024;
      v17 = 193;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onDataProtectionChange:(id)a3
{
  if ([a3 availability] == 2)
  {

    [(RTInterimPersistenceManager *)self _loadStore];
  }
}

- (BOOL)_acquireBackgroundProcessingPermissions
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = +[RTInterimPersistenceManager protectedStoreFilesExtensions];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = +[RTInterimPersistenceManager defaultStoresDirectory];
        LODWORD(v8) = [(RTInterimPersistenceManager *)self _acquireBackgroundProcessingPermissionForStoreURL:v9 cacheFileExtension:v8];

        if (!v8)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4
{
  v6 = a4;
  v7 = [a3 path];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"sqlite" withString:v6];

  v9 = [(RTInterimPersistenceManager *)self _getFileDescriptorForPersistenceStoreFile:v8];
  v10 = (v9 & 0x80000000) == 0 && [(RTInterimPersistenceManager *)self _acquireBackgroundAssertionForFileDescriptor:v9]== 0;

  return v10;
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTInterimPersistenceManagerNotificationAvailabilityDidChange];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTInterimPersistenceManagerNotificationAvailabilityDidChange alloc] initWithAvailability:[(RTInterimPersistenceManager *)self availability]];
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
      v16 = "[RTInterimPersistenceManager internalAddObserver:name:]";
      v17 = 1024;
      v18 = 281;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "unhandled notification %@ (in %s:%d)", &v13, 0x1Cu);
    }
  }
}

@end