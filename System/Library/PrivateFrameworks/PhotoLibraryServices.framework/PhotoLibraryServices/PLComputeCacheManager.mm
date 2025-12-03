@interface PLComputeCacheManager
+ (BOOL)isEnabledWithPathManager:(id)manager error:(id *)error;
+ (BOOL)shouldPublishAnalyticsForRestoreError:(id)error;
+ (id)_urlForLocation:(int64_t)location pathManager:(id)manager createIfNeeded:(BOOL)needed error:(id *)error;
+ (id)baseURLFromPathManager:(id)manager;
+ (id)payloadClasses;
+ (id)restorePayloadClasses;
- (BOOL)_addBackupCreatedMarkerWithError:(id *)error;
- (BOOL)_archivePrepareDirectoryWithError:(id *)error;
- (BOOL)_archiveSnapshotIfNecessaryWithError:(id *)error;
- (BOOL)_archiveSnapshotWithError:(id *)error;
- (BOOL)_cleanupLegacyArchiveURL:(id)l replacementURL:(id)rL error:(id *)error;
- (BOOL)_createArchiveWithError:(id *)error;
- (BOOL)_getRestoreCount:(signed __int16 *)count error:(id *)error;
- (BOOL)_hasBackupArchive;
- (BOOL)_hasBackupCreatedMarker;
- (BOOL)_hasPrepareDataToBackupWithError:(id *)error;
- (BOOL)_incrementRestoreCount:(signed __int16 *)count error:(id *)error;
- (BOOL)_isInitialSyncWithInitialSyncDate:(id)date;
- (BOOL)_isValidArchiveURL:(id)l filenameExclusionList:(id)list;
- (BOOL)_performSnapshotWithError:(id *)error;
- (BOOL)_removeComputeCacheDataForMatchingRestoreState:(int64_t)state error:(id *)error;
- (BOOL)_removeLocation:(int64_t)location error:(id *)error;
- (BOOL)_restoreComputeCacheArchiveWithProgress:(id)progress error:(id *)error;
- (BOOL)_restoreComputeCacheWithProgress:(id)progress error:(id *)error;
- (BOOL)_snapshotJournalsWithError:(id *)error;
- (BOOL)_transferAndPrepareComputeCacheFromBackupToRestoreLocationWithError:(id *)error;
- (BOOL)_transferToBackupLocationWithError:(id *)error;
- (BOOL)createArchiveWithError:(id *)error;
- (BOOL)resetComputeCacheWithError:(id *)error;
- (BOOL)restoreComputeCacheWithProgress:(id)progress error:(id *)error;
- (BOOL)snapshotComputeCacheAndBackupIfNeededWithError:(id *)error;
- (BOOL)snapshotJournalsForPayloadClassIDs:(id)ds error:(id *)error;
- (PLComputeCacheManager)initWithLibraryServicesManager:(id)manager;
- (id)_cachedPolicyConfiguration;
- (id)_filenameExclusionList;
- (id)_newTransientContext;
- (id)_shortLivedLibrary;
- (id)_snapshotPolicy;
- (id)resolveLocalIdentifiersForCloudIdentifiers:(id)identifiers error:(id *)error;
- (id)status;
- (id)statusFromPolicy:(id)policy;
- (int64_t)_iCloudBackupState;
- (int64_t)_libraryAssetCount;
- (int64_t)_performBlockOnRestoreStateLockAndWait:(id)wait;
- (unint64_t)_getArchiveSize;
- (void)_cleanupLegacyArchiveFilename;
- (void)_enumerateComputeCachePrepareDirectoryUsingBlock:(id)block;
- (void)_publish;
- (void)_setICloudBackupRestoreDateFromArchive;
- (void)_updateCachedPolicyConfigurationWithCPLConfiguration:(id)configuration;
- (void)coalesceJournalsForPayloadClassIDs:(id)ds withChangeJournalOverThreshold:(float)threshold completionHandler:(id)handler;
- (void)notifyCPLConfiguration:(id)configuration;
- (void)notifyReadyToRestoreWithInitialSyncDate:(id)date;
- (void)snapshotJournalsForPayloadClassIDs:(id)ds withCompletionHandler:(id)handler;
@end

@implementation PLComputeCacheManager

+ (id)payloadClasses
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)resolveLocalIdentifiersForCloudIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__66776;
  v19 = __Block_byref_object_dispose__66777;
  v20 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  cloudPhotoLibraryManager = [WeakRetained cloudPhotoLibraryManager];

  if (cloudPhotoLibraryManager)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_214);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__PLComputeCacheManager_resolveLocalIdentifiersForCloudIdentifiers_error___block_invoke_2;
    v12[3] = &unk_1E756FF50;
    v14 = &v15;
    v9 = v8;
    v13 = v9;
    [cloudPhotoLibraryManager resolveLocalIdentifiersForCloudIdentifiers:identifiersCopy completionHandler:v12];
    dispatch_block_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __74__PLComputeCacheManager_resolveLocalIdentifiersForCloudIdentifiers_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)_shortLivedLibrary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v7 = [v3 stringWithFormat:@"%@ - identifier:%td", v5, objc_msgSend(WeakRetained, "wellKnownPhotoLibraryIdentifier")];

  v8 = objc_loadWeakRetained(&self->_lsm);
  databaseContext = [v8 databaseContext];
  v10 = [databaseContext newShortLivedLibraryWithName:{objc_msgSend(v7, "UTF8String")}];

  return v10;
}

- (int64_t)_libraryAssetCount
{
  v12 = *MEMORY[0x1E69E9840];
  _shortLivedLibrary = [(PLComputeCacheManager *)self _shortLivedLibrary];
  if (_shortLivedLibrary)
  {
    v4 = [[PLComputeCachePolicyDataSource alloc] initWithPhotoLibrary:_shortLivedLibrary restoreState:[(PLComputeCacheManager *)self _restoreState]];
    assetCount = [(PLComputeCachePolicyDataSource *)v4 assetCount];
    if (assetCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = -1;
    }

    else
    {
      v6 = assetCount;
    }
  }

  else
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained(&self->_lsm);
      v10 = 138412290;
      v11 = WeakRetained;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Library asset count failed to access returned a nil photolibrary instance. LSM: %@", &v10, 0xCu);
    }

    v6 = -1;
  }

  return v6;
}

- (id)_newTransientContext
{
  v3 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  v4 = MEMORY[0x1E69BF238];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  libraryURL = [pathManager libraryURL];
  v8 = [v4 redactedDescriptionForFileURL:libraryURL];

  v9 = MEMORY[0x1E696AEC0];
  name = [(PLJournalManagerCore *)self->_journalManager name];
  v11 = [v9 stringWithFormat:@"ComputeCacheManager[%@] transient context (%@)", name, v8];
  [v3 setName:v11];

  v12 = objc_loadWeakRetained(&self->_lsm);
  persistentStoreCoordinator = [v12 persistentStoreCoordinator];
  [v3 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v3 setStalenessInterval:0.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__PLComputeCacheManager__newTransientContext__block_invoke;
  v17[3] = &unk_1E7578848;
  v14 = v3;
  v18 = v14;
  selfCopy = self;
  [v14 performBlockAndWait:v17];
  v15 = v14;

  return v15;
}

void __45__PLComputeCacheManager__newTransientContext__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v2 = [WeakRetained pathManager];
  v3 = [*(a1 + 32) userInfo];
  [v3 setObject:v2 forKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];
}

- (id)_cachedPolicyConfiguration
{
  v2 = MEMORY[0x1E69BF188];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  libraryURL = [WeakRetained libraryURL];
  v5 = [v2 appPrivateDataForLibraryURL:libraryURL];

  v6 = [v5 valueForKeyPath:@"ComputeCache.PolicyConfiguration"];
  v7 = [[PLComputeCachePolicyConfiguration alloc] initWithConfigurationDictionary:v6];

  return v7;
}

- (void)_updateCachedPolicyConfigurationWithCPLConfiguration:(id)configuration
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [configuration valueForKey:@"computecache.policyconfiguration"];
  v5 = MEMORY[0x1E69BF188];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  libraryURL = [WeakRetained libraryURL];
  v8 = [v5 appPrivateDataForLibraryURL:libraryURL];

  v9 = [v8 valueForKeyPath:@"ComputeCache.PolicyConfiguration"];
  v10 = v9;
  if (v4 | v9 && ([v9 isEqual:v4] & 1) == 0)
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "ComputeCacheManager: updating app private data policy configuration from CPL with dictionary: %{public}@", &v12, 0xCu);
    }

    [v8 setValue:v4 forKeyPath:@"ComputeCache.PolicyConfiguration"];
  }
}

