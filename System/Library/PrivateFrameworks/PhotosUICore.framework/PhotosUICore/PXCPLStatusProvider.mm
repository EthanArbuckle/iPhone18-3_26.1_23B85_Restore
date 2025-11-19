@interface PXCPLStatusProvider
+ (id)sharedQueue;
- (BOOL)_isSyncing;
- (PXCPLStatusProvider)init;
- (PXCPLStatusProvider)initWithPhotoLibrary:(id)a3;
- (double)nextOverrideResumeTimeInterval;
- (id)_updateStatus:(id)a3 requestedTypes:(unint64_t)a4;
- (void)_main_handleUpdatedStatus:(id)a3 producedForUpdateType:(unint64_t)a4 timeIntervalProducingUpdatedStatus:(double)a5;
- (void)_performUpdate;
- (void)_queue_performUpdateWithStatus:(id)a3 updateType:(unint64_t)a4;
- (void)_schedulePendingUpdates;
- (void)_scheduleUpdateForType:(unint64_t)a3;
- (void)_setStatus:(id)a3 producedForUpdateType:(unint64_t)a4 timeIntervalProducingUpdatedStatus:(double)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXCPLStatusProvider

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXCPLPhotoLibrarySourceObservationContext == a5)
  {
    if ((v6 & 0xF) != 0)
    {
      v13 = v9;
      v11 = 1;
    }

    else
    {
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v13 = v9;
      v11 = 16;
    }
  }

  else if (PXCPLStatusSourceObservationContext == a5)
  {
    v13 = v9;
    v11 = 2;
  }

  else if (PXCPLSyncActivityObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

    v13 = v9;
    v11 = 512;
  }

  else if (PXCPLSharedLibraryActivityObservationContext == a5)
  {
    if ((v6 & 7) == 0)
    {
      goto LABEL_24;
    }

    v13 = v9;
    v11 = 2048;
  }

  else
  {
    if (PXCPLCloudQuotaSourceObservationContext == a5)
    {
      if ((v6 & 0xF) == 0)
      {
        goto LABEL_24;
      }

      v13 = v9;
    }

    else
    {
      v13 = v9;
      if (PXCloudQuotaOfferProviderObservationContext == a5)
      {
        v10 = [(PXCloudQuotaOfferProvider *)self->_offerProvider offer];
      }

      else
      {
        if (PXCloudQuotaPremiumOfferProviderObservationContext != a5)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          [v12 handleFailureInMethod:a2 object:self file:@"PXCPLStatusProvider.m" lineNumber:678 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        v10 = [(PXCloudQuotaPremiumOfferProvider *)self->_premiumOfferProvider premiumOffer];
      }

      self->_hasCloudQuotaOffer = v10 != 0;
    }

    v11 = 128;
  }

  [(PXCPLStatusProvider *)self _scheduleUpdateForType:v11];
  v9 = v13;
LABEL_24:
}

- (void)_scheduleUpdateForType:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXCPLStatusProvider.m" lineNumber:580 description:{@"Invalid parameter not satisfying: %@", @"updateType != PXCPLStatusUpdateTypeNone"}];
  }

  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = PXCPLStatusUpdateTypeDebugDescription(a3);
    *buf = 138412546;
    v10 = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "%@ Request update [reason: %{public}@]", buf, 0x16u);
  }

  self->_needsUpdate |= a3;
  [(PXCPLStatusProvider *)self _schedulePendingUpdates];
}

- (void)_schedulePendingUpdates
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdate && !self->_isUpdating)
  {
    self->_isUpdating = 1;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = self->_lastUpdate + 1.0 - v3;
    if (v4 <= 0.0)
    {

      [(PXCPLStatusProvider *)self _performUpdate];
    }

    else
    {
      v5 = PLUserStatusGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v10 = self;
        v11 = 2048;
        v12 = v4;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%@ - Delaying update: %.2fs", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v6 = dispatch_time(0, (v4 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__PXCPLStatusProvider__schedulePendingUpdates__block_invoke;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v8, buf);
      dispatch_after(v6, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }
  }
}

void __46__PXCPLStatusProvider__schedulePendingUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performUpdate];
}

