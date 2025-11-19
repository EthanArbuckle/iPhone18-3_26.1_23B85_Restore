@interface PLAnalysisCoordinatorStepMediaAnalysis
- (PLAnalysisCoordinatorStepMediaAnalysis)initWithLibraryServicesManager:(id)a3 parentTaskID:(id)a4 processingType:(unint64_t)a5;
- (void)_callProcessingCompletionHandler:(id)a3 progress:(id)a4 assetsCount:(unint64_t)a5 error:(id)a6;
- (void)_performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5;
- (void)_requestProcessingForUUIDS:(id)a3 progress:(id)a4 assetsCount:(unint64_t)a5 withCompletionHandler:(id)a6;
- (void)cancel;
- (void)performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation PLAnalysisCoordinatorStepMediaAnalysis

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock_currentMediaAnalysisRequestID);
  currentMediaAnalysisRequestID = self->_currentMediaAnalysisRequestID;
  v4 = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
  v5 = PLAnalysisCoordinatorGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (currentMediaAnalysisRequestID == v4)
  {
    if (v6)
    {
      v7 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling Media Analysis step but no active media request ID", &v10, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
      v9 = self->_currentMediaAnalysisRequestID;
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling Media Analysis step with media request ID: %lu", &v10, 0x16u);
    }

    [PLMediaAnalysisServiceRequestAdapter cancelRequest:self->_currentMediaAnalysisRequestID];
    self->_currentMediaAnalysisRequestID = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
  }

  os_unfair_lock_unlock(&self->_lock_currentMediaAnalysisRequestID);
}

- (void)_performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
  v12 = [v11 databaseContext];
  v13 = [v12 newShortLivedLibraryWithName:"-[PLAnalysisCoordinatorStepMediaAnalysis _performStepForAssets:withProgress:withCompletionHandler:]"];

  if (v13)
  {
    v14 = [v8 count];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__PLAnalysisCoordinatorStepMediaAnalysis__performStepForAssets_withProgress_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E75714B8;
    v19 = v8;
    v20 = v13;
    v21 = self;
    v22 = v9;
    v24 = v14;
    v23 = v10;
    [v20 performBlockAndWait:v18];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    v16 = PLErrorCreate();
    v17 = [v15 failureWithError:v16];
    (*(v10 + 2))(v10, v17);
  }
}

void __99__PLAnalysisCoordinatorStepMediaAnalysis__performStepForAssets_withProgress_withCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetsWithObjectIDs:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) uuid];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  os_unfair_lock_lock((*(a1 + 48) + 32));
  [*(a1 + 48) _requestProcessingForUUIDS:v3 progress:*(a1 + 56) assetsCount:*(a1 + 72) withCompletionHandler:*(a1 + 64)];
  os_unfair_lock_unlock((*(a1 + 48) + 32));
  if ([*(a1 + 56) isCancelled])
  {
    [*(a1 + 48) cancel];
  }
}

- (void)performStepForAssets:(id)a3 withProgress:(id)a4 withCompletionHandler:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    processingType = self->_processingType;
    *buf = 138543618;
    v28 = v12;
    v29 = 2048;
    v30 = processingType;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting Media Analysis Step. Type: %lu", buf, 0x16u);
  }

  v14 = PLAnalysisCoordinatorGetLog();
  v15 = os_signpost_id_generate(v14);

  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [v8 count];
    v19 = self->_processingType;
    v20 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    *buf = 134349570;
    v28 = v18;
    v29 = 2050;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "AnalysisCoordinatorStepMediaAnalysis", "asset count: %{public}lu, type: %{public}lu, parent task: %{public}@", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __98__PLAnalysisCoordinatorStepMediaAnalysis_performStepForAssets_withProgress_withCompletionHandler___block_invoke;
  v23[3] = &unk_1F0F05208;
  v23[4] = self;
  v25 = v17;
  v26 = v15;
  v21 = v10;
  v24 = v21;
  v22 = v17;
  [(PLAnalysisCoordinatorStepMediaAnalysis *)self _performStepForAssets:v8 withProgress:v9 withCompletionHandler:v23];
}