- (id)statusFromPolicy:(id)policy
{
  policyCopy = policy;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([policyCopy snapshotAllowed])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v4 setObject:v5 forKey:@"Snapshot Allowed"];
  if ([policyCopy snapshotRequired])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v4 setObject:v6 forKey:@"Snapshot Required"];
  v7 = PLStringFromPLComputeCacheSnapshotDenyPolicyShort([policyCopy denyPolicy]);
  if (v7)
  {
    [v4 setObject:v7 forKey:@"Snapshot Deny Policy"];
  }

  denyPolicy = [policyCopy denyPolicy];
  if ((denyPolicy - 1) > 4)
  {
    v9 = @"Snapshot enabled. Check allow policy";
  }

  else
  {
    v9 = off_1E7572BA8[denyPolicy - 1];
  }

  v10 = v9;
  [v4 setObject:v10 forKey:@"Snapshot Deny Policy Reason"];

  if (![policyCopy denyPolicy])
  {
    v11 = PLStringFromPLComputeCacheSnapshotAllowPolicyShort([policyCopy allowPolicy]);
    if (v11)
    {
      [v4 setObject:v11 forKey:@"Snapshot Allow Policy"];
    }

    allowPolicy = [policyCopy allowPolicy];
    v13 = @"Snapshot disabled. Snapshot is current";
    if (allowPolicy == 1)
    {
      v13 = @"Snapshot required. Snapshot is out of date";
    }

    if (allowPolicy == 2)
    {
      v13 = @"Snapshot required. Snapshot has deleted asset records";
    }

    v14 = v13;
    [v4 setObject:v14 forKey:@"Snapshot Allow Policy Reason"];
  }

  reason = [policyCopy reason];
  if (reason)
  {
    [v4 setObject:reason forKey:@"Snapshot Reason"];
  }

  return v4;
}

- (id)status
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__66776;
  v24 = __Block_byref_object_dispose__66777;
  v25 = 0;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __31__PLComputeCacheManager_status__block_invoke;
  v19[3] = &unk_1E7578910;
  v19[4] = self;
  v19[5] = &v20;
  dispatch_sync(queue, v19);
  if (v21[5])
  {
    _restoreState = [(PLComputeCacheManager *)self _restoreState];
    isReadyForAnalysis = [(PLComputeCacheManager *)self isReadyForAnalysis];
    v7 = @"NO";
    if (isReadyForAnalysis)
    {
      v7 = @"YES";
    }

    v8 = v7;
    [v3 setObject:v8 forKey:@"Ready for Analysis"];

    v9 = PLStringFromPLComputeCacheRestoreStateShort(_restoreState);
    if (v9)
    {
      [v3 setObject:v9 forKey:@"Restore State"];
    }

    configuration = [v21[5] configuration];
    v11 = configuration;
    switch(_restoreState)
    {
      case 3:
        v12 = @"The restore is currently active";
        break;
      case 2:
        if (([configuration isRestoreEnabled] & 1) == 0)
        {
          v12 = [@"The compute cache archive is available for restore" stringByAppendingString:{@", but disabled by the configuration"}];

          if (!v12)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v12 = @"The compute cache archive is available for restore";
        break;
      case 1:
        v12 = @"The compute cache archive was created on this device";
        break;
      default:
        v12 = @"There is no compute cache to restore";
        break;
    }

LABEL_18:
    [v3 setObject:v12 forKey:@"Restore State Reason"];
LABEL_19:

    v17 = [(PLComputeCacheManager *)self statusFromPolicy:v21[5]];
    [v3 addEntriesFromDictionary:v17];

    v16 = v3;
    goto LABEL_20;
  }

  v13 = PLMigrationGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained(&self->_lsm);
    pathManager = [WeakRetained pathManager];
    *buf = 138412290;
    v27 = pathManager;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to access policy for library: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_20:
  _Block_object_dispose(&v20, 8);

  return v16;
}

void __31__PLComputeCacheManager_status__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _snapshotPolicy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setICloudBackupRestoreDateFromArchive
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v6 = [v3 _urlForLocation:6 pathManager:pathManager createIfNeeded:0 error:0];

  memset(&v14, 0, sizeof(v14));
  if (stat([v6 fileSystemRepresentation], &v14))
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 67109378;
      v16 = v8;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Unable to stat the archive for the start date. Stat error[%d]: %s", buf, 0x12u);
    }

    iCloudBackupRestoreDateStart = self->_iCloudBackupRestoreDateStart;
    self->_iCloudBackupRestoreDateStart = 0;
  }

  else
  {
    iCloudBackupRestoreDateStart = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v14.st_ctimespec.tv_sec];
    v12 = [iCloudBackupRestoreDateStart copy];
    v13 = self->_iCloudBackupRestoreDateStart;
    self->_iCloudBackupRestoreDateStart = v12;
  }
}

- (BOOL)_cleanupLegacyArchiveURL:(id)l replacementURL:(id)rL error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v11 = rLCopy;
  if (lCopy)
  {
    if (rLCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLComputeCacheManager.m" lineNumber:1169 description:{@"Invalid parameter not satisfying: %@", @"legacyURL"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLComputeCacheManager.m" lineNumber:1170 description:{@"Invalid parameter not satisfying: %@", @"replacementURL"}];

LABEL_3:
  v29 = 0;
  v12 = [lCopy checkResourceIsReachableAndReturnError:&v29];
  v13 = v29;
  v14 = v13;
  if (v12)
  {
    v28 = v13;
    v15 = [v11 checkResourceIsReachableAndReturnError:&v28];
    v16 = v28;

    if (v15)
    {
      v27 = v16;
      v17 = [MEMORY[0x1E69BF238] removeItemAtURL:lCopy error:&v27];
      v14 = v27;

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_8:
      v18 = 1;
      goto LABEL_18;
    }

    if (PLIsErrorFileNotFound())
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v26 = v16;
      v20 = [defaultManager moveItemAtURL:lCopy toURL:v11 error:&v26];
      v14 = v26;

      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v14 = v16;
  }

  else if (PLIsErrorFileNotFound())
  {
    goto LABEL_8;
  }

LABEL_13:
  v21 = PLMigrationGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v14;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to cleanup legacy archive location. Error: %@", buf, 0xCu);
  }

  if (error)
  {
    v22 = v14;
    v18 = 0;
    *error = v14;
  }

  else
  {
    v18 = 0;
  }

LABEL_18:

  return v18;
}

- (void)_cleanupLegacyArchiveFilename
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v6 = [v3 _urlForLocation:1 pathManager:pathManager createIfNeeded:0 error:0];

  uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
  v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"computecache.aar"];

  v30 = 0;
  v9 = [(PLComputeCacheManager *)self _cleanupLegacyArchiveURL:v8 replacementURL:v6 error:&v30];
  v10 = v30;
  if (v9)
  {
    v11 = objc_opt_class();
    v12 = objc_loadWeakRetained(&self->_lsm);
    pathManager2 = [v12 pathManager];
    v14 = [v11 _urlForLocation:4 pathManager:pathManager2 createIfNeeded:0 error:0];

    uRLByDeletingLastPathComponent2 = [v14 URLByDeletingLastPathComponent];
    v16 = [uRLByDeletingLastPathComponent2 URLByAppendingPathComponent:@"computecache.aar"];

    v29 = v10;
    LODWORD(uRLByDeletingLastPathComponent2) = [(PLComputeCacheManager *)self _cleanupLegacyArchiveURL:v16 replacementURL:v14 error:&v29];
    v17 = v29;

    if (uRLByDeletingLastPathComponent2)
    {
      v18 = objc_opt_class();
      v19 = objc_loadWeakRetained(&self->_lsm);
      pathManager3 = [v19 pathManager];
      v6 = [v18 _urlForLocation:6 pathManager:pathManager3 createIfNeeded:0 error:0];

      uRLByDeletingLastPathComponent3 = [v6 URLByDeletingLastPathComponent];
      v8 = [uRLByDeletingLastPathComponent3 URLByAppendingPathComponent:@"computecache.aar"];

      v28 = v17;
      v22 = [(PLComputeCacheManager *)self _cleanupLegacyArchiveURL:v8 replacementURL:v6 error:&v28];
      v10 = v28;

      v23 = v10;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = v17;
      v6 = v14;
      v8 = v16;
    }
  }

  v24 = PLMigrationGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v32 = v10;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Resetting compute cache after failing to cleanup legacy archive. Error: %@", buf, 0xCu);
  }

  v27 = v10;
  v25 = [(PLComputeCacheManager *)self resetComputeCacheWithError:&v27];
  v23 = v27;

  if (!v25)
  {
    v26 = PLMigrationGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v23;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to reset compute cache. Error: %@", buf, 0xCu);
    }
  }

LABEL_12:
}

- (BOOL)_archivePrepareDirectoryWithError:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__66776;
  v40 = __Block_byref_object_dispose__66777;
  v41 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  clientSideEncryptionManager = [WeakRetained clientSideEncryptionManager];
  v7 = clientSideEncryptionManager == 0;

  if (v7)
  {
    *(v43 + 24) = 0;
    v25 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A278];
    v47[0] = @"Encryption manager not initialized";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x1E69BFF48] code:52011 userInfo:v26];
    v28 = v37[5];
    v37[5] = v27;

    if (error)
    {
      *error = v37[5];
    }

    v24 = *(v43 + 24);
  }

  else
  {
    v8 = objc_opt_class();
    v9 = objc_loadWeakRetained(&self->_lsm);
    pathManager = [v9 pathManager];
    v11 = [v8 _urlForLocation:1 pathManager:pathManager createIfNeeded:1 error:0];

    v12 = objc_opt_class();
    v13 = objc_loadWeakRetained(&self->_lsm);
    pathManager2 = [v13 pathManager];
    v15 = [v12 _urlForLocation:0 pathManager:pathManager2 createIfNeeded:1 error:0];

    _filenameExclusionList = [(PLComputeCacheManager *)self _filenameExclusionList];
    v17 = dispatch_semaphore_create(0);
    v18 = objc_loadWeakRetained(&self->_lsm);
    clientSideEncryptionManager2 = [v18 clientSideEncryptionManager];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__PLComputeCacheManager__archivePrepareDirectoryWithError___block_invoke;
    v34[3] = &unk_1E756FF00;
    v34[4] = self;
    v20 = _filenameExclusionList;
    v35 = v20;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __59__PLComputeCacheManager__archivePrepareDirectoryWithError___block_invoke_2;
    v30[3] = &unk_1E756FF28;
    v32 = &v42;
    v33 = &v36;
    v30[4] = self;
    v21 = v17;
    v31 = v21;
    [clientSideEncryptionManager2 archiveDirectoryAtURL:v15 toOutputURL:v11 dataType:1 options:0 entryPredicate:v34 completionHandler:v30];

    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    v22 = *(v43 + 24);
    v23 = v37[5];
    if (error && (v22 & 1) == 0)
    {
      v23 = v23;
      *error = v23;
    }

    v24 = *(v43 + 24);
  }

  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  return v24 & 1;
}

