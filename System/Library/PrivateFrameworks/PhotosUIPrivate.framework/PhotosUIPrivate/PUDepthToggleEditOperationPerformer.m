@interface PUDepthToggleEditOperationPerformer
+ (id)_sharedResourceManager;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalStillImageTime;
- (BOOL)_shouldEnableDepth;
- (PHAsset)asset;
- (void)_completeWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_handleLoadResult:(id)a3 imageValues:(id)a4;
- (void)_performEditOperation:(id)a3 completionHandler:(id)a4;
- (void)_resourceLoadedWithResult:(id)a3 editOperationType:(id)a4;
- (void)performAction:(id)a3;
- (void)setOriginalStillImageTime:(id *)a3;
@end

@implementation PUDepthToggleEditOperationPerformer

- (void)setOriginalStillImageTime:(id *)a3
{
  var3 = a3->var3;
  *(&self->_liveIsEnabled + 4) = *&a3->var0;
  *&self->_originalStillImageTime.flags = var3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalStillImageTime
{
  *&retstr->var0 = *&self[5].var2;
  retstr->var3 = *(&self[6].var0 + 4);
  return self;
}

- (void)_resourceLoadedWithResult:(id)a3 editOperationType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69C4330]);
  v9 = [v6 editSource];
  [v8 setEditSource:v9];

  v10 = [v6 compositionController];
  v11 = [v10 copy];

  [v11 removeAdjustmentWithKey:*MEMORY[0x1E69BE030]];
  [v11 removeAdjustmentWithKey:*MEMORY[0x1E69BE180]];
  [v8 setCompositionController:v11];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__PUDepthToggleEditOperationPerformer__resourceLoadedWithResult_editOperationType___block_invoke;
  v14[3] = &unk_1E7B7F820;
  objc_copyWeak(&v17, &location);
  v12 = v6;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  [v13 precomputeImageValuesWithCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __83__PUDepthToggleEditOperationPerformer__resourceLoadedWithResult_editOperationType___block_invoke(id *a1)
{
  objc_copyWeak(&v4, a1 + 6);
  v2 = a1[4];
  v3 = a1[5];
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v4);
}

void __83__PUDepthToggleEditOperationPerformer__resourceLoadedWithResult_editOperationType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleLoadResult:*(a1 + 32) imageValues:*(a1 + 40)];
}

- (BOOL)_shouldEnableDepth
{
  v2 = [(PXAssetEditOperationPerformer *)self editOperationType];
  IsEnableDepth = PXAssetEditOperationTypeIsEnableDepth();

  return IsEnableDepth;
}

- (void)_handleLoadResult:(id)a3 imageValues:(id)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34 = a4;
  v37 = [v34 portraitValuesWithAccuracy:0];
  v36 = [v37 objectForKeyedSubscript:*MEMORY[0x1E69BDFF8]];
  if (v36)
  {
    v7 = [v6 compositionController];
    v8 = [v7 copy];

    v9 = [v8 depthAdjustmentController];
    v35 = [v9 depthInfo];

    v10 = [v35 objectForKeyedSubscript:@"focusRect"];

    if (!v10)
    {
      v11 = [v8 adjustmentConstants];
      v12 = [v11 PIDepthAdjustmentKey];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __69__PUDepthToggleEditOperationPerformer__handleLoadResult_imageValues___block_invoke;
      v47[3] = &unk_1E7B7A5C8;
      v48 = v36;
      v49 = v37;
      v50 = v35;
      [v8 modifyAdjustmentWithKey:v12 modificationBlock:v47];
    }

    v13 = [(PUDepthToggleEditOperationPerformer *)self asset];
    v14 = [objc_alloc(MEMORY[0x1E69C4298]) initWithAsset:v13 compositionController:v8];
    v15 = [v6 contentEditingInput];
    v16 = [v15 livePhoto];

    if (v6)
    {
      [v6 videoComplementOriginalStillImageTime];
    }

    else
    {
      v45 = 0uLL;
      v46 = 0;
    }

    *location = v45;
    v44 = v46;
    [(PUDepthToggleEditOperationPerformer *)self setOriginalStillImageTime:location];
    -[PUDepthToggleEditOperationPerformer setLiveIsEnabled:](self, "setLiveIsEnabled:", [v14 isVideoEnabled]);
    if (v16)
    {
      v33 = [objc_alloc(MEMORY[0x1E69C42A0]) initWithAsset:v13 delegate:self hasDepth:1 hasLive:1];
    }

    else
    {
      v33 = 0;
    }

    [PUPhotoEditEffectsSupport updateCompositionController:v8 withDepthEnabled:[(PUDepthToggleEditOperationPerformer *)self _shouldEnableDepth] livePortraitBehaviorController:v33];
    if ((-[PUDepthToggleEditOperationPerformer liveIsEnabled](self, "liveIsEnabled") || v16 == 0) && !-[PUDepthToggleEditOperationPerformer _shouldEnableDepth](self, "_shouldEnableDepth") && (v42 = 0, [MEMORY[0x1E69C4300] compositionControllerForContentEditingInput:v15 asShot:1 error:&v42], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = v16 != 0;
      v20 = objc_alloc(MEMORY[0x1E69C0718]);
      v21 = [v15 fullSizeImageURL];
      v32 = [v20 initWithMediaURL:v21 timeZoneLookup:0];

      v22 = [MEMORY[0x1E69C4320] repairedAsShotCompositionController:v19 forCurrentCompositionController:v8 isLivePhoto:v31 metadata:v32];

      v23 = [v22 composition];
      v24 = [v8 isEqual:v23 visualChangesOnly:1];

      objc_initWeak(location, self);
      if (v24)
      {
        v25 = MEMORY[0x1E69C4320];
        mediaDestination = self->_mediaDestination;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __69__PUDepthToggleEditOperationPerformer__handleLoadResult_imageValues___block_invoke_2;
        v40[3] = &unk_1E7B7A460;
        objc_copyWeak(&v41, location);
        [v25 revertEditsForAsset:v13 mediaDestination:mediaDestination currentCompositionController:v8 completionHandler:v40];
        objc_destroyWeak(&v41);
LABEL_18:
        objc_destroyWeak(location);

        goto LABEL_19;
      }
    }

    else
    {
      objc_initWeak(location, self);
    }

    v27 = [MEMORY[0x1E69C4300] contentEditingOutputForContentEditingInput:v15 compositionController:v8 asset:v13 async:0 onlyChangingOriginalChoice:0];
    v28 = self->_mediaDestination;
    v29 = [v6 retrievedVersion];
    v30 = [v14 editingVisibility];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __69__PUDepthToggleEditOperationPerformer__handleLoadResult_imageValues___block_invoke_3;
    v38[3] = &unk_1E7B7A488;
    objc_copyWeak(&v39, location);
    [(PEPhotoKitMediaDestination *)v28 saveInternalEditsForAsset:v13 usingCompositionController:v8 contentEditingOutput:v27 version:v29 livePhotoState:v30 completionHandler:v38];
    objc_destroyWeak(&v39);

    goto LABEL_18;
  }

  v17 = MEMORY[0x1E696ABC0];
  v51 = *MEMORY[0x1E696A278];
  v52[0] = @"Asset is missing depth info";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v8 = [v17 errorWithDomain:@"PUEditOperationPerformerErrorDomain" code:1 userInfo:v18];

  [(PUDepthToggleEditOperationPerformer *)self _completeWithSuccess:0 error:v8];
LABEL_19:
}

