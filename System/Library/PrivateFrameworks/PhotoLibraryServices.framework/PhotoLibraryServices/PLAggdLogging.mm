@interface PLAggdLogging
+ (id)_analyticsDescriptionForAssetCount:(int64_t)count;
+ (id)_analyticsDescriptionForMediaAge:(double)age;
+ (id)_fetchPersistentHistoryStatsWithLibraryPathManager:(id)manager;
+ (void)_addDistributionStatisticsOfValues:(id)values withPrefix:(id)prefix toDictionary:(id)dictionary formatter:(id)formatter;
+ (void)_addFileSystemStatsToLibrarySummaryEvent:(id)event withLibraryPathManager:(id)manager;
+ (void)_addLibrarySummaryDataToCollectionIfPresent:(id)present fromCPLEventData:(id)data forKey:(id)key;
+ (void)_addOrphanedSceneClassificationsCountToLibrarySummaryEvent:(id)event withContext:(id)context;
+ (void)_addPersistentHistoryStatsToLibrarySummaryEvent:(id)event withLibraryPathManager:(id)manager;
+ (void)_addPrefix:(id)prefix toKeysInDictionary:(id)dictionary inPrefixedDictionary:(id)prefixedDictionary;
+ (void)_configureEnumeratorForLibrarySummaryLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a libraryServicesManager:(id)manager;
+ (void)_configureEnumeratorForSyndicationLibrarySummaryLogging:(id)logging dataForCA:(id)a;
+ (void)configureEnumeratorForHyperionLocalResourcesLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a dataForCK:(id)k;
+ (void)configureEnumeratorForLibrarySizeLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a dataForCK:(id)k;
+ (void)configureEnumeratorForLibrarySummaryForLibraryEnumerator:(id)enumerator withSyndicationLibraryEnumerator:(id)libraryEnumerator cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a libraryServicesManager:(id)manager;
+ (void)performCMMSummaryLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled;
+ (void)performLibraryStatisticsLoggingForLibrary:(id)library completionHandler:(id)handler;
+ (void)performMomentsStatisticsLogging:(id)logging;
+ (void)performSlideshowProjectStatisticsLogging:(id)logging;
@end

@implementation PLAggdLogging

+ (void)_addOrphanedSceneClassificationsCountToLibrarySummaryEvent:(id)event withContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__PLAggdLogging__addOrphanedSceneClassificationsCountToLibrarySummaryEvent_withContext___block_invoke;
  v9[3] = &unk_1E7578848;
  v10 = contextCopy;
  v11 = eventCopy;
  v7 = eventCopy;
  v8 = contextCopy;
  [v8 performBlockAndWait:v9];
}

void __88__PLAggdLogging__addOrphanedSceneClassificationsCountToLibrarySummaryEvent_withContext___block_invoke(uint64_t a1)
{
  v3 = [[PLGlobalValues alloc] initWithManagedObjectContext:*(a1 + 32)];
  v2 = [(PLGlobalValues *)v3 orphanedSceneClassificationsCount];
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKeyedSubscript:*MEMORY[0x1E69BF8F8]];
  }
}

+ (void)_addFileSystemStatsToLibrarySummaryEvent:(id)event withLibraryPathManager:(id)manager
{
  v13[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = MEMORY[0x1E69BF228];
  libraryURL = [manager libraryURL];
  v8 = [v6 capabilitiesWithURL:libraryURL];

  if (v8)
  {
    v12[0] = *MEMORY[0x1E69BF830];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isInternalVolume")}];
    v13[0] = v9;
    v12[1] = *MEMORY[0x1E69BF838];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isNetworkVolume")}];
    v13[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

    [eventCopy addEntriesFromDictionary:v11];
  }
}

+ (id)_fetchPersistentHistoryStatsWithLibraryPathManager:(id)manager
{
  v15 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  photosDatabasePath = [managerCopy photosDatabasePath];
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = photosDatabasePath;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Gathering persistent history statistics from databasePath: %@", &v13, 0xCu);
  }

  v6 = MEMORY[0x1E69BF2D8];
  capabilities = [managerCopy capabilities];

  v8 = [v6 openDatabaseAtPath:photosDatabasePath capabilities:capabilities];

  if (v8)
  {
    v9 = [PLPersistentHistoryStats statsFromDatabase:v8];
    if (!v9)
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = photosDatabasePath;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to retrieve history stats from database at path: %@", &v13, 0xCu);
      }
    }

    [v8 close];
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = photosDatabasePath;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to open database at path: %@", &v13, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (void)_addPersistentHistoryStatsToLibrarySummaryEvent:(id)event withLibraryPathManager:(id)manager
{
  v17[4] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = [self _fetchPersistentHistoryStatsWithLibraryPathManager:manager];
  v8 = v7;
  if (v7)
  {
    v16[0] = *MEMORY[0x1E69BF920];
    v9 = MEMORY[0x1E696AD98];
    [v7 persistentHistoryPageCountPercent];
    v10 = [v9 numberWithDouble:?];
    v17[0] = v10;
    v16[1] = *MEMORY[0x1E69BF918];
    v11 = MEMORY[0x1E696AD98];
    [v8 persistentHistoryPageCountPercentOfPayload];
    v12 = [v11 numberWithDouble:?];
    v17[1] = v12;
    v16[2] = *MEMORY[0x1E69BF928];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "transactionCount")}];
    v17[2] = v13;
    v16[3] = *MEMORY[0x1E69BF910];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "daysSinceEarliestTransaction")}];
    v17[3] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

    [eventCopy addEntriesFromDictionary:v15];
  }
}

+ (void)performLibraryStatisticsLoggingForLibrary:(id)library completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PLAggdLogging_performLibraryStatisticsLoggingForLibrary_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7572AF0;
  selfCopy = self;
  v8 = libraryCopy;
  v26 = v8;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (handlerCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__PLAggdLogging_performLibraryStatisticsLoggingForLibrary_completionHandler___block_invoke_2;
    v19[3] = &unk_1E7577C08;
    v11 = &v21;
    v21 = v9;
    v12 = &v20;
    v13 = v8;
    v20 = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PLAggdLogging_performLibraryStatisticsLoggingForLibrary_completionHandler___block_invoke_3;
    v17[3] = &unk_1E7576AA0;
    v18 = handlerCopy;
    v14 = v10;
    [v13 performBlock:v19 completionHandler:v17];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__PLAggdLogging_performLibraryStatisticsLoggingForLibrary_completionHandler___block_invoke_333;
    v22[3] = &unk_1E7577C08;
    v11 = &v24;
    v24 = v9;
    v12 = &v23;
    v15 = v8;
    v23 = v15;
    v16 = v10;
    [v15 performBlock:v22];
  }
}

void __77__PLAggdLogging_performLibraryStatisticsLoggingForLibrary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 managedObjectContext];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Library statistics logging: starting...", v5, 2u);
  }

  [*(a1 + 40) performMomentsStatisticsLogging:v3];
  [*(a1 + 40) performSlideshowProjectStatisticsLogging:v3];
  [*(a1 + 40) performCMMSummaryLogging:v3 cloudPhotoLibraryEnabled:{objc_msgSend(*(a1 + 32), "isCloudPhotoLibraryEnabled")}];
}

+ (void)performCMMSummaryLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v70 = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLMomentShare entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setResultType:2];
  [v9 setPropertiesToFetch:&unk_1F0FBFF88];
  v60 = 0;
  v10 = [loggingCopy executeFetchRequest:v9 error:&v60];
  v11 = v60;
  if (v11 || !v10)
  {
    v34 = PLBackendGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = +[PLMomentShare entityName];
      *buf = 138412802;
      v62 = v35;
      v63 = 2112;
      v64 = v36;
      v65 = 2112;
      v66 = v11;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "%@ failed to fetch counts for %@ %@", buf, 0x20u);
    }
  }

  else
  {
    v47 = v10;
    v48 = v9;
    v49 = loggingCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v13)
    {
      v14 = v13;
      v52 = 0;
      v53 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = *v57;
      v51 = !enabledCopy;
      v50 = enabledCopy;
      obj = v12;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          v20 = v16;
          if (*v57 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v56 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = [v21 objectForKeyedSubscript:@"assetCount"];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          v25 = [v21 objectForKeyedSubscript:@"status"];
          unsignedIntegerValue2 = [v25 unsignedIntegerValue];

          if (unsignedIntegerValue2 == 1)
          {
            ++v17;
            v15 += unsignedIntegerValue;
            v16 = v20;
          }

          else
          {
            v16 = v20;
            if ((unsignedIntegerValue2 & 0xFFFE) == 2)
            {
              v16 = v20 + v51;
              v53 += v50;
              v52 += unsignedIntegerValue;
            }
          }

          objc_autoreleasePoolPop(v22);
        }

        v14 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v14);

      v27 = v17 != 0;
      v28 = v53 != 0;
      v29 = v16 != 0;
      v30 = v15 / v17;
      v31 = v15 == 0;
      v32 = v53;
      if (v31)
      {
        v30 = 0;
      }

      obja = v30;
      if (v52)
      {
        v33 = v52 / (v53 + v16);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {

      obja = 0;
      v16 = 0;
      v32 = 0;
      v17 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v33 = 0;
    }

    v37 = v29;
    v38 = v28;
    v67[0] = *MEMORY[0x1E69BF530];
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    v68[0] = v34;
    v67[1] = *MEMORY[0x1E69BF520];
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
    v68[1] = v39;
    v67[2] = *MEMORY[0x1E69BF528];
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
    v68[2] = v40;
    v67[3] = *MEMORY[0x1E69BF548];
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    v68[3] = v41;
    v67[4] = *MEMORY[0x1E69BF538];
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
    v68[4] = v42;
    v67[5] = *MEMORY[0x1E69BF540];
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    v68[5] = v43;
    v67[6] = *MEMORY[0x1E69BF518];
    v44 = [MEMORY[0x1E696AD98] numberWithInteger:obja];
    v68[6] = v44;
    v67[7] = *MEMORY[0x1E69BF510];
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:v33];
    v68[7] = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:8];
    PLSendCoreAnalyticEvent();

    v9 = v48;
    loggingCopy = v49;
    v11 = 0;
    v10 = v47;
  }
}

