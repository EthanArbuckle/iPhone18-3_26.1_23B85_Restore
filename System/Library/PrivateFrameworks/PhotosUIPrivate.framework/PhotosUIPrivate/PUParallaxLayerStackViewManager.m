@interface PUParallaxLayerStackViewManager
- (NSArray)createdLayerViews;
- (PUParallaxDebugInfoView)debugInfoView;
- (PUParallaxDebugInfoView)debugInfoViewIfLoaded;
- (PUParallaxLayerStackViewManager)init;
- (PUParallaxLayerStackViewManager)initWithViewModel:(id)a3;
- (PUParallaxLayerStackViewModel)viewModel;
- (PUParallaxVideoLayerView)videoLayerView;
- (PUPosterDebugRectsView)debugRectsView;
- (PUPosterDebugRectsView)debugRectsViewIfLoaded;
- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)spatialPhotoBackgroundBackfillLayerView;
- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)spatialPhotoBackgroundLayerView;
- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)spatialPhotoForegroundBackfillLayerView;
- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)spatialPhotoForegroundLayerView;
- (id)_layerLayoutInfoForViewModel:(id)a3 animateChanges:(BOOL)a4;
- (id)existingViewForLayerID:(id)a3;
- (id)viewForLayer:(id)a3;
- (id)viewForLayerID:(id)a3;
- (void)_layoutLayerView:(id)a3 animated:(BOOL)a4;
- (void)_layoutViewsAnimated:(BOOL)a3;
- (void)_updateViewContents;
- (void)layoutViewsWithDefaultAnimations:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)releaseSpatialPhotoLayerViews;
- (void)releaseVideoLayerView;
@end

@implementation PUParallaxLayerStackViewManager

- (PUParallaxLayerStackViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (a5 != "ViewModelObservationContext")
  {
    goto LABEL_16;
  }

  v18 = v9;
  v10 = v9;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v10 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewManager.m" lineNumber:364 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v15, v17}];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewManager.m" lineNumber:364 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v15}];
  }

LABEL_4:
  v11 = [v10 currentLayerStackPropertiesChange];
  v12 = [v10 stylePropertiesChange];
  if ((a4 & 4) != 0 && (v11 & 2) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _updateViewContents];
  }

  if ((a4 & 2) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _updateViewContents];
  }

  if ((a4 & 0x5A6660) != 0)
  {
    -[PUParallaxLayerStackViewManager _layoutViewsAnimated:](self, "_layoutViewsAnimated:", ([v10 allowedBehaviors] >> 7) & 1 & (a4 >> 22));
  }

  if ((v12 & 6) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _layoutViewsAnimated:0];
  }

  if ((a4 & 0x100000000) != 0)
  {
    [(PUParallaxLayerStackViewManager *)self _layoutViewsAnimated:1];
  }

  v9 = v18;
LABEL_16:
}

