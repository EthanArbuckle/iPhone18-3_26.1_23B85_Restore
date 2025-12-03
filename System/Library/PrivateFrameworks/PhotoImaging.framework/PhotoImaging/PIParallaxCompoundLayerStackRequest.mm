@interface PIParallaxCompoundLayerStackRequest
- (PIParallaxCompoundLayerStackRequest)initWithComposition:(id)composition;
- (PIParallaxCompoundLayerStackRequest)initWithSegmentationItem:(id)item;
- (id)_responseWithCompoundLayerStack:(id)stack;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectiveLayout;
- (id)newRenderJob;
- (void)_calculateLayoutPropertiesWithOrientedLayout:(id)layout isAuxiliary:(BOOL)auxiliary completion:(id)completion;
- (void)_chooseLayoutForOrientation:(int64_t)orientation completion:(id)completion;
- (void)_generateLayerStackForOrientation:(int64_t)orientation completion:(id)completion;
- (void)_recordError:(id)error;
- (void)_submit:(id)_submit;
- (void)_submitClockMaterialRequestWithLayerStack:(id)stack completion:(id)completion;
- (void)_submitClockOverlapRequestWithLayout:(id)layout completion:(id)completion;
- (void)_submitInactiveLayoutRequestWithOrientedLayout:(id)layout completion:(id)completion;
- (void)_submitLayerStackRequestForMode:(int64_t)mode layout:(id)layout auxiliaryLayout:(id)auxiliaryLayout completion:(id)completion;
- (void)_submitLayerStackRequestsWithLayout:(id)layout auxiliaryLayout:(id)auxiliaryLayout orientation:(int64_t)orientation completion:(id)completion;
- (void)_submitSpatialPhotoInactiveDataRequestWithLayerStack:(id)stack completion:(id)completion;
- (void)cancel;
- (void)submit:(id)submit;
@end

@implementation PIParallaxCompoundLayerStackRequest

- (void)cancel
{
  renderContext = [(NURenderRequest *)self renderContext];
  [renderContext cancelAllRequests];
}