+ (void)_configureEnumeratorForLibrarySummaryLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a libraryServicesManager:(id)manager
{
  loggingCopy = logging;
  aCopy = a;
  managerCopy = manager;
  if (!loggingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAggdLogging.m" lineNumber:811 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];

    if (aCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLAggdLogging.m" lineNumber:812 description:{@"Invalid parameter not satisfying: %@", @"dataForCA"}];

    goto LABEL_3;
  }

  if (!aCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  sourceContext = [loggingCopy sourceContext];
  pathManager = [sourceContext pathManager];
  libraryURL = [pathManager libraryURL];
  selfCopy = self;
  v16 = objc_alloc_init(PLAnalyticsLibraryCounters);
  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-7776000.0];
  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke;
  v54[3] = &unk_1E75729D8;
  v19 = v16;
  v55 = v19;
  v56 = v17;
  v57 = v18;
  v20 = v18;
  v21 = v17;
  [loggingCopy addAssetVisitor:v54];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_2;
  v52[3] = &unk_1E7572A28;
  v22 = v19;
  v53 = v22;
  [loggingCopy addFaceVisitor:v52];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_3;
  v50[3] = &unk_1E7572A50;
  v23 = v22;
  v51 = v23;
  [loggingCopy addResourceVisitor:v50];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_4;
  v48[3] = &unk_1E7572A78;
  v24 = v23;
  v49 = v24;
  [loggingCopy addAlbumVisitor:v48];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_5;
  v46[3] = &unk_1E7572AA0;
  v25 = v24;
  v47 = v25;
  [loggingCopy addPersonVisitor:v46];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_6;
  v36[3] = &unk_1E7572AC8;
  enabledCopy = enabled;
  v37 = sourceContext;
  v38 = v25;
  v39 = libraryURL;
  v40 = managerCopy;
  v41 = aCopy;
  v42 = pathManager;
  v43 = a2;
  v44 = selfCopy;
  v26 = pathManager;
  v27 = aCopy;
  v28 = managerCopy;
  v29 = libraryURL;
  v30 = v25;
  v31 = sourceContext;
  [loggingCopy addEndOfListVisitor:v36];
}

void __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  atomic_fetch_add((*(a1 + 32) + 8), 1uLL);
  v57 = v3;
  if ([v3 isInTrash])
  {
    atomic_fetch_add((*(a1 + 32) + 24), 1uLL);
  }

  if (![v57 isPhoto])
  {
    v8 = [v57 isVideo];
    v9 = *(a1 + 32);
    if (v8)
    {
      atomic_fetch_add((v9 + 48), 1uLL);
      if (![v57 hasAdjustments] || (objc_msgSend(v57, "isDefaultAdjustedSlomo") & 1) != 0)
      {
        goto LABEL_25;
      }

      v10 = (*(a1 + 32) + 152);
    }

    else
    {
      v10 = (v9 + 56);
    }

    atomic_fetch_add(v10, 1uLL);
    goto LABEL_25;
  }

  atomic_fetch_add((*(a1 + 32) + 32), 1uLL);
  if ([v57 isPhotoIris])
  {
    atomic_fetch_add((*(a1 + 32) + 40), 1uLL);
  }

  v4 = MEMORY[0x1E69C08F0];
  v5 = [v57 uniformTypeIdentifier];
  v6 = [v4 typeWithIdentifier:v5];

  if ([v57 isJPEG])
  {
    v7 = 72;
  }

  else if ([v57 isRAW])
  {
    v7 = 80;
  }

  else if ([v6 conformsToType:*MEMORY[0x1E6982E10]])
  {
    v7 = 88;
  }

  else
  {
    v11 = [v6 conformsToType:*MEMORY[0x1E6982E00]];
    v7 = 64;
    if (v11)
    {
      v7 = 88;
    }
  }

  atomic_fetch_add((*(a1 + 32) + v7), 1uLL);
  if ([v57 hasAdjustments])
  {
    v12 = [v57 depthType];
    v13 = 152;
    if (v12 == 1)
    {
      v13 = 144;
    }

    atomic_fetch_add((*(a1 + 32) + v13), 1uLL);
  }

LABEL_25:
  if ([v57 isFavorite])
  {
    atomic_fetch_add((*(a1 + 32) + 120), 1uLL);
  }

  if ([v57 kindSubtype] == 10)
  {
    atomic_fetch_add((*(a1 + 32) + 136), 1uLL);
  }

  [v57 curationScore];
  if (v14 != 0.0 && v14 < 0.5)
  {
    atomic_fetch_add((*(a1 + 32) + 128), 1uLL);
  }

  if (!atomic_load((*(a1 + 32) + 96)))
  {
    v16 = [v57 addedDate];
    IsGreaterThanOrEqual = PLDateIsGreaterThanOrEqual(v16, *(a1 + 40));

    if (IsGreaterThanOrEqual)
    {
      atomic_store(1uLL, (*(a1 + 32) + 96));
    }
  }

  v18 = [v57 addedDate];
  v19 = PLDateIsGreaterThanOrEqual(v18, *(a1 + 48));

  if (v19)
  {
    atomic_fetch_add((*(a1 + 32) + 160), 1uLL);
  }

  v20 = [v57 additionalAttributes];
  v21 = [v20 importedBy];

  v22 = v57;
  if (v21)
  {
    v23 = [v57 additionalAttributes];
    if ([v23 importedBy] == 2)
    {
    }

    else
    {
      v24 = [v57 additionalAttributes];
      v25 = [v24 importedBy];

      if (v25 != 1)
      {
LABEL_42:
        atomic_fetch_add((*(a1 + 32) + 112), 1uLL);
        v22 = v57;
        goto LABEL_43;
      }
    }

    atomic_fetch_add((*(a1 + 32) + 104), 1uLL);
    goto LABEL_42;
  }

LABEL_43:
  if ([v22 cameraProcessingAdjustmentState] && (objc_msgSend(v57, "cameraProcessingAdjustmentState") & 8) != 0)
  {
    atomic_fetch_add((*(a1 + 32) + 168), 1uLL);
  }

  v26 = [v57 additionalAttributes];
  v27 = [v26 syndicationIdentifier];
  if (!v27)
  {

    goto LABEL_57;
  }

  v28 = v27;
  [MEMORY[0x1E69BF328] maskForUserLibrary];
  [v57 savedAssetType];
  v29 = PLValidatedSavedAssetTypeApplies();

  if (!v29)
  {
    goto LABEL_57;
  }

  v30 = [v57 additionalAttributes];
  v31 = [v30 importedByBundleIdentifier];
  v32 = [v31 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v32)
  {
    atomic_fetch_add((*(a1 + 32) + 432), 1uLL);
    v33 = [v57 additionalAttributes];
    v34 = [v33 syndicationHistory];

    if (v34 != 2)
    {
      goto LABEL_57;
    }

    v35 = (*(a1 + 32) + 448);
  }

  else
  {
    v36 = [v57 additionalAttributes];
    v37 = [v36 importedByBundleIdentifier];
    if ([v37 isEqualToString:*MEMORY[0x1E69BFF18]])
    {
    }

    else
    {
      v38 = [v57 additionalAttributes];
      v39 = [v38 importedByBundleIdentifier];
      v40 = [v39 isEqualToString:*MEMORY[0x1E69BFF40]];

      if (!v40)
      {
        goto LABEL_57;
      }
    }

    v35 = (*(a1 + 32) + 440);
  }

  atomic_fetch_add(v35, 1uLL);
LABEL_57:
  v41 = [v57 detectedFaces];
  v42 = [v41 count];

  if (v42)
  {
    atomic_fetch_add((*(a1 + 32) + 176), 1uLL);
  }

  v43 = [v57 mediaAnalysisAttributes];
  v44 = [v43 characterRecognitionAttributes];

  if (!v44)
  {
    goto LABEL_64;
  }

  v45 = [v44 characterRecognitionData];
  if (!v45)
  {
    v46 = [v44 machineReadableCodeData];

    if (v46)
    {
      goto LABEL_63;
    }

LABEL_64:
    if (!v42)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_63:
  atomic_fetch_add((*(a1 + 32) + 184), 1uLL);
LABEL_65:
  atomic_fetch_add((*(a1 + 32) + 192), 1uLL);
LABEL_66:
  if ([v57 duplicateAssetVisibilityState] == 100)
  {
    atomic_fetch_add((*(a1 + 32) + 240), 1uLL);
  }

  v47 = [v57 hasLibraryScope];
  v48 = *(a1 + 32);
  if (!v47)
  {
    v50 = (v48 + 232);
    goto LABEL_79;
  }

  atomic_fetch_add((v48 + 248), 1uLL);
  v49 = [v57 libraryScopeShareState];
  if ((v49 & 0x200000) != 0)
  {
    atomic_fetch_add((*(a1 + 32) + 256), 1uLL);
  }

  if ((v49 & 0x10) != 0 || (v49 & 0xE) == 2)
  {
    atomic_fetch_add((*(a1 + 32) + 280), 1uLL);
  }

  if ((v49 & 0x1C) == 4 || (v49 & 0x18) == 8)
  {
    atomic_fetch_add((*(a1 + 32) + 264), 1uLL);
    if (([v57 importedBy] - 1) <= 1u)
    {
      v50 = (*(a1 + 32) + 272);
LABEL_79:
      atomic_fetch_add(v50, 1uLL);
    }
  }

  v51 = [v57 extendedAttributes];
  v52 = [v51 longitude];
  if (v52)
  {
    v53 = v52;
    v54 = [v57 extendedAttributes];
    v55 = [v54 latitude];

    if (v55)
    {
      atomic_fetch_add((*(a1 + 32) + 288), 1uLL);
    }
  }

  else
  {
  }

  v56 = [v57 savedAssetType];
  if (v56 == [MEMORY[0x1E69BF328] savedAssetTypeForFinderSyncedAsset])
  {
    atomic_fetch_add((*(a1 + 32) + 296), 1uLL);
  }

  if ([v57 spatialType])
  {
    atomic_fetch_add((*(a1 + 32) + 304), 1uLL);
  }

  if ([v57 spatialType] == 2)
  {
    atomic_fetch_add((*(a1 + 32) + 312), 1uLL);
  }

  if ([v57 currentSleetCast])
  {
    atomic_fetch_add((*(a1 + 32) + 320), 1uLL);
  }

  if ([v57 currentSleetCast] >= 2)
  {
    atomic_fetch_add((*(a1 + 32) + 328), 1uLL);
  }
}

uint64_t __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_2(uint64_t a1, void *a2)
{
  atomic_fetch_add((*(a1 + 32) + 208), 1uLL);
  result = [a2 isTorsoOnly];
  if (result)
  {
    atomic_fetch_add((*(a1 + 32) + 200), 1uLL);
  }

  return result;
}

void __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 kind];
  v4 = [v3 integerValue];

  if (v4 == 2)
  {
    v5 = [v7 importedByBundleIdentifier];
    if ([v5 hasPrefix:@"com.apple."])
    {
      v6 = 336;
    }

    else
    {
      if (!v5)
      {
LABEL_9:

        goto LABEL_10;
      }

      v6 = 344;
    }

    atomic_fetch_add((*(a1 + 32) + v6), 1uLL);
    goto LABEL_9;
  }

  if (v4 == 1510)
  {
    atomic_fetch_add((*(a1 + 32) + 224), 1uLL);
    atomic_fetch_add((*(a1 + 32) + 216), [v7 approximateCount]);
  }

LABEL_10:
}

void __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  atomic_fetch_add((*(a1 + 32) + 352), 1uLL);
  v18 = v3;
  if ([v3 detectionType] >= 2)
  {
    atomic_fetch_add((*(a1 + 32) + 360), 1uLL);
  }

  v4 = [v18 verifiedType];
  if (v4 == -2)
  {
    v7 = 416;
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    v7 = 368;
LABEL_10:
    v6 = v18;
    goto LABEL_11;
  }

  v5 = v4 == 1;
  v6 = v18;
  if (v5)
  {
    v7 = 376;
LABEL_11:
    atomic_fetch_add((*(a1 + 32) + v7), 1uLL);
  }

  v8 = [v6 type];
  if (v8 == -1)
  {
    v10 = 392;
    v9 = v18;
    goto LABEL_17;
  }

  v5 = v8 == 1;
  v9 = v18;
  if (v5)
  {
    v10 = 384;
LABEL_17:
    atomic_fetch_add((*(a1 + 32) + v10), 1uLL);
  }

  v11 = [v9 fullName];
  if ([v11 length])
  {
  }

  else
  {
    v12 = [v18 displayName];
    v13 = [v12 length];

    if (!v13)
    {
      goto LABEL_22;
    }
  }

  atomic_fetch_add((*(a1 + 32) + 400), 1uLL);
LABEL_22:
  v14 = [v18 personUri];
  v15 = [v14 length];

  if (v15)
  {
    atomic_fetch_add((*(a1 + 32) + 408), 1uLL);
  }

  v16 = [v18 userFeedbacks];
  v17 = [v16 count];

  if (v17)
  {
    atomic_fetch_add((*(a1 + 32) + 424), 1uLL);
  }
}

