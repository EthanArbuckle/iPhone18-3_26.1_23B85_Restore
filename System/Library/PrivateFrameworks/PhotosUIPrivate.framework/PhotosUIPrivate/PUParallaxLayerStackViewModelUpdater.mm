@interface PUParallaxLayerStackViewModelUpdater
- (BOOL)_canEnableSpatialPhotoForViewModel:(id)a3;
- (BOOL)waitForInFlightRenders:(double)a3;
- (PUParallaxLayerStackViewModelUpdater)init;
- (PUParallaxLayerStackViewModelUpdater)initWithSegmentationItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_calculateLayoutProperties:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 completion:(id)a6;
- (void)_prepareDefaultLayoutsForViewModel:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5;
- (void)_renderSpatialPhotoLayerIfNeededForViewModel:(id)a3 isUserTransformDisabled:(BOOL)a4 forceRendering:(BOOL)a5 highPriority:(BOOL)a6 importanceOrder:(double)a7 completionHandler:(id)a8;
- (void)_updatePriorityForRequest:(id)a3 viewModel:(id)a4 highPriority:(BOOL)a5 importanceOrder:(double)a6;
- (void)beginRenderTransaction;
- (void)cancelPendingRenders;
- (void)endRenderTransaction;
- (void)ensureOffscreenModelIsUnloaded:(id)a3;
- (void)ensureOnscreenModelIsLoaded:(id)a3;
- (void)performSpatialSceneAnalysis:(id)a3 completion:(id)a4;
- (void)prepareOffscreenModelForLikelyDisplay:(id)a3;
- (void)recalculateClockIntersection:(id)a3 allViewModels:(id)a4 highPriority:(BOOL)a5;
- (void)recalculateClockOverlap:(id)a3 allViewModels:(id)a4 highPriority:(BOOL)a5;
- (void)recalculateClockOverlap:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 allViewModels:(id)a6 intersectionOnly:(BOOL)a7 completion:(id)a8;
- (void)recalculateLuminance:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5;
- (void)renderBackfillLayers:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 completion:(id)a6;
- (void)renderMainLayers:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 completion:(id)a6;
- (void)renderModelAfterStyleInitialization:(id)a3 isUserTransformDisabled:(BOOL)a4 isOnscreen:(BOOL)a5 highPriority:(BOOL)a6;
- (void)renderOffscreenModelAfterVisibleFrameChange:(id)a3 highPriority:(BOOL)a4;
- (void)renderOnscreenModelAfterHeadroomStateChange:(id)a3 allViewModels:(id)a4;
- (void)renderOnscreenModelAfterStyleChange:(id)a3;
- (void)renderOnscreenModelAfterVisibleFrameChange:(id)a3 recalculateLayoutProperties:(BOOL)a4 allViewModels:(id)a5;
- (void)renderSettlingEffectLayerIfNeededForViewModel:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5;
@end

@implementation PUParallaxLayerStackViewModelUpdater

- (void)ensureOffscreenModelIsUnloaded:(id)a3
{
  v5 = a3;
  v4 = [(PIParallaxLayerStackRequest *)self->_mainRenderRequest renderContext];
  [v4 cancelAllRequests];

  if (([v5 mainLayersArePruned] & 1) == 0)
  {
    [v5 performChanges:&__block_literal_global_307_95315];
  }
}

- (void)ensureOnscreenModelIsLoaded:(id)a3
{
  v4 = a3;
  if ([v4 mainLayersArePruned])
  {
    [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
    [(PUParallaxLayerStackViewModelUpdater *)self renderMainLayers:v4 highPriority:1 importanceOrder:0 completion:0.0];
    [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
  }
}

- (void)recalculateClockIntersection:(id)a3 allViewModels:(id)a4 highPriority:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  [(PUParallaxLayerStackViewModelUpdater *)self recalculateClockOverlap:v9 highPriority:v5 importanceOrder:v8 allViewModels:1 intersectionOnly:0 completion:0.0];

  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
}

- (void)recalculateClockOverlap:(id)a3 allViewModels:(id)a4 highPriority:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  [(PUParallaxLayerStackViewModelUpdater *)self recalculateClockOverlap:v9 highPriority:v5 importanceOrder:v8 allViewModels:0 intersectionOnly:0 completion:0.0];

  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
}

- (void)renderOffscreenModelAfterVisibleFrameChange:(id)a3 highPriority:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  if (([v6 mainLayersArePruned] & 1) == 0)
  {
    [v6 performChanges:&__block_literal_global_305_95317];
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __97__PUParallaxLayerStackViewModelUpdater_renderOffscreenModelAfterVisibleFrameChange_highPriority___block_invoke_2;
  v11 = &unk_1E7B80C38;
  v12 = self;
  v13 = v6;
  v7 = v6;
  [(PUParallaxLayerStackViewModelUpdater *)self renderBackfillLayers:v7 highPriority:v4 importanceOrder:&v8 completion:0.0];
  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction:v8];
}

- (void)renderOnscreenModelAfterHeadroomStateChange:(id)a3 allViewModels:(id)a4
{
  v5 = a3;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  [(PUParallaxLayerStackViewModelUpdater *)self renderBackfillLayers:v5 highPriority:1 importanceOrder:0 completion:0.0];

  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
}

- (void)renderOnscreenModelAfterVisibleFrameChange:(id)a3 recalculateLayoutProperties:(BOOL)a4 allViewModels:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  if ([v8 spatialPhotoEnabled])
  {
    if (([v8 mainLayersArePruned] & 1) == 0)
    {
      v10 = [v8 currentLayerStack];
      v11 = [v10 hasAnySpatialLayer];

      if (v11)
      {
        [v8 performChanges:&__block_literal_global_303];
      }
    }

    v12 = [v8 currentLayerStack];
    v13 = [v12 hasBackfillLayers];

    if ((v13 & 1) == 0)
    {
      [(PUParallaxLayerStackViewModelUpdater *)self renderBackfillLayers:v8 highPriority:1 importanceOrder:0 completion:0.1];
    }
  }

  else
  {
    [(PUParallaxLayerStackViewModelUpdater *)self renderMainLayers:v8 highPriority:1 importanceOrder:0 completion:0.0];
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __125__PUParallaxLayerStackViewModelUpdater_renderOnscreenModelAfterVisibleFrameChange_recalculateLayoutProperties_allViewModels___block_invoke_2;
  v21 = &unk_1E7B80C38;
  v22 = self;
  v14 = v8;
  v23 = v14;
  [(PUParallaxLayerStackViewModelUpdater *)self recalculateClockOverlap:v14 highPriority:1 importanceOrder:v9 allViewModels:0 intersectionOnly:&v18 completion:0.1];
  if (v6)
  {
    [(PUParallaxLayerStackViewModelUpdater *)self _calculateLayoutProperties:v14 highPriority:1 importanceOrder:0 completion:0.3, v18, v19, v20, v21, v22];
  }

  v15 = [v14 style];
  v16 = [v15 kind];
  v17 = *MEMORY[0x1E69C0B28];

  if (v16 != v17)
  {
    [(PUParallaxLayerStackViewModelUpdater *)self renderBackfillLayers:v14 highPriority:1 importanceOrder:0 completion:1.0];
  }

  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
}

