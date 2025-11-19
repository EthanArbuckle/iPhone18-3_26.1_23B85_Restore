@interface RCServiceContainer
+ (id)sharedContainer;
- (BOOL)_deleteStore:(id)a3 error:(id *)a4;
- (BOOL)_manuallyMigrateCloudRecordingsDatabase:(id)a3 error:(id *)a4;
- (BOOL)performLocalEncryptedTitleMigrationIfNeeded;
- (BOOL)unsetLocalEncryptedTitleMigrationFlag;
- (id)_cloudRecordingsInContext:(id)a3;
- (id)_legacyRecordingWithUniqueID:(id)a3 context:(id)a4;
- (id)loadStore:(id)a3 error:(id *)a4;
- (void)_deleteLegacyStore:(id)a3;
- (void)_logIfDiscrepancyWithKey:(id)a3 cloudRecordingValue:(id)a4 legacyRecordingValue:(id)a5;
- (void)_migrateDatabaseIfNecessary;
- (void)_migrateLegacyStore:(id)a3;
- (void)_migrateSyncedUUIDsIfNeeded;
- (void)_migrateSyncingPlaybackSettings;
- (void)_saveMigrationStep:(id)a3 migrationFlag:(id)a4;
- (void)_validateMigratedRecording:(id)a3 legacyRecording:(id)a4;
@end

@implementation RCServiceContainer

+ (id)sharedContainer
{
  if (qword_10005CD18 != -1)
  {
    sub_1000350C8();
  }

  v3 = qword_10005CD10;

  return v3;
}

