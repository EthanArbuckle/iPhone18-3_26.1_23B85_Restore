@interface PEEditActionBatch
- (PEEditActionBatch)initWithAssets:(id)assets action:(id)action progress:(id)progress;
- (PEEditActionBatch)initWithAssets:(id)assets actionMap:(id)map progress:(id)progress;
- (PEEditActionBatchDelegate)delegate;
- (PELoadingStatusDelegate)loadingStatusManager;
- (id)_presetForAsset:(id)asset;
- (id)_processAssets:(id)assets;
- (id)_processWillBeginWithAsset:(id)asset progress:(double)progress;
- (void)_cancelLoading;
- (void)_commitComposition:(id)composition toResource:(id)resource changeType:(int64_t)type completion:(id)completion;
- (void)_processDidCompleteWithID:(id)d error:(id)error;
- (void)_processDidUpdateWithID:(id)d progress:(double)progress;
- (void)_processResult:(id)result targetPreset:(id)preset completion:(id)completion;
- (void)_requestResourcesForAsset:(id)asset progressHandler:(id)handler resultHandler:(id)resultHandler;
- (void)_setupWithActionMap:(id)map assets:(id)assets progress:(id)progress;
- (void)_updateProgress:(double)progress forLoadingID:(id)d;
- (void)cancel;
- (void)runActionWithBatchSize:(unint64_t)size completion:(id)completion;
@end

@implementation PEEditActionBatch

- (PEEditActionBatchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PELoadingStatusDelegate)loadingStatusManager
{
  WeakRetained = objc_loadWeakRetained(&self->_loadingStatusManager);

  return WeakRetained;
}

- (void)_updateProgress:(double)progress forLoadingID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PEEditActionBatch__updateProgress_forLoadingID___block_invoke;
  v8[3] = &unk_279A30FD8;
  progressCopy = progress;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [PESupport syncMainThread:v8];
}

void __50__PEEditActionBatch__updateProgress_forLoadingID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 48);
  *&v3 = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  [v2 setObject:v4 forKey:*(a1 + 40)];

  v5 = [*(*(a1 + 32) + 56) count];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(*(a1 + 32) + 24) objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v17 + 1) + 8 * i) floatValue];
        v10 = v10 + v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = v10 / v5;
  v14 = [*(a1 + 32) progress];
  v15 = llround(v13 * [v14 totalUnitCount]);
  v16 = [*(a1 + 32) progress];
  [v16 setCompletedUnitCount:v15];
}

- (void)_cancelLoading
{
  loadingStatusManager = [(PEEditActionBatch *)self loadingStatusManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__PEEditActionBatch__cancelLoading__block_invoke;
  v5[3] = &unk_279A31000;
  v5[4] = self;
  v6 = loadingStatusManager;
  v4 = loadingStatusManager;
  [PESupport syncMainThread:v5];
}

uint64_t __35__PEEditActionBatch__cancelLoading__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) didCancelLoadOperationWithTrackingID:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (void)_processDidCompleteWithID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  if (dCopy)
  {
    [(PEEditActionBatch *)self _updateProgress:dCopy forLoadingID:1.0];
    loadingStatusManager = [(PEEditActionBatch *)self loadingStatusManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__PEEditActionBatch__processDidCompleteWithID_error___block_invoke;
    v10[3] = &unk_279A31208;
    v11 = dCopy;
    selfCopy = self;
    v13 = loadingStatusManager;
    v14 = errorCopy;
    v9 = loadingStatusManager;
    [PESupport syncMainThread:v10];
  }
}

uint64_t __53__PEEditActionBatch__processDidCompleteWithID_error___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(result + 40) + 16) removeObjectForKey:?];
    v2 = v1[4];
    v3 = v1[6];
    v4 = v1[7] == 0;

    return [v3 didCompleteLoadOperationWithTrackingID:v2 withSuccess:v4 error:?];
  }

  return result;
}