void __59__PLComputeCacheManager__archivePrepareDirectoryWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to create archive. Error: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v13 = 0;
    v10 = [v9 _removeLocation:1 error:&v13];
    v11 = v13;
    if ((v10 & 1) == 0)
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to remove archive. Error: %@", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_isValidArchiveURL:(id)l filenameExclusionList:(id)list
{
  lCopy = l;
  listCopy = list;
  if (!listCopy)
  {
    listCopy = [(PLComputeCacheManager *)self _filenameExclusionList];
  }

  v12 = 0;
  [lCopy getResourceValue:&v12 forKey:*MEMORY[0x1E695DB78] error:0];
  v8 = v12;
  if ([v8 BOOLValue])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v11 = 0;
    [lCopy getResourceValue:&v11 forKey:*MEMORY[0x1E695DC30] error:0];
    v9 = [listCopy containsObject:v11] ^ 1;
  }

  return v9;
}

- (id)_filenameExclusionList
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v6 = [v3 _urlForLocation:2 pathManager:pathManager createIfNeeded:0 error:0];
  lastPathComponent = [v6 lastPathComponent];

  v8 = objc_opt_class();
  v9 = objc_loadWeakRetained(&self->_lsm);
  pathManager2 = [v9 pathManager];
  v11 = [v8 _urlForLocation:1 pathManager:pathManager2 createIfNeeded:1 error:0];
  lastPathComponent2 = [v11 lastPathComponent];

  historyTokenURL = [(PLJournalManagerCore *)self->_journalManager historyTokenURL];
  lastPathComponent3 = [historyTokenURL lastPathComponent];

  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{lastPathComponent, lastPathComponent2, lastPathComponent3, 0}];

  return v15;
}

- (void)_enumerateComputeCachePrepareDirectoryUsingBlock:(id)block
{
  v26[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v5 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_lsm);
    pathManager = [WeakRetained pathManager];
    v8 = [v5 _urlForLocation:0 pathManager:pathManager createIfNeeded:0 error:0];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = *MEMORY[0x1E695DB78];
    v26[0] = *MEMORY[0x1E695DC30];
    v26[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v12 = [defaultManager enumeratorAtURL:v8 includingPropertiesForKeys:v11 options:7 errorHandler:0];

    _filenameExclusionList = [(PLComputeCacheManager *)self _filenameExclusionList];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if ([(PLComputeCacheManager *)self _isValidArchiveURL:v19 filenameExclusionList:_filenameExclusionList])
        {
          v20 = 0;
          blockCopy[2](blockCopy, v19, &v20);
          if (v20)
          {
            break;
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (unint64_t)_getArchiveSize
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v6 = [v3 _urlForLocation:6 pathManager:pathManager createIfNeeded:0 error:0];

  v14 = 0;
  v7 = *MEMORY[0x1E695DB50];
  v13 = 0;
  LOBYTE(pathManager) = [v6 getResourceValue:&v14 forKey:v7 error:&v13];
  v8 = v14;
  v9 = v13;
  if ((pathManager & 1) == 0 && (PLIsErrorFileNotFound() & 1) == 0)
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to get the file size from the archive. Error: %@", buf, 0xCu);
    }
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)_getRestoreCount:(signed __int16 *)count error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (count)
  {
    v7 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_lsm);
    pathManager = [WeakRetained pathManager];
    v10 = [v7 _urlForLocation:6 pathManager:pathManager createIfNeeded:0 error:0];

    v33 = 0;
    LOBYTE(WeakRetained) = [v10 checkResourceIsReachableAndReturnError:&v33];
    v11 = v33;
    if (WeakRetained)
    {
      value = 0;
      v12 = getxattr([v10 fileSystemRepresentation], objc_msgSend(@"com.apple.Photos.computecacherestorecount", "UTF8String"), &value, 2uLL, 0, 0);
      if (v12 == 2)
      {
        v13 = bswap32(value) >> 16;
      }

      else
      {
        if (v12 < 0 && *__error() != 93)
        {
          v17 = MEMORY[0x1E696ABC0];
          v18 = *MEMORY[0x1E696A798];
          v19 = *__error();
          v38 = *MEMORY[0x1E696A278];
          v20 = MEMORY[0x1E696AEC0];
          v21 = __error();
          v22 = [v20 stringWithFormat:@"%s", strerror(*v21)];
          v39[0] = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
          v24 = [v17 errorWithDomain:v18 code:v19 userInfo:v23];

          v25 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E69BFF48];
          v36 = *MEMORY[0x1E696AA08];
          v37 = v24;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v28 = [v25 errorWithDomain:v26 code:52002 userInfo:v27];

          v29 = PLMigrationGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v28;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to get the increment count. Error: %@", buf, 0xCu);
          }

          v30 = v28;
          v15 = v30;
          if (error)
          {
            v31 = v30;
            v14 = 0;
            *error = v15;
          }

          else
          {
            v14 = 0;
          }

          goto LABEL_11;
        }

        LOWORD(v13) = 0;
      }

      *count = v13;
    }

    v15 = v11;
    v14 = 1;
LABEL_11:

    return v14;
  }

  return 1;
}

- (BOOL)_incrementRestoreCount:(signed __int16 *)count error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v10 = [v7 _urlForLocation:6 pathManager:pathManager createIfNeeded:0 error:0];

  v38 = 0;
  LODWORD(pathManager) = [v10 checkResourceIsReachableAndReturnError:&v38];
  v11 = v38;
  v12 = v11;
  if (!pathManager)
  {
    v28 = PLMigrationGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "ComputeCacheManager: Increment: Backup resource is not available. Error: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v37 = 0;
  v36 = v11;
  v13 = [(PLComputeCacheManager *)self _getRestoreCount:&v37 error:&v36];
  v14 = v36;

  if (!v13)
  {
    v29 = PLMigrationGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v14;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to increment count, missing initial value. Error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v15 = ++v37;
  value = bswap32(v15) >> 16;
  if (setxattr([v10 fileSystemRepresentation], objc_msgSend(@"com.apple.Photos.computecacherestorecount", "UTF8String"), &value, 2uLL, 0, 0))
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A798];
    v18 = *__error();
    v43 = *MEMORY[0x1E696A278];
    v19 = MEMORY[0x1E696AEC0];
    v20 = __error();
    v21 = [v19 stringWithFormat:@"%s", strerror(*v20)];
    v44[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v23 = [v16 errorWithDomain:v17 code:v18 userInfo:v22];

    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E69BFF48];
    v41 = *MEMORY[0x1E696AA08];
    v42 = v23;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v12 = [v24 errorWithDomain:v25 code:52002 userInfo:v26];

    v27 = PLMigrationGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to increment the restore count. Error: %@", buf, 0xCu);
    }

LABEL_10:
    v14 = v12;
LABEL_14:
    v30 = v14;
    v31 = v30;
    if (error)
    {
      v32 = v30;
      v33 = 0;
      *error = v31;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_20;
  }

  if (count)
  {
    *count = v37;
  }

  v31 = v14;
  v33 = 1;
LABEL_20:

  return v33;
}

- (BOOL)_removeLocation:(int64_t)location error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v10 = [v7 _urlForLocation:location pathManager:pathManager createIfNeeded:0 error:0];

  v16 = 0;
  v11 = [MEMORY[0x1E69BF238] removeItemAtURL:v10 error:&v16];
  v12 = v16;
  if ((v11 & 1) == 0)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      locationCopy = location;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to remove location %tu. Error: %@", buf, 0x16u);
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
    }
  }

  return v11;
}

