@interface PLFeatureAvailabilityComputer
+ (id)_predicateForAllAssetsAllowedForProcessingForSceneAnalysis:(BOOL)analysis;
+ (id)_predicateForAllCuratedAssetsForSceneAnalysis:(BOOL)analysis;
+ (id)_predicateForEnrichedHighlights;
+ (id)_predicatesForVisibleAssets;
+ (id)_savedAssetTypePredicateForSceneAnalysis:(BOOL)analysis;
- (BOOL)_addAnalysisStatusForMediaTaskID:(unint64_t)d toProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error;
- (BOOL)_addAssetCountsToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context forSceneAnalysis:(BOOL)analysis error:(id *)error;
- (BOOL)_addCaptioningStatusToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error;
- (BOOL)_addEmbeddingVectorIndexingStatusToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error;
- (BOOL)_addHighlightStatusToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error;
- (BOOL)_addSpotlightSearchIndexingStatusToProcessingSnapshot:(id)snapshot forTaskID:(unint64_t)d completedCount:(int64_t)count totalCount:(int64_t)totalCount error:(id *)error;
- (BOOL)_clearAvailabilityForPhotoLibrary:(id)library error:(id *)error;
- (BOOL)_failAvailabilityForPhotoLibrary:(id)library error:(id *)error;
- (BOOL)_shouldStopWithProgress:(id)progress afterCallingCompletionHandler:(id)handler;
- (BOOL)clearAvailabilityStateForPhotoLibrary:(id)library error:(id *)error;
- (BOOL)didDropSearchIndexForPhotoLibrary:(id)library error:(id *)error;
- (BOOL)didFinishSearchIndexRebuidForPhotoLibrary:(id)library error:(id *)error;
- (BOOL)failAvailabilityForPhotoLibrary:(id)library error:(id *)error;
- (PLFeatureAvailabilityComputer)initWithTransitionDelegate:(id)delegate progressDelegate:(id)progressDelegate;
- (id)_computeAvailabilityForSnapshot:(id)snapshot photoLibrary:(id)library shouldPersist:(BOOL)persist error:(id *)error;
- (id)computeAvailabilityForPhotoLibrary:(id)library shouldPersist:(BOOL)persist completionHandler:(id)handler;
- (id)computeSnapshotForPhotoLibrary:(id)library completionHandler:(id)handler;
- (id)onDemandAvailabilityUpdateWithChanges:(id)changes forPhotoLibrary:(id)library completionHandler:(id)handler;
- (unint64_t)_assetCountForPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (void)_addAssetCountsToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addAssetForSceneCountsToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addCaptioningToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addEmbeddingIndexingToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addHighlightStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addMediaAnalysisIndexingToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addSceneAnalysisIndexingToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addSceneAnalysisToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addVUIndexFullClusterStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_addVersionsToProcessingSnapshot:(id)snapshot;
- (void)_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_fetchSpotlightSearchIndexingStatusForTaskID:(unint64_t)d photoLibrary:(id)library completionHandler:(id)handler;
- (void)_onDemandAvailabilityUpdateWithChanges:(id)changes forPhotoLibrary:(id)library progress:(id)progress completionHandler:(id)handler;
- (void)_onDemand_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library completionHandler:(id)handler;
- (void)_persistFeatureAvailabilityDictionary:(id)dictionary photoLibrary:(id)library;
- (void)_readLastFullModeClusterDateWithPhotoLibrary:(id)library completionHandler:(id)handler;
- (void)_updateSnapshot:(id)snapshot withChanges:(id)changes;
- (void)_updateVUClusterStateInProcessingSnapshot:(id)snapshot photoLibrary:(id)library completionHandler:(id)handler;
- (void)updatePersistedSnapshotIfNeededWithLightweightVersionCheckForPhotoLibrary:(id)library;
@end

@implementation PLFeatureAvailabilityComputer

- (void)_updateVUClusterStateInProcessingSnapshot:(id)snapshot photoLibrary:(id)library completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__PLFeatureAvailabilityComputer__updateVUClusterStateInProcessingSnapshot_photoLibrary_completionHandler___block_invoke;
  v12[3] = &unk_1E7573238;
  v13 = snapshotCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = snapshotCopy;
  [(PLFeatureAvailabilityComputer *)self _readLastFullModeClusterDateWithPhotoLibrary:library completionHandler:v12];
}

void __106__PLFeatureAvailabilityComputer__updateVUClusterStateInProcessingSnapshot_photoLibrary_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v10 = a4;
  if (a2)
  {
    v7 = a3 != 0;
    v8 = *(a1 + 32);
    v9 = a3;
    [v8 setVuIndexIsFullClustered:v7];
    [*(a1 + 32) setLastFullVUIndexClusterDate:v9];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_readLastFullModeClusterDateWithPhotoLibrary:(id)library completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FeatureAvailability - LastFullModeClusterDate", "", buf, 2u);
  }

  pathManager = [libraryCopy pathManager];
  libraryURL = [pathManager libraryURL];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __96__PLFeatureAvailabilityComputer__readLastFullModeClusterDateWithPhotoLibrary_completionHandler___block_invoke;
  v16[3] = &unk_1F0F05838;
  v13 = v10;
  v19 = v13;
  v20 = v8;
  v14 = handlerCopy;
  v18 = v14;
  v15 = libraryCopy;
  v17 = v15;
  [PLMediaAnalysisServiceRequestAdapter queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:libraryURL completionHandler:v16];
}

void __96__PLFeatureAvailabilityComputer__readLastFullModeClusterDateWithPhotoLibrary_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__86653;
  v21[4] = __Block_byref_object_dispose__86654;
  v8 = v6;
  v22 = v8;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__86653;
  v19[4] = __Block_byref_object_dispose__86654;
  v9 = v7;
  v20 = v9;
  v10 = +[PLConcurrencyLimiter sharedLimiter];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3254779904;
  v13[2] = __96__PLFeatureAvailabilityComputer__readLastFullModeClusterDateWithPhotoLibrary_completionHandler___block_invoke_2;
  v13[3] = &unk_1F0F05800;
  v15 = v19;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v17 = v11;
  v18 = v12;
  v14 = *(a1 + 40);
  v16 = v21;
  [v10 async:v13 identifyingBlock:0 library:*(a1 + 32)];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

uint64_t __96__PLFeatureAvailabilityComputer__readLastFullModeClusterDateWithPhotoLibrary_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(*(*(a1 + 40) + 8) + 40);
      v8 = 136315394;
      v9 = "[PLFeatureAvailabilityComputer _readLastFullModeClusterDateWithPhotoLibrary:completionHandler:]_block_invoke_2";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - async MAD query failed with error: %@", &v8, 0x16u);
    }
  }

  v4 = *(a1 + 56);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_END, v6, "FeatureAvailability - LastFullModeClusterDate", "", &v8, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (BOOL)didFinishSearchIndexRebuidForPhotoLibrary:(id)library error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  libraryServicesManager = [libraryCopy libraryServicesManager];
  backgroundJobService = [libraryServicesManager backgroundJobService];

  if (backgroundJobService)
  {
    libraryBundle = [libraryCopy libraryBundle];
    v9 = +[PLBackgroundJobWorkerTypes maskForFeatureAvailability];
    [backgroundJobService signalBackgroundProcessingNeededOnBundle:libraryBundle workerTypes:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureAvailability - %s - no background job service", "-[PLFeatureAvailabilityComputer didFinishSearchIndexRebuidForPhotoLibrary:error:]"];
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (error)
    {
      *error = PLErrorCreate();
    }
  }

  return backgroundJobService != 0;
}

- (BOOL)didDropSearchIndexForPhotoLibrary:(id)library error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  globalValues = [libraryCopy globalValues];
  featureAvailability = [globalValues featureAvailability];

  if (featureAvailability)
  {
    v9 = [[PLFeatureAvailability alloc] initWithDictionary:featureAvailability];
    processingSnapshot = [(PLFeatureAvailability *)v9 processingSnapshot];
    v11 = processingSnapshot != 0;
    if (processingSnapshot)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - resetting search index state", buf, 2u);
      }

      [processingSnapshot resetSearchIndexState];
      v13 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:processingSnapshot];
      dictionary = [(PLFeatureAvailability *)v13 dictionary];
      [(PLFeatureAvailabilityComputer *)self _persistFeatureAvailabilityDictionary:dictionary photoLibrary:libraryCopy];
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureAvailability - %s - availability state persisted, but no snapshot", "-[PLFeatureAvailabilityComputer didDropSearchIndexForPhotoLibrary:error:]"];
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (error)
      {
        *error = PLErrorCreate();
      }
    }
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[PLFeatureAvailabilityComputer didDropSearchIndexForPhotoLibrary:error:]";
      _os_log_impl(&dword_19BF1F000, &v9->super, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - %s - no persisted availability", buf, 0xCu);
    }

    v11 = 1;
  }

  return v11;
}

