@interface PXCPLStatus
+ (PXCPLStatus)statusWithStringRepresentation:(id)representation currentDate:(id)date;
- (BOOL)_isEqualToCPLStatus:(id)status;
- (BOOL)isEqual:(id)equal;
- (NSString)stringRepresentation;
- (PXCPLStatus)init;
- (float)fractionCompletedForLibraryRebuild;
- (float)fractionCompletedForUpload;
- (id)_dictionaryRepresentation;
- (id)_initWithDictionaryRepresentation:(id)representation currentDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFractionCompletedForLibraryRebuild:(float)rebuild;
- (void)setFractionCompletedForUpload:(float)upload;
@end

@implementation PXCPLStatus

- (NSString)stringRepresentation
{
  _dictionaryRepresentation = [(PXCPLStatus *)self _dictionaryRepresentation];
  v3 = _DictionaryRepresentationToString(_dictionaryRepresentation);

  return v3;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  isEnabled = [(PXCPLStatus *)self isEnabled];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:isEnabled];
  stringValue = [v5 stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"enabled"];

  percentCompletedForLibraryRebuild = [(PXCPLStatus *)self percentCompletedForLibraryRebuild];
  if (percentCompletedForLibraryRebuild != -1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:percentCompletedForLibraryRebuild];
    stringValue2 = [v8 stringValue];
    [v3 setObject:stringValue2 forKeyedSubscript:@"rebuild"];
  }

  if ([(PXCPLStatus *)self isRebuildingThumbnails])
  {
    stringValue3 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue3 forKeyedSubscript:@"thumbnails"];
  }

  if ([(PXCPLStatus *)self isSyncing])
  {
    stringValue4 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue4 forKeyedSubscript:@"syncing"];
  }

  numberOfItemsToUpload = [(PXCPLStatus *)self numberOfItemsToUpload];
  if (numberOfItemsToUpload)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfItemsToUpload];
    stringValue5 = [v13 stringValue];
    [v3 setObject:stringValue5 forKeyedSubscript:@"upload"];
  }

  percentCompletedForUpload = [(PXCPLStatus *)self percentCompletedForUpload];
  if (percentCompletedForUpload != -1)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:percentCompletedForUpload];
    stringValue6 = [v16 stringValue];
    [v3 setObject:stringValue6 forKeyedSubscript:@"progress"];
  }

  numberOfItemsToAdd = [(PXCPLStatus *)self numberOfItemsToAdd];
  if (numberOfItemsToAdd)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfItemsToAdd];
    stringValue7 = [v19 stringValue];
    [v3 setObject:stringValue7 forKeyedSubscript:@"add"];
  }

  numberOfOriginalsToDownload = [(PXCPLStatus *)self numberOfOriginalsToDownload];
  if (numberOfOriginalsToDownload)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfOriginalsToDownload];
    stringValue8 = [v22 stringValue];
    [v3 setObject:stringValue8 forKeyedSubscript:@"download"];
  }

  if ([(PXCPLStatus *)self isOffline])
  {
    stringValue9 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue9 forKeyedSubscript:@"offline"];
  }

  if ([(PXCPLStatus *)self isInSoftResetSync])
  {
    stringValue10 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue10 forKeyedSubscript:@"soft-reset"];
  }

  if ([(PXCPLStatus *)self isInHardResetSync])
  {
    stringValue11 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue11 forKeyedSubscript:@"hard-reset"];
  }

  if ([(PXCPLStatus *)self isExceedingQuota])
  {
    stringValue12 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue12 forKeyedSubscript:@"cloud-quota"];
  }

  if ([(PXCPLStatus *)self hasCloudQuotaOffer])
  {
    stringValue13 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue13 forKeyedSubscript:@"offer"];
  }

  cloudQuotaState = [(PXCPLStatus *)self cloudQuotaState];
  if (cloudQuotaState == 1)
  {
    v30 = @"almost-full";
  }

  else
  {
    if (cloudQuotaState != 2)
    {
      goto LABEL_30;
    }

    v30 = @"full";
  }

  [v3 setObject:v30 forKeyedSubscript:@"quota-state"];
