@interface PIParallaxCompoundLayerStackRequest
- (PIParallaxCompoundLayerStackRequest)initWithComposition:(id)a3;
- (PIParallaxCompoundLayerStackRequest)initWithSegmentationItem:(id)a3;
- (id)_responseWithCompoundLayerStack:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)effectiveLayout;
- (id)newRenderJob;
- (void)_calculateLayoutPropertiesWithOrientedLayout:(id)a3 isAuxiliary:(BOOL)a4 completion:(id)a5;
- (void)_chooseLayoutForOrientation:(int64_t)a3 completion:(id)a4;
- (void)_generateLayerStackForOrientation:(int64_t)a3 completion:(id)a4;
- (void)_recordError:(id)a3;
- (void)_submit:(id)a3;
- (void)_submitClockMaterialRequestWithLayerStack:(id)a3 completion:(id)a4;
- (void)_submitClockOverlapRequestWithLayout:(id)a3 completion:(id)a4;
- (void)_submitInactiveLayoutRequestWithOrientedLayout:(id)a3 completion:(id)a4;
- (void)_submitLayerStackRequestForMode:(int64_t)a3 layout:(id)a4 auxiliaryLayout:(id)a5 completion:(id)a6;
- (void)_submitLayerStackRequestsWithLayout:(id)a3 auxiliaryLayout:(id)a4 orientation:(int64_t)a5 completion:(id)a6;
- (void)_submitSpatialPhotoInactiveDataRequestWithLayerStack:(id)a3 completion:(id)a4;
- (void)cancel;
- (void)submit:(id)a3;
@end

@implementation PIParallaxCompoundLayerStackRequest

- (void)cancel
{
  v2 = [(NURenderRequest *)self renderContext];
  [v2 cancelAllRequests];
}

- (id)_responseWithCompoundLayerStack:(id)a3
{
  v4 = a3;
  if (self->_error)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:self->_error];
  }

  else
  {
    v6 = objc_alloc_init(_PIParallaxCompoundLayerStackResult);
    [(_PIParallaxCompoundLayerStackResult *)v6 setCompoundLayerStack:v4];
    if ([(NSMutableArray *)self->_results count])
    {
      v7 = PFMap();
      v8 = [MEMORY[0x1E69B3C20] aggregateStatistics:v7];
      [(_NURenderResult *)v6 setStatistics:v8];
    }

    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v6];
  }

  return v5;
}

- (void)_recordError:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
  }

  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = v5;
    _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "PIParallaxCompoundLayerStackRequest _recordError: %{public}@", buf, 0xCu);
  }

  if (self->_error)
  {
    objc_storeStrong(&self->_error, a3);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_requests;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v13 + 1) + 8 * i) renderContext];
          [v12 cancelAllRequests];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)_submitLayerStackRequestForMode:(int64_t)a3 layout:(id)a4 auxiliaryLayout:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [PIParallaxLayerStackRequest alloc];
  v14 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
  v15 = [(PIParallaxLayerStackRequest *)v13 initWithSegmentationItem:v14];

  v16 = [(NURenderRequest *)self priority];
  [(NURenderRequest *)v15 setPriority:v16];

  v17 = [(NURenderRequest *)self responseQueue];
  [(NURenderRequest *)v15 setResponseQueue:v17];

  v18 = [(NURenderRequest *)self renderContext];
  [(NURenderRequest *)v15 setRenderContext:v18];

  v19 = [(PIParallaxCompoundLayerStackRequest *)self style];
  [(PIParallaxLayerStackRequest *)v15 setStyle:v19];

  [(PIParallaxLayerStackRequest *)v15 setLayout:v12];
  [(PIParallaxLayerStackRequest *)v15 setAuxiliaryLayout:v11];

  [(PIParallaxLayerStackRequest *)v15 setLayerStackMode:a3];
  [(PIParallaxLayerStackRequest *)v15 setSettlingEffectEnabled:[(PIParallaxCompoundLayerStackRequest *)self isSettlingEffectEnabled]];
  [(PIParallaxLayerStackRequest *)v15 setSpatialPhotoEnabled:[(PIParallaxCompoundLayerStackRequest *)self isSpatialPhotoEnabled]];
  [(PIParallaxLayerStackRequest *)v15 setUserAdjustedVisibleFrame:[(PIParallaxCompoundLayerStackRequest *)self userAdjustedVisibleFrame]];
  [(PIParallaxLayerStackRequest *)v15 setForegroundLayerEnabled:[(PIParallaxCompoundLayerStackRequest *)self isForegroundLayerEnabled]];
  [(PIParallaxLayerStackRequest *)v15 setAllowedLayoutStrategies:[(PIParallaxCompoundLayerStackRequest *)self allowedLayoutStrategies]];
  [(PIParallaxLayerStackRequest *)v15 setUseLegacyHeadroom:[(PIParallaxCompoundLayerStackRequest *)self useLegacyHeadroom]];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __105__PIParallaxCompoundLayerStackRequest__submitLayerStackRequestForMode_layout_auxiliaryLayout_completion___block_invoke;
  v24 = &unk_1E82ACC00;
  v25 = self;
  v26 = v10;
  v20 = v10;
  [(PIParallaxLayerStackRequest *)v15 submit:&v21];
  [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v15, v21, v22, v23, v24, v25];
}

