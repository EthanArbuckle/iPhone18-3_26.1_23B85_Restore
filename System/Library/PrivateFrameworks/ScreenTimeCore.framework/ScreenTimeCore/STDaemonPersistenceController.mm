@interface STDaemonPersistenceController
+ (BOOL)cleanUpPersistentHistoryForStores:(id)stores inContext:(id)context hourAge:(int64_t)age error:(id *)error;
+ (id)_buildPersistentHistoryCleanupBackgroundActivity;
+ (int64_t)_computeHourAgeFromDefaultHourAge:(int64_t)age overrideHourAge:(id)hourAge;
- (BOOL)_isFatalMigrationError:(id)error;
- (BOOL)_isFatalSQLiteError:(id)error;
- (BOOL)_shouldDestroyStoreGivenError:(id)error;
- (BOOL)removeCloudPersistentStoreWithError:(id *)error;
- (BOOL)unloadCloudPersistentStoreWithError:(id *)error;
- (STDaemonPersistenceController)init;
- (id)_destroyPersistentStoreWithDescription:(id)description;
- (id)newBackgroundContext;
- (id)viewContext;
- (void)_createDataVaultDirectory;
- (void)_destroyAndReloadAfterFailureWithStoreDescription:(id)description error:(id)error completionHandler:(id)handler;
- (void)_didAddPersistentStoreDescription:(id)description error:(id)error completionHandler:(id)handler;
- (void)_loadLocalPersistentStore;
- (void)_schedulePersistentHistoryCleanupActivity;
- (void)loadPersistentStoreDescription:(id)description completionHandler:(id)handler;
- (void)resume;
@end

@implementation STDaemonPersistenceController

