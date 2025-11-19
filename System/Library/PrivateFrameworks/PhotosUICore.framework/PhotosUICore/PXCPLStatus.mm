@interface PXCPLStatus
+ (PXCPLStatus)statusWithStringRepresentation:(id)a3 currentDate:(id)a4;
- (BOOL)_isEqualToCPLStatus:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)stringRepresentation;
- (PXCPLStatus)init;
- (float)fractionCompletedForLibraryRebuild;
- (float)fractionCompletedForUpload;
- (id)_dictionaryRepresentation;
- (id)_initWithDictionaryRepresentation:(id)a3 currentDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFractionCompletedForLibraryRebuild:(float)a3;
- (void)setFractionCompletedForUpload:(float)a3;
@end

@implementation PXCPLStatus

- (NSString)stringRepresentation
{
  v2 = [(PXCPLStatus *)self _dictionaryRepresentation];
  v3 = _DictionaryRepresentationToString(v2);

  return v3;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PXCPLStatus *)self isEnabled];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v6 = [v5 stringValue];
  [v3 setObject:v6 forKeyedSubscript:@"enabled"];

  v7 = [(PXCPLStatus *)self percentCompletedForLibraryRebuild];
  if (v7 != -1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [v8 stringValue];
    [v3 setObject:v9 forKeyedSubscript:@"rebuild"];
  }

  if ([(PXCPLStatus *)self isRebuildingThumbnails])
  {
    v10 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v10 forKeyedSubscript:@"thumbnails"];
  }

  if ([(PXCPLStatus *)self isSyncing])
  {
    v11 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v11 forKeyedSubscript:@"syncing"];
  }

  v12 = [(PXCPLStatus *)self numberOfItemsToUpload];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v14 = [v13 stringValue];
    [v3 setObject:v14 forKeyedSubscript:@"upload"];
  }

  v15 = [(PXCPLStatus *)self percentCompletedForUpload];
  if (v15 != -1)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    v17 = [v16 stringValue];
    [v3 setObject:v17 forKeyedSubscript:@"progress"];
  }

  v18 = [(PXCPLStatus *)self numberOfItemsToAdd];
  if (v18)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
    v20 = [v19 stringValue];
    [v3 setObject:v20 forKeyedSubscript:@"add"];
  }

  v21 = [(PXCPLStatus *)self numberOfOriginalsToDownload];
  if (v21)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
    v23 = [v22 stringValue];
    [v3 setObject:v23 forKeyedSubscript:@"download"];
  }

  if ([(PXCPLStatus *)self isOffline])
  {
    v24 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v24 forKeyedSubscript:@"offline"];
  }

  if ([(PXCPLStatus *)self isInSoftResetSync])
  {
    v25 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v25 forKeyedSubscript:@"soft-reset"];
  }

  if ([(PXCPLStatus *)self isInHardResetSync])
  {
    v26 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v26 forKeyedSubscript:@"hard-reset"];
  }

  if ([(PXCPLStatus *)self isExceedingQuota])
  {
    v27 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v27 forKeyedSubscript:@"cloud-quota"];
  }

  if ([(PXCPLStatus *)self hasCloudQuotaOffer])
  {
    v28 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v28 forKeyedSubscript:@"offer"];
  }

  v29 = [(PXCPLStatus *)self cloudQuotaState];
  if (v29 == 1)
  {
    v30 = @"almost-full";
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_30;
    }

    v30 = @"full";
  }

  [v3 setObject:v30 forKeyedSubscript:@"quota-state"];