- (void)renderOnscreenModelAfterStyleChange:(id)a3
{
  v4 = a3;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __76__PUParallaxLayerStackViewModelUpdater_renderOnscreenModelAfterStyleChange___block_invoke;
  v9 = &unk_1E7B80C38;
  v10 = self;
  v11 = v4;
  v5 = v4;
  [(PUParallaxLayerStackViewModelUpdater *)self renderMainLayers:v5 highPriority:1 importanceOrder:&v6 completion:0.25];
  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction:v6];
}

void __76__PUParallaxLayerStackViewModelUpdater_renderOnscreenModelAfterStyleChange___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) styleChangeCoalescer];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PUParallaxLayerStackViewModelUpdater_renderOnscreenModelAfterStyleChange___block_invoke_2;
  v3[3] = &unk_1E7B80610;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 coalesceBlock:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __76__PUParallaxLayerStackViewModelUpdater_renderOnscreenModelAfterStyleChange___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained recalculateLuminance:*(a1 + 32) highPriority:1 importanceOrder:0.5];
  [WeakRetained renderBackfillLayers:*(a1 + 32) highPriority:1 importanceOrder:0 completion:1.0];
}

- (void)prepareOffscreenModelForLikelyDisplay:(id)a3
{
  v4 = a3;
  v5 = [v4 currentLayerStack];
  if ([v5 hasBackfillLayers])
  {
  }

  else
  {
    v6 = [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest priority];
    v7 = [v6 isHigh];

    if ((v7 & 1) == 0)
    {
      [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
      v8 = [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest renderContext];
      [v8 cancelAllRequests];

      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __78__PUParallaxLayerStackViewModelUpdater_prepareOffscreenModelForLikelyDisplay___block_invoke;
      v12 = &unk_1E7B80C38;
      v13 = self;
      v14 = v4;
      [(PUParallaxLayerStackViewModelUpdater *)self renderBackfillLayers:v14 highPriority:1 importanceOrder:&v9 completion:0.0];
      [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction:v9];
    }
  }
}

- (void)renderModelAfterStyleInitialization:(id)a3 isUserTransformDisabled:(BOOL)a4 isOnscreen:(BOOL)a5 highPriority:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  if (v7)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __124__PUParallaxLayerStackViewModelUpdater_renderModelAfterStyleInitialization_isUserTransformDisabled_isOnscreen_highPriority___block_invoke;
    v21[3] = &unk_1E7B80C38;
    v21[4] = self;
    v11 = &v22;
    v12 = v10;
    v22 = v12;
    [(PUParallaxLayerStackViewModelUpdater *)self renderMainLayers:v12 highPriority:1 importanceOrder:v21 completion:0.0];
    v13 = 1.0;
    v14 = self;
    v15 = v12;
    v16 = 1;
    v17 = 0;
  }

  else
  {
    [(PUParallaxLayerStackViewModelUpdater *)self ensureOffscreenModelIsUnloaded:v10];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __124__PUParallaxLayerStackViewModelUpdater_renderModelAfterStyleInitialization_isUserTransformDisabled_isOnscreen_highPriority___block_invoke_2;
    v18[3] = &unk_1E7B805E8;
    v18[4] = self;
    v11 = &v19;
    v15 = v10;
    v19 = v15;
    v20 = v6;
    v13 = 0.0;
    v17 = v18;
    v14 = self;
    v16 = v6;
  }

  [(PUParallaxLayerStackViewModelUpdater *)v14 renderBackfillLayers:v15 highPriority:v16 importanceOrder:v17 completion:v13];

  [(PUParallaxLayerStackViewModelUpdater *)self renderSettlingEffectLayerIfNeededForViewModel:v10 highPriority:v7 importanceOrder:0.5];
  [(PUParallaxLayerStackViewModelUpdater *)self _prepareDefaultLayoutsForViewModel:v10 highPriority:1 importanceOrder:0.75];
  if ([v10 spatialPhotoEnabled])
  {
    [(PUParallaxLayerStackViewModelUpdater *)self _renderSpatialPhotoLayerIfNeededForViewModel:v10 isUserTransformDisabled:v8 forceRendering:0 highPriority:1 importanceOrder:0 completionHandler:0.25];
  }

  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
}

- (BOOL)waitForInFlightRenders:(double)a3
{
  transactionGroup = self->_transactionGroup;
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  return dispatch_group_wait(transactionGroup, v4) == 0;
}

- (void)cancelPendingRenders
{
  v40 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v32 = *&self->_mainRenderRequest;
  spatialPhotoGenerationRequest = self->_spatialPhotoGenerationRequest;
  settlingEffectRenderRequest = self->_settlingEffectRenderRequest;
  v34 = *&self->_clockOverlapRequest;
  layoutPropertiesRequest = self->_layoutPropertiesRequest;
  defaultLayoutRequest = self->_defaultLayoutRequest;
  v35 = spatialPhotoGenerationRequest;
  v36 = layoutPropertiesRequest;
  defaultSpatialLayoutRequest = self->_defaultSpatialLayoutRequest;
  v37 = defaultLayoutRequest;
  v38 = defaultSpatialLayoutRequest;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:9];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = PLWallpaperGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v12 renderContext];
          v15 = [v14 debugDescription];
          *buf = 138412290;
          v31 = v15;
          _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Timed out request: %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v9);
  }

  v16 = [(PIParallaxLayerStackRequest *)self->_mainRenderRequest renderContext];
  [v16 cancelAllRequests];

  v17 = [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest renderContext];
  [v17 cancelAllRequests];

  v18 = [(PIParallaxLayerStackRequest *)self->_settlingEffectRenderRequest renderContext];
  [v18 cancelAllRequests];

  v19 = [(PIParallaxClockLayoutRequest *)self->_clockOverlapRequest renderContext];
  [v19 cancelAllRequests];

  v20 = [(PIParallaxClockMaterialRequest *)self->_clockMaterialRequest renderContext];
  [v20 cancelAllRequests];

  v21 = [(PIParallaxLayerStackRequest *)self->_spatialPhotoGenerationRequest renderContext];
  [v21 cancelAllRequests];

  v22 = [(PIParallaxSpatialAnalysisRequest *)self->_spatialAnalysisRequest renderContext];
  [v22 cancelAllRequests];

  v23 = [(PIPosterLayoutPropertiesRequest *)self->_layoutPropertiesRequest renderContext];
  [v23 cancelAllRequests];

  v24 = [(PIPosterLayoutRequest *)self->_defaultLayoutRequest renderContext];
  [v24 cancelAllRequests];

  v25 = [(PIPosterLayoutRequest *)self->_defaultSpatialLayoutRequest renderContext];
  [v25 cancelAllRequests];
}

