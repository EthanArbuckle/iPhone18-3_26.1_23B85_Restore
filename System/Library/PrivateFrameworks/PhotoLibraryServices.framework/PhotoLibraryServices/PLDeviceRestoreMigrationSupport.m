@interface PLDeviceRestoreMigrationSupport
- (BOOL)_isOTARestoreFinishedWithStatus:(id *)a3;
- (BOOL)hasCompletedDataMigratorPrerequisitesForTrackingRestoreFromCloud;
- (BOOL)isOTARestoreInProgressWithStatus:(id *)a3;
- (BOOL)isRestoreFromBackupSourceMegaBackup;
- (BOOL)prepareDatabaseForOTARestoreIfNecessaryWithMigrationType:(int64_t)a3;
- (PLDeviceRestoreMigrationSupport)initWithLibraryServicesManager:(id)a3;
- (id)_dataMigrationInfo;
- (id)_newShortLivedLibrarySupportingLibraryOpenWithName:(const char *)a3;
- (id)restoreTypeDescription;
- (void)_batchDeleteAllAssetsExcludedFromOTARestoreWithContext:(id)a3;
- (void)_checkIsOTARestoreInProgress;
- (void)_linkAsideAlbumMetadata;
- (void)_prepareDatabaseForOTAAssetsPhase;
- (void)_setAlbumPendingItemCountsWithContext:(id)a3 shouldSave:(BOOL)a4;
- (void)_setAssetsToOTARestoreAsIncompleteWithContext:(id)a3 populateAlbumMappings:(id)a4;
- (void)_updateIsOTARestoreFinished:(BOOL)a3 statusMessage:(id)a4;
- (void)deletePhotoStreamData;
- (void)setDataMigratorPluginHasRequestedLibraryMigration:(BOOL)a3;
- (void)waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud;
@end

@implementation PLDeviceRestoreMigrationSupport

- (void)setDataMigratorPluginHasRequestedLibraryMigration:(BOOL)a3
{
  self->_dataMigratorPluginHasRequestedLibraryMigration = a3;
  if (a3)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "data migrator plugin has requested library migration", buf, 2u);
    }

    PLRunWithUnfairLock();
  }
}

void __85__PLDeviceRestoreMigrationSupport_setDataMigratorPluginHasRequestedLibraryMigration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) prerequisitesBlockLock_prerequisitesCompleteBlock];

  if (!v2)
  {
    v5 = *(*(a1 + 32) + 24);
    v6 = PLMigrationGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "data migration prerequisites already marked complete [before plugin requested migration]";
        v9 = &v11;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else if (v7)
    {
      v10 = 0;
      v8 = "data migration prerequisites marked complete before waiting";
      v9 = &v10;
      goto LABEL_10;
    }

    return;
  }

  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "data migration prerequisites are complete [plugin requested migration]", buf, 2u);
  }

  v4 = [*(a1 + 32) prerequisitesBlockLock_prerequisitesCompleteBlock];
  v4[2]();

  [*(a1 + 32) setPrerequisitesBlockLock_prerequisitesCompleteBlock:0];
}

- (void)waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
  v5 = [v4 isDeviceRestoreSupported];

  if (!v5)
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "not waiting for data migrator plugin: device does not support restore from iCloud.", &buf, 2u);
    }

    goto LABEL_7;
  }

  if (self->_didWaitForPrerequisites)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:514 description:@"Already waited for prerequisites"];
  }

  self->_didWaitForPrerequisites = 1;
  if ([(PLDeviceRestoreMigrationSupport *)self hasDataMigratorPluginRequestedLibraryMigration])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = @"com.apple.MobileSlideShow";
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "data migrator plugin %{public}@ is in progress and has requested library migration, not waiting for plugin to complete to avoid deadlock", &buf, 0xCu);
    }