- (void)_updateSnapshot:(id)snapshot withChanges:(id)changes
{
  v27 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  changesCopy = changes;
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sourceIdentifier = [changesCopy sourceIdentifier];
    v25 = 138412290;
    v26 = *&sourceIdentifier;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - updating snapshot with changes from source: %@", &v25, 0xCu);
  }

  photosKnowledgeGraphIsReady = [changesCopy photosKnowledgeGraphIsReady];
  v10 = photosKnowledgeGraphIsReady;
  if (photosKnowledgeGraphIsReady)
  {
    bOOLValue = [photosKnowledgeGraphIsReady BOOLValue];
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (bOOLValue)
      {
        v13 = @"YES";
      }

      v25 = 138412290;
      v26 = *&v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - updating snapshot with changes, setting photosKnowledgeGraphIsReady to %@", &v25, 0xCu);
    }

    [snapshotCopy setPhotosKnowledgeGraphIsReady:bOOLValue];
  }

  lastFullVUIndexClusterDate = [changesCopy lastFullVUIndexClusterDate];
  resetLastFullVUIndexClusterDate = [changesCopy resetLastFullVUIndexClusterDate];
  if (resetLastFullVUIndexClusterDate)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - updating snapshot with changes, setting lastFullVUIndexClusterDate and vuIndexIsFullClustered to nil", &v25, 2u);
    }

    v17 = snapshotCopy;
    v18 = 0;
  }

  else
  {
    if (!lastFullVUIndexClusterDate)
    {
      goto LABEL_18;
    }

    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = *&lastFullVUIndexClusterDate;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - updating snapshot with changes, setting lastFullVUIndexClusterDate to %@", &v25, 0xCu);
    }

    v17 = snapshotCopy;
    v18 = lastFullVUIndexClusterDate;
  }

  [v17 setLastFullVUIndexClusterDate:v18];
  [snapshotCopy setVuIndexIsFullClustered:resetLastFullVUIndexClusterDate ^ 1u];
LABEL_18:
  fractionOfCuratedAssetsIndexedInVUClustering = [changesCopy fractionOfCuratedAssetsIndexedInVUClustering];
  v21 = fractionOfCuratedAssetsIndexedInVUClustering;
  if (fractionOfCuratedAssetsIndexedInVUClustering)
  {
    [fractionOfCuratedAssetsIndexedInVUClustering doubleValue];
    v23 = v22;
    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = v23;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - updating snapshot with changes, setting updateForFractionOfCuratedAssetsIndexedInVUClustering to %f", &v25, 0xCu);
    }

    [snapshotCopy setFractionOfCuratedAssetsIndexedInVUClustering:v23];
  }
}

- (void)_onDemandAvailabilityUpdateWithChanges:(id)changes forPhotoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  v11 = PLPhotosSearchGetLog();
  v12 = os_signpost_id_generate(v11);

  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FeatureAvailability - OnDemandUpdateWithChanges", "", buf, 2u);
  }

  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    sourceIdentifier = [changesCopy sourceIdentifier];
    *buf = 138412290;
    v33 = sourceIdentifier;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "FeatureAvailability - on-demand availability update with changes from source: %@", buf, 0xCu);
  }

  globalValues = [libraryCopy globalValues];
  featureAvailability = [globalValues featureAvailability];

  if (featureAvailability)
  {
    v28 = [[PLFeatureAvailability alloc] initWithDictionary:featureAvailability];
    processingSnapshot = [(PLFeatureAvailability *)v28 processingSnapshot];
    if (processingSnapshot)
    {
      [(PLFeatureAvailabilityComputer *)self _updateSnapshot:processingSnapshot withChanges:changesCopy];
      date = [MEMORY[0x1E695DF00] date];
      globalValues2 = [libraryCopy globalValues];
      [globalValues2 setDateOfLastExternalAvailabilitySignal:date];

      v22 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:processingSnapshot];
      dictionary = [(PLFeatureAvailability *)v22 dictionary];
      [(PLFeatureAvailabilityComputer *)self _persistFeatureAvailabilityDictionary:dictionary photoLibrary:libraryCopy];

      [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
      v24 = v14;
      v25 = v24;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_END, v12, "FeatureAvailability - OnDemandUpdateWithChanges", "", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 1, 0);
    }

    else
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureAvailability - %s - availability state persisted, but no snapshot", "-[PLFeatureAvailabilityComputer _onDemandAvailabilityUpdateWithChanges:forPhotoLibrary:progress:completionHandler:]"];
      v27 = PLErrorCreate();
      (handlerCopy)[2](handlerCopy, 0, v27);
    }
  }

  else
  {
    v26 = PLBackendGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v33 = "[PLFeatureAvailabilityComputer _onDemandAvailabilityUpdateWithChanges:forPhotoLibrary:progress:completionHandler:]";
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "FeatureAvailability - %s - no persisted availability", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (id)onDemandAvailabilityUpdateWithChanges:(id)changes forPhotoLibrary:(id)library completionHandler:(id)handler
{
  changesCopy = changes;
  libraryCopy = library;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  v12 = +[PLConcurrencyLimiter sharedLimiter];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __105__PLFeatureAvailabilityComputer_onDemandAvailabilityUpdateWithChanges_forPhotoLibrary_completionHandler___block_invoke;
  v20[3] = &unk_1E7573148;
  objc_copyWeak(&v25, &location);
  v13 = v11;
  v21 = v13;
  v14 = handlerCopy;
  v24 = v14;
  v15 = changesCopy;
  v22 = v15;
  v16 = libraryCopy;
  v23 = v16;
  [v12 async:v20 identifyingBlock:0 library:0];

  v17 = v23;
  v18 = v13;

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v18;
}

void __105__PLFeatureAvailabilityComputer_onDemandAvailabilityUpdateWithChanges_forPhotoLibrary_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer onDemandAvailabilityUpdateWithChanges:forPhotoLibrary:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__PLFeatureAvailabilityComputer_onDemandAvailabilityUpdateWithChanges_forPhotoLibrary_completionHandler___block_invoke_2;
  v7[3] = &unk_1E75774A8;
  v8 = *(a1 + 56);
  [v3 _onDemandAvailabilityUpdateWithChanges:v5 forPhotoLibrary:v4 progress:v6 completionHandler:v7];
}

void __105__PLFeatureAvailabilityComputer_onDemandAvailabilityUpdateWithChanges_forPhotoLibrary_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69BF2D0];
  if (a3)
  {
    v5 = [MEMORY[0x1E69BF2D0] failureWithError:?];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    v7 = [v4 successWithResult:v6];

    v5 = v7;
  }

  v8 = v5;
  (*(*(a1 + 32) + 16))();
}

- (void)updatePersistedSnapshotIfNeededWithLightweightVersionCheckForPhotoLibrary:(id)library
{
  libraryCopy = library;
  globalValues = [libraryCopy globalValues];
  featureAvailability = [globalValues featureAvailability];

  if (featureAvailability)
  {
    v6 = [[PLFeatureAvailability alloc] initWithDictionary:featureAvailability];
    processingSnapshot = [(PLFeatureAvailability *)v6 processingSnapshot];
    if (![processingSnapshot mediaAnalysisImageVersion])
    {
      [processingSnapshot setMediaAnalysisImageVersion:67];
      [processingSnapshot setHasConsistentMediaAnalysisImageVersion:1];
    }

    v8 = +[PLFeatureProcessingAlgorithmVersionProvider provider];
    mediaAnalysisImageVersion = [processingSnapshot mediaAnalysisImageVersion];
    if (mediaAnalysisImageVersion != [v8 mediaAnalysisImageVersion])
    {
      [processingSnapshot setHasConsistentMediaAnalysisImageVersion:0];
    }

    v10 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:processingSnapshot];
    dictionary = [(PLFeatureAvailability *)v10 dictionary];
    if (dictionary != featureAvailability)
    {
      [(PLFeatureAvailabilityComputer *)self _persistFeatureAvailabilityDictionary:dictionary photoLibrary:libraryCopy];
    }
  }
}