- (void)endRenderTransaction
{
  transactionResponseQueue = self->_transactionResponseQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PUParallaxLayerStackViewModelUpdater_endRenderTransaction__block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [MEMORY[0x1E69B3C60] commitAndNotifyOnQueue:transactionResponseQueue withBlock:v3];
}

- (void)beginRenderTransaction
{
  dispatch_group_enter(self->_transactionGroup);
  v2 = MEMORY[0x1E69B3C60];

  [v2 begin];
}

- (void)recalculateLuminance:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5
{
  v6 = a4;
  v8 = a3;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  v9 = [v8 allowedBehaviors];
  v10 = [v8 currentLayerStack];
  [(PIParallaxClockMaterialRequest *)self->_clockMaterialRequest setLayerStack:v10];

  v11 = [v8 style];
  [(PIParallaxClockMaterialRequest *)self->_clockMaterialRequest setStyle:v11];

  [(PIParallaxClockMaterialRequest *)self->_clockMaterialRequest setLuminanceCalculationType:(v9 >> 6) & 1];
  [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_clockMaterialRequest viewModel:v8 highPriority:v6 importanceOrder:a5];
  clockMaterialRequest = self->_clockMaterialRequest;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__PUParallaxLayerStackViewModelUpdater_recalculateLuminance_highPriority_importanceOrder___block_invoke;
  v14[3] = &unk_1E7B80440;
  v15 = v8;
  v13 = v8;
  [(PIParallaxClockMaterialRequest *)clockMaterialRequest submit:v14];
  [(PIParallaxClockMaterialRequest *)self->_clockMaterialRequest setLayerStack:0];
  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
}

void __90__PUParallaxLayerStackViewModelUpdater_recalculateLuminance_highPriority_importanceOrder___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [a2 result:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__PUParallaxLayerStackViewModelUpdater_recalculateLuminance_highPriority_importanceOrder___block_invoke_2;
    v7[3] = &unk_1E7B80328;
    v8 = v3;
    [v5 performChanges:v7];
    v6 = v8;
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to compute clock luminance: %@", buf, 0xCu);
    }
  }
}

void __90__PUParallaxLayerStackViewModelUpdater_recalculateLuminance_highPriority_importanceOrder___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) luminance];
  [v3 setClockAreaLuminance:?];
  v4 = PLWallpaperGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) luminance];
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEBUG, "LuminanceForLook: setting luminance of %.2f for view model: %@", &v6, 0x16u);
  }
}

- (void)performSpatialSceneAnalysis:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUParallaxLayerStackViewModelUpdater *)self _canEnableSpatialPhotoForViewModel:v6];
  v9 = [v6 currentLayerStack];
  v10 = [v9 spatialPhotoBackgroundBackfillLayer];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v6 currentLayerStack];
    v12 = [v13 spatialPhotoBackgroundLayer];
  }

  if (v8 && [v6 spatialPhotoEnabled] && (objc_msgSend(v12, "sharedScene"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
    v15 = [v6 currentLayout];
    [(PIParallaxSpatialAnalysisRequest *)self->_spatialAnalysisRequest setLayout:v15];

    -[PIParallaxSpatialAnalysisRequest setLayoutOrientation:](self->_spatialAnalysisRequest, "setLayoutOrientation:", [v6 orientation]);
    [(PIParallaxSpatialAnalysisRequest *)self->_spatialAnalysisRequest setSpatialPhotoLayer:v12];
    -[PIParallaxSpatialAnalysisRequest setIsInteractive:](self->_spatialAnalysisRequest, "setIsInteractive:", [v6 userAdjustedVisibleFrame]);
    [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_spatialAnalysisRequest viewModel:v6 highPriority:1 importanceOrder:0.1];
    spatialAnalysisRequest = self->_spatialAnalysisRequest;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__PUParallaxLayerStackViewModelUpdater_performSpatialSceneAnalysis_completion___block_invoke;
    v17[3] = &unk_1E7B805C0;
    v18 = v7;
    [(PIParallaxSpatialAnalysisRequest *)spatialAnalysisRequest submit:v17];
    [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)recalculateClockOverlap:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 allViewModels:(id)a6 intersectionOnly:(BOOL)a7 completion:(id)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a6;
  v16 = a8;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  v17 = [v14 currentLayout];
  [(PIParallaxClockLayoutRequest *)self->_clockOverlapRequest setLayout:v17];

  v18 = [v14 orientation];
  [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_clockOverlapRequest viewModel:v14 highPriority:v12 importanceOrder:a5];
  clockOverlapRequest = self->_clockOverlapRequest;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __135__PUParallaxLayerStackViewModelUpdater_recalculateClockOverlap_highPriority_importanceOrder_allViewModels_intersectionOnly_completion___block_invoke;
  v27[3] = &unk_1E7B80570;
  v31 = v18;
  v20 = v14;
  v28 = v20;
  v29 = v15;
  v32 = a7;
  v30 = v16;
  v21 = v16;
  v22 = v15;
  [(PIParallaxClockLayoutRequest *)clockOverlapRequest submit:v27];
  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
  spatialAnalysisCoalescer = self->_spatialAnalysisCoalescer;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __135__PUParallaxLayerStackViewModelUpdater_recalculateClockOverlap_highPriority_importanceOrder_allViewModels_intersectionOnly_completion___block_invoke_298;
  v25[3] = &unk_1E7B80598;
  v26 = v20;
  v24 = v20;
  [(PFCoalescer *)spatialAnalysisCoalescer update:v25];
}

void __135__PUParallaxLayerStackViewModelUpdater_recalculateClockOverlap_highPriority_importanceOrder_allViewModels_intersectionOnly_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v3 = [a2 result:&v25];
  v4 = v25;
  if (v3 && (v5 = *(a1 + 56), v5 == [*(a1 + 32) orientation]))
  {
    v15 = v4;
    v6 = [v3 clockLayerOrder];
    v7 = [v3 clockIntersection];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = a1;
    obj = *(a1 + 40);
    v9 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __135__PUParallaxLayerStackViewModelUpdater_recalculateClockOverlap_highPriority_importanceOrder_allViewModels_intersectionOnly_completion___block_invoke_2;
          v17[3] = &unk_1E7B80548;
          v20 = *(v8 + 64);
          v18 = v6;
          v19 = v7;
          [v13 performChanges:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v10);
    }

    v4 = v15;
    a1 = v8;
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to compute clock overlap: %@", buf, 0xCu);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))();
  }
}