LABEL_7:

    return;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__107;
  v17 = __Block_byref_object_dispose__108;
  v18 = 0;
  v11[6] = MEMORY[0x1E69E9820];
  v11[7] = 3221225472;
  v11[8] = __94__PLDeviceRestoreMigrationSupport_waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud__block_invoke;
  v11[9] = &unk_1E7578910;
  v11[10] = self;
  v11[11] = &buf;
  PLRunWithUnfairLock();
  v7 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__PLDeviceRestoreMigrationSupport_waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud__block_invoke_111;
  v11[3] = &unk_1E7577B90;
  v11[4] = self;
  v11[5] = @"com.apple.MobileSlideShow";
  dispatch_async(v7, v11);

  v8 = PLMigrationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138543362;
    v13 = @"com.apple.MobileSlideShow";
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "waiting to verify migrator plugin %{public}@ is complete or to request library migration", v12, 0xCu);
  }

  dispatch_block_wait(*(*(&buf + 1) + 40), 0xFFFFFFFFFFFFFFFFLL);
  v9 = PLMigrationGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "done waiting for data migrator prerequisites", v12, 2u);
  }

  _Block_object_dispose(&buf, 8);
}

void __94__PLDeviceRestoreMigrationSupport_waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) prerequisitesBlockLock_prerequisitesCompleteBlock];

  if (!v2)
  {
    v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_110_85585);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);

    [v6 setPrerequisitesBlockLock_prerequisitesCompleteBlock:v7];
  }
}

uint64_t __94__PLDeviceRestoreMigrationSupport_waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud__block_invoke_111(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "perform data migrator plugin if necessary: %{public}@", &buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = getDMPerformMigrationReturningAfterPluginSymbolLoc_ptr;
  v16 = getDMPerformMigrationReturningAfterPluginSymbolLoc_ptr;
  if (!getDMPerformMigrationReturningAfterPluginSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v18 = __getDMPerformMigrationReturningAfterPluginSymbolLoc_block_invoke;
    v19 = &unk_1E7577EA0;
    v20 = &v13;
    v6 = DataMigrationLibrary_85572();
    v7 = dlsym(v6, "DMPerformMigrationReturningAfterPlugin");
    *(v20[1] + 24) = v7;
    getDMPerformMigrationReturningAfterPluginSymbolLoc_ptr = *(v20[1] + 24);
    v5 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PLDMPerformMigrationReturningAfterPlugin(CFStringRef)"];
    [v11 handleFailureInFunction:v12 file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v5(v4);
  v8 = PLMigrationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "data migrator plugin %{public}@ is complete", &buf, 0xCu);
  }

  return PLRunWithUnfairLock();
}

void __94__PLDeviceRestoreMigrationSupport_waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud__block_invoke_112(uint64_t a1)
{
  v2 = [*(a1 + 32) prerequisitesBlockLock_prerequisitesCompleteBlock];

  v3 = PLMigrationGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "data migration prerequisites are complete [plugin complete]", buf, 2u);
    }

    v5 = [*(a1 + 32) prerequisitesBlockLock_prerequisitesCompleteBlock];
    v5[2]();

    [*(a1 + 32) setPrerequisitesBlockLock_prerequisitesCompleteBlock:0];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "data migration prerequisites already marked complete [before plugin complete]", v6, 2u);
    }
  }
}

void __94__PLDeviceRestoreMigrationSupport_waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud__block_invoke_2()
{
  v0 = PLMigrationGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_19BF1F000, v0, OS_LOG_TYPE_DEBUG, "running data migration prequisites complete block", v1, 2u);
  }
}

- (BOOL)hasCompletedDataMigratorPrerequisitesForTrackingRestoreFromCloud
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
  v4 = [v3 isDeviceRestoreSupported];

  if (!v4)
  {
    return 1;
  }

  if ([(PLDeviceRestoreMigrationSupport *)self hasDataMigratorPluginRequestedLibraryMigration])
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = @"com.apple.MobileSlideShow";
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Data migrator plugin %{public}@ is in progress and has requested library migration, not waiting for plugin to complete to avoid deadlock", &v8, 0xCu);
    }

    return 1;
  }

  PLDMIsMigrationNeeded();
  return v7 ^ 1;
}