- (void)_processDidUpdateWithID:(id)d progress:(double)progress
{
  dCopy = d;
  [(PEEditActionBatch *)self _updateProgress:dCopy forLoadingID:progress];
  loadingStatusManager = [(PEEditActionBatch *)self loadingStatusManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__PEEditActionBatch__processDidUpdateWithID_progress___block_invoke;
  v10[3] = &unk_279A30FD8;
  v11 = loadingStatusManager;
  v12 = dCopy;
  progressCopy = progress;
  v8 = dCopy;
  v9 = loadingStatusManager;
  [PESupport syncMainThread:v10];
}

- (id)_processWillBeginWithAsset:(id)asset progress:(double)progress
{
  assetCopy = asset;
  loadingStatusManager = [(PEEditActionBatch *)self loadingStatusManager];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2457;
  v21 = __Block_byref_object_dispose__2458;
  v22 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__PEEditActionBatch__processWillBeginWithAsset_progress___block_invoke;
  v12[3] = &unk_279A30FB0;
  v15 = &v17;
  v12[4] = self;
  v8 = assetCopy;
  v13 = v8;
  v9 = loadingStatusManager;
  v14 = v9;
  progressCopy = progress;
  [PESupport syncMainThread:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __57__PEEditActionBatch__processWillBeginWithAsset_progress___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    goto LABEL_2;
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) uuid];
  v11 = v10;
  if (v9)
  {
    v12 = [v9 willBeginLoadOperationWithItemIdentifier:v10];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v10;
    v11 = v16;
  }

  v17 = *(*(*(a1 + 56) + 8) + 40);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 16);
    v19 = [*(a1 + 40) uuid];
    [v18 setObject:v17 forKey:v19];

    if (*(*(*(a1 + 56) + 8) + 40))
    {
LABEL_2:
      v7 = *(a1 + 32);
      v8 = *(a1 + 64);

      [v7 _processDidUpdateWithID:v8 progress:?];
    }
  }
}

- (void)_commitComposition:(id)composition toResource:(id)resource changeType:(int64_t)type completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  compositionCopy = composition;
  resourceCopy = resource;
  completionCopy = completion;
  if ([(PEEditActionBatch *)self state]== 3)
  {
    v13 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "PEEditActionBatch commit: cancelled";
LABEL_9:
      _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (type)
  {
    asset = [resourceCopy asset];
    v16 = objc_alloc_init(PEPhotoKitMediaDestination);
    if ([MEMORY[0x277D3AC20] isIdentityCompositionController:compositionCopy])
    {
      slomoAdjustmentController = [compositionCopy slomoAdjustmentController];
      v18 = slomoAdjustmentController == 0;
    }

    else
    {
      v18 = 0;
    }

    if (type == 2 || v18)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __73__PEEditActionBatch__commitComposition_toResource_changeType_completion___block_invoke;
      v37[3] = &unk_279A30F88;
      v38 = completionCopy;
      v20 = [(PEPhotoKitMediaDestination *)v16 revertEditsForAsset:asset completionHandler:v37];
      mediaRequestIds = self->_mediaRequestIds;
      v22 = [MEMORY[0x277CCABB0] numberWithInt:v20];
      [(NSMutableSet *)mediaRequestIds addObject:v22];

      asset2 = v38;
    }

    else if (type == 1)
    {
      if ([(PEEditActionBatch *)self actionType]== 4)
      {
        retrievedVersion = 1;
      }

      else
      {
        retrievedVersion = [resourceCopy retrievedVersion];
      }

      contentEditingInput = [resourceCopy contentEditingInput];
      asset2 = [PESerializationUtility contentEditingOutputForContentEditingInput:contentEditingInput compositionController:compositionCopy asset:asset async:[(PEEditActionBatch *)self async] onlyChangingOriginalChoice:0];

      if ([asset isLivePhoto] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = asset;
        [v26 fetchPropertySetsIfNeeded];
        photoIrisProperties = [v26 photoIrisProperties];

        photoIrisVisibilityState = [photoIrisProperties photoIrisVisibilityState];
      }

      else
      {
        photoIrisVisibilityState = 0;
      }

      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __73__PEEditActionBatch__commitComposition_toResource_changeType_completion___block_invoke_52;
      v35 = &unk_279A30F88;
      v36 = completionCopy;
      v29 = [(PEPhotoKitMediaDestination *)v16 saveInternalEditsForAsset:asset usingCompositionController:compositionCopy contentEditingOutput:asset2 version:retrievedVersion livePhotoState:photoIrisVisibilityState completionHandler:&v32];
      v30 = self->_mediaRequestIds;
      v31 = [MEMORY[0x277CCABB0] numberWithInt:{v29, v32, v33, v34, v35}];
      [(NSMutableSet *)v30 addObject:v31];
    }

    else
    {
      v24 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_ERROR, "PEEditActionBatch commit: finished with unexpected change type: %lu", buf, 0xCu);
      }

      if (!completionCopy)
      {
        goto LABEL_29;
      }

      asset2 = [resourceCopy asset];
      (*(completionCopy + 2))(completionCopy, asset2, 0);
    }