LABEL_30:
  cloudQuotaTitle = [(PXCPLStatus *)self cloudQuotaTitle];
  if ([cloudQuotaTitle length])
  {
    [v3 setObject:cloudQuotaTitle forKeyedSubscript:@"quota-title"];
  }

  cloudQuotaMessage = [(PXCPLStatus *)self cloudQuotaMessage];
  if ([cloudQuotaMessage length])
  {
    [v3 setObject:cloudQuotaMessage forKeyedSubscript:@"quota-subtitle"];
  }

  cloudQuotaActionTitle = [(PXCPLStatus *)self cloudQuotaActionTitle];
  if ([cloudQuotaActionTitle length])
  {
    [v3 setObject:cloudQuotaActionTitle forKeyedSubscript:@"quota-action-title"];
  }

  if ([(PXCPLStatus *)self isLowDiskSpace])
  {
    stringValue14 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue14 forKeyedSubscript:@"low-disk-space"];
  }

  if ([(PXCPLStatus *)self isVeryLowDiskSpace])
  {
    stringValue15 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue15 forKeyedSubscript:@"very-low-disk-space"];
  }

  if ([(PXCPLStatus *)self isExceedingBatteryQuota])
  {
    stringValue16 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue16 forKeyedSubscript:@"battery-budget"];
  }

  if ([(PXCPLStatus *)self isExceedingCellularQuota])
  {
    stringValue17 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue17 forKeyedSubscript:@"cellular-budget"];
  }

  if ([(PXCPLStatus *)self isCellularDataDisabled])
  {
    stringValue18 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue18 forKeyedSubscript:@"cellular-disabled"];
  }

  if ([(PXCPLStatus *)self isInAirplaneMode])
  {
    stringValue19 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue19 forKeyedSubscript:@"airplane-mode"];
  }

  if ([(PXCPLStatus *)self isUserPaused])
  {
    stringValue20 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue20 forKeyedSubscript:@"user"];
  }

  if ([(PXCPLStatus *)self isInLowDataMode])
  {
    stringValue21 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue21 forKeyedSubscript:@"low-data-mode"];
  }

  if ([(PXCPLStatus *)self isInLowPowerMode])
  {
    stringValue22 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue22 forKeyedSubscript:@"low-power-mode"];
  }

  if ([(PXCPLStatus *)self isClientVersionTooOld])
  {
    stringValue23 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue23 forKeyedSubscript:@"version"];
  }

  if ([(PXCPLStatus *)self isClientNotAuthenticated])
  {
    stringValue24 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue24 forKeyedSubscript:@"authenticate"];
  }

  if ([(PXCPLStatus *)self isCapturingSnapshot])
  {
    stringValue25 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue25 forKeyedSubscript:@"capture-snapshot"];
  }

  if ([(PXCPLStatus *)self isOptimizingSystemPerformance])
  {
    stringValue26 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue26 forKeyedSubscript:@"optimizing-system-performance"];
  }

  if ([(PXCPLStatus *)self isInPoorNetworkConnection])
  {
    stringValue27 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue27 forKeyedSubscript:@"poor-network-connection"];
  }

  if ([(PXCPLStatus *)self isInModerateThermalPressure])
  {
    stringValue28 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue28 forKeyedSubscript:@"moderate-thermal-pressure"];
  }

  if ([(PXCPLStatus *)self isInHeavyThermalPressure])
  {
    stringValue29 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue29 forKeyedSubscript:@"heavy-thermal-pressure"];
  }

  if ([(PXCPLStatus *)self isInLowBattery])
  {
    stringValue30 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue30 forKeyedSubscript:@"low-battery"];
  }

  syncDate = [(PXCPLStatus *)self syncDate];
  if (syncDate)
  {
    v52 = _SerializationDateFormatter();
    v53 = [v52 stringFromDate:syncDate];
    [v3 setObject:v53 forKeyedSubscript:@"sync-date"];
  }

  exitDate = [(PXCPLStatus *)self exitDate];
  if (exitDate)
  {
    v55 = _SerializationDateFormatter();
    v56 = [v55 stringFromDate:exitDate];
    [v3 setObject:v56 forKeyedSubscript:@"exit-date"];
  }

  numberOfItemsFailingToUpload = [(PXCPLStatus *)self numberOfItemsFailingToUpload];
  if (numberOfItemsFailingToUpload)
  {
    v58 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfItemsFailingToUpload];
    stringValue31 = [v58 stringValue];
    [v3 setObject:stringValue31 forKeyedSubscript:@"failed"];
  }

  numberOfReferencedItems = [(PXCPLStatus *)self numberOfReferencedItems];
  if (numberOfReferencedItems)
  {
    v61 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfReferencedItems];
    stringValue32 = [v61 stringValue];
    [v3 setObject:stringValue32 forKeyedSubscript:@"referenced"];
  }

  numberOfPhotoAssets = [(PXCPLStatus *)self numberOfPhotoAssets];
  if (numberOfPhotoAssets)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfPhotoAssets];
    stringValue33 = [v64 stringValue];
    [v3 setObject:stringValue33 forKeyedSubscript:@"photos"];
  }

  numberOfVideoAssets = [(PXCPLStatus *)self numberOfVideoAssets];
  if (numberOfVideoAssets)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfVideoAssets];
    stringValue34 = [v67 stringValue];
    [v3 setObject:stringValue34 forKeyedSubscript:@"videos"];
  }

  numberOfOtherAssets = [(PXCPLStatus *)self numberOfOtherAssets];
  if (numberOfOtherAssets)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithInteger:numberOfOtherAssets];
    stringValue35 = [v70 stringValue];
    [v3 setObject:stringValue35 forKeyedSubscript:@"others"];
  }

  v72 = [(PXCPLStatus *)self sharedLibraryState]- 1;
  if (v72 <= 2)
  {
    [v3 setObject:off_1E7738348[v72] forKeyedSubscript:@"shared-library-state"];
  }

  sharedLibraryExitingWithNumberOfAssetsRemaining = [(PXCPLStatus *)self sharedLibraryExitingWithNumberOfAssetsRemaining];
  if (sharedLibraryExitingWithNumberOfAssetsRemaining)
  {
    v74 = [MEMORY[0x1E696AD98] numberWithInteger:sharedLibraryExitingWithNumberOfAssetsRemaining];
    stringValue36 = [v74 stringValue];
    [v3 setObject:stringValue36 forKeyedSubscript:@"shared-library-exiting-count"];
  }

  sharedLibraryMovingToShared = [(PXCPLStatus *)self sharedLibraryMovingToShared];
  if (sharedLibraryMovingToShared)
  {
    v77 = [MEMORY[0x1E696AD98] numberWithInteger:sharedLibraryMovingToShared];
    stringValue37 = [v77 stringValue];
    [v3 setObject:stringValue37 forKeyedSubscript:@"move-to-shared"];
  }

  sharedLibraryMovingToPersonal = [(PXCPLStatus *)self sharedLibraryMovingToPersonal];
  if (sharedLibraryMovingToPersonal)
  {
    v80 = [MEMORY[0x1E696AD98] numberWithInteger:sharedLibraryMovingToPersonal];
    stringValue38 = [v80 stringValue];
    [v3 setObject:stringValue38 forKeyedSubscript:@"move-to-personal"];
  }

  if ([(PXCPLStatus *)self isExceedingSharedLibraryQuota])
  {
    stringValue39 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue39 forKeyedSubscript:@"shared-library-cloud-quota"];
  }

  if ([(PXCPLStatus *)self isLocalModeEnabled])
  {
    stringValue40 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue40 forKeyedSubscript:@"local-mode"];
  }

  if ([(PXCPLStatus *)self isUpgradeSuggestedToAccessAllPhotos])
  {
    stringValue41 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:stringValue41 forKeyedSubscript:@"upgrade-suggested"];
  }

  v85 = v3;

  return v3;
}

