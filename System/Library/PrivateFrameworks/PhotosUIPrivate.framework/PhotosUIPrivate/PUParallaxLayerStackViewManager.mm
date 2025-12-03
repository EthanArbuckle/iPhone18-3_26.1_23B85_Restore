@interface PUParallaxLayerStackViewManager
- (NSArray)createdLayerViews;
- (PUParallaxDebugInfoView)debugInfoView;
- (PUParallaxDebugInfoView)debugInfoViewIfLoaded;
- (PUParallaxLayerStackViewManager)init;
- (PUParallaxLayerStackViewManager)initWithViewModel:(id)model;
- (PUParallaxLayerStackViewModel)viewModel;
- (PUParallaxVideoLayerView)videoLayerView;
- (PUPosterDebugRectsView)debugRectsView;
- (PUPosterDebugRectsView)debugRectsViewIfLoaded;
- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)spatialPhotoBackgroundBackfillLayerView;
- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)spatialPhotoBackgroundLayerView;
- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)spatialPhotoForegroundBackfillLayerView;
- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)spatialPhotoForegroundLayerView;
- (id)_layerLayoutInfoForViewModel:(id)model animateChanges:(BOOL)changes;
- (id)existingViewForLayerID:(id)d;
- (id)viewForLayer:(id)layer;
- (id)viewForLayerID:(id)d;
- (void)_layoutLayerView:(id)view animated:(BOOL)animated;
- (void)_layoutViewsAnimated:(BOOL)animated;
- (void)_updateViewContents;
- (void)layoutViewsWithDefaultAnimations:(id)animations;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)releaseSpatialPhotoLayerViews;
- (void)releaseVideoLayerView;
@end

@implementation PUParallaxLayerStackViewManager

- (PUParallaxLayerStackViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (context != "ViewModelObservationContext")
  {
    goto LABEL_16;
  }

  v18 = observableCopy;
  v10 = observableCopy;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewManager.m" lineNumber:364 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewManager.m" lineNumber:364 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v15}];
  }

LABEL_4:
  currentLayerStackPropertiesChange = [v10 currentLayerStackPropertiesChange];
  stylePropertiesChange = [v10 stylePropertiesChange];
  if ((change & 4) != 0 && (currentLayerStackPropertiesChange & 2) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _updateViewContents];
  }

  if ((change & 2) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _updateViewContents];
  }

  if ((change & 0x5A6660) != 0)
  {
    -[PUParallaxLayerStackViewManager _layoutViewsAnimated:](self, "_layoutViewsAnimated:", ([v10 allowedBehaviors] >> 7) & 1 & (change >> 22));
  }

  if ((stylePropertiesChange & 6) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _layoutViewsAnimated:0];
  }

  if ((change & 0x100000000) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _layoutViewsAnimated:1];
  }

  observableCopy = v18;
LABEL_16:
}