void __105__PIParallaxCompoundLayerStackRequest__submitLayerStackRequestForMode_layout_auxiliaryLayout_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  if (v3)
  {
    [*(a1 + 32) _recordResult:v3];
    v5 = *(a1 + 40);
    v6 = [v3 layerStack];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Failed to render layer stack, error: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _recordError:v4];
  }
}

- (void)_submitSpatialPhotoInactiveDataRequestWithLayerStack:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 hasInactiveLayers] && (objc_msgSend(v6, "spatialPhotoEnabled") & 1) != 0)
  {
    v8 = [v6 backgroundLayer];
    v9 = [v6 inactiveBackgroundLayer];
    if ([v8 image] && objc_msgSend(v9, "image"))
    {
      v10 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:{objc_msgSend(v8, "image")}];
      v11 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:{objc_msgSend(v9, "image")}];
      v12 = [PIParallaxInactiveStyleLearnRequest alloc];
      [v8 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [v9 frame];
      v25 = [(PIParallaxInactiveStyleLearnRequest *)v12 initWithFromPixelBuffer:v10 frame:v11 toPixelBuffer:v14 frame:v16, v18, v20, v21, v22, v23, v24];
      v26 = [(NURenderRequest *)self priority];
      [(NURenderRequest *)v25 setPriority:v26];

      v27 = [(NURenderRequest *)self responseQueue];
      [(NURenderRequest *)v25 setResponseQueue:v27];

      v28 = [(NURenderRequest *)self renderContext];
      [(NURenderRequest *)v25 setRenderContext:v28];

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __103__PIParallaxCompoundLayerStackRequest__submitSpatialPhotoInactiveDataRequestWithLayerStack_completion___block_invoke;
      v30[3] = &unk_1E82AC510;
      v30[4] = self;
      v31 = v6;
      v32 = v7;
      [(PIParallaxInactiveStyleLearnRequest *)v25 submit:v30];
      [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v25];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
      }

      v29 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v6;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Can't learn inactive style; missing layers: %@", buf, 0xCu);
      }

      (*(v7 + 2))(v7, v6);
    }
  }

  else
  {
    (*(v7 + 2))(v7, v6);
  }
}

void __103__PIParallaxCompoundLayerStackRequest__submitSpatialPhotoInactiveDataRequestWithLayerStack_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v3 = [a2 result:&v14];
  v4 = v14;
  if (v3)
  {
    [*(a1 + 32) _recordResult:v3];
    v5 = objc_alloc(MEMORY[0x1E69C0758]);
    v6 = [v3 styleData];
    [v3 styleFrame];
    v7 = [v5 initWithData:v6 frame:*MEMORY[0x1E69C0AC8] zPosition:? identifier:?];

    v8 = [*(a1 + 40) layers];
    v9 = [v8 arrayByAddingObject:v7];

    v10 = *(a1 + 40);
    v11 = [v10 layout];
    [v11 imageSize];
    v12 = [v10 layerStackByUpdatingLayers:v9 imageSize:?];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Failed to get inactive style data, error: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _recordError:v4];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_submitClockMaterialRequestWithLayerStack:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PIParallaxCompoundLayerStackRequest *)self updateClockAreaLuminance];
  if (v6 && v8 && !self->_error)
  {
    v9 = [[PIParallaxClockMaterialRequest alloc] initWithLayerStack:v6];
    [(PIParallaxClockMaterialRequest *)v9 setLuminanceCalculationType:[(PIParallaxCompoundLayerStackRequest *)self fullPhotoLuminanceCalculationEnabled]];
    v10 = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v9 setPriority:v10];

    v11 = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v9 setResponseQueue:v11];

    v12 = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v9 setRenderContext:v12];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__PIParallaxCompoundLayerStackRequest__submitClockMaterialRequestWithLayerStack_completion___block_invoke;
    v13[3] = &unk_1E82AC510;
    v14 = v6;
    v15 = self;
    v16 = v7;
    [(PIParallaxClockMaterialRequest *)v9 submit:v13];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v9];
  }

  else
  {
    (*(v7 + 2))(v7, v6);
  }
}

