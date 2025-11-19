@interface PXCPLStatusSource
- (PXCPLStatusSource)initWithStatus:(id)a3;
- (void)_updateStatus;
- (void)setExitDate:(id)a3;
- (void)setHasChangesToProcess:(BOOL)a3;
- (void)setIsCapturingSnapshot:(BOOL)a3;
- (void)setIsCellularDataDisabled:(BOOL)a3;
- (void)setIsClientNotAuthenticated:(BOOL)a3;
- (void)setIsClientVersionTooOld:(BOOL)a3;
- (void)setIsExceedingBatteryQuota:(BOOL)a3;
- (void)setIsExceedingCellularQuota:(BOOL)a3;
- (void)setIsExceedingQuota:(BOOL)a3;
- (void)setIsExceedingSharedLibraryQuota:(BOOL)a3;
- (void)setIsInAirplaneMode:(BOOL)a3;
- (void)setIsInHeavyThermalPressure:(BOOL)a3;
- (void)setIsInLowBattery:(BOOL)a3;
- (void)setIsInLowDataMode:(BOOL)a3;
- (void)setIsInLowPowerMode:(BOOL)a3;
- (void)setIsInModerateThermalPressure:(BOOL)a3;
- (void)setIsInPoorNetworkConnection:(BOOL)a3;
- (void)setIsLowDiskSpace:(BOOL)a3;
- (void)setIsOffline:(BOOL)a3;
- (void)setIsOptimizingSystemPerformance:(BOOL)a3;
- (void)setIsUpgradeSuggestedToAccessAllPhotos:(BOOL)a3;
- (void)setIsVeryLowDiskSpace:(BOOL)a3;
- (void)setNumberOfOtherAssets:(unint64_t)a3;
- (void)setNumberOfPhotoAssets:(unint64_t)a3;
- (void)setNumberOfVideoAssets:(unint64_t)a3;
- (void)setSharedLibraryExitingWithNumberOfAssetsRemaining:(unint64_t)a3;
- (void)setSyncDate:(id)a3;
- (void)statusDidChange:(id)a3;
@end

@implementation PXCPLStatusSource

- (void)statusDidChange:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__PXCPLStatusSource_statusDidChange___block_invoke;
  v3[3] = &unk_1E774C318;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __37__PXCPLStatusSource_statusDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatus];
}

- (void)_updateStatus
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__PXCPLStatusSource__updateStatus__block_invoke;
  v2[3] = &unk_1E772DDF8;
  v2[4] = self;
  [(PXCPLStatusSource *)self performChanges:v2];
}