- (id)loadStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = RCRecordingsDirectoryURL();
  v54 = [v7 path];

  v8 = objc_alloc_init(NSFileManager);
  v79 = 0;
  if (![v8 fileExistsAtPath:v54 isDirectory:&v79] || (v79 & 1) == 0)
  {
    [v8 removeItemAtPath:v54 error:0];
    v78 = 0;
    v9 = [v8 createDirectoryAtPath:v54 withIntermediateDirectories:1 attributes:0 error:&v78];
    v10 = v78;
    if ((v9 & 1) == 0)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000350DC();
      }
    }
  }

  if ((RCDeviceUnlockedSinceBoot() & 1) == 0)
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100035168();
    }
  }

  v13 = [v6 URLByDeletingLastPathComponent];
  v52 = [v13 URLByAppendingPathComponent:RCLegacyRecordingsDatabaseFileName];

  v77 = 0;
  v14 = [v52 path];
  LOBYTE(v13) = [v8 fileExistsAtPath:v14 isDirectory:&v77];
  v15 = v77;

  v51 = [objc_opt_class() storeDescriptionForURL:v52 isXPCClient:0 configuration:RCLocalConfiguration];
  v16 = [objc_opt_class() storeDescriptionForURL:v6 isXPCClient:0 configuration:RCCloudConfiguration];
  v17 = [(RCServiceContainer *)self persistentContainer];
  v53 = [v17 persistentStoreCoordinator];

  if (v15 & 1 | ((v13 & 1) == 0))
  {
    v83 = v16;
    [NSArray arrayWithObjects:&v83 count:1];
  }

  else
  {
    v84[0] = v51;
    v84[1] = v16;
    [NSArray arrayWithObjects:v84 count:2];
  }
  v18 = ;
  v19 = [(RCServiceContainer *)self persistentContainer];
  [v19 setPersistentStoreDescriptions:v18];

  v76 = 0;
  LODWORD(v18) = [v6 getResourceValue:&v76 forKey:NSURLFileProtectionKey error:0];
  v49 = v76;
  if (v18)
  {
    v20 = OSLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v6 path];
      *buf = 136315650;
      *&buf[4] = "[RCServiceContainer loadStore:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v21;
      *&buf[22] = 2112;
      v82 = v49;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s -- storePath = %@, storeProtectionValue = %@", buf, 0x20u);
    }
  }

  v22 = objc_opt_new();
  v23 = [(RCServiceContainer *)self persistentContainer];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1000098F4;
  v74[3] = &unk_1000555B0;
  v24 = v22;
  v75 = v24;
  [v23 loadPersistentStoresWithCompletionHandler:v74];

  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100009970;
  v72[3] = &unk_1000555D8;
  v25 = v16;
  v73 = v25;
  v50 = [v24 na_filter:v72];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100009A88;
  v68[3] = &unk_100055600;
  v48 = v25;
  v69 = v48;
  v70 = self;
  v26 = v24;
  v71 = v26;
  [v50 enumerateKeysAndObjectsUsingBlock:v68];
  if ([v26 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v82 = 0;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100009BCC;
    v64[3] = &unk_100055628;
    v65 = v8;
    v27 = v53;
    v66 = v27;
    v67 = buf;
    [v26 enumerateKeysAndObjectsUsingBlock:{v64, v48}];
    v28 = *(*&buf[8] + 24);
    if (v28 == [v26 count])
    {
      [v26 removeAllObjects];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v29 = [v27 persistentStores];
      v30 = [v29 copy];

      v31 = [v30 countByEnumeratingWithState:&v60 objects:v80 count:16];
      if (v31)
      {
        v32 = *v61;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v61 != v32)
            {
              objc_enumerationMutation(v30);
            }

            [v27 removePersistentStore:*(*(&v60 + 1) + 8 * i) error:0];
          }

          v31 = [v30 countByEnumeratingWithState:&v60 objects:v80 count:16];
        }

        while (v31);
      }

      v34 = [(RCServiceContainer *)self persistentContainer];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10000A130;
      v58[3] = &unk_1000555B0;
      v59 = v26;
      [v34 loadPersistentStoresWithCompletionHandler:v58];
    }

    if ([v26 count])
    {
      v35 = OSLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        sub_1000351E8();
      }

      if (a4)
      {
        v36 = [NSMutableDictionary dictionaryWithObject:@"Failed to load stores" forKey:NSLocalizedDescriptionKey];
        [v36 addEntriesFromDictionary:v26];
        *a4 = [NSError errorWithDomain:RCVoiceMemosErrorDomain code:1 userInfo:v36];
      }

      _Block_object_dispose(buf, 8);
      v37 = 0;
      goto LABEL_43;
    }

    _Block_object_dispose(buf, 8);
  }

  v38 = [v53 persistentStores];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10000A1AC;
  v56[3] = &unk_100055650;
  v57 = v6;
  v37 = [v38 na_firstObjectPassingTest:v56];

  v39 = [[RCDatabaseMetadata alloc] initWithPersistentStore:v37];
  metadata = self->_metadata;
  self->_metadata = v39;

  v41 = os_transaction_create();
  v42 = [v51 URL];
  v43 = [v53 persistentStoreForURL:v42];

  if (v43)
  {
    [(RCServiceContainer *)self _migrateLegacyStore:v43];
    v55 = 0;
    v44 = [v53 removePersistentStore:v43 error:&v55];
    v45 = v55;
    if (v44)
    {
      v46 = [v43 URL];
      [(RCServiceContainer *)self _deleteLegacyStore:v46];
    }

    else
    {
      v46 = OSLogForCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_10003525C();
      }
    }
  }

  [(RCServiceContainer *)self _migrateDatabaseIfNecessary];

LABEL_43:

  return v37;
}

- (void)_deleteLegacyStore:(id)a3
{
  v15 = 0;
  v3 = [(RCServiceContainer *)self _deleteStore:a3 error:&v15];
  v4 = v15;
  if ((v3 & 1) == 0)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1000355C8();
    }
  }

  v6 = +[NSFileManager defaultManager];
  v7 = RCRecordingsDirectoryURL();
  v8 = [v7 URLByAppendingPathComponent:@"AssetManifest.plist"];

  v9 = [v8 path];
  v10 = [v6 fileExistsAtPath:v9];

  if (v10)
  {
    v14 = v4;
    v11 = [v6 removeItemAtURL:v8 error:&v14];
    v12 = v14;

    if ((v11 & 1) == 0)
    {
      v13 = OSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003563C();
      }
    }
  }

  else
  {
    v12 = v4;
  }
}