- (id)restoreTypeDescription
{
  if ([(PLDeviceRestoreMigrationSupport *)self isRestoreFromBackupSourceDifferentDevice])
  {
    v3 = @" from different device";
  }

  else
  {
    v3 = @" from this device";
  }

  if ([(PLDeviceRestoreMigrationSupport *)self isRestoreFromBackupSourceCloud])
  {
    v4 = [@"iCloud" stringByAppendingString:v3];
  }

  else
  {
    v4 = @"unknown";
  }

  if ([(PLDeviceRestoreMigrationSupport *)self isRestoreFromBackupSourceMegaBackup])
  {
    v5 = [@"MegaBackup" stringByAppendingString:v3];

    v4 = v5;
  }

  if ([(PLDeviceRestoreMigrationSupport *)self isRestoreFromBackupSourceDeviceToDevice])
  {
    v6 = [@"DeviceToDevice" stringByAppendingString:v3];

    v4 = v6;
  }

  if ([(PLDeviceRestoreMigrationSupport *)self isRestoreFromBackupSourceiTunes])
  {
    v7 = [@"iTunes" stringByAppendingString:v3];

    v4 = v7;
  }

  if ([(PLDeviceRestoreMigrationSupport *)self isEraseWithoutRestore])
  {

    v4 = @"erase without restore";
  }

  if ([(PLDeviceRestoreMigrationSupport *)self isUpgradeWithoutRestore])
  {

    v4 = @"upgrade without restore";
  }

  return v4;
}

- (BOOL)isRestoreFromBackupSourceMegaBackup
{
  v3 = [(PLDeviceRestoreMigrationSupport *)self isRestoreFromBackupSourceCloud];
  if (v3)
  {

    LOBYTE(v3) = [(PLDeviceRestoreMigrationSupport *)self _userDataDispositionMatchesDisposition:128];
  }

  return v3;
}

void __74__PLDeviceRestoreMigrationSupport__userDataDispositionMatchesDisposition___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 20))
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v2 = getDMGetUserDataDispositionSymbolLoc_ptr;
    v9 = getDMGetUserDataDispositionSymbolLoc_ptr;
    if (!getDMGetUserDataDispositionSymbolLoc_ptr)
    {
      v3 = DataMigrationLibrary_85572();
      v7[3] = dlsym(v3, "DMGetUserDataDisposition");
      getDMGetUserDataDispositionSymbolLoc_ptr = v7[3];
      v2 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (v2)
    {
      *(*(a1 + 32) + 20) = v2();
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DMUserDataDisposition PLDMGetUserDataDisposition(void)"];
      [v4 handleFailureInFunction:v5 file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:45 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

- (void)_checkIsOTARestoreInProgress
{
  v3 = objc_autoreleasePoolPush();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getMBManagerClass_softClass_85627;
  v13 = getMBManagerClass_softClass_85627;
  if (!getMBManagerClass_softClass_85627)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getMBManagerClass_block_invoke_85628;
    location[3] = &unk_1E7577EA0;
    location[4] = &v10;
    __getMBManagerClass_block_invoke_85628(location);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = objc_alloc_init(v4);
  objc_initWeak(location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PLDeviceRestoreMigrationSupport__checkIsOTARestoreInProgress__block_invoke;
  v7[3] = &unk_1E7578730;
  objc_copyWeak(&v8, location);
  [v6 fetchiCloudRestoreIsCompleteWithCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);

  objc_autoreleasePoolPop(v3);
}

void __63__PLDeviceRestoreMigrationSupport__checkIsOTARestoreInProgress__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    v6 = @"Done";
  }

  else if (v5)
  {
    v6 = [v5 description];
  }

  else
  {
    v6 = @"Missing error for restoreIsComplete=NO";
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIsOTARestoreFinished:a2 statusMessage:v6];
}

- (void)_updateIsOTARestoreFinished:(BOOL)a3 statusMessage:(id)a4
{
  v5 = a4;
  v4 = v5;
  PLRunWithUnfairLock();
}

void __77__PLDeviceRestoreMigrationSupport__updateIsOTARestoreFinished_statusMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 36) & 1) == 0)
  {
    *(v1 + 36) = *(a1 + 48);
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  }
}