- (void)_main_handleUpdatedStatus:(id)a3 producedForUpdateType:(unint64_t)a4 timeIntervalProducingUpdatedStatus:(double)a5
{
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __106__PXCPLStatusProvider__main_handleUpdatedStatus_producedForUpdateType_timeIntervalProducingUpdatedStatus___block_invoke;
  v13 = &unk_1E772DC80;
  v14 = self;
  v15 = v8;
  v16 = a4;
  v17 = a5;
  v9 = v8;
  [(PXCPLStatusProvider *)self performChanges:&v10];
  self->_isUpdating = 0;
  [(PXCPLStatusProvider *)self _schedulePendingUpdates:v10];
}

- (void)_queue_performUpdateWithStatus:(id)a3 updateType:(unint64_t)a4
{
  serialUpdateQueue = self->_serialUpdateQueue;
  v7 = a3;
  dispatch_assert_queue_V2(serialUpdateQueue);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [(PXCPLStatusProvider *)self _updateStatus:v7 requestedTypes:a4];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v12 = v11 - v9;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXCPLStatusProvider__queue_performUpdateWithStatus_updateType___block_invoke;
  block[3] = &unk_1E7735A38;
  objc_copyWeak(v16, &location);
  v15 = v10;
  v16[1] = a4;
  v16[2] = *&v12;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __65__PXCPLStatusProvider__queue_performUpdateWithStatus_updateType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _main_handleUpdatedStatus:*(a1 + 32) producedForUpdateType:*(a1 + 48) timeIntervalProducingUpdatedStatus:*(a1 + 56)];
}

- (void)_performUpdate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = PXCPLStatusUpdateTypeDebugDescription(self->_needsUpdate);
    *buf = 138412546;
    v16 = self;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%@ Perform update [reason: %{public}@]", buf, 0x16u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_lastUpdate = v5;
  needsUpdate = self->_needsUpdate;
  self->_needsUpdate = 0;
  v7 = [(PXCPLStatusProvider *)self status];
  v8 = [v7 copy];

  objc_initWeak(buf, self);
  serialUpdateQueue = self->_serialUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PXCPLStatusProvider__performUpdate__block_invoke;
  block[3] = &unk_1E7746600;
  objc_copyWeak(v14, buf);
  v13 = v8;
  v14[1] = needsUpdate;
  v10 = v8;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(serialUpdateQueue, v11);

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __37__PXCPLStatusProvider__performUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_performUpdateWithStatus:*(a1 + 32) updateType:*(a1 + 48)];
}

- (double)nextOverrideResumeTimeInterval
{
  v11 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69789A8] nextOverrideTimeIntervalForSystemBudgets:18487];
  v4 = v3;
  v5 = PLUserStatusGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%@ < Did get next override time interval: %f", &v7, 0x16u);
  }

  return v4;
}