- (id)_layerLayoutInfoForViewModel:(id)model animateChanges:(BOOL)changes
{
  modelCopy = model;
  layoutOrder = [modelCopy layoutOrder];
  [modelCopy visibilityAmount];
  v7 = v6;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v80 = v6;
  if ([modelCopy settlingEffectEnabled] && v7 == 1.0)
  {
    currentLayerStack = [modelCopy currentLayerStack];
    settlingEffectLayer = [currentLayerStack settlingEffectLayer];
    [settlingEffectLayer frame];
    v8 = v14;
    v9 = v15;
    v10 = v16;
    v11 = v17;
  }

  v77 = v10;
  v78 = v9;
  v79 = v8;
  currentLayerStack2 = [modelCopy currentLayerStack];
  layout = [currentLayerStack2 layout];

  v20 = +[PUPosterHeadroomSettings sharedInstance];
  [v20 falloffHeight];

  [layout extendedImageSize];
  [layout extendedImageSize];
  [layout imageSize];
  [layout imageSize];
  PXRectWithOriginAndSize();
  v74 = v22;
  v75 = v21;
  v72 = v24;
  v73 = v23;
  style = [modelCopy style];
  if ([style hasTonalityMode])
  {
    v26 = [style tonality] == 3;
  }

  else
  {
    v26 = 0;
  }

  if ([style hasHeadroomLook])
  {
    v26 = [style headroomLook] == 2;
  }

  v76 = v11;
  v71 = v26;
  if ([style hasColorParameter])
  {
    v27 = MEMORY[0x1E69DC888];
    color = [style color];
    v70 = [v27 colorWithCGColor:{objc_msgSend(color, "CGColor")}];
  }

  else
  {
    v70 = 0;
  }

  v29 = +[PUSuggestionsSettings sharedInstance];
  [v29 parallaxAmount];
  v69 = v30;

  allowedBehaviors = [modelCopy allowedBehaviors];
  v68 = [PUParallaxLayerLayoutInfo alloc];
  deviceOrientation = [modelCopy deviceOrientation];
  [modelCopy containerFrame];
  v66 = v34;
  v67 = v33;
  v64 = v36;
  v65 = v35;
  [modelCopy visibleFrame];
  v38 = v37;
  v40 = v39;
  v63 = v41;
  v43 = v42;
  [modelCopy headroomVisibilityAmount];
  v45 = v44;
  [modelCopy clockAreaLuminance];
  v47 = v46;
  canApplyParallax = [modelCopy canApplyParallax];
  [modelCopy parallaxVector];
  v50 = v49;
  v52 = v51;
  visibilityEffects = [modelCopy visibilityEffects];
  if (modelCopy)
  {
    [modelCopy adaptiveLayoutTransform];
  }

  else
  {
    memset(v82, 0, 48);
  }

  if (layoutOrder == 1)
  {
    v54 = 8;
  }

  else
  {
    v54 = 2;
  }

  [modelCopy animationDuration];
  v56 = v55;
  animationCurve = [modelCopy animationCurve];
  legibilityVignetteVisible = [modelCopy legibilityVignetteVisible];
  BYTE2(v62) = [modelCopy bottomContentExtensionVisible];
  BYTE1(v62) = legibilityVignetteVisible;
  LOBYTE(v62) = allowedBehaviors & 1;
  LOBYTE(v61) = changes;
  v59 = [(PUParallaxLayerLayoutInfo *)v68 initWithDeviceOrientation:deviceOrientation containerFrame:v71 visibleFrame:v70 settlingEffectFrame:canApplyParallax headroomFrame:v54 headroomVisibilityAmount:visibilityEffects styleIsHighKey:v67 clockAreaLuminance:v66 primaryStyleColor:v65 canApplyParallax:v64 parallaxVector:v38 parallaxAmount:v40 visibilityAmount:v63 visibilityEdge:v43 visibilityEffects:v79 animateChanges:v78 adaptiveLayoutTransform:v77 animationDuration:v76 animationCurve:v75 wantsLegibilityVignette:v74 legibilityVignetteVisible:v73 bottomContentExtensionEnabled:v72, v45, v47, v50, v52, v69, *&v80, v61, v82, v56, animationCurve, v62];

  return v59;
}

- (void)_layoutLayerView:(id)view animated:(BOOL)animated
{
  if (view)
  {
    animatedCopy = animated;
    viewCopy = view;
    viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
    v8 = [(PUParallaxLayerStackViewManager *)self _layerLayoutInfoForViewModel:viewModel animateChanges:animatedCopy];

    [viewCopy layoutWithInfo:v8];
  }
}

- (void)_layoutViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  viewsByLayerIdentifier = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  allValues = [viewsByLayerIdentifier allValues];

  v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [(PUParallaxLayerStackViewManager *)self _layoutLayerView:*(*(&v15 + 1) + 8 * v10++) animated:animatedCopy];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  viewsByLayerIdentifier2 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v12 = [viewsByLayerIdentifier2 count];

  if (v12)
  {
    debugInfoViewIfLoaded = [(PUParallaxLayerStackViewManager *)self debugInfoViewIfLoaded];
    [(PUParallaxLayerStackViewManager *)self _layoutLayerView:debugInfoViewIfLoaded animated:animatedCopy];

    debugRectsViewIfLoaded = [(PUParallaxLayerStackViewManager *)self debugRectsViewIfLoaded];
    [(PUParallaxLayerStackViewManager *)self _layoutLayerView:debugRectsViewIfLoaded animated:animatedCopy];
  }
}

- (void)_updateViewContents
{
  viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  viewsByLayerIdentifier = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PUParallaxLayerStackViewManager__updateViewContents__block_invoke;
  v8[3] = &unk_1E7B7F220;
  selfCopy = self;
  v11 = a2;
  v9 = currentLayerStack;
  v7 = currentLayerStack;
  [viewsByLayerIdentifier enumerateKeysAndObjectsUsingBlock:v8];
}