- (BOOL)_deleteStore:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 lastPathComponent];
  v7 = [v5 URLByDeletingLastPathComponent];
  v32[0] = v5;
  v8 = [v6 stringByAppendingString:@"-wal"];
  v9 = [v7 URLByAppendingPathComponent:v8];
  v32[1] = v9;
  v10 = [v6 stringByAppendingString:@"-shm"];
  v11 = [v7 URLByAppendingPathComponent:v10];
  v32[2] = v11;
  v12 = RCSupportDirectoryForDatabase();
  v32[3] = v12;
  v13 = [NSArray arrayWithObjects:v32 count:4];

  v14 = +[NSFileManager defaultManager];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v25 = v7;
    v26 = v6;
    v18 = *v28;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v20 path];
        v22 = [v14 fileExistsAtPath:v21];

        if (v22 && ![v14 removeItemAtURL:v20 error:a4])
        {
          v23 = 0;
          goto LABEL_12;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v23 = 1;
LABEL_12:
    v7 = v25;
    v6 = v26;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (BOOL)_manuallyMigrateCloudRecordingsDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 URL];
  v8 = [v6 options];
  v9 = [NSPersistentStoreCoordinator metadataForPersistentStoreOfType:NSSQLiteStoreType URL:v7 options:v8 error:a4];

  if (v9)
  {
    v10 = [NSManagedObjectModel modelCompatibleWithStoreMetadata:v9 forStoreURL:v7];
    if (v10)
    {
      v23 = +[NSManagedObjectModel rc_newObjectModel];
      v11 = [NSMappingModel inferredMappingModelForSourceModel:v10 destinationModel:v23 error:a4];
      if (v11)
      {
        v22 = [[NSMigrationManager alloc] initWithSourceModel:v10 destinationModel:v23];
        if (v22)
        {
          v12 = [v6 options];
          v13 = [v6 options];
          v14 = [v22 migrateStoreFromURL:v7 type:NSSQLiteStoreType options:v12 withMappingModel:v11 toDestinationURL:v7 destinationType:NSSQLiteStoreType destinationOptions:v13 error:a4];

          if (v14)
          {
            v25 = 0;
            v26 = &v25;
            v27 = 0x3032000000;
            v28 = sub_100001D8C;
            v29 = sub_10000A9B4;
            v30 = 0;
            v15 = [(RCServiceContainer *)self persistentContainer];
            v16 = [v15 persistentStoreCoordinator];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_10000A9BC;
            v24[3] = &unk_100055678;
            v24[4] = &v25;
            [v16 addPersistentStoreWithDescription:v6 completionHandler:v24];

            v17 = v26[5];
            v18 = v17 == 0;
            if (a4 && v17)
            {
              *a4 = v17;
            }

            _Block_object_dispose(&v25, 8);

            goto LABEL_17;
          }
        }

        else if (a4)
        {
          v31 = NSLocalizedDescriptionKey;
          v19 = [NSString stringWithFormat:@"Failed to create migrationManager"];
          v32 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          *a4 = [NSError errorWithDomain:RCVoiceMemosErrorDomain code:134130 userInfo:v20];
        }

        v18 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v18 = 0;
    }

    else
    {
      if (!a4)
      {
        v18 = 0;
        goto LABEL_19;
      }

      v33 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithFormat:@"Failed to find a compatible model to load store"];
      v34 = v23;
      v11 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      [NSError errorWithDomain:RCVoiceMemosErrorDomain code:134130 userInfo:v11];
      *a4 = v18 = 0;
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v18 = 0;
LABEL_20:

  return v18;
}

- (id)_cloudRecordingsInContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSFetchRequest);
  v5 = [NSEntityDescription entityForName:RCCloudRecording_EntityName inManagedObjectContext:v3];
  [v4 setEntity:v5];

  v6 = +[RCQueryManager defaultFetchedProperties];
  [v4 setPropertiesToFetch:v6];

  v7 = +[RCQueryManager defaultSortDescriptors];
  [v4 setSortDescriptors:v7];

  v8 = [[NSFetchedResultsController alloc] initWithFetchRequest:v4 managedObjectContext:v3 sectionNameKeyPath:0 cacheName:0];
  v14 = 0;
  v9 = [v8 performFetch:&v14];
  v10 = v14;
  if ((v9 & 1) == 0)
  {
    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000356B8();
    }
  }

  v12 = [v8 fetchedObjects];

  return v12;
}