- (BOOL)_isOTARestoreFinishedWithStatus:(id *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__85646;
  v10 = __Block_byref_object_dispose__85647;
  v11 = 0;
  PLRunWithUnfairLock();
  if (a3)
  {
    *a3 = v7[5];
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  return v4;
}

- (BOOL)isOTARestoreInProgressWithStatus:(id *)a3
{
  v4 = [(PLDeviceRestoreMigrationSupport *)self _isOTARestoreFinishedWithStatus:a3];
  if (!v4)
  {
    [(PLDeviceRestoreMigrationSupport *)self _checkIsOTARestoreInProgress];
  }

  return !v4;
}

- (id)_dataMigrationInfo
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
  v3 = [v2 photoDirectoryWithType:6];

  v4 = [v3 stringByAppendingPathComponent:*MEMORY[0x1E69BFCE8]];
  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v11 = 0;
  v7 = [v5 dictionaryWithContentsOfURL:v6 error:&v11];
  v8 = v11;

  if (!v7)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = v4;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unable to read info dictionary: %{public}@: %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)_linkAsideAlbumMetadata
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(PLLibraryServicesManager *)self->_libraryServicesManager modelMigrator];
  v4 = [v3 pathManager];
  v5 = [v4 privateDirectoryWithSubType:4];
  v6 = [v2 fileURLWithPath:v5 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  LODWORD(v5) = [v7 fileExistsAtPath:v8 isDirectory:0];

  if (v5)
  {
    v9 = *MEMORY[0x1E695DC30];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DC30]];
    v30 = v6;
    v11 = [v7 enumeratorAtURL:v6 includingPropertiesForKeys:v10 options:0 errorHandler:&__block_literal_global_85653];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        v16 = 0;
        v31 = v14;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * v16);
          v32 = 0;
          v18 = [v17 getResourceValue:&v32 forKey:v9 error:0];
          v19 = v32;
          v20 = v19;
          if (v18 && [v19 length])
          {
            v21 = v15;
            v22 = v9;
            v23 = v12;
            v24 = [v17 URLByAppendingPathExtension:@"aside"];
            v25 = [v24 path];
            v26 = v7;
            v27 = [v7 fileExistsAtPath:v25];

            if ((v27 & 1) == 0)
            {
              [v26 linkItemAtURL:v17 toURL:v24 error:0];
            }

            v7 = v26;
            v12 = v23;
            v9 = v22;
            v15 = v21;
            v14 = v31;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    v6 = v30;
  }

  else
  {
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [v6 path];
      v29 = v28 = v7;
      *buf = 138543362;
      v38 = v29;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "No albums metadata found at path '%{public}@'", buf, 0xCu);

      v7 = v28;
    }
  }
}

uint64_t __58__PLDeviceRestoreMigrationSupport__linkAsideAlbumMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v4 path];
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to enumerate '%{public}@': %@", &v9, 0x16u);
  }

  return 1;
}