LABEL_29:
    goto LABEL_30;
  }

  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "PEEditActionBatch commit: no asset changes to commit";
    goto LABEL_9;
  }

LABEL_10:

  asset = [resourceCopy asset];
  (*(completionCopy + 2))(completionCopy, asset, 0);
LABEL_30:
}

void __73__PEEditActionBatch__commitComposition_toResource_changeType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLPhotoEditGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_ERROR, "PEEditActionBatch commit: failed to revert adjustments with error: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 uuid];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PEEditActionBatch commit: reverted adjustments on asset: %{public}@", &v11, 0xCu);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void __73__PEEditActionBatch__commitComposition_toResource_changeType_completion___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLPhotoEditGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_ERROR, "PEEditActionBatch commit: failed to save adjustments with error: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 uuid];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PEEditActionBatch commit: saved adjustments on asset: %{public}@", &v11, 0xCu);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_processResult:(id)result targetPreset:(id)preset completion:(id)completion
{
  resultCopy = result;
  presetCopy = preset;
  completionCopy = completion;
  compositionController = [resultCopy compositionController];
  objc_initWeak(&location, self);
  if (!presetCopy)
  {
    v12 = objc_alloc(MEMORY[0x277D3A870]);
    originalComposition = [resultCopy originalComposition];
    v14 = [v12 initWithComposition:originalComposition];

    v15 = [PEAdjustmentPreset alloc];
    asset = [resultCopy asset];
    presetCopy = [(PEAdjustmentPreset *)v15 initWithCompositionController:v14 asset:asset];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__PEEditActionBatch__processResult_targetPreset_completion___block_invoke;
  v20[3] = &unk_279A30F60;
  objc_copyWeak(&v24, &location);
  v17 = compositionController;
  v21 = v17;
  v18 = resultCopy;
  v22 = v18;
  v19 = completionCopy;
  v23 = v19;
  [(PEAdjustmentPreset *)presetCopy applyToLoadResult:v18 completion:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __60__PEEditActionBatch__processResult_targetPreset_completion___block_invoke(id *a1, void *a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PEEditActionBatch__processResult_targetPreset_completion___block_invoke_2;
  block[3] = &unk_279A30F38;
  objc_copyWeak(v8, a1 + 7);
  v5 = a1[4];
  v6 = a1[5];
  v8[1] = a2;
  v7 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v8);
}

void __60__PEEditActionBatch__processResult_targetPreset_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _commitComposition:*(a1 + 32) toResource:*(a1 + 40) changeType:*(a1 + 64) completion:*(a1 + 48)];
}