- (id)_updateStatus:(id)a3 requestedTypes:(unint64_t)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!a4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCPLStatusProvider.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"updateType != PXCPLStatusUpdateTypeNone"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = objc_alloc_init(PXCPLStatus);
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v8 copy];
LABEL_6:
  v11 = v9;
  if ((a4 & 1) != 0 && v9)
  {
    v12 = PLUserStatusGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "%@ > Will update PhotoLibrary", buf, 0xCu);
    }

    [(PXCPLStatus *)v11 setIsEnabled:[(PXCPLPhotoLibrarySource *)self->_photoLibrarySource isCloudPhotosEnabled]];
    [(PXCPLStatus *)v11 setIsLocalModeEnabled:[(PXCPLPhotoLibrarySource *)self->_photoLibrarySource isLocalModeEnabled]];
    [(PXCPLPhotoLibrarySource *)self->_photoLibrarySource fractionCompletedForRebuild];
    [(PXCPLStatus *)v11 setFractionCompletedForLibraryRebuild:?];
    [(PXCPLStatus *)v11 setIsRebuildingThumbnails:[(PXCPLPhotoLibrarySource *)self->_photoLibrarySource isRebuildingThumbnails]];
    v13 = PLUserStatusGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "%@ < Did update PhotoLibrary", buf, 0xCu);
    }
  }

  if ((a4 & 2) != 0 && v11)
  {
    v14 = self->_cplStatusSource == 0;
    v15 = PLUserStatusGetLog();
    v16 = v15;
    if (v14)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        goto LABEL_24;
      }

      *buf = 138543362;
      *&buf[4] = self;
      v19 = "%{public}@ Failed to get CPL status: No PXCPLStatusSource";
      v20 = v16;
      v21 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEBUG, "%@ > Will update CPLStatus", buf, 0xCu);
      }

      v17 = [(PXCPLStatusSource *)self->_cplStatusSource exitDate];
      [(PXCPLStatus *)v11 setExitDate:v17];

      v18 = [(PXCPLStatusSource *)self->_cplStatusSource syncDate];
      [(PXCPLStatus *)v11 setSyncDate:v18];

      [(PXCPLStatus *)v11 setIsExceedingQuota:[(PXCPLStatusSource *)self->_cplStatusSource isExceedingQuota]];
      [(PXCPLStatus *)v11 setIsExceedingSharedLibraryQuota:[(PXCPLStatusSource *)self->_cplStatusSource isExceedingSharedLibraryQuota]];
      [(PXCPLStatus *)v11 setIsClientVersionTooOld:[(PXCPLStatusSource *)self->_cplStatusSource isClientVersionTooOld]];
      [(PXCPLStatus *)v11 setIsClientNotAuthenticated:[(PXCPLStatusSource *)self->_cplStatusSource isClientNotAuthenticated]];
      [(PXCPLStatus *)v11 setIsExceedingBatteryQuota:[(PXCPLStatusSource *)self->_cplStatusSource isExceedingBatteryQuota]];
      [(PXCPLStatus *)v11 setIsExceedingCellularQuota:[(PXCPLStatusSource *)self->_cplStatusSource isExceedingCellularQuota]];
      [(PXCPLStatus *)v11 setIsCellularDataDisabled:[(PXCPLStatusSource *)self->_cplStatusSource isCellularDataDisabled]];
      [(PXCPLStatus *)v11 setIsInAirplaneMode:[(PXCPLStatusSource *)self->_cplStatusSource isInAirplaneMode]];
      [(PXCPLStatus *)v11 setIsOffline:[(PXCPLStatusSource *)self->_cplStatusSource isOffline]];
      [(PXCPLStatus *)v11 setIsInLowDataMode:[(PXCPLStatusSource *)self->_cplStatusSource isInLowDataMode]];
      [(PXCPLStatus *)v11 setIsInLowPowerMode:[(PXCPLStatusSource *)self->_cplStatusSource isInLowPowerMode]];
      [(PXCPLStatus *)v11 setIsLowDiskSpace:[(PXCPLStatusSource *)self->_cplStatusSource isLowDiskSpace]];
      [(PXCPLStatus *)v11 setIsVeryLowDiskSpace:[(PXCPLStatusSource *)self->_cplStatusSource isVeryLowDiskSpace]];
      [(PXCPLStatus *)v11 setSharedLibraryExitingWithNumberOfAssetsRemaining:[(PXCPLStatusSource *)self->_cplStatusSource sharedLibraryExitingWithNumberOfAssetsRemaining]];
      [(PXCPLStatus *)v11 setIsCapturingSnapshot:[(PXCPLStatusSource *)self->_cplStatusSource isCapturingSnapshot]];
      [(PXCPLStatus *)v11 setIsOptimizingSystemPerformance:[(PXCPLStatusSource *)self->_cplStatusSource isOptimizingSystemPerformance]];
      [(PXCPLStatus *)v11 setIsInPoorNetworkConnection:[(PXCPLStatusSource *)self->_cplStatusSource isInPoorNetworkConnection]];
      [(PXCPLStatus *)v11 setIsInModerateThermalPressure:[(PXCPLStatusSource *)self->_cplStatusSource isInModerateThermalPressure]];
      [(PXCPLStatus *)v11 setIsInHeavyThermalPressure:[(PXCPLStatusSource *)self->_cplStatusSource isInHeavyThermalPressure]];
      [(PXCPLStatus *)v11 setIsInLowBattery:[(PXCPLStatusSource *)self->_cplStatusSource isInLowBattery]];
      [(PXCPLStatus *)v11 setIsUpgradeSuggestedToAccessAllPhotos:[(PXCPLStatusSource *)self->_cplStatusSource isUpgradeSuggestedToAccessAllPhotos]];
      [(PXCPLStatus *)v11 setNumberOfPhotoAssets:[(PXCPLStatusSource *)self->_cplStatusSource numberOfPhotoAssets]];
      [(PXCPLStatus *)v11 setNumberOfVideoAssets:[(PXCPLStatusSource *)self->_cplStatusSource numberOfVideoAssets]];
      [(PXCPLStatus *)v11 setNumberOfOtherAssets:[(PXCPLStatusSource *)self->_cplStatusSource numberOfOtherAssets]];
      [(PXCPLStatus *)v11 setIsSyncing:[(PXCPLStatusProvider *)self _isSyncing]];
      v16 = PLUserStatusGetLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      *buf = 138412290;
      *&buf[4] = self;
      v19 = "%@ < Did update CPLStatus";
      v20 = v16;
      v21 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_1A3C1C000, v20, v21, v19, buf, 0xCu);
    goto LABEL_23;
  }