- (id)_responseWithCompoundLayerStack:(id)stack
{
  stackCopy = stack;
  if (self->_error)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:self->_error];
  }

  else
  {
    v6 = objc_alloc_init(_PIParallaxCompoundLayerStackResult);
    [(_PIParallaxCompoundLayerStackResult *)v6 setCompoundLayerStack:stackCopy];
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

- (void)_recordError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_181);
  }

  v6 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = errorCopy;
    _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "PIParallaxCompoundLayerStackRequest _recordError: %{public}@", buf, 0xCu);
  }

  if (self->_error)
  {
    objc_storeStrong(&self->_error, error);
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

          renderContext = [*(*(&v13 + 1) + 8 * i) renderContext];
          [renderContext cancelAllRequests];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)_submitLayerStackRequestForMode:(int64_t)mode layout:(id)layout auxiliaryLayout:(id)auxiliaryLayout completion:(id)completion
{
  completionCopy = completion;
  auxiliaryLayoutCopy = auxiliaryLayout;
  layoutCopy = layout;
  v13 = [PIParallaxLayerStackRequest alloc];
  segmentationItem = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
  v15 = [(PIParallaxLayerStackRequest *)v13 initWithSegmentationItem:segmentationItem];

  priority = [(NURenderRequest *)self priority];
  [(NURenderRequest *)v15 setPriority:priority];

  responseQueue = [(NURenderRequest *)self responseQueue];
  [(NURenderRequest *)v15 setResponseQueue:responseQueue];

  renderContext = [(NURenderRequest *)self renderContext];
  [(NURenderRequest *)v15 setRenderContext:renderContext];

  style = [(PIParallaxCompoundLayerStackRequest *)self style];
  [(PIParallaxLayerStackRequest *)v15 setStyle:style];

  [(PIParallaxLayerStackRequest *)v15 setLayout:layoutCopy];
  [(PIParallaxLayerStackRequest *)v15 setAuxiliaryLayout:auxiliaryLayoutCopy];

  [(PIParallaxLayerStackRequest *)v15 setLayerStackMode:mode];
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
  selfCopy = self;
  v26 = completionCopy;
  v20 = completionCopy;
  [(PIParallaxLayerStackRequest *)v15 submit:&v21];
  [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v15, v21, v22, v23, v24, selfCopy];
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

- (void)_submitSpatialPhotoInactiveDataRequestWithLayerStack:(id)stack completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  completionCopy = completion;
  if ([stackCopy hasInactiveLayers] && (objc_msgSend(stackCopy, "spatialPhotoEnabled") & 1) != 0)
  {
    backgroundLayer = [stackCopy backgroundLayer];
    inactiveBackgroundLayer = [stackCopy inactiveBackgroundLayer];
    if ([backgroundLayer image] && objc_msgSend(inactiveBackgroundLayer, "image"))
    {
      v10 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:{objc_msgSend(backgroundLayer, "image")}];
      v11 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:{objc_msgSend(inactiveBackgroundLayer, "image")}];
      v12 = [PIParallaxInactiveStyleLearnRequest alloc];
      [backgroundLayer frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [inactiveBackgroundLayer frame];
      v25 = [(PIParallaxInactiveStyleLearnRequest *)v12 initWithFromPixelBuffer:v10 frame:v11 toPixelBuffer:v14 frame:v16, v18, v20, v21, v22, v23, v24];
      priority = [(NURenderRequest *)self priority];
      [(NURenderRequest *)v25 setPriority:priority];

      responseQueue = [(NURenderRequest *)self responseQueue];
      [(NURenderRequest *)v25 setResponseQueue:responseQueue];

      renderContext = [(NURenderRequest *)self renderContext];
      [(NURenderRequest *)v25 setRenderContext:renderContext];

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __103__PIParallaxCompoundLayerStackRequest__submitSpatialPhotoInactiveDataRequestWithLayerStack_completion___block_invoke;
      v30[3] = &unk_1E82AC510;
      v30[4] = self;
      v31 = stackCopy;
      v32 = completionCopy;
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
        v34 = stackCopy;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Can't learn inactive style; missing layers: %@", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, stackCopy);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, stackCopy);
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

- (void)_submitClockMaterialRequestWithLayerStack:(id)stack completion:(id)completion
{
  stackCopy = stack;
  completionCopy = completion;
  updateClockAreaLuminance = [(PIParallaxCompoundLayerStackRequest *)self updateClockAreaLuminance];
  if (stackCopy && updateClockAreaLuminance && !self->_error)
  {
    v9 = [[PIParallaxClockMaterialRequest alloc] initWithLayerStack:stackCopy];
    [(PIParallaxClockMaterialRequest *)v9 setLuminanceCalculationType:[(PIParallaxCompoundLayerStackRequest *)self fullPhotoLuminanceCalculationEnabled]];
    priority = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v9 setPriority:priority];

    responseQueue = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v9 setResponseQueue:responseQueue];

    renderContext = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v9 setRenderContext:renderContext];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__PIParallaxCompoundLayerStackRequest__submitClockMaterialRequestWithLayerStack_completion___block_invoke;
    v13[3] = &unk_1E82AC510;
    v14 = stackCopy;
    selfCopy = self;
    v16 = completionCopy;
    [(PIParallaxClockMaterialRequest *)v9 submit:v13];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, stackCopy);
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

- (void)_submitClockOverlapRequestWithLayout:(id)layout completion:(id)completion
{
  layoutCopy = layout;
  completionCopy = completion;
  if ([(PIParallaxCompoundLayerStackRequest *)self updateClockZPosition])
  {
    v8 = [PIParallaxClockLayoutRequest alloc];
    segmentationItem = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v10 = [(PIParallaxClockLayoutRequest *)v8 initWithSegmentationItem:segmentationItem];

    [(PIParallaxClockLayoutRequest *)v10 setLayout:layoutCopy];
    priority = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v10 setPriority:priority];

    responseQueue = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v10 setResponseQueue:responseQueue];

    renderContext = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v10 setRenderContext:renderContext];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__PIParallaxCompoundLayerStackRequest__submitClockOverlapRequestWithLayout_completion___block_invoke;
    v15[3] = &unk_1E82AC510;
    v15[4] = self;
    v17 = completionCopy;
    v16 = layoutCopy;
    [(PIParallaxClockLayoutRequest *)v10 submit:v15];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v10];
  }

  else
  {
    clockLayerOrder = [layoutCopy clockLayerOrder];
    (*(completionCopy + 2))(completionCopy, clockLayerOrder, [layoutCopy clockIntersection]);
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

- (void)_submitInactiveLayoutRequestWithOrientedLayout:(id)layout completion:(id)completion
{
  layoutCopy = layout;
  completionCopy = completion;
  if ([(PIParallaxCompoundLayerStackRequest *)self updateInactiveFrame])
  {
    v8 = [PIPosterInactiveFrameLayoutRequest alloc];
    segmentationItem = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v10 = [(PIPosterInactiveFrameLayoutRequest *)v8 initWithSegmentationItem:segmentationItem];

    [(PIPosterInactiveFrameLayoutRequest *)v10 setLayout:layoutCopy];
    priority = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v10 setPriority:priority];

    responseQueue = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v10 setResponseQueue:responseQueue];

    renderContext = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v10 setRenderContext:renderContext];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__PIParallaxCompoundLayerStackRequest__submitInactiveLayoutRequestWithOrientedLayout_completion___block_invoke;
    v15[3] = &unk_1E82AC510;
    v15[4] = self;
    v16 = v10;
    v17 = completionCopy;
    v14 = v10;
    [(PIPosterInactiveFrameLayoutRequest *)v14 submit:v15];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v14];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, layoutCopy);
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