- (id)_layerLayoutInfoForViewModel:(id)a3 animateChanges:(BOOL)a4
{
  v4 = a3;
  v5 = [v4 layoutOrder];
  [v4 visibilityAmount];
  v7 = v6;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v80 = v6;
  if ([v4 settlingEffectEnabled] && v7 == 1.0)
  {
    v12 = [v4 currentLayerStack];
    v13 = [v12 settlingEffectLayer];
    [v13 frame];
    v8 = v14;
    v9 = v15;
    v10 = v16;
    v11 = v17;
  }

  v77 = v10;
  v78 = v9;
  v79 = v8;
  v18 = [v4 currentLayerStack];
  v19 = [v18 layout];

  v20 = +[PUPosterHeadroomSettings sharedInstance];
  [v20 falloffHeight];

  [v19 extendedImageSize];
  [v19 extendedImageSize];
  [v19 imageSize];
  [v19 imageSize];
  PXRectWithOriginAndSize();
  v74 = v22;
  v75 = v21;
  v72 = v24;
  v73 = v23;
  v25 = [v4 style];
  if ([v25 hasTonalityMode])
  {
    v26 = [v25 tonality] == 3;
  }

  else
  {
    v26 = 0;
  }

  if ([v25 hasHeadroomLook])
  {
    v26 = [v25 headroomLook] == 2;
  }

  v76 = v11;
  v71 = v26;
  if ([v25 hasColorParameter])
  {
    v27 = MEMORY[0x1E69DC888];
    v28 = [v25 color];
    v70 = [v27 colorWithCGColor:{objc_msgSend(v28, "CGColor")}];
  }

  else
  {
    v70 = 0;
  }

  v29 = +[PUSuggestionsSettings sharedInstance];
  [v29 parallaxAmount];
  v69 = v30;

  v31 = [v4 allowedBehaviors];
  v68 = [PUParallaxLayerLayoutInfo alloc];
  v32 = [v4 deviceOrientation];
  [v4 containerFrame];
  v66 = v34;
  v67 = v33;
  v64 = v36;
  v65 = v35;
  [v4 visibleFrame];
  v38 = v37;
  v40 = v39;
  v63 = v41;
  v43 = v42;
  [v4 headroomVisibilityAmount];
  v45 = v44;
  [v4 clockAreaLuminance];
  v47 = v46;
  v48 = [v4 canApplyParallax];
  [v4 parallaxVector];
  v50 = v49;
  v52 = v51;
  v53 = [v4 visibilityEffects];
  if (v4)
  {
    [v4 adaptiveLayoutTransform];
  }

  else
  {
    memset(v82, 0, 48);
  }

  if (v5 == 1)
  {
    v54 = 8;
  }

  else
  {
    v54 = 2;
  }

  [v4 animationDuration];
  v56 = v55;
  v57 = [v4 animationCurve];
  v58 = [v4 legibilityVignetteVisible];
  BYTE2(v62) = [v4 bottomContentExtensionVisible];
  BYTE1(v62) = v58;
  LOBYTE(v62) = v31 & 1;
  LOBYTE(v61) = a4;
  v59 = [(PUParallaxLayerLayoutInfo *)v68 initWithDeviceOrientation:v32 containerFrame:v71 visibleFrame:v70 settlingEffectFrame:v48 headroomFrame:v54 headroomVisibilityAmount:v53 styleIsHighKey:v67 clockAreaLuminance:v66 primaryStyleColor:v65 canApplyParallax:v64 parallaxVector:v38 parallaxAmount:v40 visibilityAmount:v63 visibilityEdge:v43 visibilityEffects:v79 animateChanges:v78 adaptiveLayoutTransform:v77 animationDuration:v76 animationCurve:v75 wantsLegibilityVignette:v74 legibilityVignetteVisible:v73 bottomContentExtensionEnabled:v72, v45, v47, v50, v52, v69, *&v80, v61, v82, v56, v57, v62];

  return v59;
}

- (void)_layoutLayerView:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = [(PUParallaxLayerStackViewManager *)self viewModel];
    v8 = [(PUParallaxLayerStackViewManager *)self _layerLayoutInfoForViewModel:v7 animateChanges:v4];

    [v6 layoutWithInfo:v8];
  }
}

- (void)_layoutViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(PUParallaxLayerStackViewManager *)self _layoutLayerView:*(*(&v15 + 1) + 8 * v10++) animated:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(PUParallaxLayerStackViewManager *)self debugInfoViewIfLoaded];
    [(PUParallaxLayerStackViewManager *)self _layoutLayerView:v13 animated:v3];

    v14 = [(PUParallaxLayerStackViewManager *)self debugRectsViewIfLoaded];
    [(PUParallaxLayerStackViewManager *)self _layoutLayerView:v14 animated:v3];
  }
}

- (void)_updateViewContents
{
  v4 = [(PUParallaxLayerStackViewManager *)self viewModel];
  v5 = [v4 currentLayerStack];

  v6 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PUParallaxLayerStackViewManager__updateViewContents__block_invoke;
  v8[3] = &unk_1E7B7F220;
  v10 = self;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)layoutViewsWithDefaultAnimations:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PUParallaxLayerStackViewManager_layoutViewsWithDefaultAnimations___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:a3 completion:0.3];
}