void __34__PXCPLStatusSource__updateStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 96) exitDeleteTime];
  [v3 setExitDate:v4];

  v5 = [*(*(a1 + 32) + 96) initialSyncDate];
  if (v5 && (v6 = v5, [*(*(a1 + 32) + 96) lastSuccessfulSyncDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [*(*(a1 + 32) + 96) initialSyncDate];
    v9 = [*(*(a1 + 32) + 96) lastSuccessfulSyncDate];
    v10 = [v8 laterDate:v9];
    [v3 setSyncDate:v10];
  }

  else
  {
    v8 = [*(*(a1 + 32) + 96) initialSyncDate];
    [v3 setSyncDate:v8];
  }

  v11 = [*(*(a1 + 32) + 96) isExceedingQuota];
  v12 = [*(*(a1 + 32) + 96) isExceedingSharedLibraryQuota];
  [v3 setIsExceedingQuota:v11 & (v12 ^ 1)];
  [v3 setIsExceedingSharedLibraryQuota:v12];
  [v3 setIsClientVersionTooOld:{objc_msgSend(*(*(a1 + 32) + 96), "iCloudLibraryClientVersionTooOld")}];
  [v3 setIsClientNotAuthenticated:{objc_msgSend(*(*(a1 + 32) + 96), "iCloudLibraryClientIsNotAuthenticated")}];
  if ([*(*(a1 + 32) + 96) hasValidSystemBudget])
  {
    [v3 setIsExceedingBatteryQuota:{objc_msgSend(*(*(a1 + 32) + 96), "hasBatteryBudget") ^ 1}];
    v13 = [*(*(a1 + 32) + 96) hasCellularBudget] ^ 1;
  }

  else
  {
    [v3 setIsExceedingBatteryQuota:0];
    v13 = 0;
  }

  [v3 setIsExceedingCellularQuota:v13];
  [v3 setIsCellularDataDisabled:{objc_msgSend(*(*(a1 + 32) + 96), "isCellularRestricted")}];
  [v3 setIsInAirplaneMode:{objc_msgSend(*(*(a1 + 32) + 96), "isInAirplaneMode")}];
  [v3 setIsOffline:{objc_msgSend(*(*(a1 + 32) + 96), "isConnectedToNetwork") ^ 1}];
  [v3 setIsInLowDataMode:{objc_msgSend(*(*(a1 + 32) + 96), "isConstrainedNetwork")}];
  [v3 setIsInLowPowerMode:{objc_msgSend(*(*(a1 + 32) + 96), "isBlockedByLowPowerMode")}];
  [v3 setIsLowDiskSpace:{objc_msgSend(*(*(a1 + 32) + 96), "lowDiskSpace")}];
  [v3 setIsVeryLowDiskSpace:{objc_msgSend(*(*(a1 + 32) + 96), "veryLowDiskSpace")}];
  [v3 setSharedLibraryExitingWithNumberOfAssetsRemaining:{objc_msgSend(*(*(a1 + 32) + 96), "estimatedCountOfRemainingRecordsDuringSharedLibraryExit")}];
  [v3 setIsCapturingSnapshot:{objc_msgSend(*(*(a1 + 32) + 96), "isBlockedBySnapshot")}];
  [v3 setIsOptimizingSystemPerformance:{(objc_msgSend(*(*(a1 + 32) + 96), "hasHeavyResourceUsage") | objc_msgSend(*(*(a1 + 32) + 96), "hasPoorSystemConditions")) & 1}];
  [v3 setIsInPoorNetworkConnection:{objc_msgSend(*(*(a1 + 32) + 96), "hasPoorNetworkQuality")}];
  [v3 setIsInModerateThermalPressure:{objc_msgSend(*(*(a1 + 32) + 96), "hasModerateThermalPressure")}];
  [v3 setIsInHeavyThermalPressure:{objc_msgSend(*(*(a1 + 32) + 96), "hasThermalPressure")}];
  [v3 setIsInLowBattery:{objc_msgSend(*(*(a1 + 32) + 96), "hasLowBatteryLevel")}];
  [v3 setHasChangesToProcess:{objc_msgSend(*(*(a1 + 32) + 96), "hasChangesToProcess")}];
  [v3 setIsUpgradeSuggestedToAccessAllPhotos:{objc_msgSend(*(*(a1 + 32) + 96), "clientFeatureCompatibleVersion") < objc_msgSend(*(*(a1 + 32) + 96), "serverFeatureCompatibleVersion")}];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14 = [*(*(a1 + 32) + 96) cloudAssetCountPerType];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__PXCPLStatusSource__updateStatus__block_invoke_2;
  v15[3] = &unk_1E772DDD0;
  v15[4] = &v24;
  v15[5] = &v20;
  v15[6] = &v16;
  [v14 enumerateKeysAndObjectsUsingBlock:v15];
  [v3 setNumberOfPhotoAssets:v25[3]];
  [v3 setNumberOfVideoAssets:v21[3]];
  [v3 setNumberOfOtherAssets:v17[3]];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __34__PXCPLStatusSource__updateStatus__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 unsignedIntegerValue];
  v6 = [*MEMORY[0x1E6982E30] identifier];
  v7 = [v11 isEqualToString:v6];

  if (v7)
  {
    v8 = 32;
  }

  else
  {
    v9 = [*MEMORY[0x1E6982EE8] identifier];
    v10 = [v11 isEqualToString:v9];

    v8 = 48;
    if (v10)
    {
      v8 = 40;
    }
  }

  *(*(*(a1 + v8) + 8) + 24) += v5;
}

