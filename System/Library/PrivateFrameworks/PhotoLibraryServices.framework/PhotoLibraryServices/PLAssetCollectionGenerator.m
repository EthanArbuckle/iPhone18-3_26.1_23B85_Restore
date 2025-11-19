@interface PLAssetCollectionGenerator
+ (id)_createMomentOrUpdateForAssetCluster:(id)a3 existingMomentDataForAssets:(id)a4 dataManager:(id)a5 usedMomentObjectIDs:(id)a6 debugDateFormatter:(id)a7;
+ (id)createMomentOrUpdateForAssetCluster:(id)a3 affectedMoment:(id)a4 dataManager:(id)a5;
- (BOOL)_updateMomentProcessedLocationAndReturnFrequentLocationsDidChange;
- (NSDateFormatter)debugDateFormatter;
- (PLAssetCollectionGenerator)initWithDataManager:(id)a3 frequentLocationManager:(id)a4 localCreationDateCreator:(id)a5;
- (PLMomentGenerationDataManagement)manager;
- (id)_createMomentOrUpdateForAssetCluster:(id)a3 existingMomentDataForAssets:(id)a4;
- (id)_processMomentsCollectionsYearsWithAssets:(id)a3 affectedMoments:(id)a4;
- (id)dataManager;
- (id)libraryClusterer:(id)a3 createMomentClustersForAssetClusters:(id)a4 existingMomentDataForAssets:(id)a5;
- (id)processMomentsWithAssets:(id)a3 affectedMoments:(id)a4;
- (void)_cleanUpMoment:(id)a3;
- (void)logRoutineInformation;
@end

@implementation PLAssetCollectionGenerator

- (PLMomentGenerationDataManagement)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (NSDateFormatter)debugDateFormatter
{
  debugDateFormatter = self->_debugDateFormatter;
  if (!debugDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SS"];
    v5 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    [(NSDateFormatter *)v4 setTimeZone:v5];

    v6 = self->_debugDateFormatter;
    self->_debugDateFormatter = v4;

    debugDateFormatter = self->_debugDateFormatter;
  }

  return debugDateFormatter;
}

- (id)libraryClusterer:(id)a3 createMomentClustersForAssetClusters:(id)a4 existingMomentDataForAssets:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [(PLAssetCollectionGenerator *)self _createMomentOrUpdateForAssetCluster:v15 existingMomentDataForAssets:v9, v24];
        if (v17)
        {
          [(PLAssetCollectionGenerator *)self insertedOrUpdatedMoments];
          v19 = v18 = v10;
          [v19 addObject:v17];

          v20 = [(PLAssetCollectionGenerator *)self usedMomentObjectIDs];
          v21 = [v17 uniqueObjectID];
          [v20 addObject:v21];

          v10 = v18;
          [v18 addObject:v17];
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v22 = [(PLAssetCollectionGenerator *)self momentsFromAssetClusters];
  [v22 addObject:v10];

  return v10;
}

- (void)logRoutineInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained logRoutineInformation];
}

- (id)dataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)_cleanUpMoment:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (([v3 isDeleted] & 1) == 0)
  {
    v4 = [v3 assets];
    v5 = [v4 count];
    if (v5 >= 1)
    {
      if ([v3 cachedCount] == v5)
      {
LABEL_32:

        goto LABEL_33;
      }

      v21 = v5;
      v23 = v3;
      [v3 recalculateSharedAssetContainerCachedValues];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = v4;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = *v25;
        while (1)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v6);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            if (([v15 isDeleted] & 1) == 0)
            {
              if ([v15 isPhoto])
              {
                v10 = (v10 + 1);
              }

              else
              {
                v9 = v9 + [v15 isVideo];
              }

              v16 = [v15 pl_date];
              v17 = v16;
              if (v12)
              {
                v18 = [v12 earlierDate:v16];

                v12 = v18;
                if (v11)
                {
                  goto LABEL_15;
                }

LABEL_17:
                v11 = v17;
              }

              else
              {
                v12 = v16;
                if (!v11)
                {
                  goto LABEL_17;
                }

LABEL_15:
                v19 = [v11 laterDate:v17];

                v11 = v19;
              }

              continue;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (!v8)
          {
            goto LABEL_23;
          }
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
LABEL_23:

      v3 = v23;
      [v23 setCachedPhotosCount:v10];
      [v23 setCachedVideosCount:v9];
      if (v12 && v11)
      {
        [v23 setStartDate:v12];
        [v23 setEndDate:v11];
        [v23 setRepresentativeDate:v12];
        v5 = v21;
      }

      else
      {
        v20 = PLMomentsGetLog();
        v5 = v21;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v23;
          v30 = 2112;
          v31 = v6;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Moment %@ given a nil date for assets %@", buf, 0x16u);
        }
      }

      v4 = v22;
    }

    if (!v5)
    {
      [v3 delete];
    }

    goto LABEL_32;
  }