- (NSArray)createdLayerViews
{
  v3 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v4 = [v3 allValues];
  v5 = [v4 mutableCopy];

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
    v4 = [(PUParallaxLayerStackViewManager *)self viewModel];
    v5 = [(PUPosterDebugRectsView *)v3 initWithViewModel:v4];
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
    v4 = [(PUParallaxLayerStackViewManager *)self viewModel];
    v5 = [(PUParallaxDebugInfoView *)v3 initWithViewModel:v4];
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
  v4 = [(PUParallaxLayerStackViewManager *)self spatialPhotoBackgroundLayerView];
  v3[2](v3, v4);

  v5 = [(PUParallaxLayerStackViewManager *)self spatialPhotoForegroundLayerView];
  v3[2](v3, v5);

  v6 = [(PUParallaxLayerStackViewManager *)self spatialPhotoBackgroundBackfillLayerView];
  v3[2](v3, v6);

  v7 = [(PUParallaxLayerStackViewManager *)self spatialPhotoForegroundBackfillLayerView];
  v3[2](v3, v7);
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
  v3 = [(PUParallaxLayerStackViewManager *)self viewModel];
  v4 = [v3 currentLayerStack];

  v5 = [v4 spatialPhotoForegroundBackfillLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:v5];

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
  v3 = [(PUParallaxLayerStackViewManager *)self viewModel];
  v4 = [v3 currentLayerStack];

  v5 = [v4 spatialPhotoBackgroundBackfillLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:v5];

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
  v3 = [(PUParallaxLayerStackViewManager *)self viewModel];
  v4 = [v3 currentLayerStack];

  v5 = [v4 spatialPhotoForegroundLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:v5];

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
  v3 = [(PUParallaxLayerStackViewManager *)self viewModel];
  v4 = [v3 currentLayerStack];

  v5 = [v4 spatialPhotoBackgroundLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:v5];

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
  v3 = [(PUParallaxLayerStackViewManager *)self viewModel];
  v4 = [v3 viewManager];
  v8 = [v4 videoLayerView];

  if (v8)
  {
    [v8 removeFromSuperview];
    v5 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
    v6 = [v8 parallaxVideoLayer];
    v7 = [v6 identifier];
    [v5 removeObjectForKey:v7];
  }
}

