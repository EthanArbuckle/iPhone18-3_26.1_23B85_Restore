@interface PLAnalysisCoordinatorStepMediaAnalysis
- (PLAnalysisCoordinatorStepMediaAnalysis)initWithLibraryServicesManager:(id)manager parentTaskID:(id)d processingType:(unint64_t)type;
- (void)_callProcessingCompletionHandler:(id)handler progress:(id)progress assetsCount:(unint64_t)count error:(id)error;
- (void)_performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler;
- (void)_requestProcessingForUUIDS:(id)s progress:(id)progress assetsCount:(unint64_t)count withCompletionHandler:(id)handler;
- (void)cancel;
- (void)performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler;
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
      parentTaskID = [(PLAnalysisCoordinatorStep *)self parentTaskID];
      v10 = 138543362;
      v11 = parentTaskID;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling Media Analysis step but no active media request ID", &v10, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      parentTaskID2 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
      v9 = self->_currentMediaAnalysisRequestID;
      v10 = 138543618;
      v11 = parentTaskID2;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling Media Analysis step with media request ID: %lu", &v10, 0x16u);
    }

    [PLMediaAnalysisServiceRequestAdapter cancelRequest:self->_currentMediaAnalysisRequestID];
    self->_currentMediaAnalysisRequestID = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
  }

  os_unfair_lock_unlock(&self->_lock_currentMediaAnalysisRequestID);
}

- (void)_performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler
{
  assetsCopy = assets;
  progressCopy = progress;
  handlerCopy = handler;
  libraryServicesManager = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAnalysisCoordinatorStepMediaAnalysis _performStepForAssets:withProgress:withCompletionHandler:]"];

  if (v13)
  {
    v14 = [assetsCopy count];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__PLAnalysisCoordinatorStepMediaAnalysis__performStepForAssets_withProgress_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E75714B8;
    v19 = assetsCopy;
    v20 = v13;
    selfCopy = self;
    v22 = progressCopy;
    v24 = v14;
    v23 = handlerCopy;
    [v20 performBlockAndWait:v18];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    v16 = PLErrorCreate();
    v17 = [v15 failureWithError:v16];
    (*(handlerCopy + 2))(handlerCopy, v17);
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

- (void)performStepForAssets:(id)assets withProgress:(id)progress withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  progressCopy = progress;
  handlerCopy = handler;
  v11 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    parentTaskID = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    processingType = self->_processingType;
    *buf = 138543618;
    v28 = parentTaskID;
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
    v18 = [assetsCopy count];
    v19 = self->_processingType;
    parentTaskID2 = [(PLAnalysisCoordinatorStep *)self parentTaskID];
    *buf = 134349570;
    v28 = v18;
    v29 = 2050;
    v30 = v19;
    v31 = 2114;
    v32 = parentTaskID2;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "AnalysisCoordinatorStepMediaAnalysis", "asset count: %{public}lu, type: %{public}lu, parent task: %{public}@", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __98__PLAnalysisCoordinatorStepMediaAnalysis_performStepForAssets_withProgress_withCompletionHandler___block_invoke;
  v23[3] = &unk_1F0F05208;
  v23[4] = self;
  v25 = v17;
  v26 = v15;
  v21 = handlerCopy;
  v24 = v21;
  v22 = v17;
  [(PLAnalysisCoordinatorStepMediaAnalysis *)self _performStepForAssets:assetsCopy withProgress:progressCopy withCompletionHandler:v23];
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

- (void)_requestProcessingForUUIDS:(id)s progress:(id)progress assetsCount:(unint64_t)count withCompletionHandler:(id)handler
{
  sCopy = s;
  progressCopy = progress;
  handlerCopy = handler;
  processingType = self->_processingType;
  if (processingType <= 0x20)
  {
    if (((1 << processingType) & 0x10116) != 0)
    {
      libraryServicesManager = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
      libraryURL = [libraryServicesManager libraryURL];
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
      v26 = handlerCopy;
      v25 = progressCopy;
      countCopy = count;
      self->_currentMediaAnalysisRequestID = [PLMediaAnalysisServiceRequestAdapter requestProcessingTypes:processingType forAssetsWithLocalIdentifiers:sCopy fromPhotoLibraryWithURL:libraryURL progressHandler:v28 completionHandler:v24];

      v16 = v26;
    }

    else
    {
      if (processingType != 32)
      {
        goto LABEL_5;
      }

      firstObject = [sCopy firstObject];
      libraryServicesManager2 = [(PLAnalysisCoordinatorStep *)self libraryServicesManager];
      libraryURL2 = [libraryServicesManager2 libraryURL];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __112__PLAnalysisCoordinatorStepMediaAnalysis__requestProcessingForUUIDS_progress_assetsCount_withCompletionHandler___block_invoke_2;
      v20[3] = &unk_1E7571490;
      v20[4] = self;
      v22 = handlerCopy;
      v21 = progressCopy;
      countCopy2 = count;
      self->_currentMediaAnalysisRequestID = [PLMediaAnalysisServiceRequestAdapter requestVideoSafetyAnalysisForAssetWithLocalIdentifier:firstObject photoLibraryURL:libraryURL2 progressHandler:0 completionHandler:v20];

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

- (void)_callProcessingCompletionHandler:(id)handler progress:(id)progress assetsCount:(unint64_t)count error:(id)error
{
  errorCopy = error;
  progressCopy = progress;
  handlerCopy = handler;
  [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + count}];

  v11 = MEMORY[0x1E69BF2D0];
  if (errorCopy)
  {
    v12 = [MEMORY[0x1E69BF2D0] failureWithError:errorCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v12 = [v11 successWithResult:null];
  }

  handlerCopy[2](handlerCopy, v12);
}

- (PLAnalysisCoordinatorStepMediaAnalysis)initWithLibraryServicesManager:(id)manager parentTaskID:(id)d processingType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PLAnalysisCoordinatorStepMediaAnalysis;
  result = [(PLAnalysisCoordinatorStep *)&v7 initWithLibraryServicesManager:manager parentTaskID:d];
  if (result)
  {
    result->_processingType = type;
  }

  return result;
}

@end