LABEL_33:
}

- (id)_createMomentOrUpdateForAssetCluster:(id)a3 existingMomentDataForAssets:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(PLAssetCollectionGenerator *)self manager];
  v10 = [(PLAssetCollectionGenerator *)self usedMomentObjectIDs];
  v11 = [(PLAssetCollectionGenerator *)self debugDateFormatter];
  v12 = [v8 _createMomentOrUpdateForAssetCluster:v7 existingMomentDataForAssets:v6 dataManager:v9 usedMomentObjectIDs:v10 debugDateFormatter:v11];

  return v12;
}

- (BOOL)_updateMomentProcessedLocationAndReturnFrequentLocationsDidChange
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(PLAssetCollectionGenerator *)self manager];
  v35 = 0;
  v4 = [v3 allMomentsWithError:&v35];
  v5 = v35;

  v6 = [(PLAssetCollectionGenerator *)self manager];
  v7 = [objc_opt_class() processingMomentsFromMoments:v4];

  v8 = [(PLFrequentLocationManager *)self->_frequentLocationManager frequentLocationsDidChangeFromUpdateWithMoments:v7];
  if (v5)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Error fetching all moments. %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = [(PLAssetCollectionGenerator *)self insertedOrUpdatedMoments];
  v12 = [v11 mutableCopy];

  v28 = v4;
  v26 = v7;
  if (v10)
  {

    v13 = [(PLAssetCollectionGenerator *)self manager];
    v34 = 0;
    v14 = [v13 momentsRequiringLocationProcessingWhenFrequentLocationsChangedWithError:&v34];
    v15 = v34;

    if (v15)
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v15;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Error fetching moments requiring location processing when frequent locations change. %@", buf, 0xCu);
      }
    }

    if ([v14 count])
    {
      [v12 addObjectsFromArray:v14];
    }

    v27 = v15;
  }

  else
  {
    v27 = v5;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        WeakRetained = objc_loadWeakRetained(&self->_manager);
        v24 = [(PLFrequentLocationManager *)self->_frequentLocationManager currentFrequentLocations];
        [PLMomentGenerationUtils processLocationIfNecessaryInMoment:v21 usingManager:WeakRetained frequentLocations:v24 frequentLocationsDidChange:v10];

        objc_autoreleasePoolPop(v22);
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v18);
  }

  return v10;
}