void __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_6(uint64_t a1)
{
  v389[4] = *MEMORY[0x1E69E9840];
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  if (*(a1 + 96) == 1)
  {
    objc_opt_class();
    v2 = *(a1 + 32);
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    v5 = [v4 pl_libraryBundle];
    v6 = [PLCPLSettings settingsWithLibraryBundle:v5];

    if ([v6 isKeepOriginalsEnabled])
    {
      v7 = atomic_load((*(a1 + 40) + 32));
      v8 = atomic_load((*(a1 + 40) + 48));
      v291 = v8;
      v293 = v7;
      v9 = atomic_load((*(a1 + 40) + 24));
      v289 = v9;
      v10 = 2;
    }

    else
    {
      v289 = 0;
      v291 = 0;
      v293 = 0;
      v10 = 1;
    }

    v295 = v10;
    v377 = 0;
    v14 = PLPrimaryAppleAccountCloudStorageInfo(&v377);
    v15 = v377;
    if (v14)
    {
      v283 = [v14 availableBytes];
      v287 = [v14 totalBytes];
      v285 = [v14 iCloudPhotosBytes];
    }

    else
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%@ failed to get iCPL storage info. Error: %@", buf, 0x16u);
      }

      v285 = -1;
      v287 = -1;
      v283 = -1;
    }

    v281 = PLCPLIsExceedingPrimarySyncQuota();
  }

  else
  {
    v281 = 0;
    v285 = 0;
    v287 = 0;
    v283 = 0;
    v11 = atomic_load((*(a1 + 40) + 32));
    v293 = v11;
    v295 = 0;
    v12 = atomic_load((*(a1 + 40) + 48));
    v13 = atomic_load((*(a1 + 40) + 24));
    v289 = v13;
    v291 = v12;
  }

  if (PLIsAssetsd() && [MEMORY[0x1E69BF2A0] isSystemPhotoLibraryURL:*(a1 + 48)])
  {
    v18 = [*(a1 + 56) resourceCacheMetrics];
    v20 = v19;
    [*(a1 + 56) setResourceCacheMetrics:{0, 0}];
    v21 = *(a1 + 64);
    v388[0] = *MEMORY[0x1E69BF7D8];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
    v389[0] = v22;
    v388[1] = *MEMORY[0x1E69BF7E0];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:HIDWORD(v18)];
    v389[1] = v23;
    v388[2] = *MEMORY[0x1E69BF7E8];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
    v389[2] = v24;
    v388[3] = *MEMORY[0x1E69BF7F0];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:HIDWORD(v20)];
    v389[3] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v389 forKeys:v388 count:4];
    [v21 addEntriesFromDictionary:v26];
  }

  if (_PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*MEMORY[0x1E6959638]))
  {
    v27 = CPLMetricsFromPathManager(*(a1 + 72));
    v28 = *MEMORY[0x1E6994D30];
    v361 = [v27 countForKey:*MEMORY[0x1E6994D30]];
    v29 = *MEMORY[0x1E6994C88];
    v353 = [v27 countForKey:*MEMORY[0x1E6994C88]];
    v30 = *MEMORY[0x1E6994D38];
    v345 = [v27 countForKey:*MEMORY[0x1E6994D38]];
    v31 = *MEMORY[0x1E6994C80];
    v337 = [v27 countForKey:*MEMORY[0x1E6994C80]];
    v32 = *MEMORY[0x1E6994D18];
    v329 = [v27 countForKey:*MEMORY[0x1E6994D18]];
    v33 = *MEMORY[0x1E6994CD0];
    v321 = [v27 countForKey:*MEMORY[0x1E6994CD0]];
    v34 = *MEMORY[0x1E6994C98];
    v313 = [v27 countForKey:*MEMORY[0x1E6994C98]];
    v309 = *MEMORY[0x1E6994CE0];
    v305 = [v27 countForKey:?];
    v301 = *MEMORY[0x1E6994CD8];
    v297 = [v27 countForKey:?];
    v277 = *MEMORY[0x1E6994C90];
    v273 = [v27 countForKey:?];
    v269 = *MEMORY[0x1E6994CE8];
    v266 = [v27 countForKey:?];
    v263 = *MEMORY[0x1E6994D00];
    v260 = [v27 countForKey:?];
    v257 = *MEMORY[0x1E6994D28];
    v254 = [v27 countForKey:?];
    v251 = *MEMORY[0x1E6994CF0];
    v248 = [v27 countForKey:?];
    v245 = *MEMORY[0x1E6994D20];
    v242 = [v27 countForKey:?];
    v239 = *MEMORY[0x1E6994CC8];
    v236 = [v27 countForKey:?];
    v233 = *MEMORY[0x1E6994CB8];
    v230 = [v27 countForKey:?];
    v227 = *MEMORY[0x1E6994CC0];
    v224 = [v27 countForKey:?];
    v221 = *MEMORY[0x1E6994CA0];
    v218 = [v27 countForKey:?];
    v215 = *MEMORY[0x1E6994C78];
    v212 = [v27 countForKey:?];
    v209 = *MEMORY[0x1E6994D08];
    v206 = [v27 countForKey:?];
    v203 = *MEMORY[0x1E6994D40];
    v200 = [v27 countForKey:?];
    v197 = *MEMORY[0x1E6994CB0];
    v195 = [v27 countForKey:?];
    v193 = *MEMORY[0x1E6994CF8];
    v192 = [v27 countForKey:?];
    v191 = *MEMORY[0x1E6994D10];
    v190 = [v27 countForKey:?];
    v189 = *MEMORY[0x1E6994CA8];
    v188 = [v27 countForKey:?];
    v187 = *(a1 + 64);
    v365 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v28];
    v386[0] = v365;
    v362 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v361];
    v387[0] = v362;
    v358 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v29];
    v386[1] = v358;
    v354 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v353];
    v387[1] = v354;
    v350 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v30];
    v386[2] = v350;
    v346 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v345];
    v387[2] = v346;
    v342 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v31];
    v386[3] = v342;
    v338 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v337];
    v387[3] = v338;
    v334 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v32];
    v386[4] = v334;
    v330 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v329];
    v387[4] = v330;
    v326 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v33];
    v386[5] = v326;
    v322 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v321];
    v387[5] = v322;
    v317 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v34];
    v386[6] = v317;
    v314 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v313];
    v387[6] = v314;
    v310 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v309];
    v386[7] = v310;
    v306 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v305];
    v387[7] = v306;
    v302 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v301];
    v386[8] = v302;
    v298 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v297];
    v387[8] = v298;
    v278 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v277];
    v386[9] = v278;
    v274 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v273];
    v387[9] = v274;
    v270 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v269];
    v386[10] = v270;
    v267 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v266];
    v387[10] = v267;
    v264 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v263];
    v386[11] = v264;
    v261 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v260];
    v387[11] = v261;
    v258 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v257];
    v386[12] = v258;
    v255 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v254];
    v387[12] = v255;
    v252 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v251];
    v386[13] = v252;
    v249 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v248];
    v387[13] = v249;
    v246 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v245];
    v386[14] = v246;
    v243 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v242];
    v387[14] = v243;
    v240 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v239];
    v386[15] = v240;
    v237 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v236];
    v387[15] = v237;
    v234 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v233];
    v386[16] = v234;
    v231 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v230];
    v387[16] = v231;
    v228 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v227];
    v386[17] = v228;
    v225 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v224];
    v387[17] = v225;
    v222 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v221];
    v386[18] = v222;
    v219 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v218];
    v387[18] = v219;
    v216 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v215];
    v386[19] = v216;
    v213 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v212];
    v387[19] = v213;
    v210 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v209];
    v386[20] = v210;
    v207 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v206];
    v387[20] = v207;
    v204 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v203];
    v386[21] = v204;
    v201 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v200];
    v387[21] = v201;
    v198 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v197];
    v386[22] = v198;
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v195];
    v387[22] = v35;
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v193];
    v386[23] = v36;
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v192];
    v387[23] = v37;
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v191];
    v386[24] = v38;
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v190];
    v387[24] = v39;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLSyncSession", v189];
    v386[25] = v40;
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v188];
    v387[25] = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v387 forKeys:v386 count:26];
    [v187 addEntriesFromDictionary:v42];

    v43 = *MEMORY[0x1E6994C58];
    v44 = [v27 countForKey:*MEMORY[0x1E6994C58]];
    v45 = *MEMORY[0x1E6994C68];
    v355 = [v27 countForKey:*MEMORY[0x1E6994C68]];
    v46 = *MEMORY[0x1E6994C60];
    v347 = [v27 countForKey:*MEMORY[0x1E6994C60]];
    v47 = *MEMORY[0x1E6994C70];
    v339 = [v27 countForKey:*MEMORY[0x1E6994C70]];
    v48 = *MEMORY[0x1E6994C50];
    v331 = [v27 countForKey:*MEMORY[0x1E6994C50]];
    v49 = *MEMORY[0x1E6994C30];
    v323 = [v27 countForKey:*MEMORY[0x1E6994C30]];
    v318 = *MEMORY[0x1E6994C40];
    v315 = [v27 countForKey:?];
    v311 = *MEMORY[0x1E6994C38];
    v307 = [v27 countForKey:?];
    v303 = *MEMORY[0x1E6994C48];
    v299 = [v27 countForKey:?];
    v279 = *MEMORY[0x1E6994C28];
    v275 = [v27 countForKey:?];
    v271 = *(a1 + 64);
    v366 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v43];
    v384[0] = v366;
    v363 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v44];
    v385[0] = v363;
    v359 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v45];
    v384[1] = v359;
    v356 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v355];
    v385[1] = v356;
    v351 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v46];
    v384[2] = v351;
    v348 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v347];
    v385[2] = v348;
    v343 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v47];
    v384[3] = v343;
    v340 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v339];
    v385[3] = v340;
    v335 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v48];
    v384[4] = v335;
    v332 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v331];
    v385[4] = v332;
    v327 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v49];
    v384[5] = v327;
    v324 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v323];
    v385[5] = v324;
    v319 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v318];
    v384[6] = v319;
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v315];
    v385[6] = v50;
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v311];
    v384[7] = v51;
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v307];
    v385[7] = v52;
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v303];
    v384[8] = v53;
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v299];
    v385[8] = v54;
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"iCPLComputeSync", v279];
    v384[9] = v55;
    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v275];
    v385[9] = v56;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v385 forKeys:v384 count:10];
    [v271 addEntriesFromDictionary:v57];

    [v27 resetMetrics];
  }

  if (atomic_load((*(a1 + 40) + 104)))
  {
    v59 = atomic_load((*(a1 + 40) + 112));
    v60 = 0x1E696A000uLL;
    if (v59)
    {
      v61 = atomic_load((*(a1 + 40) + 104));
      v62 = v61 * 100.0;
      v63 = atomic_load((*(a1 + 40) + 112));
      v64 = vcvtad_u64_f64(v62 / v63);
    }

    else
    {
      v64 = 100;
    }
  }

  else
  {
    v64 = 0;
    v60 = 0x1E696A000;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v383 = 0;
  v373 = 0;
  v374 = &v373;
  v375 = 0x2020000000;
  v376 = 0;
  if (atomic_load((*(a1 + 40) + 272)))
  {
    v66 = *(a1 + 32);
    v368[0] = MEMORY[0x1E69E9820];
    v368[1] = 3221225472;
    v368[2] = __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_320;
    v368[3] = &unk_1E7578898;
    v369 = v66;
    v371 = &v373;
    v372 = buf;
    v370 = *(a1 + 40);
    [v369 performBlockAndWait:v368];
    if (*(v374 + 24) == 1)
    {
      v67 = atomic_load((*(a1 + 40) + 272));
      v68 = atomic_load((*(a1 + 40) + 264));
      if (v68 <= 4 * v67)
      {
        v69 = *(a1 + 64);
        v380 = *MEMORY[0x1E69BF9D8];
        v70 = [MEMORY[0x1E696AD98] numberWithDouble:*(*&buf[8] + 24)];
        v381 = v70;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v381 forKeys:&v380 count:1];
        [v69 addEntriesFromDictionary:v71];
      }
    }
  }

  v194 = *(a1 + 64);
  v378[0] = *MEMORY[0x1E69BF7A8];
  v72 = *(v60 + 3480);
  v73 = atomic_load((*(a1 + 40) + 8));
  v367 = [v72 numberWithUnsignedLongLong:v73];
  v379[0] = v367;
  v378[1] = *MEMORY[0x1E69BF948];
  v74 = *(v60 + 3480);
  v75 = atomic_load((*(a1 + 40) + 32));
  v364 = [v74 numberWithUnsignedLongLong:v75];
  v379[1] = v364;
  v378[2] = *MEMORY[0x1E69BF888];
  v76 = *(v60 + 3480);
  v77 = atomic_load((*(a1 + 40) + 40));
  v360 = [v76 numberWithUnsignedLongLong:v77];
  v379[2] = v360;
  v378[3] = *MEMORY[0x1E69BFA38];
  v78 = *(v60 + 3480);
  v79 = atomic_load((*(a1 + 40) + 48));
  v357 = [v78 numberWithUnsignedLongLong:v79];
  v379[3] = v357;
  v378[4] = *MEMORY[0x1E69BFA20];
  v80 = *(v60 + 3480);
  v81 = atomic_load((*(a1 + 40) + 24));
  v352 = [v80 numberWithUnsignedLongLong:v81];
  v379[4] = v352;
  v378[5] = *MEMORY[0x1E69BF878];
  v82 = *(v60 + 3480);
  v83 = atomic_load((*(a1 + 40) + 72));
  v349 = [v82 numberWithUnsignedLongLong:v83];
  v379[5] = v349;
  v378[6] = *MEMORY[0x1E69BF958];
  v84 = *(v60 + 3480);
  v85 = atomic_load((*(a1 + 40) + 80));
  v344 = [v84 numberWithUnsignedLongLong:v85];
  v379[6] = v344;
  v378[7] = *MEMORY[0x1E69BF850];
  v86 = *(v60 + 3480);
  v87 = atomic_load((*(a1 + 40) + 88));
  v341 = [v86 numberWithUnsignedLongLong:v87];
  v379[7] = v341;
  v378[8] = *MEMORY[0x1E69BF900];
  v88 = *(v60 + 3480);
  v89 = atomic_load((*(a1 + 40) + 64));
  v336 = [v88 numberWithUnsignedLongLong:v89];
  v379[8] = v336;
  v378[9] = *MEMORY[0x1E69BF908];
  v90 = *(v60 + 3480);
  v91 = atomic_load((*(a1 + 40) + 56));
  v333 = [v90 numberWithUnsignedLongLong:v91];
  v379[9] = v333;
  v378[10] = *MEMORY[0x1E69BF950];
  v92 = *(v60 + 3480);
  v93 = atomic_load((*(a1 + 40) + 144));
  v328 = [v92 numberWithUnsignedLongLong:v93];
  v379[10] = v328;
  v378[11] = *MEMORY[0x1E69BF7A0];
  v94 = *(v60 + 3480);
  v95 = atomic_load((*(a1 + 40) + 152));
  v325 = [v94 numberWithUnsignedLongLong:v95];
  v379[11] = v325;
  v378[12] = *MEMORY[0x1E69BF868];
  v96 = *(v60 + 3480);
  v97 = atomic_load((*(a1 + 40) + 96));
  v320 = [v96 numberWithUnsignedLongLong:v97];
  v379[12] = v320;
  v378[13] = *MEMORY[0x1E69BF820];
  v98 = *(v60 + 3480);
  v99 = atomic_load((*(a1 + 40) + 120));
  v316 = [v98 numberWithUnsignedLongLong:v99];
  v379[13] = v316;
  v378[14] = *MEMORY[0x1E69BF880];
  v100 = *(v60 + 3480);
  v101 = atomic_load((*(a1 + 40) + 128));
  v312 = [v100 numberWithUnsignedLongLong:v101];
  v379[14] = v312;
  v378[15] = *MEMORY[0x1E69BF9C8];
  v102 = *(v60 + 3480);
  v103 = atomic_load((*(a1 + 40) + 136));
  v308 = [v102 numberWithUnsignedLongLong:v103];
  v379[15] = v308;
  v378[16] = *MEMORY[0x1E69BF790];
  v104 = *(v60 + 3480);
  v105 = atomic_load((*(a1 + 40) + 160));
  v304 = [v104 numberWithUnsignedLongLong:v105];
  v379[16] = v304;
  v378[17] = *MEMORY[0x1E69BF860];
  v300 = [*(v60 + 3480) numberWithUnsignedInteger:v64];
  v379[17] = v300;
  v378[18] = *MEMORY[0x1E69BFA40];
  v296 = [*(v60 + 3480) numberWithInteger:v295];
  v379[18] = v296;
  v378[19] = *MEMORY[0x1E69BFA48];
  v294 = [*(v60 + 3480) numberWithInteger:v293];
  v379[19] = v294;
  v378[20] = *MEMORY[0x1E69BFA70];
  v292 = [*(v60 + 3480) numberWithInteger:v291];
  v379[20] = v292;
  v378[21] = *MEMORY[0x1E69BFA68];
  v290 = [*(v60 + 3480) numberWithInteger:v289];
  v379[21] = v290;
  v378[22] = *MEMORY[0x1E69BFA60];
  v288 = [*(v60 + 3480) numberWithLongLong:v287];
  v379[22] = v288;
  v378[23] = *MEMORY[0x1E69BFA58];
  v286 = [*(v60 + 3480) numberWithLongLong:v285];
  v379[23] = v286;
  v378[24] = *MEMORY[0x1E69BFA50];
  v284 = [*(v60 + 3480) numberWithLongLong:v283];
  v379[24] = v284;
  v378[25] = *MEMORY[0x1E69BF870];
  v282 = [*(v60 + 3480) numberWithBool:v281];
  v379[25] = v282;
  v378[26] = *MEMORY[0x1E69BF9B0];
  v106 = *(v60 + 3480);
  v107 = atomic_load((*(a1 + 40) + 168));
  v280 = [v106 numberWithUnsignedLongLong:v107];
  v379[26] = v280;
  v378[27] = *MEMORY[0x1E69BFA10];
  v108 = *(v60 + 3480);
  v109 = atomic_load((*(a1 + 40) + 16));
  v276 = [v108 numberWithUnsignedLongLong:v109];
  v379[27] = v276;
  v378[28] = *MEMORY[0x1E69BF9C0];
  v110 = *(v60 + 3480);
  v111 = atomic_load((*(a1 + 40) + 440));
  v272 = [v110 numberWithUnsignedLongLong:v111];
  v379[28] = v272;
  v378[29] = *MEMORY[0x1E69BF9B8];
  v112 = *(v60 + 3480);
  v113 = atomic_load((*(a1 + 40) + 432));
  v268 = [v112 numberWithUnsignedLongLong:v113];
  v379[29] = v268;
  v378[30] = *MEMORY[0x1E69BF8E0];
  v114 = *(v60 + 3480);
  v115 = atomic_load((*(a1 + 40) + 448));
  v265 = [v114 numberWithUnsignedLongLong:v115];
  v379[30] = v265;
  v378[31] = *MEMORY[0x1E69BF7B0];
  v116 = *(v60 + 3480);
  v117 = atomic_load((*(a1 + 40) + 176));
  v262 = [v116 numberWithUnsignedLongLong:v117];
  v379[31] = v262;
  v378[32] = *MEMORY[0x1E69BF7B8];
  v118 = *(v60 + 3480);
  v119 = atomic_load((*(a1 + 40) + 184));
  v259 = [v118 numberWithUnsignedLongLong:v119];
  v379[32] = v259;
  v378[33] = *MEMORY[0x1E69BF7C0];
  v120 = *(v60 + 3480);
  v121 = atomic_load((*(a1 + 40) + 192));
  v256 = [v120 numberWithUnsignedLongLong:v121];
  v379[33] = v256;
  v378[34] = *MEMORY[0x1E69BF7C8];
  v122 = *(v60 + 3480);
  v123 = atomic_load((*(a1 + 40) + 200));
  v253 = [v122 numberWithUnsignedLongLong:v123];
  v379[34] = v253;
  v378[35] = *MEMORY[0x1E69BF818];
  v124 = *(v60 + 3480);
  v125 = atomic_load((*(a1 + 40) + 208));
  v250 = [v124 numberWithUnsignedLongLong:v125];
  v379[35] = v250;
  v378[36] = *MEMORY[0x1E69BF800];
  v126 = *(v60 + 3480);
  v127 = atomic_load((*(a1 + 40) + 216));
  v247 = [v126 numberWithUnsignedLongLong:v127];
  v379[36] = v247;
  v378[37] = *MEMORY[0x1E69BF808];
  v128 = *(v60 + 3480);
  v129 = atomic_load((*(a1 + 40) + 224));
  v244 = [v128 numberWithUnsignedLongLong:v129];
  v379[37] = v244;
  v378[38] = *MEMORY[0x1E69BF810];
  v130 = *(v60 + 3480);
  v131 = atomic_load((*(a1 + 40) + 240));
  v241 = [v130 numberWithUnsignedLongLong:v131];
  v379[38] = v241;
  v378[39] = *MEMORY[0x1E69BF9D0];
  v132 = *(v60 + 3480);
  v133 = atomic_load((*(a1 + 40) + 248));
  v238 = [v132 numberWithUnsignedLongLong:v133];
  v379[39] = v238;
  v378[40] = *MEMORY[0x1E69BF940];
  v134 = *(v60 + 3480);
  v135 = atomic_load((*(a1 + 40) + 232));
  v235 = [v134 numberWithUnsignedLongLong:v135];
  v379[40] = v235;
  v378[41] = *MEMORY[0x1E69BF8C0];
  v136 = *(v60 + 3480);
  v137 = atomic_load((*(a1 + 40) + 256));
  v232 = [v136 numberWithUnsignedLongLong:v137];
  v379[41] = v232;
  v378[42] = *MEMORY[0x1E69BF788];
  v138 = *(v60 + 3480);
  v139 = atomic_load((*(a1 + 40) + 264));
  v229 = [v138 numberWithUnsignedLongLong:v139];
  v379[42] = v229;
  v378[43] = *MEMORY[0x1E69BF798];
  v140 = *(v60 + 3480);
  v141 = atomic_load((*(a1 + 40) + 280));
  v226 = [v140 numberWithUnsignedLongLong:v141];
  v379[43] = v226;
  v378[44] = *MEMORY[0x1E69BF8A8];
  v142 = *(v60 + 3480);
  v143 = atomic_load((*(a1 + 40) + 288));
  v223 = [v142 numberWithUnsignedLongLong:v143];
  v379[44] = v223;
  v378[45] = *MEMORY[0x1E69BF840];
  v144 = *(v60 + 3480);
  v145 = atomic_load((*(a1 + 40) + 296));
  v220 = [v144 numberWithUnsignedLongLong:v145];
  v379[45] = v220;
  v378[46] = *MEMORY[0x1E69BF9E8];
  v146 = *(v60 + 3480);
  v147 = atomic_load((*(a1 + 40) + 304));
  v217 = [v146 numberWithUnsignedLongLong:v147];
  v379[46] = v217;
  v378[47] = *MEMORY[0x1E69BF9E0];
  v148 = *(v60 + 3480);
  v149 = atomic_load((*(a1 + 40) + 312));
  v214 = [v148 numberWithUnsignedLongLong:v149];
  v379[47] = v214;
  v378[48] = *MEMORY[0x1E69BF9F0];
  v150 = *(v60 + 3480);
  v151 = atomic_load((*(a1 + 40) + 320));
  v211 = [v150 numberWithUnsignedLongLong:v151];
  v379[48] = v211;
  v378[49] = *MEMORY[0x1E69BF9F8];
  v152 = *(v60 + 3480);
  v153 = atomic_load((*(a1 + 40) + 328));
  v208 = [v152 numberWithUnsignedLongLong:v153];
  v379[49] = v208;
  v378[50] = *MEMORY[0x1E69BF8B0];
  v154 = *(v60 + 3480);
  v155 = atomic_load((*(a1 + 40) + 336));
  v205 = [v154 numberWithUnsignedLongLong:v155];
  v379[50] = v205;
  v378[51] = *MEMORY[0x1E69BF8B8];
  v156 = *(v60 + 3480);
  v157 = atomic_load((*(a1 + 40) + 344));
  v202 = [v156 numberWithUnsignedLongLong:v157];
  v379[51] = v202;
  v378[52] = *MEMORY[0x1E69BF930];
  v158 = *(v60 + 3480);
  v159 = atomic_load((*(a1 + 40) + 352));
  v199 = [v158 numberWithUnsignedLongLong:v159];
  v379[52] = v199;
  v378[53] = *MEMORY[0x1E69BF938];
  v160 = *(v60 + 3480);
  v161 = atomic_load((*(a1 + 40) + 360));
  v196 = [v160 numberWithUnsignedLongLong:v161];
  v379[53] = v196;
  v378[54] = *MEMORY[0x1E69BF848];
  v162 = *(v60 + 3480);
  v163 = atomic_load((*(a1 + 40) + 368));
  v164 = [v162 numberWithUnsignedLongLong:v163];
  v379[54] = v164;
  v378[55] = *MEMORY[0x1E69BFA30];
  v165 = *(v60 + 3480);
  v166 = atomic_load((*(a1 + 40) + 376));
  v167 = [v165 numberWithUnsignedLongLong:v166];
  v379[55] = v167;
  v378[56] = *MEMORY[0x1E69BF828];
  v168 = *(v60 + 3480);
  v169 = atomic_load((*(a1 + 40) + 384));
  v170 = [v168 numberWithUnsignedLongLong:v169];
  v379[56] = v170;
  v378[57] = *MEMORY[0x1E69BF858];
  v171 = *(v60 + 3480);
  v172 = atomic_load((*(a1 + 40) + 392));
  v173 = [v171 numberWithUnsignedLongLong:v172];
  v379[57] = v173;
  v378[58] = *MEMORY[0x1E69BF8D8];
  v174 = *(v60 + 3480);
  v175 = atomic_load((*(a1 + 40) + 400));
  v176 = [v174 numberWithUnsignedLongLong:v175];
  v379[58] = v176;
  v378[59] = *MEMORY[0x1E69BF7F8];
  v177 = *(v60 + 3480);
  v178 = atomic_load((*(a1 + 40) + 408));
  v179 = [v177 numberWithUnsignedLongLong:v178];
  v379[59] = v179;
  v378[60] = *MEMORY[0x1E69BFA08];
  v180 = *(v60 + 3480);
  v181 = atomic_load((*(a1 + 40) + 416));
  v182 = [v180 numberWithUnsignedLongLong:v181];
  v379[60] = v182;
  v378[61] = *MEMORY[0x1E69BFA28];
  v183 = *(v60 + 3480);
  v184 = atomic_load((*(a1 + 40) + 424));
  v185 = [v183 numberWithUnsignedLongLong:v184];
  v379[61] = v185;
  v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v379 forKeys:v378 count:62];
  [v194 addEntriesFromDictionary:v186];

  [*(a1 + 88) _addPersistentHistoryStatsToLibrarySummaryEvent:*(a1 + 64) withLibraryPathManager:*(a1 + 72)];
  [*(a1 + 88) _addFileSystemStatsToLibrarySummaryEvent:*(a1 + 64) withLibraryPathManager:*(a1 + 72)];
  [*(a1 + 88) _addOrphanedSceneClassificationsCountToLibrarySummaryEvent:*(a1 + 64) withContext:*(a1 + 32)];
  _Block_object_dispose(&v373, 8);
  _Block_object_dispose(buf, 8);
}