- (id)_legacyRecordingWithUniqueID:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [RCSavedRecording legacyRecordingWithUniqueIDFetchRequest:a3];
  v7 = [v5 executeFetchRequest:v6 error:0];

  v8 = [v7 lastObject];

  return v8;
}

- (void)_migrateLegacyStore:(id)a3
{
  v4 = a3;
  v5 = [[RCDatabaseMetadata alloc] initWithPersistentStore:v4];

  v6 = [(RCDatabaseMetadata *)v5 objectForKeyedSubscript:@"MigratedMetadataToCloudStore"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000AD84;
    v16[3] = &unk_1000556A0;
    v17 = v5;
    v18 = self;
    v19 = v8;
    v9 = v8;
    [v9 performBlockAndWait:v16];
  }

  v10 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"CloudRecordingsMigrated"];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000AE08;
    v13[3] = &unk_1000556C8;
    v14 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v15 = self;
    v12 = v14;
    [v12 performBlockAndWait:v13];
  }
}

- (void)_migrateDatabaseIfNecessary
{
  v3 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"CloudRecordingsMarkedPlayableAndEvicted"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000B784;
    v29[3] = &unk_1000556C8;
    v29[4] = self;
    v30 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v5 = v30;
    [v5 performBlockAndWait:v29];
  }

  v6 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"RCRecordingsDirectory"];
  if (!v6 || ([@"RCRecordingsRelativePath" isEqualToString:v6] & 1) == 0)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000B8C0;
    v27[3] = &unk_1000556C8;
    v27[4] = self;
    v28 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v7 = v28;
    [v7 performBlockAndWait:v27];
  }

  v8 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"BackupExclusionFlagMigrated"];
  v9 = [v8 BOOLValue];

  if ((v9 & 1) == 0)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000BAB4;
    v25[3] = &unk_1000556C8;
    v25[4] = self;
    v26 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v10 = v26;
    [v10 performBlockAndWait:v25];
  }

  v11 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"CloudRecordingsHaveCompleteMetadata"];
  v12 = [v11 BOOLValue];

  if ((v12 & 1) == 0)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000BC04;
    v23[3] = &unk_1000556C8;
    v23[4] = self;
    v24 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v13 = v24;
    [v13 performBlockAndWait:v23];
  }

  v14 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"kRCCloudRecordingsLocalPropertiesUpdated"];
  v15 = [v14 BOOLValue];

  if ((v15 & 1) == 0)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10000BD3C;
    v20 = &unk_1000556C8;
    v21 = self;
    v22 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v16 = v22;
    [v16 performBlockAndWait:&v17];
  }

  [(RCServiceContainer *)self _migrateSyncedUUIDsIfNeeded:v17];
  [(RCServiceContainer *)self _migrateSyncingPlaybackSettings];
}

- (void)_migrateSyncedUUIDsIfNeeded
{
  v3 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"CloudRecordingsSyncedUUIDMigrated"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000BF44;
    v6[3] = &unk_1000556C8;
    v6[4] = self;
    v7 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v5 = v7;
    [v5 performBlockAndWait:v6];
  }
}

- (void)_migrateSyncingPlaybackSettings
{
  v3 = [(RCDatabaseMetadata *)self->_metadata objectForKeyedSubscript:@"CloudRecordingsSyncedPlaybackSettingsMigrated"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000C14C;
    v6[3] = &unk_1000556C8;
    v6[4] = self;
    v7 = [(RCServiceContainer *)self newContextWithConcurrencyType:1];
    v5 = v7;
    [v5 performBlockAndWait:v6];
  }
}