- (id)_processMomentsCollectionsYearsWithAssets:(id)a3 affectedMoments:(id)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v63 = a4;
  v7 = PLMomentGenerationGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MomentCollectionYearClustering", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v12 = v10;
  v13 = os_signpost_id_generate(v12);
  v76 = 0;
  mach_timebase_info(&v76);
  v14 = v12;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MomentClustering", "", buf, 2u);
  }

  spid = v13;

  v61 = mach_absolute_time();
  v17 = [[PLLibraryClusterer alloc] initWithLocalCreationDateCreator:self->_localCreationDateCreator frequentLocationManager:self->_frequentLocationManager];
  [(PLLibraryClusterer *)v17 setDelegate:self];
  [(PLLibraryClusterer *)v17 processMomentsWithAssets:v6];
  v18 = [(PLAssetCollectionGenerator *)self manager];
  v19 = [v18 cameraIsActive];

  v65 = v8 - 1;
  v66 = v6;
  v59 = v8;
  v60 = v11;
  v64 = (v19 & 1) == 0 && [(PLAssetCollectionGenerator *)self _updateMomentProcessedLocationAndReturnFrequentLocationsDidChange];
  v20 = [MEMORY[0x1E695DF70] array];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v67 = self;
  v21 = [(PLAssetCollectionGenerator *)self momentsFromAssetClusters];
  v22 = [v21 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v73;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v73 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v72 + 1) + 8 * i);
        v27 = objc_autoreleasePoolPush();
        v28 = [(PLLibraryClusterer *)v17 locationBasedMomentClustersForMomentsSortedByDate:v26];
        [v20 addObjectsFromArray:v28];

        objc_autoreleasePoolPop(v27);
      }

      v23 = [v21 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v23);
  }

  v29 = mach_absolute_time();
  numer = v76.numer;
  denom = v76.denom;
  v32 = v15;
  v33 = v32;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v33, OS_SIGNPOST_INTERVAL_END, spid, "MomentClustering", "processMoments done.", buf, 2u);
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = (((v29 - v61) * numer) / denom) / 1000000.0;
    v35 = MEMORY[0x1E696AEC0];
    v36 = v33;
    v37 = [v35 stringWithFormat:@"processMoments done."];
    *buf = 136315650;
    v80 = "MomentClustering";
    v81 = 2112;
    v82 = v37;
    v83 = 2048;
    v84 = v34;
    _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v62 = v33;
  v38 = [(PLAssetCollectionGenerator *)v67 insertedOrUpdatedMoments];
  v39 = [v38 mutableCopy];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v40 = v63;
  v41 = [v40 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v69;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v69 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v68 + 1) + 8 * j);
        if (([v38 containsObject:v45] & 1) == 0)
        {
          v46 = objc_autoreleasePoolPush();
          [v39 addObject:v45];
          [(PLAssetCollectionGenerator *)v67 _cleanUpMoment:v45];
          objc_autoreleasePoolPop(v46);
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v42);
  }

  v47 = mach_absolute_time();
  v49 = info.numer;
  v48 = info.denom;
  v50 = v62;
  v51 = v50;
  if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    v52 = [v66 count];
    v53 = [v39 count];
    *buf = 134218240;
    v80 = v52;
    v81 = 2048;
    v82 = v53;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v51, OS_SIGNPOST_INTERVAL_END, v59, "MomentCollectionYearClustering", "assets %lu, created moments %lu", buf, 0x16u);
  }

  v54 = v51;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"assets %lu, created moments %lu", objc_msgSend(v66, "count"), objc_msgSend(v39, "count")];
    *buf = 136315650;
    v80 = "MomentCollectionYearClustering";
    v81 = 2112;
    v82 = v55;
    v83 = 2048;
    v84 = ((((v47 - v60) * v49) / v48) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v56 = [[PLAssetCollectionGenerationResult alloc] initWithInsertedOrUpdatedMoments:v39 frequentLocationsDidChange:v64];

  return v56;
}

- (id)processMomentsWithAssets:(id)a3 affectedMoments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [MEMORY[0x1E695DFA8] set];
  [(PLAssetCollectionGenerator *)v8 setUsedMomentObjectIDs:v9];

  v10 = [MEMORY[0x1E695DFA8] set];
  [(PLAssetCollectionGenerator *)v8 setInsertedOrUpdatedMoments:v10];

  v11 = [MEMORY[0x1E695DF70] array];
  [(PLAssetCollectionGenerator *)v8 setMomentsFromAssetClusters:v11];

  v12 = [(PLAssetCollectionGenerator *)v8 _processMomentsCollectionsYearsWithAssets:v6 affectedMoments:v7];
  objc_sync_exit(v8);

  return v12;
}

- (PLAssetCollectionGenerator)initWithDataManager:(id)a3 frequentLocationManager:(id)a4 localCreationDateCreator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PLAssetCollectionGenerator;
  v11 = [(PLAssetCollectionGenerator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_manager, v8);
    objc_storeStrong(&v12->_frequentLocationManager, a4);
    objc_storeStrong(&v12->_localCreationDateCreator, a5);
  }

  return v12;
}

