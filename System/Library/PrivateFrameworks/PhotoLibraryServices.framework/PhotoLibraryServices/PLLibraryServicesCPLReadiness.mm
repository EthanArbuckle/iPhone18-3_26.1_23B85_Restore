@interface PLLibraryServicesCPLReadiness
- (BOOL)_checkForCPLReadinessAndCallBlocks;
- (BOOL)_isAssetsdReadyForCPLManagerWithStatus:(id *)status;
- (BOOL)_isReadyForCloudPhotoLibraryWithStatus:(id *)status;
- (BOOL)_isWaitingOnFileSystemImport;
- (BOOL)isReadyForCloudPhotoLibraryWithStatus:(id *)status;
- (PLLibraryServicesCPLReadiness)initWithLibraryServicesManager:(id)manager;
- (id)libraryServicesManager;
- (void)_attemptFileSystemImport;
- (void)_callOutstandingCPLReadinessBlocks;
- (void)_checkIsReadyForCloudPhotoLibrary;
- (void)_setupCPLReadinessTimerAndEventHandlerIfNeeded;
- (void)_stopWaitingForCPLReadiness;
- (void)_updateIsReady:(BOOL)ready isWaitingOnImport:(BOOL)import statusMessage:(id)message;
- (void)cancelCPLReadinessBlocksAndStopWaiting;
- (void)pauseCloudPhotos:(BOOL)photos reason:(signed __int16)reason;
- (void)performOnceLibraryIsReadyForCPLManager:(id)manager;
- (void)processCloudPhotosLibraryStateChange:(BOOL)change;
@end

@implementation PLLibraryServicesCPLReadiness

- (void)pauseCloudPhotos:(BOOL)photos reason:(signed __int16)reason
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PLLibraryServicesCPLReadiness_pauseCloudPhotos_reason___block_invoke;
  v7[3] = &unk_1E756CF10;
  objc_copyWeak(&v8, &location);
  photosCopy = photos;
  reasonCopy = reason;
  [(PLLibraryServicesCPLReadiness *)self performOnceLibraryIsReadyForCPLManager:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__PLLibraryServicesCPLReadiness_pauseCloudPhotos_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained libraryServicesManager];
  v3 = [v2 cloudPhotoLibraryManager];
  [v3 setPause:*(a1 + 42) reason:*(a1 + 40)];
}

- (void)processCloudPhotosLibraryStateChange:(BOOL)change
{
  if (change)
  {
    libraryServicesManager = [(PLLibraryServicesCPLReadiness *)self libraryServicesManager];
    cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];
    objc_initWeak(&location, cloudPhotoLibraryManager);

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PLLibraryServicesCPLReadiness_processCloudPhotosLibraryStateChange___block_invoke;
    v8[3] = &unk_1E75788C0;
    objc_copyWeak(&v9, &location);
    [(PLLibraryServicesCPLReadiness *)self performOnceLibraryIsReadyForCPLManager:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    libraryServicesManager2 = [(PLLibraryServicesCPLReadiness *)self libraryServicesManager];
    cloudPhotoLibraryManager2 = [libraryServicesManager2 cloudPhotoLibraryManager];

    [(PLLibraryServicesCPLReadiness *)self cancelCPLReadinessBlocksAndStopWaiting];
    [cloudPhotoLibraryManager2 disableiCPLWithCompletionHandler:&__block_literal_global_65];
  }
}

void __70__PLLibraryServicesCPLReadiness_processCloudPhotosLibraryStateChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained enableiCPLWithCompletionHandler:&__block_literal_global_46742];
}

void __70__PLLibraryServicesCPLReadiness_processCloudPhotosLibraryStateChange___block_invoke_3()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.ICPLStateChanged", 0, 0, 1u);
}

void __70__PLLibraryServicesCPLReadiness_processCloudPhotosLibraryStateChange___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.ICPLStateChanged", 0, 0, 1u);
}

- (void)performOnceLibraryIsReadyForCPLManager:(id)manager
{
  managerCopy = manager;
  v5 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v5 sharedUtilityQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PLLibraryServicesCPLReadiness_performOnceLibraryIsReadyForCPLManager___block_invoke;
  v8[3] = &unk_1E7577C08;
  v8[4] = self;
  v9 = managerCopy;
  v7 = managerCopy;
  dispatch_async(sharedUtilityQueue, v8);
}

uint64_t __72__PLLibraryServicesCPLReadiness_performOnceLibraryIsReadyForCPLManager___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = _Block_copy(*(a1 + 40));
  [v2 addObject:v3];

  result = [*(a1 + 32) _checkForCPLReadinessAndCallBlocks];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _setupCPLReadinessTimerAndEventHandlerIfNeeded];
  }

  return result;
}