- (void)_calculateLayoutPropertiesWithOrientedLayout:(id)layout isAuxiliary:(BOOL)auxiliary completion:(id)completion
{
  auxiliaryCopy = auxiliary;
  layoutCopy = layout;
  completionCopy = completion;
  if ((!auxiliaryCopy || layoutCopy && [(PIParallaxCompoundLayerStackRequest *)self isSpatialPhotoEnabled]) && [(PIParallaxCompoundLayerStackRequest *)self shouldRecalculateLayoutProperties])
  {
    v10 = [PIPosterLayoutPropertiesRequest alloc];
    segmentationItem = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v12 = [(PIPosterLayoutPropertiesRequest *)v10 initWithSegmentationItem:segmentationItem];

    [(PIPosterLayoutPropertiesRequest *)v12 setLayout:layoutCopy];
    [(PIPosterLayoutPropertiesRequest *)v12 setCalculateAdaptiveFrame:1];
    priority = [(NURenderRequest *)self priority];
    [(NURenderRequest *)v12 setPriority:priority];

    responseQueue = [(NURenderRequest *)self responseQueue];
    [(NURenderRequest *)v12 setResponseQueue:responseQueue];

    renderContext = [(NURenderRequest *)self renderContext];
    [(NURenderRequest *)v12 setRenderContext:renderContext];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__PIParallaxCompoundLayerStackRequest__calculateLayoutPropertiesWithOrientedLayout_isAuxiliary_completion___block_invoke;
    v16[3] = &unk_1E82AC510;
    v16[4] = self;
    v17 = layoutCopy;
    v18 = completionCopy;
    [(PIPosterLayoutPropertiesRequest *)v12 submit:v16];
    [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, layoutCopy);
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

- (void)_chooseLayoutForOrientation:(int64_t)orientation completion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (orientation == 1)
  {
    effectiveLayout = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    portraitLayout = [effectiveLayout portraitLayout];

    effectiveLayout2 = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    landscapeLayout = [effectiveLayout2 landscapeLayout];
    goto LABEL_7;
  }

  if (orientation == 2)
  {
    effectiveLayout3 = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    portraitLayout = [effectiveLayout3 landscapeLayout];

    effectiveLayout2 = [(PIParallaxCompoundLayerStackRequest *)self effectiveLayout];
    landscapeLayout = [effectiveLayout2 portraitLayout];
LABEL_7:
    v7 = landscapeLayout;

LABEL_8:
    [portraitLayout layoutVariant];
    if (PFPosterIsLayoutVariantAdaptive() && ([(PIParallaxCompoundLayerStackRequest *)self allowedLayoutStrategies]& 2) == 0)
    {
      v13 = [portraitLayout layoutByUpdatingLayoutVariant:1];

      v14 = [v7 layoutByUpdatingLayoutVariant:1];

      v7 = v14;
      portraitLayout = v13;
    }

    if (portraitLayout)
    {
      completionCopy[2](completionCopy, portraitLayout, v7);
    }

    else
    {
      v15 = [PIPosterLayoutRequest alloc];
      segmentationItem = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      composition = [segmentationItem composition];
      v18 = [(NURenderRequest *)v15 initWithComposition:composition];

      segmentationItem2 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      layoutConfiguration = [segmentationItem2 layoutConfiguration];
      v21 = layoutConfiguration;
      if (layoutConfiguration)
      {
        deviceConfiguration = layoutConfiguration;
      }

      else
      {
        deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
      }

      v23 = deviceConfiguration;

      landscapeConfiguration = [v23 landscapeConfiguration];

      if (orientation == 2 && !landscapeConfiguration)
      {
        v25 = objc_alloc(MEMORY[0x1E69C0938]);
        portraitConfiguration = [v23 portraitConfiguration];
        [MEMORY[0x1E69C0938] deviceConfiguration];
        v54 = v7;
        v28 = v27 = completionCopy;
        landscapeConfiguration2 = [v28 landscapeConfiguration];
        v30 = [v25 initWithPortraitConfiguration:portraitConfiguration landscapeConfiguration:landscapeConfiguration2];

        completionCopy = v27;
        v7 = v54;

        v23 = v30;
      }

      [(PIPosterLayoutRequest *)v18 setLayoutConfiguration:v23];
      segmentationItem3 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      regions = [segmentationItem3 regions];
      [(PIPosterLayoutRequest *)v18 setLayoutRegions:regions];

      [(PIPosterLayoutRequest *)v18 setAllowedLayoutStrategies:[(PIParallaxCompoundLayerStackRequest *)self allowedLayoutStrategies]];
      segmentationItem4 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      segmentationMatte = [segmentationItem4 segmentationMatte];
      [(PIPosterLayoutRequest *)v18 setSegmentationMatte:segmentationMatte];

      segmentationItem5 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      segmentationConfidenceMap = [segmentationItem5 segmentationConfidenceMap];
      [(PIPosterLayoutRequest *)v18 setSegmentationConfidenceMap:segmentationConfidenceMap];

      segmentationItem6 = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
      -[PIPosterLayoutRequest setSegmentationClassification:](v18, "setSegmentationClassification:", [segmentationItem6 classification]);

      responseQueue = [(NURenderRequest *)self responseQueue];
      [(NURenderRequest *)v18 setResponseQueue:responseQueue];

      renderContext = [(NURenderRequest *)self renderContext];
      [(NURenderRequest *)v18 setRenderContext:renderContext];

      priority = [(NURenderRequest *)self priority];
      [(NURenderRequest *)v18 setPriority:priority];

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __78__PIParallaxCompoundLayerStackRequest__chooseLayoutForOrientation_completion___block_invoke;
      v55[3] = &unk_1E82AA938;
      orientationCopy = orientation;
      v55[4] = self;
      v56 = completionCopy;
      [(PIPosterLayoutRequest *)v18 submit:v55];
      [(PIParallaxCompoundLayerStackRequest *)self _addChildRequest:v18];
    }

    return;
  }

  if (orientation)
  {
    v7 = 0;
    portraitLayout = 0;
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
      callStackSymbols = [v50 callStackSymbols];
      v53 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v59 = v49;
      v60 = 2114;
      v61 = v53;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v46)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v48 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (void)_generateLayerStackForOrientation:(int64_t)orientation completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PIParallaxCompoundLayerStackRequest__generateLayerStackForOrientation_completion___block_invoke;
  v8[3] = &unk_1E82AA910;
  v9 = completionCopy;
  orientationCopy = orientation;
  v8[4] = self;
  v7 = completionCopy;
  [(PIParallaxCompoundLayerStackRequest *)self _chooseLayoutForOrientation:orientation completion:v8];
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
  layout = [(PIParallaxCompoundLayerStackRequest *)self layout];
  if (layout)
  {
    originalLayout = layout;
  }

  else if (!-[PIParallaxCompoundLayerStackRequest isSettlingEffectEnabled](self, "isSettlingEffectEnabled") || (-[PIParallaxCompoundLayerStackRequest segmentationItem](self, "segmentationItem"), v6 = objc_claimAutoreleasedReturnValue(), [v6 settlingEffectLayout], originalLayout = objc_claimAutoreleasedReturnValue(), v6, !originalLayout))
  {
    if (!-[PIParallaxCompoundLayerStackRequest isSpatialPhotoEnabled](self, "isSpatialPhotoEnabled") || (-[PIParallaxCompoundLayerStackRequest segmentationItem](self, "segmentationItem"), v7 = objc_claimAutoreleasedReturnValue(), [v7 spatialPhotoLayout], originalLayout = objc_claimAutoreleasedReturnValue(), v7, !originalLayout))
    {
      if ([(PIParallaxCompoundLayerStackRequest *)self ignoreOriginalLayout])
      {
        originalLayout = 0;
      }

      else
      {
        segmentationItem = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
        originalLayout = [segmentationItem originalLayout];
      }
    }
  }

  return originalLayout;
}

- (void)_submitLayerStackRequestsWithLayout:(id)layout auxiliaryLayout:(id)auxiliaryLayout orientation:(int64_t)orientation completion:(id)completion
{
  layoutCopy = layout;
  auxiliaryLayoutCopy = auxiliaryLayout;
  completionCopy = completion;
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
  if (orientation == 2)
  {
    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x20) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:1 layout:layoutCopy completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x80) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:5 layout:layoutCopy completion:v13];
    }
  }

  else if (orientation == 1)
  {
    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 1) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:0 layout:layoutCopy completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 8) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:4 layout:layoutCopy completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x40) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:7 layout:layoutCopy completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x100) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:8 layout:layoutCopy auxiliaryLayout:auxiliaryLayoutCopy completion:v13];
    }

    if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x400) != 0)
    {
      [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:9 layout:layoutCopy auxiliaryLayout:auxiliaryLayoutCopy completion:v13];
    }
  }

  if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 2) != 0)
  {
    [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:2 layout:layoutCopy completion:v13];
  }

  if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 4) != 0)
  {
    [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:3 layout:layoutCopy completion:v13];
  }

  if (([(PIParallaxCompoundLayerStackRequest *)self layerStackOptions]& 0x10) != 0)
  {
    [(PIParallaxCompoundLayerStackRequest *)self _submitLayerStackRequestForMode:6 layout:layoutCopy completion:v13];
  }

  v14 = MEMORY[0x1E69B3C60];
  responseQueue = [(NURenderRequest *)self responseQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__PIParallaxCompoundLayerStackRequest__submitLayerStackRequestsWithLayout_auxiliaryLayout_orientation_completion___block_invoke_2;
  v17[3] = &unk_1E82AC398;
  v16 = completionCopy;
  v18 = v16;
  v19 = v21;
  [v14 commitAndNotifyOnQueue:responseQueue withBlock:v17];

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

- (void)_submit:(id)_submit
{
  _submitCopy = _submit;
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

  responseQueue = [(NURenderRequest *)self responseQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__PIParallaxCompoundLayerStackRequest__submit___block_invoke_3;
  v14[3] = &unk_1E82AA820;
  v14[4] = self;
  v15 = _submitCopy;
  v16 = v26;
  v17 = v21;
  v13 = _submitCopy;
  dispatch_group_notify(v11, responseQueue, v14);

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

- (void)submit:(id)submit
{
  submitCopy = submit;
  v5 = [(PIParallaxCompoundLayerStackRequest *)self copy];
  [v5 _submit:submitCopy];
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
          callStackSymbols = [v18 callStackSymbols];
          v2 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [v12 callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = PIParallaxCompoundLayerStackRequest;
  v4 = [(NURenderRequest *)&v12 copyWithZone:zone];
  if (v4)
  {
    segmentationItem = [(PIParallaxCompoundLayerStackRequest *)self segmentationItem];
    v6 = v4[25];
    v4[25] = segmentationItem;

    layout = [(PIParallaxCompoundLayerStackRequest *)self layout];
    v8 = v4[27];
    v4[27] = layout;

    style = [(PIParallaxCompoundLayerStackRequest *)self style];
    v10 = v4[26];
    v4[26] = style;

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

- (PIParallaxCompoundLayerStackRequest)initWithComposition:(id)composition
{
  v29 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
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
          callStackSymbols = [v20 callStackSymbols];
          v4 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (PIParallaxCompoundLayerStackRequest)initWithSegmentationItem:(id)item
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy)
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
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = itemCopy;
  composition = [itemCopy composition];
  v23.receiver = self;
  v23.super_class = PIParallaxCompoundLayerStackRequest;
  v8 = [(NURenderRequest *)&v23 initWithComposition:composition];

  if (v8)
  {
    objc_storeStrong(&v8->_segmentationItem, item);
    v8->_layerStackOptions = 1;
    v8->_allowedLayoutStrategies = 1;
  }

  return v8;
}

@end