void __120__PLAggdLogging__configureEnumeratorForLibrarySummaryLogging_cloudPhotoLibraryEnabled_dataForCA_libraryServicesManager___block_invoke_320(void *a1)
{
  v2 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:a1[4]];
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = 1;
    v5 = v2;
    v3 = [v2 countOfAssetsAddedByCameraSmartSharing];
    v2 = v5;
    v4 = atomic_load((a1[5] + 272));
    *(*(a1[7] + 8) + 24) = v3 / v4;
  }
}

+ (void)_configureEnumeratorForSyndicationLibrarySummaryLogging:(id)logging dataForCA:(id)a
{
  loggingCopy = logging;
  aCopy = a;
  v9 = aCopy;
  if (!loggingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAggdLogging.m" lineNumber:720 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLAggdLogging.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"dataForCA"}];

    goto LABEL_3;
  }

  if (!aCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = objc_alloc_init(PLAnalyticsLibraryCounters);
  v11 = objc_alloc_init(PLAnalyticsSyndicationLibraryCounters);
  v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-7776000.0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __83__PLAggdLogging__configureEnumeratorForSyndicationLibrarySummaryLogging_dataForCA___block_invoke;
  v28[3] = &unk_1E75729D8;
  v13 = v10;
  v29 = v13;
  v30 = v12;
  v14 = v11;
  v31 = v14;
  v15 = v12;
  [loggingCopy addAssetVisitor:v28];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __83__PLAggdLogging__configureEnumeratorForSyndicationLibrarySummaryLogging_dataForCA___block_invoke_2;
  v26[3] = &unk_1E7572A00;
  v16 = v14;
  v27 = v16;
  [loggingCopy addConversationVisitor:v26];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__PLAggdLogging__configureEnumeratorForSyndicationLibrarySummaryLogging_dataForCA___block_invoke_3;
  v22[3] = &unk_1E75761B8;
  v23 = v16;
  v24 = v9;
  v25 = v13;
  v17 = v13;
  v18 = v9;
  v19 = v16;
  [loggingCopy addEndOfListVisitor:v22];
}

void __83__PLAggdLogging__configureEnumeratorForSyndicationLibrarySummaryLogging_dataForCA___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  atomic_fetch_add((*(a1 + 32) + 8), 1uLL);
  if ([v18 isPhoto])
  {
    atomic_fetch_add((*(a1 + 32) + 32), 1uLL);
    if ([v18 isPhotoIris])
    {
      v3 = 40;
LABEL_6:
      atomic_fetch_add((*(a1 + 32) + v3), 1uLL);
    }
  }

  else if ([v18 isVideo])
  {
    v3 = 48;
    goto LABEL_6;
  }

  if (!atomic_load((*(a1 + 32) + 96)))
  {
    v5 = [v18 addedDate];
    IsGreaterThanOrEqual = PLDateIsGreaterThanOrEqual(v5, *(a1 + 40));

    if (IsGreaterThanOrEqual)
    {
      atomic_store(1uLL, (*(a1 + 32) + 96));
    }
  }

  v7 = [v18 savedAssetType];
  v8 = [MEMORY[0x1E69BF328] savedAssetTypeForPromoteToGuestAsset];
  v9 = 32;
  if (v7 == v8)
  {
    v9 = 24;
  }

  atomic_fetch_add((*(a1 + 48) + v9), 1uLL);
  if (([v18 syndicationState] & 2) != 0)
  {
    atomic_fetch_add((*(a1 + 48) + 48), 1uLL);
  }

  v10 = [v18 conversation];

  v11 = 8;
  if (!v10)
  {
    v11 = 16;
  }

  atomic_fetch_add((*(a1 + 48) + v11), 1uLL);
  v12 = [v18 additionalAttributes];
  v13 = [v12 importedByBundleIdentifier];

  if ([v13 isEqualToString:*MEMORY[0x1E69BFF00]])
  {
    v14 = 56;
LABEL_20:
    v15 = v18;
LABEL_21:
    atomic_fetch_add((*(a1 + 48) + v14), 1uLL);
    goto LABEL_22;
  }

  if ([v13 isEqualToString:*MEMORY[0x1E69BFF20]])
  {
    v14 = 64;
    goto LABEL_20;
  }

  v15 = v18;
  if (v13)
  {
    v16 = PLSyndicationAllEquivalentFileProviderLocalAndCloudBundleIDs();
    v17 = [v16 containsObject:v13];

    v15 = v18;
    if (v17)
    {
      v14 = 72;
      goto LABEL_21;
    }
  }

LABEL_22:
  if ([v15 spatialType])
  {
    atomic_fetch_add((*(a1 + 32) + 304), 1uLL);
  }

  if ([v18 spatialType] == 2)
  {
    atomic_fetch_add((*(a1 + 32) + 312), 1uLL);
  }
}