- (BOOL)_removeComputeCacheDataForMatchingRestoreState:(int64_t)state error:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__66776;
  v18 = __Block_byref_object_dispose__66777;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PLComputeCacheManager__removeComputeCacheDataForMatchingRestoreState_error___block_invoke;
  v9[3] = &unk_1E756FED8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = &v14;
  v9[7] = state;
  [(PLComputeCacheManager *)self _performBlockOnRestoreStateLockAndWait:v9];
  v5 = *(v11 + 24);
  v6 = v15[5];
  if (error && (v5 & 1) == 0)
  {
    v6 = v6;
    *error = v6;
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __78__PLComputeCacheManager__removeComputeCacheDataForMatchingRestoreState_error___block_invoke(void *a1, unint64_t a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (a2 - 2 >= 2)
    {
      v3 = a1[7];
    }

    else
    {
      v3 = a1[7];
      if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v4 = a1[4];
        v5 = *(a1[6] + 8);
        obj = *(v5 + 40);
        v6 = [v4 _removeLocation:3 error:&obj];
        objc_storeStrong((v5 + 40), obj);
        *(*(a1[5] + 8) + 24) = v6;
        if (*(*(a1[5] + 8) + 24) == 1)
        {
          v7 = a1[4];
          v8 = *(a1[6] + 8);
          v10 = *(v8 + 40);
          v9 = (v8 + 40);
          v30 = v10;
          v11 = [v7 _removeLocation:5 error:&v30];
          v12 = v30;
LABEL_9:
          objc_storeStrong(v9, v12);
          *(*(a1[5] + 8) + 24) = v11;
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested to remove the compute cache data with invalid restore state: [current:%td vs request:%td]", a2, v3];
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E69BFF48];
    v36 = *MEMORY[0x1E696A278];
    v37[0] = v19;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v23 = [v20 errorWithDomain:v21 code:52010 userInfo:v22];
    v24 = *(a1[6] + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    v26 = PLMigrationGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Error removing the compute cache data. Error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v3 = a1[7];
  if (v3 > 1)
  {
    goto LABEL_11;
  }

  v13 = a1[4];
  v14 = *(a1[6] + 8);
  v33 = *(v14 + 40);
  v15 = [v13 _removeLocation:5 error:&v33];
  objc_storeStrong((v14 + 40), v33);
  *(*(a1[5] + 8) + 24) = v15;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v16 = a1[4];
    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    v9 = (v17 + 40);
    v32 = v18;
    v11 = [v16 _removeLocation:0 error:&v32];
    v12 = v32;
    goto LABEL_9;
  }

LABEL_14:
  v28 = a1[4];
  v29 = *(v28 + 32);
  *(v28 + 32) = 0;
}

- (BOOL)_hasBackupArchive
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v6 = [v3 _urlForLocation:6 pathManager:pathManager createIfNeeded:0 error:0];

  v11 = 0;
  v7 = [v6 checkResourceIsReachableAndReturnError:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "ComputeCacheManager: Backup archive is not available. Error: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (BOOL)_hasBackupCreatedMarker
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v6 = [v3 _urlForLocation:2 pathManager:pathManager createIfNeeded:0 error:0];

  v11 = 0;
  v7 = [v6 checkResourceIsReachableAndReturnError:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "ComputeCacheManager: Backup marker is not reachable. Error: %@", buf, 0xCu);
    }
  }

  return v7;
}

void __43__PLComputeCacheManager__resetRestoreState__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

void __42__PLComputeCacheManager__setRestoreState___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (int64_t)_performBlockOnRestoreStateLockAndWait:(id)wait
{
  waitCopy = wait;
  os_unfair_lock_lock(&self->_restoreStateLock);
  restoreState = self->_restoreState;
  if (!restoreState)
  {
    self->_restoreState = &unk_1F0FBD618;
    if ([(PLComputeCacheManager *)self _hasBackupArchive])
    {
      v6 = self->_restoreState;
      self->_restoreState = &unk_1F0FBD5E8;
    }

    _hasBackupCreatedMarker = [(PLComputeCacheManager *)self _hasBackupCreatedMarker];
    restoreState = self->_restoreState;
    if (_hasBackupCreatedMarker)
    {
      self->_restoreState = &unk_1F0FBD600;

      restoreState = self->_restoreState;
    }
  }

  integerValue = [(NSNumber *)restoreState integerValue];
  if (waitCopy)
  {
    waitCopy[2](waitCopy, integerValue);
  }

  os_unfair_lock_unlock(&self->_restoreStateLock);

  return integerValue;
}

- (BOOL)_transferAndPrepareComputeCacheFromBackupToRestoreLocationWithError:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  clientSideEncryptionManager = [WeakRetained clientSideEncryptionManager];

  if (clientSideEncryptionManager)
  {
    v44 = 0;
    v7 = [(PLComputeCacheManager *)self _removeLocation:3 error:&v44];
    v8 = v44;
    if (!v7)
    {
      goto LABEL_22;
    }

    v9 = objc_opt_class();
    v10 = objc_loadWeakRetained(&self->_lsm);
    pathManager = [v10 pathManager];
    v12 = [v9 _urlForLocation:6 pathManager:pathManager createIfNeeded:0 error:0];

    v13 = objc_opt_class();
    v14 = objc_loadWeakRetained(&self->_lsm);
    pathManager2 = [v14 pathManager];
    v43 = v8;
    v16 = [v13 _urlForLocation:4 pathManager:pathManager2 createIfNeeded:1 error:&v43];
    v17 = v43;

    if (v16)
    {
      v18 = objc_alloc_init(MEMORY[0x1E696AC08]);
      v42 = v17;
      v19 = [v18 copyItemAtURL:v12 toURL:v16 error:&v42];
      v8 = v42;

      if ((v19 & 1) == 0)
      {
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v8;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to transfer the backup cache to the restore location. Error: %@", buf, 0xCu);
        }

        goto LABEL_21;
      }

      v20 = objc_opt_class();
      v21 = objc_loadWeakRetained(&self->_lsm);
      pathManager3 = [v21 pathManager];
      v12 = [v20 _urlForLocation:4 pathManager:pathManager3 createIfNeeded:0 error:0];

      v23 = objc_loadWeakRetained(&self->_lsm);
      clientSideEncryptionManager2 = [v23 clientSideEncryptionManager];
      v41 = v8;
      v25 = [clientSideEncryptionManager2 unarchiveDirectoryAtURL:v12 error:&v41];
      v17 = v41;

      if (v25)
      {
        v40 = v17;
        v26 = [MEMORY[0x1E69BF238] removeItemAtURL:v12 error:&v40];
        v8 = v40;

        if (v26)
        {

          v27 = v8;
          v28 = 1;
LABEL_25:

          goto LABEL_26;
        }

        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v8;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to remove the archive from the restore location. Error: %@", buf, 0xCu);
        }

        goto LABEL_21;
      }

      v39 = 0;
      v34 = [(PLComputeCacheManager *)self _removeLocation:3 error:&v39];
      v16 = v39;
      if (!v34)
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v16;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to clean up the restore location. Error: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to create the restore location. Error: %@", buf, 0xCu);
      }
    }

    v8 = v17;
LABEL_21:

LABEL_22:
    v36 = v8;
    v27 = v36;
    if (error)
    {
      v37 = v36;
      v28 = 0;
      *error = v27;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_25;
  }

  v29 = MEMORY[0x1E696ABC0];
  v30 = *MEMORY[0x1E69BFF48];
  v47 = *MEMORY[0x1E696A278];
  v48[0] = @"Encryption manager not initialized";
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v27 = [v29 errorWithDomain:v30 code:52011 userInfo:v31];

  if (error)
  {
    v32 = v27;
    v28 = 0;
    *error = v27;
  }

  else
  {
    v28 = 0;
  }

LABEL_26:

  return v28;
}

- (BOOL)_restoreComputeCacheArchiveWithProgress:(id)progress error:(id *)error
{
  v68[1] = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  _cachedPolicyConfiguration = [(PLComputeCacheManager *)self _cachedPolicyConfiguration];
  if (([_cachedPolicyConfiguration isRestoreEnabled] & 1) == 0)
  {
    v19 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A278];
    v68[0] = @"Restore disabled by server configuration";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v18 = [v19 errorWithDomain:*MEMORY[0x1E69BFF48] code:52006 userInfo:v20];

    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "ComputeCacheManager: Restore disabled by server configuration", &buf, 2u);
    }

    goto LABEL_13;
  }

  [(PLComputeCacheManager *)self _setICloudBackupRestoreDateFromArchive];
  *v61 = 0;
  v60 = 0;
  v8 = [(PLComputeCacheManager *)self _incrementRestoreCount:v61 error:&v60];
  v9 = v60;
  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = *v61;
  if (*v61 >= 2)
  {
    iCloudBackupRestoreDateStart = self->_iCloudBackupRestoreDateStart;
    self->_iCloudBackupRestoreDateStart = 0;

    v10 = *v61;
  }

  coreAnalyticsManager = self->_coreAnalyticsManager;
  v13 = [MEMORY[0x1E696AD98] numberWithShort:v10];
  [(PLCoreAnalyticsEventManager *)coreAnalyticsManager setPayloadValue:v13 forKey:*MEMORY[0x1E69BF690] onEventWithName:*MEMORY[0x1E69BF668]];

  if (*v61 >= 6)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = *v61;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Too many attempts to restore. Attempts count: %hd", &buf, 8u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A278];
    v66 = @"Too many attempts to restore compute cache";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v17 = [v15 errorWithDomain:*MEMORY[0x1E69BFF48] code:52003 userInfo:v16];

    v9 = v17;