- (void)_persistFeatureAvailabilityDictionary:(id)dictionary photoLibrary:(id)library
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  libraryCopy = library;
  globalValues = [libraryCopy globalValues];
  featureAvailability = [globalValues featureAvailability];

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v36 = featureAvailability;
  if (featureAvailability)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - oldDictionary not nil", buf, 2u);
    }

    v10 = [[PLFeatureAvailability alloc] initWithDictionary:featureAvailability];
    v11 = MEMORY[0x1E695DFD8];
    v40 = v10;
    availabilityByFeature = [(PLFeatureAvailability *)v10 availabilityByFeature];
    allKeys = [availabilityByFeature allKeys];
    v14 = [v11 setWithArray:allKeys];
    [v8 unionSet:v14];
  }

  else
  {
    v40 = 0;
  }

  if (dictionaryCopy)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - dictionary not nil", buf, 2u);
    }

    v16 = [[PLFeatureAvailability alloc] initWithDictionary:dictionaryCopy];
    v17 = MEMORY[0x1E695DFD8];
    availabilityByFeature2 = [(PLFeatureAvailability *)v16 availabilityByFeature];
    allKeys2 = [availabilityByFeature2 allKeys];
    v20 = [v17 setWithArray:allKeys2];
    [v8 unionSet:v20];
  }

  else
  {
    v16 = 0;
  }

  v21 = PLBackendGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - resetting global FA dictionary", buf, 2u);
  }

  globalValues2 = [libraryCopy globalValues];
  [globalValues2 setFeatureAvailability:dictionaryCopy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v23 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v42;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v41 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);
        [WeakRetained featureAvailability:v16 updateProgressForFeature:v27];

        availabilityByFeature3 = [(PLFeatureAvailability *)v40 availabilityByFeature];
        v30 = [availabilityByFeature3 objectForKeyedSubscript:v27];
        bOOLValue = [v30 BOOLValue];

        availabilityByFeature4 = [(PLFeatureAvailability *)v16 availabilityByFeature];
        v33 = [availabilityByFeature4 objectForKeyedSubscript:v27];
        bOOLValue2 = [v33 BOOLValue];

        if (bOOLValue != bOOLValue2)
        {
          v35 = objc_loadWeakRetained(&self->_transitionDelegate);
          [v35 availability:v16 feature:v27 didTransition:bOOLValue2];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v24);
  }
}

- (BOOL)_failAvailabilityForPhotoLibrary:(id)library error:(id *)error
{
  v4 = MEMORY[0x1E695DF00];
  libraryCopy = library;
  date = [v4 date];
  globalValues = [libraryCopy globalValues];
  [globalValues setTimeOfLastFeatureAvailabilityJob:date];

  globalValues2 = [libraryCopy globalValues];

  [globalValues2 setFeatureAvailabilityJobDidFail:MEMORY[0x1E695E118]];
  return 1;
}

- (BOOL)_clearAvailabilityForPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  [(PLFeatureAvailabilityComputer *)self _persistFeatureAvailabilityDictionary:0 photoLibrary:libraryCopy];
  globalValues = [libraryCopy globalValues];
  [globalValues setTimeOfLastFeatureAvailabilityJob:0];

  globalValues2 = [libraryCopy globalValues];

  [globalValues2 setFeatureAvailabilityJobDidFail:0];
  return 1;
}

- (id)_computeAvailabilityForSnapshot:(id)snapshot photoLibrary:(id)library shouldPersist:(BOOL)persist error:(id *)error
{
  persistCopy = persist;
  libraryCopy = library;
  snapshotCopy = snapshot;
  v11 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:snapshotCopy];

  if (persistCopy)
  {
    dictionary = [(PLFeatureAvailability *)v11 dictionary];
    [(PLFeatureAvailabilityComputer *)self _persistFeatureAvailabilityDictionary:dictionary photoLibrary:libraryCopy];
  }

  return v11;
}

- (void)_fetchSpotlightSearchIndexingStatusForTaskID:(unint64_t)d photoLibrary:(id)library completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v9 = PLPhotosSearchGetLog();
  v10 = os_signpost_id_generate(v9);

  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FeatureAvailability - IndexingStatusForTaskID", "", buf, 2u);
  }

  libraryServicesManager = [libraryCopy libraryServicesManager];
  searchDonationProgress = [libraryServicesManager searchDonationProgress];

  if (searchDonationProgress)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3254779904;
    v17[2] = __109__PLFeatureAvailabilityComputer__fetchSpotlightSearchIndexingStatusForTaskID_photoLibrary_completionHandler___block_invoke;
    v17[3] = &unk_1F0F057C8;
    dCopy = d;
    v20 = v12;
    v21 = v10;
    v18 = handlerCopy;
    v15 = [searchDonationProgress donationProgressForMediaProcessingTaskID:d completionHandler:v17];

    v16 = v20;
  }

  else
  {
    v16 = PLErrorCreate();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
  }
}

void __109__PLFeatureAvailabilityComputer__fetchSpotlightSearchIndexingStatusForTaskID_photoLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v21 = 134217984;
    v22 = v8;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - donationProgress for taskID %lu starting", &v21, 0xCu);
  }

  if (v6)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[PLFeatureAvailabilityComputer _fetchSpotlightSearchIndexingStatusForTaskID:photoLibrary:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - searchDonationProgress failed with error: %@", &v21, 0x16u);
    }

    v10 = *(a1 + 48);
    v11 = v10;
    v12 = *(a1 + 56);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FeatureAvailability - IndexingStatusForTaskID", "", &v21, 2u);
    }

    v13 = *(*(a1 + 32) + 16);
  }

  else
  {
    v14 = [v5 completedUnitCount];
    v15 = [v5 totalUnitCount];
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v21 = 134218496;
      v22 = v17;
      v23 = 2048;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - Finished indexing status task for taskID %tu with completedUnitCount %lld and totalUnitCount %lld", &v21, 0x20u);
    }

    v18 = *(a1 + 48);
    v19 = v18;
    v20 = *(a1 + 56);
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "FeatureAvailability - IndexingStatusForTaskID", "", &v21, 2u);
    }

    v13 = *(*(a1 + 32) + 16);
  }

  v13();
}

- (BOOL)_addSpotlightSearchIndexingStatusToProcessingSnapshot:(id)snapshot forTaskID:(unint64_t)d completedCount:(int64_t)count totalCount:(int64_t)totalCount error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - adding spotlight search indexing status to processing snapshot for taskID: %tu", buf, 0xCu);
  }

  if (d == 1)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fetching spotlight search index status with taskID PLMediaProcessingTaskID_MediaAnalysisVideo", buf, 2u);
    }

    totalAssetCount = [snapshotCopy totalAssetCount];
    if (totalAssetCount)
    {
      v17 = count / totalAssetCount;
    }

    else
    {
      v17 = 0.0;
    }

    [snapshotCopy setFractionOfAllAssetsWithMediaAnalysisInSearchIndex:v17];
    [snapshotCopy setNumberOfAssetsWithMediaAnalysisInSearchIndex:count];
    date = [MEMORY[0x1E695DF00] date];
    [snapshotCopy setDateSearchIndexSnapshotLastUpdated:date];

    v18 = PLBackendGetLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 134218240;
    dCopy = *&v17;
    v35 = 2048;
    countCopy2 = count;
    v30 = "FeatureAvailability - fractionOfAllAssetsWithAnalysisInSearchIndex: %f, numberOfAssetsWithMediaAnalysisInSearch: %lld: ";
    goto LABEL_29;
  }

  if (d == 2)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fetching spotlight search index status with taskID PLMediaProcessingTaskID_SceneAnalysis", buf, 2u);
    }

    totalCuratedAssetForScenesCount = [snapshotCopy totalCuratedAssetForScenesCount];
    if (totalCuratedAssetForScenesCount)
    {
      v14 = count / totalCuratedAssetForScenesCount;
    }

    else
    {
      v14 = 0.0;
    }

    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      dCopy = *&v14;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fractionOfCuratedAssetsWithAnalysisInSearchIndex: %f", buf, 0xCu);
    }

    v25 = fmin(v14, 1.0);
    totalAssetForScenesCount = [snapshotCopy totalAssetForScenesCount];
    if (totalAssetForScenesCount)
    {
      v27 = count / totalAssetForScenesCount;
    }

    else
    {
      v27 = 0.0;
    }

    v28 = fmin(v27, 1.0);
    [snapshotCopy setFractionOfCuratedAssetsWithSceneAnalysisInSearchIndex:v25];
    [snapshotCopy setFractionOfAllAssetsWithSceneAnalysisInSearchIndex:v28];
    [snapshotCopy setNumberOfAssetsWithSceneAnalysisInSearchIndex:count];
    date2 = [MEMORY[0x1E695DF00] date];
    [snapshotCopy setDateSearchIndexSnapshotLastUpdated:date2];

    v18 = PLBackendGetLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 134218240;
    dCopy = *&v28;
    v35 = 2048;
    countCopy2 = count;
    v30 = "FeatureAvailability - fractionOfAllAssetsWithAnalysisInSearchIndex: %f, numberOfAssetsWithSceneAnalysisInSearchIndex: %lld: ";
LABEL_29:
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, v30, buf, 0x16u);
LABEL_30:
    v23 = 1;
    goto LABEL_31;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureAvailability - %s - unexpected media processing taskID: %tu", "-[PLFeatureAvailabilityComputer _addSpotlightSearchIndexingStatusToProcessingSnapshot:forTaskID:completedCount:totalCount:error:]", d];
  v19 = PLErrorCreate();
  v20 = v19;
  if (error)
  {
    v21 = v19;
    *error = v20;
  }

  v22 = PLBackendGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    dCopy = v18;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v23 = 0;
LABEL_31:

  return v23;
}