void __135__PUParallaxLayerStackViewModelUpdater_recalculateClockOverlap_highPriority_importanceOrder_allViewModels_intersectionOnly_completion___block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  [v3 addObject:*(a1 + 32)];
}

void __135__PUParallaxLayerStackViewModelUpdater_recalculateClockOverlap_highPriority_importanceOrder_allViewModels_intersectionOnly_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 48) & 1) == 0)
  {
    [v3 setClockLayerOrder:*(a1 + 32)];
    v3 = v4;
  }

  [v3 setClockIntersection:*(a1 + 40)];
}

- (void)_renderSpatialPhotoLayerIfNeededForViewModel:(id)a3 isUserTransformDisabled:(BOOL)a4 forceRendering:(BOOL)a5 highPriority:(BOOL)a6 importanceOrder:(double)a7 completionHandler:(id)a8
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = a3;
  if (a8)
  {
    v16 = a8;
  }

  else
  {
    v16 = &__block_literal_global_282;
  }

  v17 = _Block_copy(v16);
  if ([(PUParallaxLayerStackViewModelUpdater *)self _canEnableSpatialPhotoForViewModel:v15])
  {
    if ([v15 spatialPhotoEnabled])
    {
      v18 = [v15 compoundLayerStack];
      v19 = [v18 layout];

      v20 = [v19 isUsingHeadroom];
      if (v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = [(PUParallaxLayerStackViewModelUpdater *)self item];
      v22 = [v21 spatialPhotoLayout];
      v23 = [v22 isUsingHeadroom];

      if (((v23 & 1) != 0 || [v15 headroomState] == 1) && objc_msgSend(v15, "headroomState") != 2)
      {
        v19 = [v15 headroomSpatialLayout];
        v20 = 1;
        if (v19)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v19 = [v15 defaultSpatialLayout];
        v20 = 0;
        if (v19)
        {
          goto LABEL_19;
        }
      }
    }

    v24 = PLWallpaperGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "effectiveLayout nil, falling back to viewModel.compoundLayerStack.layout", &buf, 2u);
    }

    v25 = [v15 compoundLayerStack];
    v19 = [v25 layout];

    if (!v19)
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      [v40 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewModelUpdater.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"effectiveLayout != nil"}];

      v19 = 0;
    }

LABEL_19:
    v26 = [v15 currentLayerStack];
    v27 = v26;
    if (v12)
    {
      v28 = [v26 spatialPhotoBackgroundLayer];
      v29 = v28 != 0;
    }

    else
    {
      v30 = [v26 spatialPhotoBackgroundBackfillLayer];
      if (!v30)
      {

        goto LABEL_27;
      }

      v28 = v30;
      [v15 currentLayerStack];
      v41 = v19;
      v31 = v17;
      v32 = v11;
      v33 = v12;
      v35 = v34 = v10;
      v29 = v20 ^ [v35 spatialPhotoBackfillIncludesHeadroom] ^ 1;

      v10 = v34;
      v12 = v33;
      v11 = v32;
      v17 = v31;
      v19 = v41;
    }

    if (!v11 && v29)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_293;
      v51[3] = &unk_1E7B80328;
      v52 = v19;
      [v15 performChanges:v51];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_2;
      block[3] = &unk_1E7B80C88;
      v50 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_31:
      goto LABEL_32;
    }

LABEL_27:
    objc_initWeak(&buf, v15);
    [v15 performChanges:&__block_literal_global_295];
    [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
    v36 = [v19 portraitLayout];
    [(PIParallaxLayerStackRequest *)self->_spatialPhotoGenerationRequest setLayout:v36];

    v37 = [v19 landscapeLayout];
    [(PIParallaxLayerStackRequest *)self->_spatialPhotoGenerationRequest setAuxiliaryLayout:v37];

    [(PIParallaxLayerStackRequest *)self->_spatialPhotoGenerationRequest setAllowedLayoutStrategies:[(PUParallaxLayerStackViewModelUpdater *)self _allowedLayoutStrategies]];
    if (v12)
    {
      v38 = 8;
    }

    else
    {
      v38 = 9;
    }

    [(PIParallaxLayerStackRequest *)self->_spatialPhotoGenerationRequest setLayerStackMode:v38];
    [(PIParallaxLayerStackRequest *)self->_spatialPhotoGenerationRequest setSpatialPhotoEnabled:1];
    -[PIParallaxLayerStackRequest setUserAdjustedVisibleFrame:](self->_spatialPhotoGenerationRequest, "setUserAdjustedVisibleFrame:", [v15 userAdjustedVisibleFrame]);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_4;
    v46[3] = &unk_1E7B804D0;
    objc_copyWeak(&v47, &buf);
    [(PIParallaxLayerStackRequest *)self->_spatialPhotoGenerationRequest setSpatialPhotoProgressHandler:v46];
    [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_spatialPhotoGenerationRequest viewModel:v15 highPriority:v10 importanceOrder:a7];
    spatialPhotoGenerationRequest = self->_spatialPhotoGenerationRequest;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_7;
    v42[3] = &unk_1E7B80520;
    v43 = v15;
    v44 = v19;
    v45 = v17;
    [(PIParallaxLayerStackRequest *)spatialPhotoGenerationRequest submit:v42];
    [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];

    objc_destroyWeak(&v47);
    objc_destroyWeak(&buf);
    goto LABEL_31;
  }

  v17[2](v17);
LABEL_32:
}