void __92__PIParallaxCompoundLayerStackRequest__submitClockMaterialRequestWithLayerStack_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = *(a1 + 32);
    [v3 luminance];
    v6 = [v5 layerStackByUpdatingClockAreaLuminance:?];
    [*(a1 + 40) _recordResult:v3];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Failed to compute clock material: %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) _recordError:v4];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_submitClockOverlapRequestWithLayout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PIParallaxCompoundLayerStackRequest *)self updateClockZPosition])
  {
    v8 = [PIParallaxClockLayoutRequest alloc];
    v9 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v10 = [(PIParallaxClockLayoutRequest *)v8 initWithSegmentationItem:v9];

    [(PIParallaxClockLayoutRequest *)v10 setLayout:v6];
    v11 = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v10 setPriority:v11];

    v12 = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v10 setResponseQueue:v12];

    v13 = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v10 setRenderContext:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__PIParallaxCompoundLayerStackRequest__submitClockOverlapRequestWithLayout_completion___block_invoke;
    v15[3] = &unk_1E82AC510;
    v15[4] = self;
    v17 = v7;
    v16 = v6;
    [(PIParallaxClockLayoutRequest *)v10 submit:v15];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v10];
  }

  else
  {
    v14 = [v6 clockLayerOrder];
    (*(v7 + 2))(v7, v14, [v6 clockIntersection]);
  }
}

void __87__PIParallaxCompoundLayerStackRequest__submitClockOverlapRequestWithLayout_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [a2 result:&v9];
  v4 = v9;
  if (v3)
  {
    [*(a1 + 32) _recordResult:v3];
    v5 = *(a1 + 48);
    v6 = [v3 clockLayerOrder];
    (*(v5 + 16))(v5, v6, [v3 clockIntersection]);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Failed to compute clock overlap: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _recordError:v4];
    v8 = *(a1 + 48);
    v6 = [*(a1 + 40) clockLayerOrder];
    (*(v8 + 16))(v8, v6, [*(a1 + 40) clockIntersection]);
  }
}

- (void)_submitInactiveLayoutRequestWithOrientedLayout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PIParallaxCompoundLayerStackRequest *)self updateInactiveFrame])
  {
    v8 = [PIPosterInactiveFrameLayoutRequest alloc];
    v9 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v10 = [(PIPosterInactiveFrameLayoutRequest *)v8 initWithSegmentationItem:v9];

    [(PIPosterInactiveFrameLayoutRequest *)v10 setLayout:v6];
    v11 = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v10 setPriority:v11];

    v12 = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v10 setResponseQueue:v12];

    v13 = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v10 setRenderContext:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__PIParallaxCompoundLayerStackRequest__submitInactiveLayoutRequestWithOrientedLayout_completion___block_invoke;
    v15[3] = &unk_1E82AC510;
    v15[4] = self;
    v16 = v10;
    v17 = v7;
    v14 = v10;
    [(PIPosterInactiveFrameLayoutRequest *)v14 submit:v15];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v14];
  }

  else
  {
    (*(v7 + 2))(v7, v6);
  }
}

void __97__PIParallaxCompoundLayerStackRequest__submitInactiveLayoutRequestWithOrientedLayout_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  if (v3)
  {
    [*(a1 + 32) _recordResult:v3];
    v5 = [*(a1 + 40) layout];
    [v3 inactiveRect];
    v6 = [v5 layoutByUpdatingInactiveFrame:?];

    [v3 adaptiveInactiveRect];
    v7 = [v6 layoutByUpdatingAdaptiveInactiveFrame:?];

    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v4;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Failed to update layout: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _recordError:v4];
    v10 = *(a1 + 48);
    v7 = [*(a1 + 40) layout];
    v8 = *(v10 + 16);
  }

  v8();
}