- (BOOL)_addAnalysisStatusForMediaTaskID:(unint64_t)d toProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  contextCopy = context;
  v11 = PLPhotosSearchGetLog();
  v12 = os_signpost_id_generate(v11);

  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FeatureAvailability - AddAnalysisStatus", "", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v16 = +[PLManagedAsset entityName];
  v17 = PLSafeEntityForNameInManagedObjectContext(v16, contextCopy, 0);
  [v15 setEntity:v17];

  v18 = [objc_opt_class() _predicateForCountOfProcessedAssetsForMediaProcessingTaskID:d priority:0 versionProvider:self->_versionProvider];
  [v15 setPredicate:v18];

  v35 = 0;
  v19 = [contextCopy countForFetchRequest:v15 error:&v35];
  v20 = v35;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      dCopy2 = d;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "FeatureAvailability - Failed to fetch count of assets that have been analyzed for media task ID: %tu, error: %@", buf, 0x16u);
    }

    if (error)
    {
      v22 = v20;
      v23 = 0;
      *error = v20;
      goto LABEL_22;
    }

LABEL_17:
    v23 = 0;
    goto LABEL_22;
  }

  if (d != 2)
  {
    v26 = PLErrorCreate();
    v27 = v26;
    if (error)
    {
      v28 = v26;
      *error = v27;
    }

    v29 = PLBackendGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      dCopy2 = d;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "FeatureAvailability - unexpected media processing task ID: %tu", buf, 0xCu);
    }

    goto LABEL_17;
  }

  totalAssetForScenesCount = [snapshotCopy totalAssetForScenesCount];
  if (totalAssetForScenesCount)
  {
    v25 = v19 / totalAssetForScenesCount;
  }

  else
  {
    v25 = 0.0;
  }

  v30 = PLBackendGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    dCopy2 = *&v25;
    v38 = 2048;
    v39 = v19;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fractionOfAllAssetsAnalyzedForScenes: %f, numberOfAssetsWithAnalyzedScenes: %lu", buf, 0x16u);
  }

  [snapshotCopy setFractionOfAllAssetsAnalyzedForScenes:v25];
  v23 = 1;
LABEL_22:
  v31 = v14;
  v32 = v31;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v32, OS_SIGNPOST_INTERVAL_END, v12, "FeatureAvailability - AddAnalysisStatus", "", buf, 2u);
  }

  return v23;
}

- (BOOL)_addHighlightStatusToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  contextCopy = context;
  v8 = PLPhotosSearchGetLog();
  v9 = os_signpost_id_generate(v8);

  v10 = v8;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FeatureAvailability - HighlightProcessing", "", buf, 2u);
  }

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - adding highlight enrichment status to processing snapshot", buf, 2u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v15 = +[PLPhotosHighlight entityName];
  v16 = PLSafeEntityForNameInManagedObjectContext(v15, contextCopy, 0);
  [v14 setEntity:v16];

  v40 = 0;
  v17 = [contextCopy countForFetchRequest:v14 error:&v40];
  v18 = v40;
  if (v17)
  {
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v18;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "FeatureAvailability - Failed to fetch count of highlights, error: %@", buf, 0xCu);
      }

      if (error)
      {
        v20 = v18;
        *error = v18;
      }

      v21 = v11;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v22 = v21;
        if (os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v9, "FeatureAvailability - HighlightProcessing", "", buf, 2u);
        }
      }

      v23 = 0;
      goto LABEL_37;
    }

    _predicateForEnrichedHighlights = [objc_opt_class() _predicateForEnrichedHighlights];
    [v14 setPredicate:_predicateForEnrichedHighlights];

    v39 = v18;
    v26 = [contextCopy countForFetchRequest:v14 error:&v39];
    v27 = v39;

    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v26;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - countOfEnrichedHighlights: %lu", buf, 0xCu);
    }

    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = PLBackendGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v27;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "FeatureAvailability - Failed to fetch count of enriched highlights, error: %@", buf, 0xCu);
      }

      if (error)
      {
        v30 = v27;
        *error = v27;
      }

      v31 = v11;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = v31;
        if (os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v32, OS_SIGNPOST_INTERVAL_END, v9, "FeatureAvailability - HighlightProcessing", "", buf, 2u);
        }
      }

      v23 = 0;
      v18 = v27;
      goto LABEL_37;
    }

    [snapshotCopy setFractionOfHighlightsEnriched:v26 / v17];
    v33 = PLBackendGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      [snapshotCopy fractionOfHighlightsEnriched];
      *buf = 134217984;
      v42 = v34;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fractionOfHighlightsEnriched: %f", buf, 0xCu);
    }

    v18 = v27;
  }

  else
  {
    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - countOfAllHighlights is 0", buf, 2u);
    }

    [snapshotCopy setFractionOfHighlightsEnriched:0.0];
  }

  v35 = v11;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v36 = v35;
    if (os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v36, OS_SIGNPOST_INTERVAL_END, v9, "FeatureAvailability - HighlightProcessing", "", buf, 2u);
    }
  }

  v23 = 1;
LABEL_37:

  return v23;
}

- (BOOL)_addEmbeddingVectorIndexingStatusToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  contextCopy = context;
  v10 = PLPhotosSearchGetLog();
  v11 = os_signpost_id_generate(v10);

  v12 = v10;
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FeatureAvailability - AddVectorIndexingStateToAvailability", "", buf, 2u);
  }

  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - adding embedding vector indexing status to processing snapshot", buf, 2u);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v17 = +[PLManagedAsset entityName];
  v18 = PLSafeEntityForNameInManagedObjectContext(v17, contextCopy, 0);
  [v16 setEntity:v18];

  v19 = [objc_opt_class() _predicateForCountOfProcessedAssetsForMediaProcessingTaskID:17 priority:0 versionProvider:self->_versionProvider];
  [v16 setPredicate:v19];

  v31 = 0;
  v20 = [contextCopy countForFetchRequest:v16 error:&v31];
  v21 = v31;
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = *&v21;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "FeatureAvailability - Failed to fetch count of assets with mediaAnalysisImageVersion, error: %@", buf, 0xCu);
    }

    if (error)
    {
      v25 = v21;
      *error = v21;
    }

    v26 = v13;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
LABEL_22:
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_END, v11, "FeatureAvailability - AddVectorIndexingStateToAvailability", "", buf, 2u);
      }
    }
  }

  else
  {
    totalCuratedAssetCount = [snapshotCopy totalCuratedAssetCount];
    if (totalCuratedAssetCount)
    {
      v23 = v20 / totalCuratedAssetCount;
    }

    else
    {
      v23 = 0.0;
    }

    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = v23;
      v34 = 2048;
      v35 = v20;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fractionOfCuratedAssetsWithEmbeddings: %f, numberOfCuratedAssetsWithEmbeddings: %lu", buf, 0x16u);
    }

    [snapshotCopy setFractionOfCuratedAssetsWithEmbeddingsInVectorIndex:{fmin(v23, 1.0)}];
    v29 = v13;
    if (v14 < 0xFFFFFFFFFFFFFFFELL)
    {
      v27 = v29;
      if (os_signpost_enabled(v29))
      {
        *buf = 0;
        goto LABEL_22;
      }
    }
  }

  return v20 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_onDemand_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  handlerCopy = handler;
  v10 = PLPhotosSearchGetLog();
  v11 = os_signpost_id_generate(v10);

  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FeatureAvailability - VisualUnderstandingClustering", "", buf, 2u);
  }

  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - adding VU cluster index status to processing snapshot", buf, 2u);
  }

  pathManager = [libraryCopy pathManager];
  libraryURL = [pathManager libraryURL];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __135__PLFeatureAvailabilityComputer__onDemand_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot_photoLibrary_completionHandler___block_invoke;
  v21[3] = &unk_1F0F05790;
  v17 = v13;
  v25 = v17;
  v26 = v11;
  v18 = handlerCopy;
  v24 = v18;
  v19 = snapshotCopy;
  v22 = v19;
  v20 = libraryCopy;
  v23 = v20;
  [PLMediaAnalysisServiceRequestAdapter queryVUIndexAssetCountForType:0 photoLibraryURL:libraryURL completionHandler:v21];
}