LABEL_9:
    v18 = v9;
    goto LABEL_13;
  }

  v59 = v9;
  v26 = [(PLComputeCacheManager *)self _transferAndPrepareComputeCacheFromBackupToRestoreLocationWithError:&v59];
  v18 = v59;

  if (v26)
  {
    _shortLivedLibrary = [(PLComputeCacheManager *)self _shortLivedLibrary];
    restoreCachePhotoLibrary = self->_restoreCachePhotoLibrary;
    self->_restoreCachePhotoLibrary = _shortLivedLibrary;

    libraryID = [(PLPhotoLibrary *)self->_restoreCachePhotoLibrary libraryID];
    WeakRetained = objc_loadWeakRetained(&self->_lsm);
    pathManager = [WeakRetained pathManager];
    v31 = PLLibraryIDFromPathManager();
    v32 = [libraryID isEqual:v31];

    v33 = self->_restoreCachePhotoLibrary;
    if ((v32 & 1) == 0)
    {
      [(PLPhotoLibrary *)v33 libraryID];
      objc_claimAutoreleasedReturnValue();
      [objc_loadWeakRetained(&self->_lsm) pathManager];
      objc_claimAutoreleasedReturnValue();
      PLLibraryIDFromPathManager();
      objc_claimAutoreleasedReturnValue();
      _PFAssertFailHandler();
      __break(1u);
    }

    [(PLPhotoLibrary *)v33 disableOpportunisticTasks];
    v34 = objc_opt_class();
    v35 = objc_loadWeakRetained(&self->_lsm);
    pathManager2 = [v35 pathManager];
    v37 = [v34 _urlForLocation:3 pathManager:pathManager2 createIfNeeded:0 error:0];

    v38 = objc_alloc(MEMORY[0x1E695DF70]);
    v39 = +[PLComputeCacheManager restorePayloadClasses];
    v40 = [v38 initWithCapacity:{objc_msgSend(v39, "count")}];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v63 = 0x2020000000;
    v64 = 0;
    v41 = +[PLComputeCacheManager restorePayloadClasses];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __71__PLComputeCacheManager__restoreComputeCacheArchiveWithProgress_error___block_invoke;
    v55[3] = &unk_1E756FE60;
    v42 = v37;
    v56 = v42;
    p_buf = &buf;
    v43 = v40;
    v57 = v43;
    [v41 enumerateObjectsUsingBlock:v55];

    v44 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:*(*(&buf + 1) + 24) parent:progressCopy pendingUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __71__PLComputeCacheManager__restoreComputeCacheArchiveWithProgress_error___block_invoke_2;
    v52[3] = &unk_1E756FEB0;
    v52[4] = self;
    v45 = progressCopy;
    v53 = v45;
    v46 = v44;
    v54 = v46;
    [v43 enumerateObjectsUsingBlock:v52];
    [(PLPhotoLibrary *)self->_restoreCachePhotoLibrary enableOpportunisticTasks];
    isCancelled = [v45 isCancelled];
    if (isCancelled)
    {
      v48 = PLMigrationGetLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *v61 = 0;
        _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "ComputeCacheJournalManager: Early return from journal re-create non-assets due to progress cancel", v61, 2u);
      }

      v49 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41031 userInfo:0];
      if (error)
      {
        v49 = v49;
        *error = v49;
      }
    }

    [v46 setCompletedUnitCount:{objc_msgSend(v46, "totalUnitCount")}];
    v50 = self->_restoreCachePhotoLibrary;
    self->_restoreCachePhotoLibrary = 0;

    _Block_object_dispose(&buf, 8);
    if (!isCancelled)
    {
      v24 = 1;
      goto LABEL_18;
    }
  }

LABEL_13:
  [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
  v22 = PLMigrationGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to restore compute cache. Error: %@", &buf, 0xCu);
  }

  if (error)
  {
    v23 = v18;
    v24 = 0;
    *error = v18;
  }

  else
  {
    v24 = 0;
  }

LABEL_18:

  return v24;
}

void __71__PLComputeCacheManager__restoreComputeCacheArchiveWithProgress_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[PLJournal alloc] initWithBaseURL:*(a1 + 32) payloadClass:a2];
  *(*(*(a1 + 48) + 8) + 24) += [(PLJournal *)v3 countOfInsertEntriesWithError:0];
  [*(a1 + 40) addObject:v3];
}

void __71__PLComputeCacheManager__restoreComputeCacheArchiveWithProgress_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [[PLCloudAssetPayloadRestore alloc] initWithDelegate:*(a1 + 32) batchSize:100];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__PLComputeCacheManager__restoreComputeCacheArchiveWithProgress_error___block_invoke_3;
  v18[3] = &unk_1E756FE88;
  v19 = *(a1 + 40);
  v8 = v7;
  v20 = v8;
  v21 = *(a1 + 48);
  v17 = 0;
  v9 = [v6 enumeratePayloadsUsingBlock:v18 error:&v17];
  v10 = v17;
  if ((v9 & 1) == 0)
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_msgSend(v6 "payloadClass")];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed enumerate journal for payload %{public}@. Error: %@", buf, 0x16u);
    }
  }

  if ([*(a1 + 40) isCancelled])
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Will abort journal enumeration due to progress cancel", buf, 2u);
    }

    *a4 = 1;
  }

  else
  {
    [(PLCloudAssetPayloadRestore *)v8 insertRemainingPayloads];
    if ([(PLCloudAssetPayloadRestore *)v8 totalSkipped])
    {
      v14 = PLMigrationGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [(PLCloudAssetPayloadRestore *)v8 totalSkipped];
        v16 = [objc_msgSend(v6 "payloadClass")];
        *buf = 134218242;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Dropped %tu unmatched %@ payloads", buf, 0x16u);
      }
    }
  }
}

void __71__PLComputeCacheManager__restoreComputeCacheArchiveWithProgress_error___block_invoke_3(id *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([a1[4] isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Will abort journal enumeration due to progress cancel", v7, 2u);
    }

    *a3 = 1;
  }

  else
  {
    [a1[5] addPayload:v5];
    [a1[6] setCompletedUnitCount:{objc_msgSend(a1[6], "completedUnitCount") + 1}];
  }
}

- (BOOL)_restoreComputeCacheWithProgress:(id)progress error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v45 = 0;
  v10 = [v7 isEnabledWithPathManager:pathManager error:&v45];
  v11 = v45;

  if (!v10)
  {
    v19 = PLMigrationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_loadWeakRetained(&self->_lsm);
      pathManager2 = [v20 pathManager];
      *buf = 138412546;
      v47 = pathManager2;
      v48 = 2112;
      v49 = v11;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "ComputeCacheManager: : Restore not permitted for library %@. Error: %@", buf, 0x16u);
    }

    v22 = 0;
    goto LABEL_10;
  }

  _restoreState = [(PLComputeCacheManager *)self _restoreState];
  if (_restoreState > 1)
  {
    if (_restoreState != 2)
    {
      if (_restoreState == 3)
      {
        v32 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E69BFF48];
        v50 = *MEMORY[0x1E696A278];
        v51 = @"Restore not permitted whilst restore is currently in progress";
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v16 = [v32 errorWithDomain:v33 code:52007 userInfo:v34];

        v17 = PLMigrationGetLog();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v47 = v16;
        v18 = "ComputeCacheManager: Attempting to restore the compute cache when restore is currently in progress. Error: %@";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    [(PLComputeCacheManager *)self _setRestoreState:3];
    if (progressCopy)
    {
      v19 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1 parent:progressCopy pendingUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
    }

    else
    {
      v19 = 0;
    }

    v44 = v11;
    v22 = [(PLComputeCacheManager *)self _restoreComputeCacheArchiveWithProgress:v19 error:&v44];
    v42 = v44;

    [v19 setCompletedUnitCount:[v19 completedUnitCount]+ 1];
    v11 = v42;
LABEL_10:

    v23 = PLMigrationGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "ComputeCacheManager: : Cleaning up restore and backup archive", buf, 2u);
    }

    v43 = 0;
    v24 = [(PLComputeCacheManager *)self _removeRestoreDataWithError:&v43];
    v25 = v43;
    if (!v24)
    {
      v26 = PLMigrationGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_loadWeakRetained(&self->_lsm);
        pathManager3 = [v27 pathManager];
        *buf = 138412546;
        v47 = pathManager3;
        v48 = 2112;
        v49 = v25;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "ComputeCacheManager: : Cleanup restore data error for library %@. Error: %@", buf, 0x16u);
      }
    }

    [(PLComputeCacheManager *)self _resetRestoreState];

    v29 = v11;
    if (!v22)
    {
      if (!error)
      {
LABEL_30:
        v31 = 0;
        goto LABEL_31;
      }

      goto LABEL_18;
    }

LABEL_25:
    v31 = 1;
    goto LABEL_31;
  }

  if (_restoreState)
  {
    if (_restoreState == 1)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E69BFF48];
      v52 = *MEMORY[0x1E696A278];
      v53 = @"Restore not permitted for self created archive";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v16 = [v13 errorWithDomain:v14 code:52005 userInfo:v15];

      v17 = PLMigrationGetLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v47 = v16;
      v18 = "ComputeCacheManager: Attempting to restore the compute cache from a self created archive. Error: %@";
LABEL_23:
      v35 = v17;
      v36 = OS_LOG_TYPE_ERROR;
      v37 = 12;
      goto LABEL_28;
    }