LABEL_24:
  if ((a4 & 4) != 0 && v11)
  {
    v22 = PLUserStatusGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEBUG, "%@ > Will update TransferCounts", buf, 0xCu);
    }

    *&v82 = 0;
    *v81 = 0;
    v23 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
    v24 = [v23 libraryBundle];
    v25 = [v24 indicatorFileCoordinator];

    [v25 getDownloadPhotoCount:&v82 downloadVideoCount:v81];
    [(PXCPLStatus *)v11 setNumberOfItemsToAdd:*v81 + v82];
    v26 = PLUserStatusGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEBUG, "%@ < Did update TransferCounts", buf, 0xCu);
    }
  }

  if ((a4 & 8) != 0 && v11)
  {
    v27 = PLUserStatusGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_DEBUG, "%@ > Will update TransferBytes", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v86 = 0;
    *&v82 = 0;
    *(&v82 + 1) = &v82;
    v83 = 0x2020000000;
    v84 = -1082130432;
    v28 = [(PXCPLStatus *)v11 exitDate];
    v29 = v28 == 0;

    if (v29)
    {
      v32 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
      v33 = [v32 assetsdClient];
      v34 = [v33 cloudInternalClient];

      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __52__PXCPLStatusProvider__updateStatus_requestedTypes___block_invoke;
      v79[3] = &unk_1E772DC58;
      v79[4] = self;
      v79[5] = buf;
      v79[6] = &v82;
      [v34 getCurrentTransferProgress:v79];
      [(PXCPLStatus *)v11 setNumberOfItemsToUpload:*(*&buf[8] + 24)];
      LODWORD(v35) = *(*(&v82 + 1) + 24);
      [(PXCPLStatus *)v11 setFractionCompletedForUpload:v35];
    }

    else
    {
      v30 = PLUserStatusGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *v81 = 138412290;
        *&v81[4] = self;
        _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEBUG, "%@ >> Ignoring upload counts when in exit mode", v81, 0xCu);
      }

      [(PXCPLStatus *)v11 setNumberOfItemsToUpload:*(*&buf[8] + 24)];
      LODWORD(v31) = *(*(&v82 + 1) + 24);
      [(PXCPLStatus *)v11 setFractionCompletedForUpload:v31];
    }

    v36 = PLUserStatusGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *v81 = 138412290;
      *&v81[4] = self;
      _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_DEBUG, "%@ < Did update TransferBytes", v81, 0xCu);
    }

    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(buf, 8);
  }

  if ((a4 & 0x10) != 0 && v11)
  {
    v37 = [(PXCPLPhotoLibrarySource *)self->_photoLibrarySource cplSettingsObserver];
    v38 = [v37 settings];
    v39 = [v38 isKeepOriginalsEnabled];

    if (v39)
    {
      v40 = PLUserStatusGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1A3C1C000, v40, OS_LOG_TYPE_DEBUG, "%@ > Will update NumberOfOriginals", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v86 = 0;
      v41 = [(PHPhotoLibrary *)self->_photoLibrary managedObjectContextForCurrentQueueQoS];
      +[PXPhotosDataSource waitForAllBackgroundFetchingToFinish];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __52__PXCPLStatusProvider__updateStatus_requestedTypes___block_invoke_261;
      v76[3] = &unk_1E7749A28;
      v42 = v41;
      v77 = v42;
      v78 = buf;
      [v42 performBlockAndWait:v76];
      v43 = *(*&buf[8] + 24);
      v44 = PLUserStatusGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v82) = 138412290;
        *(&v82 + 4) = self;
        _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_DEBUG, "%@ < Did update NumberOfOriginals", &v82, 0xCu);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v43 = 0;
    }

    [(PXCPLStatus *)v11 setNumberOfOriginalsToDownload:v43];
  }

  if ((a4 & 0x400) != 0 && v11)
  {
    v45 = PLUserStatusGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_DEBUG, "%@ > Will update ResetSyncState", buf, 0xCu);
    }

    v46 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
    v47 = [v46 assetsdClient];
    v48 = [v47 cloudInternalClient];

    v75 = 0;
    v49 = [v48 getResetSyncStatusWithError:&v75];
    v50 = v75;
    if (v50)
    {
      v51 = PLUserStatusGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        _os_log_impl(&dword_1A3C1C000, v51, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cloud reset sync status %@", buf, 0x16u);
      }
    }

    else
    {
      switch(v49)
      {
        case 2:
          [(PXCPLStatus *)v11 setIsInSoftResetSync:0];
          [(PXCPLStatus *)v11 setIsInHardResetSync:1];
          break;
        case 1:
          [(PXCPLStatus *)v11 setIsInSoftResetSync:1];
          [(PXCPLStatus *)v11 setIsInHardResetSync:0];
          break;
        case 0:
          [(PXCPLStatus *)v11 setIsInSoftResetSync:0];
          [(PXCPLStatus *)v11 setIsInHardResetSync:0];
          break;
      }
    }

    v52 = PLUserStatusGetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v52, OS_LOG_TYPE_DEBUG, "%@ < Did update ResetSyncState", buf, 0xCu);
    }
  }

  if ((a4 & 0x800) != 0 && v11)
  {
    v53 = PLUserStatusGetLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v53, OS_LOG_TYPE_DEBUG, "%@ > Will update SharedLibrary", buf, 0xCu);
    }

    [(PXCPLStatus *)v11 setSharedLibraryState:[(PXCPLSharedLibraryActivity *)self->_sharedLibraryActivity state]];
    [(PXCPLStatus *)v11 setSharedLibraryMovingToShared:[(PXCPLSharedLibraryActivity *)self->_sharedLibraryActivity movingToShared]];
    [(PXCPLStatus *)v11 setSharedLibraryMovingToPersonal:[(PXCPLSharedLibraryActivity *)self->_sharedLibraryActivity movingToPersonal]];
    v54 = PLUserStatusGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v54, OS_LOG_TYPE_DEBUG, "%@ < Did update SharedLibrary", buf, 0xCu);
    }
  }

  if (((v11 != 0) & _os_feature_enabled_impl() & (a4 >> 5)) == 1)
  {
    v55 = PLUserStatusGetLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v55, OS_LOG_TYPE_DEBUG, "%@ > Will update NumberOfFailures", buf, 0xCu);
    }

    v56 = MEMORY[0x1E696AB28];
    v57 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(cloudLocalState) IN %@", &unk_1F190F8C8];
    v80[0] = v57;
    v58 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAssetsEligibleForCloudKitTransport"), 0}];
    v80[1] = v58;
    v59 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"trashedState", 2];
    v80[2] = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
    v61 = [v56 andPredicateWithSubpredicates:v60];

    v62 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [v62 setWantsIncrementalChangeDetails:0];
    [v62 setShouldPrefetchCount:1];
    [v62 setInternalPredicate:v61];
    v63 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v62];
    -[PXCPLStatus setNumberOfItemsFailingToUpload:](v11, "setNumberOfItemsFailingToUpload:", [v63 count]);
    v64 = PLUserStatusGetLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v64, OS_LOG_TYPE_DEBUG, "%@ < Did update NumberOfFailures", buf, 0xCu);
    }
  }

  if ((a4 & 0x80) != 0 && v11)
  {
    v65 = PLUserStatusGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v65, OS_LOG_TYPE_DEBUG, "%@ > Will update CloudQuota", buf, 0xCu);
    }

    [(PXCPLStatus *)v11 setHasCloudQuotaOffer:self->_hasCloudQuotaOffer];
    v66 = PLUserStatusGetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v66, OS_LOG_TYPE_DEBUG, "%@ < Did update CloudQuota", buf, 0xCu);
    }
  }

  if ((a4 & 0x100) != 0 && v11)
  {
    v67 = PLUserStatusGetLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v67, OS_LOG_TYPE_DEBUG, "%@ > Will update PauseStates", buf, 0xCu);
    }

    v68 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
    v69 = [v68 libraryBundle];
    v70 = [v69 indicatorFileCoordinator];

    -[PXCPLStatus setIsUserPaused:](v11, "setIsUserPaused:", [v70 currentPauseReason] == 3);
    v71 = PLUserStatusGetLog();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v71, OS_LOG_TYPE_DEBUG, "%@ < Did update PauseStates", buf, 0xCu);
    }
  }

  if ((a4 & 0x200) != 0 && v11)
  {
    v72 = PLUserStatusGetLog();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v72, OS_LOG_TYPE_DEBUG, "%@ > Will update SyncProgress", buf, 0xCu);
    }

    [(PXCPLStatus *)v11 setIsSyncing:[(PXCPLStatusProvider *)self _isSyncing]];
    v73 = PLUserStatusGetLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1A3C1C000, v73, OS_LOG_TYPE_DEBUG, "%@ < Did update SyncProgress", buf, 0xCu);
    }
  }

  return v11;
}