- (void)setHasChangesToProcess:(BOOL)a3
{
  if (self->_hasChangesToProcess != a3)
  {
    self->_hasChangesToProcess = a3;
    [(PXCPLStatusSource *)self signalChange:0x4000000];
  }
}

- (void)setNumberOfOtherAssets:(unint64_t)a3
{
  if (self->_numberOfOtherAssets != a3)
  {
    self->_numberOfOtherAssets = a3;
    [(PXCPLStatusSource *)self signalChange:0x2000000];
  }
}

- (void)setNumberOfVideoAssets:(unint64_t)a3
{
  if (self->_numberOfVideoAssets != a3)
  {
    self->_numberOfVideoAssets = a3;
    [(PXCPLStatusSource *)self signalChange:0x1000000];
  }
}

- (void)setNumberOfPhotoAssets:(unint64_t)a3
{
  if (self->_numberOfPhotoAssets != a3)
  {
    self->_numberOfPhotoAssets = a3;
    [(PXCPLStatusSource *)self signalChange:0x800000];
  }
}

- (void)setIsUpgradeSuggestedToAccessAllPhotos:(BOOL)a3
{
  if (self->_isUpgradeSuggestedToAccessAllPhotos != a3)
  {
    self->_isUpgradeSuggestedToAccessAllPhotos = a3;
    [(PXCPLStatusSource *)self signalChange:0x400000];
  }
}

- (void)setIsInLowBattery:(BOOL)a3
{
  if (self->_isInLowBattery != a3)
  {
    self->_isInLowBattery = a3;
    [(PXCPLStatusSource *)self signalChange:0x200000];
  }
}

- (void)setIsInHeavyThermalPressure:(BOOL)a3
{
  if (self->_isInHeavyThermalPressure != a3)
  {
    self->_isInHeavyThermalPressure = a3;
    [(PXCPLStatusSource *)self signalChange:0x100000];
  }
}

- (void)setIsInModerateThermalPressure:(BOOL)a3
{
  if (self->_isInModerateThermalPressure != a3)
  {
    self->_isInModerateThermalPressure = a3;
    [(PXCPLStatusSource *)self signalChange:0x80000];
  }
}

- (void)setIsInPoorNetworkConnection:(BOOL)a3
{
  if (self->_isInPoorNetworkConnection != a3)
  {
    self->_isInPoorNetworkConnection = a3;
    [(PXCPLStatusSource *)self signalChange:0x40000];
  }
}

- (void)setIsOptimizingSystemPerformance:(BOOL)a3
{
  if (self->_isOptimizingSystemPerformance != a3)
  {
    self->_isOptimizingSystemPerformance = a3;
    [(PXCPLStatusSource *)self signalChange:0x20000];
  }
}

- (void)setIsCapturingSnapshot:(BOOL)a3
{
  if (self->_isCapturingSnapshot != a3)
  {
    self->_isCapturingSnapshot = a3;
    [(PXCPLStatusSource *)self signalChange:0x10000];
  }
}

- (void)setSharedLibraryExitingWithNumberOfAssetsRemaining:(unint64_t)a3
{
  if (self->_sharedLibraryExitingWithNumberOfAssetsRemaining != a3)
  {
    self->_sharedLibraryExitingWithNumberOfAssetsRemaining = a3;
    [(PXCPLStatusSource *)self signalChange:0x8000];
  }
}

- (void)setIsVeryLowDiskSpace:(BOOL)a3
{
  if (self->_isVeryLowDiskSpace != a3)
  {
    self->_isVeryLowDiskSpace = a3;
    [(PXCPLStatusSource *)self signalChange:0x4000];
  }
}

- (void)setIsLowDiskSpace:(BOOL)a3
{
  if (self->_isLowDiskSpace != a3)
  {
    self->_isLowDiskSpace = a3;
    [(PXCPLStatusSource *)self signalChange:0x2000];
  }
}