void __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_4(uint64_t a1, double a2)
{
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = *&a2;
  px_dispatch_on_main_queue();
  objc_destroyWeak(v3);
}

void __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v3 = [a2 result:&v17];
  v4 = v17;
  if (v3)
  {
    v5 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_8;
    v14[3] = &unk_1E7B804F8;
    v6 = &v15;
    v15 = v3;
    v16 = *(a1 + 40);
    [v5 performChanges:v14];
  }

  else
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed to render spatial photo layer: %@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_297;
    v12[3] = &unk_1E7B80328;
    v6 = &v13;
    v13 = v4;
    [v8 performChanges:v12];
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v9, v10, v11);
}

void __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layerStack];
  [v4 updateSpatialPhotoWithLayerStack:v5 layout:*(a1 + 40)];
}

void __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __171__PUParallaxLayerStackViewModelUpdater__renderSpatialPhotoLayerIfNeededForViewModel_isUserTransformDisabled_forceRendering_highPriority_importanceOrder_completionHandler___block_invoke_6;
  v3[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  v3[4] = *(a1 + 40);
  [WeakRetained performChanges:v3];
}

- (void)renderSettlingEffectLayerIfNeededForViewModel:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5
{
  v6 = a4;
  v8 = a3;
  if ([v8 canEnableSettlingEffect])
  {
    v9 = [v8 currentLayerStack];
    v10 = [v9 settlingEffectLayer];
    if (v10)
    {
    }

    else
    {
      v11 = [v8 style];
      v12 = [v11 kind];
      v13 = [v12 isEqualToString:*MEMORY[0x1E69C0B28]];

      if (v13)
      {
        [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
        v14 = [v8 currentLayout];
        [(PIParallaxLayerStackRequest *)self->_settlingEffectRenderRequest setLayout:v14];

        [(PIParallaxLayerStackRequest *)self->_settlingEffectRenderRequest setLayerStackMode:7];
        [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_settlingEffectRenderRequest viewModel:v8 highPriority:v6 importanceOrder:a5];
        settlingEffectRenderRequest = self->_settlingEffectRenderRequest;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __115__PUParallaxLayerStackViewModelUpdater_renderSettlingEffectLayerIfNeededForViewModel_highPriority_importanceOrder___block_invoke;
        v16[3] = &unk_1E7B80440;
        v17 = v8;
        [(PIParallaxLayerStackRequest *)settlingEffectRenderRequest submit:v16];
        [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
      }
    }
  }
}

void __115__PUParallaxLayerStackViewModelUpdater_renderSettlingEffectLayerIfNeededForViewModel_highPriority_importanceOrder___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [a2 result:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __115__PUParallaxLayerStackViewModelUpdater_renderSettlingEffectLayerIfNeededForViewModel_highPriority_importanceOrder___block_invoke_2;
    v7[3] = &unk_1E7B80328;
    v8 = v3;
    [v5 performChanges:v7];
    v6 = v8;
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to render settling effect layer: %@", buf, 0xCu);
    }
  }
}

void __115__PUParallaxLayerStackViewModelUpdater_renderSettlingEffectLayerIfNeededForViewModel_highPriority_importanceOrder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layerStack];
  [v3 updateLayerStack:v4];
}

- (void)_prepareDefaultLayoutsForViewModel:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5
{
  v6 = a3;
  v7 = [v6 style];
  v8 = [v7 kind];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69C0B28]];

  if (v9)
  {
    [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
    v10 = [(PUParallaxLayerStackViewModelUpdater *)self item];
    v11 = [v10 originalLayout];

    v12 = [(PUParallaxLayerStackViewModelUpdater *)self item];
    v13 = [v12 spatialPhotoLayout];

    v14 = [v11 isUsingHeadroom];
    v15 = [v13 isUsingHeadroom];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke;
    v36[3] = &unk_1E7B803A0;
    v39 = v14;
    v16 = v11;
    v37 = v16;
    v40 = v15;
    v17 = v13;
    v38 = v17;
    [v6 performPrivateChanges:v36];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_2;
    aBlock[3] = &unk_1E7B803C8;
    v18 = v6;
    v34 = v18;
    v35 = self;
    v19 = _Block_copy(aBlock);
    v19[2](v19, self->_defaultLayoutRequest);
    [(PIPosterLayoutRequest *)self->_defaultLayoutRequest setShouldConsiderHeadroom:v14 ^ 1u];
    defaultLayoutRequest = self->_defaultLayoutRequest;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_3;
    v30[3] = &unk_1E7B80418;
    v21 = v18;
    v31 = v21;
    v32 = v14;
    [(PIPosterLayoutRequest *)defaultLayoutRequest submit:v30];
    if (v17)
    {
      v19[2](v19, self->_defaultSpatialLayoutRequest);
      [(PIPosterLayoutRequest *)self->_defaultSpatialLayoutRequest setShouldComputeSpatialLayout:1];
      v22 = [(PUParallaxLayerStackViewModelUpdater *)self item];
      [v22 spatialPhotoNormalizedBounds];
      [(PIPosterLayoutRequest *)self->_defaultSpatialLayoutRequest setSpatialPadding:?];

      [(PIPosterLayoutRequest *)self->_defaultSpatialLayoutRequest setShouldConsiderHeadroom:v15 ^ 1u];
      defaultSpatialLayoutRequest = self->_defaultSpatialLayoutRequest;
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_279;
      v27 = &unk_1E7B80418;
      v28 = v21;
      v29 = v15;
      [(PIPosterLayoutRequest *)defaultSpatialLayoutRequest submit:&v24];
    }

    [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction:v24];
  }
}

void __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (*(a1 + 48) == 1)
  {
    [v3 setHeadroomLayout:v4];
  }

  else
  {
    [v3 setDefaultLayout:v4];
  }

  v5 = *(a1 + 40);
  if (*(a1 + 49) == 1)
  {
    [v6 setHeadroomSpatialLayout:v5];
  }

  else
  {
    [v6 setDefaultSpatialLayout:v5];
  }
}

void __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 segmentationItem];
  v6 = [v5 layoutConfiguration];
  [v4 setLayoutConfiguration:v6];

  v7 = [*(a1 + 40) item];
  v8 = [v7 regions];
  [v4 setLayoutRegions:v8];

  [v4 setAllowedLayoutStrategies:{objc_msgSend(*(a1 + 40), "_allowedLayoutStrategies")}];
  v9 = [*(a1 + 40) item];
  v10 = [v9 segmentationMatte];
  [v4 setSegmentationMatte:v10];

  v11 = [*(a1 + 40) item];
  v12 = [v11 segmentationConfidenceMap];
  [v4 setSegmentationConfidenceMap:v12];

  v13 = [*(a1 + 40) item];
  [v4 setSegmentationClassification:{objc_msgSend(v13, "classification")}];
}