LABEL_24:
    v29 = v11;
    goto LABEL_25;
  }

  v38 = MEMORY[0x1E696ABC0];
  v39 = *MEMORY[0x1E69BFF48];
  v54 = *MEMORY[0x1E696A278];
  v55[0] = @"Restore not required";
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v16 = [v38 errorWithDomain:v39 code:52004 userInfo:v40];

  v17 = PLMigrationGetLog();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

  *buf = 0;
  v18 = "ComputeCacheManager: Restore already completed";
  v35 = v17;
  v36 = OS_LOG_TYPE_DEFAULT;
  v37 = 2;
LABEL_28:
  _os_log_impl(&dword_19BF1F000, v35, v36, v18, buf, v37);
LABEL_29:

  v29 = v16;
  if (!error)
  {
    goto LABEL_30;
  }

LABEL_18:
  v30 = v29;
  v31 = 0;
  *error = v29;
LABEL_31:

  return v31;
}

- (BOOL)restoreComputeCacheWithProgress:(id)progress error:(id *)error
{
  progressCopy = progress;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__66776;
  v21 = __Block_byref_object_dispose__66777;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PLComputeCacheManager_restoreComputeCacheWithProgress_error___block_invoke;
  v13[3] = &unk_1E7578898;
  v15 = &v23;
  v13[4] = self;
  v8 = progressCopy;
  v14 = v8;
  v16 = &v17;
  dispatch_sync(queue, v13);
  v9 = *(v24 + 24);
  v10 = v18[5];
  if (error && (v9 & 1) == 0)
  {
    v10 = v10;
    *error = v10;
  }

  v11 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v11;
}

void __63__PLComputeCacheManager_restoreComputeCacheWithProgress_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _restoreComputeCacheWithProgress:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_addBackupCreatedMarkerWithError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v17 = 0;
  v8 = [v5 _urlForLocation:2 pathManager:pathManager createIfNeeded:1 error:&v17];
  v9 = v17;

  if (v8)
  {
    v16 = v9;
    v10 = [PLJournalFile createEmptyURL:v8 error:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v9;
  }

  v13 = PLMigrationGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v11;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to create marker. Error: %@", buf, 0xCu);
  }

  if (error)
  {
    v14 = v11;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

- (BOOL)_transferToBackupLocationWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v29 = 0;
  v8 = [v5 _urlForLocation:5 pathManager:pathManager createIfNeeded:1 error:&v29];
  v9 = v29;

  if (v8)
  {
    v28 = v9;
    v10 = [(PLComputeCacheManager *)self _removeLocation:6 error:&v28];
    v11 = v28;

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = objc_loadWeakRetained(&self->_lsm);
      pathManager2 = [v13 pathManager];
      v15 = [v12 _urlForLocation:6 pathManager:pathManager2 createIfNeeded:0 error:0];

      v16 = objc_opt_class();
      v17 = objc_loadWeakRetained(&self->_lsm);
      pathManager3 = [v17 pathManager];
      v19 = [v16 _urlForLocation:1 pathManager:pathManager3 createIfNeeded:0 error:0];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v27 = v11;
      LOBYTE(pathManager3) = [defaultManager moveItemAtURL:v19 toURL:v15 error:&v27];
      v9 = v27;

      if (pathManager3)
      {

        v21 = v9;
        v22 = 1;
        goto LABEL_15;
      }

      v23 = PLMigrationGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to transfer the backup cache to the restore location. Error: %@", buf, 0xCu);
      }
    }

    else
    {
      v15 = PLMigrationGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v11;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to remove previous backup archive. Error: %@", buf, 0xCu);
      }

      v9 = v11;
    }
  }

  v24 = v9;
  v21 = v24;
  if (error)
  {
    v25 = v24;
    v22 = 0;
    *error = v21;
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (BOOL)_archiveSnapshotWithError:(id *)error
{
  v15 = 0;
  v5 = [(PLComputeCacheManager *)self _archivePrepareDirectoryWithError:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v14 = v6;
    v8 = [(PLComputeCacheManager *)self _addBackupCreatedMarkerWithError:&v14];
    v9 = v14;

    v10 = v9;
    if (v8)
    {
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v6;
  }

  if (error)
  {
    v12 = v10;
    v11 = 0;
    *error = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (BOOL)_hasPrepareDataToBackupWithError:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PLComputeCacheManager__hasPrepareDataToBackupWithError___block_invoke;
  v14[3] = &unk_1E756FE38;
  v14[4] = &v15;
  [(PLComputeCacheManager *)self _enumerateComputeCachePrepareDirectoryUsingBlock:v14];
  if (v16[3])
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A278];
    v22[0] = @"Backup triggered on missing prepare data";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v7 = [v5 errorWithDomain:*MEMORY[0x1E69BFF48] code:52009 userInfo:v6];

    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Attempting to backup from prepare location with no data. Error: %@", buf, 0xCu);
    }

    v9 = *(v16 + 24);
    v10 = v7;
    v4 = v10;
    if (error && (v9 & 1) == 0)
    {
      v11 = v10;
      *error = v4;
    }
  }

  v12 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v12 & 1;
}

uint64_t __58__PLComputeCacheManager__hasPrepareDataToBackupWithError___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (BOOL)_archiveSnapshotIfNecessaryWithError:(id *)error
{
  v5 = [(PLComputeCacheManager *)self _hasPrepareDataToBackupWithError:?]&& [(PLComputeCacheManager *)self _archiveSnapshotWithError:error]&& [(PLComputeCacheManager *)self _transferToBackupLocationWithError:error];
  [(PLComputeCacheManager *)self _resetRestoreState];
  return v5;
}

- (BOOL)_createArchiveWithError:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  _restoreState = [(PLComputeCacheManager *)self _restoreState];
  if (_restoreState < 2)
  {
    v16 = 0;
    v11 = [(PLComputeCacheManager *)self _archiveSnapshotIfNecessaryWithError:&v16];
    v12 = v16;
    if (v11)
    {
      v13 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (_restoreState - 2 > 1)
    {
      v9 = 0;
    }

    else
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E69BFF48];
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"Backup triggered before restore has completed";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v9 = [v6 errorWithDomain:v7 code:52008 userInfo:v8];

      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Attempting to backup the compute cache archive before restore has completed. Error: %@", buf, 0xCu);
      }
    }

    v12 = v9;
  }

  if (error)
  {
    v14 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (BOOL)createArchiveWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PLComputeCacheManager_createArchiveWithError___block_invoke;
  block[3] = &unk_1E7576208;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __48__PLComputeCacheManager_createArchiveWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createArchiveWithError:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)coalesceJournalsForPayloadClassIDs:(id)ds withChangeJournalOverThreshold:(float)threshold completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, threshold);
  }
}

- (id)_snapshotPolicy
{
  v12 = *MEMORY[0x1E69E9840];
  _shortLivedLibrary = [(PLComputeCacheManager *)self _shortLivedLibrary];
  if (_shortLivedLibrary)
  {
    v4 = [[PLComputeCachePolicyDataSource alloc] initWithPhotoLibrary:_shortLivedLibrary restoreState:[(PLComputeCacheManager *)self _restoreState]];
    _cachedPolicyConfiguration = [(PLComputeCacheManager *)self _cachedPolicyConfiguration];
    v6 = [[PLComputeCachePolicy alloc] initWithPolicyData:v4 configuration:_cachedPolicyConfiguration];
  }

  else
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained(&self->_lsm);
      v10 = 138412290;
      v11 = WeakRetained;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to generate photo library instance. LSM: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_performSnapshotWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v5 = +[PLConcurrencyLimiter sharedLimiter];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PLComputeCacheManager__performSnapshotWithError___block_invoke;
  v7[3] = &unk_1E7576208;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = error;
  [v5 sync:v7 identifyingBlock:0 library:0];

  LOBYTE(error) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return error;
}

void __51__PLComputeCacheManager__performSnapshotWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[2];
  v4 = [v2 _newTransientContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PLComputeCacheManager__performSnapshotWithError___block_invoke_2;
  v5[3] = &unk_1E756FE10;
  v5[4] = a1[4];
  *(*(a1[5] + 8) + 24) = [v3 performFullSnapshotAppend:0 createOnlyIfNecessary:1 withManagedObjectContext:v4 entryLimitBlock:v5 error:a1[6]];
}

uint64_t __51__PLComputeCacheManager__performSnapshotWithError___block_invoke_2(uint64_t a1, void *a2)
{
  if (![objc_msgSend(a2 "payloadClass")])
  {
    return 0;
  }

  v3 = [*(a1 + 32) _cachedPolicyConfiguration];
  v4 = [v3 ambientSuggestionEntryLimit];

  return v4;
}

- (BOOL)_snapshotJournalsWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  pathManager = [WeakRetained pathManager];
  v8 = [v5 isEnabledWithPathManager:pathManager error:0];

  v9 = PLMigrationGetLog();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_loadWeakRetained(&self->_lsm);
      pathManager2 = [v20 pathManager];
      *buf = 138412290;
      v25 = pathManager2;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Snapshot disabled for library: %@", buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = objc_loadWeakRetained(&self->_lsm);
    pathManager3 = [v11 pathManager];
    *buf = 138412290;
    v25 = pathManager3;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "ComputeCacheManager: Performing snapshot for library: %@", buf, 0xCu);
  }

  v23 = 0;
  v13 = [(PLComputeCacheManager *)self _performSnapshotWithError:&v23];
  v14 = v23;
  if (v13)
  {
LABEL_12:
    v19 = 1;
    goto LABEL_13;
  }

  v15 = PLMigrationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_loadWeakRetained(&self->_lsm);
    pathManager4 = [v16 pathManager];
    *buf = 138412546;
    v25 = pathManager4;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "ComputeCacheManager: : Snapshot failed for library %@. Error: %@", buf, 0x16u);
  }

  if (error)
  {
    v18 = v14;
    v19 = 0;
    *error = v14;
  }

  else
  {
    v19 = 0;
  }