float __52__PXCPLStatusProvider__updateStatus_requestedTypes___block_invoke(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = PLUserStatusGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v13 = 138413314;
    v14 = v11;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "%@ >> originalSize: %lu, originalSize: %lu, uploadedMasters: %lu, unpushedMasters: %lu", &v13, 0x34u);
  }

  if (a5 && a5 >= a4)
  {
    *(*(a1[5] + 8) + 24) = a5 - a4;
  }

  if (a3)
  {
    if (a2 <= a3)
    {
      result = a2 / a3;
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

void __52__PXCPLStatusProvider__updateStatus_requestedTypes___block_invoke_261(uint64_t a1)
{
  v2 = [MEMORY[0x1E69BE4D0] entityName];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v2];
  v4 = [MEMORY[0x1E69BE4D0] predicateForOriginalsToDownload];
  [v3 setPredicate:v4];

  [v3 setResultType:4];
  v5 = *(a1 + 32);
  v8 = 0;
  v6 = [v5 countForFetchRequest:v3 error:&v8];
  v7 = v8;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

- (BOOL)_isSyncing
{
  if ([(PXCPLSyncActivity *)self->_syncActivity isSyncing])
  {
    return 1;
  }

  cplStatusSource = self->_cplStatusSource;

  return [(PXCPLStatusSource *)cplStatusSource hasChangesToProcess];
}

- (void)_setStatus:(id)a3 producedForUpdateType:(unint64_t)a4 timeIntervalProducingUpdatedStatus:(double)a5
{
  v6 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = self->_status;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    v12 = [(PXCPLStatus *)v10 isEqual:v9];

    if (!v12)
    {
      objc_storeStrong(&self->_status, a3);
      v13 = PLUserStatusGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        status = self->_status;
        v15 = PXCPLStatusUpdateTypeDebugDescription(v6);
        v18 = 138544130;
        v19 = self;
        v20 = 2114;
        v21 = status;
        v22 = 2114;
        v23 = *&v15;
        v24 = 2048;
        v25 = a5;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ >> %{public}@ [reason: %{public}@, time: %.2f s]", &v18, 0x2Au);
      }

      [(PXCPLStatusProvider *)self signalChange:1];
      goto LABEL_10;
    }
  }

  v16 = PLUserStatusGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = PXCPLStatusUpdateTypeDebugDescription(v6);
    v18 = 138412802;
    v19 = self;
    v20 = 2114;
    v21 = v17;
    v22 = 2048;
    v23 = a5;
    _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEBUG, "%@ Update resulted in no change [reason: %{public}@, time: %.2f s]", &v18, 0x20u);
  }