- (void)_requestResourcesForAsset:(id)asset progressHandler:(id)handler resultHandler:(id)resultHandler
{
  assetCopy = asset;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2457;
  v38 = __Block_byref_object_dispose__2458;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2457;
  v32 = __Block_byref_object_dispose__2458;
  v33 = 0;
  forceRunAsUnadjustedAsset = [(PEEditActionBatch *)self forceRunAsUnadjustedAsset];
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  resourceManager = self->_resourceManager;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__PEEditActionBatch__requestResourcesForAsset_progressHandler_resultHandler___block_invoke;
  v23[3] = &unk_279A30EE8;
  v26 = &v34;
  v27 = &v28;
  v14 = assetCopy;
  v24 = v14;
  v15 = v12;
  v25 = v15;
  [(PEResourceManager *)resourceManager loadResourceForAsset:v14 requireLocalResources:1 forceRunAsUnadjustedAsset:forceRunAsUnadjustedAsset progressHandler:handlerCopy resultHandler:v23];
  dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (forceRunAsUnadjustedAsset)
  {
    v16 = self->_resourceManager;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__PEEditActionBatch__requestResourcesForAsset_progressHandler_resultHandler___block_invoke_2;
    v18[3] = &unk_279A30F10;
    v19 = v14;
    v21 = &v34;
    v20 = resultHandlerCopy;
    v22 = &v28;
    [(PEResourceManager *)v16 loadResourceForAsset:v19 requireLocalResources:1 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_2474 resultHandler:v18];
  }

  else
  {
    compositionController = [v35[5] compositionController];
    [v35[5] setAdjustedSourceCompositionController:compositionController];

    (*(resultHandlerCopy + 2))(resultHandlerCopy, v35[5], v29[5]);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __77__PEEditActionBatch__requestResourcesForAsset_progressHandler_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v8 = [*(*(*(a1 + 48) + 8) + 40) compositionController];
  if (!v8)
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) uuid];
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_ERROR, "PEEditActionBatch failed to fetch resources for asset: %{public}@ error:%@", &v11, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77__PEEditActionBatch__requestResourcesForAsset_progressHandler_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 compositionController];
  if (!v6)
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) uuid];
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "PEEditActionBatch failed to fetch adjusted resources for asset: %{public}@ error:%@", &v9, 0x16u);
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) setAdjustedSourceCompositionController:v6];
  (*(*(a1 + 40) + 16))();
}

- (id)_processAssets:(id)assets
{
  v48 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v4, OS_LOG_TYPE_DEFAULT, "PEEditActionBatch _processAssets:", buf, 2u);
  }

  if ([(PEEditActionBatch *)self state]== 3)
  {
    v5 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v5, OS_LOG_TYPE_DEFAULT, "PEEditActionBatch: Skipping _processAssets due to batch cancelation", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    *buf = 0;
    v42 = buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__2457;
    v45 = __Block_byref_object_dispose__2458;
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    objc_initWeak(&location, self);
    v7 = dispatch_group_create();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = assetsCopy;
    v8 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v8)
    {
      v21 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          assetsCopy = [(PEEditActionBatch *)self _presetForAsset:v10, assetsCopy];
          v34[0] = 0;
          v34[1] = v34;
          v34[2] = 0x3032000000;
          v34[3] = __Block_byref_object_copy__2457;
          v34[4] = __Block_byref_object_dispose__2458;
          v12 = [PEEditActionResult alloc];
          uuid = [v10 uuid];
          v35 = [(PEEditActionResult *)v12 initWithAssetUUID:uuid targetAction:assetsCopy];

          v14 = [(PEEditActionBatch *)self _processWillBeginWithAsset:v10 progress:0.01];
          dispatch_group_enter(v7);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __36__PEEditActionBatch__processAssets___block_invoke;
          v31[3] = &unk_279A30E70;
          objc_copyWeak(&v33, &location);
          v15 = v14;
          v32 = v15;
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __36__PEEditActionBatch__processAssets___block_invoke_2;
          v22[3] = &unk_279A30EC0;
          objc_copyWeak(&v30, &location);
          v16 = v15;
          v23 = v16;
          selfCopy = self;
          v25 = v7;
          v28 = v34;
          v17 = assetsCopy;
          v29 = buf;
          v26 = v17;
          v27 = v10;
          [(PEEditActionBatch *)self _requestResourcesForAsset:v10 progressHandler:v31 resultHandler:v22];

          objc_destroyWeak(&v30);
          objc_destroyWeak(&v33);

          _Block_object_dispose(v34, 8);
        }

        v8 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v8);
    }

    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v6 = *(v42 + 5);

    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  return v6;
}

void __36__PEEditActionBatch__processAssets___block_invoke(uint64_t a1, double a2)
{
  v3 = a2 * 0.75;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processDidUpdateWithID:*(a1 + 32) progress:v3];
}