LABEL_30:
  v31 = [(PXCPLStatus *)self cloudQuotaTitle];
  if ([v31 length])
  {
    [v3 setObject:v31 forKeyedSubscript:@"quota-title"];
  }

  v32 = [(PXCPLStatus *)self cloudQuotaMessage];
  if ([v32 length])
  {
    [v3 setObject:v32 forKeyedSubscript:@"quota-subtitle"];
  }

  v33 = [(PXCPLStatus *)self cloudQuotaActionTitle];
  if ([v33 length])
  {
    [v3 setObject:v33 forKeyedSubscript:@"quota-action-title"];
  }

  if ([(PXCPLStatus *)self isLowDiskSpace])
  {
    v34 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v34 forKeyedSubscript:@"low-disk-space"];
  }

  if ([(PXCPLStatus *)self isVeryLowDiskSpace])
  {
    v35 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v35 forKeyedSubscript:@"very-low-disk-space"];
  }

  if ([(PXCPLStatus *)self isExceedingBatteryQuota])
  {
    v36 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v36 forKeyedSubscript:@"battery-budget"];
  }

  if ([(PXCPLStatus *)self isExceedingCellularQuota])
  {
    v37 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v37 forKeyedSubscript:@"cellular-budget"];
  }

  if ([(PXCPLStatus *)self isCellularDataDisabled])
  {
    v38 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v38 forKeyedSubscript:@"cellular-disabled"];
  }

  if ([(PXCPLStatus *)self isInAirplaneMode])
  {
    v39 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v39 forKeyedSubscript:@"airplane-mode"];
  }

  if ([(PXCPLStatus *)self isUserPaused])
  {
    v40 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v40 forKeyedSubscript:@"user"];
  }

  if ([(PXCPLStatus *)self isInLowDataMode])
  {
    v41 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v41 forKeyedSubscript:@"low-data-mode"];
  }

  if ([(PXCPLStatus *)self isInLowPowerMode])
  {
    v42 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v42 forKeyedSubscript:@"low-power-mode"];
  }

  if ([(PXCPLStatus *)self isClientVersionTooOld])
  {
    v43 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v43 forKeyedSubscript:@"version"];
  }

  if ([(PXCPLStatus *)self isClientNotAuthenticated])
  {
    v44 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v44 forKeyedSubscript:@"authenticate"];
  }

  if ([(PXCPLStatus *)self isCapturingSnapshot])
  {
    v45 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v45 forKeyedSubscript:@"capture-snapshot"];
  }

  if ([(PXCPLStatus *)self isOptimizingSystemPerformance])
  {
    v46 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v46 forKeyedSubscript:@"optimizing-system-performance"];
  }

  if ([(PXCPLStatus *)self isInPoorNetworkConnection])
  {
    v47 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v47 forKeyedSubscript:@"poor-network-connection"];
  }

  if ([(PXCPLStatus *)self isInModerateThermalPressure])
  {
    v48 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v48 forKeyedSubscript:@"moderate-thermal-pressure"];
  }

  if ([(PXCPLStatus *)self isInHeavyThermalPressure])
  {
    v49 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v49 forKeyedSubscript:@"heavy-thermal-pressure"];
  }

  if ([(PXCPLStatus *)self isInLowBattery])
  {
    v50 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v50 forKeyedSubscript:@"low-battery"];
  }

  v51 = [(PXCPLStatus *)self syncDate];
  if (v51)
  {
    v52 = _SerializationDateFormatter();
    v53 = [v52 stringFromDate:v51];
    [v3 setObject:v53 forKeyedSubscript:@"sync-date"];
  }

  v54 = [(PXCPLStatus *)self exitDate];
  if (v54)
  {
    v55 = _SerializationDateFormatter();
    v56 = [v55 stringFromDate:v54];
    [v3 setObject:v56 forKeyedSubscript:@"exit-date"];
  }

  v57 = [(PXCPLStatus *)self numberOfItemsFailingToUpload];
  if (v57)
  {
    v58 = [MEMORY[0x1E696AD98] numberWithInteger:v57];
    v59 = [v58 stringValue];
    [v3 setObject:v59 forKeyedSubscript:@"failed"];
  }

  v60 = [(PXCPLStatus *)self numberOfReferencedItems];
  if (v60)
  {
    v61 = [MEMORY[0x1E696AD98] numberWithInteger:v60];
    v62 = [v61 stringValue];
    [v3 setObject:v62 forKeyedSubscript:@"referenced"];
  }

  v63 = [(PXCPLStatus *)self numberOfPhotoAssets];
  if (v63)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithInteger:v63];
    v65 = [v64 stringValue];
    [v3 setObject:v65 forKeyedSubscript:@"photos"];
  }

  v66 = [(PXCPLStatus *)self numberOfVideoAssets];
  if (v66)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithInteger:v66];
    v68 = [v67 stringValue];
    [v3 setObject:v68 forKeyedSubscript:@"videos"];
  }

  v69 = [(PXCPLStatus *)self numberOfOtherAssets];
  if (v69)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithInteger:v69];
    v71 = [v70 stringValue];
    [v3 setObject:v71 forKeyedSubscript:@"others"];
  }

  v72 = [(PXCPLStatus *)self sharedLibraryState]- 1;
  if (v72 <= 2)
  {
    [v3 setObject:off_1E7738348[v72] forKeyedSubscript:@"shared-library-state"];
  }

  v73 = [(PXCPLStatus *)self sharedLibraryExitingWithNumberOfAssetsRemaining];
  if (v73)
  {
    v74 = [MEMORY[0x1E696AD98] numberWithInteger:v73];
    v75 = [v74 stringValue];
    [v3 setObject:v75 forKeyedSubscript:@"shared-library-exiting-count"];
  }

  v76 = [(PXCPLStatus *)self sharedLibraryMovingToShared];
  if (v76)
  {
    v77 = [MEMORY[0x1E696AD98] numberWithInteger:v76];
    v78 = [v77 stringValue];
    [v3 setObject:v78 forKeyedSubscript:@"move-to-shared"];
  }

  v79 = [(PXCPLStatus *)self sharedLibraryMovingToPersonal];
  if (v79)
  {
    v80 = [MEMORY[0x1E696AD98] numberWithInteger:v79];
    v81 = [v80 stringValue];
    [v3 setObject:v81 forKeyedSubscript:@"move-to-personal"];
  }

  if ([(PXCPLStatus *)self isExceedingSharedLibraryQuota])
  {
    v82 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v82 forKeyedSubscript:@"shared-library-cloud-quota"];
  }

  if ([(PXCPLStatus *)self isLocalModeEnabled])
  {
    v83 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v83 forKeyedSubscript:@"local-mode"];
  }

  if ([(PXCPLStatus *)self isUpgradeSuggestedToAccessAllPhotos])
  {
    v84 = [MEMORY[0x1E695E118] stringValue];
    [v3 setObject:v84 forKeyedSubscript:@"upgrade-suggested"];
  }

  v85 = v3;

  return v3;
}