void __135__PLFeatureAvailabilityComputer__onDemand_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot_photoLibrary_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = a3;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__86653;
  v16[4] = __Block_byref_object_dispose__86654;
  v5 = a4;
  v17 = v5;
  v6 = +[PLConcurrencyLimiter sharedLimiter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3254779904;
  v9[2] = __135__PLFeatureAvailabilityComputer__onDemand_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot_photoLibrary_completionHandler___block_invoke_2;
  v9[3] = &unk_1F0F05758;
  v12 = v16;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v14 = v7;
  v15 = v8;
  v11 = *(a1 + 48);
  v10 = *(a1 + 32);
  v13 = v18;
  [v6 async:v9 identifyingBlock:0 library:*(a1 + 40)];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

uint64_t __135__PLFeatureAvailabilityComputer__onDemand_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot_photoLibrary_completionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "FeatureAvailability - Encountered an error when querying for VU cluster index status.", &v13, 2u);
    }

    v3 = *(a1 + 64);
    v4 = v3;
    v5 = *(a1 + 72);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v4, OS_SIGNPOST_INTERVAL_END, v5, "FeatureAvailability - VisualUnderstandingClustering", "", &v13, 2u);
    }
  }

  else
  {
    v6 = [*(a1 + 32) totalCuratedAssetCount];
    if (v6)
    {
      v7 = *(*(*(a1 + 56) + 8) + 24) / v6;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 56) + 8) + 24);
      v13 = 134218240;
      v14 = v7;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fractionOfCuratedAssetsIndexedInVUClustering: %f, numberOfCuratedAssetsIndexedInVUClustering: %lu", &v13, 0x16u);
    }

    [*(a1 + 32) setFractionOfCuratedAssetsIndexedInVUClustering:{fmin(v7, 1.0)}];
    v10 = *(a1 + 64);
    v4 = v10;
    v11 = *(a1 + 72);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v4, OS_SIGNPOST_INTERVAL_END, v11, "FeatureAvailability - VisualUnderstandingClustering", "", &v13, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)_addCaptioningStatusToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  contextCopy = context;
  v10 = PLPhotosSearchGetLog();
  v11 = os_signpost_id_generate(v10);

  v12 = v10;
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FeatureAvailability - Captioning", "", buf, 2u);
  }

  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - adding captioning status to processing snapshot", buf, 2u);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v17 = +[PLManagedAsset entityName];
  v18 = PLSafeEntityForNameInManagedObjectContext(v17, contextCopy, 0);
  [v16 setEntity:v18];

  v19 = [objc_opt_class() _predicateForCountOfProcessedAssetsForMediaProcessingTaskID:17 priority:0 versionProvider:self->_versionProvider];
  [v16 setPredicate:v19];

  v34 = 0;
  v20 = [contextCopy countForFetchRequest:v16 error:&v34];
  v21 = v34;
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[PLFeatureAvailabilityComputer _addCaptioningStatusToProcessingSnapshot:managedObjectContext:error:]";
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
    }

    if (error)
    {
      v25 = v21;
      *error = v21;
    }

    v26 = v13;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
LABEL_27:
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_END, v11, "FeatureAvailability - Captioning", "", buf, 2u);
      }
    }
  }

  else
  {
    totalCuratedAssetCount = [snapshotCopy totalCuratedAssetCount];
    if (totalCuratedAssetCount)
    {
      v23 = v20 / totalCuratedAssetCount;
    }

    else
    {
      v23 = 0.0;
    }

    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = *&v23;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fractionOfCuratedAssetsWithCaptions: %f", buf, 0xCu);
    }

    [snapshotCopy setFractionOfCuratedAssetsWithCaptions:{fmin(v23, 1.0)}];
    totalAssetCount = [snapshotCopy totalAssetCount];
    if (totalAssetCount)
    {
      v30 = v20 / totalAssetCount;
    }

    else
    {
      v30 = 0.0;
    }

    v31 = PLBackendGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = *&v30;
      v37 = 2048;
      v38 = v20;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fractionOfAllAssetsWithCaptions: %f, numberOfAssetsWithCaptions: %lu", buf, 0x16u);
    }

    [snapshotCopy setFractionOfAllAssetsWithCaptions:v30];
    v32 = v13;
    if (v14 < 0xFFFFFFFFFFFFFFFELL)
    {
      v27 = v32;
      if (os_signpost_enabled(v32))
      {
        *buf = 0;
        goto LABEL_27;
      }
    }
  }

  return v20 != 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_assetCountForPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  v7 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  predicateCopy = predicate;
  v10 = objc_alloc_init(v7);
  v11 = +[PLManagedAsset entityName];
  v12 = PLSafeEntityForNameInManagedObjectContext(v11, contextCopy, 0);
  [v10 setEntity:v12];

  [v10 setPredicate:predicateCopy];
  v16 = 0;
  v13 = [contextCopy countForFetchRequest:v10 error:&v16];

  v14 = v16;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      v14 = v14;
      v13 = 0;
      *error = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)_addAssetCountsToProcessingSnapshot:(id)snapshot managedObjectContext:(id)context forSceneAnalysis:(BOOL)analysis error:(id *)error
{
  analysisCopy = analysis;
  v48 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  contextCopy = context;
  v11 = PLPhotosSearchGetLog();
  v12 = os_signpost_id_generate(v11);

  v13 = v11;
  v14 = v13;
  spid = v12;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FeatureAvailability - InitializeCounts", "", buf, 2u);
  }

  if (analysisCopy)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      totalAssetForScenesCount = [snapshotCopy totalAssetForScenesCount];
      *buf = 134217984;
      v45 = totalAssetForScenesCount;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - resetting count before setting, before reset totalAssetForScenesCount: %lu", buf, 0xCu);
    }

    [snapshotCopy setTotalCuratedAssetForScenesCount:0];
    [snapshotCopy setTotalAssetForScenesCount:0];
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      totalAssetCount = [snapshotCopy totalAssetCount];
      *buf = 134217984;
      v45 = totalAssetCount;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - resetting count before setting, before reset totalAssetCount: %lu", buf, 0xCu);
    }

    [snapshotCopy setTotalCuratedAssetCount:0];
    [snapshotCopy setTotalAssetCount:0];
  }

  v20 = [objc_opt_class() _predicateForAllAssetsAllowedForProcessingForSceneAnalysis:analysisCopy];
  v43 = 0;
  v21 = [(PLFeatureAvailabilityComputer *)self _assetCountForPredicate:v20 managedObjectContext:contextCopy error:&v43];
  v22 = v43;
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[PLFeatureAvailabilityComputer _addAssetCountsToProcessingSnapshot:managedObjectContext:forSceneAnalysis:error:]";
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
    }

    if (error)
    {
      v24 = v22;
      *error = v22;
    }

    v25 = v14;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = v25;
      if (os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, spid, "FeatureAvailability - InitializeCounts", "", buf, 2u);
      }
    }

    v27 = 0;
  }

  else
  {
    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"No";
      if (analysisCopy)
      {
        v29 = @"Yes";
      }

      *buf = 134218242;
      v45 = v21;
      v46 = 2112;
      v47 = v29;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - totalCount all assets allowed for processing: %lu (forSceneAnalysis: %@)", buf, 0x16u);
    }

    v30 = [objc_opt_class() _predicateForAllCuratedAssetsForSceneAnalysis:analysisCopy];

    v42 = v22;
    v31 = [(PLFeatureAvailabilityComputer *)self _assetCountForPredicate:v30 managedObjectContext:contextCopy error:&v42];
    v32 = v42;

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = PLBackendGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "[PLFeatureAvailabilityComputer _addAssetCountsToProcessingSnapshot:managedObjectContext:forSceneAnalysis:error:]";
        v46 = 2112;
        v47 = v32;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
      }

      if (error)
      {
        v34 = v32;
        *error = v32;
      }

      v35 = v14;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = v35;
        if (os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v36, OS_SIGNPOST_INTERVAL_END, spid, "FeatureAvailability - InitializeCounts", "", buf, 2u);
        }
      }

      v27 = 0;
    }

    else
    {
      if (analysisCopy)
      {
        [snapshotCopy setTotalAssetForScenesCount:v21];
        [snapshotCopy setTotalCuratedAssetForScenesCount:v31];
      }

      else
      {
        [snapshotCopy setTotalAssetCount:v21];
        [snapshotCopy setTotalCuratedAssetCount:v31];
      }

      v37 = v14;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v38 = v37;
        if (os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v38, OS_SIGNPOST_INTERVAL_END, spid, "FeatureAvailability - InitializeCounts", "", buf, 2u);
        }
      }

      v27 = 1;
    }

    v20 = v30;
    v22 = v32;
  }

  return v27;
}

- (void)_addVersionsToProcessingSnapshot:(id)snapshot
{
  versionProvider = self->_versionProvider;
  snapshotCopy = snapshot;
  [snapshotCopy setMediaAnalysisImageVersion:{-[PLMediaProcessingAlgorithmVersionProvider mediaAnalysisImageVersion](versionProvider, "mediaAnalysisImageVersion")}];
  [snapshotCopy setHasConsistentMediaAnalysisImageVersion:1];
}

- (BOOL)_shouldStopWithProgress:(id)progress afterCallingCompletionHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  isCancelled = [progress isCancelled];
  if (isCancelled)
  {
    v7 = MEMORY[0x1E69BF2D0];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v14 = *MEMORY[0x1E696A278];
    v15[0] = @"Feature Availability computation cancelled";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v8 errorWithDomain:v9 code:41031 userInfo:v10];
    v12 = [v7 failureWithError:v11];
    handlerCopy[2](handlerCopy, v12);
  }

  return isCancelled;
}

- (void)_addMediaAnalysisIndexingToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __119__PLFeatureAvailabilityComputer__addMediaAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v17[3] = &unk_1E7573210;
  v14 = handlerCopy;
  v20 = v14;
  objc_copyWeak(&v21, &location);
  v15 = progressCopy;
  v18 = v15;
  v16 = snapshotCopy;
  v19 = v16;
  [(PLFeatureAvailabilityComputer *)self _fetchSpotlightSearchIndexingStatusForTaskID:1 photoLibrary:libraryCopy completionHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __119__PLFeatureAvailabilityComputer__addMediaAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(id *a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = +[PLConcurrencyLimiter sharedLimiter];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __119__PLFeatureAvailabilityComputer__addMediaAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke_2;
  v12[3] = &unk_1E75731E8;
  v18 = a2;
  v11 = v9;
  v13 = v11;
  v16 = a1[6];
  objc_copyWeak(v17, a1 + 7);
  v14 = a1[4];
  v15 = a1[5];
  v17[1] = a3;
  v17[2] = a4;
  [v10 sync:v12 identifyingBlock:0 library:0];

  objc_destroyWeak(v17);
}

void __119__PLFeatureAvailabilityComputer__addMediaAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addMediaAnalysisIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 40), *(a1 + 56));

    if (v3)
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - adding media analysis video spotlight search indexing status in block", buf, 2u);
      }

      v5 = *(a1 + 48);
      v6 = *(a1 + 72);
      v7 = *(a1 + 80);
      v17 = 0;
      v8 = [v3 _addSpotlightSearchIndexingStatusToProcessingSnapshot:v5 forTaskID:1 completedCount:v6 totalCount:v7 error:&v17];
      v9 = v17;
      if (v8)
      {
        [*(a1 + 40) setCompletedUnitCount:12];
        v10 = PLBackendGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v19 = "[PLFeatureAvailabilityComputer _addMediaAnalysisIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - %s - finished all processing steps, will signal complete with populated processing snapshot", buf, 0xCu);
        }

        v11 = [MEMORY[0x1E69BF2D0] successWithResult:*(a1 + 48)];
      }

      else
      {
        v15 = PLBackendGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "[PLFeatureAvailabilityComputer _addMediaAnalysisIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
        }

        v11 = [MEMORY[0x1E69BF2D0] failureWithError:v9];
      }

      v16 = v11;
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 136315394;
      v19 = "[PLFeatureAvailabilityComputer _addMediaAnalysisIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke_2";
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
    }

    v14 = *(a1 + 56);
    v3 = [MEMORY[0x1E69BF2D0] failureWithError:*(a1 + 32)];
    (*(v14 + 16))(v14, v3);
  }
}

- (void)_addSceneAnalysisIndexingToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - fetching spotlight search indexing status for scene analysis", buf, 2u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__PLFeatureAvailabilityComputer__addSceneAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v19[3] = &unk_1E75731C0;
  v15 = handlerCopy;
  v23 = v15;
  objc_copyWeak(&v24, &location);
  v16 = progressCopy;
  v20 = v16;
  v17 = snapshotCopy;
  v21 = v17;
  v18 = libraryCopy;
  v22 = v18;
  [(PLFeatureAvailabilityComputer *)self _fetchSpotlightSearchIndexingStatusForTaskID:2 photoLibrary:v18 completionHandler:v19];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __119__PLFeatureAvailabilityComputer__addSceneAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(id *a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = +[PLConcurrencyLimiter sharedLimiter];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __119__PLFeatureAvailabilityComputer__addSceneAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7573198;
  v19 = a2;
  v11 = v9;
  v13 = v11;
  v17 = a1[7];
  objc_copyWeak(v18, a1 + 8);
  v14 = a1[4];
  v15 = a1[5];
  v18[1] = a3;
  v18[2] = a4;
  v16 = a1[6];
  [v10 sync:v12 identifyingBlock:0 library:0];

  objc_destroyWeak(v18);
}

void __119__PLFeatureAvailabilityComputer__addSceneAnalysisIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addSceneAnalysisIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 40), *(a1 + 64));

    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 80);
      v6 = *(a1 + 88);
      v15 = 0;
      v7 = [v3 _addSpotlightSearchIndexingStatusToProcessingSnapshot:v4 forTaskID:2 completedCount:v5 totalCount:v6 error:&v15];
      v8 = v15;
      if (v7)
      {
        [*(a1 + 40) setCompletedUnitCount:11];
        [v3 _addMediaAnalysisIndexingToProcessingSnapshot:*(a1 + 48) photoLibrary:*(a1 + 56) progress:*(a1 + 40) completionHandler:*(a1 + 64)];
      }

      else
      {
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "[PLFeatureAvailabilityComputer _addSceneAnalysisIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
        }

        v13 = *(a1 + 64);
        v14 = [MEMORY[0x1E69BF2D0] failureWithError:v8];
        (*(v13 + 16))(v13, v14);
      }
    }
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 136315394;
      v17 = "[PLFeatureAvailabilityComputer _addSceneAnalysisIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke_2";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
    }

    v11 = *(a1 + 64);
    v3 = [MEMORY[0x1E69BF2D0] failureWithError:*(a1 + 32)];
    (*(v11 + 16))(v11, v3);
  }
}

- (void)_addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  v14 = PLPhotosSearchGetLog();
  v15 = os_signpost_id_generate(v14);

  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "FeatureAvailability - PhotosKnowledgeGraph", "", buf, 2u);
  }

  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - adding knowledge graph status to processing snapshot", buf, 2u);
  }

  v19 = [PLPhotoAnalysisMomentGraphService alloc];
  photoAnalysisClient = [libraryCopy photoAnalysisClient];
  v21 = [(PLPhotoAnalysisMomentGraphService *)v19 initWithServiceProvider:photoAnalysisClient];

  if (v21)
  {
    objc_initWeak(buf, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3254779904;
    v26[2] = __130__PLFeatureAvailabilityComputer__addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
    v26[3] = &unk_1F0F05720;
    objc_copyWeak(&v31, buf);
    v27 = progressCopy;
    v30 = handlerCopy;
    v32 = v17;
    v33 = v15;
    v28 = snapshotCopy;
    v29 = libraryCopy;
    [(PLPhotoAnalysisMomentGraphService *)v21 requestGraphIsAvailableWithReply:v26];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = PLErrorCreate();
    v23 = v17;
    v24 = v23;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v15, "FeatureAvailability - PhotosKnowledgeGraph", "", buf, 2u);
    }

    v25 = [MEMORY[0x1E69BF2D0] failureWithError:v22];
    (*(handlerCopy + 2))(handlerCopy, v25);
  }
}

void __130__PLFeatureAvailabilityComputer__addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[PLConcurrencyLimiter sharedLimiter];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3254779904;
  v12[2] = __130__PLFeatureAvailabilityComputer__addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke_2;
  v12[3] = &unk_1F0F056E8;
  objc_copyWeak(&v19, (a1 + 64));
  v13 = *(a1 + 32);
  v18 = *(a1 + 56);
  v8 = v5;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v20 = v10;
  v21 = v11;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  [v7 async:v12 identifyingBlock:0 library:0];

  objc_destroyWeak(&v19);
}

void __130__PLFeatureAvailabilityComputer__addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke_2", *(a1 + 32), *(a1 + 72));

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      [*(a1 + 56) setPhotosKnowledgeGraphIsReady:{objc_msgSend(v4, "BOOLValue")}];
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 56) photosKnowledgeGraphIsReady];
        v17 = 67109120;
        LODWORD(v18) = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - photosKnowledgeGraphIsReady: %d", &v17, 8u);
      }

      [*(a1 + 32) setCompletedUnitCount:10];
      v7 = *(a1 + 88);
      v8 = v7;
      v9 = *(a1 + 96);
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        LOWORD(v17) = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v9, "FeatureAvailability - PhotosKnowledgeGraph", "", &v17, 2u);
      }

      [v3 _addSceneAnalysisIndexingToProcessingSnapshot:*(a1 + 56) photoLibrary:*(a1 + 64) progress:*(a1 + 32) completionHandler:*(a1 + 72)];
    }

    else
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 48);
        v17 = 136315394;
        v18 = "[PLFeatureAvailabilityComputer _addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke_2";
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", &v17, 0x16u);
      }

      v12 = *(a1 + 88);
      v13 = v12;
      v14 = *(a1 + 96);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(v17) = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "FeatureAvailability - PhotosKnowledgeGraph", "", &v17, 2u);
      }

      v15 = *(a1 + 72);
      v16 = [MEMORY[0x1E69BF2D0] failureWithError:*(a1 + 48)];
      (*(v15 + 16))(v15, v16);
    }
  }
}