- (void)_calculateLayoutPropertiesWithOrientedLayout:(id)a3 isAuxiliary:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ((!v6 || v8 && [(PIParallaxCompoundLayerStackRequest *)self isSpatialPhotoEnabled]) && [(PIParallaxCompoundLayerStackRequest *)self shouldRecalculateLayoutProperties])
  {
    v10 = [PIPosterLayoutPropertiesRequest alloc];
    v11 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v12 = [(PIPosterLayoutPropertiesRequest *)v10 initWithSegmentationItem:v11];

    [(PIPosterLayoutPropertiesRequest *)v12 setLayout:v8];
    [(PIPosterLayoutPropertiesRequest *)v12 setCalculateAdaptiveFrame:1];
    v13 = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v12 setPriority:v13];

    v14 = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v12 setResponseQueue:v14];

    v15 = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v12 setRenderContext:v15];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__PIParallaxCompoundLayerStackRequest__calculateLayoutPropertiesWithOrientedLayout_isAuxiliary_completion___block_invoke;
    v16[3] = &unk_1E82AC510;
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    [(PIPosterLayoutPropertiesRequest *)v12 submit:v16];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v12];
  }

  else
  {
    (*(v9 + 2))(v9, v8);
  }
}

void __107__PIParallaxCompoundLayerStackRequest__calculateLayoutPropertiesWithOrientedLayout_isAuxiliary_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v3 = [a2 result:&v14];
  v4 = v14;
  if (v3)
  {
    [*(a1 + 32) _recordResult:v3];
    v5 = [*(a1 + 40) clockLayerOrder];
    v6 = *(a1 + 40);
    [v3 maxClockShift];
    v7 = [v6 layoutByUpdatingMaxClockShift:?];
    v8 = [v7 layoutByUpdatingLayoutVariant:{objc_msgSend(v3, "layoutVariant")}];

    [v3 visibleFrame];
    v9 = [v8 layoutByUpdatingVisibleFrame:?];

    [v3 adaptiveVisibleFrame];
    v10 = [v9 layoutByUpdatingAdaptiveVisibleFrame:?];

    [v3 adaptiveTimeFrame];
    v11 = [v10 layoutByUpdatingAdaptiveTimeFrame:?];

    v12 = [v11 layoutByUpdatingClockLayerOrder:v5];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Failed to update layout properties: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _recordError:v4];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_chooseLayoutForOrientation:(int64_t)a3 completion:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 1)
  {
    v12 = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    v8 = [v12 portraitLayout];

    v10 = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    v11 = [v10 landscapeLayout];
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v9 = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    v8 = [v9 landscapeLayout];

    v10 = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    v11 = [v10 portraitLayout];
LABEL_7:
    v7 = v11;

LABEL_8:
    [v8 layoutVariant];
    if (PFPosterIsLayoutVariantAdaptive() && ([(PIParallaxCompoundLayerStackRequest *)self allowedLayoutStrategies]& 2) == 0)
    {
      v13 = [v8 layoutByUpdatingLayoutVariant:1];

      v14 = [v7 layoutByUpdatingLayoutVariant:1];

      v7 = v14;
      v8 = v13;
    }

    if (v8)
    {
      v6[2](v6, v8, v7);
    }

    else
    {
      v15 = [PIPosterLayoutRequest alloc];
      v16 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      v17 = [v16 composition];
      v18 = [(NURenderRequest *)v15 initWithComposition:v17];

      v19 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      v20 = [v19 layoutConfiguration];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = [MEMORY[0x1E69C0938] deviceConfiguration];
      }

      v23 = v22;

      v24 = [v23 landscapeConfiguration];

      if (a3 == 2 && !v24)
      {
        v25 = objc_alloc(MEMORY[0x1E69C0938]);
        v26 = [v23 portraitConfiguration];
        [MEMORY[0x1E69C0938] deviceConfiguration];
        v54 = v7;
        v28 = v27 = v6;
        v29 = [v28 landscapeConfiguration];
        v30 = [v25 initWithPortraitConfiguration:v26 landscapeConfiguration:v29];

        v6 = v27;
        v7 = v54;

        v23 = v30;
      }

      [(PIPosterLayoutRequest *)v18 setLayoutConfiguration:v23];
      v31 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      v32 = [v31 regions];
      [(PIPosterLayoutRequest *)v18 setLayoutRegions:v32];

      [(PIPosterLayoutRequest *)v18 setAllowedLayoutStrategies:[(PIParallaxCompoundLayerStackRequest *)self allowedLayoutStrategies]];
      v33 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      v34 = [v33 segmentationMatte];
      [(PIPosterLayoutRequest *)v18 setSegmentationMatte:v34];

      v35 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      v36 = [v35 segmentationConfidenceMap];
      [(PIPosterLayoutRequest *)v18 setSegmentationConfidenceMap:v36];

      v37 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      -[PIPosterLayoutRequest setSegmentationClassification:](v18, "setSegmentationClassification:", [v37 classification]);

      v38 = [(NURenderRequest *)self responseQueue];
      [(NURenderRequest *)v18 setResponseQueue:v38];

      v39 = [(NURenderRequest *)self renderContext];
      [(NURenderRequest *)v18 setRenderContext:v39];

      v40 = [(NURenderRequest *)self priority];
      [(NURenderRequest *)v18 setPriority:v40];

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __78__PIParallaxCompoundLayerStackRequest__chooseLayoutForOrientation_completion___block_invoke;
      v55[3] = &unk_1E82AA938;
      v57 = a3;
      v55[4] = self;
      v56 = v6;
      [(PIPosterLayoutRequest *)v18 submit:v55];
      [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v18];
    }

    return;
  }

  if (a3)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v41 = NUAssertLogger_9496();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown orientation"];
    *buf = 138543362;
    v59 = v42;
    _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v43 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v45 = NUAssertLogger_9496();
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v46)
    {
      v49 = dispatch_get_specific(*v43);
      v50 = MEMORY[0x1E696AF00];
      v51 = v49;
      v52 = [v50 callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v59 = v49;
      v60 = 2114;
      v61 = v53;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v46)
  {
    v47 = [MEMORY[0x1E696AF00] callStackSymbols];
    v48 = [v47 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v59 = v48;
    _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  _NUAssertFailHandler();
  NUAssertLogger_9496();
}

void __78__PIParallaxCompoundLayerStackRequest__chooseLayoutForOrientation_completion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
  }

  v5 = MEMORY[0x1E69B3D80];
  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v3;
    _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "Poster original layout response: %{public}@", buf, 0xCu);
  }

  v30 = 0;
  v7 = [v3 result:&v30];
  v8 = v30;
  if (!v7)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v8;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Failed to request layout for item: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _recordError:v8];
    goto LABEL_22;
  }

  v9 = *(a1 + 48);
  if (v9 == 1)
  {
    v19 = *(a1 + 40);
    v20 = [v7 layout];
    v21 = [v20 portraitLayout];
    v22 = [v7 layout];
    v23 = [v22 landscapeLayout];
    goto LABEL_21;
  }

  if (v9 == 2)
  {
    v19 = *(a1 + 40);
    v20 = [v7 layout];
    v21 = [v20 landscapeLayout];
    v22 = [v7 layout];
    v23 = [v22 portraitLayout];
LABEL_21:
    v24 = v23;
    (*(v19 + 16))(v19, v21, v23);

    goto LABEL_22;
  }

  if (v9)
  {
LABEL_22:

    return;
  }

  v10 = NUAssertLogger_9496();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown orientation"];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v14 = NUAssertLogger_9496();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v15)
    {
      v25 = dispatch_get_specific(*v12);
      v26 = MEMORY[0x1E696AF00];
      v27 = v25;
      v28 = [v26 callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v32 = v25;
      v33 = 2114;
      v34 = v29;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v15)
  {
    v16 = [MEMORY[0x1E696AF00] callStackSymbols];
    v17 = [v16 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v32 = v17;
    _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  _NUAssertFailHandler();
  __NUAssertLogger_block_invoke_9517();
}

- (void)_generateLayerStackForOrientation:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke;
  v8[3] = &unk_1E82AA910;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(PIParallaxCompoundLayerStackRequest *)self _chooseLayoutForOrientation:a3 completion:v8];
}

