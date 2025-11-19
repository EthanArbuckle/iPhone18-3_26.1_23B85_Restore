@interface PLAnalysisCoordinatorStepSearchSuggestions
- (void)_performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5;
- (void)cancel;
- (void)performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation PLAnalysisCoordinatorStepSearchSuggestions

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Search Suggestions Step request to be cancelled, cannot actively stop but step will end soon", &v5, 0xCu);
  }
}

- (void)_performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
  v12 = [v11 databaseContext];
  v13 = [v12 newShortLivedLibraryWithName:"-[PLAnalysisCoordinatorStepSearchSuggestions _performStepForAssets:withProgress:withCompletionHandler:]"];

  if (v13)
  {
    v14 = [v13 libraryServicesManager];
    v15 = [v14 wellKnownPhotoLibraryIdentifier];

    if (v15 == 1)
    {
      [PLInitialSuggestionsManager generateInitialSuggestionsForPhotoLibrary:v13];
      [v9 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount") + objc_msgSend(v8, "count")}];
      v16 = MEMORY[0x1E69BF2D0];
      v17 = [MEMORY[0x1E695DFB0] null];
      v18 = [v16 successWithResult:v17];

      v10[2](v10, v18);
    }

    else
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        v23 = v15;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Initial suggestion generation requested for unsupported library with identifier: %tu. No initial suggestions will be generated.", &v22, 0xCu);
      }
    }
  }

  else
  {
    v19 = MEMORY[0x1E69BF2D0];
    v20 = PLErrorCreate();
    v21 = [v19 failureWithError:v20];
    v10[2](v10, v21);
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
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting Search Suggestions Step", buf, 0xCu);
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
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AnalysisCoordinatorStepSearchSuggestions", "asset count: %{public}lu, parent task: %{public}@", buf, 0x16u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __102__PLAnalysisCoordinatorStepSearchSuggestions_performStepForAssets_withProgress_withCompletionHandler___block_invoke;
  v21[3] = &unk_1F0F05208;
  v21[4] = self;
  v23 = v16;
  v24 = v14;
  v19 = v10;
  v22 = v19;
  v20 = v16;
  [(PLAnalysisCoordinatorStepSearchSuggestions *)self _performStepForAssets:v8 withProgress:v9 withCompletionHandler:v21];
}

void __102__PLAnalysisCoordinatorStepSearchSuggestions_performStepForAssets_withProgress_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished Search Suggestions Step with result: %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "AnalysisCoordinatorStepSearchSuggestions", "", &v9, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

@end