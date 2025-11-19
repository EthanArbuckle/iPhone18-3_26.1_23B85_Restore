@interface MOContextPersistenceManager
+ (id)createModel;
+ (id)currentManagedObjectModelWithClientID:(id)a3;
+ (id)modelsDirectory;
+ (id)protectedStoreFilesExtensions;
+ (id)storeDirectoryPathWithSuffix:(id)a3;
+ (id)storesDirectoryWithClientID:(id)a3;
- (BOOL)available;
- (BOOL)loadStore;
- (MOContextPersistenceManager)initWithClientID:(id)a3;
- (int)_getFileDescriptorForPersistenceStoreFile:(id)a3;
- (unint64_t)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4;
- (unint64_t)acquireBackgroundProcessingPermissionsWithClientID:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
@end

@implementation MOContextPersistenceManager

- (MOContextPersistenceManager)initWithClientID:(id)a3
{
  v4 = a3;
  v5 = +[MOContextPersistenceManager modelsDirectory];
  v6 = [MOContextPersistenceManager storesDirectoryWithClientID:v4];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = MOContextPersistenceManager;
    v9 = [(MOContextPersistenceManager *)&v29 init];
    objc_storeStrong(&v9->_modelsDirectory, v5);
    objc_storeStrong(&v9->_storesDirectory, v6);
    v10 = [MOContextPersistenceManager currentManagedObjectModelWithClientID:v4];
    v11 = [[NSPersistentContainer alloc] initWithName:@"personalizedsensing" managedObjectModel:v10];
    persistentContainer = v9->_persistentContainer;
    v9->_persistentContainer = v11;

    v13 = objc_opt_new();
    [v13 setShouldAddStoreAsynchronously:0];
    [v13 setShouldMigrateStoreAutomatically:1];
    [v13 setShouldInferMappingModelAutomatically:1];
    [v13 setURL:v9->_storesDirectory];
    [v13 setType:NSSQLiteStoreType];
    [v13 setOption:NSFileProtectionCompleteUnlessOpen forKey:NSPersistentStoreFileProtectionKey];
    v14 = [NSArray arrayWithObjects:v13, 0];
    [(NSPersistentContainer *)v9->_persistentContainer setPersistentStoreDescriptions:v14];

    v15 = [(NSPersistentContainer *)v9->_persistentContainer newBackgroundContext];
    managedObjectContext = v9->_managedObjectContext;
    v9->_managedObjectContext = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("MOContextPersistenceManager", v17);
    queue = v9->_queue;
    v9->_queue = v18;

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(MOContextPersistenceManager *)&v9->_managedObjectContext initWithClientID:v20, v22, v23, v24, v25, v26, v27];
    }

    self = v9;
    v8 = self;
  }

  return v8;
}

- (BOOL)available
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_available && [(MOContextPersistenceManager *)v2 loadStore])
  {
    v2->_available = 1;
  }

  objc_sync_exit(v2);

  return v2->_available;
}

- (BOOL)loadStore
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = [(NSPersistentContainer *)self->_persistentContainer persistentStoreCoordinator];
  v4 = [v3 persistentStores];
  v5 = [v4 count];

  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "store is already loaded", v11, 2u);
    }
  }

  else
  {
    v7 = dispatch_semaphore_create(0);
    persistentContainer = self->_persistentContainer;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __40__MOContextPersistenceManager_loadStore__block_invoke;
    v12[3] = &unk_1000B7230;
    v14 = &v15;
    v6 = v7;
    v13 = v6;
    [(NSPersistentContainer *)persistentContainer loadPersistentStoresWithCompletionHandler:v12];
    dispatch_semaphore_wait(v6, 0x1EuLL);
  }

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v9;
}

void __40__MOContextPersistenceManager_loadStore__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__MOContextPersistenceManager_loadStore__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __40__MOContextPersistenceManager_loadStore__block_invoke_cold_2(v6);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  [(MOContextPersistenceManager *)self managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __44__MOContextPersistenceManager_performBlock___block_invoke;
  v8 = v7[3] = &unk_1000B4B38;
  v9 = v4;
  v5 = v8;
  v6 = v4;
  [v5 performBlock:v7];
}

void __44__MOContextPersistenceManager_performBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)performBlockAndWait:(id)a3
{
  v4 = a3;
  [(MOContextPersistenceManager *)self managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __51__MOContextPersistenceManager_performBlockAndWait___block_invoke;
  v8 = v7[3] = &unk_1000B4B38;
  v9 = v4;
  v5 = v8;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

void __51__MOContextPersistenceManager_performBlockAndWait___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

+ (id)modelsDirectory
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 resourceURL];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[MOContextPersistenceManager modelsDirectory];
  }

  v5 = [@"personalizedsensing" stringByAppendingPathExtension:@"momd"];
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MOContextPersistenceManager modelsDirectory];
  }

  v7 = [[NSURL alloc] initFileURLWithPath:v5 relativeToURL:v3];
  v13 = 0;
  v8 = [v7 checkResourceIsReachableAndReturnError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[MOContextPersistenceManager modelsDirectory];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[MOContextPersistenceManager modelsDirectory];
  }

  return v7;
}