void __54__PUParallaxLayerStackViewManager__updateViewContents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) layerWithIdentifier:v39];
  if (PFParallaxLayerIDIsSettlingVideo())
  {
    v7 = v5;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v11 = v6;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    [v8 setParallaxVideoLayer:v12];
    goto LABEL_42;
  }

  if (PFParallaxLayerIDIsAnySpatialPhoto() && PFParallaxLayerIDIsBackground())
  {
    v9 = v5;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }

    v12 = v6;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_37:
        [v8 setParallaxSpatialPhotoLayer:v12];
        goto LABEL_42;
      }

      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = *(a1 + 40);
      v24 = *(a1 + 48);
      v20 = v23;
      v26 = objc_opt_class();
      v22 = NSStringFromClass(v26);
      v27 = [v12 px_descriptionForAssertionMessage];
      [v20 handleFailureInMethod:v24 object:v25 file:@"PUParallaxLayerStackViewManager.m" lineNumber:264 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layer", v22, v27}];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      v20 = v17;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v20 handleFailureInMethod:v18 object:v19 file:@"PUParallaxLayerStackViewManager.m" lineNumber:264 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layer", v22}];
    }

    goto LABEL_37;
  }

  if (PFParallaxLayerIDIsAnySpatialPhoto() && PFParallaxLayerIDIsForeground())
  {
    v10 = v5;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    v12 = v6;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_41:
        [v8 setParallaxSpatialPhotoOcclusionLayer:v12];
        goto LABEL_42;
      }

      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = *(a1 + 40);
      v35 = *(a1 + 48);
      v31 = v34;
      v37 = objc_opt_class();
      v33 = NSStringFromClass(v37);
      v38 = [v12 px_descriptionForAssertionMessage];
      [v31 handleFailureInMethod:v35 object:v36 file:@"PUParallaxLayerStackViewManager.m" lineNumber:267 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layer", v33, v38}];
    }

    else
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = *(a1 + 40);
      v29 = *(a1 + 48);
      v31 = v28;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      [v31 handleFailureInMethod:v29 object:v30 file:@"PUParallaxLayerStackViewManager.m" lineNumber:267 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layer", v33}];
    }

    goto LABEL_41;
  }

  v13 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v14 = v6;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v8 setParallaxImageLayer:v15];
  if (PFParallaxLayerIDIsForeground())
  {
    v16 = [*(a1 + 32) foregroundBackfillLayer];
  }

  else
  {
    if (!PFParallaxLayerIDIsBackground())
    {
      goto LABEL_43;
    }

    v16 = [*(a1 + 32) backgroundBackfillLayer];
  }

  v12 = v16;
  [v8 setBackfillParallaxImageLayer:v16];
LABEL_42:

LABEL_43:
}

- (void)layoutViewsWithDefaultAnimations:(id)animations
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PUParallaxLayerStackViewManager_layoutViewsWithDefaultAnimations___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:animations completion:0.3];
}

- (NSArray)createdLayerViews
{
  viewsByLayerIdentifier = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  allValues = [viewsByLayerIdentifier allValues];
  v5 = [allValues mutableCopy];

  if (self->_debugInfoView)
  {
    [v5 addObject:?];
  }

  if (self->_debugRectsView)
  {
    [v5 addObject:?];
  }

  v6 = [v5 copy];

  return v6;
}

- (PUPosterDebugRectsView)debugRectsViewIfLoaded
{
  [(PUParallaxLayerStackViewManager *)self _layoutLayerView:self->_debugRectsView animated:0];
  debugRectsView = self->_debugRectsView;

  return debugRectsView;
}

- (PUPosterDebugRectsView)debugRectsView
{
  if (!self->_debugRectsView)
  {
    v3 = [PUPosterDebugRectsView alloc];
    viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
    v5 = [(PUPosterDebugRectsView *)v3 initWithViewModel:viewModel];
    debugRectsView = self->_debugRectsView;
    self->_debugRectsView = v5;
  }

  return [(PUParallaxLayerStackViewManager *)self debugRectsViewIfLoaded];
}

- (PUParallaxDebugInfoView)debugInfoViewIfLoaded
{
  [(PUParallaxLayerStackViewManager *)self _layoutLayerView:self->_debugInfoView animated:0];
  debugInfoView = self->_debugInfoView;

  return debugInfoView;
}