- (PUParallaxVideoLayerView)videoLayerView
{
  v3 = [(PUParallaxLayerStackViewManager *)self viewModel];
  v4 = [v3 currentLayerStack];

  v5 = [v4 settlingEffectLayer];
  v6 = [(PUParallaxLayerStackViewManager *)self viewForLayer:v5];

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

- (id)viewForLayerID:(id)a3
{
  v4 = a3;
  v5 = [(PUParallaxLayerStackViewManager *)self existingViewForLayerID:v4];
  if (!v5)
  {
    v6 = [(PUParallaxLayerStackViewManager *)self viewModel];
    v7 = [v6 environment];

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
    v13 = [WeakRetained currentLayerStack];
    v14 = [v13 layerWithIdentifier:v4];

    v15 = v14;
    if (v8)
    {
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v16 = v15;

        if (v16)
        {
          v17 = [(PUParallaxLayerStackViewManager *)self viewModel];
          if (![v17 spatialPhotoEnabled] || !PFPosterIsSpatialPhotoEnabled())
          {
            v31 = 0;
LABEL_54:

            goto LABEL_63;
          }

          v18 = [(PUParallaxLayerStackViewManager *)self viewModel];
          v19 = [v18 canCreateSpatialPhotoLayerView];

          if (v19)
          {
            if (v11)
            {
              v17 = 0;
            }

            else
            {
              v51 = objc_loadWeakRetained(&self->_viewModel);
              v52 = [v51 currentLayerStack];
              v17 = [v52 inactiveSpatialPhotoDataLayer];
            }

            v31 = [[_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView alloc] initWithParallaxSpatialPhotoLayer:v16 inactiveStyleDataLayer:v17 isEditing:v7 == 2];
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
              v57 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
              [v57 setBorderWidth:12.0];

              v58 = [MEMORY[0x1E69DC888] greenColor];
              v59 = [v58 CGColor];
              v60 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
              [v60 setBorderColor:v59];
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

      v20 = [(PUParallaxLayerStackViewManager *)self viewModel];
      if ([(PUParallaxSpatialPhotoOcclusionLayerView *)v20 spatialPhotoEnabled]&& PFPosterIsSpatialPhotoOcclusionEnabled())
      {
        v21 = [(PUParallaxLayerStackViewManager *)self viewModel];
        v22 = [v21 canCreateSpatialPhotoLayerView];

        if (!v22)
        {
          goto LABEL_39;
        }

        v23 = [[_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView alloc] initWithParallaxSpatialPhotoOcclusionLayer:v16 isEditing:v7 == 2];
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
          v61 = [(PUParallaxSpatialPhotoOcclusionLayerView *)v23 layer];
          [v61 setBorderWidth:12.0];

          v62 = [MEMORY[0x1E69DC888] magentaColor];
          v63 = [v62 CGColor];
          v64 = [(PUParallaxSpatialPhotoOcclusionLayerView *)v23 layer];
          [v64 setBorderColor:v63];
        }

        v20 = v23;

        v31 = v20;
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
        v69 = self;
        v5 = v31;
        v70 = v5;
        [v49 performWithoutAnimation:&v65];
        v50 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier:v65];
        [v50 setObject:v5 forKeyedSubscript:v4];

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

      v28 = [(PUParallaxLayerStackViewManager *)self viewModel];
      if ([v28 settlingEffectEnabled] && PFPosterEnableSettlingEffect())
      {
        v29 = [(PUParallaxLayerStackViewManager *)self viewModel];
        v30 = [v29 canCreateSettlingEffectLayerView];

        if (!v30)
        {
          goto LABEL_39;
        }

        v31 = [[PUParallaxVideoLayerView alloc] initWithParallaxVideoLayer:v16];
        if (![(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
        {
          goto LABEL_63;
        }

        v32 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [v32 setBorderWidth:12.0];

        v28 = [MEMORY[0x1E69DC888] yellowColor];
        v33 = [v28 CGColor];
        v34 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [v34 setBorderColor:v33];
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

      v31 = [[PUParallaxImageLayerView alloc] initWithParallaxImageLayer:v16 isEditing:v7 == 2];
      if (PFParallaxLayerIDIsForeground())
      {
        if ([(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
        {
          v36 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
          [v36 setBorderWidth:4.0];

          v37 = [MEMORY[0x1E69DC888] blueColor];
          v38 = [v37 CGColor];
          v39 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
          [v39 setBorderColor:v38];
        }

        v40 = objc_loadWeakRetained(&self->_viewModel);
        v41 = [v40 currentLayerStack];
        v42 = [v41 foregroundBackfillLayer];
        [(PUParallaxSpatialPhotoLayerView *)v31 setBackfillParallaxImageLayer:v42];

        [(PUParallaxSpatialPhotoLayerView *)v31 setBackfillMaskingEnabled:1];
        goto LABEL_63;
      }

      if (!PFParallaxLayerIDIsBackground())
      {
        goto LABEL_63;
      }

      if ([(PUParallaxLayerStackViewManager *)self _debugColorsEnabled])
      {
        v43 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [v43 setBorderWidth:8.0];

        v44 = [MEMORY[0x1E69DC888] redColor];
        v45 = [v44 CGColor];
        v46 = [(PUParallaxSpatialPhotoLayerView *)v31 layer];
        [v46 setBorderColor:v45];
      }

      v28 = objc_loadWeakRetained(&self->_viewModel);
      v47 = [v28 currentLayerStack];
      v48 = [v47 backgroundBackfillLayer];
      [(PUParallaxSpatialPhotoLayerView *)v31 setBackfillParallaxImageLayer:v48];
    }

    goto LABEL_63;
  }

LABEL_42:

  return v5;
}

- (id)existingViewForLayerID:(id)a3
{
  v4 = a3;
  v5 = [(PUParallaxLayerStackViewManager *)self viewsByLayerIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)viewForLayer:(id)a3
{
  if (a3)
  {
    v4 = [a3 identifier];
    v5 = [(PUParallaxLayerStackViewManager *)self viewForLayerID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PUParallaxLayerStackViewManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewManager.m" lineNumber:56 description:{@"%s is not available as initializer", "-[PUParallaxLayerStackViewManager init]"}];

  abort();
}

- (PUParallaxLayerStackViewManager)initWithViewModel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUParallaxLayerStackViewManager;
  v5 = [(PUParallaxLayerStackViewManager *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewsByLayerIdentifier = v5->_viewsByLayerIdentifier;
    v5->_viewsByLayerIdentifier = v6;

    objc_storeWeak(&v5->_viewModel, v4);
    [v4 registerChangeObserver:v5 context:"ViewModelObservationContext"];
    [(PUParallaxLayerStackViewManager *)v5 _layoutViewsAnimated:0];
    v8 = +[PUPosterHeadroomSettings sharedInstance];
    [v8 addKeyObserver:v5];
  }

  return v5;
}

@end