LABEL_13:
  [(PLComputeCacheManager *)self _resetRestoreState];

  return v19;
}

- (void)snapshotJournalsForPayloadClassIDs:(id)ds withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__PLComputeCacheManager_snapshotJournalsForPayloadClassIDs_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E7577C08;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

void __82__PLComputeCacheManager_snapshotJournalsForPayloadClassIDs_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _snapshotJournalsWithError:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (BOOL)snapshotJournalsForPayloadClassIDs:(id)ds error:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__66776;
  v15 = __Block_byref_object_dispose__66777;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLComputeCacheManager_snapshotJournalsForPayloadClassIDs_error___block_invoke;
  block[3] = &unk_1E7578870;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v11;
  dispatch_sync(queue, block);
  v6 = *(v18 + 24);
  v7 = v12[5];
  if (error && (v6 & 1) == 0)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __66__PLComputeCacheManager_snapshotJournalsForPayloadClassIDs_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _snapshotJournalsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)snapshotComputeCacheAndBackupIfNeededWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__66776;
  v14 = __Block_byref_object_dispose__66777;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PLComputeCacheManager_snapshotComputeCacheAndBackupIfNeededWithError___block_invoke;
  block[3] = &unk_1E7578870;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(queue, block);
  v5 = *(v17 + 24);
  v6 = v11[5];
  if (error && (v5 & 1) == 0)
  {
    v6 = v6;
    *error = v6;
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __72__PLComputeCacheManager_snapshotComputeCacheAndBackupIfNeededWithError___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _snapshotPolicy];
  v3 = v2;
  if (!v2)
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      v32 = [WeakRetained pathManager];
      *buf = 138412290;
      v48 = v32;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to access snapshot policy for library: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if ([v2 snapshotAllowed])
  {
    v4 = [v3 snapshotRequired];
    v5 = PLMigrationGetLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = [v3 reason];
        v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v9 = [v8 pathManager];
        *buf = 138543618;
        v48 = v7;
        v49 = 2112;
        v50 = v9;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "ComputeCacheManager: Updating compute cache snapshot with reason [%{public}@] for library: %@", buf, 0x16u);
      }

      [*(*(a1 + 32) + 24) startRecordingTimedEventToken];
      v11 = v10;
      v12 = *(a1 + 32);
      v13 = *(*(a1 + 48) + 8);
      obj = *(v13 + 40);
      v14 = [v12 _snapshotJournalsWithError:&obj];
      objc_storeStrong((v13 + 40), obj);
      *(*(*(a1 + 40) + 8) + 24) = v14;
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        v15 = *(a1 + 32);
        v16 = *(*(a1 + 48) + 8);
        v44 = *(v16 + 40);
        v17 = [v15 _createArchiveWithError:&v44];
        objc_storeStrong((v16 + 40), v44);
        *(*(*(a1 + 40) + 8) + 24) = v17;
      }

      v18 = *MEMORY[0x1E69BF668];
      [*(*(a1 + 32) + 24) stopRecordingTimedEventWithToken:*MEMORY[0x1E69BF688] forKey:*MEMORY[0x1E69BF668] onEventWithName:v11];
      [*(*(a1 + 32) + 24) setPayloadValue:&unk_1F0FBD600 forKey:*MEMORY[0x1E69BF6A0] onEventWithName:v18];
      v19 = *(*(a1 + 32) + 24);
      v20 = [MEMORY[0x1E696AD98] numberWithBool:*(*(*(a1 + 40) + 8) + 24)];
      [v19 setPayloadValue:v20 forKey:*MEMORY[0x1E69BF698] onEventWithName:v18];

      v21 = *(a1 + 32);
      v22 = v21[3];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v21, "_libraryAssetCount")}];
      [v22 setPayloadValue:v23 forKey:*MEMORY[0x1E69BF670] onEventWithName:v18];

      v24 = *(a1 + 32);
      v25 = v24[3];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v24, "_getArchiveSize")}];
      [v25 setPayloadValue:v26 forKey:*MEMORY[0x1E69BF650] onEventWithName:v18];

      v27 = *(*(a1 + 32) + 24);
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "allowPolicy")}];
      [v27 setPayloadValue:v28 forKey:*MEMORY[0x1E69BF658] onEventWithName:v18];

      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
      {
        v29 = *(*(a1 + 32) + 24);
        v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "code")}];
        [v29 setPayloadValue:v30 forKey:*MEMORY[0x1E69BF660] onEventWithName:v18];
      }

      [*(a1 + 32) _publish];
      goto LABEL_21;
    }

    if (v6)
    {
      v41 = [v3 reason];
      v42 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v43 = [v42 pathManager];
      *buf = 138543618;
      v48 = v41;
      v49 = 2112;
      v50 = v43;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "ComputeCacheManager: Skipping compute cache snapshot with reason [%{public}@] for library: %@", buf, 0x16u);
    }

LABEL_20:

    goto LABEL_21;
  }

  v33 = PLMigrationGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v3 reason];
    v35 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v36 = [v35 pathManager];
    *buf = 138543618;
    v48 = v34;
    v49 = 2112;
    v50 = v36;
    _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "ComputeCacheManager: Snapshot not allowed, performing snapshot cleanup with reason [%{public}@] for library: %@", buf, 0x16u);
  }

  v37 = *(a1 + 32);
  v38 = *(*(a1 + 48) + 8);
  v46 = *(v38 + 40);
  v39 = [v37 _removeSnapshotWithError:&v46];
  objc_storeStrong((v38 + 40), v46);
  *(*(*(a1 + 40) + 8) + 24) = v39;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v40 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v48 = v40;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to remove snapshot data. Error: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (BOOL)resetComputeCacheWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__66776;
  v14 = __Block_byref_object_dispose__66777;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLComputeCacheManager_resetComputeCacheWithError___block_invoke;
  block[3] = &unk_1E7578870;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(queue, block);
  v5 = *(v17 + 24);
  v6 = v11[5];
  if (error && (v5 & 1) == 0)
  {
    v6 = v6;
    *error = v6;
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

uint64_t __52__PLComputeCacheManager_resetComputeCacheWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _removeLocation:5 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 8);
    v15 = *(v7 + 40);
    v8 = [v6 _removeLocation:0 error:&v15];
    objc_storeStrong((v7 + 40), v15);
    v5 = *(*(a1 + 40) + 8);
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 24) = v8;
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) == 1)
  {
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 48) + 8);
    v14 = *(v11 + 40);
    v12 = [v10 _removeLocation:3 error:&v14];
    objc_storeStrong((v11 + 40), v14);
    v9 = *(*(a1 + 40) + 8);
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 24) = v12;
  return [*(a1 + 32) _resetRestoreState];
}

- (int64_t)_iCloudBackupState
{
  v2 = objc_alloc_init(MEMORY[0x1E69B1968]);
  if ([v2 isBackupEnabled])
  {
    v3 = [v2 isBackupEnabledForDomainName:@"CameraRollDomain"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isInitialSyncWithInitialSyncDate:(id)date
{
  v12 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = dateCopy;
  if (!dateCopy)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  [dateCopy timeIntervalSinceNow];
  v6 = v5;
  if (v5 >= 0.0)
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Initial sync date has been set in the future. Interval: %lf", &v10, 0xCu);
    }

    goto LABEL_7;
  }

  v7 = fabs(v5) <= 120.0;
LABEL_8:

  return v7;
}

- (void)notifyCPLConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PLComputeCacheManager_notifyCPLConfiguration___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

- (void)notifyReadyToRestoreWithInitialSyncDate:(id)date
{
  dateCopy = date;
  if (MEMORY[0x19EAEE230]() && ([MEMORY[0x1E695E000] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"PLDisableAutoComputeCacheRestore"), v5, v6))
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "ComputeCacheManager: notified ready to restore but auto-restore disabled", buf, 2u);
    }
  }

  else
  {
    v8 = [(PLComputeCacheManager *)self _isInitialSyncWithInitialSyncDate:dateCopy];
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PLComputeCacheManager_notifyReadyToRestoreWithInitialSyncDate___block_invoke;
    v10[3] = &unk_1E7576F80;
    v10[4] = self;
    v11 = v8;
    dispatch_async(queue, v10);
  }
}