- (void)_addVUIndexFullClusterStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  v14 = PLPhotosSearchGetLog();
  v15 = os_signpost_id_generate(v14);

  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "FeatureAvailability - VUIndexFullClusterStatus", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __122__PLFeatureAvailabilityComputer__addVUIndexFullClusterStatusToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v23[3] = &unk_1F0F056B0;
  v29 = v17;
  v30 = v15;
  v18 = v17;
  objc_copyWeak(&v28, buf);
  v19 = progressCopy;
  v24 = v19;
  v20 = handlerCopy;
  v27 = v20;
  v21 = snapshotCopy;
  v25 = v21;
  v22 = libraryCopy;
  v26 = v22;
  [(PLFeatureAvailabilityComputer *)self _updateVUClusterStateInProcessingSnapshot:v21 photoLibrary:v22 completionHandler:v23];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

void __122__PLFeatureAvailabilityComputer__addVUIndexFullClusterStatusToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 72);
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "FeatureAvailability - VUIndexFullClusterStatus", "", v12, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addVUIndexFullClusterStatusToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v10)
  {
    if (a2)
    {
      [*(a1 + 32) setCompletedUnitCount:9];
      [v10 _addPhotosKnowledgeGraphAvailabilityToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v11 = [MEMORY[0x1E69BF2D0] failureWithError:v5];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)_addSceneAnalysisToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __111__PLFeatureAvailabilityComputer__addSceneAnalysisToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v18[3] = &unk_1E7573148;
  objc_copyWeak(&v23, &location);
  v14 = progressCopy;
  v19 = v14;
  v15 = handlerCopy;
  v22 = v15;
  v16 = snapshotCopy;
  v20 = v16;
  v17 = libraryCopy;
  v21 = v17;
  [v17 performBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __111__PLFeatureAvailabilityComputer__addSceneAnalysisToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addSceneAnalysisToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) managedObjectContext];
    v10 = 0;
    v6 = [v3 _addAnalysisStatusForMediaTaskID:2 toProcessingSnapshot:v4 managedObjectContext:v5 error:&v10];
    v7 = v10;

    if (v6)
    {
      [*(a1 + 32) setCompletedUnitCount:8];
      [v3 _addVUIndexFullClusterStatusToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[PLFeatureAvailabilityComputer _addSceneAnalysisToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)_addHighlightStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__PLFeatureAvailabilityComputer__addHighlightStatusToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v18[3] = &unk_1E7573148;
  objc_copyWeak(&v23, &location);
  v14 = progressCopy;
  v19 = v14;
  v15 = handlerCopy;
  v22 = v15;
  v16 = snapshotCopy;
  v20 = v16;
  v17 = libraryCopy;
  v21 = v17;
  [v17 performBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __113__PLFeatureAvailabilityComputer__addHighlightStatusToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addHighlightStatusToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) managedObjectContext];
    v10 = 0;
    v6 = [v3 _addHighlightStatusToProcessingSnapshot:v4 managedObjectContext:v5 error:&v10];
    v7 = v10;

    if (v6)
    {
      [*(a1 + 32) setCompletedUnitCount:7];
      [v3 _addSceneAnalysisToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[PLFeatureAvailabilityComputer _addHighlightStatusToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __135__PLFeatureAvailabilityComputer__addVisualUnderstandingClusterIndexStatusToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v18[3] = &unk_1E7573170;
  objc_copyWeak(&v23, &location);
  v14 = progressCopy;
  v19 = v14;
  v15 = handlerCopy;
  v22 = v15;
  v16 = snapshotCopy;
  v20 = v16;
  v17 = libraryCopy;
  v21 = v17;
  [(PLFeatureAvailabilityComputer *)self _onDemand_addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:v16 photoLibrary:v17 completionHandler:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __135__PLFeatureAvailabilityComputer__addVisualUnderstandingClusterIndexStatusToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v7)
  {
    if (a2)
    {
      [*(a1 + 32) setCompletedUnitCount:6];
      [v7 _addHighlightStatusToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[PLFeatureAvailabilityComputer _addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", &v10, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v5];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)_addEmbeddingIndexingToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __115__PLFeatureAvailabilityComputer__addEmbeddingIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v18[3] = &unk_1E7573148;
  objc_copyWeak(&v23, &location);
  v14 = progressCopy;
  v19 = v14;
  v15 = handlerCopy;
  v22 = v15;
  v16 = snapshotCopy;
  v20 = v16;
  v17 = libraryCopy;
  v21 = v17;
  [v17 performBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __115__PLFeatureAvailabilityComputer__addEmbeddingIndexingToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addEmbeddingIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) managedObjectContext];
    v10 = 0;
    v6 = [v3 _addEmbeddingVectorIndexingStatusToProcessingSnapshot:v4 managedObjectContext:v5 error:&v10];
    v7 = v10;

    if (v6)
    {
      [*(a1 + 32) setCompletedUnitCount:5];
      [v3 _addVisualUnderstandingClusterIndexStatusToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[PLFeatureAvailabilityComputer _addEmbeddingIndexingToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)_addCaptioningToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __108__PLFeatureAvailabilityComputer__addCaptioningToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v18[3] = &unk_1E7573148;
  objc_copyWeak(&v23, &location);
  v14 = progressCopy;
  v19 = v14;
  v15 = handlerCopy;
  v22 = v15;
  v16 = snapshotCopy;
  v20 = v16;
  v17 = libraryCopy;
  v21 = v17;
  [v17 performBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __108__PLFeatureAvailabilityComputer__addCaptioningToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addCaptioningToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) managedObjectContext];
    v10 = 0;
    v6 = [v3 _addCaptioningStatusToProcessingSnapshot:v4 managedObjectContext:v5 error:&v10];
    v7 = v10;

    if (v6)
    {
      [*(a1 + 32) setCompletedUnitCount:4];
      [v3 _addEmbeddingIndexingToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[PLFeatureAvailabilityComputer _addCaptioningToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)_addAssetForSceneCountsToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__PLFeatureAvailabilityComputer__addAssetForSceneCountsToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v18[3] = &unk_1E7573148;
  objc_copyWeak(&v23, &location);
  v14 = progressCopy;
  v19 = v14;
  v15 = handlerCopy;
  v22 = v15;
  v16 = snapshotCopy;
  v20 = v16;
  v17 = libraryCopy;
  v21 = v17;
  [v17 performBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __117__PLFeatureAvailabilityComputer__addAssetForSceneCountsToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addAssetForSceneCountsToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) managedObjectContext];
    v10 = 0;
    v6 = [v3 _addAssetCountsToProcessingSnapshot:v4 managedObjectContext:v5 forSceneAnalysis:1 error:&v10];
    v7 = v10;

    if (v6)
    {
      [*(a1 + 32) setCompletedUnitCount:3];
      [v3 _addCaptioningToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[PLFeatureAvailabilityComputer _addAssetForSceneCountsToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)_addAssetCountsToProcessingSnapshot:(id)snapshot photoLibrary:(id)library progress:(id)progress completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__PLFeatureAvailabilityComputer__addAssetCountsToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke;
  v18[3] = &unk_1E7573148;
  objc_copyWeak(&v23, &location);
  v14 = progressCopy;
  v19 = v14;
  v15 = handlerCopy;
  v22 = v15;
  v16 = snapshotCopy;
  v20 = v16;
  v17 = libraryCopy;
  v21 = v17;
  [v17 performBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __109__PLFeatureAvailabilityComputer__addAssetCountsToProcessingSnapshot_photoLibrary_progress_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = PLCheckForStrongRefAndCancellationFromFunctionName(WeakRetained, "[PLFeatureAvailabilityComputer _addAssetCountsToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke", *(a1 + 32), *(a1 + 56));

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) managedObjectContext];
    v10 = 0;
    v6 = [v3 _addAssetCountsToProcessingSnapshot:v4 managedObjectContext:v5 forSceneAnalysis:0 error:&v10];
    v7 = v10;

    if (v6)
    {
      [*(a1 + 32) setCompletedUnitCount:2];
      [v3 _addAssetForSceneCountsToProcessingSnapshot:*(a1 + 40) photoLibrary:*(a1 + 48) progress:*(a1 + 32) completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[PLFeatureAvailabilityComputer _addAssetCountsToProcessingSnapshot:photoLibrary:progress:completionHandler:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (BOOL)failAvailabilityForPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FeatureAvailability - FailAvailability", "", buf, 2u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__86653;
  v32 = __Block_byref_object_dispose__86654;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v11 = +[PLConcurrencyLimiter sharedLimiter];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__PLFeatureAvailabilityComputer_failAvailabilityForPhotoLibrary_error___block_invoke;
  v20[3] = &unk_1E7578898;
  v22 = &v24;
  v20[4] = self;
  v12 = libraryCopy;
  v21 = v12;
  v23 = buf;
  [v11 sync:v20 identifyingBlock:0 library:0];

  v13 = *(v25 + 24);
  v14 = *(v29 + 5);
  if (error && (v13 & 1) == 0)
  {
    v14 = v14;
    *error = v14;
  }

  v15 = v10;
  v16 = v15;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v8, "FeatureAvailability - FailAvailability", "", v19, 2u);
  }

  v17 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

void __71__PLFeatureAvailabilityComputer_failAvailabilityForPhotoLibrary_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _failAvailabilityForPhotoLibrary:v3 error:&obj];
  v5 = obj;
  *(*(a1[6] + 8) + 24) = v4;
  objc_storeStrong((*(a1[7] + 8) + 40), v5);
}

- (BOOL)clearAvailabilityStateForPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FeatureAvailability - ClearAvailability", "", buf, 2u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__86653;
  v32 = __Block_byref_object_dispose__86654;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v11 = +[PLConcurrencyLimiter sharedLimiter];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__PLFeatureAvailabilityComputer_clearAvailabilityStateForPhotoLibrary_error___block_invoke;
  v20[3] = &unk_1E7578898;
  v22 = &v24;
  v20[4] = self;
  v12 = libraryCopy;
  v21 = v12;
  v23 = buf;
  [v11 sync:v20 identifyingBlock:0 library:0];

  v13 = *(v25 + 24);
  v14 = *(v29 + 5);
  if (error && (v13 & 1) == 0)
  {
    v14 = v14;
    *error = v14;
  }

  v15 = v10;
  v16 = v15;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v8, "FeatureAvailability - ClearAvailability", "", v19, 2u);
  }

  v17 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

void __77__PLFeatureAvailabilityComputer_clearAvailabilityStateForPhotoLibrary_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _clearAvailabilityForPhotoLibrary:v3 error:&obj];
  v5 = obj;
  *(*(a1[6] + 8) + 24) = v4;
  objc_storeStrong((*(a1[7] + 8) + 40), v5);
}

- (id)computeAvailabilityForPhotoLibrary:(id)library shouldPersist:(BOOL)persist completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v10 = PLPhotosSearchGetLog();
  v11 = os_signpost_id_generate(v10);

  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FeatureAvailability - ComputeAndPersistAvailability", "", buf, 2u);
  }

  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - computing feature availability", buf, 2u);
  }

  objc_initWeak(buf, self);
  v15 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:13];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __100__PLFeatureAvailabilityComputer_computeAvailabilityForPhotoLibrary_shouldPersist_completionHandler___block_invoke;
  v23[3] = &unk_1F0F05678;
  v16 = v13;
  v28 = v16;
  v29 = v11;
  v17 = handlerCopy;
  v26 = v17;
  objc_copyWeak(&v27, buf);
  v18 = libraryCopy;
  v24 = v18;
  persistCopy = persist;
  v19 = v15;
  v25 = v19;
  v20 = [(PLFeatureAvailabilityComputer *)self computeSnapshotForPhotoLibrary:v18 completionHandler:v23];
  [v19 addChild:v20 withPendingUnitCount:{objc_msgSend(v20, "totalUnitCount")}];
  v21 = v19;

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  return v21;
}

void __100__PLFeatureAvailabilityComputer_computeAvailabilityForPhotoLibrary_shouldPersist_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 error];
      *buf = 136315394;
      v26 = "[PLFeatureAvailabilityComputer computeAvailabilityForPhotoLibrary:shouldPersist:completionHandler:]_block_invoke";
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "FeatureAvailability - %s - failed with error: %@", buf, 0x16u);
    }

    v6 = MEMORY[0x1E69BF2D0];
    v7 = [v3 error];
    WeakRetained = [v6 failureWithError:v7];

    v9 = *(a1 + 64);
    v10 = v9;
    v11 = *(a1 + 72);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FeatureAvailability - ComputeAndPersistAvailability", "", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v12 = [v3 result];
      v13 = *(a1 + 32);
      v14 = *(a1 + 80);
      v24 = 0;
      v15 = [WeakRetained _computeAvailabilityForSnapshot:v12 photoLibrary:v13 shouldPersist:v14 error:&v24];
      v16 = v24;

      if (v15)
      {
        [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
        [MEMORY[0x1E69BF2D0] successWithResult:v15];
      }

      else
      {
        [MEMORY[0x1E69BF2D0] failureWithError:v16];
      }
      v19 = ;
    }

    else
    {
      v17 = MEMORY[0x1E69BF2D0];
      v18 = _PLMissingWeakSelfErrorFromFunctionName("[PLFeatureAvailabilityComputer computeAvailabilityForPhotoLibrary:shouldPersist:completionHandler:]_block_invoke");
      v19 = [v17 failureWithError:v18];
    }

    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - finished computing feature availability", buf, 2u);
    }

    v21 = *(a1 + 64);
    v22 = v21;
    v23 = *(a1 + 72);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "FeatureAvailability - ComputeAndPersistAvailability", "", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)computeSnapshotForPhotoLibrary:(id)library completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v8 = PLPhotosSearchGetLog();
  v9 = os_signpost_id_generate(v8);

  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FeatureAvailability - TotalSnapshotCompute", "", buf, 2u);
  }

  v12 = objc_alloc_init(PLFeatureProcessingSnapshot);
  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - computing processing snapshot", buf, 2u);
  }

  v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:12];
  [(PLFeatureAvailabilityComputer *)self _addVersionsToProcessingSnapshot:v12];
  [v14 setCompletedUnitCount:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3254779904;
  v18[2] = __82__PLFeatureAvailabilityComputer_computeSnapshotForPhotoLibrary_completionHandler___block_invoke;
  v18[3] = &unk_1F0F05640;
  v15 = v11;
  v20 = v15;
  v21 = v9;
  v16 = handlerCopy;
  v19 = v16;
  [(PLFeatureAvailabilityComputer *)self _addAssetCountsToProcessingSnapshot:v12 photoLibrary:libraryCopy progress:v14 completionHandler:v18];

  return v14;
}