void __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_2;
  v9[3] = &unk_1E82AA8E8;
  v9[4] = v6;
  v10 = v5;
  v7 = a1[5];
  v12 = a1[6];
  v11 = v7;
  v8 = v5;
  [v6 _calculateLayoutPropertiesWithOrientedLayout:a2 isAuxiliary:0 completion:v9];
}

void __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_3;
  v8[3] = &unk_1E82AA8E8;
  v8[4] = v4;
  v9 = v3;
  v6 = a1[6];
  v11 = a1[7];
  v10 = v6;
  v7 = v3;
  [v4 _calculateLayoutPropertiesWithOrientedLayout:v5 isAuxiliary:1 completion:v8];
}

void __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_4;
  v8[3] = &unk_1E82AA8E8;
  v8[4] = v4;
  v9 = v3;
  v6 = a1[6];
  v11 = a1[7];
  v10 = v6;
  v7 = v3;
  [v4 _submitInactiveLayoutRequestWithOrientedLayout:v5 completion:v8];
}

void __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_5;
  v9[3] = &unk_1E82AA8C0;
  v10 = v3;
  v11 = v4;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = v5;
  v14 = v6;
  v13 = v7;
  v8 = v3;
  [v4 _submitClockOverlapRequestWithLayout:v8 completion:v9];
}