- (void)_setAssetsToOTARestoreAsIncompleteWithContext:(id)a3 populateAlbumMappings:(id)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"complete != 0"];
  [v10 setPredicate:v11];
  v36[0] = @"albums";
  v36[1] = @"mediaAnalysisAttributes";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [v10 setRelationshipKeyPathsForPrefetching:v12];

  [v10 setFetchBatchSize:100];
  v33 = 0;
  v13 = [v6 executeFetchRequest:v10 error:&v33];
  v14 = v33;
  if (v13)
  {
    v15 = [MEMORY[0x1E69BF238] fileManager];
    if ([v13 count])
    {
      v16 = [(PLLibraryServicesManager *)self->_libraryServicesManager modelMigrator];
      v17 = [v16 generatePathToAssetUUIDRecoveryMapping];

      v18 = [(PLLibraryServicesManager *)self->_libraryServicesManager modelMigrator];
      [v18 archiveAssetUUIDForPathPlist:v17];
    }

    v19 = [(PLDeviceRestoreMigrationSupport *)self isRestoreFromBackupSourceMegaBackup];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __103__PLDeviceRestoreMigrationSupport__setAssetsToOTARestoreAsIncompleteWithContext_populateAlbumMappings___block_invoke;
    v28[3] = &unk_1E7573068;
    v29 = v15;
    v32 = v19;
    v30 = v6;
    v31 = v7;
    v20 = v15;
    v21 = [v30 enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v28];
    v22 = PLMigrationGetLog();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v21;
        v24 = "set assets to OTA restore as incomplete failed: %@";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_19BF1F000, v25, v26, v24, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v13 count];
      *buf = 134217984;
      v35 = v27;
      v24 = "Fix %lu cloudMaster nil original filename";
      v25 = v23;
      v26 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v20 = PLBackendGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = v14;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to get all assets to OTA restore: %@", buf, 0xCu);
  }

LABEL_13:
}

void __103__PLDeviceRestoreMigrationSupport__setAssetsToOTARestoreAsIncompleteWithContext_populateAlbumMappings___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 mainFileURL];
  v5 = v4;
  if (!v4 || (v6 = *(a1 + 32), [v4 path], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "fileExistsAtPath:isDirectory:", v7, 0), v7, (v6 & 1) == 0))
  {
    [v3 setComplete:0];
    if ((*(a1 + 56) & 1) == 0)
    {
      [v3 setEffectiveThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    if ([v3 kind] == 1)
    {
      v8 = [v3 mediaAnalysisAttributes];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 isVideoKeyFrameSet];

        if (v10)
        {
          v11 = *(a1 + 40);
          v12 = [v3 mediaAnalysisAttributes];
          [v11 deleteObject:v12];

          [v3 resetVideoKeyFrameTime];
        }
      }
    }

    v13 = [v3 albums];
    if ([v13 count])
    {
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          v19 = 0;
          do
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v23 + 1) + 8 * v19) uuid];
            [v14 addObject:v20];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      v21 = *(a1 + 48);
      v22 = [v3 uuid];
      [v21 setObject:v14 forKey:v22];
    }
  }
}

- (void)_batchDeleteAllAssetsExcludedFromOTARestoreWithContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69BF328];
  v4 = a3;
  v5 = [v3 predicateForIncludeMask:objc_msgSend(v3 useIndex:{"maskForAssetsExcludedFromOTARestore"), 1}];
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  [v8 setPredicate:v5];
  v9 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  [v9 setResultType:2];
  v15 = 0;
  v10 = [v4 executeRequest:v9 error:&v15];

  v11 = v15;
  v12 = PLMigrationGetLog();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 result];
      *buf = 138543362;
      v17 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Deleted %{public}@ assets excluded from OTA backup/restore (iTunes synced, iCloud shared, etc)", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "batch delete of assets excluded from OTA restore failed, %@", buf, 0xCu);
  }
}