void __83__PLAggdLogging__configureEnumeratorForSyndicationLibrarySummaryLogging_dataForCA___block_invoke_3(void *a1)
{
  v56[15] = *MEMORY[0x1E69E9840];
  if (atomic_load((a1[4] + 40)))
  {
    v3 = a1[5];
    v4 = atomic_load((a1[4] + 8));
    v5 = v4;
    v6 = atomic_load((a1[4] + 40));
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5 / v6];
    [v3 setObject:v7 forKey:*MEMORY[0x1E69BFC40]];
  }

  v55[0] = *MEMORY[0x1E69BFC30];
  v8 = MEMORY[0x1E696AD98];
  v50 = a1[5];
  v9 = atomic_load((a1[6] + 8));
  v54 = [v8 numberWithUnsignedLongLong:v9];
  v56[0] = v54;
  v55[1] = *MEMORY[0x1E69BFC88];
  v10 = MEMORY[0x1E696AD98];
  v11 = atomic_load((a1[6] + 32));
  v53 = [v10 numberWithUnsignedLongLong:v11];
  v56[1] = v53;
  v55[2] = *MEMORY[0x1E69BFC68];
  v12 = MEMORY[0x1E696AD98];
  v13 = atomic_load((a1[6] + 40));
  v52 = [v12 numberWithUnsignedLongLong:v13];
  v56[2] = v52;
  v55[3] = *MEMORY[0x1E69BFCA8];
  v14 = MEMORY[0x1E696AD98];
  v15 = atomic_load((a1[6] + 48));
  v51 = [v14 numberWithUnsignedLongLong:v15];
  v56[3] = v51;
  v55[4] = *MEMORY[0x1E69BFC60];
  v16 = MEMORY[0x1E696AD98];
  v17 = atomic_load((a1[6] + 96));
  v49 = [v16 numberWithUnsignedLongLong:v17];
  v56[4] = v49;
  v55[5] = *MEMORY[0x1E69BFCA0];
  v18 = MEMORY[0x1E696AD98];
  v19 = atomic_load((a1[6] + 304));
  v48 = [v18 numberWithUnsignedLongLong:v19];
  v56[5] = v48;
  v55[6] = *MEMORY[0x1E69BFC98];
  v20 = MEMORY[0x1E696AD98];
  v21 = atomic_load((a1[6] + 312));
  v22 = [v20 numberWithUnsignedLongLong:v21];
  v56[6] = v22;
  v55[7] = *MEMORY[0x1E69BFC58];
  v23 = MEMORY[0x1E696AD98];
  v24 = atomic_load((a1[4] + 24));
  v25 = [v23 numberWithUnsignedLongLong:v24];
  v56[7] = v25;
  v55[8] = *MEMORY[0x1E69BFC78];
  v26 = MEMORY[0x1E696AD98];
  v27 = atomic_load((a1[4] + 32));
  v28 = [v26 numberWithUnsignedLongLong:v27];
  v56[8] = v28;
  v55[9] = *MEMORY[0x1E69BFC90];
  v29 = MEMORY[0x1E696AD98];
  v30 = atomic_load((a1[4] + 48));
  v31 = [v29 numberWithUnsignedLongLong:v30];
  v56[9] = v31;
  v55[10] = *MEMORY[0x1E69BFC48];
  v32 = MEMORY[0x1E696AD98];
  v33 = atomic_load((a1[4] + 40));
  v34 = [v32 numberWithUnsignedLongLong:v33];
  v56[10] = v34;
  v55[11] = *MEMORY[0x1E69BFC38];
  v35 = MEMORY[0x1E696AD98];
  v36 = atomic_load((a1[4] + 16));
  v37 = [v35 numberWithUnsignedLongLong:v36];
  v56[11] = v37;
  v55[12] = *MEMORY[0x1E69BFC70];
  v38 = MEMORY[0x1E696AD98];
  v39 = atomic_load((a1[4] + 56));
  v40 = [v38 numberWithUnsignedLongLong:v39];
  v56[12] = v40;
  v55[13] = *MEMORY[0x1E69BFC80];
  v41 = MEMORY[0x1E696AD98];
  v42 = atomic_load((a1[4] + 64));
  v43 = [v41 numberWithUnsignedLongLong:v42];
  v56[13] = v43;
  v55[14] = *MEMORY[0x1E69BFC50];
  v44 = MEMORY[0x1E696AD98];
  v45 = atomic_load((a1[4] + 72));
  v46 = [v44 numberWithUnsignedLongLong:v45];
  v56[14] = v46;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:15];
  [v50 addEntriesFromDictionary:v47];
}

