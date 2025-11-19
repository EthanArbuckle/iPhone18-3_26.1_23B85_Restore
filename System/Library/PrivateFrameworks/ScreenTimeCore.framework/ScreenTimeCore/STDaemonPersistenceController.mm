@interface STDaemonPersistenceController
+ (BOOL)cleanUpPersistentHistoryForStores:(id)a3 inContext:(id)a4 hourAge:(int64_t)a5 error:(id *)a6;
+ (id)_buildPersistentHistoryCleanupBackgroundActivity;
+ (int64_t)_computeHourAgeFromDefaultHourAge:(int64_t)a3 overrideHourAge:(id)a4;
- (BOOL)_isFatalMigrationError:(id)a3;
- (BOOL)_isFatalSQLiteError:(id)a3;
- (BOOL)_shouldDestroyStoreGivenError:(id)a3;
- (BOOL)removeCloudPersistentStoreWithError:(id *)a3;
- (BOOL)unloadCloudPersistentStoreWithError:(id *)a3;
- (STDaemonPersistenceController)init;
- (id)_destroyPersistentStoreWithDescription:(id)a3;
- (id)newBackgroundContext;
- (id)viewContext;
- (void)_createDataVaultDirectory;
- (void)_destroyAndReloadAfterFailureWithStoreDescription:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_didAddPersistentStoreDescription:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_loadLocalPersistentStore;
- (void)_schedulePersistentHistoryCleanupActivity;
- (void)loadPersistentStoreDescription:(id)a3 completionHandler:(id)a4;
- (void)resume;
@end

@implementation STDaemonPersistenceController

- (id)newBackgroundContext
{
  v2 = [(STDaemonPersistenceController *)self persistentContainer];
  v3 = [v2 newBackgroundContext];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  return v3;
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
  v2 = [(STDaemonPersistenceController *)self persistentContainer];
  v3 = [v2 viewContext];

  return v3;
}

- (void)loadPersistentStoreDescription:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 configuration];

  if (!v9)
  {
    sub_100113C64(a2, self);
  }

  v10 = +[STLog persistence];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v7 configuration];
    *buf = 138543362;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Loading persistent store %{public}@", buf, 0xCu);
  }

  v12 = [(STDaemonPersistenceController *)self persistentContainer];
  v13 = [v12 persistentStoreCoordinator];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100026EA0;
  v16[3] = &unk_1001A3900;
  v16[4] = self;
  v17 = v7;
  v18 = v8;
  v14 = v8;
  v15 = v7;
  [v13 addPersistentStoreWithDescription:v15 completionHandler:v16];
}

- (void)_didAddPersistentStoreDescription:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = [(STDaemonPersistenceController *)self persistentContainer];
    v12 = [v11 persistentStoreCoordinator];

    v13 = [v8 URL];
    v14 = [v12 persistentStoreForURL:v13];

    v15 = +[STLog persistence];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 configurationName];
      *buf = 138412546;
      v24 = v16;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded persistent store %@ (%p)", buf, 0x16u);
    }

    v17 = [v8 URL];
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
    v10[2](v10, v21);

    goto LABEL_12;
  }

  if (![(STDaemonPersistenceController *)self _shouldDestroyStoreGivenError:v9])
  {
    v12 = [STResult failure:v9];
    v10[2](v10, v12);
LABEL_12:

    goto LABEL_13;
  }

  [(STDaemonPersistenceController *)self _destroyAndReloadAfterFailureWithStoreDescription:v8 error:v9 completionHandler:v10];
LABEL_13:
}

- (BOOL)_shouldDestroyStoreGivenError:(id)a3
{
  v4 = a3;
  if ([(STDaemonPersistenceController *)self _isFatalMigrationError:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(STDaemonPersistenceController *)self _isFatalSQLiteError:v4];
  }

  return v5;
}

- (BOOL)_isFatalSQLiteError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];

  if ([v5 isEqualToString:NSSQLiteErrorDomain])
  {
    v7 = v4 == 1 || v4 == 11;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isFatalMigrationError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:NSCocoaErrorDomain])
  {
    goto LABEL_6;
  }

  v5 = [v3 code];

  if (v5 == 134110)
  {
    v6 = [v3 userInfo];
    v4 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v4)
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKeyedSubscript:NSSQLiteErrorDomain];

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