- (void)setIsInLowPowerMode:(BOOL)a3
{
  if (self->_isInLowPowerMode != a3)
  {
    self->_isInLowPowerMode = a3;
    [(PXCPLStatusSource *)self signalChange:4096];
  }
}

- (void)setIsInLowDataMode:(BOOL)a3
{
  if (self->_isInLowDataMode != a3)
  {
    self->_isInLowDataMode = a3;
    [(PXCPLStatusSource *)self signalChange:2048];
  }
}

- (void)setIsOffline:(BOOL)a3
{
  if (self->_isOffline != a3)
  {
    self->_isOffline = a3;
    [(PXCPLStatusSource *)self signalChange:1024];
  }
}

- (void)setIsInAirplaneMode:(BOOL)a3
{
  if (self->_isInAirplaneMode != a3)
  {
    self->_isInAirplaneMode = a3;
    [(PXCPLStatusSource *)self signalChange:512];
  }
}

- (void)setIsCellularDataDisabled:(BOOL)a3
{
  if (self->_isCellularDataDisabled != a3)
  {
    self->_isCellularDataDisabled = a3;
    [(PXCPLStatusSource *)self signalChange:256];
  }
}

- (void)setIsExceedingCellularQuota:(BOOL)a3
{
  if (self->_isExceedingCellularQuota != a3)
  {
    self->_isExceedingCellularQuota = a3;
    [(PXCPLStatusSource *)self signalChange:128];
  }
}

- (void)setIsExceedingBatteryQuota:(BOOL)a3
{
  if (self->_isExceedingBatteryQuota != a3)
  {
    self->_isExceedingBatteryQuota = a3;
    [(PXCPLStatusSource *)self signalChange:64];
  }
}

- (void)setIsClientNotAuthenticated:(BOOL)a3
{
  if (self->_isClientNotAuthenticated != a3)
  {
    self->_isClientNotAuthenticated = a3;
    [(PXCPLStatusSource *)self signalChange:32];
  }
}

- (void)setIsClientVersionTooOld:(BOOL)a3
{
  if (self->_isClientVersionTooOld != a3)
  {
    self->_isClientVersionTooOld = a3;
    [(PXCPLStatusSource *)self signalChange:16];
  }
}

- (void)setIsExceedingSharedLibraryQuota:(BOOL)a3
{
  if (self->_isExceedingSharedLibraryQuota != a3)
  {
    self->_isExceedingSharedLibraryQuota = a3;
    [(PXCPLStatusSource *)self signalChange:8];
  }
}

- (void)setIsExceedingQuota:(BOOL)a3
{
  if (self->_isExceedingQuota != a3)
  {
    self->_isExceedingQuota = a3;
    [(PXCPLStatusSource *)self signalChange:4];
  }
}

- (void)setSyncDate:(id)a3
{
  v4 = a3;
  syncDate = self->_syncDate;
  if (syncDate != v4)
  {
    v9 = v4;
    v6 = [(NSDate *)syncDate isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDate *)v9 copy];
      v8 = self->_syncDate;
      self->_syncDate = v7;

      [(PXCPLStatusSource *)self signalChange:2];
      v4 = v9;
    }
  }
}

- (void)setExitDate:(id)a3
{
  v4 = a3;
  exitDate = self->_exitDate;
  if (exitDate != v4)
  {
    v9 = v4;
    v6 = [(NSDate *)exitDate isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDate *)v9 copy];
      v8 = self->_exitDate;
      self->_exitDate = v7;

      [(PXCPLStatusSource *)self signalChange:1];
      v4 = v9;
    }
  }
}

- (PXCPLStatusSource)initWithStatus:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCPLStatusSource.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"status"}];
  }

  v11.receiver = self;
  v11.super_class = PXCPLStatusSource;
  v7 = [(PXCPLStatusSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_status, a3);
    [(CPLStatus *)v8->_status setDelegate:v8];
    [(PXCPLStatusSource *)v8 _updateStatus];
  }

  return v8;
}

@end