+ (void)configureEnumeratorForLibrarySummaryForLibraryEnumerator:(id)enumerator withSyndicationLibraryEnumerator:(id)libraryEnumerator cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a libraryServicesManager:(id)manager
{
  enabledCopy = enabled;
  libraryEnumeratorCopy = libraryEnumerator;
  aCopy = a;
  [PLAggdLogging _configureEnumeratorForLibrarySummaryLogging:enumerator cloudPhotoLibraryEnabled:enabledCopy dataForCA:aCopy libraryServicesManager:manager];
  if (libraryEnumeratorCopy)
  {
    [PLAggdLogging _configureEnumeratorForSyndicationLibrarySummaryLogging:libraryEnumeratorCopy dataForCA:aCopy];
  }
}

+ (void)configureEnumeratorForHyperionLocalResourcesLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a dataForCK:(id)k
{
  loggingCopy = logging;
  aCopy = a;
  kCopy = k;
  if (!loggingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAggdLogging.m" lineNumber:393 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];
  }

  v14 = objc_alloc_init(PLAnalyticsResourceCounters);
  if (enabled || MEMORY[0x19EAEE520]())
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __114__PLAggdLogging_configureEnumeratorForHyperionLocalResourcesLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke;
    v31[3] = &unk_1E7572960;
    v15 = v14;
    v32 = v15;
    v33 = &unk_1F0FBFF10;
    v34 = &unk_1F0FBFF28;
    v35 = &unk_1F0FBFF58;
    v36 = &unk_1F0FBFF40;
    [loggingCopy addAssetVisitor:v31];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __114__PLAggdLogging_configureEnumeratorForHyperionLocalResourcesLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke_2;
    v29[3] = &unk_1E7572988;
    v30 = v15;
    [loggingCopy addResourceVisitor:v29];
  }

  sourceContext = [loggingCopy sourceContext];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __114__PLAggdLogging_configureEnumeratorForHyperionLocalResourcesLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke_3;
  v22[3] = &unk_1E75729B0;
  v23 = v14;
  v24 = kCopy;
  enabledCopy = enabled;
  v25 = aCopy;
  v26 = sourceContext;
  selfCopy = self;
  v17 = sourceContext;
  v18 = aCopy;
  v19 = kCopy;
  v20 = v14;
  [loggingCopy addEndOfListVisitor:v22];
}

void __114__PLAggdLogging_configureEnumeratorForHyperionLocalResourcesLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke(void *a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 kind];
  v5 = [v3 kind];
  v6 = [v3 isDefaultAdjustedSlomo];
  if ([v3 hasAdjustments])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if ([v3 supportsCloudUpload])
  {
    v8 = [v3 hasLibraryScope];
    v9 = a1[4];
    if (v8)
    {
      atomic_fetch_add((v9 + 176), 1uLL);
      v10 = [v3 libraryScopeShareState];
      if ((v10 & 0x200000) != 0)
      {
        atomic_fetch_add((a1[4] + 184), 1uLL);
      }

      if ((v10 & 0x10) != 0 || (v10 & 0xE) == 2)
      {
        atomic_fetch_add((a1[4] + 192), 1uLL);
      }

      if ((v10 & 0x1C) != 4 && (v10 & 0x18) != 8)
      {
LABEL_16:
        atomic_fetch_add((a1[4] + 24), 1uLL);
        if (v4)
        {
          v12 = v5 == 1;
        }

        else
        {
          v12 = 1;
        }

        v13 = v12;
        v52 = v13;
        if (v12)
        {
          v14 = 40;
          if (!v4)
          {
            v14 = 32;
          }

          atomic_fetch_add((a1[4] + v14), 1uLL);
        }

        v53 = v4;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v15 = [v3 modernResources];
        v16 = [v15 countByEnumeratingWithState:&v63 objects:v69 count:16];
        v54 = a1;
        if (v16)
        {
          v17 = v16;
          v18 = *v64;
LABEL_29:
          v19 = 0;
          while (1)
          {
            if (*v64 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v63 + 1) + 8 * v19);
            if ([v20 isLocallyAvailable])
            {
              if ([v3 hasAdjustments])
              {
                if (v6)
                {
                  if (![v20 version])
                  {
                    v21 = a1[5];
                    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "cplType")}];
                    LOBYTE(v21) = [v21 containsObject:v22];

                    a1 = v54;
                    if (v21)
                    {
LABEL_45:
                      v29 = 1;
                      goto LABEL_46;
                    }
                  }
                }

                if ([v20 version] != 2)
                {
                  goto LABEL_42;
                }

                v23 = a1[6];
                goto LABEL_41;
              }

              if (![v20 version])
              {
                v23 = a1[5];
LABEL_41:
                v24 = MEMORY[0x1E696AD98];
                v25 = [v20 cplType];
                v26 = v24;
                a1 = v54;
                v27 = [v26 numberWithUnsignedInteger:v25];
                v28 = [v23 containsObject:v27];

                if (v28)
                {
                  goto LABEL_45;
                }
              }
            }

LABEL_42:
            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v63 objects:v69 count:16];
              if (v17)
              {
                goto LABEL_29;
              }

              break;
            }
          }
        }

        v29 = 0;
LABEL_46:

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v30 = [v3 modernResources];
        v31 = [v30 countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v60;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v60 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v59 + 1) + 8 * i);
              if ([v35 isLocallyAvailable] && objc_msgSend(v35, "cplType") == 4 && objc_msgSend(v35, "version") == v7)
              {
                v36 = 1;
                goto LABEL_58;
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v59 objects:v68 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        v36 = 0;
LABEL_58:

        if (v6)
        {
          v37 = &unk_1F0FBFF70;
        }

        else
        {
          v38 = [v3 hasAdjustments];
          v39 = 8;
          if (v38)
          {
            v39 = 7;
          }

          v37 = a1[v39];
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v40 = [v3 modernResources];
        v41 = [v40 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v41)
        {
          v42 = v41;
          v50 = v36;
          v51 = v29;
          v43 = *v56;
          while (2)
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v56 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v55 + 1) + 8 * j);
              if ([v45 isLocallyAvailable])
              {
                if (([v45 version] == v7) | v6 & 1)
                {
                  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v45, "cplType")}];
                  v47 = [v37 containsObject:v46];

                  if (v47)
                  {
                    v48 = 1;
                    goto LABEL_75;
                  }
                }
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v55 objects:v67 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }

          v48 = 0;
LABEL_75:
          a1 = v54;
          v36 = v50;
          v29 = v51;
        }

        else
        {
          v48 = 0;
        }

        if ([v3 hasAllThumbs])
        {
          atomic_fetch_add((a1[4] + 56), 1uLL);
        }

        if (v29)
        {
          atomic_fetch_add((a1[4] + 48), 1uLL);
          if (!v36)
          {
LABEL_81:
            if (!v48)
            {
              goto LABEL_89;
            }

            goto LABEL_85;
          }
        }

        else if (!v36)
        {
          goto LABEL_81;
        }

        atomic_fetch_add((a1[4] + 64), 1uLL);
        if (!v48)
        {
LABEL_89:

          goto LABEL_90;
        }

LABEL_85:
        atomic_fetch_add((a1[4] + 72), 1uLL);
        if (v52)
        {
          v49 = 88;
          if (!v53)
          {
            v49 = 80;
          }

          atomic_fetch_add((a1[4] + v49), 1uLL);
        }

        goto LABEL_89;
      }

      v11 = (a1[4] + 200);
    }

    else
    {
      v11 = (v9 + 168);
    }

    atomic_fetch_add(v11, 1uLL);
    goto LABEL_16;
  }

LABEL_90:
}