- (void)_destroyAndReloadAfterFailureWithStoreDescription:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STLog persistence];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_100113D40();
  }

  v12 = [(STDaemonPersistenceController *)self _destroyPersistentStoreWithDescription:v8];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000274E8;
  v17[3] = &unk_1001A3950;
  v17[4] = self;
  v18 = v8;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100027660;
  v15[3] = &unk_1001A3978;
  v16 = v19;
  v13 = v19;
  v14 = v8;
  [v12 evaluateWithSuccess:v17 failure:v15];
}

- (id)_destroyPersistentStoreWithDescription:(id)a3
{
  v4 = a3;
  v5 = [(STDaemonPersistenceController *)self persistentContainer];
  v6 = [v5 persistentStoreCoordinator];

  if (os_variant_has_internal_diagnostics())
  {
    v7 = [v4 URL];
    v8 = [v7 URLByDeletingLastPathComponent];
    v9 = [v8 URLByAppendingPathComponent:@"ScreenTime-bad.sqlite" isDirectory:0];

    v10 = [v4 options];
    v11 = [v4 type];
    [v6 replacePersistentStoreAtURL:v9 destinationOptions:v10 withPersistentStoreFromURL:v7 sourceOptions:v10 storeType:v11 error:0];
  }

  v12 = [v4 URL];
  v13 = [v4 type];
  v14 = [v4 options];
  v19 = 0;
  v15 = [v6 destroyPersistentStoreAtURL:v12 withType:v13 options:v14 error:&v19];
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

- (BOOL)unloadCloudPersistentStoreWithError:(id *)a3
{
  v5 = +[STLog persistence];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Unloading cloud store", buf, 2u);
  }

  v6 = [(STDaemonPersistenceController *)self persistentContainer];
  v7 = [v6 persistentStoreCoordinator];

  v8 = [(STDaemonPersistenceController *)self cloudStore];
  if (!v8)
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
  v9 = [v7 removePersistentStore:v8 error:&v25];
  v10 = v25;
  if (v9)
  {
    v11 = [v8 URL];
    v12 = [v8 type];
    v13 = [v8 options];
    v24 = v10;
    v14 = [v7 destroyPersistentStoreAtURL:v11 withType:v12 options:v13 error:&v24];
    v15 = v24;

    v16 = +[STLog persistence];
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v27 = v8;
        v28 = 2112;
        v29 = v8;
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

    if (a3)
    {
      v22 = v15;
      v19 = 0;
      *a3 = v15;
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

    if (a3)
    {
      v21 = v10;
      v19 = 0;
      *a3 = v10;
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

- (BOOL)removeCloudPersistentStoreWithError:(id *)a3
{
  v5 = +[STLog persistence];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing cloud store", buf, 2u);
  }

  v6 = [(STDaemonPersistenceController *)self persistentContainer];
  v7 = [v6 persistentStoreCoordinator];

  v8 = [(STDaemonPersistenceController *)self cloudStore];
  if (!v8)
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
  v9 = [v7 removePersistentStore:v8 error:&v17];
  v10 = v17;
  v11 = +[STLog persistence];
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v19 = v8;
      v20 = 2112;
      v21 = v8;
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

  if (a3)
  {
    v15 = v10;
    v14 = 0;
    *a3 = v10;
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
  v3 = [(STDaemonPersistenceController *)self cleanupActivity];
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
  [v3 scheduleWithBlock:v8];
}

+ (BOOL)cleanUpPersistentHistoryForStores:(id)a3 inContext:(id)a4 hourAge:(int64_t)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[STPersistentHistoryCleanupManager alloc] initWithRelevantStores:v10 hourAge:a5 historyTokenForStore:&stru_1001A3A70];

  v12 = +[STLog persistence];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "beginning persistent history cleanup", v15, 2u);
  }

  v13 = [(STPersistentHistoryCleanupManager *)v11 cleanUpInContext:v9 error:a6];
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

+ (int64_t)_computeHourAgeFromDefaultHourAge:(int64_t)a3 overrideHourAge:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!v5 || (v7 = [v5 integerValue], v7 < 0))
  {
    v7 = a3;
  }

  return v7;
}

@end