void __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_4;
    v7[3] = &unk_1E7B803F0;
    v9 = *(a1 + 40);
    v8 = v3;
    [v5 performPrivateChanges:v7];
    v6 = v8;
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to prepare default layout: %@", buf, 0xCu);
    }
  }
}

void __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_279(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_2_280;
    v7[3] = &unk_1E7B803F0;
    v9 = *(a1 + 40);
    v8 = v3;
    [v5 performPrivateChanges:v7];
    v6 = v8;
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to prepare default spatial layout: %@", buf, 0xCu);
    }
  }
}

void __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_2_280(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layout];
  if (v2 == 1)
  {
    [v4 setDefaultSpatialLayout:v5];
  }

  else
  {
    [v4 setHeadroomSpatialLayout:v5];
  }
}

void __104__PUParallaxLayerStackViewModelUpdater__prepareDefaultLayoutsForViewModel_highPriority_importanceOrder___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layout];
  if (v2 == 1)
  {
    [v4 setDefaultLayout:v5];
  }

  else
  {
    [v4 setHeadroomLayout:v5];
  }
}

- (void)_calculateLayoutProperties:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [v10 allowedBehaviors] & 0x20;
  v13 = [v10 hasUserAdjustedTitleHeightOffset];
  v14 = +[PUPosterSettings sharedInstance];
  v15 = [v14 recalculateLayoutProperties];

  if (v15)
  {
    v16 = v12 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v13 == 0)
  {
    [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
    v18 = [v10 currentLayout];
    [(PIPosterLayoutPropertiesRequest *)self->_layoutPropertiesRequest setLayout:v18];

    [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_layoutPropertiesRequest viewModel:v10 highPriority:v8 importanceOrder:a5];
    layoutPropertiesRequest = self->_layoutPropertiesRequest;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __107__PUParallaxLayerStackViewModelUpdater__calculateLayoutProperties_highPriority_importanceOrder_completion___block_invoke;
    v23 = &unk_1E7B80350;
    v24 = v10;
    v25 = v11;
    [(PIPosterLayoutPropertiesRequest *)layoutPropertiesRequest submit:&v20];
    [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction:v20];
  }

  else if (v11)
  {
    v11[2](v11);
  }
}

void __107__PUParallaxLayerStackViewModelUpdater__calculateLayoutProperties_highPriority_importanceOrder_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = [a2 result:&v18];
  v4 = v18;
  if (v3)
  {
    v5 = [*(a1 + 32) currentLayout];
    [v3 maxClockShift];
    v6 = [v5 layoutByUpdatingMaxClockShift:?];

    v7 = [v6 layoutByUpdatingLayoutVariant:{objc_msgSend(v3, "layoutVariant")}];

    v8 = [*(a1 + 32) currentLayerStack];
    v9 = [v8 layerStackByUpdatingLayout:v7];

    v10 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__PUParallaxLayerStackViewModelUpdater__calculateLayoutProperties_highPriority_importanceOrder_completion___block_invoke_2;
    v16[3] = &unk_1E7B80328;
    v17 = v9;
    v11 = v9;
    [v10 performChanges:v16];
  }

  else
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed to render backfill layers: %@", buf, 0xCu);
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v12, v13, v14);
  }
}

- (void)renderBackfillLayers:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 completion:(id)a6
{
  v8 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  v12 = PLWallpaperGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    if (v8)
    {
      v13 = @"YES";
    }

    v14 = v13;
    v15 = [v10 style];
    v16 = [v15 kind];
    *buf = 138412546;
    v32 = v14;
    v33 = 2112;
    v34 = v16;
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_INFO, "Render backfill layers highPriority:%@ for:%@", buf, 0x16u);
  }

  v17 = [v10 segmentationItem];
  v18 = [v17 segmentationMatte];

  v19 = [v10 headroomState];
  v20 = [v10 currentLayout];
  [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest setLayout:v20];

  v21 = [v10 style];
  [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest setStyle:v21];

  [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest setLayerStackMode:2];
  [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest setAllowedLayoutStrategies:[(PUParallaxLayerStackViewModelUpdater *)self _allowedLayoutStrategies]];
  v23 = v19 == 2 && v18 == 0;
  [(PIParallaxLayerStackRequest *)self->_backfillRenderRequest setHeadroomDisabled:v23];
  [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_backfillRenderRequest viewModel:v10 highPriority:v8 importanceOrder:a5];
  backfillRenderRequest = self->_backfillRenderRequest;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __101__PUParallaxLayerStackViewModelUpdater_renderBackfillLayers_highPriority_importanceOrder_completion___block_invoke;
  v27[3] = &unk_1E7B80378;
  v30 = v8;
  v28 = v10;
  v29 = v11;
  v25 = v11;
  v26 = v10;
  [(PIParallaxLayerStackRequest *)backfillRenderRequest submit:v27];
  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction];
}

void __101__PUParallaxLayerStackViewModelUpdater_renderBackfillLayers_highPriority_importanceOrder_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = [a2 result:&v18];
  v4 = v18;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 48))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = v7;
      v9 = [*(a1 + 32) style];
      v10 = [v9 kind];
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "Completed backfill layers highPriority:%@ for:%@", buf, 0x16u);
    }

    v11 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __101__PUParallaxLayerStackViewModelUpdater_renderBackfillLayers_highPriority_importanceOrder_completion___block_invoke_275;
    v16[3] = &unk_1E7B80328;
    v17 = v3;
    [v11 performChanges:v16];
    v6 = v17;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to render backfill layers: %@", buf, 0xCu);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v12, v13, v14);
  }
}

void __101__PUParallaxLayerStackViewModelUpdater_renderBackfillLayers_highPriority_importanceOrder_completion___block_invoke_275(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layerStack];
  [v3 updateBackfillLayersFromLayerStack:v4];
}