- (id)_initWithDictionaryRepresentation:(id)a3 currentDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v158 = [MEMORY[0x1E696AAA8] currentHandler];
    [v158 handleFailureInMethod:a2 object:self file:@"PXCPLStatus_Serialization.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"dictionaryRepresentation"}];
  }

  v9 = [(PXCPLStatus *)self init];

  if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"enabled"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 BOOLValue];
    }

    else
    {
      v12 = 0;
    }

    [(PXCPLStatus *)v9 setIsEnabled:v12];

    v13 = [v7 objectForKeyedSubscript:@"rebuild"];
    v14 = v13;
    if (v13 && ([v13 isEqualToString:@"-"] & 1) == 0)
    {
      v15 = [v14 integerValue];
    }

    else
    {
      v15 = -1;
    }

    [(PXCPLStatus *)v9 setPercentCompletedForLibraryRebuild:v15];

    v16 = [v7 objectForKeyedSubscript:@"thumbnails"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 BOOLValue];
    }

    else
    {
      v18 = 0;
    }

    [(PXCPLStatus *)v9 setIsRebuildingThumbnails:v18];

    v19 = [v7 objectForKeyedSubscript:@"syncing"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 BOOLValue];
    }

    else
    {
      v21 = 0;
    }

    [(PXCPLStatus *)v9 setIsSyncing:v21];

    v22 = [v7 objectForKeyedSubscript:@"upload"];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 integerValue];
    }

    else
    {
      v24 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfItemsToUpload:v24];

    v25 = [v7 objectForKeyedSubscript:@"progress"];
    v26 = v25;
    if (v25 && ([v25 isEqualToString:@"-"] & 1) == 0)
    {
      v27 = [v26 integerValue];
    }

    else
    {
      v27 = -1;
    }

    [(PXCPLStatus *)v9 setPercentCompletedForUpload:v27];

    v28 = [v7 objectForKeyedSubscript:@"add"];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 integerValue];
    }

    else
    {
      v30 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfItemsToAdd:v30];

    v31 = [v7 objectForKeyedSubscript:@"download"];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 integerValue];
    }

    else
    {
      v33 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfOriginalsToDownload:v33];

    v34 = [v7 objectForKeyedSubscript:@"offline"];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 BOOLValue];
    }

    else
    {
      v36 = 0;
    }

    [(PXCPLStatus *)v9 setIsOffline:v36];

    v37 = [v7 objectForKeyedSubscript:@"soft-reset"];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 BOOLValue];
    }

    else
    {
      v39 = 0;
    }

    [(PXCPLStatus *)v9 setIsInSoftResetSync:v39];

    v40 = [v7 objectForKeyedSubscript:@"hard-reset"];
    v41 = v40;
    if (v40)
    {
      v42 = [v40 BOOLValue];
    }

    else
    {
      v42 = 0;
    }

    [(PXCPLStatus *)v9 setIsInHardResetSync:v42];

    v43 = [v7 objectForKeyedSubscript:@"cloud-quota"];
    v44 = v43;
    if (v43)
    {
      v45 = [v43 BOOLValue];
    }

    else
    {
      v45 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingQuota:v45];

    v46 = [v7 objectForKeyedSubscript:@"offer"];
    v47 = v46;
    if (v46)
    {
      v48 = [v46 BOOLValue];
    }

    else
    {
      v48 = 0;
    }

    [(PXCPLStatus *)v9 setHasCloudQuotaOffer:v48];

    v49 = [v7 objectForKeyedSubscript:@"quota-state"];
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

    v51 = [v7 objectForKeyedSubscript:@"quota-title"];
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

    v54 = [v7 objectForKeyedSubscript:@"quota-subtitle"];
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

    v57 = [v7 objectForKeyedSubscript:@"quota-action-title"];
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

    v60 = [v7 objectForKeyedSubscript:@"low-disk-space"];
    v61 = v60;
    if (v60)
    {
      v62 = [v60 BOOLValue];
    }

    else
    {
      v62 = 0;
    }

    [(PXCPLStatus *)v9 setIsLowDiskSpace:v62];

    v63 = [v7 objectForKeyedSubscript:@"very-low-disk-space"];
    v64 = v63;
    if (v63)
    {
      v65 = [v63 BOOLValue];
    }

    else
    {
      v65 = 0;
    }

    [(PXCPLStatus *)v9 setIsVeryLowDiskSpace:v65];

    v66 = [v7 objectForKeyedSubscript:@"battery-budget"];
    v67 = v66;
    if (v66)
    {
      v68 = [v66 BOOLValue];
    }

    else
    {
      v68 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingBatteryQuota:v68];

    v69 = [v7 objectForKeyedSubscript:@"cellular-budget"];
    v70 = v69;
    if (v69)
    {
      v71 = [v69 BOOLValue];
    }

    else
    {
      v71 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingCellularQuota:v71];

    v72 = [v7 objectForKeyedSubscript:@"cellular-disabled"];
    v73 = v72;
    if (v72)
    {
      v74 = [v72 BOOLValue];
    }

    else
    {
      v74 = 0;
    }

    [(PXCPLStatus *)v9 setIsCellularDataDisabled:v74];

    v75 = [v7 objectForKeyedSubscript:@"airplane-mode"];
    v76 = v75;
    if (v75)
    {
      v77 = [v75 BOOLValue];
    }

    else
    {
      v77 = 0;
    }

    [(PXCPLStatus *)v9 setIsInAirplaneMode:v77];

    v78 = [v7 objectForKeyedSubscript:@"user"];
    v79 = v78;
    if (v78)
    {
      v80 = [v78 BOOLValue];
    }

    else
    {
      v80 = 0;
    }

    [(PXCPLStatus *)v9 setIsUserPaused:v80];

    v81 = [v7 objectForKeyedSubscript:@"low-data-mode"];
    v82 = v81;
    if (v81)
    {
      v83 = [v81 BOOLValue];
    }

    else
    {
      v83 = 0;
    }

    [(PXCPLStatus *)v9 setIsInLowDataMode:v83];

    v84 = [v7 objectForKeyedSubscript:@"low-power-mode"];
    v85 = v84;
    if (v84)
    {
      v86 = [v84 BOOLValue];
    }

    else
    {
      v86 = 0;
    }

    [(PXCPLStatus *)v9 setIsInLowPowerMode:v86];

    v87 = [v7 objectForKeyedSubscript:@"version"];
    v88 = v87;
    if (v87)
    {
      v89 = [v87 BOOLValue];
    }

    else
    {
      v89 = 0;
    }

    [(PXCPLStatus *)v9 setIsClientVersionTooOld:v89];

    v90 = [v7 objectForKeyedSubscript:@"authenticate"];
    v91 = v90;
    if (v90)
    {
      v92 = [v90 BOOLValue];
    }

    else
    {
      v92 = 0;
    }

    [(PXCPLStatus *)v9 setIsClientNotAuthenticated:v92];

    v93 = [v7 objectForKeyedSubscript:@"capture-snapshot"];
    v94 = v93;
    if (v93)
    {
      v95 = [v93 BOOLValue];
    }

    else
    {
      v95 = 0;
    }

    [(PXCPLStatus *)v9 setIsCapturingSnapshot:v95];

    v96 = [v7 objectForKeyedSubscript:@"optimizing-system-performance"];
    v97 = v96;
    if (v96)
    {
      v98 = [v96 BOOLValue];
    }

    else
    {
      v98 = 0;
    }

    [(PXCPLStatus *)v9 setIsOptimizingSystemPerformance:v98];

    v99 = [v7 objectForKeyedSubscript:@"poor-network-connection"];
    v100 = v99;
    if (v99)
    {
      v101 = [v99 BOOLValue];
    }

    else
    {
      v101 = 0;
    }

    [(PXCPLStatus *)v9 setIsInPoorNetworkConnection:v101];

    v102 = [v7 objectForKeyedSubscript:@"moderate-thermal-pressure"];
    v103 = v102;
    if (v102)
    {
      v104 = [v102 BOOLValue];
    }

    else
    {
      v104 = 0;
    }

    [(PXCPLStatus *)v9 setIsInModerateThermalPressure:v104];

    v105 = [v7 objectForKeyedSubscript:@"heavy-thermal-pressure"];
    v106 = v105;
    if (v105)
    {
      v107 = [v105 BOOLValue];
    }

    else
    {
      v107 = 0;
    }

    [(PXCPLStatus *)v9 setIsInHeavyThermalPressure:v107];

    v108 = [v7 objectForKeyedSubscript:@"low-battery"];
    v109 = v108;
    if (v108)
    {
      v110 = [v108 BOOLValue];
    }

    else
    {
      v110 = 0;
    }

    [(PXCPLStatus *)v9 setIsInLowBattery:v110];

    v111 = [v7 objectForKeyedSubscript:@"sync-date"];
    v112 = v111;
    if (v111 && ([v111 isEqualToString:@"-"] & 1) == 0)
    {
      v113 = _DateForPlaceholderString(v112, v8);
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

    v116 = [v7 objectForKeyedSubscript:@"exit-date"];
    v117 = v116;
    if (v116 && ([v116 isEqualToString:@"-"] & 1) == 0)
    {
      v118 = _DateForPlaceholderString(v117, v8);
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

    v121 = [v7 objectForKeyedSubscript:@"failed"];
    v122 = v121;
    if (v121)
    {
      v123 = [v121 integerValue];
    }

    else
    {
      v123 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfItemsFailingToUpload:v123];

    v124 = [v7 objectForKeyedSubscript:@"referenced"];
    v125 = v124;
    if (v124)
    {
      v126 = [v124 integerValue];
    }

    else
    {
      v126 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfReferencedItems:v126];

    v127 = [v7 objectForKeyedSubscript:@"photos"];
    v128 = v127;
    if (v127)
    {
      v129 = [v127 integerValue];
    }

    else
    {
      v129 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfPhotoAssets:v129];

    v130 = [v7 objectForKeyedSubscript:@"videos"];
    v131 = v130;
    if (v130)
    {
      v132 = [v130 integerValue];
    }

    else
    {
      v132 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfVideoAssets:v132];

    v133 = [v7 objectForKeyedSubscript:@"others"];
    v134 = v133;
    if (v133)
    {
      v135 = [v133 integerValue];
    }

    else
    {
      v135 = 0;
    }

    [(PXCPLStatus *)v9 setNumberOfOtherAssets:v135];

    v136 = [v7 objectForKeyedSubscript:@"shared-library-state"];
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

    v138 = [v7 objectForKeyedSubscript:@"shared-library-exiting-count"];
    v139 = v138;
    if (v138)
    {
      v140 = [v138 integerValue];
    }

    else
    {
      v140 = 0;
    }

    [(PXCPLStatus *)v9 setSharedLibraryExitingWithNumberOfAssetsRemaining:v140];

    v141 = [v7 objectForKeyedSubscript:@"move-to-shared"];
    v142 = v141;
    if (v141)
    {
      v143 = [v141 integerValue];
    }

    else
    {
      v143 = 0;
    }

    [(PXCPLStatus *)v9 setSharedLibraryMovingToShared:v143];

    v144 = [v7 objectForKeyedSubscript:@"move-to-personal"];
    v145 = v144;
    if (v144)
    {
      v146 = [v144 integerValue];
    }

    else
    {
      v146 = 0;
    }

    [(PXCPLStatus *)v9 setSharedLibraryMovingToPersonal:v146];

    v147 = [v7 objectForKeyedSubscript:@"shared-library-cloud-quota"];
    v148 = v147;
    if (v147)
    {
      v149 = [v147 BOOLValue];
    }

    else
    {
      v149 = 0;
    }

    [(PXCPLStatus *)v9 setIsExceedingSharedLibraryQuota:v149];

    v150 = [v7 objectForKeyedSubscript:@"local-mode"];
    v151 = v150;
    if (v150)
    {
      v152 = [v150 BOOLValue];
    }

    else
    {
      v152 = 0;
    }

    [(PXCPLStatus *)v9 setIsLocalModeEnabled:v152];

    v153 = [v7 objectForKeyedSubscript:@"upgrade-suggested"];
    v154 = v153;
    if (v153)
    {
      v155 = [v153 BOOLValue];
    }

    else
    {
      v155 = 0;
    }

    [(PXCPLStatus *)v9 setIsUpgradeSuggestedToAccessAllPhotos:v155];
  }

  v156 = v9;

  return v156;
}