void __65__PLComputeCacheManager_notifyReadyToRestoreWithInitialSyncDate___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "ComputeCacheManager: notified restore start", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = v3[3];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "_getArchiveSize")}];
  v6 = *MEMORY[0x1E69BF668];
  [v4 setPayloadValue:v5 forKey:*MEMORY[0x1E69BF650] onEventWithName:*MEMORY[0x1E69BF668]];

  [*(*(a1 + 32) + 24) startRecordingTimedEventToken];
  v8 = v7;
  v9 = *(a1 + 32);
  v32 = 0;
  v10 = [v9 _restoreComputeCacheWithProgress:0 error:&v32];
  v11 = v32;
  [*(*(a1 + 32) + 24) stopRecordingTimedEventWithToken:*MEMORY[0x1E69BF688] forKey:v6 onEventWithName:v8];
  [*(*(a1 + 32) + 24) setPayloadValue:&unk_1F0FBD5E8 forKey:*MEMORY[0x1E69BF6A0] onEventWithName:v6];
  v12 = *(*(a1 + 32) + 24);
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v10];
  [v12 setPayloadValue:v13 forKey:*MEMORY[0x1E69BF698] onEventWithName:v6];

  v14 = *(a1 + 32);
  v15 = v14[3];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "_libraryAssetCount")}];
  [v15 setPayloadValue:v16 forKey:*MEMORY[0x1E69BF670] onEventWithName:v6];

  v17 = *(a1 + 32);
  v18 = *(v17 + 24);
  v19 = MEMORY[0x1E696AD98];
  [*(v17 + 64) timeIntervalSinceNow];
  v21 = [v19 numberWithDouble:-v20];
  [v18 setPayloadValue:v21 forKey:*MEMORY[0x1E69BF678] onEventWithName:v6];

  v22 = *(a1 + 32);
  v23 = v22[3];
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "_iCloudBackupState")}];
  [v23 setPayloadValue:v24 forKey:*MEMORY[0x1E69BF680] onEventWithName:v6];

  if (v10)
  {
    v25 = PLMigrationGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_INFO, "ComputeCacheManager: restore completed", buf, 2u);
    }

    v26 = [*(a1 + 32) _shortLivedLibrary];
    [PLPhotoAnalysisPhotoLibraryService notifyComputeCacheDidLoadForLibrary:v26 reply:&__block_literal_global_66997];

    goto LABEL_12;
  }

  if ([objc_opt_class() shouldPublishAnalyticsForRestoreError:v11])
  {
    v27 = PLMigrationGetLog();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      v29 = *(*(a1 + 32) + 24);
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "code")}];
      [v29 setPayloadValue:v30 forKey:*MEMORY[0x1E69BF660] onEventWithName:v6];

LABEL_12:
      [*(a1 + 32) _publish];
      goto LABEL_13;
    }

    *buf = 138412290;
    v34 = v11;
    v28 = "ComputeCacheManager: Restore compute cache failed or denied on notify. Error: %@";
LABEL_10:
    _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
    goto LABEL_11;
  }

  if (*(a1 + 40) == 1 && PLIsErrorEqualToCode())
  {
    v27 = PLMigrationGetLog();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v34 = v11;
    v28 = "ComputeCacheManager: Restore compute cache failed. No restore archive available. Error: %@";
    goto LABEL_10;
  }

  v31 = PLMigrationGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v11;
    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_INFO, "ComputeCacheManager: Restore compute cache failed or denied on notify. Error: %@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 24) removeEventWithName:v6];
LABEL_13:
}

void __65__PLComputeCacheManager_notifyReadyToRestoreWithInitialSyncDate___block_invoke_97(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "ComputeCacheManager: photoanalysisd FTE registration failed. Error: %@", &v4, 0xCu);
    }
  }
}

- (void)_publish
{
  [(PLCoreAnalyticsEventManager *)self->_coreAnalyticsManager publishAllEvents];
  coreAnalyticsManager = self->_coreAnalyticsManager;
  v4 = *MEMORY[0x1E69BF668];

  [(PLCoreAnalyticsEventManager *)coreAnalyticsManager removeEventWithName:v4];
}

- (PLComputeCacheManager)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLComputeCacheManager.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"lsm"}];
  }

  v19.receiver = self;
  v19.super_class = PLComputeCacheManager;
  v6 = [(PLComputeCacheManager *)&v19 init];
  if (v6)
  {
    v7 = [PLJournalManager journalManagerWithClass:objc_opt_class() libraryServiceManager:managerCopy];
    journalManager = v6->_journalManager;
    v6->_journalManager = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69BF1F0]);
    coreAnalyticsManager = v6->_coreAnalyticsManager;
    v6->_coreAnalyticsManager = v9;

    objc_storeWeak(&v6->_lsm, managerCopy);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%s.%@.queue", "assetsd", objc_opt_class()];
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create(uTF8String, v14);
    queue = v6->_queue;
    v6->_queue = v15;

    v6->_restoreStateLock._os_unfair_lock_opaque = 0;
    [(PLComputeCacheManager *)v6 _resetRestoreState];
  }

  return v6;
}

+ (id)_urlForLocation:(int64_t)location pathManager:(id)manager createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  v33 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v10 = managerCopy;
  if (neededCopy)
  {
    [managerCopy privateCacheDirectoryCreationMaskResetWithSubType:15];
    [v10 privateDirectoryCreationMaskResetWithSubType:10];
  }

  v11 = 0;
  v12 = 1;
  if (location > 2)
  {
    if (location > 4)
    {
      if (location != 5)
      {
        if (location != 6)
        {
          goto LABEL_18;
        }

        v22 = 0;
        v13 = [v10 privateDirectoryWithSubType:10 createIfNeeded:neededCopy error:&v22];
        v14 = v22;
        goto LABEL_26;
      }

      v23 = 0;
      v11 = [v10 privateDirectoryWithSubType:10 createIfNeeded:neededCopy error:&v23];
      v17 = v23;
    }

    else
    {
      if (location != 3)
      {
        v24 = 0;
        v13 = [v10 privateCacheDirectoryWithSubType:15 leafType:1 additionalPathComponents:@"restore" createIfNeeded:neededCopy error:&v24];
        v14 = v24;
        goto LABEL_26;
      }

      v25 = 0;
      v11 = [v10 privateCacheDirectoryWithSubType:15 leafType:1 additionalPathComponents:@"restore" createIfNeeded:neededCopy error:&v25];
      v17 = v25;
    }

LABEL_17:
    v15 = v17;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  if (!location)
  {
    v28 = 0;
    v11 = [v10 privateCacheDirectoryWithSubType:15 leafType:1 additionalPathComponents:@"prepare" createIfNeeded:neededCopy error:&v28];
    v17 = v28;
    goto LABEL_17;
  }

  if (location != 1)
  {
    if (location != 2)
    {
      goto LABEL_18;
    }

    v26 = 0;
    v13 = [v10 privateCacheDirectoryWithSubType:15 leafType:1 additionalPathComponents:@"prepare" createIfNeeded:neededCopy error:&v26];
    v15 = v26;
    v16 = @"backupcreatedmarker";
    goto LABEL_27;
  }

  v27 = 0;
  v13 = [v10 privateCacheDirectoryWithSubType:15 leafType:1 additionalPathComponents:@"prepare" createIfNeeded:neededCopy error:&v27];
  v14 = v27;
LABEL_26:
  v15 = v14;
  v16 = @"computecache.aea";
LABEL_27:
  v11 = [v13 stringByAppendingPathComponent:v16];

  v12 = 0;
  if (v15)
  {
LABEL_28:
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      locationCopy = location;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to create location %tu compute cache data. Error: %@", buf, 0x16u);
    }

    v18 = v15;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_18:
  v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:v12];
  if (v18)
  {
    goto LABEL_22;
  }

  if (error)
  {
LABEL_20:
    v19 = v18;
    *error = v18;
  }

LABEL_21:

  v18 = 0;
LABEL_22:

  return v18;
}

+ (BOOL)shouldPublishAnalyticsForRestoreError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E69BFF48]];

  if (!v5 || ((v6 = [errorCopy code], v7 = 0, (v6 - 52001) > 6) || ((1 << (v6 - 33)) & 0x59) == 0) && v6 != 45999)
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)isEnabledWithPathManager:(id)manager error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLComputeCacheManager.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  v8 = MEMORY[0x1E69BF2A0];
  libraryURL = [managerCopy libraryURL];
  v10 = [v8 wellKnownPhotoLibraryIdentifierForURL:libraryURL];

  if (v10 - 2 < 2)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "ComputeCacheManager: Disabled journal for invalid well known library type", buf, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v29 = *MEMORY[0x1E696A278];
    v30 = @"Disabled journal for invalid well known library type";
    v17 = MEMORY[0x1E695DF20];
    v18 = &v30;
    v19 = &v29;
  }

  else
  {
    if (v10 > 1 || ([managerCopy libraryURL], v11 = objc_claimAutoreleasedReturnValue(), v12 = PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(v11), v11, (v12 & 1) != 0))
    {
      v13 = 1;
      goto LABEL_16;
    }

    v20 = PLMigrationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "ComputeCacheManager: Disabled journal manager for CPL disabled library", buf, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v31 = *MEMORY[0x1E696A278];
    v32[0] = @"Disabled journal manager for CPL disabled library";
    v17 = MEMORY[0x1E695DF20];
    v18 = v32;
    v19 = &v31;
  }

  v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
  v22 = [v15 errorWithDomain:v16 code:52001 userInfo:v21];

  v23 = v22;
  v24 = v23;
  if (error)
  {
    v25 = v23;
    *error = v24;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (id)restorePayloadClasses
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)baseURLFromPathManager:(id)manager
{
  v10 = *MEMORY[0x1E69E9840];
  if (manager)
  {
    v7 = 0;
    v3 = [self _urlForLocation:0 pathManager:manager createIfNeeded:1 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = PLMigrationGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "ComputeCacheManager: Failed to save prepare compute cache data. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end