- (void)_setAlbumPendingItemCountsWithContext:(id)a3 shouldSave:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PLGenericAlbum *)PLManagedAlbum allAlbumsInManagedObjectContext:v5];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 kindValue];
        if (v12 != 2 && v12 != 1000 && v12 != 12)
        {
          continue;
        }

        v14 = [v11 assets];
        v15 = [v14 count];

        [v11 setPendingItemsCount:v15];
        [v11 setPendingItemsType:4];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  if (v4)
  {
    if ([v5 hasChanges])
    {
      v19 = 0;
      v16 = [v5 save:&v19];
      v17 = v19;
      if ((v16 & 1) == 0)
      {
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v17;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "failed to save album pending counts: %@", buf, 0xCu);
        }

        [v5 rollback];
      }
    }

    else
    {
      v17 = 0;
    }
  }
}

- (void)deletePhotoStreamData
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 setObject:*MEMORY[0x1E69C0448] forKey:*MEMORY[0x1E69C0410]];
  v3 = [(PLLibraryServicesManager *)self->_libraryServicesManager imageWriter];
  [v3 enqueueJob:v4];
}

- (void)_prepareDatabaseForOTAAssetsPhase
{
  v31 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = NSStringFromSelector(a2);
    [v20 handleFailureInMethod:a2 object:self file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:156 description:{@"%@ can only be called from assetsd", v21}];
  }

  v4 = PLMigrationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Starting _prepareDatabaseForOTAAssetsPhase", buf, 2u);
  }

  v5 = [(PLLibraryServicesManager *)self->_libraryServicesManager modelMigrator];
  v6 = [(PLLibraryServicesManager *)self->_libraryServicesManager persistentStoreCoordinator];
  v7 = [v5 managedObjectContextForMigrationWithName:"-[PLDeviceRestoreMigrationSupport _prepareDatabaseForOTAAssetsPhase]" persistentStoreCoordinator:v6 concurrencyType:1];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__PLDeviceRestoreMigrationSupport__prepareDatabaseForOTAAssetsPhase__block_invoke;
  v26[3] = &unk_1E75761B8;
  v26[4] = self;
  v9 = v7;
  v27 = v9;
  v10 = v8;
  v28 = v10;
  [v9 performBlockAndWait:v26];
  v11 = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:0];
  v13 = [v11 pathToAssetsToAlbumsMapping];
  v25 = 0;
  v14 = [v12 writeToFile:v13 options:1073741825 error:&v25];
  v15 = v25;

  if ((v14 & 1) == 0)
  {
    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to write assetsToAlbums mapping %@", buf, 0xCu);
    }
  }

  [(PLDeviceRestoreMigrationSupport *)self deletePhotoStreamData];
  v17 = PLMigrationGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Performing reset face analysis to force reanalysis of faceprint data after restore from iCloud", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__PLDeviceRestoreMigrationSupport__prepareDatabaseForOTAAssetsPhase__block_invoke_39;
  v22[3] = &unk_1E7578848;
  v23 = v11;
  v24 = v9;
  v18 = v9;
  v19 = v11;
  [v18 performBlockAndWait:v22];
}

uint64_t __68__PLDeviceRestoreMigrationSupport__prepareDatabaseForOTAAssetsPhase__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _batchDeleteAllAssetsExcludedFromOTARestoreWithContext:*(a1 + 40)];
  [*(a1 + 32) _setAlbumPendingItemCountsWithContext:*(a1 + 40) shouldSave:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _setAssetsToOTARestoreAsIncompleteWithContext:v3 populateAlbumMappings:v4];
}