void __69__PUDepthToggleEditOperationPerformer__handleLoadResult_imageValues___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setDepthInfo:*(a1 + 32)];
  v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69BDFE0]];
  [v3 floatValue];
  [v7 setAperture:v4];

  v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69BDFE8]];
  [v7 setFocusRect:v5];

  v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69BDFF0]];
  [v7 setGlassesMatteAllowed:v6];

  if (!*(a1 + 48))
  {
    [v7 setEnabled:0];
  }
}

void __69__PUDepthToggleEditOperationPerformer__handleLoadResult_imageValues___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSuccess:v4 == 0 error:v4];
}

void __69__PUDepthToggleEditOperationPerformer__handleLoadResult_imageValues___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSuccess:v4 == 0 error:v4];
}

- (void)_completeWithSuccess:(BOOL)a3 error:(id)a4
{
  v5 = a4;
  v4 = v5;
  px_dispatch_on_main_queue();
}

void __66__PUDepthToggleEditOperationPerformer__completeWithSuccess_error___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) progress];
  v3 = [v2 totalUnitCount];
  v4 = [*(a1 + 32) progress];
  [v4 setCompletedUnitCount:v3];

  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = MEMORY[0x1E6991F28];
    v14 = *MEMORY[0x1E6991E20];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v15[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v5 sendEvent:@"com.apple.photos.CPAnalytics.saving.depthEffectSavingFailed" withPayload:v8];
  }

  v9 = *(*(a1 + 32) + 96);
  if (v9)
  {
    v10 = _Block_copy(v9);
    v11 = *(a1 + 32);
    v12 = *(v11 + 96);
    *(v11 + 96) = 0;

    v13 = [*(a1 + 32) progress];
    [v13 setCancellationHandler:0];

    (*(v10 + 2))(v10, *(a1 + 48), *(a1 + 40));
  }
}

- (void)_performEditOperation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v8;

  v10 = objc_alloc_init(MEMORY[0x1E69C42B8]);
  mediaDestination = self->_mediaDestination;
  self->_mediaDestination = v10;

  objc_initWeak(&location, self);
  v12 = [objc_opt_class() _sharedResourceManager];
  v13 = [(PUDepthToggleEditOperationPerformer *)self asset];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PUDepthToggleEditOperationPerformer__performEditOperation_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7B7A438;
  objc_copyWeak(&v17, &location);
  v14 = v6;
  v16 = v14;
  [v12 loadResourceForAsset:v13 requireLocalResources:0 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_343 resultHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __79__PUDepthToggleEditOperationPerformer__performEditOperation_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v8)
  {
    [WeakRetained _resourceLoadedWithResult:v8 editOperationType:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _completeWithSuccess:0 error:v5];
  }
}

- (void)performAction:(id)a3
{
  v4 = a3;
  [(PUDepthToggleEditOperationPerformer *)self _shouldEnableDepth];
  v5 = PXAssetEditOperationTypeForDepthToggle();
  sourceEditOperationType = self->_sourceEditOperationType;
  self->_sourceEditOperationType = v5;

  v7 = [(PXAssetEditOperationPerformer *)self editOperationType];
  [(PUDepthToggleEditOperationPerformer *)self _performEditOperation:v7 completionHandler:v4];
}

- (PHAsset)asset
{
  v4.receiver = self;
  v4.super_class = PUDepthToggleEditOperationPerformer;
  v2 = [(PXAssetEditOperationPerformer *)&v4 asset];

  return v2;
}

+ (id)_sharedResourceManager
{
  if (_sharedResourceManager_onceToken_338 != -1)
  {
    dispatch_once(&_sharedResourceManager_onceToken_338, &__block_literal_global_341_50020);
  }

  v3 = _sharedResourceManager_manager_339;

  return v3;
}

uint64_t __61__PUDepthToggleEditOperationPerformer__sharedResourceManager__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C42F8]);
  v1 = _sharedResourceManager_manager_339;
  _sharedResourceManager_manager_339 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end