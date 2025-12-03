@interface PLAnalysisCoordinatorStepSearchIndexing
- (void)_batchIndexAssetStartingAtIndex:(unint64_t)index withAssetIDs:(id)ds searchIndexingEngine:(id)engine library:(id)library progress:(id)progress withCompletionHandler:(id)handler;
- (void)_performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler;
- (void)cancel;
- (void)performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler;
@end

@implementation PLAnalysisCoordinatorStepSearchIndexing

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    parentTaskID = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    v5 = 138543362;
    v6 = parentTaskID;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Search Indexing Step request to be cancelled, iterations will stop", &v5, 0xCu);
  }
}

- (void)_batchIndexAssetStartingAtIndex:(unint64_t)index withAssetIDs:(id)ds searchIndexingEngine:(id)engine library:(id)library progress:(id)progress withCompletionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  engineCopy = engine;
  libraryCopy = library;
  progressCopy = progress;
  handlerCopy = handler;
  if ([dsCopy count] <= index)
  {
    v22 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v24 = [v22 successWithResult:null];

    handlerCopy[2](handlerCopy, v24);
  }

  else if ([progressCopy isCancelled])
  {
    v19 = MEMORY[0x1E69BF2D0];
    v20 = PLErrorCreate();
    v21 = [v19 failureWithError:v20];
    handlerCopy[2](handlerCopy, v21);
  }

  else
  {
    v25 = [dsCopy count];
    if (v25 - index >= 0xC8)
    {
      v26 = 200;
    }

    else
    {
      v26 = v25 - index;
    }

    v27 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      parentTaskID = [(PLAnalysisCoordinatorStep *)self parentTaskID];
      *buf = 138543874;
      v43 = parentTaskID;
      v44 = 2048;
      indexCopy = index;
      v46 = 2048;
      v47 = index + v26 - 1;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Batch Search Indexing Range [%lu...%lu]", buf, 0x20u);
    }

    v29 = [dsCopy subarrayWithRange:{index, v26}];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __148__PLAnalysisCoordinatorStepSearchIndexing__batchIndexAssetStartingAtIndex_withAssetIDs_searchIndexingEngine_library_progress_withCompletionHandler___block_invoke;
    v32[3] = &unk_1E7565F68;
    v30 = progressCopy;
    v33 = v30;
    selfCopy = self;
    v39 = v26;
    indexCopy2 = index;
    v41 = 200;
    v35 = dsCopy;
    v36 = engineCopy;
    v37 = libraryCopy;
    v38 = handlerCopy;
    v31 = [v36 indexAssetsIfNeededWithObjectIDs:v29 library:v37 completion:v32];
    [v30 addChild:v31 withPendingUnitCount:0];
    if ([v30 isCancelled])
    {
      [v31 cancel];
    }
  }
}

void __148__PLAnalysisCoordinatorStepSearchIndexing__batchIndexAssetStartingAtIndex_withAssetIDs_searchIndexingEngine_library_progress_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isSuccess])
  {
    [*(a1 + 32) setCompletedUnitCount:{*(a1 + 80) + objc_msgSend(*(a1 + 32), "completedUnitCount")}];
    [*(a1 + 40) _batchIndexAssetStartingAtIndex:*(a1 + 96) + *(a1 + 88) withAssetIDs:*(a1 + 48) searchIndexingEngine:*(a1 + 56) library:*(a1 + 64) progress:*(a1 + 32) withCompletionHandler:*(a1 + 72)];
  }

  else
  {
    v4 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) parentTaskID];
      v6 = [v3 error];
      v7 = 138543618;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Batch Search Indexing Failed with Error: %@", &v7, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

- (void)_performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler
{
  assetsCopy = assets;
  progressCopy = progress;
  handlerCopy = handler;
  libraryServicesManager = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAnalysisCoordinatorStepSearchIndexing _performStepForAssets:withProgress:withCompletionHandler:]"];

  if (v13)
  {
    libraryServicesManager2 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager2 searchIndexingEngine];

    if (searchIndexingEngine)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __100__PLAnalysisCoordinatorStepSearchIndexing__performStepForAssets_withProgress_withCompletionHandler___block_invoke;
      v21[3] = &unk_1E7571990;
      v22 = handlerCopy;
      [(PLAnalysisCoordinatorStepSearchIndexing *)self _batchIndexAssetStartingAtIndex:0 withAssetIDs:assetsCopy searchIndexingEngine:searchIndexingEngine library:v13 progress:progressCopy withCompletionHandler:v21];
    }

    else
    {
      v18 = MEMORY[0x1E69BF2D0];
      v19 = PLErrorCreate();
      v20 = [v18 failureWithError:v19];
      (*(handlerCopy + 2))(handlerCopy, v20);
    }
  }

  else
  {
    v16 = MEMORY[0x1E69BF2D0];
    searchIndexingEngine = PLErrorCreate();
    v17 = [v16 failureWithError:searchIndexingEngine];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (void)performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  progressCopy = progress;
  handlerCopy = handler;
  v11 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    parentTaskID = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    *buf = 138543362;
    v26 = parentTaskID;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting Search Indexing Step", buf, 0xCu);
  }

  v13 = PLAnalysisCoordinatorGetLog();
  v14 = os_signpost_id_generate(v13);

  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = [assetsCopy count];
    parentTaskID2 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    *buf = 134349314;
    v26 = v17;
    v27 = 2114;
    v28 = parentTaskID2;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AnalysisCoordinatorStepSearchIndexing", "asset count: %{public}lu, parent task: %{public}@", buf, 0x16u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __99__PLAnalysisCoordinatorStepSearchIndexing_performStepForAssets_withProgress_withCompletionHandler___block_invoke;
  v21[3] = &unk_1F0F05208;
  v21[4] = self;
  v23 = v16;
  v24 = v14;
  v19 = handlerCopy;
  v22 = v19;
  v20 = v16;
  [(PLAnalysisCoordinatorStepSearchIndexing *)self _performStepForAssets:assetsCopy withProgress:progressCopy withCompletionHandler:v21];
}

void __99__PLAnalysisCoordinatorStepSearchIndexing_performStepForAssets_withProgress_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) parentTaskID];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished Search Indexing Step with result: %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "AnalysisCoordinatorStepSearchIndexing", "", &v9, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

@end