- (id)newBackgroundContext
{
  persistentContainer = [(STDaemonPersistenceController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  [newBackgroundContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  return newBackgroundContext;
}

- (STDaemonPersistenceController)init
{
  v6.receiver = self;
  v6.super_class = STDaemonPersistenceController;
  v2 = [(STDaemonPersistenceController *)&v6 init];
  v3 = +[STDaemonPersistenceController _buildPersistentHistoryCleanupBackgroundActivity];
  cleanupActivity = v2->_cleanupActivity;
  v2->_cleanupActivity = v3;

  return v2;
}

- (id)viewContext
{
  persistentContainer = [(STDaemonPersistenceController *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  return viewContext;
}

- (void)loadPersistentStoreDescription:(id)description completionHandler:(id)handler
{
  descriptionCopy = description;
  handlerCopy = handler;
  configuration = [descriptionCopy configuration];

  if (!configuration)
  {
    sub_100113C64(a2, self);
  }

  v10 = +[STLog persistence];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    configuration2 = [descriptionCopy configuration];
    *buf = 138543362;
    v20 = configuration2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Loading persistent store %{public}@", buf, 0xCu);
  }

  persistentContainer = [(STDaemonPersistenceController *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100026EA0;
  v16[3] = &unk_1001A3900;
  v16[4] = self;
  v17 = descriptionCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = descriptionCopy;
  [persistentStoreCoordinator addPersistentStoreWithDescription:v15 completionHandler:v16];
}

- (void)_didAddPersistentStoreDescription:(id)description error:(id)error completionHandler:(id)handler
{
  descriptionCopy = description;
  errorCopy = error;
  handlerCopy = handler;
  if (!errorCopy)
  {
    persistentContainer = [(STDaemonPersistenceController *)self persistentContainer];
    persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

    v13 = [descriptionCopy URL];
    v14 = [persistentStoreCoordinator persistentStoreForURL:v13];

    v15 = +[STLog persistence];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      configurationName = [v14 configurationName];
      *buf = 138412546;
      v24 = configurationName;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded persistent store %@ (%p)", buf, 0x16u);
    }

    v17 = [descriptionCopy URL];
    v22 = 0;
    v18 = [v17 setResourceValue:0 forKey:NSURLIsExcludedFromBackupKey error:&v22];
    v19 = v22;

    if ((v18 & 1) == 0)
    {
      v20 = +[STLog persistence];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100113CD8();
      }
    }

    v21 = [STResult success:&off_1001B21B8];
    handlerCopy[2](handlerCopy, v21);

    goto LABEL_12;
  }

  if (![(STDaemonPersistenceController *)self _shouldDestroyStoreGivenError:errorCopy])
  {
    persistentStoreCoordinator = [STResult failure:errorCopy];
    handlerCopy[2](handlerCopy, persistentStoreCoordinator);
LABEL_12:

    goto LABEL_13;
  }

  [(STDaemonPersistenceController *)self _destroyAndReloadAfterFailureWithStoreDescription:descriptionCopy error:errorCopy completionHandler:handlerCopy];
LABEL_13:
}

- (BOOL)_shouldDestroyStoreGivenError:(id)error
{
  errorCopy = error;
  if ([(STDaemonPersistenceController *)self _isFatalMigrationError:errorCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(STDaemonPersistenceController *)self _isFatalSQLiteError:errorCopy];
  }

  return v5;
}

- (BOOL)_isFatalSQLiteError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];

  if ([domain isEqualToString:NSSQLiteErrorDomain])
  {
    v7 = code == 1 || code == 11;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isFatalMigrationError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:NSCocoaErrorDomain])
  {
    goto LABEL_6;
  }

  code = [errorCopy code];

  if (code == 134110)
  {
    userInfo = [errorCopy userInfo];
    domain = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (domain)
    {
      userInfo2 = [domain userInfo];
      v8 = [userInfo2 objectForKeyedSubscript:NSSQLiteErrorDomain];

      if (v8)
      {
        v9 = [NSNumber numberWithInt:11];
        v10 = [v8 isEqualToNumber:v9];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

LABEL_6:
    v10 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_destroyAndReloadAfterFailureWithStoreDescription:(id)description error:(id)error completionHandler:(id)handler
{
  descriptionCopy = description;
  errorCopy = error;
  handlerCopy = handler;
  v11 = +[STLog persistence];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_100113D40();
  }

  v12 = [(STDaemonPersistenceController *)self _destroyPersistentStoreWithDescription:descriptionCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000274E8;
  v17[3] = &unk_1001A3950;
  v17[4] = self;
  v18 = descriptionCopy;
  v19 = handlerCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100027660;
  v15[3] = &unk_1001A3978;
  v16 = v19;
  v13 = v19;
  v14 = descriptionCopy;
  [v12 evaluateWithSuccess:v17 failure:v15];
}

- (id)_destroyPersistentStoreWithDescription:(id)description
{
  descriptionCopy = description;
  persistentContainer = [(STDaemonPersistenceController *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

  if (os_variant_has_internal_diagnostics())
  {
    v7 = [descriptionCopy URL];
    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
    v9 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"ScreenTime-bad.sqlite" isDirectory:0];

    options = [descriptionCopy options];
    type = [descriptionCopy type];
    [persistentStoreCoordinator replacePersistentStoreAtURL:v9 destinationOptions:options withPersistentStoreFromURL:v7 sourceOptions:options storeType:type error:0];
  }

  v12 = [descriptionCopy URL];
  type2 = [descriptionCopy type];
  options2 = [descriptionCopy options];
  v19 = 0;
  v15 = [persistentStoreCoordinator destroyPersistentStoreAtURL:v12 withType:type2 options:options2 error:&v19];
  v16 = v19;

  if (v15)
  {
    +[STResult success];
  }

  else
  {
    [STResult failure:v16];
  }
  v17 = ;

  return v17;
}

- (BOOL)unloadCloudPersistentStoreWithError:(id *)error
{
  v5 = +[STLog persistence];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Unloading cloud store", buf, 2u);
  }

  persistentContainer = [(STDaemonPersistenceController *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

  cloudStore = [(STDaemonPersistenceController *)self cloudStore];
  if (!cloudStore)
  {
    v18 = +[STLog persistence];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Don't see cloud store to unload; it may not be loaded.", buf, 2u);
    }

    v15 = 0;
    goto LABEL_12;
  }

  v25 = 0;
  v9 = [persistentStoreCoordinator removePersistentStore:cloudStore error:&v25];
  v10 = v25;
  if (v9)
  {
    v11 = [cloudStore URL];
    type = [cloudStore type];
    options = [cloudStore options];
    v24 = v10;
    v14 = [persistentStoreCoordinator destroyPersistentStoreAtURL:v11 withType:type options:options error:&v24];
    v15 = v24;

    v16 = +[STLog persistence];
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v27 = cloudStore;
        v28 = 2112;
        v29 = cloudStore;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unloaded cloud store (%p) at: %@", buf, 0x16u);
      }

LABEL_12:
      v19 = 1;
      goto LABEL_23;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100113E94();
    }

    if (error)
    {
      v22 = v15;
      v19 = 0;
      *error = v15;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = +[STLog persistence];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100113E2C();
    }

    if (error)
    {
      v21 = v10;
      v19 = 0;
      *error = v10;
    }

    else
    {
      v19 = 0;
    }

    v15 = v10;
  }

LABEL_23:

  return v19;
}

- (BOOL)removeCloudPersistentStoreWithError:(id *)error
{
  v5 = +[STLog persistence];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing cloud store", buf, 2u);
  }

  persistentContainer = [(STDaemonPersistenceController *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

  cloudStore = [(STDaemonPersistenceController *)self cloudStore];
  if (!cloudStore)
  {
    v13 = +[STLog persistence];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Don't see cloud store to remove; it may not be loaded.", buf, 2u);
    }

    v10 = 0;
    goto LABEL_11;
  }

  v17 = 0;
  v9 = [persistentStoreCoordinator removePersistentStore:cloudStore error:&v17];
  v10 = v17;
  v11 = +[STLog persistence];
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v19 = cloudStore;
      v20 = 2112;
      v21 = cloudStore;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed cloud store (%p) at: %@", buf, 0x16u);
    }

LABEL_11:
    v14 = 1;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100113E2C();
  }

  if (error)
  {
    v15 = v10;
    v14 = 0;
    *error = v10;
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  return v14;
}

- (void)resume
{
  [(STDaemonPersistenceController *)self _createDataVaultDirectory];
  [(STDaemonPersistenceController *)self _loadLocalPersistentStore];

  [(STDaemonPersistenceController *)self _schedulePersistentHistoryCleanupActivity];
}

- (void)_loadLocalPersistentStore
{
  v3 = [STPersistenceConfiguration persistentStoreDescriptionForConfigurationName:STPersistenceConfigurationNameLocal type:NSSQLiteStoreType];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100027E98;
  v4[3] = &unk_1001A3A08;
  v4[4] = self;
  [(STDaemonPersistenceController *)self loadPersistentStoreDescription:v3 completionHandler:v4];
}

- (void)_createDataVaultDirectory
{
  v4 = +[STLocations persistentStoreDirectory];
  v5 = +[NSFileManager defaultManager];
  v8 = 0;
  v6 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v8];
  v7 = v8;
  if ((v6 & 1) == 0)
  {
    sub_100114004(a2, self, v7);
  }

  [v4 fileSystemRepresentation];
  if (rootless_convert_to_datavault())
  {
    sub_100114078(a2, self);
  }
}

- (void)_schedulePersistentHistoryCleanupActivity
{
  cleanupActivity = [(STDaemonPersistenceController *)self cleanupActivity];
  if (os_variant_has_internal_diagnostics())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 objectForKey:@"PersistentHistoryOldestChangeAge"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [STDaemonPersistenceController _computeHourAgeFromDefaultHourAge:720 overrideHourAge:v5];
  v7 = +[STLog persistence];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "scheduling persistent history cleanup", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100028328;
  v8[3] = &unk_1001A3A30;
  v8[4] = self;
  v8[5] = v6;
  [cleanupActivity scheduleWithBlock:v8];
}

+ (BOOL)cleanUpPersistentHistoryForStores:(id)stores inContext:(id)context hourAge:(int64_t)age error:(id *)error
{
  contextCopy = context;
  storesCopy = stores;
  v11 = [[STPersistentHistoryCleanupManager alloc] initWithRelevantStores:storesCopy hourAge:age historyTokenForStore:&stru_1001A3A70];

  v12 = +[STLog persistence];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "beginning persistent history cleanup", v15, 2u);
  }

  v13 = [(STPersistentHistoryCleanupManager *)v11 cleanUpInContext:contextCopy error:error];
  return v13;
}

+ (id)_buildPersistentHistoryCleanupBackgroundActivity
{
  v2 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.ScreenTimeAgent.persistent-history-cleanup"];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_DISK_INTENSIVE, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
  [v2 _setAdditionalXPCActivityProperties:v3];

  return v2;
}

+ (int64_t)_computeHourAgeFromDefaultHourAge:(int64_t)age overrideHourAge:(id)hourAge
{
  hourAgeCopy = hourAge;
  v6 = hourAgeCopy;
  if (!hourAgeCopy || (ageCopy = [hourAgeCopy integerValue], ageCopy < 0))
  {
    ageCopy = age;
  }

  return ageCopy;
}

@end