- (void)_setupCPLReadinessTimerAndEventHandlerIfNeeded
{
  v3 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v3 sharedUtilityQueue];
  dispatch_assert_queue_V2(sharedUtilityQueue);

  if (!self->_photoLibraryCPLReadinessTimer)
  {
    v5 = +[PLConcurrencyLimiter sharedLimiter];
    sharedUtilityQueue2 = [v5 sharedUtilityQueue];
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, sharedUtilityQueue2);
    photoLibraryCPLReadinessTimer = self->_photoLibraryCPLReadinessTimer;
    self->_photoLibraryCPLReadinessTimer = v7;

    objc_initWeak(&location, self);
    objc_copyWeak(&v11, &location);
    pl_dispatch_source_set_event_handler();
    v9 = self->_photoLibraryCPLReadinessTimer;
    v10 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v9, v10, 0x12A05F200uLL, 0);
    dispatch_resume(self->_photoLibraryCPLReadinessTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __79__PLLibraryServicesCPLReadiness__setupCPLReadinessTimerAndEventHandlerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkForCPLReadinessAndCallBlocks];
}

- (BOOL)_checkForCPLReadinessAndCallBlocks
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v3 sharedUtilityQueue];
  dispatch_assert_queue_V2(sharedUtilityQueue);

  v16 = @"unknown";
  v5 = [(PLLibraryServicesCPLReadiness *)self _isAssetsdReadyForCPLManagerWithStatus:&v16];
  v6 = v16;
  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      libraryServicesManager = [(PLLibraryServicesCPLReadiness *)self libraryServicesManager];
      pathManager = [libraryServicesManager pathManager];
      libraryURL = [pathManager libraryURL];
      *buf = 138412290;
      v18 = libraryURL;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Photo library is ready for Cloud Photos now: %@", buf, 0xCu);
    }

    [(PLLibraryServicesCPLReadiness *)self _stopWaitingForCPLReadiness];
    [(PLLibraryServicesCPLReadiness *)self _callOutstandingCPLReadinessBlocks];
  }

  else
  {
    if (v8)
    {
      libraryServicesManager2 = [(PLLibraryServicesCPLReadiness *)self libraryServicesManager];
      pathManager2 = [libraryServicesManager2 pathManager];
      libraryURL2 = [pathManager2 libraryURL];
      *buf = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = libraryURL2;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Photo library is not ready for Cloud Photos [status: %{public}@]. Waiting for library at %@", buf, 0x16u);
    }
  }

  return v5;
}

- (void)_callOutstandingCPLReadinessBlocks
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v3 sharedUtilityQueue];
  dispatch_assert_queue_V2(sharedUtilityQueue);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_photoLibraryCPLReadinessBlocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = +[PLConcurrencyLimiter sharedLimiter];
        sharedUtilityQueue2 = [v11 sharedUtilityQueue];
        dispatch_async(sharedUtilityQueue2, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_photoLibraryCPLReadinessBlocks removeAllObjects];
}

- (void)_stopWaitingForCPLReadiness
{
  v3 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v3 sharedUtilityQueue];
  dispatch_assert_queue_V2(sharedUtilityQueue);

  photoLibraryCPLReadinessTimer = self->_photoLibraryCPLReadinessTimer;
  if (photoLibraryCPLReadinessTimer)
  {

    dispatch_source_cancel(photoLibraryCPLReadinessTimer);
  }
}

- (void)cancelCPLReadinessBlocksAndStopWaiting
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "cancelCPLReadinessBlocksAndStopWaiting: removing CPL readiness blocks", buf, 2u);
  }

  v4 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v4 sharedUtilityQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PLLibraryServicesCPLReadiness_cancelCPLReadinessBlocksAndStopWaiting__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(sharedUtilityQueue, block);
}

void __71__PLLibraryServicesCPLReadiness_cancelCPLReadinessBlocksAndStopWaiting__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(a1 + 32) _stopWaitingForCPLReadiness];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "cancelCPLReadinessBlocksAndStopWaiting: CPL readiness blocks removed", v3, 2u);
  }
}

- (BOOL)_isAssetsdReadyForCPLManagerWithStatus:(id *)status
{
  [(PLLibraryServicesCPLReadiness *)self _checkIsReadyForCloudPhotoLibrary];

  return [(PLLibraryServicesCPLReadiness *)self _isReadyForCloudPhotoLibraryWithStatus:status];
}