- (BOOL)performLocalEncryptedTitleMigrationIfNeeded
{
  v3 = [(RCServiceContainer *)self store];
  v4 = [v3 voiceMemosMetadata];
  v5 = [v4 objectForKeyedSubscript:@"CloudRecordingsCustomLabelsMigrated"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    return 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C3F8;
  v14[3] = &unk_1000556F0;
  v8 = [(RCServiceContainer *)self newBackgroundModel];
  v15 = v8;
  [v8 performBlockAndWait:v14];
  v9 = [(RCServiceContainer *)self store];
  v13 = 0;
  v7 = [v9 saveVoiceMemosMetadataValue:&__kCFBooleanTrue forKey:@"CloudRecordingsCustomLabelsMigrated" error:&v13];
  v10 = v13;

  if ((v7 & 1) == 0)
  {
    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100035734();
    }
  }

  return v7;
}

- (BOOL)unsetLocalEncryptedTitleMigrationFlag
{
  v2 = [(RCServiceContainer *)self store];
  v7 = 0;
  v3 = [v2 saveVoiceMemosMetadataValue:0 forKey:@"CloudRecordingsCustomLabelsMigrated" error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000357CC();
    }
  }

  return v3;
}

- (void)_saveMigrationStep:(id)a3 migrationFlag:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = 0;
  v7 = [v5 save:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "[RCServiceContainer _saveMigrationStep:migrationFlag:]";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s -- ERROR: Save failed - migration flag = %@, error = %@", buf, 0x20u);
    }
  }
}

- (void)_validateMigratedRecording:(id)a3 legacyRecording:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 url];
  v9 = [v8 path];
  v10 = [v7 url];
  v11 = [v10 path];
  [(RCServiceContainer *)self _logIfDiscrepancyWithKey:@"path" cloudRecordingValue:v9 legacyRecordingValue:v11];

  v12 = [v6 uuid];
  v13 = [v7 uniqueID];
  [(RCServiceContainer *)self _logIfDiscrepancyWithKey:@"uuid" cloudRecordingValue:v12 legacyRecordingValue:v13];

  v14 = [v6 creationDate];
  v15 = [v7 date];
  [(RCServiceContainer *)self _logIfDiscrepancyWithKey:@"creationDate" cloudRecordingValue:v14 legacyRecordingValue:v15];

  v16 = [v6 title];
  v17 = [v7 customLabel];
  [(RCServiceContainer *)self _logIfDiscrepancyWithKey:@"customLabel" cloudRecordingValue:v16 legacyRecordingValue:v17];

  [v6 length];
  v19 = v18;
  [v7 duration];
  if (v19 != v20)
  {
    v21 = OSLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [v6 length];
      v23 = v22;
      [v7 duration];
      v29 = 136315650;
      v30 = "[RCServiceContainer _validateMigratedRecording:legacyRecording:]";
      v31 = 2048;
      *v32 = v23;
      *&v32[8] = 2048;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s -- cloudRecording.length = %f, recording.length = %f", &v29, 0x20u);
    }
  }

  v25 = [v6 audioFutureNeedsDownload];
  if (v25 != [v7 pendingRestore])
  {
    v26 = OSLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v6 audioFutureNeedsDownload];
      v28 = [v7 pendingRestore];
      v29 = 136315650;
      v30 = "[RCServiceContainer _validateMigratedRecording:legacyRecording:]";
      v31 = 1024;
      *v32 = v27;
      *&v32[4] = 1024;
      *&v32[6] = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s -- cloudRecording.audioFutureNeedsDownload = %i, recording.pendingRestore = %i", &v29, 0x18u);
    }
  }
}

- (void)_logIfDiscrepancyWithKey:(id)a3 cloudRecordingValue:(id)a4 legacyRecordingValue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 | v9 && ([v8 isEqual:v9] & 1) == 0)
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316162;
      v12 = "[RCServiceContainer _logIfDiscrepancyWithKey:cloudRecordingValue:legacyRecordingValue:]";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- cloudRecording.%@ = %@, recording.%@ = %@", &v11, 0x34u);
    }
  }
}

@end