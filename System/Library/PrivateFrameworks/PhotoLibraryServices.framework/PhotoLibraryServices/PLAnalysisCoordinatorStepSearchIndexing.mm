@interface PLAnalysisCoordinatorStepSearchIndexing
- (void)_batchIndexAssetStartingAtIndex:(unint64_t)a3 withAssetIDs:(id)a4 searchIndexingEngine:(id)a5 library:(id)a6 progress:(id)a7 withCompletionHandler:(id)a8;
- (void)_performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5;
- (void)cancel;
- (void)performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation PLAnalysisCoordinatorStepSearchIndexing

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Search Indexing Step request to be cancelled, iterations will stop", &v5, 0xCu);
  }
}

- (void)_batchIndexAssetStartingAtIndex:(unint64_t)a3 withAssetIDs:(id)a4 searchIndexingEngine:(id)a5 library:(id)a6 progress:(id)a7 withCompletionHandler:(id)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v14 count] <= a3)
  {
    v22 = MEMORY[0x1E69BF2D0];
    v23 = [MEMORY[0x1E695DFB0] null];
    v24 = [v22 successWithResult:v23];

    v18[2](v18, v24);
  }

  else if ([v17 isCancelled])
  {
    v19 = MEMORY[0x1E69BF2D0];
    v20 = PLErrorCreate();
    v21 = [v19 failureWithError:v20];
    v18[2](v18, v21);
  }

  else
  {
    v25 = [v14 count];
    if (v25 - a3 >= 0xC8)
    {
      v26 = 200;
    }

    else
    {
      v26 = v25 - a3;
    }

    v27 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
      *buf = 138543874;
      v43 = v28;
      v44 = 2048;
      v45 = a3;
      v46 = 2048;
      v47 = a3 + v26 - 1;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Batch Search Indexing Range [%lu...%lu]", buf, 0x20u);
    }

    v29 = [v14 subarrayWithRange:{a3, v26}];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __148__PLAnalysisCoordinatorStepSearchIndexing__batchIndexAssetStartingAtIndex_withAssetIDs_searchIndexingEngine_library_progress_withCompletionHandler___block_invoke;
    v32[3] = &unk_1E7565F68;
    v30 = v17;
    v33 = v30;
    v34 = self;
    v39 = v26;
    v40 = a3;
    v41 = 200;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = v18;
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

- (void)_performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
  v12 = [v11 databaseContext];
  v13 = [v12 newShortLivedLibraryWithName:"-[PLAnalysisCoordinatorStepSearchIndexing _performStepForAssets:withProgress:withCompletionHandler:]"];

  if (v13)
  {
    v14 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
    v15 = [v14 searchIndexingEngine];

    if (v15)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __100__PLAnalysisCoordinatorStepSearchIndexing__performStepForAssets_withProgress_withCompletionHandler___block_invoke;
      v21[3] = &unk_1E7571990;
      v22 = v10;
      [(PLAnalysisCoordinatorStepSearchIndexing *)self _batchIndexAssetStartingAtIndex:0 withAssetIDs:v8 searchIndexingEngine:v15 library:v13 progress:v9 withCompletionHandler:v21];
    }

    else
    {
      v18 = MEMORY[0x1E69BF2D0];
      v19 = PLErrorCreate();
      v20 = [v18 failureWithError:v19];
      (*(v10 + 2))(v10, v20);
    }
  }

  else
  {
    v16 = MEMORY[0x1E69BF2D0];
    v15 = PLErrorCreate();
    v17 = [v16 failureWithError:v15];
    (*(v10 + 2))(v10, v17);
  }
}

- (void)performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    *buf = 138543362;
    v26 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting Search Indexing Step", buf, 0xCu);
  }

  v13 = PLAnalysisCoordinatorGetLog();
  v14 = os_signpost_id_generate(v13);

  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = [v8 count];
    v18 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    *buf = 134349314;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AnalysisCoordinatorStepSearchIndexing", "asset count: %{public}lu, parent task: %{public}@", buf, 0x16u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __99__PLAnalysisCoordinatorStepSearchIndexing_performStepForAssets_withProgress_withCompletionHandler___block_invoke;
  v21[3] = &unk_1F0F05208;
  v21[4] = self;
  v23 = v16;
  v24 = v14;
  v19 = v10;
  v22 = v19;
  v20 = v16;
  [(PLAnalysisCoordinatorStepSearchIndexing *)self _performStepForAssets:v8 withProgress:v9 withCompletionHandler:v21];
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