+ (id)createMomentOrUpdateForAssetCluster:(id)a3 affectedMoment:(id)a4 dataManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PLExistingMomentData alloc] initWithMoment:v9];

  if (v9)
  {
    [MEMORY[0x1E695DFD8] setWithObject:v11];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v12 = ;
  v13 = [a1 _createMomentOrUpdateForAssetCluster:v10 existingMomentDataForAssets:v12 dataManager:v8 usedMomentObjectIDs:0 debugDateFormatter:0];

  return v13;
}

+ (id)_createMomentOrUpdateForAssetCluster:(id)a3 existingMomentDataForAssets:(id)a4 dataManager:(id)a5 usedMomentObjectIDs:(id)a6 debugDateFormatter:(id)a7
{
  v147 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v11 assets];
  v17 = [v11 location];
  v18 = [v16 count];
  if (!v18)
  {
    v40 = v12;
    v41 = 0;
    goto LABEL_82;
  }

  v104 = v18;
  v105 = v17;
  v109 = v15;
  v118 = v14;
  v19 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v20 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v112 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v106 = v16;
  obj = v16;
  v21 = [obj countByEnumeratingWithState:&v128 objects:v146 count:16];
  v107 = v13;
  v108 = v12;
  v110 = v11;
  v111 = v20;
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v117 = 0;
    v24 = *v129;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v129 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v128 + 1) + 8 * i);
        v27 = [PLMomentGenerationUtils originatorStateForAsset:v26];
        if ([v26 isPhoto])
        {
          LODWORD(v117) = v117 + 1;
        }

        else
        {
          HIDWORD(v117) += [v26 isVideo];
        }

        v28 = [v26 inferredTimeZoneOffset];
        v29 = [v26 location];
        [v29 coordinate];
        v31 = v30;
        v33 = v32;

        v149.latitude = v31;
        v149.longitude = v33;
        if (CLLocationCoordinate2DIsValid(v149))
        {
          v34 = v31 != 0.0;
          if (v33 != 0.0)
          {
            v34 = 1;
          }

          if (v34 && (v31 != 40.0 || v33 != -100.0))
          {
            v36 = [MEMORY[0x1E696AD98] numberWithInt:v28];
            [v111 addObject:v36];
          }
        }

        v37 = [MEMORY[0x1E696AD98] numberWithInt:v28];
        [v19 addObject:v37];

        [v26 pl_coordinate];
        if ([PLLocationUtils canUseCoordinate:?])
        {
          v38 = MEMORY[0x1E696AD98];
          [v26 gpsHorizontalAccuracy];
          v39 = [v38 numberWithDouble:?];
          [v112 addObject:v39];
        }

        v23 |= v27;
      }

      v22 = [obj countByEnumeratingWithState:&v128 objects:v146 count:16];
    }

    while (v22);
    v20 = v111;
    v12 = v108;
  }

  else
  {
    v23 = 0;
    v117 = 0;
  }

  [v112 sortUsingSelector:sel_compare_];
  v42 = [v112 count];
  if (v42)
  {
    v43 = [v112 objectAtIndexedSubscript:v42 >> 1];
    [v43 doubleValue];
    v45 = v44;
  }

  else
  {
    v45 = -1.0;
  }

  v46 = v19;
  v47 = v46;
  if ([v20 count])
  {
    v47 = v20;
  }

  v103 = v46;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v48 = v47;
  v49 = [v48 countByEnumeratingWithState:&v124 objects:v145 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = 0;
    v116 = 0;
    v52 = *v125;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v125 != v52)
        {
          objc_enumerationMutation(v48);
        }

        v54 = *(*(&v124 + 1) + 8 * j);
        v55 = [v54 intValue];
        v56 = [v48 countForObject:v54];
        if (v56 > v51)
        {
          goto LABEL_37;
        }

        if (v56 == v51)
        {
          if (v55 >= 0)
          {
            v57 = v55;
          }

          else
          {
            v57 = -v55;
          }

          v58 = v116;
          if (v116 < 0)
          {
            v58 = -v116;
          }

          if (v57 < v58)
          {
LABEL_37:
            v51 = v56;
            v116 = v55;
          }
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v124 objects:v145 count:16];
    }

    while (v50);
  }

  else
  {
    v116 = 0;
  }

  v59 = [v11 startDate];
  v102 = [v11 endDate];
  v114 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v59 endDate:v102];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v60 = v12;
  v61 = [v60 countByEnumeratingWithState:&v120 objects:v144 count:16];
  if (v61)
  {
    v62 = v61;
    v101 = v59;
    v63 = 0;
    v115 = 0;
    v64 = *v121;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v121 != v64)
        {
          objc_enumerationMutation(v60);
        }

        v66 = *(*(&v120 + 1) + 8 * k);
        if (v118)
        {
          v67 = [*(*(&v120 + 1) + 8 * k) objectID];
          v68 = [v118 containsObject:v67];

          if (v68)
          {
            continue;
          }
        }

        v69 = [v66 dateInterval];
        v70 = [v114 intersectionWithDateInterval:v69];

        [v70 duration];
        v72 = v71;
        [v63 duration];
        if (v63)
        {
          v74 = 1;
        }

        else
        {
          v74 = v70 == 0;
        }

        if (!v74 || v72 > v73)
        {
          v76 = v66;

          v77 = v70;
          v63 = v77;
          v115 = v76;
        }
      }

      v62 = [v60 countByEnumeratingWithState:&v120 objects:v144 count:16];
    }

    while (v62);

    if (v115)
    {
      v78 = [v115 objectID];
      v119 = 0;
      v79 = [v107 momentWithUniqueID:v78 error:&v119];
      v59 = v101;
      v100 = v119;
      if (v100)
      {
        v80 = PLBackendGetLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v133 = v78;
          v134 = 2112;
          v135 = v100;
          _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Error fetching moment with object ID %@. %@", buf, 0x16u);
        }
      }

      if (!v109)
      {
        v81 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v81 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SS"];
        [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
        v82 = v78;
        v84 = v83 = v79;
        v109 = v81;
        [v81 setTimeZone:v84];

        v79 = v83;
        v78 = v82;
      }

      v85 = PLBackendGetLog();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        v94 = [v79 uuid];
        v97 = [v79 startDate];
        v99 = [v109 stringFromDate:v97];
        v96 = [v79 endDate];
        v93 = [v109 stringFromDate:v96];
        v95 = [v110 startDate];
        v86 = [v109 stringFromDate:v95];
        [v79 endDate];
        v87 = v98 = v79;
        v88 = [v109 stringFromDate:v87];
        *buf = 138413570;
        v133 = v78;
        v134 = 2112;
        v135 = v94;
        v136 = 2112;
        v137 = v99;
        v138 = 2112;
        v139 = v93;
        v140 = 2112;
        v141 = v86;
        v142 = 2112;
        v143 = v88;
        v89 = v88;
        _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_DEBUG, "[MomentsGeneration] Found existing moment with OID %@, UID %@, old [%@ - %@], new [%@ - %@]", buf, 0x3Eu);

        v79 = v98;
      }

      v13 = v107;
      v40 = v108;
      if (v79)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v115 = 0;
      v13 = v107;
      v40 = v108;
      v59 = v101;
    }
  }

  else
  {

    v63 = 0;
    v115 = 0;
    v13 = v107;
    v40 = v108;
  }

  v79 = [v13 insertNewMoment];
LABEL_81:
  [v79 setStartDate:v59];
  [v79 setEndDate:v102];
  [v79 setTimeZoneOffset:v116];
  [v79 setRepresentativeDate:v59];
  [MEMORY[0x1E695DFD8] setWithArray:obj];
  v91 = v90 = v79;
  [v90 setAssets:v91];

  [v90 setCachedCount:v104];
  [v90 setCachedPhotosCount:v117];
  [v90 setCachedVideosCount:HIDWORD(v117)];
  [v90 setApproximateLocation:v105];
  [v90 setProcessedLocation:0];
  [v90 setGpsHorizontalAccuracy:v45];
  v41 = v90;
  [v90 setOriginatorState:v23];

  v17 = v105;
  v14 = v118;
  v15 = v109;
  v11 = v110;
  v16 = v106;
LABEL_82:

  return v41;
}

@end