+ (PXCPLStatus)statusWithStringRepresentation:(id)a3 currentDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id> * _Nullable _StringToDictionaryRepresentation(NSString *__strong)"}];
    [v16 handleFailureInFunction:v17 file:@"PXCPLStatus_Serialization.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"string"}];
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
    v14 = [[a1 alloc] _initWithDictionaryRepresentation:v13 currentDate:v7];
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

- (void)setFractionCompletedForUpload:(float)a3
{
  v4 = a3 <= 1.0 && a3 >= 0.0;
  if (!v4 && a3 != -1.0)
  {
    PXAssertGetLog();
  }

  if (a3 >= 0.0)
  {
    v5 = vcvtps_s32_f32(a3 * 100.0);
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

- (void)setFractionCompletedForLibraryRebuild:(float)a3
{
  v4 = a3 <= 1.0 && a3 >= 0.0;
  if (!v4 && a3 != -1.0)
  {
    PXAssertGetLog();
  }

  if (a3 >= 0.0)
  {
    v5 = vcvtps_s32_f32(a3 * 100.0);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXCPLStatus *)self _isEqualToCPLStatus:v4];

  return v5;
}

- (BOOL)_isEqualToCPLStatus:(id)a3
{
  v4 = a3;
  isEnabled = self->_isEnabled;
  if (isEnabled != [v4 isEnabled])
  {
    goto LABEL_65;
  }

  percentCompletedForLibraryRebuild = self->_percentCompletedForLibraryRebuild;
  if (percentCompletedForLibraryRebuild != [v4 percentCompletedForLibraryRebuild])
  {
    goto LABEL_65;
  }

  isRebuildingThumbnails = self->_isRebuildingThumbnails;
  if (isRebuildingThumbnails != [v4 isRebuildingThumbnails])
  {
    goto LABEL_65;
  }

  isSyncing = self->_isSyncing;
  if (isSyncing != [v4 isSyncing])
  {
    goto LABEL_65;
  }

  syncDate = self->_syncDate;
  v10 = [v4 syncDate];
  v11 = v10;
  if (syncDate == v10)
  {
  }

  else
  {
    v12 = [(NSDate *)syncDate isEqual:v10];

    if (!v12)
    {
LABEL_65:
      v69 = 0;
      goto LABEL_66;
    }
  }

  exitDate = self->_exitDate;
  v14 = [v4 exitDate];
  v15 = v14;
  if (exitDate == v14)
  {
  }

  else
  {
    v16 = [(NSDate *)exitDate isEqual:v14];

    if (!v16)
    {
      goto LABEL_65;
    }
  }

  numberOfItemsToUpload = self->_numberOfItemsToUpload;
  if (numberOfItemsToUpload != [v4 numberOfItemsToUpload])
  {
    goto LABEL_65;
  }

  percentCompletedForUpload = self->_percentCompletedForUpload;
  if (percentCompletedForUpload != [v4 percentCompletedForUpload])
  {
    goto LABEL_65;
  }

  numberOfItemsToAdd = self->_numberOfItemsToAdd;
  if (numberOfItemsToAdd != [v4 numberOfItemsToAdd])
  {
    goto LABEL_65;
  }

  numberOfOriginalsToDownload = self->_numberOfOriginalsToDownload;
  if (numberOfOriginalsToDownload != [v4 numberOfOriginalsToDownload])
  {
    goto LABEL_65;
  }

  numberOfItemsFailingToUpload = self->_numberOfItemsFailingToUpload;
  if (numberOfItemsFailingToUpload != [v4 numberOfItemsFailingToUpload])
  {
    goto LABEL_65;
  }

  numberOfPhotoAssets = self->_numberOfPhotoAssets;
  if (numberOfPhotoAssets != [v4 numberOfPhotoAssets])
  {
    goto LABEL_65;
  }

  numberOfVideoAssets = self->_numberOfVideoAssets;
  if (numberOfVideoAssets != [v4 numberOfVideoAssets])
  {
    goto LABEL_65;
  }

  numberOfOtherAssets = self->_numberOfOtherAssets;
  if (numberOfOtherAssets != [v4 numberOfOtherAssets])
  {
    goto LABEL_65;
  }

  numberOfReferencedItems = self->_numberOfReferencedItems;
  if (numberOfReferencedItems != [v4 numberOfReferencedItems])
  {
    goto LABEL_65;
  }

  isUserPaused = self->_isUserPaused;
  if (isUserPaused != [v4 isUserPaused])
  {
    goto LABEL_65;
  }

  isInLowDataMode = self->_isInLowDataMode;
  if (isInLowDataMode != [v4 isInLowDataMode])
  {
    goto LABEL_65;
  }

  isInLowPowerMode = self->_isInLowPowerMode;
  if (isInLowPowerMode != [v4 isInLowPowerMode])
  {
    goto LABEL_65;
  }

  isExceedingBatteryQuota = self->_isExceedingBatteryQuota;
  if (isExceedingBatteryQuota != [v4 isExceedingBatteryQuota])
  {
    goto LABEL_65;
  }

  isExceedingCellularQuota = self->_isExceedingCellularQuota;
  if (isExceedingCellularQuota != [v4 isExceedingCellularQuota])
  {
    goto LABEL_65;
  }

  isLowDiskSpace = self->_isLowDiskSpace;
  if (isLowDiskSpace != [v4 isLowDiskSpace])
  {
    goto LABEL_65;
  }

  isVeryLowDiskSpace = self->_isVeryLowDiskSpace;
  if (isVeryLowDiskSpace != [v4 isVeryLowDiskSpace])
  {
    goto LABEL_65;
  }

  isExceedingQuota = self->_isExceedingQuota;
  if (isExceedingQuota != [v4 isExceedingQuota])
  {
    goto LABEL_65;
  }

  isCellularDataDisabled = self->_isCellularDataDisabled;
  if (isCellularDataDisabled != [v4 isCellularDataDisabled])
  {
    goto LABEL_65;
  }

  isInAirplaneMode = self->_isInAirplaneMode;
  if (isInAirplaneMode != [v4 isInAirplaneMode])
  {
    goto LABEL_65;
  }

  isClientVersionTooOld = self->_isClientVersionTooOld;
  if (isClientVersionTooOld != [v4 isClientVersionTooOld])
  {
    goto LABEL_65;
  }

  isClientNotAuthenticated = self->_isClientNotAuthenticated;
  if (isClientNotAuthenticated != [v4 isClientNotAuthenticated])
  {
    goto LABEL_65;
  }

  isOffline = self->_isOffline;
  if (isOffline != [v4 isOffline])
  {
    goto LABEL_65;
  }

  isInSoftResetSync = self->_isInSoftResetSync;
  if (isInSoftResetSync != [v4 isInSoftResetSync])
  {
    goto LABEL_65;
  }

  isInHardResetSync = self->_isInHardResetSync;
  if (isInHardResetSync != [v4 isInHardResetSync])
  {
    goto LABEL_65;
  }

  isCapturingSnapshot = self->_isCapturingSnapshot;
  if (isCapturingSnapshot != [v4 isCapturingSnapshot])
  {
    goto LABEL_65;
  }

  isOptimizingSystemPerformance = self->_isOptimizingSystemPerformance;
  if (isOptimizingSystemPerformance != [v4 isOptimizingSystemPerformance])
  {
    goto LABEL_65;
  }

  isInPoorNetworkConnection = self->_isInPoorNetworkConnection;
  if (isInPoorNetworkConnection != [v4 isInPoorNetworkConnection])
  {
    goto LABEL_65;
  }

  isInModerateThermalPressure = self->_isInModerateThermalPressure;
  if (isInModerateThermalPressure != [v4 isInModerateThermalPressure])
  {
    goto LABEL_65;
  }

  isInHeavyThermalPressure = self->_isInHeavyThermalPressure;
  if (isInHeavyThermalPressure != [v4 isInHeavyThermalPressure])
  {
    goto LABEL_65;
  }

  isInLowBattery = self->_isInLowBattery;
  if (isInLowBattery != [v4 isInLowBattery])
  {
    goto LABEL_65;
  }

  hasCloudQuotaOffer = self->_hasCloudQuotaOffer;
  if (hasCloudQuotaOffer != [v4 hasCloudQuotaOffer])
  {
    goto LABEL_65;
  }

  cloudQuotaState = self->_cloudQuotaState;
  if (cloudQuotaState != [v4 cloudQuotaState])
  {
    goto LABEL_65;
  }

  cloudQuotaTitle = self->_cloudQuotaTitle;
  v50 = [v4 cloudQuotaTitle];
  v51 = v50;
  if (cloudQuotaTitle == v50)
  {
  }

  else
  {
    v52 = [(NSString *)cloudQuotaTitle isEqualToString:v50];

    if (!v52)
    {
      goto LABEL_65;
    }
  }

  cloudQuotaMessage = self->_cloudQuotaMessage;
  v54 = [v4 cloudQuotaMessage];
  v55 = v54;
  if (cloudQuotaMessage == v54)
  {
  }

  else
  {
    v56 = [(NSString *)cloudQuotaMessage isEqualToString:v54];

    if (!v56)
    {
      goto LABEL_65;
    }
  }

  cloudQuotaActionTitle = self->_cloudQuotaActionTitle;
  v58 = [v4 cloudQuotaActionTitle];
  v59 = v58;
  if (cloudQuotaActionTitle == v58)
  {
  }

  else
  {
    v60 = [(NSString *)cloudQuotaActionTitle isEqualToString:v58];

    if (!v60)
    {
      goto LABEL_65;
    }
  }

  sharedLibraryState = self->_sharedLibraryState;
  if (sharedLibraryState != [v4 sharedLibraryState])
  {
    goto LABEL_65;
  }

  sharedLibraryExitingWithNumberOfAssetsRemaining = self->_sharedLibraryExitingWithNumberOfAssetsRemaining;
  if (sharedLibraryExitingWithNumberOfAssetsRemaining != [v4 sharedLibraryExitingWithNumberOfAssetsRemaining])
  {
    goto LABEL_65;
  }

  sharedLibraryMovingToShared = self->_sharedLibraryMovingToShared;
  if (sharedLibraryMovingToShared != [v4 sharedLibraryMovingToShared])
  {
    goto LABEL_65;
  }

  sharedLibraryMovingToPersonal = self->_sharedLibraryMovingToPersonal;
  if (sharedLibraryMovingToPersonal != [v4 sharedLibraryMovingToPersonal])
  {
    goto LABEL_65;
  }

  isExceedingSharedLibraryQuota = self->_isExceedingSharedLibraryQuota;
  if (isExceedingSharedLibraryQuota != [v4 isExceedingSharedLibraryQuota])
  {
    goto LABEL_65;
  }

  isLocalModeEnabled = self->_isLocalModeEnabled;
  if (isLocalModeEnabled != [v4 isLocalModeEnabled])
  {
    goto LABEL_65;
  }

  isMockStatus = self->_isMockStatus;
  if (isMockStatus != [v4 isMockStatus])
  {
    goto LABEL_65;
  }

  isUpgradeSuggestedToAccessAllPhotos = self->_isUpgradeSuggestedToAccessAllPhotos;
  v69 = isUpgradeSuggestedToAccessAllPhotos == [v4 isUpgradeSuggestedToAccessAllPhotos];
LABEL_66:

  return v69;
}

- (id)copyWithZone:(_NSZone *)a3
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