- (BOOL)prepareDatabaseForOTARestoreIfNecessaryWithMigrationType:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(PLLibraryServicesManager *)self->_libraryServicesManager modelMigrator];
  v6 = [v5 postProcessingToken];

  v7 = [v6 needsToPrepareForBackgroundRestore];
  v8 = PLMigrationGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Found OTA post-processing token, will prepare for OTA background restore", &buf, 2u);
    }

    v8 = [(PLDeviceRestoreMigrationSupport *)self _newShortLivedLibrarySupportingLibraryOpenWithName:"[PLDeviceRestoreMigrationSupport prepareDatabaseForOTARestoreIfNecessaryWithMigrationType:]"];
    v10 = [(PLLibraryServicesManager *)self->_libraryServicesManager modelMigrator];
    [v10 dontImportFileSystemDataIntoDatabaseWithPhotoLibrary:v8];

    if (a3 <= 4 && ((1 << a3) & 0x15) != 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v24 = 0x2020000000;
      v25 = 0;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __92__PLDeviceRestoreMigrationSupport_prepareDatabaseForOTARestoreIfNecessaryWithMigrationType___block_invoke;
      v19 = &unk_1E7578820;
      v20 = v6;
      v21 = self;
      p_buf = &buf;
      pl_dispatch_once();
      if ((*(*(&buf + 1) + 24) & 1) == 0)
      {
        v11 = PLMigrationGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Already prepared database for OTA background restore, invalid token state returned YES from needsToPrepareForBackgroundRestore", v15, 2u);
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PLStringFromMigrationType(a3, 1);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Writing OTA post-processing complete token, should prepare database for OTA restore with migration type %{public}@ returned NO (expected after creating new database)", &buf, 0xCu);
      }

      [v6 writeBackgroundRestorePostProcessingCompleteAndArchiveTokens];
    }
  }

  else if (v9)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "No OTA post-processing token found, no need to prepare for background restore", &buf, 2u);
  }

  return v7;
}

uint64_t __92__PLDeviceRestoreMigrationSupport_prepareDatabaseForOTARestoreIfNecessaryWithMigrationType___block_invoke(uint64_t a1)
{
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Preparing database for OTA background restore, (foreground restore complete)", buf, 2u);
  }

  [*(a1 + 32) writeBackgroundRestorePostProcessingInProgressToken];
  [*(a1 + 40) _linkAsideAlbumMetadata];
  [*(a1 + 40) _prepareDatabaseForOTAAssetsPhase];
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Done preparing database for OTA background restore (writing post-processing complete token)", v5, 2u);
  }

  result = [*(a1 + 32) writeBackgroundRestorePostProcessingCompleteAndArchiveTokens];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

- (PLDeviceRestoreMigrationSupport)initWithLibraryServicesManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PLDeviceRestoreMigrationSupport;
  v6 = [(PLDeviceRestoreMigrationSupport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryServicesManager, a3);
    *&v7->_dispositionLock._os_unfair_lock_opaque = 0;
    *&v7->_prerequisitesBlockLock._os_unfair_lock_opaque = 0;
    v7->_otaLock_otaRestoreFinished = 0;
    otaLock_otaRestoreStatusMessage = v7->_otaLock_otaRestoreStatusMessage;
    v7->_otaLock_otaRestoreStatusMessage = @"Restore state uninitialized";
  }

  return v7;
}

- (id)_newShortLivedLibrarySupportingLibraryOpenWithName:(const char *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v5 setRequiredState:[(PLLibraryServicesManager *)self->_libraryServicesManager state]];
  [(PLPhotoLibraryOptions *)v5 setRefreshesAfterSave:0];
  v6 = [(PLLibraryServicesManager *)self->_libraryServicesManager libraryBundle];
  v16 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:a3 loadedFromBundle:v6 options:v5 error:&v16];
  v8 = v16;

  if (!v7)
  {
    v10 = v8;
    v11 = v5;
    v12 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PLPhotoLibraryOptions *)v11 requiredState];
      v13 = PLStringFromLibraryServicesState();
      v14 = [(PLLibraryServicesManager *)self->_libraryServicesManager libraryBundle];
      v15 = [v14 libraryURL];
      *buf = 136446978;
      v18 = "[PLDeviceRestoreMigrationSupport _newShortLivedLibrarySupportingLibraryOpenWithName:]";
      v19 = 2114;
      v20 = v13;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to load photo library %{public}s in state %{public}@ with url %@, %@", buf, 0x2Au);
    }

    __break(1u);
  }

  return v7;
}

@end