+ (id)storesDirectoryWithClientID:(id)a3
{
  v3 = [a1 storeDirectoryPathWithSuffix:a3];
  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:@"contextsDataModel.sqlite"];
    if (MGGetBoolAnswer())
    {
      v6 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        +[MOContextPersistenceManager storesDirectoryWithClientID:];
      }
    }
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MOContextPersistenceManager storesDirectoryWithClientID:v4];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)currentManagedObjectModelWithClientID:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__MOContextPersistenceManager_currentManagedObjectModelWithClientID___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentManagedObjectModelWithClientID__onceToken != -1)
  {
    dispatch_once(&currentManagedObjectModelWithClientID__onceToken, block);
  }

  v3 = currentManagedObjectModelWithClientID___model;

  return v3;
}

uint64_t __69__MOContextPersistenceManager_currentManagedObjectModelWithClientID___block_invoke(uint64_t a1)
{
  currentManagedObjectModelWithClientID___model = [*(a1 + 32) createModel];

  return _objc_release_x1();
}

+ (id)createModel
{
  v3 = [NSManagedObjectModel alloc];
  v4 = [a1 modelsDirectory];
  v5 = [v3 initWithContentsOfURL:v4];

  return v5;
}

+ (id)storeDirectoryPathWithSuffix:(id)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "user cache path, %@", buf, 0xCu);
    }

    v7 = [v5 stringByAppendingPathComponent:@"com.apple.momentsd"];
    v8 = [v7 stringByAppendingPathComponent:@"personalizedSensing"];
    v9 = [v8 stringByAppendingPathComponent:v3];

    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      goto LABEL_8;
    }

    v12 = +[NSFileManager defaultManager];
    v18 = 0;
    v13 = [v12 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
    v14 = v18;

    if (!v13 || v14)
    {
      v17 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[MOContextPersistenceManager storeDirectoryPathWithSuffix:];
      }

      v15 = 0;
    }

    else
    {
LABEL_8:
      v15 = v9;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int)_getFileDescriptorForPersistenceStoreFile:(id)a3
{
  v3 = a3;
  v4 = [v3 UTF8String];
  if (MGGetBoolAnswer())
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "file to open: %@", buf, 0xCu);
    }
  }

  v6 = open_dprotected_np(v4, 2, 2, 0, 416);
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v10) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "fd: %d", buf, 8u);
  }

  return v6;
}

+ (id)protectedStoreFilesExtensions
{
  v2 = protectedStoreFilesExtensions_cacheFilesExtensions;
  if (!protectedStoreFilesExtensions_cacheFilesExtensions)
  {
    v3 = [NSArray arrayWithObjects:@"sqlite", @"sqlite-wal", @"sqlite-shm", 0];
    v4 = protectedStoreFilesExtensions_cacheFilesExtensions;
    protectedStoreFilesExtensions_cacheFilesExtensions = v3;

    v2 = protectedStoreFilesExtensions_cacheFilesExtensions;
  }

  return v2;
}

- (unint64_t)_acquireBackgroundProcessingPermissionForStoreURL:(id)a3 cacheFileExtension:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 path];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"sqlite" withString:v8];

  memset(&v24, 0, sizeof(v24));
  stat([v10 UTF8String], &v24);
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    st_ino = v24.st_ino;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "acquireBackgroundProcessing, file ID, %llu", buf, 0xCu);
  }

  v12 = [(MOContextPersistenceManager *)self _getFileDescriptorForPersistenceStoreFile:v10];
  if ((v12 & 0x80000000) != 0)
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MOContextPersistenceManager _acquireBackgroundProcessingPermissionForStoreURL:v10 cacheFileExtension:v17];
    }

    v16 = 6;
  }

  else
  {
    v13 = [(MOContextPersistenceManager *)self _acquireBackgroundAssertionForFileDescriptor:v12];
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityContextPersistence);
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        v21 = *__error();
        v22 = __error();
        v23 = strerror(*v22);
        *buf = 138413314;
        st_ino = v20;
        v27 = 2112;
        v28 = v7;
        v29 = 1024;
        *v30 = v13;
        *&v30[4] = 1024;
        *&v30[6] = v21;
        v31 = 2080;
        v32 = v23;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ Fail to acquire background processing assertion for the persistence store file %@ with code error %d and errno %d %s", buf, 0x2Cu);
      }

      if (*__error() == 16)
      {
        v16 = 2;
      }

      else if (*__error() == 1)
      {
        v16 = 3;
      }

      else if (*__error() == 22)
      {
        v16 = 4;
      }

      else if (*__error() == 45)
      {
        v16 = 5;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = NSStringFromSelector(a2);
        *buf = 138412802;
        st_ino = v18;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        *v30 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@ Succeed to acquire background processing assertion for the persistence store type %@ and the extension %@", buf, 0x20u);
      }

      v16 = 1;
    }
  }

  return v16;
}

- (unint64_t)acquireBackgroundProcessingPermissionsWithClientID:(id)a3
{
  v4 = a3;
  [(MOContextPersistenceManager *)self loadStore];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[MOContextPersistenceManager protectedStoreFilesExtensions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [MOContextPersistenceManager storesDirectoryWithClientID:v4];
      v12 = [(MOContextPersistenceManager *)self _acquireBackgroundProcessingPermissionForStoreURL:v11 cacheFileExtension:v10];

      if (v12 != 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 1;
  }

  return v12;
}

+ (void)storeDirectoryPathWithSuffix:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "failed to create %@, error, %@", v2, 0x16u);
}

- (void)_acquireBackgroundProcessingPermissionForStoreURL:(uint64_t)a1 cacheFileExtension:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "acquireBackgroundProcessing:Unable to to get the file descriptor for the file %@ with data protection, errno, %{errno}d", &v5, 0x12u);
}

@end