void __36__PEEditActionBatch__processAssets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained _processDidUpdateWithID:*(a1 + 32) progress:0.75];

  if ([*(a1 + 40) state] == 3)
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PEEditActionBatch: Dropping resource due to batch cancelation", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v9 = [v5 adjustedSourceCompositionController];
    if (v9)
    {
      v10 = [PEAdjustmentPreset alloc];
      v11 = [v5 asset];
      v12 = [(PEAdjustmentPreset *)v10 initWithCompositionController:v9 asset:v11];
      [*(*(*(a1 + 72) + 8) + 40) setSourceAction:v12];
    }

    v13 = [v5 compositionController];
    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 56);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __36__PEEditActionBatch__processAssets___block_invoke_42;
      v19[3] = &unk_279A30E98;
      v22 = *(a1 + 72);
      objc_copyWeak(&v23, (a1 + 88));
      v20 = *(a1 + 32);
      v21 = *(a1 + 48);
      [v14 _processResult:v5 targetPreset:v15 completion:v19];

      objc_destroyWeak(&v23);
    }

    else
    {
      v16 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 64) uuid];
        *buf = 138543362;
        v25 = v17;
        _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_ERROR, "PEEditActionBatch: Failed to fetch preset from asset: %{public}@", buf, 0xCu);
      }

      [*(*(*(a1 + 72) + 8) + 40) setError:v6];
      v18 = objc_loadWeakRetained((a1 + 88));
      [v18 _processDidCompleteWithID:*(a1 + 32) error:v6];

      [*(*(*(a1 + 80) + 8) + 40) addObject:*(*(*(a1 + 72) + 8) + 40)];
      dispatch_group_leave(*(a1 + 48));
    }
  }
}

void __36__PEEditActionBatch__processAssets___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = a3;
  [v5 setSavedAsset:a2];
  [*(*(*(a1 + 48) + 8) + 40) setError:v6];
  [*(*(*(a1 + 56) + 8) + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _processDidCompleteWithID:*(a1 + 32) error:v6];

  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

- (id)_presetForAsset:(id)asset
{
  actionMap = self->_actionMap;
  uuid = [asset uuid];
  v6 = [(NSDictionary *)actionMap objectForKey:uuid];

  if (!v6)
  {
    v6 = [(NSDictionary *)self->_actionMap objectForKey:@"PESingleActionKey"];
  }

  return v6;
}

- (void)_setupWithActionMap:(id)map assets:(id)assets progress:(id)progress
{
  mapCopy = map;
  assetsCopy = assets;
  progressCopy = progress;
  self->_state = 0;
  actionMap = self->_actionMap;
  self->_actionMap = mapCopy;
  v23 = mapCopy;

  assets = self->_assets;
  self->_assets = assetsCopy;
  v13 = assetsCopy;

  v14 = dispatch_queue_create("PEEditActionBatch", 0);
  loadingQueue = self->_loadingQueue;
  self->_loadingQueue = v14;

  v16 = objc_alloc_init(PEResourceManager);
  resourceManager = self->_resourceManager;
  self->_resourceManager = v16;

  v18 = objc_alloc_init(PEPhotoKitMediaDestination);
  mediaDestination = self->_mediaDestination;
  self->_mediaDestination = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  mediaRequestIds = self->_mediaRequestIds;
  self->_mediaRequestIds = v20;

  [(NSProgress *)progressCopy setTotalUnitCount:100];
  progress = self->_progress;
  self->_progress = progressCopy;
}

- (void)cancel
{
  v18 = *MEMORY[0x277D85DE8];
  state = [(PEEditActionBatch *)self state];
  v4 = PLPhotoEditGetLog();
  v5 = v4;
  if (state == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v5, OS_LOG_TYPE_DEFAULT, "PEEditActionBatch: Canceled.", buf, 2u);
    }

    self->_state = 3;
    [(PEResourceManager *)self->_resourceManager cancelAllRequests];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_mediaRequestIds;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          -[PEPhotoKitMediaDestination cancelRequestWithIdentifier:](self->_mediaDestination, "cancelRequestWithIdentifier:", [*(*(&v11 + 1) + 8 * v10++) intValue]);
        }

        while (v8 != v10);
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PEEditActionBatch *)self _cancelLoading];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = state;
      _os_log_impl(&dword_25E6E9000, v5, OS_LOG_TYPE_ERROR, "PEEditActionBatch: Attempted to cancel, but batch is not in progress. PEEditActionBatchState: %lu", buf, 0xCu);
    }
  }
}