void __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) layoutByUpdatingClockLayerOrder:a2];
  v6 = [v5 layoutByUpdatingClockIntersection:a3];

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_6;
  v10[3] = &unk_1E82AA898;
  v10[4] = v7;
  v9 = *(a1 + 64);
  v11 = *(a1 + 56);
  [v7 _submitLayerStackRequestsWithLayout:v6 auxiliaryLayout:v8 orientation:v9 completion:v10];
}

void __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_7;
  v4[3] = &unk_1E82AA898;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _submitSpatialPhotoInactiveDataRequestWithLayerStack:a2 completion:v4];
}

void __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke_8;
  v4[3] = &unk_1E82AA870;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _submitClockMaterialRequestWithLayerStack:a2 completion:v4];
}

- (id)effectiveLayout
{
  v3 = [(PIParallaxCompoundLayerStackRequest *)self layout];
  if (v3)
  {
    v4 = v3;
  }

  else if (!-[PIParallaxCompoundLayerStackRequest isSettlingEffectEnabled](self, "isSettlingEffectEnabled") || (-[PIParallaxCompoundLayerStackRequest segmentationItem](self, "segmentationItem"), v6 = objc_claimAutoreleasedReturnValue(), [v6 settlingEffectLayout], v4 = objc_claimAutoreleasedReturnValue(), v6, !v4))
  {
    if (!-[PIParallaxCompoundLayerStackRequest isSpatialPhotoEnabled](self, "isSpatialPhotoEnabled") || (-[PIParallaxCompoundLayerStackRequest segmentationItem](self, "segmentationItem"), v7 = objc_claimAutoreleasedReturnValue(), [v7 spatialPhotoLayout], v4 = objc_claimAutoreleasedReturnValue(), v7, !v4))
    {
      if ([(PIParallaxCompoundLayerStackRequest *)self ignoreOriginalLayout])
      {
        v4 = 0;
      }

      else
      {
        v8 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
        v4 = [v8 originalLayout];
      }
    }
  }

  return v4;
}

- (void)_submitLayerStackRequestsWithLayout:(id)a3 auxiliaryLayout:(id)a4 orientation:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [MEMORY[0x1E69B3C60] begin];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__9523;
  v21[4] = __Block_byref_object_dispose__9524;
  v22 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __114__PIParallaxCompoundLayerStackRequest__submitLayerStackRequestsWithLayout_auxiliaryLayout_orientation_completion___block_invoke;
  v20[3] = &unk_1E82AA848;
  v20[4] = v21;
  v13 = MEMORY[0x1CCA61740](v20);
  if (a5 == 2)
  {
    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x20) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:1 layout:v10 completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x80) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:5 layout:v10 completion:v13];
    }
  }

  else if (a5 == 1)
  {
    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 1) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:0 layout:v10 completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 8) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:4 layout:v10 completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x40) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:7 layout:v10 completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x100) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:8 layout:v10 auxiliaryLayout:v11 completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x400) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:9 layout:v10 auxiliaryLayout:v11 completion:v13];
    }
  }

  if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 2) != 0)
  {
    [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:2 layout:v10 completion:v13];
  }

  if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 4) != 0)
  {
    [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:3 layout:v10 completion:v13];
  }

  if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x10) != 0)
  {
    [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:6 layout:v10 completion:v13];
  }

  v14 = MEMORY[0x1E69B3C60];
  v15 = [(NURenderRequest *)self responseQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__PIParallaxCompoundLayerStackRequest__submitLayerStackRequestsWithLayout_auxiliaryLayout_orientation_completion___block_invoke_2;
  v17[3] = &unk_1E82AC398;
  v16 = v12;
  v18 = v16;
  v19 = v21;
  [v14 commitAndNotifyOnQueue:v15 withBlock:v17];

  _Block_object_dispose(v21, 8);
}