void __82__PLFeatureAvailabilityComputer_computeSnapshotForPhotoLibrary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuccess])
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [v3 result];
    [v5 setDateComputed:v4];
  }

  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "FeatureAvailability - finished computed processing snapshot", buf, 2u);
  }

  v7 = *(a1 + 40);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v9, "FeatureAvailability - TotalSnapshotCompute", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (PLFeatureAvailabilityComputer)initWithTransitionDelegate:(id)delegate progressDelegate:(id)progressDelegate
{
  delegateCopy = delegate;
  progressDelegateCopy = progressDelegate;
  v14.receiver = self;
  v14.super_class = PLFeatureAvailabilityComputer;
  v8 = [(PLFeatureAvailabilityComputer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_transitionDelegate, delegateCopy);
    objc_storeWeak(&v9->_progressDelegate, progressDelegateCopy);
    v10 = +[PLFeatureProcessingAlgorithmVersionProvider provider];
    versionProvider = v9->_versionProvider;
    v9->_versionProvider = v10;

    v12 = v9;
  }

  return v9;
}

+ (id)_predicateForEnrichedHighlights
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"enrichmentState", 4];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %K", @"enrichmentVersion", @"highlightVersion"];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)_savedAssetTypePredicateForSceneAnalysis:(BOOL)analysis
{
  v3 = [MEMORY[0x1E69BF328] maskForFeatureAvailabilityForSceneAnalysis:analysis];
  v4 = MEMORY[0x1E69BF328];

  return [v4 predicateForIncludeMask:v3 useIndex:1];
}

+ (id)_predicatesForVisibleAssets
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[PLManagedAsset predicateToExcludeHiddenAssets];
  if (v3)
  {
    [v2 addObject:v3];
  }

  v4 = +[PLManagedAsset predicateToExcludeTrashedAssets];

  if (v4)
  {
    [v2 addObject:v4];
  }

  v5 = +[PLManagedAsset predicateToExcludeNonvisibleBurstAssets];

  if (v5)
  {
    [v2 addObject:v5];
  }

  return v2;
}

+ (id)_predicateForAllAssetsAllowedForProcessingForSceneAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = +[PLManagedAsset predicateToIncludeOnlyAllowedForAnalysisAssets];
  if (v5)
  {
    [v4 addObject:v5];
  }

  _predicatesForVisibleAssets = [objc_opt_class() _predicatesForVisibleAssets];
  [v4 addObjectsFromArray:_predicatesForVisibleAssets];

  v7 = [objc_opt_class() _savedAssetTypePredicateForSceneAnalysis:analysisCopy];
  [v4 addObject:v7];

  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      [v4 firstObject];
    }

    else
    {
      [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_predicateForAllCuratedAssetsForSceneAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = PLExtendedAssetsInHighlightPredicate();
  if (v5)
  {
    [v4 addObject:v5];
  }

  v6 = +[PLManagedAsset predicateToIncludeOnlyAllowedForAnalysisAssets];

  if (v6)
  {
    [v4 addObject:v6];
  }

  _predicatesForVisibleAssets = [objc_opt_class() _predicatesForVisibleAssets];
  [v4 addObjectsFromArray:_predicatesForVisibleAssets];

  v8 = [objc_opt_class() _savedAssetTypePredicateForSceneAnalysis:analysisCopy];
  [v4 addObject:v8];

  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      [v4 firstObject];
    }

    else
    {
      [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end