- (void)renderMainLayers:(id)a3 highPriority:(BOOL)a4 importanceOrder:(double)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  [(PUParallaxLayerStackViewModelUpdater *)self beginRenderTransaction];
  v12 = [v10 segmentationItem];
  v13 = [v12 segmentationMatte];

  v14 = [v10 headroomState];
  v15 = [v10 currentLayout];
  [(PIParallaxLayerStackRequest *)self->_mainRenderRequest setLayout:v15];

  v16 = [v10 style];
  [(PIParallaxLayerStackRequest *)self->_mainRenderRequest setStyle:v16];

  [(PIParallaxLayerStackRequest *)self->_mainRenderRequest setAllowedLayoutStrategies:[(PUParallaxLayerStackViewModelUpdater *)self _allowedLayoutStrategies]];
  v18 = v14 == 2 && v13 == 0;
  [(PIParallaxLayerStackRequest *)self->_mainRenderRequest setHeadroomDisabled:v18];
  -[PIParallaxLayerStackRequest setLayerStackMode:](self->_mainRenderRequest, "setLayerStackMode:", [v10 orientation] == 2);
  [(PUParallaxLayerStackViewModelUpdater *)self _updatePriorityForRequest:self->_mainRenderRequest viewModel:v10 highPriority:v8 importanceOrder:a5];
  mainRenderRequest = self->_mainRenderRequest;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __97__PUParallaxLayerStackViewModelUpdater_renderMainLayers_highPriority_importanceOrder_completion___block_invoke;
  v25 = &unk_1E7B80350;
  v26 = v10;
  v27 = v11;
  v20 = v11;
  v21 = v10;
  [(PIParallaxLayerStackRequest *)mainRenderRequest submit:&v22];
  [(PUParallaxLayerStackViewModelUpdater *)self endRenderTransaction:v22];
}

void __97__PUParallaxLayerStackViewModelUpdater_renderMainLayers_highPriority_importanceOrder_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [a2 result:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__PUParallaxLayerStackViewModelUpdater_renderMainLayers_highPriority_importanceOrder_completion___block_invoke_2;
    v11[3] = &unk_1E7B80328;
    v12 = v3;
    [v5 performChanges:v11];
    v6 = v12;
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to render main layers: %@", buf, 0xCu);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v8, v9);
  }
}

void __97__PUParallaxLayerStackViewModelUpdater_renderMainLayers_highPriority_importanceOrder_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layerStack];
  [v3 updateLayerStack:v4];
}

- (BOOL)_canEnableSpatialPhotoForViewModel:(id)a3
{
  v3 = a3;
  if ([v3 canEnableSpatialPhoto])
  {
    v4 = [v3 style];
    v5 = [v4 kind];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69C0B28]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updatePriorityForRequest:(id)a3 viewModel:(id)a4 highPriority:(BOOL)a5 importanceOrder:(double)a6
{
  v7 = a5;
  v23 = a3;
  v10 = a4;
  v11 = objc_alloc(MEMORY[0x1E69B3C00]);
  if (v7)
  {
    v12 = [v11 initWithLevel:1 order:a6];
    [(PIPosterLayoutPropertiesRequest *)v23 setPriority:v12];

    v13 = a6 * 0.1;
  }

  else
  {
    v14 = [v11 initWithLevel:2 order:a6];
    [(PIPosterLayoutPropertiesRequest *)v23 setPriority:v14];

    v13 = a6 * 0.25 + 0.25;
  }

  v15 = [(PIPosterLayoutPropertiesRequest *)v23 renderContext];
  [v15 setMinimumRenderInterval:v13];

  if (self->_mainRenderRequest == v23)
  {
    v17 = @"Main Layers";
  }

  else if (self->_backfillRenderRequest == v23)
  {
    v17 = @"Backfill Layers";
  }

  else if (self->_settlingEffectRenderRequest == v23)
  {
    v17 = @"Settling Effect Layer";
  }

  else if (self->_spatialPhotoGenerationRequest == v23)
  {
    v17 = @"Spatial Photo Layer";
  }

  else if (self->_clockOverlapRequest == v23)
  {
    v17 = @"Clock Overlap";
  }

  else if (self->_clockMaterialRequest == v23)
  {
    v17 = @"Clock Luminance";
  }

  else if (self->_spatialAnalysisRequest == v23)
  {
    v17 = @"Spatial Analysis";
  }

  else if (self->_layoutPropertiesRequest == v23)
  {
    v17 = @"Layout Properties";
  }

  else
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
  }

  v18 = [v10 style];
  v19 = [v18 kind];
  v20 = v19;
  v21 = @"Low Priority";
  if (v7)
  {
    v21 = @"High Priority";
  }

  v22 = [(__CFString *)v17 stringByAppendingFormat:@" %@ %@", v19, v21];

  [(PIPosterLayoutPropertiesRequest *)v23 setName:v22];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUParallaxLayerStackViewModelUpdater alloc];
  v5 = [(PUParallaxLayerStackViewModelUpdater *)self item];
  v6 = [(PUParallaxLayerStackViewModelUpdater *)v4 initWithSegmentationItem:v5];

  v7 = [(PUParallaxLayerStackViewModelUpdater *)self mainRenderRequest];
  v8 = [v7 cache];
  v9 = [(PUParallaxLayerStackViewModelUpdater *)v6 mainRenderRequest];
  [v9 setCache:v8];

  v10 = [(PUParallaxLayerStackViewModelUpdater *)self backfillRenderRequest];
  v11 = [v10 cache];
  v12 = [(PUParallaxLayerStackViewModelUpdater *)v6 backfillRenderRequest];
  [v12 setCache:v11];

  return v6;
}

- (PUParallaxLayerStackViewModelUpdater)init
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x1E69B3D70];
    v5 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v3;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_447);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_447);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_447);
  }
}