- (id)_initWithDictionaryRepresentation:(id)representation currentDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  if (!representationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLStatus_Serialization.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"dictionaryRepresentation"}];
  }

  v9 = [(PXCPLStatus *)self init];

  if (v9)
  {
    v10 = [representationCopy objectForKeyedSubscript:@"enabled"];
    v11 = v10;
    if (v10)
    {
      bOOLValue = [v10 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [(PXCPLStatus *)v9 setIsEnabled:bOOLValue];

    v13 = [representationCopy objectForKeyedSubscript:@"rebuild"];
    v14 = v13;
    if (v13 && ([v13 isEqualToString:@"-"] & 1) == 0)
    {
      integerValue = [v14 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    [(PXCPLStatus *)v9 setPercentCompletedForLibraryRebuild:integerValue];

    v16 = [representationCopy objectForKeyedSubscript:@"thumbnails"];
    v17 = v16;
    if (v16)
    {
      bOOLValue2 = [v16 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    [(PXCPLStatus *)v9 setIsRebuildingThumbnails:bOOLValue2];

    v19 = [representationCopy objectForKeyedSubscript:@"syncing"];
    v20 = v19;
    if (v19)
    {
      bOOLValue3 = [v19 BOOLValue];
    }

    else
    {
      bOOLValue3 = 0;
    }

    [(PXCPLStatus *)v9 setIsSyncing:bOOLValue3];

    v22 = [representationCopy objectForKeyedSubscript:@"upload"];
    v23 = v22;
    if (v22)
    {
      integerValue2 = [v22 integerValue];
    }

    else
    {
      integerValue2 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfItemsToUpload:integerValue2];

    v25 = [representationCopy objectForKeyedSubscript:@"progress"];
    v26 = v25;
    if (v25 && ([v25 isEqualToString:@"-"] & 1) == 0)
    {
      integerValue3 = [v26 integerValue];
    }

    else
    {
      integerValue3 = -1;
    }

    [(PXCPLStatus *)v9 setPercentCompletedForUpload:integerValue3];

    v28 = [representationCopy objectForKeyedSubscript:@"add"];
    v29 = v28;
    if (v28)
    {
      integerValue4 = [v28 integerValue];
    }

    else
    {
      integerValue4 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfItemsToAdd:integerValue4];

    v31 = [representationCopy objectForKeyedSubscript:@"download"];
    v32 = v31;
    if (v31)
    {
      integerValue5 = [v31 integerValue];
    }

    else
    {
      integerValue5 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfOriginalsToDownload:integerValue5];

    v34 = [representationCopy objectForKeyedSubscript:@"offline"];
    v35 = v34;
    if (v34)
    {
      bOOLValue4 = [v34 BOOLValue];
    }

    else
    {
      bOOLValue4 = 0;
    }

    [(PXCPLStatus *)v9 setIsOffline:bOOLValue4];

    v37 = [representationCopy objectForKeyedSubscript:@"soft-reset"];
    v38 = v37;
    if (v37)
    {
      bOOLValue5 = [v37 BOOLValue];
    }

    else
    {
      bOOLValue5 = 0;
    }

    [(PXCPLStatus *)v9 setIsInSoftResetSync:bOOLValue5];

    v40 = [representationCopy objectForKeyedSubscript:@"hard-reset"];
    v41 = v40;
    if (v40)
    {
      bOOLValue6 = [v40 BOOLValue];
    }

    else
    {
      bOOLValue6 = 0;
    }

    [(PXCPLStatus *)v9 setIsInHardResetSync:bOOLValue6];

    v43 = [representationCopy objectForKeyedSubscript:@"cloud-quota"];
    v44 = v43;
    if (v43)
    {
      bOOLValue7 = [v43 BOOLValue];
    }

    else
    {
      bOOLValue7 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingQuota:bOOLValue7];

    v46 = [representationCopy objectForKeyedSubscript:@"offer"];
    v47 = v46;
    if (v46)
    {
      bOOLValue8 = [v46 BOOLValue];
    }

    else
    {
      bOOLValue8 = 0;
    }

    [(PXCPLStatus *)v9 setHasCloudQuotaOffer:bOOLValue8];

    v49 = [representationCopy objectForKeyedSubscript:@"quota-state"];
    if ([v49 isEqualToString:@"almost-full"])
    {
      v50 = 1;
    }

    else if ([v49 isEqualToString:@"full"])
    {
      v50 = 2;
    }

    else
    {
      v50 = 0;
    }

    [(PXCPLStatus *)v9 setCloudQuotaState:v50];

    v51 = [representationCopy objectForKeyedSubscript:@"quota-title"];
    if ([v51 length] && (objc_msgSend(v51, "isEqualToString:", @"-") & 1) == 0)
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    [(PXCPLStatus *)v9 setCloudQuotaTitle:v52];
    v53 = v52;

    v54 = [representationCopy objectForKeyedSubscript:@"quota-subtitle"];
    if ([v54 length] && (objc_msgSend(v54, "isEqualToString:", @"-") & 1) == 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    [(PXCPLStatus *)v9 setCloudQuotaMessage:v55];
    v56 = v55;

    v57 = [representationCopy objectForKeyedSubscript:@"quota-action-title"];
    if ([v57 length] && (objc_msgSend(v57, "isEqualToString:", @"-") & 1) == 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    [(PXCPLStatus *)v9 setCloudQuotaActionTitle:v58];
    v59 = v58;

    v60 = [representationCopy objectForKeyedSubscript:@"low-disk-space"];
    v61 = v60;
    if (v60)
    {
      bOOLValue9 = [v60 BOOLValue];
    }

    else
    {
      bOOLValue9 = 0;
    }

    [(PXCPLStatus *)v9 setIsLowDiskSpace:bOOLValue9];

    v63 = [representationCopy objectForKeyedSubscript:@"very-low-disk-space"];
    v64 = v63;
    if (v63)
    {
      bOOLValue10 = [v63 BOOLValue];
    }

    else
    {
      bOOLValue10 = 0;
    }

    [(PXCPLStatus *)v9 setIsVeryLowDiskSpace:bOOLValue10];

    v66 = [representationCopy objectForKeyedSubscript:@"battery-budget"];
    v67 = v66;
    if (v66)
    {
      bOOLValue11 = [v66 BOOLValue];
    }

    else
    {
      bOOLValue11 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingBatteryQuota:bOOLValue11];

    v69 = [representationCopy objectForKeyedSubscript:@"cellular-budget"];
    v70 = v69;
    if (v69)
    {
      bOOLValue12 = [v69 BOOLValue];
    }

    else
    {
      bOOLValue12 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingCellularQuota:bOOLValue12];

    v72 = [representationCopy objectForKeyedSubscript:@"cellular-disabled"];
    v73 = v72;
    if (v72)
    {
      bOOLValue13 = [v72 BOOLValue];
    }

    else
    {
      bOOLValue13 = 0;
    }

    [(PXCPLStatus *)v9 setIsCellularDataDisabled:bOOLValue13];

    v75 = [representationCopy objectForKeyedSubscript:@"airplane-mode"];
    v76 = v75;
    if (v75)
    {
      bOOLValue14 = [v75 BOOLValue];
    }

    else
    {
      bOOLValue14 = 0;
    }

    [(PXCPLStatus *)v9 setIsInAirplaneMode:bOOLValue14];

    v78 = [representationCopy objectForKeyedSubscript:@"user"];
    v79 = v78;
    if (v78)
    {
      bOOLValue15 = [v78 BOOLValue];
    }

    else
    {
      bOOLValue15 = 0;
    }

    [(PXCPLStatus *)v9 setIsUserPaused:bOOLValue15];

    v81 = [representationCopy objectForKeyedSubscript:@"low-data-mode"];
    v82 = v81;
    if (v81)
    {
      bOOLValue16 = [v81 BOOLValue];
    }

    else
    {
      bOOLValue16 = 0;
    }

    [(PXCPLStatus *)v9 setIsInLowDataMode:bOOLValue16];

    v84 = [representationCopy objectForKeyedSubscript:@"low-power-mode"];
    v85 = v84;
    if (v84)
    {
      bOOLValue17 = [v84 BOOLValue];
    }

    else
    {
      bOOLValue17 = 0;
    }

    [(PXCPLStatus *)v9 setIsInLowPowerMode:bOOLValue17];

    v87 = [representationCopy objectForKeyedSubscript:@"version"];
    v88 = v87;
    if (v87)
    {
      bOOLValue18 = [v87 BOOLValue];
    }

    else
    {
      bOOLValue18 = 0;
    }

    [(PXCPLStatus *)v9 setIsClientVersionTooOld:bOOLValue18];

    v90 = [representationCopy objectForKeyedSubscript:@"authenticate"];
    v91 = v90;
    if (v90)
    {
      bOOLValue19 = [v90 BOOLValue];
    }

    else
    {
      bOOLValue19 = 0;
    }

    [(PXCPLStatus *)v9 setIsClientNotAuthenticated:bOOLValue19];

    v93 = [representationCopy objectForKeyedSubscript:@"capture-snapshot"];
    v94 = v93;
    if (v93)
    {
      bOOLValue20 = [v93 BOOLValue];
    }

    else
    {
      bOOLValue20 = 0;
    }

    [(PXCPLStatus *)v9 setIsCapturingSnapshot:bOOLValue20];

    v96 = [representationCopy objectForKeyedSubscript:@"optimizing-system-performance"];
    v97 = v96;
    if (v96)
    {
      bOOLValue21 = [v96 BOOLValue];
    }

    else
    {
      bOOLValue21 = 0;
    }

    [(PXCPLStatus *)v9 setIsOptimizingSystemPerformance:bOOLValue21];

    v99 = [representationCopy objectForKeyedSubscript:@"poor-network-connection"];
    v100 = v99;
    if (v99)
    {
      bOOLValue22 = [v99 BOOLValue];
    }

    else
    {
      bOOLValue22 = 0;
    }

    [(PXCPLStatus *)v9 setIsInPoorNetworkConnection:bOOLValue22];

    v102 = [representationCopy objectForKeyedSubscript:@"moderate-thermal-pressure"];
    v103 = v102;
    if (v102)
    {
      bOOLValue23 = [v102 BOOLValue];
    }

    else
    {
      bOOLValue23 = 0;
    }

    [(PXCPLStatus *)v9 setIsInModerateThermalPressure:bOOLValue23];

    v105 = [representationCopy objectForKeyedSubscript:@"heavy-thermal-pressure"];
    v106 = v105;
    if (v105)
    {
      bOOLValue24 = [v105 BOOLValue];
    }

    else
    {
      bOOLValue24 = 0;
    }

    [(PXCPLStatus *)v9 setIsInHeavyThermalPressure:bOOLValue24];

    v108 = [representationCopy objectForKeyedSubscript:@"low-battery"];
    v109 = v108;
    if (v108)
    {
      bOOLValue25 = [v108 BOOLValue];
    }

    else
    {
      bOOLValue25 = 0;
    }

    [(PXCPLStatus *)v9 setIsInLowBattery:bOOLValue25];

    v111 = [representationCopy objectForKeyedSubscript:@"sync-date"];
    v112 = v111;
    if (v111 && ([v111 isEqualToString:@"-"] & 1) == 0)
    {
      v113 = _DateForPlaceholderString(v112, dateCopy);
      if (!v113)
      {
        v114 = _SerializationDateFormatter();
        v113 = [v114 dateFromString:v112];
      }
    }

    else
    {
      v113 = 0;
    }

    [(PXCPLStatus *)v9 setSyncDate:v113];
    v115 = v113;

    v116 = [representationCopy objectForKeyedSubscript:@"exit-date"];
    v117 = v116;
    if (v116 && ([v116 isEqualToString:@"-"] & 1) == 0)
    {
      v118 = _DateForPlaceholderString(v117, dateCopy);
      if (!v118)
      {
        v119 = _SerializationDateFormatter();
        v118 = [v119 dateFromString:v117];
      }
    }

    else
    {
      v118 = 0;
    }

    [(PXCPLStatus *)v9 setExitDate:v118];
    v120 = v118;

    v121 = [representationCopy objectForKeyedSubscript:@"failed"];
    v122 = v121;
    if (v121)
    {
      integerValue6 = [v121 integerValue];
    }

    else
    {
      integerValue6 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfItemsFailingToUpload:integerValue6];

    v124 = [representationCopy objectForKeyedSubscript:@"referenced"];
    v125 = v124;
    if (v124)
    {
      integerValue7 = [v124 integerValue];
    }

    else
    {
      integerValue7 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfReferencedItems:integerValue7];

    v127 = [representationCopy objectForKeyedSubscript:@"photos"];
    v128 = v127;
    if (v127)
    {
      integerValue8 = [v127 integerValue];
    }

    else
    {
      integerValue8 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfPhotoAssets:integerValue8];

    v130 = [representationCopy objectForKeyedSubscript:@"videos"];
    v131 = v130;
    if (v130)
    {
      integerValue9 = [v130 integerValue];
    }

    else
    {
      integerValue9 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfVideoAssets:integerValue9];

    v133 = [representationCopy objectForKeyedSubscript:@"others"];
    v134 = v133;
    if (v133)
    {
      integerValue10 = [v133 integerValue];
    }

    else
    {
      integerValue10 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfOtherAssets:integerValue10];

    v136 = [representationCopy objectForKeyedSubscript:@"shared-library-state"];
    if ([v136 isEqualToString:@"active"])
    {
      v137 = 1;
    }

    else if ([v136 isEqualToString:@"deleting"])
    {
      v137 = 2;
    }

    else if ([v136 isEqualToString:@"leaving"])
    {
      v137 = 3;
    }

    else
    {
      v137 = 0;
    }

    [(PXCPLStatus *)v9 setSharedLibraryState:v137];

    v138 = [representationCopy objectForKeyedSubscript:@"shared-library-exiting-count"];
    v139 = v138;
    if (v138)
    {
      integerValue11 = [v138 integerValue];
    }

    else
    {
      integerValue11 = 0;
    }

    [(PXCPLStatus *)v9 setSharedLibraryExitingWithNumberOfAssetsRemaining:integerValue11];

    v141 = [representationCopy objectForKeyedSubscript:@"move-to-shared"];
    v142 = v141;
    if (v141)
    {
      integerValue12 = [v141 integerValue];
    }

    else
    {
      integerValue12 = 0;
    }

    [(PXCPLStatus *)v9 setSharedLibraryMovingToShared:integerValue12];

    v144 = [representationCopy objectForKeyedSubscript:@"move-to-personal"];
    v145 = v144;
    if (v144)
    {
      integerValue13 = [v144 integerValue];
    }

    else
    {
      integerValue13 = 0;
    }

    [(PXCPLStatus *)v9 setSharedLibraryMovingToPersonal:integerValue13];

    v147 = [representationCopy objectForKeyedSubscript:@"shared-library-cloud-quota"];
    v148 = v147;
    if (v147)
    {
      bOOLValue26 = [v147 BOOLValue];
    }

    else
    {
      bOOLValue26 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingSharedLibraryQuota:bOOLValue26];

    v150 = [representationCopy objectForKeyedSubscript:@"local-mode"];
    v151 = v150;
    if (v150)
    {
      bOOLValue27 = [v150 BOOLValue];
    }

    else
    {
      bOOLValue27 = 0;
    }

    [(PXCPLStatus *)v9 setIsLocalModeEnabled:bOOLValue27];

    v153 = [representationCopy objectForKeyedSubscript:@"upgrade-suggested"];
    v154 = v153;
    if (v153)
    {
      bOOLValue28 = [v153 BOOLValue];
    }

    else
    {
      bOOLValue28 = 0;
    }

    [(PXCPLStatus *)v9 setIsUpgradeSuggestedToAccessAllPhotos:bOOLValue28];
  }

  v156 = v9;

  return v156;
}

+ (PXCPLStatus)statusWithStringRepresentation:(id)representation currentDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = representationCopy;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id> * _Nullable _StringToDictionaryRepresentation(NSString *__strong)"}];
    [currentHandler handleFailureInFunction:v17 file:@"PXCPLStatus_Serialization.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__99732;
  v23 = __Block_byref_object_dispose__99733;
  v24 = 0;
  if ([v8 hasPrefix:@"{"] && objc_msgSend(v8, "hasSuffix:", @"}"))
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = v20[5];
    v20[5] = v9;

    v11 = [v8 substringWithRange:{1, objc_msgSend(v8, "length") - 2}];
    v12 = [v11 componentsSeparatedByString:@" "];;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___StringToDictionaryRepresentation_block_invoke;
    v18[3] = &unk_1E7738328;
    v18[4] = &v19;
    [v12 enumerateObjectsUsingBlock:v18];
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  if (v13)
  {
    v14 = [[self alloc] _initWithDictionaryRepresentation:v13 currentDate:dateCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (float)fractionCompletedForUpload
{
  percentCompletedForUpload = self->_percentCompletedForUpload;
  if (percentCompletedForUpload < 0)
  {
    return -1.0;
  }

  result = percentCompletedForUpload / 100.0;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (void)setFractionCompletedForUpload:(float)upload
{
  v4 = upload <= 1.0 && upload >= 0.0;
  if (!v4 && upload != -1.0)
  {
    PXAssertGetLog();
  }

  if (upload >= 0.0)
  {
    v5 = vcvtps_s32_f32(upload * 100.0);
    if (v5 >= 100)
    {
      v5 = 100;
    }
  }

  else
  {
    v5 = -1;
  }

  self->_percentCompletedForUpload = v5;
}

- (float)fractionCompletedForLibraryRebuild
{
  percentCompletedForLibraryRebuild = self->_percentCompletedForLibraryRebuild;
  if (percentCompletedForLibraryRebuild < 0)
  {
    return -1.0;
  }

  result = percentCompletedForLibraryRebuild / 100.0;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (void)setFractionCompletedForLibraryRebuild:(float)rebuild
{
  v4 = rebuild <= 1.0 && rebuild >= 0.0;
  if (!v4 && rebuild != -1.0)
  {
    PXAssertGetLog();
  }

  if (rebuild >= 0.0)
  {
    v5 = vcvtps_s32_f32(rebuild * 100.0);
    if (v5 >= 100)
    {
      v5 = 100;
    }
  }

  else
  {
    v5 = -1;
  }

  self->_percentCompletedForLibraryRebuild = v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXCPLStatus *)self _isEqualToCPLStatus:equalCopy];

  return v5;
}

- (BOOL)_isEqualToCPLStatus:(id)status
{
  statusCopy = status;
  isEnabled = self->_isEnabled;
  if (isEnabled != [statusCopy isEnabled])
  {
    goto LABEL_65;
  }

  percentCompletedForLibraryRebuild = self->_percentCompletedForLibraryRebuild;
  if (percentCompletedForLibraryRebuild != [statusCopy percentCompletedForLibraryRebuild])
  {
    goto LABEL_65;
  }

  isRebuildingThumbnails = self->_isRebuildingThumbnails;
  if (isRebuildingThumbnails != [statusCopy isRebuildingThumbnails])
  {
    goto LABEL_65;
  }

  isSyncing = self->_isSyncing;
  if (isSyncing != [statusCopy isSyncing])
  {
    goto LABEL_65;
  }

  syncDate = self->_syncDate;
  syncDate = [statusCopy syncDate];
  v11 = syncDate;
  if (syncDate == syncDate)
  {
  }

  else
  {
    v12 = [(NSDate *)syncDate isEqual:syncDate];

    if (!v12)
    {
LABEL_65:
      v69 = 0;
      goto LABEL_66;
    }
  }

  exitDate = self->_exitDate;
  exitDate = [statusCopy exitDate];
  v15 = exitDate;
  if (exitDate == exitDate)
  {
  }

  else
  {
    v16 = [(NSDate *)exitDate isEqual:exitDate];

    if (!v16)
    {
      goto LABEL_65;
    }
  }

  numberOfItemsToUpload = self->_numberOfItemsToUpload;
  if (numberOfItemsToUpload != [statusCopy numberOfItemsToUpload])
  {
    goto LABEL_65;
  }

  percentCompletedForUpload = self->_percentCompletedForUpload;
  if (percentCompletedForUpload != [statusCopy percentCompletedForUpload])
  {
    goto LABEL_65;
  }

  numberOfItemsToAdd = self->_numberOfItemsToAdd;
  if (numberOfItemsToAdd != [statusCopy numberOfItemsToAdd])
  {
    goto LABEL_65;
  }

  numberOfOriginalsToDownload = self->_numberOfOriginalsToDownload;
  if (numberOfOriginalsToDownload != [statusCopy numberOfOriginalsToDownload])
  {
    goto LABEL_65;
  }

  numberOfItemsFailingToUpload = self->_numberOfItemsFailingToUpload;
  if (numberOfItemsFailingToUpload != [statusCopy numberOfItemsFailingToUpload])
  {
    goto LABEL_65;
  }

  numberOfPhotoAssets = self->_numberOfPhotoAssets;
  if (numberOfPhotoAssets != [statusCopy numberOfPhotoAssets])
  {
    goto LABEL_65;
  }

  numberOfVideoAssets = self->_numberOfVideoAssets;
  if (numberOfVideoAssets != [statusCopy numberOfVideoAssets])
  {
    goto LABEL_65;
  }

  numberOfOtherAssets = self->_numberOfOtherAssets;
  if (numberOfOtherAssets != [statusCopy numberOfOtherAssets])
  {
    goto LABEL_65;
  }

  numberOfReferencedItems = self->_numberOfReferencedItems;
  if (numberOfReferencedItems != [statusCopy numberOfReferencedItems])
  {
    goto LABEL_65;
  }

  isUserPaused = self->_isUserPaused;
  if (isUserPaused != [statusCopy isUserPaused])
  {
    goto LABEL_65;
  }

  isInLowDataMode = self->_isInLowDataMode;
  if (isInLowDataMode != [statusCopy isInLowDataMode])
  {
    goto LABEL_65;
  }

  isInLowPowerMode = self->_isInLowPowerMode;
  if (isInLowPowerMode != [statusCopy isInLowPowerMode])
  {
    goto LABEL_65;
  }

  isExceedingBatteryQuota = self->_isExceedingBatteryQuota;
  if (isExceedingBatteryQuota != [statusCopy isExceedingBatteryQuota])
  {
    goto LABEL_65;
  }

  isExceedingCellularQuota = self->_isExceedingCellularQuota;
  if (isExceedingCellularQuota != [statusCopy isExceedingCellularQuota])
  {
    goto LABEL_65;
  }

  isLowDiskSpace = self->_isLowDiskSpace;
  if (isLowDiskSpace != [statusCopy isLowDiskSpace])
  {
    goto LABEL_65;
  }

  isVeryLowDiskSpace = self->_isVeryLowDiskSpace;
  if (isVeryLowDiskSpace != [statusCopy isVeryLowDiskSpace])
  {
    goto LABEL_65;
  }

  isExceedingQuota = self->_isExceedingQuota;
  if (isExceedingQuota != [statusCopy isExceedingQuota])
  {
    goto LABEL_65;
  }

  isCellularDataDisabled = self->_isCellularDataDisabled;
  if (isCellularDataDisabled != [statusCopy isCellularDataDisabled])
  {
    goto LABEL_65;
  }

  isInAirplaneMode = self->_isInAirplaneMode;
  if (isInAirplaneMode != [statusCopy isInAirplaneMode])
  {
    goto LABEL_65;
  }

  isClientVersionTooOld = self->_isClientVersionTooOld;
  if (isClientVersionTooOld != [statusCopy isClientVersionTooOld])
  {
    goto LABEL_65;
  }

  isClientNotAuthenticated = self->_isClientNotAuthenticated;
  if (isClientNotAuthenticated != [statusCopy isClientNotAuthenticated])
  {
    goto LABEL_65;
  }

  isOffline = self->_isOffline;
  if (isOffline != [statusCopy isOffline])
  {
    goto LABEL_65;
  }

  isInSoftResetSync = self->_isInSoftResetSync;
  if (isInSoftResetSync != [statusCopy isInSoftResetSync])
  {
    goto LABEL_65;
  }

  isInHardResetSync = self->_isInHardResetSync;
  if (isInHardResetSync != [statusCopy isInHardResetSync])
  {
    goto LABEL_65;
  }

  isCapturingSnapshot = self->_isCapturingSnapshot;
  if (isCapturingSnapshot != [statusCopy isCapturingSnapshot])
  {
    goto LABEL_65;
  }

  isOptimizingSystemPerformance = self->_isOptimizingSystemPerformance;
  if (isOptimizingSystemPerformance != [statusCopy isOptimizingSystemPerformance])
  {
    goto LABEL_65;
  }

  isInPoorNetworkConnection = self->_isInPoorNetworkConnection;
  if (isInPoorNetworkConnection != [statusCopy isInPoorNetworkConnection])
  {
    goto LABEL_65;
  }

  isInModerateThermalPressure = self->_isInModerateThermalPressure;
  if (isInModerateThermalPressure != [statusCopy isInModerateThermalPressure])
  {
    goto LABEL_65;
  }

  isInHeavyThermalPressure = self->_isInHeavyThermalPressure;
  if (isInHeavyThermalPressure != [statusCopy isInHeavyThermalPressure])
  {
    goto LABEL_65;
  }

  isInLowBattery = self->_isInLowBattery;
  if (isInLowBattery != [statusCopy isInLowBattery])
  {
    goto LABEL_65;
  }

  hasCloudQuotaOffer = self->_hasCloudQuotaOffer;
  if (hasCloudQuotaOffer != [statusCopy hasCloudQuotaOffer])
  {
    goto LABEL_65;
  }

  cloudQuotaState = self->_cloudQuotaState;
  if (cloudQuotaState != [statusCopy cloudQuotaState])
  {
    goto LABEL_65;
  }

  cloudQuotaTitle = self->_cloudQuotaTitle;
  cloudQuotaTitle = [statusCopy cloudQuotaTitle];
  v51 = cloudQuotaTitle;
  if (cloudQuotaTitle == cloudQuotaTitle)
  {
  }

  else
  {
    v52 = [(NSString *)cloudQuotaTitle isEqualToString:cloudQuotaTitle];

    if (!v52)
    {
      goto LABEL_65;
    }
  }

  cloudQuotaMessage = self->_cloudQuotaMessage;
  cloudQuotaMessage = [statusCopy cloudQuotaMessage];
  v55 = cloudQuotaMessage;
  if (cloudQuotaMessage == cloudQuotaMessage)
  {
  }

  else
  {
    v56 = [(NSString *)cloudQuotaMessage isEqualToString:cloudQuotaMessage];

    if (!v56)
    {
      goto LABEL_65;
    }
  }

  cloudQuotaActionTitle = self->_cloudQuotaActionTitle;
  cloudQuotaActionTitle = [statusCopy cloudQuotaActionTitle];
  v59 = cloudQuotaActionTitle;
  if (cloudQuotaActionTitle == cloudQuotaActionTitle)
  {
  }

  else
  {
    v60 = [(NSString *)cloudQuotaActionTitle isEqualToString:cloudQuotaActionTitle];

    if (!v60)
    {
      goto LABEL_65;
    }
  }

  sharedLibraryState = self->_sharedLibraryState;
  if (sharedLibraryState != [statusCopy sharedLibraryState])
  {
    goto LABEL_65;
  }

  sharedLibraryExitingWithNumberOfAssetsRemaining = self->_sharedLibraryExitingWithNumberOfAssetsRemaining;
  if (sharedLibraryExitingWithNumberOfAssetsRemaining != [statusCopy sharedLibraryExitingWithNumberOfAssetsRemaining])
  {
    goto LABEL_65;
  }

  sharedLibraryMovingToShared = self->_sharedLibraryMovingToShared;
  if (sharedLibraryMovingToShared != [statusCopy sharedLibraryMovingToShared])
  {
    goto LABEL_65;
  }

  sharedLibraryMovingToPersonal = self->_sharedLibraryMovingToPersonal;
  if (sharedLibraryMovingToPersonal != [statusCopy sharedLibraryMovingToPersonal])
  {
    goto LABEL_65;
  }

  isExceedingSharedLibraryQuota = self->_isExceedingSharedLibraryQuota;
  if (isExceedingSharedLibraryQuota != [statusCopy isExceedingSharedLibraryQuota])
  {
    goto LABEL_65;
  }

  isLocalModeEnabled = self->_isLocalModeEnabled;
  if (isLocalModeEnabled != [statusCopy isLocalModeEnabled])
  {
    goto LABEL_65;
  }

  isMockStatus = self->_isMockStatus;
  if (isMockStatus != [statusCopy isMockStatus])
  {
    goto LABEL_65;
  }

  isUpgradeSuggestedToAccessAllPhotos = self->_isUpgradeSuggestedToAccessAllPhotos;
  v69 = isUpgradeSuggestedToAccessAllPhotos == [statusCopy isUpgradeSuggestedToAccessAllPhotos];
LABEL_66:

  return v69;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXCPLStatus);
  [(PXCPLStatus *)v4 setIsEnabled:self->_isEnabled];
  [(PXCPLStatus *)v4 setPercentCompletedForLibraryRebuild:self->_percentCompletedForLibraryRebuild];
  [(PXCPLStatus *)v4 setIsRebuildingThumbnails:self->_isRebuildingThumbnails];
  [(PXCPLStatus *)v4 setIsSyncing:self->_isSyncing];
  [(PXCPLStatus *)v4 setSyncDate:self->_syncDate];
  [(PXCPLStatus *)v4 setExitDate:self->_exitDate];
  [(PXCPLStatus *)v4 setNumberOfItemsToUpload:self->_numberOfItemsToUpload];
  [(PXCPLStatus *)v4 setPercentCompletedForUpload:self->_percentCompletedForUpload];
  [(PXCPLStatus *)v4 setNumberOfItemsToAdd:self->_numberOfItemsToAdd];
  [(PXCPLStatus *)v4 setNumberOfOriginalsToDownload:self->_numberOfOriginalsToDownload];
  [(PXCPLStatus *)v4 setNumberOfItemsFailingToUpload:self->_numberOfItemsFailingToUpload];
  [(PXCPLStatus *)v4 setNumberOfPhotoAssets:self->_numberOfPhotoAssets];
  [(PXCPLStatus *)v4 setNumberOfVideoAssets:self->_numberOfVideoAssets];
  [(PXCPLStatus *)v4 setNumberOfOtherAssets:self->_numberOfOtherAssets];
  [(PXCPLStatus *)v4 setNumberOfReferencedItems:self->_numberOfReferencedItems];
  [(PXCPLStatus *)v4 setIsUserPaused:self->_isUserPaused];
  [(PXCPLStatus *)v4 setIsInLowDataMode:self->_isInLowDataMode];
  [(PXCPLStatus *)v4 setIsInLowPowerMode:self->_isInLowPowerMode];
  [(PXCPLStatus *)v4 setIsExceedingBatteryQuota:self->_isExceedingBatteryQuota];
  [(PXCPLStatus *)v4 setIsExceedingCellularQuota:self->_isExceedingCellularQuota];
  [(PXCPLStatus *)v4 setIsLowDiskSpace:self->_isLowDiskSpace];
  [(PXCPLStatus *)v4 setIsVeryLowDiskSpace:self->_isVeryLowDiskSpace];
  [(PXCPLStatus *)v4 setIsExceedingQuota:self->_isExceedingQuota];
  [(PXCPLStatus *)v4 setIsCellularDataDisabled:self->_isCellularDataDisabled];
  [(PXCPLStatus *)v4 setIsInAirplaneMode:self->_isInAirplaneMode];
  [(PXCPLStatus *)v4 setIsClientVersionTooOld:self->_isClientVersionTooOld];
  [(PXCPLStatus *)v4 setIsClientNotAuthenticated:self->_isClientNotAuthenticated];
  [(PXCPLStatus *)v4 setIsOffline:self->_isOffline];
  [(PXCPLStatus *)v4 setIsInSoftResetSync:self->_isInSoftResetSync];
  [(PXCPLStatus *)v4 setIsInHardResetSync:self->_isInHardResetSync];
  [(PXCPLStatus *)v4 setIsCapturingSnapshot:self->_isCapturingSnapshot];
  [(PXCPLStatus *)v4 setIsOptimizingSystemPerformance:self->_isOptimizingSystemPerformance];
  [(PXCPLStatus *)v4 setIsInPoorNetworkConnection:self->_isInPoorNetworkConnection];
  [(PXCPLStatus *)v4 setIsInModerateThermalPressure:self->_isInModerateThermalPressure];
  [(PXCPLStatus *)v4 setIsInHeavyThermalPressure:self->_isInHeavyThermalPressure];
  [(PXCPLStatus *)v4 setIsInLowBattery:self->_isInLowBattery];
  [(PXCPLStatus *)v4 setHasCloudQuotaOffer:self->_hasCloudQuotaOffer];
  [(PXCPLStatus *)v4 setCloudQuotaState:self->_cloudQuotaState];
  [(PXCPLStatus *)v4 setCloudQuotaTitle:self->_cloudQuotaTitle];
  [(PXCPLStatus *)v4 setCloudQuotaMessage:self->_cloudQuotaMessage];
  [(PXCPLStatus *)v4 setCloudQuotaActionTitle:self->_cloudQuotaActionTitle];
  [(PXCPLStatus *)v4 setSharedLibraryState:self->_sharedLibraryState];
  [(PXCPLStatus *)v4 setSharedLibraryExitingWithNumberOfAssetsRemaining:self->_sharedLibraryExitingWithNumberOfAssetsRemaining];
  [(PXCPLStatus *)v4 setSharedLibraryMovingToShared:self->_sharedLibraryMovingToShared];
  [(PXCPLStatus *)v4 setSharedLibraryMovingToPersonal:self->_sharedLibraryMovingToPersonal];
  [(PXCPLStatus *)v4 setIsExceedingSharedLibraryQuota:self->_isExceedingSharedLibraryQuota];
  [(PXCPLStatus *)v4 setIsLocalModeEnabled:self->_isLocalModeEnabled];
  [(PXCPLStatus *)v4 setIsMockStatus:self->_isMockStatus];
  [(PXCPLStatus *)v4 setIsUpgradeSuggestedToAccessAllPhotos:self->_isUpgradeSuggestedToAccessAllPhotos];
  return v4;
}

- (PXCPLStatus)init
{
  v3.receiver = self;
  v3.super_class = PXCPLStatus;
  result = [(PXCPLStatus *)&v3 init];
  if (result)
  {
    result->_percentCompletedForLibraryRebuild = -1;
    result->_percentCompletedForUpload = -1;
  }

  return result;
}

@end