void __114__PLAggdLogging_configureEnumeratorForHyperionLocalResourcesLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = a2;
  [MEMORY[0x1E6994B90] derivativeGenerationThreshold];
  v4 = v3;
  v5 = [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:4];
  v6 = [v17 unorientedWidth];
  v7 = [v17 unorientedHeight];
  if ([v17 cplType] == 1 && v7 * v6 <= (v4 * v5))
  {
    v8 = [v17 isLocallyAvailable];
    v9 = 16;
    if (v8)
    {
      v9 = 8;
    }

    atomic_fetch_add((*(a1 + 32) + v9), 1uLL);
  }

  if ([v17 cplType])
  {
    v10 = [v17 cloudPrunedAt];
    if (v10)
    {
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:v10];
      v13 = v12;

      if (v13 >= 0.0)
      {
        if (v13 <= 86400.0)
        {
          atomic_fetch_add((*(a1 + 32) + 96), 1uLL);
          atomic_fetch_add((*(a1 + 32) + 120), [v17 dataLength]);
        }

        if (v13 <= 604800.0)
        {
          atomic_fetch_add((*(a1 + 32) + 104), 1uLL);
          atomic_fetch_add((*(a1 + 32) + 128), [v17 dataLength]);
        }

        if (v13 <= 2592000.0)
        {
          atomic_fetch_add((*(a1 + 32) + 112), 1uLL);
          atomic_fetch_add((*(a1 + 32) + 136), [v17 dataLength]);
        }
      }

      v14 = [v17 cloudLastPrefetchDate];
      [v10 timeIntervalSinceDate:v14];
      v16 = v15;

      if (v16 >= 0.0)
      {
        if (v16 <= 86400.0)
        {
          atomic_fetch_add((*(a1 + 32) + 144), 1uLL);
        }

        if (v16 <= 604800.0)
        {
          atomic_fetch_add((*(a1 + 32) + 152), 1uLL);
        }

        if (v16 <= 2592000.0)
        {
          atomic_fetch_add((*(a1 + 32) + 160), 1uLL);
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

void __114__PLAggdLogging_configureEnumeratorForHyperionLocalResourcesLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke_3(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 8));
  v3 = atomic_load((*(a1 + 32) + 16));
  v4 = 0.0;
  v5 = 0.0;
  if (v2 + v3)
  {
    v6 = atomic_load((*(a1 + 32) + 8));
    v7 = v6 * 100.0;
    v8 = atomic_load((*(a1 + 32) + 8));
    v9 = atomic_load((*(a1 + 32) + 16));
    v5 = round(v7 / (v9 + v8));
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v5];
  [v10 setObject:v11 forKey:@"com.apple.assetsd.cpl.mediumOriginalPercent"];

  v12 = *(a1 + 48);
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  [v12 setObject:v13 forKey:*MEMORY[0x1E69BF8C8]];

  if (atomic_load((*(a1 + 32) + 24)))
  {
    v15 = atomic_load((*(a1 + 32) + 48));
    v16 = v15 * 100.0;
    v17 = atomic_load((*(a1 + 32) + 24));
    v4 = round(v16 / v17);
  }

  v18 = *(a1 + 40);
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v4];
  [v18 setObject:v19 forKey:@"com.apple.assetsd.cpl.originalPercent"];

  v20 = *(a1 + 48);
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  [v20 setObject:v21 forKey:*MEMORY[0x1E69BF8F0]];

  v22 = atomic_load((*(a1 + 32) + 24));
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v25 = atomic_load((*(a1 + 32) + 56));
    v26 = v25 * 100.0;
    v27 = atomic_load((*(a1 + 32) + 24));
    v24 = round(v26 / v27);
  }

  v28 = *(a1 + 40);
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v24];
  [v28 setObject:v29 forKey:@"com.apple.assetsd.cpl.thumbPercent"];

  v30 = *(a1 + 48);
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  [v30 setObject:v31 forKey:*MEMORY[0x1E69BFA00]];

  if (atomic_load((*(a1 + 32) + 24)))
  {
    v33 = atomic_load((*(a1 + 32) + 64));
    v34 = v33 * 100.0;
    v35 = atomic_load((*(a1 + 32) + 24));
    v23 = round(v34 / v35);
  }

  v36 = *(a1 + 40);
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v23];
  [v36 setObject:v37 forKey:@"com.apple.assetsd.cpl.mediumPercent"];

  v38 = *(a1 + 48);
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  [v38 setObject:v39 forKey:*MEMORY[0x1E69BF8D0]];

  v40 = atomic_load((*(a1 + 32) + 24));
  v41 = 0.0;
  v42 = 0.0;
  if (v40)
  {
    v43 = atomic_load((*(a1 + 32) + 72));
    v44 = v43 * 100.0;
    v45 = atomic_load((*(a1 + 32) + 24));
    v42 = round(v44 / v45);
  }

  v46 = *(a1 + 40);
  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v42];
  [v46 setObject:v47 forKey:@"com.apple.assetsd.cpl.localMediumOrOriginalPercent"];

  v48 = *(a1 + 48);
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
  [v48 setObject:v49 forKey:*MEMORY[0x1E69BF890]];

  if (atomic_load((*(a1 + 32) + 24)))
  {
    v51 = atomic_load((*(a1 + 32) + 80));
    v52 = v51 * 100.0;
    v53 = atomic_load((*(a1 + 32) + 32));
    v41 = round(v52 / v53);
  }

  v54 = *(a1 + 40);
  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v41];
  [v54 setObject:v55 forKey:@"com.apple.assetsd.cpl.localMediumOrOriginalPercent.photo"];

  v56 = *(a1 + 48);
  v57 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
  [v56 setObject:v57 forKey:*MEMORY[0x1E69BF898]];

  if (atomic_load((*(a1 + 32) + 24)))
  {
    v59 = atomic_load((*(a1 + 32) + 88));
    v60 = v59 * 100.0;
    v61 = atomic_load((*(a1 + 32) + 40));
    v62 = round(v60 / v61);
  }

  else
  {
    v62 = 0.0;
  }

  v63 = *(a1 + 40);
  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v62];
  [v63 setObject:v64 forKey:@"com.apple.assetsd.cpl.localMediumOrOriginalPercent.video"];

  v65 = *(a1 + 48);
  v66 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
  [v65 setObject:v66 forKey:*MEMORY[0x1E69BF8A0]];

  v67 = MEMORY[0x1E696AD98];
  v68 = atomic_load((*(a1 + 32) + 96));
  v69 = [v67 numberWithUnsignedLongLong:v68];
  [*(a1 + 48) setObject:v69 forKeyedSubscript:*MEMORY[0x1E69BF968]];

  v70 = MEMORY[0x1E696AD98];
  v71 = atomic_load((*(a1 + 32) + 104));
  v72 = [v70 numberWithUnsignedLongLong:v71];
  [*(a1 + 48) setObject:v72 forKeyedSubscript:*MEMORY[0x1E69BF988]];

  v73 = MEMORY[0x1E696AD98];
  v74 = atomic_load((*(a1 + 32) + 112));
  v75 = [v73 numberWithUnsignedLongLong:v74];
  [*(a1 + 48) setObject:v75 forKeyedSubscript:*MEMORY[0x1E69BF978]];

  v76 = MEMORY[0x1E696AD98];
  v77 = atomic_load((*(a1 + 32) + 120));
  v78 = [v76 numberWithUnsignedLongLong:v77];
  [*(a1 + 48) setObject:v78 forKeyedSubscript:*MEMORY[0x1E69BF970]];

  v79 = MEMORY[0x1E696AD98];
  v80 = atomic_load((*(a1 + 32) + 128));
  v81 = [v79 numberWithUnsignedLongLong:v80];
  [*(a1 + 48) setObject:v81 forKeyedSubscript:*MEMORY[0x1E69BF990]];

  v82 = MEMORY[0x1E696AD98];
  v83 = atomic_load((*(a1 + 32) + 136));
  v84 = [v82 numberWithUnsignedLongLong:v83];
  [*(a1 + 48) setObject:v84 forKeyedSubscript:*MEMORY[0x1E69BF980]];

  v85 = MEMORY[0x1E696AD98];
  v86 = atomic_load((*(a1 + 32) + 144));
  v87 = [v85 numberWithUnsignedLongLong:v86];
  [*(a1 + 48) setObject:v87 forKeyedSubscript:*MEMORY[0x1E69BF998]];

  v88 = MEMORY[0x1E696AD98];
  v89 = atomic_load((*(a1 + 32) + 152));
  v90 = [v88 numberWithUnsignedLongLong:v89];
  [*(a1 + 48) setObject:v90 forKeyedSubscript:*MEMORY[0x1E69BF9A8]];

  v91 = MEMORY[0x1E696AD98];
  v92 = atomic_load((*(a1 + 32) + 160));
  v93 = [v91 numberWithUnsignedLongLong:v92];
  [*(a1 + 48) setObject:v93 forKeyedSubscript:*MEMORY[0x1E69BF9A0]];

  v94 = MEMORY[0x1E696AEC0];
  v95 = *(a1 + 40);
  v96 = atomic_load((*(a1 + 32) + 96));
  v97 = [v94 stringWithFormat:@"%lld", v96];
  [v95 setObject:v97 forKey:@"com.apple.assetsd.cpl.resourcesPurgedInTheLastDay.count"];

  v98 = MEMORY[0x1E696AEC0];
  v99 = *(a1 + 40);
  v100 = atomic_load((*(a1 + 32) + 104));
  v101 = [v98 stringWithFormat:@"%lld", v100];
  [v99 setObject:v101 forKey:@"com.apple.assetsd.cpl.resourcesPurgedInTheLastWeek.count"];

  v102 = MEMORY[0x1E696AEC0];
  v103 = *(a1 + 40);
  v104 = atomic_load((*(a1 + 32) + 112));
  v105 = [v102 stringWithFormat:@"%lld", v104];
  [v103 setObject:v105 forKey:@"com.apple.assetsd.cpl.resourcesPurgedInTheLastMonth.count"];

  v106 = MEMORY[0x1E696AEC0];
  v107 = *(a1 + 40);
  v108 = atomic_load((*(a1 + 32) + 120));
  v109 = [v106 stringWithFormat:@"%lld", v108];
  [v107 setObject:v109 forKey:@"com.apple.assetsd.cpl.resourcesPurgedInTheLastDay.size"];

  v110 = MEMORY[0x1E696AEC0];
  v111 = *(a1 + 40);
  v112 = atomic_load((*(a1 + 32) + 128));
  v113 = [v110 stringWithFormat:@"%lld", v112];
  [v111 setObject:v113 forKey:@"com.apple.assetsd.cpl.resourcesPurgedInTheLastWeek.size"];

  v114 = MEMORY[0x1E696AEC0];
  v115 = *(a1 + 40);
  v116 = atomic_load((*(a1 + 32) + 136));
  v117 = [v114 stringWithFormat:@"%lld", v116];
  [v115 setObject:v117 forKey:@"com.apple.assetsd.cpl.resourcesPurgedInTheLastMonth.size"];

  v118 = MEMORY[0x1E696AEC0];
  v119 = *(a1 + 40);
  v120 = atomic_load((*(a1 + 32) + 144));
  v121 = [v118 stringWithFormat:@"%lld", v120];
  [v119 setObject:v121 forKey:@"com.apple.assetsd.cpl.resourcesPurgedWithinDayOfPrefetch.count"];

  v122 = MEMORY[0x1E696AEC0];
  v123 = *(a1 + 40);
  v124 = atomic_load((*(a1 + 32) + 152));
  v125 = [v122 stringWithFormat:@"%lld", v124];
  [v123 setObject:v125 forKey:@"com.apple.assetsd.cpl.resourcesPurgedWithinWeekOfPrefetch.count"];

  v126 = MEMORY[0x1E696AEC0];
  v127 = *(a1 + 40);
  v128 = atomic_load((*(a1 + 32) + 160));
  v129 = [v126 stringWithFormat:@"%lld", v128];
  [v127 setObject:v129 forKey:@"com.apple.assetsd.cpl.resourcesPurgedWithinMonthOfPrefetch.count"];

  v130 = MEMORY[0x1E696AEC0];
  v131 = *(a1 + 40);
  v132 = atomic_load((*(a1 + 32) + 176));
  v133 = [v130 stringWithFormat:@"%lld", v132];
  [v131 setObject:v133 forKey:@"com.apple.mobileslideshow.sharedlibrary.assetcount"];

  v134 = MEMORY[0x1E696AEC0];
  v135 = *(a1 + 40);
  v136 = atomic_load((*(a1 + 32) + 168));
  v137 = [v134 stringWithFormat:@"%lld", v136];
  [v135 setObject:v137 forKey:@"com.apple.mobileslideshow.personallibrary.assetcount"];

  v138 = MEMORY[0x1E696AEC0];
  v139 = *(a1 + 40);
  v140 = atomic_load((*(a1 + 32) + 184));
  v141 = [v138 stringWithFormat:@"%lld", v140];
  [v139 setObject:v141 forKey:@"com.apple.mobileslideshow.sharedlibrary.assetaddedmanuallycount"];

  v142 = MEMORY[0x1E696AEC0];
  v143 = *(a1 + 40);
  v144 = atomic_load((*(a1 + 32) + 192));
  v145 = [v142 stringWithFormat:@"%lld", v144];
  [v143 setObject:v145 forKey:@"com.apple.mobileslideshow.sharedlibrary.assetaddedincameracount"];

  v146 = MEMORY[0x1E696AEC0];
  v147 = *(a1 + 40);
  v148 = atomic_load((*(a1 + 32) + 200));
  v149 = [v146 stringWithFormat:@"%lld", v148];
  [v147 setObject:v149 forKey:@"com.apple.mobileslideshow.sharedlibrary.assetaddedinsuggestionscount"];

  v174 = MGCopyAnswer();
  v150 = [v174 objectForKey:*MEMORY[0x1E69E5120]];
  v151 = [v150 longLongValue];

  v152 = *(a1 + 40);
  v153 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v151];
  [v152 setValue:v153 forKey:@"totalStorage"];

  v154 = *(a1 + 48);
  v155 = [MEMORY[0x1E696AD98] numberWithLongLong:v151];
  [v154 setObject:v155 forKey:*MEMORY[0x1E69BFA18]];

  v156 = [v174 objectForKey:*MEMORY[0x1E69E5108]];
  v157 = [v156 longLongValue];

  v158 = *(a1 + 40);
  v159 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v157];
  [v158 setValue:v159 forKey:@"availableStorage"];

  v160 = *(a1 + 48);
  v161 = [MEMORY[0x1E696AD98] numberWithLongLong:v157];
  [v160 setObject:v161 forKey:*MEMORY[0x1E69BF7D0]];

  v162 = MEMORY[0x19EAEE520]();
  v163 = &stru_1F0F06D80;
  if (v162)
  {
    v163 = @"unitTest-";
  }

  v164 = v163;
  if (*(a1 + 72) == 1 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    objc_opt_class();
    v165 = *(a1 + 56);
    if (objc_opt_isKindOfClass())
    {
      v166 = v165;
    }

    else
    {
      v166 = 0;
    }

    v167 = v166;

    v168 = [v167 pl_libraryBundle];
    v169 = [PLCPLSettings settingsWithLibraryBundle:v168];

    v170 = [v169 isKeepOriginalsEnabled];
    v171 = @"icplOpt-";
    if (v170)
    {
      v171 = @"icplOrg-";
    }

    v172 = v171;

    v164 = v172;
  }

  v173 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  [*(a1 + 64) _addPrefix:v164 toKeysInDictionary:*(a1 + 40) inPrefixedDictionary:v173];
  [*(a1 + 40) removeAllObjects];
  [*(a1 + 40) addEntriesFromDictionary:v173];
}