- (PUParallaxLayerStackViewModelUpdater)initWithSegmentationItem:(id)a3
{
  v5 = a3;
  v48.receiver = self;
  v48.super_class = PUParallaxLayerStackViewModelUpdater;
  v6 = [(PUParallaxLayerStackViewModelUpdater *)&v48 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
    v8 = dispatch_group_create();
    transactionGroup = v7->_transactionGroup;
    v7->_transactionGroup = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ViewModelUpdater transaction queue", v10);
    transactionResponseQueue = v7->_transactionResponseQueue;
    v7->_transactionResponseQueue = v11;

    v13 = [objc_alloc(MEMORY[0x1E69BDEB8]) initWithSegmentationItem:v5];
    mainRenderRequest = v7->_mainRenderRequest;
    v7->_mainRenderRequest = v13;

    v15 = MEMORY[0x1E69E96A0];
    [(PIParallaxLayerStackRequest *)v7->_mainRenderRequest setResponseQueue:MEMORY[0x1E69E96A0]];
    [(PIParallaxLayerStackRequest *)v7->_mainRenderRequest setShouldCoalesceUpdates:1];
    [(PIParallaxLayerStackRequest *)v7->_mainRenderRequest setHeadroomBlurEnabled:0];
    v16 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(PIParallaxLayerStackRequest *)v7->_mainRenderRequest setCache:v16];

    v17 = [objc_alloc(MEMORY[0x1E69BDEB8]) initWithSegmentationItem:v5];
    backfillRenderRequest = v7->_backfillRenderRequest;
    v7->_backfillRenderRequest = v17;

    [(PIParallaxLayerStackRequest *)v7->_backfillRenderRequest setResponseQueue:v15];
    [(PIParallaxLayerStackRequest *)v7->_backfillRenderRequest setShouldCoalesceUpdates:1];
    [(PIParallaxLayerStackRequest *)v7->_backfillRenderRequest setHeadroomBlurEnabled:0];
    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(PIParallaxLayerStackRequest *)v7->_backfillRenderRequest setCache:v19];

    v20 = [objc_alloc(MEMORY[0x1E69BDEB8]) initWithSegmentationItem:v5];
    settlingEffectRenderRequest = v7->_settlingEffectRenderRequest;
    v7->_settlingEffectRenderRequest = v20;

    [(PIParallaxLayerStackRequest *)v7->_settlingEffectRenderRequest setResponseQueue:v15];
    [(PIParallaxLayerStackRequest *)v7->_settlingEffectRenderRequest setShouldCoalesceUpdates:1];
    v22 = [objc_alloc(MEMORY[0x1E69BDE80]) initWithSegmentationItem:v5];
    clockOverlapRequest = v7->_clockOverlapRequest;
    v7->_clockOverlapRequest = v22;

    [(PIParallaxClockLayoutRequest *)v7->_clockOverlapRequest setResponseQueue:v15];
    [(PIParallaxClockLayoutRequest *)v7->_clockOverlapRequest setShouldCoalesceUpdates:1];
    v24 = objc_alloc_init(MEMORY[0x1E69BDED8]);
    spatialAnalysisRequest = v7->_spatialAnalysisRequest;
    v7->_spatialAnalysisRequest = v24;

    [(PIParallaxSpatialAnalysisRequest *)v7->_spatialAnalysisRequest setResponseQueue:v15];
    [(PIParallaxSpatialAnalysisRequest *)v7->_spatialAnalysisRequest setShouldCoalesceUpdates:1];
    v26 = MEMORY[0x1E69BDD68];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = [v26 coalescerWithLabel:@"Spatial Scene Analysis" target:v7 buffer:v27 queue:v15 bufferDrainer:&__block_literal_global_95415 action:&__block_literal_global_220_95416];
    spatialAnalysisCoalescer = v7->_spatialAnalysisCoalescer;
    v7->_spatialAnalysisCoalescer = v28;

    v30 = [objc_alloc(MEMORY[0x1E69BDE88]) initWithLayerStack:0];
    clockMaterialRequest = v7->_clockMaterialRequest;
    v7->_clockMaterialRequest = v30;

    [(PIParallaxClockMaterialRequest *)v7->_clockMaterialRequest setResponseQueue:v15];
    [(PIParallaxClockMaterialRequest *)v7->_clockMaterialRequest setShouldCoalesceUpdates:1];
    v32 = [objc_alloc(MEMORY[0x1E69B3A08]) initWithDelay:0.25];
    styleChangeCoalescer = v7->_styleChangeCoalescer;
    v7->_styleChangeCoalescer = v32;

    v34 = [objc_alloc(MEMORY[0x1E69BDEB8]) initWithSegmentationItem:v5];
    spatialPhotoGenerationRequest = v7->_spatialPhotoGenerationRequest;
    v7->_spatialPhotoGenerationRequest = v34;

    [(PIParallaxLayerStackRequest *)v7->_spatialPhotoGenerationRequest setResponseQueue:v15];
    [(PIParallaxLayerStackRequest *)v7->_spatialPhotoGenerationRequest setShouldCoalesceUpdates:1];
    v36 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(PIParallaxLayerStackRequest *)v7->_spatialPhotoGenerationRequest setCache:v36];

    v37 = [objc_alloc(MEMORY[0x1E69BDF00]) initWithSegmentationItem:v5];
    layoutPropertiesRequest = v7->_layoutPropertiesRequest;
    v7->_layoutPropertiesRequest = v37;

    [(PIPosterLayoutPropertiesRequest *)v7->_layoutPropertiesRequest setResponseQueue:v15];
    [(PIPosterLayoutPropertiesRequest *)v7->_layoutPropertiesRequest setShouldCoalesceUpdates:1];
    v39 = objc_alloc(MEMORY[0x1E69BDF08]);
    v40 = [v5 composition];
    v41 = [v39 initWithComposition:v40];
    defaultLayoutRequest = v7->_defaultLayoutRequest;
    v7->_defaultLayoutRequest = v41;

    [(PIPosterLayoutRequest *)v7->_defaultLayoutRequest setResponseQueue:v15];
    v43 = objc_alloc(MEMORY[0x1E69BDF08]);
    v44 = [v5 composition];
    v45 = [v43 initWithComposition:v44];
    defaultSpatialLayoutRequest = v7->_defaultSpatialLayoutRequest;
    v7->_defaultSpatialLayoutRequest = v45;

    [(PIPosterLayoutRequest *)v7->_defaultSpatialLayoutRequest setResponseQueue:v15];
  }

  return v7;
}

void __65__PUParallaxLayerStackViewModelUpdater_initWithSegmentationItem___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [a3 lastObject];
  v9 = v8;
  if (v6 && v8)
  {
    v10 = [v7 activityTokenWithReason:@"performSceneAnalysis"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PUParallaxLayerStackViewModelUpdater_initWithSegmentationItem___block_invoke_3;
    v12[3] = &unk_1E7B80C38;
    v13 = v7;
    v14 = v10;
    v11 = v10;
    [v6 performSpatialSceneAnalysis:v9 completion:v12];
  }
}

uint64_t __65__PUParallaxLayerStackViewModelUpdater_initWithSegmentationItem___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) delayNextInvocationByTimeInterval:0.2];
  v2 = *(a1 + 40);

  return [v2 endActivity];
}

id __65__PUParallaxLayerStackViewModelUpdater_initWithSegmentationItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

@end