void __114__PIParallaxCompoundLayerStackRequest__submitLayerStackRequestsWithLayout_auxiliaryLayout_orientation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  v11 = v3;
  if (v5)
  {
    v6 = [v3 layers];
    [v11 size];
    v7 = [v5 layerStackByUpdatingLayers:v6 imageSize:?];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v10;
  }
}

- (void)_submit:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  requests = self->_requests;
  self->_requests = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  results = self->_results;
  self->_results = v7;

  error = self->_error;
  self->_error = 0;

  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__9523;
  v26[4] = __Block_byref_object_dispose__9524;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __47__PIParallaxCompoundLayerStackRequest__submit___block_invoke;
  v23[3] = &unk_1E82AA7F8;
  v25 = v26;
  v11 = v10;
  v24 = v11;
  [(PIParallaxCompoundLayerStackRequest *)self _generateLayerStackForOrientation:1 completion:v23];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__9523;
  v21[4] = __Block_byref_object_dispose__9524;
  v22 = 0;
  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    dispatch_group_enter(v11);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__PIParallaxCompoundLayerStackRequest__submit___block_invoke_2;
    v18[3] = &unk_1E82AA7F8;
    v20 = v21;
    v19 = v11;
    [(PIParallaxCompoundLayerStackRequest *)self _generateLayerStackForOrientation:2 completion:v18];
  }

  v12 = [(NURenderRequest *)self responseQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__PIParallaxCompoundLayerStackRequest__submit___block_invoke_3;
  v14[3] = &unk_1E82AA820;
  v14[4] = self;
  v15 = v4;
  v16 = v26;
  v17 = v21;
  v13 = v4;
  dispatch_group_notify(v11, v12, v14);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v26, 8);
}

void __47__PIParallaxCompoundLayerStackRequest__submit___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __47__PIParallaxCompoundLayerStackRequest__submit___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __47__PIParallaxCompoundLayerStackRequest__submit___block_invoke_3(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = [v2 settlingEffectLayer];
      v4 = v3;
      if (v3)
      {
        v5 = *(*(*(a1 + 56) + 8) + 40);
        v53[0] = v3;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
        [*(*(*(a1 + 56) + 8) + 40) size];
        v7 = [v5 layerStackByUpdatingLayers:v6 imageSize:?];
        v8 = *(*(a1 + 56) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }

      v10 = [*(*(*(a1 + 48) + 8) + 40) spatialPhotoBackgroundLayer];
      v11 = v10;
      if (v10)
      {
        v12 = *(*(*(a1 + 56) + 8) + 40);
        v52 = v10;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
        [*(*(*(a1 + 56) + 8) + 40) size];
        v14 = [v12 layerStackByUpdatingLayers:v13 imageSize:?];
        v15 = *(*(a1 + 56) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }

      v17 = [*(*(*(a1 + 48) + 8) + 40) spatialPhotoForegroundLayer];
      v18 = v17;
      if (v17)
      {
        v19 = *(*(*(a1 + 56) + 8) + 40);
        v51 = v17;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        [*(*(*(a1 + 56) + 8) + 40) size];
        v21 = [v19 layerStackByUpdatingLayers:v20 imageSize:?];
        v22 = *(*(a1 + 56) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
      }

      v24 = [*(*(*(a1 + 48) + 8) + 40) spatialPhotoBackgroundBackfillLayer];
      v25 = v24;
      if (v24)
      {
        v26 = *(*(*(a1 + 56) + 8) + 40);
        v50 = v24;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
        [*(*(*(a1 + 56) + 8) + 40) size];
        v28 = [v26 layerStackByUpdatingLayers:v27 imageSize:?];
        v29 = *(*(a1 + 56) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;
      }

      v31 = [*(*(*(a1 + 48) + 8) + 40) spatialPhotoForegroundBackfillLayer];
      v32 = v31;
      if (v31)
      {
        v33 = *(*(*(a1 + 56) + 8) + 40);
        v49 = v31;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
        [*(*(*(a1 + 56) + 8) + 40) size];
        v35 = [v33 layerStackByUpdatingLayers:v34 imageSize:?];
        v36 = *(*(a1 + 56) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;
      }

      v38 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:*(*(*(a1 + 48) + 8) + 40) landscapeLayerStack:*(*(*(a1 + 56) + 8) + 40)];
      v39 = *(a1 + 40);
      v40 = [*(a1 + 32) _responseWithCompoundLayerStack:v38];
      (*(v39 + 16))(v39, v40);
    }

    else
    {
      v45 = *(a1 + 32);
      v44 = *(a1 + 40);
      v47 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:*(*(*(a1 + 48) + 8) + 40) landscapeLayerStack:0];
      v46 = [v45 _responseWithCompoundLayerStack:?];
      (*(v44 + 16))(v44, v46);
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
    }

    v41 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Portrait layer stack generation failed", buf, 2u);
    }

    v42 = *(a1 + 40);
    v43 = [*(a1 + 32) _responseWithCompoundLayerStack:0];
    (*(v42 + 16))(v42, v43);
  }
}