void __98__PLAnalysisCoordinatorStepMediaAnalysis_performStepForAssets_withProgress_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) parentTaskID];
    v6 = *(*(a1 + 32) + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2050;
    v13 = v6;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished Media Analysis Step for type: %{public}lu with result: %{public}@", &v10, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v9, "AnalysisCoordinatorStepMediaAnalysis", "", &v10, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_requestProcessingForUUIDS:(id)a3 progress:(id)a4 assetsCount:(unint64_t)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  processingType = self->_processingType;
  if (processingType <= 0x20)
  {
    if (((1 << processingType) & 0x10116) != 0)
    {
      v14 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
      v15 = [v14 libraryURL];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __112__PLAnalysisCoordinatorStepMediaAnalysis__requestProcessingForUUIDS_progress_assetsCount_withCompletionHandler___block_invoke;
      v28[3] = &unk_1E7571440;
      v28[4] = self;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __112__PLAnalysisCoordinatorStepMediaAnalysis__requestProcessingForUUIDS_progress_assetsCount_withCompletionHandler___block_invoke_27;
      v24[3] = &unk_1E7571468;
      v24[4] = self;
      v26 = v12;
      v25 = v11;
      v27 = a5;
      self->_currentMediaAnalysisRequestID = [PLMediaAnalysisServiceRequestAdapter requestProcessingTypes:processingType forAssetsWithLocalIdentifiers:v10 fromPhotoLibraryWithURL:v15 progressHandler:v28 completionHandler:v24];

      v16 = v26;
    }

    else
    {
      if (processingType != 32)
      {
        goto LABEL_5;
      }

      v17 = [v10 firstObject];
      v18 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
      v19 = [v18 libraryURL];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __112__PLAnalysisCoordinatorStepMediaAnalysis__requestProcessingForUUIDS_progress_assetsCount_withCompletionHandler___block_invoke_2;
      v20[3] = &unk_1E7571490;
      v20[4] = self;
      v22 = v12;
      v21 = v11;
      v23 = a5;
      self->_currentMediaAnalysisRequestID = [PLMediaAnalysisServiceRequestAdapter requestVideoSafetyAnalysisForAssetWithLocalIdentifier:v17 photoLibraryURL:v19 progressHandler:0 completionHandler:v20];

      v16 = v22;
    }
  }

LABEL_5:
}

void __112__PLAnalysisCoordinatorStepMediaAnalysis__requestProcessingForUUIDS_progress_assetsCount_withCompletionHandler___block_invoke(uint64_t a1, double a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) parentTaskID];
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Progress update: %f", &v6, 0x16u);
  }
}

- (void)_callProcessingCompletionHandler:(id)a3 progress:(id)a4 assetsCount:(unint64_t)a5 error:(id)a6
{
  v14 = a6;
  v9 = a4;
  v10 = a3;
  [v9 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount") + a5}];

  v11 = MEMORY[0x1E69BF2D0];
  if (v14)
  {
    v12 = [MEMORY[0x1E69BF2D0] failureWithError:v14];
  }

  else
  {
    v13 = [MEMORY[0x1E695DFB0] null];
    v12 = [v11 successWithResult:v13];
  }

  v10[2](v10, v12);
}

- (PLAnalysisCoordinatorStepMediaAnalysis)initWithLibraryServicesManager:(id)a3 parentTaskID:(id)a4 processingType:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = PLAnalysisCoordinatorStepMediaAnalysis;
  result = [(PLAnalysisCoordinatorStep *)&v7 initWithLibraryServicesManager:a3 parentTaskID:a4];
  if (result)
  {
    result->_processingType = a5;
  }

  return result;
}

@end