LABEL_10:
}

- (PXCPLStatusProvider)initWithPhotoLibrary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXCPLStatusProvider.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (([v6 isCloudPhotoLibraryEnabled] & 1) == 0)
  {
    v7 = PLUserStatusGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 photoLibraryURL];
      *buf = 138543874;
      v33 = self;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ ICPL is not enabled for library: %@, URL: %@", buf, 0x20u);
    }
  }

  v31.receiver = self;
  v31.super_class = PXCPLStatusProvider;
  v9 = [(PXCPLStatusProvider *)&v31 init];
  if (v9)
  {
    v10 = +[PXCPLStatusProvider sharedQueue];
    serialUpdateQueue = v9->_serialUpdateQueue;
    v9->_serialUpdateQueue = v10;

    objc_storeStrong(&v9->_photoLibrary, a3);
    v12 = [(PHPhotoLibrary *)v9->_photoLibrary cplStatus];
    if (v12)
    {
      v13 = [[PXCPLStatusSource alloc] initWithStatus:v12];
      cplStatusSource = v9->_cplStatusSource;
      v9->_cplStatusSource = v13;

      [(PXCPLStatusSource *)v9->_cplStatusSource registerChangeObserver:v9 context:PXCPLStatusSourceObservationContext];
    }

    else
    {
      v15 = PLUserStatusGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v33 = v9;
        v34 = 2112;
        v35 = v6;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ No CPL status for library: %@", buf, 0x16u);
      }
    }

    v16 = [[PXCPLPhotoLibrarySource alloc] initWithPhotoLibrary:v9->_photoLibrary];
    photoLibrarySource = v9->_photoLibrarySource;
    v9->_photoLibrarySource = v16;

    [(PXCPLPhotoLibrarySource *)v9->_photoLibrarySource registerChangeObserver:v9 context:PXCPLPhotoLibrarySourceObservationContext];
    v18 = +[PXCPLSyncActivity sharedInstance];
    syncActivity = v9->_syncActivity;
    v9->_syncActivity = v18;

    [(PXCPLSyncActivity *)v9->_syncActivity registerChangeObserver:v9 context:PXCPLSyncActivityObservationContext];
    v20 = [[PXCPLSharedLibraryActivity alloc] initWithPhotoLibrary:v9->_photoLibrary];
    sharedLibraryActivity = v9->_sharedLibraryActivity;
    v9->_sharedLibraryActivity = v20;

    [(PXCPLSharedLibraryActivity *)v9->_sharedLibraryActivity registerChangeObserver:v9 context:PXCPLSharedLibraryActivityObservationContext];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _uploadAndDownloadCountsDidChange, *MEMORY[0x1E69BE960], 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _uploadByteCountsDidChange, *MEMORY[0x1E69BE968], 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _pauseDidChange, *MEMORY[0x1E69BE958], 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _numberOfOriginalsToDownloadDidChange, *MEMORY[0x1E69BE950], 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _resetSyncStatusDidChange, *MEMORY[0x1E69BEA18], 0, 1024);
    if (_os_feature_enabled_impl())
    {
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _numberOfItemsFailingToUploadDidChange, *MEMORY[0x1E69BE928], 0, 1024);
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _numberOfItemsFailingToUploadDidChange, *MEMORY[0x1E69BE920], 0, 1024);
    }

    v23 = +[PXCloudQuotaOfferProvider currentOfferProvider];
    offerProvider = v9->_offerProvider;
    v9->_offerProvider = v23;

    v25 = +[PXCloudQuotaPremiumOfferProvider currentPremiumOfferProvider];
    premiumOfferProvider = v9->_premiumOfferProvider;
    v9->_premiumOfferProvider = v25;

    v27 = [(PXCloudQuotaOfferProvider *)v9->_offerProvider offer];
    if (v27)
    {
      v9->_hasCloudQuotaOffer = 1;
    }

    else
    {
      v28 = [(PXCloudQuotaPremiumOfferProvider *)v9->_premiumOfferProvider premiumOffer];
      v9->_hasCloudQuotaOffer = v28 != 0;
    }

    [(PXCloudQuotaOfferProvider *)v9->_offerProvider registerChangeObserver:v9 context:PXCloudQuotaOfferProviderObservationContext];
    [(PXCloudQuotaPremiumOfferProvider *)v9->_premiumOfferProvider registerChangeObserver:v9 context:PXCloudQuotaPremiumOfferProviderObservationContext];
    v9;
    px_dispatch_on_main_queue();
  }

  return 0;
}

- (PXCPLStatusProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCPLStatusProvider.m" lineNumber:193 description:{@"%s is not available as initializer", "-[PXCPLStatusProvider init]"}];

  abort();
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    dispatch_once(&sharedQueue_onceToken, &__block_literal_global_5297);
  }

  v3 = sharedQueue_sharedQueue;

  return v3;
}

void __34__PXCPLStatusProvider_sharedQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.pxcplstatusprovider.update", attr);
  v3 = sharedQueue_sharedQueue;
  sharedQueue_sharedQueue = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleMainQueueTask:&__block_literal_global_234];
}

@end