- (void)_attemptFileSystemImport
{
  v10 = *MEMORY[0x1E69E9840];
  libraryServicesManager = [(PLLibraryServicesCPLReadiness *)self libraryServicesManager];
  modelMigrator = [libraryServicesManager modelMigrator];

  loadFileSystemDataInProgressCount = [modelMigrator loadFileSystemDataInProgressCount];
  libraryServicesManager2 = PLLibraryServicesGetLog();
  v7 = os_log_type_enabled(libraryServicesManager2, OS_LOG_TYPE_DEFAULT);
  if (loadFileSystemDataInProgressCount)
  {
    if (v7)
    {
      v9[0] = 67109120;
      v9[1] = loadFileSystemDataInProgressCount;
      _os_log_impl(&dword_19BF1F000, libraryServicesManager2, OS_LOG_TYPE_DEFAULT, "CPLReadiness: will not attempt file system import (%d in progress)", v9, 8u);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_19BF1F000, libraryServicesManager2, OS_LOG_TYPE_DEFAULT, "CPLReadiness: attempting file system import", v9, 2u);
    }

    libraryServicesManager2 = [(PLLibraryServicesCPLReadiness *)self libraryServicesManager];
    modelMigrator2 = [libraryServicesManager2 modelMigrator];
    [modelMigrator2 loadFileSystemDataIntoDatabaseIfNeededWithReason:@"blocking CPL readiness" completionHandler:0];
  }
}

- (void)_checkIsReadyForCloudPhotoLibrary
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v3 sharedUtilityQueue];
  dispatch_assert_queue_V2(sharedUtilityQueue);

  libraryServicesManager = [(PLLibraryServicesCPLReadiness *)self libraryServicesManager];
  v6 = libraryServicesManager;
  if (!libraryServicesManager)
  {
    [(PLLibraryServicesCPLReadiness *)self _updateIsReady:0 isWaitingOnImport:0 statusMessage:@"libraryServicesManager is nil"];
    goto LABEL_27;
  }

  if (([libraryServicesManager state] - 8) > 0xFFFFFFFFFFFFFFFDLL)
  {
    databaseContext = [v6 databaseContext];
    v11 = [databaseContext newShortLivedLibraryWithName:"-[PLLibraryServicesCPLReadiness _checkIsReadyForCloudPhotoLibrary]"];

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    globalValues = [v11 globalValues];
    didImportFileSystemAssets = [globalValues didImportFileSystemAssets];

    v51 = didImportFileSystemAssets;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__46760;
    v46 = __Block_byref_object_dispose__46761;
    v47 = @"ready";
    v14 = *(v49 + 24);
    if (v14 == 1)
    {
      pathManager = [v6 pathManager];
      isDeviceRestoreSupported = [pathManager isDeviceRestoreSupported];

      if (!isDeviceRestoreSupported)
      {
        goto LABEL_20;
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __66__PLLibraryServicesCPLReadiness__checkIsReadyForCloudPhotoLibrary__block_invoke;
      v37[3] = &unk_1E7578898;
      v38 = v11;
      v17 = v6;
      v39 = v17;
      v40 = &v48;
      v41 = &v42;
      [(__CFString *)v38 performBlockAndWait:v37 completionHandler:0];
      v18 = v49;
      if (*(v49 + 24) == 1)
      {
        modelMigrator = [v17 modelMigrator];
        deviceRestoreMigrationSupport = [modelMigrator deviceRestoreMigrationSupport];
        hasCompletedDataMigratorPrerequisitesForTrackingRestoreFromCloud = [deviceRestoreMigrationSupport hasCompletedDataMigratorPrerequisitesForTrackingRestoreFromCloud];

        v18 = v49;
        if ((hasCompletedDataMigratorPrerequisitesForTrackingRestoreFromCloud & 1) == 0)
        {
          *(v49 + 24) = 0;
          v22 = v43[5];
          v43[5] = @"data migrator prerequisites are not complete";

          v18 = v49;
        }
      }

      if (*(v18 + 24) == 1)
      {
        pathManager2 = [v17 pathManager];
        isDCIM = [pathManager2 isDCIM];

        if (isDCIM)
        {
          modelMigrator2 = [v17 modelMigrator];
          postProcessingToken = [modelMigrator2 postProcessingToken];
          needsToPrepareForBackgroundRestore = [postProcessingToken needsToPrepareForBackgroundRestore];

          if (needsToPrepareForBackgroundRestore)
          {
            *(v49 + 24) = 0;
            v28 = v43[5];
            v43[5] = @"needs to prepare for background restore";
          }
        }
      }

      if (*(v49 + 24) == 1)
      {
        modelMigrator3 = [v17 modelMigrator];
        isLoadingFacesFromFileSystem = [modelMigrator3 isLoadingFacesFromFileSystem];

        if (isLoadingFacesFromFileSystem)
        {
          *(v49 + 24) = 0;
          v31 = v43[5];
          v43[5] = @"loading faces";
        }
      }

      v32 = v38;
    }

    else
    {
      v47 = @"file system import is not complete";
      v32 = @"ready";
    }

LABEL_20:
    if (*(v49 + 24) == 1)
    {
      v33 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v43[5];
        *buf = 138543362;
        v53 = v34;
        v35 = "CPLReadiness: Ready for CPL '%{public}@'";
LABEL_25:
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
      }
    }

    else
    {
      v33 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v43[5];
        *buf = 138543362;
        v53 = v36;
        v35 = "CPLReadiness: NOT ready because %{public}@";
        goto LABEL_25;
      }
    }

    [(PLLibraryServicesCPLReadiness *)self _updateIsReady:*(v49 + 24) isWaitingOnImport:v14 ^ 1u statusMessage:v43[5]];
    _Block_object_dispose(&v42, 8);

    _Block_object_dispose(&v48, 8);
    goto LABEL_27;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = PLStringFromLibraryServicesState();
  v9 = [v7 stringWithFormat:@"libraryServicesManager is not ready: %@", v8];
  [(PLLibraryServicesCPLReadiness *)self _updateIsReady:0 isWaitingOnImport:0 statusMessage:v9];