- (void)runActionWithBatchSize:(unint64_t)size completion:(id)completion
{
  completionCopy = completion;
  self->_state = 1;
  actionType = [(PEEditActionBatch *)self actionType];
  delegate = [(PEEditActionBatch *)self delegate];
  [delegate batch:self willStartAction:actionType];

  v9 = self->_assets;
  v10 = [(NSArray *)v9 count];
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v10];
  loadingIdMap = self->_loadingIdMap;
  self->_loadingIdMap = v11;

  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v10];
  progressMap = self->_progressMap;
  self->_progressMap = v13;

  if (v10 >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = v10;
  }

  loadingQueue = self->_loadingQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__PEEditActionBatch_runActionWithBatchSize_completion___block_invoke;
  v19[3] = &unk_279A30E48;
  v24 = sizeCopy;
  v25 = v10;
  v20 = v9;
  selfCopy = self;
  v22 = completionCopy;
  v23 = vcvtpd_u64_f64(v10 / sizeCopy);
  v17 = completionCopy;
  v18 = v9;
  dispatch_async(loadingQueue, v19);
}

void __55__PEEditActionBatch_runActionWithBatchSize_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  if (*(a1 + 56))
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 64);
      v5 = *(a1 + 72);
      v6 = v4 * v3;
      if (v4 * v3 + v4 <= v5)
      {
        v7 = *(a1 + 64);
      }

      else
      {
        v7 = v5 - v4 * v3;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = [*(a1 + 32) subarrayWithRange:{v6, v7}];
      v10 = [*(a1 + 40) _processAssets:v9];
      if (v10)
      {
        [v2 addObjectsFromArray:v10];
      }

      objc_autoreleasePoolPop(v8);
      ++v3;
    }

    while (v3 < *(a1 + 56));
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__PEEditActionBatch_runActionWithBatchSize_completion___block_invoke_2;
  v16[3] = &unk_279A30E20;
  v16[4] = &v17;
  [v2 enumerateObjectsUsingBlock:v16];
  v11 = [*(a1 + 40) state];
  v12 = v11;
  if (v11 == 3)
  {
    v13 = [*(a1 + 40) delegate];
    -[NSObject batch:didCancelAction:](v13, "batch:didCancelAction:", *(a1 + 40), [*(a1 + 40) actionType]);
  }

  else if (v11 == 1)
  {
    *(*(a1 + 40) + 104) = 2;
    v13 = [*(a1 + 40) delegate];
    v14 = *(a1 + 40);
    v15 = [v14 actionType];
    [v13 batch:v14 didCompleteAction:v15 hasError:*(v18 + 24)];
  }

  else
  {
    v13 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v22 = v12;
      _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_ERROR, "PEEditActionBatch: Unexpected state in _batchDidStop: %lu", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v2, *(*(a1 + 40) + 104) == 3);
  _Block_object_dispose(&v17, 8);
}

void __55__PEEditActionBatch_runActionWithBatchSize_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 error];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (PEEditActionBatch)initWithAssets:(id)assets action:(id)action progress:(id)progress
{
  v16[1] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  actionCopy = action;
  progressCopy = progress;
  v14.receiver = self;
  v14.super_class = PEEditActionBatch;
  v11 = [(PEEditActionBatch *)&v14 init];
  if (v11)
  {
    if (actionCopy)
    {
      v15 = @"PESingleActionKey";
      v16[0] = actionCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v12 = 0;
    }

    [(PEEditActionBatch *)v11 _setupWithActionMap:v12 assets:assetsCopy progress:progressCopy];
    v11->_actionType = [actionCopy actionType];
  }

  return v11;
}

- (PEEditActionBatch)initWithAssets:(id)assets actionMap:(id)map progress:(id)progress
{
  assetsCopy = assets;
  mapCopy = map;
  progressCopy = progress;
  v14.receiver = self;
  v14.super_class = PEEditActionBatch;
  v11 = [(PEEditActionBatch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PEEditActionBatch *)v11 _setupWithActionMap:mapCopy assets:assetsCopy progress:progressCopy];
    v12->_actionType = 1;
  }

  return v12;
}

@end