- (PUParallaxDebugInfoView)debugInfoView
{
  if (!self->_debugInfoView)
  {
    v3 = [PUParallaxDebugInfoView alloc];
    viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
    v5 = [(PUParallaxDebugInfoView *)v3 initWithViewModel:viewModel];
    debugInfoView = self->_debugInfoView;
    self->_debugInfoView = v5;
  }

  return [(PUParallaxLayerStackViewManager *)self debugInfoViewIfLoaded];
}

- (void)releaseSpatialPhotoLayerViews
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PUParallaxLayerStackViewManager_releaseSpatialPhotoLayerViews__block_invoke;
  aBlock[3] = &unk_1E7B7F1F8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  spatialPhotoBackgroundLayerView = [(PUParallaxLayerStackViewManager *)self spatialPhotoBackgroundLayerView];
  v3[2](v3, spatialPhotoBackgroundLayerView);

  spatialPhotoForegroundLayerView = [(PUParallaxLayerStackViewManager *)self spatialPhotoForegroundLayerView];
  v3[2](v3, spatialPhotoForegroundLayerView);

  spatialPhotoBackgroundBackfillLayerView = [(PUParallaxLayerStackViewManager *)self spatialPhotoBackgroundBackfillLayerView];
  v3[2](v3, spatialPhotoBackgroundBackfillLayerView);

  spatialPhotoForegroundBackfillLayerView = [(PUParallaxLayerStackViewManager *)self spatialPhotoForegroundBackfillLayerView];
  v3[2](v3, spatialPhotoForegroundBackfillLayerView);
}

void __64__PUParallaxLayerStackViewManager_releaseSpatialPhotoLayerViews__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    [v3 removeFromSuperview];
    v6 = [*(a1 + 32) viewsByLayerIdentifier];
    v4 = [v3 parallaxLayer];

    v5 = [v4 identifier];
    [v6 removeObjectForKey:v5];
  }
}

- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)spatialPhotoForegroundBackfillLayerView
{
  viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  spatialPhotoForegroundBackfillLayer = [currentLayerStack spatialPhotoForegroundBackfillLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:spatialPhotoForegroundBackfillLayer];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)spatialPhotoBackgroundBackfillLayerView
{
  viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  spatialPhotoBackgroundBackfillLayer = [currentLayerStack spatialPhotoBackgroundBackfillLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:spatialPhotoBackgroundBackfillLayer];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)spatialPhotoForegroundLayerView
{
  viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  spatialPhotoForegroundLayer = [currentLayerStack spatialPhotoForegroundLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:spatialPhotoForegroundLayer];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)spatialPhotoBackgroundLayerView
{
  viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  spatialPhotoBackgroundLayer = [currentLayerStack spatialPhotoBackgroundLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:spatialPhotoBackgroundLayer];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)releaseVideoLayerView
{
  viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
  viewManager = [viewModel viewManager];
  videoLayerView = [viewManager videoLayerView];

  if (videoLayerView)
  {
    [videoLayerView removeFromSuperview];
    viewsByLayerIdentifier = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
    parallaxVideoLayer = [videoLayerView parallaxVideoLayer];
    identifier = [parallaxVideoLayer identifier];
    [viewsByLayerIdentifier removeObjectForKey:identifier];
  }
}