LABEL_27:
}

void __66__PLLibraryServicesCPLReadiness__checkIsReadyForCloudPhotoLibrary__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasPendingAssetsIgnoreiTunes:1])
  {
    v2 = [*(a1 + 40) modelMigrator];
    v3 = [v2 deviceRestoreMigrationSupport];

    v13 = 0;
    v4 = [v3 isOTARestoreInProgressWithStatus:&v13];
    v5 = v13;
    if (v4)
    {
      v6 = 0;
      v7 = @"OTA restore is in progress (%@)";
    }

    else
    {
      v8 = PLMigrationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "iCloud Restore is finished but there are still pending assets, attempting cleanup", buf, 2u);
      }

      PLSimulateCrash();
      [*(a1 + 32) cleanupIncompleteAssetsAfterOTARestore];
      v7 = @"ready (had pending assets, but ota restore is complete %@ - forced cleanup)";
      v6 = 1;
    }

    *(*(*(a1 + 48) + 8) + 24) = v6;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, v5];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)_updateIsReady:(BOOL)ready isWaitingOnImport:(BOOL)import statusMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  PLRunWithUnfairLock();
}

void __80__PLLibraryServicesCPLReadiness__updateIsReady_isWaitingOnImport_statusMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    *(v1 + 48) = *(a1 + 48);
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    *(*(a1 + 32) + 49) = *(a1 + 49);
  }
}

- (BOOL)_isWaitingOnFileSystemImport
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)_isReadyForCloudPhotoLibraryWithStatus:(id *)status
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__46760;
  v10 = __Block_byref_object_dispose__46761;
  v11 = 0;
  PLRunWithUnfairLock();
  if (status)
  {
    *status = v7[5];
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  return v4;
}

- (BOOL)isReadyForCloudPhotoLibraryWithStatus:(id *)status
{
  v4 = [(PLLibraryServicesCPLReadiness *)self _isReadyForCloudPhotoLibraryWithStatus:status];
  if (!v4)
  {
    objc_initWeak(&location, self);
    _isWaitingOnFileSystemImport = [(PLLibraryServicesCPLReadiness *)self _isWaitingOnFileSystemImport];
    v6 = +[PLConcurrencyLimiter sharedLimiter];
    sharedUtilityQueue = [v6 sharedUtilityQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PLLibraryServicesCPLReadiness_isReadyForCloudPhotoLibraryWithStatus___block_invoke;
    block[3] = &unk_1E756CEE8;
    objc_copyWeak(&v10, &location);
    v11 = _isWaitingOnFileSystemImport;
    dispatch_async(sharedUtilityQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __71__PLLibraryServicesCPLReadiness_isReadyForCloudPhotoLibraryWithStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(a1 + 40) == 1)
  {
    [WeakRetained _attemptFileSystemImport];
    WeakRetained = v3;
  }

  [WeakRetained _checkIsReadyForCloudPhotoLibrary];
}

- (id)libraryServicesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);

  if (!WeakRetained)
  {
    v4 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "CPLReadiness: LSM is nil", v7, 2u);
    }
  }

  v5 = objc_loadWeakRetained(&self->_libraryServicesManager);

  return v5;
}

- (PLLibraryServicesCPLReadiness)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = PLLibraryServicesCPLReadiness;
  v5 = [(PLLibraryServicesCPLReadiness *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    photoLibraryCPLReadinessBlocks = v5->_photoLibraryCPLReadinessBlocks;
    v5->_photoLibraryCPLReadinessBlocks = v6;

    objc_storeWeak(&v5->_libraryServicesManager, managerCopy);
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v5->_stateLock_isReadyForCPL = 0;
    stateLock_statusMessage = v5->_stateLock_statusMessage;
    v5->_stateLock_statusMessage = 0;

    v5->_stateLock_isWaitingOnFileSystemImport = 0;
  }

  return v5;
}

@end