- (void)submit:(id)a3
{
  v4 = a3;
  v5 = [(PIParallaxCompoundLayerStackRequest *)self copy];
  [v5 _submit:v4];
}

- (id)newRenderJob
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v3 = MEMORY[0x1E69B3D70];
    v4 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v10 = *v2;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v10 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_179);
        }

LABEL_11:
        v16 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v18 = MEMORY[0x1E696AF00];
          v19 = specific;
          v20 = v16;
          v21 = [v18 callStackSymbols];
          v2 = [v21 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v24 = specific;
          v25 = 2114;
          v26 = v2;
          _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v10 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_179);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v15;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_179);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = PIParallaxCompoundLayerStackRequest;
  v4 = [(NURenderRequest *)&v12 copyWithZone:a3];
  if (v4)
  {
    v5 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v6 = v4[25];
    v4[25] = v5;

    v7 = [(PIParallaxCompoundLayerStackRequest *)self layout];
    v8 = v4[27];
    v4[27] = v7;

    v9 = [(PIParallaxCompoundLayerStackRequest *)self style];
    v10 = v4[26];
    v4[26] = v9;

    v4[28] = [(PIParallaxCompoundLayerStackRequest *)self layerStackOptions];
    v4[29] = [(PIParallaxCompoundLayerStackRequest *)self allowedLayoutStrategies];
    *(v4 + 190) = [(PIParallaxCompoundLayerStackRequest *)self shouldRecalculateLayoutProperties];
    *(v4 + 191) = [(PIParallaxCompoundLayerStackRequest *)self useLegacyHeadroom];
    *(v4 + 192) = [(PIParallaxCompoundLayerStackRequest *)self updateInactiveFrame];
    *(v4 + 193) = [(PIParallaxCompoundLayerStackRequest *)self updateClockZPosition];
    *(v4 + 194) = [(PIParallaxCompoundLayerStackRequest *)self updateClockAreaLuminance];
    *(v4 + 185) = [(PIParallaxCompoundLayerStackRequest *)self isSettlingEffectEnabled];
    *(v4 + 186) = [(PIParallaxCompoundLayerStackRequest *)self isSpatialPhotoEnabled];
    *(v4 + 187) = [(PIParallaxCompoundLayerStackRequest *)self userAdjustedVisibleFrame];
    *(v4 + 189) = [(PIParallaxCompoundLayerStackRequest *)self isForegroundLayerEnabled];
    *(v4 + 184) = [(PIParallaxCompoundLayerStackRequest *)self ignoreOriginalLayout];
  }

  return v4;
}

- (PIParallaxCompoundLayerStackRequest)initWithComposition:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v5 = MEMORY[0x1E69B3D70];
    v6 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v10];
      *buf = 138543362;
      v26 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v4;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_179);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v4 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v26 = specific;
          v27 = 2114;
          v28 = v4;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_179);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v24 = objc_opt_class();
    NSStringFromClass(v24);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_179);
  }
}

- (PIParallaxCompoundLayerStackRequest)initWithSegmentationItem:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = NUAssertLogger_9496();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "segmentationItem != nil"];
      *buf = 138543362;
      v25 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_9496();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = v5;
  v7 = [v5 composition];
  v23.receiver = self;
  v23.super_class = PIParallaxCompoundLayerStackRequest;
  v8 = [(NURenderRequest *)&v23 initWithComposition:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_segmentationItem, a3);
    v8->_layerStackOptions = 1;
    v8->_allowedLayoutStrategies = 1;
  }

  return v8;
}

@end