+ (void)configureEnumeratorForLibrarySizeLogging:(id)logging cloudPhotoLibraryEnabled:(BOOL)enabled dataForCA:(id)a dataForCK:(id)k
{
  loggingCopy = logging;
  aCopy = a;
  kCopy = k;
  if (!loggingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAggdLogging.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__PLAggdLogging_configureEnumeratorForLibrarySizeLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke;
  v16[3] = &unk_1E7572938;
  v17 = kCopy;
  v18 = aCopy;
  v13 = aCopy;
  v14 = kCopy;
  [PLPhotoLibrary configureEnumeratorForLibrarySizeInfo:loggingCopy completion:v16];
}

void __103__PLAggdLogging_configureEnumeratorForLibrarySizeLogging_cloudPhotoLibraryEnabled_dataForCA_dataForCK___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [PLPhotoLibrary savedPhotosOriginalsSizeWithSizeDataRef:v3];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v9];
  [v4 setObject:v5 forKey:@"originalLibrarySize"];

  [*(a1 + 40) setObject:v9 forKey:*MEMORY[0x1E69BF8E8]];
  v6 = [PLPhotoLibrary savedPhotosReferenceMediaSizeWithSizeDataRef:v3];

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
  [v7 setObject:v8 forKey:@"referenceMediaSize"];

  [*(a1 + 40) setObject:v6 forKey:*MEMORY[0x1E69BF960]];
}

+ (void)_addLibrarySummaryDataToCollectionIfPresent:(id)present fromCPLEventData:(id)data forKey:(id)key
{
  presentCopy = present;
  dataCopy = data;
  keyCopy = key;
  v9 = [dataCopy objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    v10 = [dataCopy objectForKeyedSubscript:keyCopy];
    [presentCopy setObject:v10 forKey:keyCopy];
  }
}

+ (void)_addPrefix:(id)prefix toKeysInDictionary:(id)dictionary inPrefixedDictionary:(id)prefixedDictionary
{
  prefixCopy = prefix;
  prefixedDictionaryCopy = prefixedDictionary;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PLAggdLogging__addPrefix_toKeysInDictionary_inPrefixedDictionary___block_invoke;
  v11[3] = &unk_1E7578238;
  v12 = prefixedDictionaryCopy;
  v13 = prefixCopy;
  v9 = prefixCopy;
  v10 = prefixedDictionaryCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v11];
}

void __68__PLAggdLogging__addPrefix_toKeysInDictionary_inPrefixedDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v4 stringWithFormat:@"%@%@", v6, a2];
  [v5 setObject:v7 forKey:v8];
}

+ (id)_analyticsDescriptionForAssetCount:(int64_t)count
{
  if (count < 1)
  {
    return @"0";
  }

  if (count < 6)
  {
    return @"1-5";
  }

  if (count < 0xB)
  {
    return @"6-10";
  }

  if (count < 0x15)
  {
    return @"11-20";
  }

  if (count < 0x1F)
  {
    return @"21-30";
  }

  if (count < 0x29)
  {
    return @"31-40";
  }

  if (count < 0x33)
  {
    return @"41-50";
  }

  if (count < 0x65)
  {
    return @"51-100";
  }

  if (count < 0xC9)
  {
    return @"101-200";
  }

  if (count >= 0x1F5)
  {
    return @"501+";
  }

  return @"201-500";
}

+ (id)_analyticsDescriptionForMediaAge:(double)age
{
  v4 = age / 60.0 / 60.0 / 24.0;
  v5 = v4 / 30.0;
  if (v4 / 30.0 >= 1.0)
  {
    if (v5 >= 3.0)
    {
      if (v5 >= 6.0)
      {
        v8 = v4 / 365.0;
        if (v4 / 365.0 >= 1.0)
        {
          v9 = objc_alloc(MEMORY[0x1E696AEC0]);
          v10 = v8;
          if (v8 >= 10.0)
          {
            v10 = 10 * (v10 / 10);
          }

          v6 = [v9 initWithFormat:@"%liYears", v10];
        }

        else
        {
          v6 = @"lastYear";
        }
      }

      else
      {
        v6 = @"last6Months";
      }
    }

    else
    {
      v6 = @"last3Months";
    }
  }

  else
  {
    v6 = @"lastMonth";
  }

  return v6;
}

+ (void)_addDistributionStatisticsOfValues:(id)values withPrefix:(id)prefix toDictionary:(id)dictionary formatter:(id)formatter
{
  v38 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  prefixCopy = prefix;
  dictionaryCopy = dictionary;
  formatterCopy = formatter;
  if ([valuesCopy count])
  {
    v13 = [valuesCopy sortedArrayUsingSelector:sel_compare_];
    firstObject = [v13 firstObject];
    v15 = formatterCopy[2](formatterCopy, firstObject);
    v16 = [prefixCopy stringByAppendingString:@"Min"];
    [dictionaryCopy setObject:v15 forKeyedSubscript:v16];

    lastObject = [v13 lastObject];
    v18 = formatterCopy[2](formatterCopy, lastObject);
    v19 = [prefixCopy stringByAppendingString:@"Max"];
    [dictionaryCopy setObject:v18 forKeyedSubscript:v19];

    v20 = [v13 objectAtIndexedSubscript:{objc_msgSend(v13, "count") >> 1}];
    v21 = formatterCopy[2](formatterCopy, v20);
    v22 = [prefixCopy stringByAppendingString:@"Median"];
    [dictionaryCopy setObject:v21 forKeyedSubscript:v22];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v13;
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      v27 = 0.0;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v33 + 1) + 8 * i) doubleValue];
          v27 = v27 + v29;
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v25);
    }

    else
    {
      v27 = 0.0;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:{v27 / objc_msgSend(v23, "count")}];
    v31 = formatterCopy[2](formatterCopy, v30);
    v32 = [prefixCopy stringByAppendingString:@"Mean"];
    [dictionaryCopy setObject:v31 forKeyedSubscript:v32];
  }
}

+ (void)performSlideshowProjectStatisticsLogging:(id)logging
{
  v55[1] = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLProjectAlbum entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"projectDocumentType", @"com.apple.photos.projects.slideshow"];
  [v8 setPredicate:v9];

  v55[0] = @"creationDate";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  [v8 setPropertiesToFetch:v10];

  v54 = @"assets";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v11];

  [v8 setFetchBatchSize:100];
  v48 = 0;
  v12 = [loggingCopy executeFetchRequest:v8 error:&v48];
  v13 = v48;
  v14 = v13;
  if (v12)
  {
    v38 = v13;
    selfCopy = self;
    v40 = v8;
    v41 = loggingCopy;
    v15 = [v12 count];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
    v37 = v15;
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v45;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v44 + 1) + 8 * i);
          creationDate = [v23 creationDate];
          v25 = creationDate;
          if (creationDate)
          {
            v26 = MEMORY[0x1E696AD98];
            [creationDate timeIntervalSinceNow];
            v28 = [v26 numberWithDouble:-v27];
            [v16 addObject:v28];
          }

          v29 = MEMORY[0x1E696AD98];
          assets = [v23 assets];
          v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(assets, "count")}];
          [v17 addObject:v31];
        }

        v20 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v20);
    }

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:v37];
    [v32 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69BFC18]];

    v34 = *MEMORY[0x1E69BFC28];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __58__PLAggdLogging_performSlideshowProjectStatisticsLogging___block_invoke;
    v43[3] = &__block_descriptor_40_e28___NSString_16__0__NSNumber_8l;
    v43[4] = selfCopy;
    [selfCopy _addDistributionStatisticsOfValues:v16 withPrefix:v34 toDictionary:v32 formatter:v43];
    v35 = *MEMORY[0x1E69BFC10];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __58__PLAggdLogging_performSlideshowProjectStatisticsLogging___block_invoke_2;
    v42[3] = &__block_descriptor_40_e28___NSString_16__0__NSNumber_8l;
    v42[4] = selfCopy;
    [selfCopy _addDistributionStatisticsOfValues:v17 withPrefix:v35 toDictionary:v32 formatter:v42];
    PLSendCoreAnalyticEvent();

    v8 = v40;
    loggingCopy = v41;
    v14 = v38;
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      *buf = 138412546;
      v50 = v36;
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%@ failed to slideshow projects: %@", buf, 0x16u);
    }
  }
}

uint64_t __58__PLAggdLogging_performSlideshowProjectStatisticsLogging___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];

  return [v2 _analyticsDescriptionForMediaAge:?];
}

uint64_t __58__PLAggdLogging_performSlideshowProjectStatisticsLogging___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 _analyticsDescriptionForAssetCount:v3];
}

+ (void)performMomentsStatisticsLogging:(id)logging
{
  v57[1] = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLMoment entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  [v7 setResultType:2];
  [v7 setFetchBatchSize:100];
  [v7 setPropertiesToFetch:&unk_1F0FBFEF8];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cachedCount" ascending:1];
  v57[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  [v7 setSortDescriptors:v9];

  v50 = 0;
  v10 = [loggingCopy executeFetchRequest:v7 error:&v50];
  v11 = v50;
  if (v11 || !v10)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = +[PLMoment entityName];
      *buf = 138412802;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      v52 = 2112;
      v53 = v11;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "%@ failed to fetch counts for %@ %@", buf, 0x20u);
    }
  }

  else
  {
    v43 = v7;
    v44 = loggingCopy;
    v45 = [v10 count];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = *v47;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v46 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [v19 objectForKeyedSubscript:@"cachedCount"];
          unsignedIntegerValue = [v21 unsignedIntegerValue];

          v15 += unsignedIntegerValue;
          if (unsignedIntegerValue == 1)
          {
            ++v16;
          }

          objc_autoreleasePoolPop(v20);
        }

        v14 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v26 = v45;
    v27 = v15 / v45;
    v28 = [v12 valueForKeyPath:@"cachedCount"];
    if ([v28 count])
    {
      v11 = 0;
      if ([v28 count] == 1)
      {
        firstObject = [v28 firstObject];
        integerValue = [firstObject integerValue];
        v10 = v42;
      }

      else
      {
        v31 = v27;
        firstObject = [v28 sortedArrayUsingSelector:sel_compare_];
        v32 = [v28 count];
        v33 = [firstObject count] >> 1;
        if (v32)
        {
          v34 = [firstObject objectAtIndex:v33];
          integerValue = [v34 integerValue];
        }

        else
        {
          v34 = [firstObject objectAtIndex:v33 - 1];
          *buf = v34;
          v35 = [firstObject objectAtIndex:v33];
          *&buf[8] = v35;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:2];
          v37 = [v36 valueForKeyPath:@"@avg.self"];
          integerValue = [v37 integerValue];

          v26 = v45;
        }

        v10 = v42;

        v27 = v31;
      }
    }

    else
    {
      integerValue = 0;
      v11 = 0;
      v10 = v42;
    }

    v54[0] = *MEMORY[0x1E69BFA90];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
    v55[0] = v23;
    v54[1] = *MEMORY[0x1E69BFA98];
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    v55[1] = v38;
    v54[2] = *MEMORY[0x1E69BFA80];
    v39 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
    v55[2] = v39;
    v54[3] = *MEMORY[0x1E69BFA88];
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue];
    v55[3] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:4];
    PLSendCoreAnalyticEvent();

    v7 = v43;
    loggingCopy = v44;
  }
}

@end