- (PUParallaxVideoLayerView)videoLayerView
{
  viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  settlingEffectLayer = [currentLayerStack settlingEffectLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:settlingEffectLayer];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)viewForLayerID:(id)d
{
  dCopy = d;
  v5 = [(PUParallaxLayerStackViewManager *)self existingViewForLayerID:dCopy];
  if (!v5)
  {
    viewModel = [(PUParallaxLayerStackViewManager *)self viewModel];
    environment = [viewModel environment];

    if (PFParallaxLayerIDIsAnySpatialPhoto())
    {
      v8 = PFParallaxLayerIDIsBackground();
    }

    else
    {
      v8 = 0;
    }

    if (PFParallaxLayerIDIsAnySpatialPhoto())
    {
      v9 = PFParallaxLayerIDIsForeground();
    }

    else
    {
      v9 = 0;
    }

    v10 = PFParallaxLayerIDIsSettlingVideo();
    v11 = PFParallaxLayerIDIsBackfill();
    WeakRetained = objc_loadWeakRetained(&self->_viewModel);
    currentLayerStack = [WeakRetained currentLayerStack];
    v14 = [currentLayerStack layerWithIdentifier:dCopy];

    v15 = v14;
    if (v8)
    {
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v16 = v15;

        if (v16)
        {
          viewModel2 = [(PUParallaxLayerStackViewManager *)self viewModel];
          if (![viewModel2 spatialPhotoEnabled] || !PFPosterIsSpatialPhotoEnabled())
          {
            v31 = 0;
LABEL_54:

            goto LABEL_63;
          }

          viewModel3 = [(PUParallaxLayerStackViewManager *)self viewModel];
          canCreateSpatialPhotoLayerView = [viewModel3 canCreateSpatialPhotoLayerView];

          if (canCreateSpatialPhotoLayerView)
          {
            if (v11)
            {
              viewModel2 = 0;
            }

            else
            {
              v51 = objc_loadWeakRetained(&self->_viewModel);
              currentLayerStack2 = [v51 currentLayerStack];
              viewModel2 = [currentLayerStack2 inactiveSpatialPhotoDataLayer];
            }

            v31 = [[_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView alloc] initWithParallaxSpatialPhotoLayer:v16 inactiveStyleDataLayer:viewModel2 isEditing:environment == 2];
            v53 = MEMORY[0x1E69C0AC0];
            if (!v11)
            {
              v53 = MEMORY[0x1E69C0AB8];
            }

            v54 = *v53;
            v55 = [(PUParallaxLayerStackViewManager *)self existingViewForLayerID:v54];
            if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
            {
              v56 = v55;
            }

            else
            {
              v56 = 0;
            }

            [(PUParallaxSpatialPhotoLayerView *)v31 setOcclusionLayerView:v56];
            if ([(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
            {
              layer = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
              [layer setBorderWidth:12.0];

              greenColor = [MEMORY[0x1E69DC888] greenColor];
              cGColor = [greenColor CGColor];
              layer2 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
              [layer2 setBorderColor:cGColor];
            }

            goto LABEL_54;
          }
        }

LABEL_39:

        goto LABEL_40;
      }

LABEL_38:

      v16 = 0;
      goto LABEL_39;
    }

    if (v9)
    {
      if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_38;
      }

      v16 = v15;

      if (!v16)
      {
        goto LABEL_39;
      }

      viewModel4 = [(PUParallaxLayerStackViewManager *)self viewModel];
      if ([(PUParallaxSpatialPhotoOcclusionLayerView *)viewModel4 spatialPhotoEnabled]&& PFPosterIsSpatialPhotoOcclusionEnabled())
      {
        viewModel5 = [(PUParallaxLayerStackViewManager *)self viewModel];
        canCreateSpatialPhotoLayerView2 = [viewModel5 canCreateSpatialPhotoLayerView];

        if (!canCreateSpatialPhotoLayerView2)
        {
          goto LABEL_39;
        }

        v23 = [[_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView alloc] initWithParallaxSpatialPhotoOcclusionLayer:v16 isEditing:environment == 2];
        v24 = MEMORY[0x1E69C0AB0];
        if (!v11)
        {
          v24 = MEMORY[0x1E69C0AA8];
        }

        v25 = *v24;
        v26 = [(PUParallaxLayerStackViewManager *)self existingViewForLayerID:v25];
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        [v27 setOcclusionLayerView:v23];
        if ([(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
        {
          layer3 = [(PUParallaxSpatialPhotoOcclusionLayerView *)v23 layer];
          [layer3 setBorderWidth:12.0];

          magentaColor = [MEMORY[0x1E69DC888] magentaColor];
          cGColor2 = [magentaColor CGColor];
          layer4 = [(PUParallaxSpatialPhotoOcclusionLayerView *)v23 layer];
          [layer4 setBorderColor:cGColor2];
        }

        viewModel4 = v23;

        v31 = viewModel4;
      }

      else
      {
        v31 = 0;
      }

LABEL_63:
      if (v31)
      {
        v49 = MEMORY[0x1E69DD250];
        v65 = MEMORY[0x1E69E9820];
        v66 = 3221225472;
        v67 = __50__PUParallaxLayerStackViewManager_viewForLayerID___block_invoke;
        v68 = &unk_1E7B80C38;
        selfCopy = self;
        v5 = v31;
        v70 = v5;
        [v49 performWithoutAnimation:&v65];
        v50 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier:v65];
        [v50 setObject:v5 forKeyedSubscript:dCopy];

        goto LABEL_41;
      }

LABEL_40:
      v5 = 0;
LABEL_41:

      goto LABEL_42;
    }

    if (v10)
    {
      if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_38;
      }

      v16 = v15;

      if (!v16)
      {
        goto LABEL_39;
      }

      viewModel6 = [(PUParallaxLayerStackViewManager *)self viewModel];
      if ([viewModel6 settlingEffectEnabled] && PFPosterEnableSettlingEffect())
      {
        viewModel7 = [(PUParallaxLayerStackViewManager *)self viewModel];
        canCreateSettlingEffectLayerView = [viewModel7 canCreateSettlingEffectLayerView];

        if (!canCreateSettlingEffectLayerView)
        {
          goto LABEL_39;
        }

        v31 = [[PUParallaxVideoLayerView alloc] initWithParallaxVideoLayer:v16];
        if (![(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
        {
          goto LABEL_63;
        }

        layer5 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [layer5 setBorderWidth:12.0];

        viewModel6 = [MEMORY[0x1E69DC888] yellowColor];
        cGColor3 = [viewModel6 CGColor];
        layer6 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [layer6 setBorderColor:cGColor3];
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v31 = [[PUParallaxImageLayerView alloc] initWithParallaxImageLayer:v16 isEditing:environment == 2];
      if (PFParallaxLayerIDIsForeground())
      {
        if ([(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
        {
          layer7 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
          [layer7 setBorderWidth:4.0];

          blueColor = [MEMORY[0x1E69DC888] blueColor];
          cGColor4 = [blueColor CGColor];
          layer8 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
          [layer8 setBorderColor:cGColor4];
        }

        v40 = objc_loadWeakRetained(&self->_viewModel);
        currentLayerStack3 = [v40 currentLayerStack];
        foregroundBackfillLayer = [currentLayerStack3 foregroundBackfillLayer];
        [(PUParallaxSpatialPhotoLayerView *)v31 setBackfillParallaxImageLayer:foregroundBackfillLayer];

        [(PUParallaxSpatialPhotoLayerView *)v31 setBackfillMaskingEnabled:1];
        goto LABEL_63;
      }

      if (!PFParallaxLayerIDIsBackground())
      {
        goto LABEL_63;
      }

      if ([(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
      {
        layer9 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [layer9 setBorderWidth:8.0];

        redColor = [MEMORY[0x1E69DC888] redColor];
        cGColor5 = [redColor CGColor];
        layer10 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [layer10 setBorderColor:cGColor5];
      }

      viewModel6 = objc_loadWeakRetained(&self->_viewModel);
      currentLayerStack4 = [viewModel6 currentLayerStack];
      backgroundBackfillLayer = [currentLayerStack4 backgroundBackfillLayer];
      [(PUParallaxSpatialPhotoLayerView *)v31 setBackfillParallaxImageLayer:backgroundBackfillLayer];
    }

    goto LABEL_63;
  }

LABEL_42:

  return v5;
}

- (id)existingViewForLayerID:(id)d
{
  dCopy = d;
  viewsByLayerIdentifier = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v6 = [viewsByLayerIdentifier objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)viewForLayer:(id)layer
{
  if (layer)
  {
    identifier = [layer identifier];
    v5 = [(PUParallaxLayerStackViewManager *)self viewForLayerID:identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PUParallaxLayerStackViewManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewManager.m" lineNumber:56 description:{@"%s is not available as initializer", "-[PUParallaxLayerStackViewManager init]"}];

  abort();
}

- (PUParallaxLayerStackViewManager)initWithViewModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = PUParallaxLayerStackViewManager;
  v5 = [(PUParallaxLayerStackViewManager *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewsByLayerIdentifier = v5->_viewsByLayerIdentifier;
    v5->_viewsByLayerIdentifier = v6;

    objc_storeWeak(&v5->_viewModel, modelCopy);
    [modelCopy registerChangeObserver:v5 context:"ViewModelObservationContext"];
    [(PUParallaxLayerStackViewManager *)v5 _layoutViewsAnimated:0];
    v8 = +[PUPosterHeadroomSettings sharedInstance];
    [v8 addKeyObserver:v5];
  }

  return v5;
}

@end