@interface PUWallpaperPosterEditViewModel
- (BOOL)applyReframeVisibleFrameRestoration;
- (BOOL)canApplyHeadroom;
- (BOOL)depthEnabledInAnyOrientation;
- (BOOL)headroomLayoutCanApplyHeadroom;
- (BOOL)headroomLayoutUsesHeadroomArea;
- (BOOL)userHasAdjustedLayout;
- (CGRect)configuredSalientContentRectangle;
- (CGRect)containerFrame;
- (CGRect)normalizedVisibleFrame;
- (CGRect)reframeStateRestorationLandscapeNormalizedVisibleFrame;
- (CGRect)reframeStateRestorationPortraitNormalizedVisibleFrame;
- (NSArray)currentStyleKinds;
- (PFWallpaperCompoundDeviceConfiguration)layoutConfiguration;
- (PUParallaxLayerStackViewModelUpdater)currentLayerStackViewModelUpdater;
- (PUWallpaperPosterEditViewModel)init;
- (PUWallpaperPosterEditViewModel)initWithInitialLayerStackViewModel:(id)model availableStyles:(id)styles environmentIsBackdrop:(BOOL)backdrop isUserTransformDisabled:(BOOL)disabled;
- (double)currentClockAreaLuminanceForStyleKind:(id)kind;
- (id)_layerStackViewModelForStyleKind:(id)kind;
- (id)_nextStyleKindForStyleKind:(id)kind;
- (id)_previousStyleKindForStyleKind:(id)kind;
- (id)availableLayerStackViewModels;
- (id)posterEditConfigurationRepresentation;
- (void)_createViewModelsWithInitialViewModel:(id)model isUserTransformDisabled:(BOOL)disabled;
- (void)_initScrollPositionWithViewModel:(id)model;
- (void)_invalidateActiveLayerStackViewModels;
- (void)_invalidateAdaptiveTimeFrame;
- (void)_invalidateAvailableLayerStackViewModelsContainerGeometry;
- (void)_invalidateAvailableLayerStackViewModelsDefaultLayouts;
- (void)_invalidateAvailableLayerStackViewModelsProperties;
- (void)_invalidateCurrentLayerStackViewModel;
- (void)_invalidateCurrentStyles;
- (void)_invalidateDepthEnabled;
- (void)_invalidateDesiredHeadroomVisibilityAmount;
- (void)_invalidateNormalizedVisibleFrame;
- (void)_invalidateOffscreenStylesPreheat;
- (void)_invalidatePresentingSingleStyle;
- (void)_invalidatePreviewThumbnail;
- (void)_invalidatePropertiesFromCurrentLayerStackViewModel;
- (void)_invalidateSpatialPhotoEnabled;
- (void)_invalidateVisibleFrameCrossesHeadroomBoundary;
- (void)_invalidateVisibleLayerStackViewModels;
- (void)_updateActiveLayerStackViewModels;
- (void)_updateAdaptiveTimeFrame;
- (void)_updateAvailableLayerStackViewModelsContainerGeometry;
- (void)_updateAvailableLayerStackViewModelsDefaultLayouts;
- (void)_updateAvailableLayerStackViewModelsProperties;
- (void)_updateCurrentLayerStackViewModel;
- (void)_updateCurrentStylesWithChange:(int64_t)change;
- (void)_updateDepthEnabled;
- (void)_updateDesiredHeadroomVisibilityAmount;
- (void)_updateLayerStackViewModelProperties:(id)properties;
- (void)_updateNormalizedVisibleFrame;
- (void)_updateOffscreenStylesPreheat;
- (void)_updatePreviewThumbnail;
- (void)_updatePropertiesFromCurrentLayerStackViewModel;
- (void)_updateSpatialPhotoEnabled;
- (void)_updateVisibleFrameCrossesHeadroomBoundary;
- (void)_updateVisibleLayerStackViewModels;
- (void)applyChangesFromPosterEditConfiguration:(id)configuration;
- (void)applyReframeIfNeededForUseCase:(int64_t)case;
- (void)dealloc;
- (void)didPerformChanges;
- (void)noteUserAdjustedVisibleFrame;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)preferencesDidChange;
- (void)reframeIfNeededNormalizedBounds:(CGRect)bounds layout:(id)layout useCase:(int64_t)case forceReframe:(BOOL)reframe;
- (void)scrollToPosition:(id *)position;
- (void)setActiveLayerStackViewModels:(id)models;
- (void)setAppliesDepthToAllOrientations:(BOOL)orientations;
- (void)setConfiguredSalientContentRectangle:(CGRect)rectangle;
- (void)setContainerFrame:(CGRect)frame;
- (void)setCurrentLayerStackViewModel:(id)model;
- (void)setCurrentStyles:(id)styles;
- (void)setDepthEnabled:(BOOL)enabled;
- (void)setDesiredHeadroomVisibilityAmount:(id)amount;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setHeadroomEnabled:(BOOL)enabled;
- (void)setIsUserPanningOrZooming:(BOOL)zooming;
- (void)setNormalizedVisibleFrame:(CGRect)frame;
- (void)setNormalizedVisibleFrameAnimated:(CGRect)animated;
- (void)setParallaxDisabled:(BOOL)disabled;
- (void)setPresentingSingleStyle:(BOOL)style;
- (void)setPreviewThumbnail:(id)thumbnail;
- (void)setSettlingEffectEnabled:(BOOL)enabled;
- (void)setSettlingEffectStateRestorationLayerStyleKind:(id)kind;
- (void)setSpatialPhotoEnabled:(BOOL)enabled;
- (void)setUserHasAdjustedVisibleFrame:(BOOL)frame;
- (void)setUsingHeadroom:(BOOL)headroom;
- (void)setVisibleFrameCrossesHeadroomBoundary:(BOOL)boundary;
- (void)setVisibleLayerStackViewModels:(id)models;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)shutdownWithTimeout:(double)timeout;
- (void)updatePhotoEffectsWithLoadedSegmentationItem:(id)item layerStack:(id)stack;
@end

@implementation PUWallpaperPosterEditViewModel

- (CGRect)reframeStateRestorationLandscapeNormalizedVisibleFrame
{
  x = self->_reframeStateRestorationLandscapeNormalizedVisibleFrame.origin.x;
  y = self->_reframeStateRestorationLandscapeNormalizedVisibleFrame.origin.y;
  width = self->_reframeStateRestorationLandscapeNormalizedVisibleFrame.size.width;
  height = self->_reframeStateRestorationLandscapeNormalizedVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)reframeStateRestorationPortraitNormalizedVisibleFrame
{
  x = self->_reframeStateRestorationPortraitNormalizedVisibleFrame.origin.x;
  y = self->_reframeStateRestorationPortraitNormalizedVisibleFrame.origin.y;
  width = self->_reframeStateRestorationPortraitNormalizedVisibleFrame.size.width;
  height = self->_reframeStateRestorationPortraitNormalizedVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)configuredSalientContentRectangle
{
  x = self->_configuredSalientContentRectangle.origin.x;
  y = self->_configuredSalientContentRectangle.origin.y;
  width = self->_configuredSalientContentRectangle.size.width;
  height = self->_configuredSalientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedVisibleFrame
{
  x = self->_normalizedVisibleFrame.origin.x;
  y = self->_normalizedVisibleFrame.origin.y;
  width = self->_normalizedVisibleFrame.size.width;
  height = self->_normalizedVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)containerFrame
{
  x = self->_containerFrame.origin.x;
  y = self->_containerFrame.origin.y;
  width = self->_containerFrame.size.width;
  height = self->_containerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)preferencesDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__PUWallpaperPosterEditViewModel_preferencesDidChange__block_invoke;
  v2[3] = &unk_1E7B78288;
  v2[4] = self;
  [(PUWallpaperPosterEditViewModel *)self performChanges:v2];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  v48 = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  v10 = observableCopy;
  if (context == "LayerStackViewModelObservationContext")
  {
    currentLayerStackViewModel5 = observableCopy;
    if (currentLayerStackViewModel5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_16:
        stylePropertiesChange = [currentLayerStackViewModel5 stylePropertiesChange];
        currentLayerStackPropertiesChange = [currentLayerStackViewModel5 currentLayerStackPropertiesChange];
        if ((changeCopy & 2) != 0)
        {
          currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];

          if (currentLayerStackViewModel == currentLayerStackViewModel5)
          {
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke;
            v46[3] = &unk_1E7B78288;
            v46[4] = self;
            [(PUWallpaperPosterEditViewModel *)self performChanges:v46];
          }
        }

        if ((changeCopy & 0x8000) != 0)
        {
          currentLayerStackViewModel2 = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];

          if (currentLayerStackViewModel2 == currentLayerStackViewModel5)
          {
            [(PUWallpaperPosterEditViewModel *)self _updateNormalizedVisibleFrame];
          }
        }

        if (stylePropertiesChange)
        {
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_2;
          v45[3] = &unk_1E7B78288;
          v45[4] = self;
          [(PUWallpaperPosterEditViewModel *)self performChanges:v45];
          if ((stylePropertiesChange & 0x10) == 0)
          {
LABEL_24:
            if ((currentLayerStackPropertiesChange & 0x20) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }

        else if ((stylePropertiesChange & 0x10) == 0)
        {
          goto LABEL_24;
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_3;
        v44[3] = &unk_1E7B78288;
        v44[4] = self;
        [(PUWallpaperPosterEditViewModel *)self performChanges:v44];
        if ((currentLayerStackPropertiesChange & 0x20) == 0)
        {
LABEL_26:
          if (([currentLayerStackViewModel5 currentLayerStackPropertiesChange] & 2) != 0)
          {
            originalLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self originalLayerStackViewModel];

            if (originalLayerStackViewModel == currentLayerStackViewModel5)
            {
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_5;
              v42[3] = &unk_1E7B78288;
              v42[4] = self;
              [(PUWallpaperPosterEditViewModel *)self performChanges:v42];
            }
          }

          if ((changeCopy & 0x8000000) != 0)
          {
            currentLayerStackViewModel3 = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
            if (currentLayerStackViewModel3 != currentLayerStackViewModel5 || ([currentLayerStackViewModel5 isLoadingSpatialPhoto] & 1) != 0 || (objc_msgSend(currentLayerStackViewModel5, "spatialPhotoEnabled") & 1) != 0)
            {
            }

            else
            {
              spatialPhotoEnabled = [(PUWallpaperPosterEditViewModel *)self spatialPhotoEnabled];

              if (spatialPhotoEnabled)
              {
                [(PUWallpaperPosterEditViewModel *)self performChanges:&__block_literal_global_123];
              }
            }
          }

          if ((changeCopy & 0x4000008) != 0)
          {
            currentLayerStackViewModel4 = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];

            if (currentLayerStackViewModel4 == currentLayerStackViewModel5)
            {
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_7;
              v41[3] = &unk_1E7B78288;
              v41[4] = self;
              [(PUWallpaperPosterEditViewModel *)self performChanges:v41];
            }
          }

          goto LABEL_37;
        }

LABEL_25:
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_4;
        v43[3] = &unk_1E7B78288;
        v43[4] = self;
        [(PUWallpaperPosterEditViewModel *)self performChanges:v43];
        goto LABEL_26;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = objc_opt_class();
      v32 = NSStringFromClass(v33);
      px_descriptionForAssertionMessage = [currentLayerStackViewModel5 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditViewModel.m" lineNumber:1314 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v32, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditViewModel.m" lineNumber:1314 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v32}];
    }

    goto LABEL_16;
  }

  if (context == "HeadroomVisibilityAmountAnimatorObservationContext" && (changeCopy & 2) != 0)
  {
    headroomVisibilityAmountAnimator = [(PUWallpaperPosterEditViewModel *)self headroomVisibilityAmountAnimator];
    [headroomVisibilityAmountAnimator presentationValue];
    v13 = v12;

    currentLayerStackViewModel5 = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_8;
    v40[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    v40[4] = v13;
    [currentLayerStackViewModel5 performChanges:v40];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
    allValues = [layerStackViewModelsByStyleKind allValues];

    v17 = [allValues countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(allValues);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          if (v21 != currentLayerStackViewModel5)
          {
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_9;
            v35[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
            v35[4] = v13;
            [v21 performChanges:v35];
          }
        }

        v18 = [allValues countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v18);
    }

LABEL_37:
  }
}

uint64_t __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidatePropertiesFromCurrentLayerStackViewModel];
  v2 = *(a1 + 32);

  return [v2 _invalidateVisibleFrameCrossesHeadroomBoundary];
}

uint64_t __63__PUWallpaperPosterEditViewModel_observable_didChange_context___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setStylesChange:{objc_msgSend(*(a1 + 32), "stylesChange") | 4}];
  v2 = *(a1 + 32);

  return [v2 signalChange:512];
}

- (void)setPreviewThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  v5 = self->_previewThumbnail;
  v6 = v5;
  if (v5 == thumbnailCopy)
  {
  }

  else
  {
    v7 = [(UIImage *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_previewThumbnail, thumbnail);
      [(PUWallpaperPosterEditViewModel *)self signalChange:0x8000];
    }
  }
}

- (void)_updatePreviewThumbnail
{
  previewThumbnail = [(PUWallpaperPosterEditViewModel *)self previewThumbnail];

  if (!previewThumbnail)
  {
    originalLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self originalLayerStackViewModel];
    currentLayerStack = [originalLayerStackViewModel currentLayerStack];

    backgroundLayer = [currentLayerStack backgroundLayer];
    image = [backgroundLayer image];

    if (image || ([currentLayerStack backgroundBackfillLayer], v7 = objc_claimAutoreleasedReturnValue(), image = objc_msgSend(v7, "image"), v7, image))
    {
      selfCopy = self;
      v8 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:image];
      PFDeviceScreenScale();
      v65 = v9;
      PXSizeScale();
      PXSizeRoundToPixel();
      v11 = v10;
      v13 = v12;
      [v8 extent];
      v16 = v11 / v15;
      if (v11 / v15 < v13 / v14)
      {
        v16 = v13 / v14;
      }

      v17 = [v8 px_imageByApplyingScale:v16];

      [v17 extent];
      PXRectWithAspectRatioFittingRect();
      v18 = [v17 imageByCroppingToRect:?];

      [v18 extent];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v67 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(xmmword_1B3D0CEC0, *&v65), *&v65)), vdupq_lane_s64(v65, 0));
      gaussianBlurFilter = [MEMORY[0x1E695F648] gaussianBlurFilter];
      imageByClampingToExtent = [v18 imageByClampingToExtent];
      [gaussianBlurFilter setInputImage:imageByClampingToExtent];

      LODWORD(v29) = 10.0;
      [gaussianBlurFilter setRadius:v29];
      v63 = gaussianBlurFilter;
      outputImage = [gaussianBlurFilter outputImage];
      v31 = [outputImage imageByCroppingToRect:{v20, v22, v24, v26}];

      colorControlsFilter = [MEMORY[0x1E695F648] colorControlsFilter];
      v62 = v31;
      [colorControlsFilter setInputImage:v31];
      LODWORD(v33) = 1075419546;
      [colorControlsFilter setSaturation:v33];
      v61 = colorControlsFilter;
      outputImage2 = [colorControlsFilter outputImage];
      roundedRectangleGeneratorFilter = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
      [roundedRectangleGeneratorFilter setExtent:{v20, v22, v24, v26}];
      HIDWORD(v36) = HIDWORD(v67.f64[0]);
      *&v36 = v67.f64[0];
      [roundedRectangleGeneratorFilter setRadius:v36];
      v37 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0];
      [roundedRectangleGeneratorFilter setColor:v37];

      v59 = roundedRectangleGeneratorFilter;
      outputImage3 = [roundedRectangleGeneratorFilter outputImage];
      roundedRectangleGeneratorFilter2 = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
      v70.origin.x = v20;
      v70.origin.y = v22;
      v70.size.width = v24;
      v70.size.height = v26;
      v71 = CGRectInset(v70, v67.f64[1], v67.f64[1]);
      [roundedRectangleGeneratorFilter2 setExtent:{v71.origin.x, v71.origin.y, v71.size.width, v71.size.height}];
      v40 = fmax(v67.f64[0] - v67.f64[1], 0.1);
      *&v40 = v40;
      [roundedRectangleGeneratorFilter2 setRadius:v40];
      v41 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0];
      [roundedRectangleGeneratorFilter2 setColor:v41];

      outputImage4 = [roundedRectangleGeneratorFilter2 outputImage];
      differenceBlendModeFilter = [MEMORY[0x1E695F648] differenceBlendModeFilter];
      [differenceBlendModeFilter setInputImage:outputImage3];
      v57 = outputImage4;
      [differenceBlendModeFilter setBackgroundImage:outputImage4];
      outputImage5 = [differenceBlendModeFilter outputImage];
      blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
      v60 = outputImage2;
      [blendWithMaskFilter setInputImage:outputImage2];
      [blendWithMaskFilter setBackgroundImage:0];
      v56 = outputImage5;
      [blendWithMaskFilter setMaskImage:outputImage5];
      outputImage6 = [blendWithMaskFilter outputImage];
      blendWithMaskFilter2 = [MEMORY[0x1E695F648] blendWithMaskFilter];
      v68 = v18;
      [blendWithMaskFilter2 setInputImage:v18];
      [blendWithMaskFilter2 setBackgroundImage:0];
      v58 = outputImage3;
      [blendWithMaskFilter2 setMaskImage:outputImage3];
      outputImage7 = [blendWithMaskFilter2 outputImage];
      sourceOverCompositingFilter = [MEMORY[0x1E695F648] sourceOverCompositingFilter];
      v55 = outputImage6;
      [sourceOverCompositingFilter setInputImage:outputImage6];
      [sourceOverCompositingFilter setBackgroundImage:outputImage7];
      outputImage8 = [sourceOverCompositingFilter outputImage];
      context = [MEMORY[0x1E695F620] context];
      [outputImage8 extent];
      v52 = [context createCGImage:outputImage8 fromRect:?];
      if (v52)
      {
        v53 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v52 scale:0 orientation:*&v65];
        [(PUWallpaperPosterEditViewModel *)selfCopy setPreviewThumbnail:v53];

        CGImageRelease(v52);
      }

      else
      {
        v54 = [MEMORY[0x1E69DCAB8] imageWithCIImage:outputImage8];
        [(PUWallpaperPosterEditViewModel *)selfCopy setPreviewThumbnail:v54];
      }
    }
  }
}

- (void)_invalidatePreviewThumbnail
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePreviewThumbnail];
}

- (void)setDesiredHeadroomVisibilityAmount:(id)amount
{
  amountCopy = amount;
  v6 = self->_desiredHeadroomVisibilityAmount;
  v7 = v6;
  if (v6 == amountCopy)
  {
LABEL_7:

    goto LABEL_8;
  }

  v8 = [(NSNumber *)v6 isEqual:amountCopy];

  if ((v8 & 1) == 0)
  {
    v7 = self->_desiredHeadroomVisibilityAmount;
    objc_storeStrong(&self->_desiredHeadroomVisibilityAmount, amount);
    if (v7 || [(PUWallpaperPosterEditViewModel *)self isUserPanningOrZooming])
    {
      headroomVisibilityAmountAnimator = [(PUWallpaperPosterEditViewModel *)self headroomVisibilityAmountAnimator];
      v10 = +[PUPosterHeadroomSettings sharedInstance];
      [v10 fadeAnimationDuration];
      v12 = v11;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __69__PUWallpaperPosterEditViewModel_setDesiredHeadroomVisibilityAmount___block_invoke;
      v16[3] = &unk_1E7B78010;
      v13 = &v17;
      v17 = amountCopy;
      [headroomVisibilityAmountAnimator performChangesWithDuration:4 curve:v16 changes:v12];
    }

    else
    {
      headroomVisibilityAmountAnimator = [(PUWallpaperPosterEditViewModel *)self headroomVisibilityAmountAnimator];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__PUWallpaperPosterEditViewModel_setDesiredHeadroomVisibilityAmount___block_invoke_2;
      v14[3] = &unk_1E7B78010;
      v13 = &v15;
      v15 = amountCopy;
      [headroomVisibilityAmountAnimator performChangesWithoutAnimation:v14];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __69__PUWallpaperPosterEditViewModel_setDesiredHeadroomVisibilityAmount___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 floatValue];
  [v4 setValue:v3];
}

void __69__PUWallpaperPosterEditViewModel_setDesiredHeadroomVisibilityAmount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 floatValue];
  [v4 setValue:v3];
}

- (void)_updateDesiredHeadroomVisibilityAmount
{
  if ([(PUWallpaperPosterEditViewModel *)self visibleFrameCrossesHeadroomBoundary])
  {
    v3 = &unk_1F2B7F408;
  }

  else
  {
    v3 = &unk_1F2B7F418;
  }

  [(PUWallpaperPosterEditViewModel *)self setDesiredHeadroomVisibilityAmount:v3];
}

- (void)_invalidateDesiredHeadroomVisibilityAmount
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDesiredHeadroomVisibilityAmount];
}

- (void)setUsingHeadroom:(BOOL)headroom
{
  if (self->_usingHeadroom != headroom)
  {
    self->_usingHeadroom = headroom;
    [(PUWallpaperPosterEditViewModel *)self signalChange:4096];
  }
}

- (void)setVisibleFrameCrossesHeadroomBoundary:(BOOL)boundary
{
  if (self->_visibleFrameCrossesHeadroomBoundary != boundary)
  {
    self->_visibleFrameCrossesHeadroomBoundary = boundary;
    [(PUWallpaperPosterEditViewModel *)self _invalidateDesiredHeadroomVisibilityAmount];
  }
}

- (void)_updateVisibleFrameCrossesHeadroomBoundary
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  currentLayerStack = [currentLayerStackViewModel currentLayerStack];
  layout = [currentLayerStack layout];
  canApplyHeadroom = [layout canApplyHeadroom];

  if (canApplyHeadroom)
  {
    [(PUWallpaperPosterEditViewModel *)self normalizedVisibleFrame];
    v7 = 0.0 - CGRectGetMinY(v9) > 0.00000011920929;
  }

  else
  {
    v7 = 0;
  }

  [(PUWallpaperPosterEditViewModel *)self setVisibleFrameCrossesHeadroomBoundary:v7];

  [(PUWallpaperPosterEditViewModel *)self setUsingHeadroom:v7];
}

- (void)_invalidateVisibleFrameCrossesHeadroomBoundary
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateVisibleFrameCrossesHeadroomBoundary];
}

- (void)_updateSpatialPhotoEnabled
{
  currentLayerStackViewModelUpdater = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModelUpdater];
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
  allValues = [layerStackViewModelsByStyleKind allValues];
  [currentLayerStackViewModelUpdater renderOnscreenModelAfterVisibleFrameChange:currentLayerStackViewModel recalculateLayoutProperties:0 allViewModels:allValues];
}

- (void)_invalidateSpatialPhotoEnabled
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateSpatialPhotoEnabled];
}

- (void)_updateDepthEnabled
{
  currentLayerStackViewModelUpdater = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModelUpdater];
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  availableLayerStackViewModels = [(PUWallpaperPosterEditViewModel *)self availableLayerStackViewModels];
  [currentLayerStackViewModelUpdater recalculateClockOverlap:currentLayerStackViewModel allViewModels:availableLayerStackViewModels highPriority:1];
}

- (void)_invalidateDepthEnabled
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDepthEnabled];
}

- (void)_updateAvailableLayerStackViewModelsDefaultLayouts
{
  v18 = *MEMORY[0x1E69E9840];
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
  allValues = [layerStackViewModelsByStyleKind allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10 != currentLayerStackViewModel)
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __84__PUWallpaperPosterEditViewModel__updateAvailableLayerStackViewModelsDefaultLayouts__block_invoke;
          v11[3] = &unk_1E7B77FE8;
          v12 = currentLayerStackViewModel;
          [v10 performPrivateChanges:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void __84__PUWallpaperPosterEditViewModel__updateAvailableLayerStackViewModelsDefaultLayouts__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 defaultLayout];
  [v4 setDefaultLayout:v5];

  v6 = [*(a1 + 32) headroomLayout];
  [v4 setHeadroomLayout:v6];
}

- (void)_invalidateAvailableLayerStackViewModelsDefaultLayouts
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAvailableLayerStackViewModelsDefaultLayouts];
}

- (void)_updateLayerStackViewModelProperties:(id)properties
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__PUWallpaperPosterEditViewModel__updateLayerStackViewModelProperties___block_invoke;
  v3[3] = &unk_1E7B80328;
  v3[4] = self;
  [properties performChanges:v3];
}

void __71__PUWallpaperPosterEditViewModel__updateLayerStackViewModelProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 normalizedVisibleFrame];
  [v4 setNormalizedVisibleFrame:?];
  [v4 setParallaxDisabled:{objc_msgSend(*(a1 + 32), "parallaxDisabled")}];
  [v4 setAppliesDepthToAllOrientations:{objc_msgSend(*(a1 + 32), "appliesDepthToAllOrientations")}];
  [v4 setDepthEnabled:{objc_msgSend(*(a1 + 32), "depthEnabled")}];
  [v4 setSpatialPhotoEnabled:{objc_msgSend(*(a1 + 32), "spatialPhotoEnabled")}];
  [v4 setSettlingEffectEnabled:{objc_msgSend(*(a1 + 32), "settlingEffectEnabled")}];
  [v4 setUserAdjustedVisibleFrame:{objc_msgSend(*(a1 + 32), "userHasAdjustedVisibleFrame")}];
  [*(a1 + 32) configuredSalientContentRectangle];
  [v4 setConfiguredSalientContentRectangle:?];
  [v4 setShowsDebugHUD:PXPreferencesGetBool()];
}

- (void)_updateAvailableLayerStackViewModelsProperties
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
  allValues = [layerStackViewModelsByStyleKind allValues];

  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [(PUWallpaperPosterEditViewModel *)self _updateLayerStackViewModelProperties:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_invalidateAvailableLayerStackViewModelsProperties
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAvailableLayerStackViewModelsProperties];
}

- (void)_updatePropertiesFromCurrentLayerStackViewModel
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  [currentLayerStackViewModel normalizedVisibleFrame];
  [(PUWallpaperPosterEditViewModel *)self setNormalizedVisibleFrame:?];
  -[PUWallpaperPosterEditViewModel setDepthEnabled:](self, "setDepthEnabled:", [currentLayerStackViewModel depthEnabled]);
  -[PUWallpaperPosterEditViewModel setSpatialPhotoEnabled:](self, "setSpatialPhotoEnabled:", [currentLayerStackViewModel spatialPhotoEnabled]);
  -[PUWallpaperPosterEditViewModel setParallaxDisabled:](self, "setParallaxDisabled:", [currentLayerStackViewModel parallaxDisabled]);
}

- (void)_invalidatePropertiesFromCurrentLayerStackViewModel
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePropertiesFromCurrentLayerStackViewModel];
}

- (void)_updateAvailableLayerStackViewModelsContainerGeometry
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
  allValues = [layerStackViewModelsByStyleKind allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __87__PUWallpaperPosterEditViewModel__updateAvailableLayerStackViewModelsContainerGeometry__block_invoke;
        v10[3] = &unk_1E7B80328;
        v10[4] = self;
        [v9 performChanges:v10];
        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __87__PUWallpaperPosterEditViewModel__updateAvailableLayerStackViewModelsContainerGeometry__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 containerFrame];
  [v4 setContainerFrame:?];
  [v4 setDeviceOrientation:{objc_msgSend(*(a1 + 32), "deviceOrientation")}];
}

- (void)_invalidateAvailableLayerStackViewModelsContainerGeometry
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAvailableLayerStackViewModelsContainerGeometry];
}

- (void)_updateNormalizedVisibleFrame
{
  v36 = *MEMORY[0x1E69E9840];
  isUserPanningOrZooming = [(PUWallpaperPosterEditViewModel *)self isUserPanningOrZooming];
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __63__PUWallpaperPosterEditViewModel__updateNormalizedVisibleFrame__block_invoke;
  v34[3] = &unk_1E7B80328;
  v34[4] = self;
  [currentLayerStackViewModel performChanges:v34];
  v5 = +[PUSuggestionsSettings sharedInstance];
  debugDisableFrameUpdates = [v5 debugDisableFrameUpdates];

  if ((debugDisableFrameUpdates & 1) == 0)
  {
    viewModelUpdatersByStyleKind = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
    style = [currentLayerStackViewModel style];
    kind = [style kind];
    v10 = [viewModelUpdatersByStyleKind objectForKeyedSubscript:kind];

    if (isUserPanningOrZooming)
    {
      layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
      allValues = [layerStackViewModelsByStyleKind allValues];
      [v10 renderOnscreenModelAfterVisibleFrameChange:currentLayerStackViewModel recalculateLayoutProperties:1 allViewModels:allValues];
    }

    else
    {
      spatialPhotoEnabled = [(PUWallpaperPosterEditViewModel *)self spatialPhotoEnabled];
      layerStackViewModelsByStyleKind2 = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
      allValues2 = [layerStackViewModelsByStyleKind2 allValues];
      [v10 renderOnscreenModelAfterVisibleFrameChange:currentLayerStackViewModel recalculateLayoutProperties:!spatialPhotoEnabled allViewModels:allValues2];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      layerStackViewModelsByStyleKind3 = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
      layerStackViewModelsByStyleKind = [layerStackViewModelsByStyleKind3 allValues];

      v17 = [layerStackViewModelsByStyleKind countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v27 = v10;
        obj = layerStackViewModelsByStyleKind;
        v19 = *v31;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            if (v21 != currentLayerStackViewModel)
            {
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __63__PUWallpaperPosterEditViewModel__updateNormalizedVisibleFrame__block_invoke_2;
              v29[3] = &unk_1E7B80328;
              v29[4] = self;
              [v21 performChanges:v29];
              viewModelUpdatersByStyleKind2 = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
              [v21 style];
              v24 = v23 = currentLayerStackViewModel;
              kind2 = [v24 kind];
              v26 = [viewModelUpdatersByStyleKind2 objectForKeyedSubscript:kind2];

              currentLayerStackViewModel = v23;
              [v26 renderOffscreenModelAfterVisibleFrameChange:v21 highPriority:{-[NSSet containsObject:](self->_activeLayerStackViewModels, "containsObject:", v21)}];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v18);
        v10 = v27;
        layerStackViewModelsByStyleKind = obj;
      }
    }
  }
}

void __63__PUWallpaperPosterEditViewModel__updateNormalizedVisibleFrame__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 normalizedVisibleFrame];
  [v3 setNormalizedVisibleFrame:?];
}

void __63__PUWallpaperPosterEditViewModel__updateNormalizedVisibleFrame__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 normalizedVisibleFrame];
  [v3 setNormalizedVisibleFrame:?];
}

- (void)_invalidateNormalizedVisibleFrame
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateNormalizedVisibleFrame];
}

- (void)_invalidateAdaptiveTimeFrame
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAdaptiveTimeFrame];
}

- (void)_updateAdaptiveTimeFrame
{
  currentLayerStackViewModelUpdater = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModelUpdater];
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  availableLayerStackViewModels = [(PUWallpaperPosterEditViewModel *)self availableLayerStackViewModels];
  [currentLayerStackViewModelUpdater recalculateClockOverlap:currentLayerStackViewModel allViewModels:availableLayerStackViewModels highPriority:1];
}

- (void)_updateOffscreenStylesPreheat
{
  currentStyleKinds = [(PUWallpaperPosterEditViewModel *)self currentStyleKinds];
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PUWallpaperPosterEditViewModel__updateOffscreenStylesPreheat__block_invoke;
  v8[3] = &unk_1E7B77F98;
  v5 = currentLayerStackViewModel;
  v9 = v5;
  v6 = [currentStyleKinds indexOfObjectPassingTest:v8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__PUWallpaperPosterEditViewModel__updateOffscreenStylesPreheat__block_invoke_2;
    v7[3] = &unk_1E7B77FC0;
    v7[4] = self;
    v7[5] = v6;
    [currentStyleKinds enumerateObjectsUsingBlock:v7];
  }
}

uint64_t __63__PUWallpaperPosterEditViewModel__updateOffscreenStylesPreheat__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 style];
  v5 = [v4 kind];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __63__PUWallpaperPosterEditViewModel__updateOffscreenStylesPreheat__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = a3 - v4;
  if (a3 - v4 < 0)
  {
    v5 = v4 - a3;
  }

  if (a3 != v4 && v5 <= 4)
  {
    v8 = *(a1 + 32);
    v9 = a2;
    v10 = [v8 viewModelUpdatersByStyleKind];
    v13 = [v10 objectForKeyedSubscript:v9];

    v11 = [*(a1 + 32) layerStackViewModelsByStyleKind];
    v12 = [v11 objectForKeyedSubscript:v9];

    if (v13 && v12)
    {
      [v13 prepareOffscreenModelForLikelyDisplay:v12];
    }
  }
}

- (void)_invalidateOffscreenStylesPreheat
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateOffscreenStylesPreheat];
}

- (void)_updateCurrentLayerStackViewModel
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  [(PUWallpaperPosterEditViewModel *)self scrollPosition];
  if (0.0 <= 0.5)
  {
    v3 = v13;
  }

  else
  {
    v3 = &v14;
  }

  v4 = *v3;
  layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
  v6 = [layerStackViewModelsByStyleKind objectForKeyedSubscript:v4];
  [(PUWallpaperPosterEditViewModel *)self setCurrentLayerStackViewModel:v6];

  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  if ([currentLayerStackViewModel clockIntersection])
  {
    segmentationItem = [(PUWallpaperPosterEditViewModel *)self segmentationItem];
    supportsManualClockIntersectionTolerance = [segmentationItem supportsManualClockIntersectionTolerance];

    if (supportsManualClockIntersectionTolerance)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  currentLayerStackViewModelUpdater = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModelUpdater];
  currentLayerStackViewModel2 = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  availableLayerStackViewModels = [(PUWallpaperPosterEditViewModel *)self availableLayerStackViewModels];
  [currentLayerStackViewModelUpdater recalculateClockIntersection:currentLayerStackViewModel2 allViewModels:availableLayerStackViewModels highPriority:1];

LABEL_9:
}

- (void)_invalidateCurrentLayerStackViewModel
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentLayerStackViewModel];
}

- (void)_invalidatePresentingSingleStyle
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePresentingSingleStyle];
}

- (void)_updateVisibleLayerStackViewModels
{
  v33 = *MEMORY[0x1E69E9840];
  v30[5] = 0;
  v30[6] = 0;
  v31 = 0;
  [(PUWallpaperPosterEditViewModel *)self scrollPosition];
  v3 = 0;
  v4 = 0.0;
  if ((PXFloatEqualToFloatWithTolerance() & 1) == 0)
  {
    v4 = 1.0;
    if (!PXFloatEqualToFloatWithTolerance())
    {
      v4 = 0.0;
    }
  }

  v5 = [(PUWallpaperPosterEditViewModel *)self _layerStackViewModelForStyleKind:v3];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__PUWallpaperPosterEditViewModel__updateVisibleLayerStackViewModels__block_invoke;
  v30[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  *&v30[4] = v4;
  [v5 performChanges:v30];
  v6 = v31;
  if ([v3 isEqualToString:v6])
  {
    v7 = [(PUWallpaperPosterEditViewModel *)self _nextStyleKindForStyleKind:v3];

    v6 = v7;
  }

  v24 = v3;
  v22 = v6;
  if ([v3 isEqualToString:v6])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(PUWallpaperPosterEditViewModel *)self _layerStackViewModelForStyleKind:v6];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __68__PUWallpaperPosterEditViewModel__updateVisibleLayerStackViewModels__block_invoke_2;
    v29[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    *&v29[4] = v4;
    [v8 performChanges:v29];
  }

  v21 = v8;
  v23 = v5;
  v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, v8, 0}];
  [(PUWallpaperPosterEditViewModel *)self setVisibleLayerStackViewModels:v9];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  availableLayerStackViewModels = [(PUWallpaperPosterEditViewModel *)self availableLayerStackViewModels];
  v11 = [availableLayerStackViewModels countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(availableLayerStackViewModels);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        viewModelUpdatersByStyleKind = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
        style = [v15 style];
        kind = [style kind];
        v19 = [viewModelUpdatersByStyleKind objectForKeyedSubscript:kind];

        visibleLayerStackViewModels = [(PUWallpaperPosterEditViewModel *)self visibleLayerStackViewModels];
        LODWORD(kind) = [visibleLayerStackViewModels containsObject:v15];

        if (kind)
        {
          [v19 ensureOnscreenModelIsLoaded:v15];
        }

        else
        {
          [v19 ensureOffscreenModelIsUnloaded:v15];
        }
      }

      v12 = [availableLayerStackViewModels countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v12);
  }
}

void __68__PUWallpaperPosterEditViewModel__updateVisibleLayerStackViewModels__block_invoke(uint64_t a1, void *a2)
{
  v2 = 1.0 - *(a1 + 32);
  v3 = a2;
  [v3 setVisibilityAmount:v2];
  [v3 setLayoutOrder:2];
}

void __68__PUWallpaperPosterEditViewModel__updateVisibleLayerStackViewModels__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setVisibilityAmount:v2];
  [v3 setLayoutOrder:1];
}

- (void)_invalidateVisibleLayerStackViewModels
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateVisibleLayerStackViewModels];
}

- (void)_updateActiveLayerStackViewModels
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  [(PUWallpaperPosterEditViewModel *)self scrollPosition];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PUWallpaperPosterEditViewModel__updateActiveLayerStackViewModels__block_invoke;
  aBlock[3] = &unk_1E7B7C540;
  aBlock[4] = self;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v5[2](v5, v9);
  v5[2](v5, v11);
  v6 = [v4 copy];
  [(PUWallpaperPosterEditViewModel *)self setActiveLayerStackViewModels:v6];
}

uint64_t __67__PUWallpaperPosterEditViewModel__updateActiveLayerStackViewModels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v15 = v3;
    v3 = [v3 isEqualToString:*MEMORY[0x1E69C0B38]];
    v4 = v15;
    if ((v3 & 1) == 0)
    {
      v5 = [*(a1 + 32) _layerStackViewModelForStyleKind:v15];
      v6 = *(a1 + 32);
      v7 = [v6 _previousStyleKindForStyleKind:v15];
      v8 = [v6 _layerStackViewModelForStyleKind:v7];

      v9 = *(a1 + 32);
      v10 = [v9 _nextStyleKindForStyleKind:v15];
      v11 = [v9 _layerStackViewModelForStyleKind:v10];

      v12 = *(a1 + 40);
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v5, v8, v11, 0}];
      [v12 addObjectsFromArray:v13];

      v4 = v15;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)_invalidateActiveLayerStackViewModels
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateActiveLayerStackViewModels];
}

- (void)_invalidateCurrentStyles
{
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentStyles];
}

- (PFWallpaperCompoundDeviceConfiguration)layoutConfiguration
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  layoutConfiguration = [currentLayerStackViewModel layoutConfiguration];

  return layoutConfiguration;
}

- (id)_layerStackViewModelForStyleKind:(id)kind
{
  kindCopy = kind;
  if (*MEMORY[0x1E69C0B38] == kindCopy)
  {
    v6 = 0;
  }

  else
  {
    layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
    v6 = [layerStackViewModelsByStyleKind objectForKeyedSubscript:kindCopy];

    if (!v6)
    {
      _PFAssertContinueHandler();
    }
  }

  return v6;
}

- (id)posterEditConfigurationRepresentation
{
  [(PUWallpaperPosterEditViewModel *)self scrollPosition];
  v3 = *&v26[16 * (v27 > 0.5)];
  layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
  v5 = [layerStackViewModelsByStyleKind objectForKeyedSubscript:v3];

  compoundLayerStack = [v5 compoundLayerStack];
  portraitLayerStack = [compoundLayerStack portraitLayerStack];
  landscapeLayerStack = [compoundLayerStack landscapeLayerStack];
  if ([(PUWallpaperPosterEditViewModel *)self isBackdropEnvironment])
  {
    currentLayerStack = [v5 currentLayerStack];

    landscapeLayerStack = currentLayerStack;
    portraitLayerStack = landscapeLayerStack;
  }

  v10 = objc_alloc_init(MEMORY[0x1E69C07F8]);
  layout = [portraitLayerStack layout];
  [layout normalizedVisibleFrame];
  PXRectFlippedVertically();
  [v10 setNormalizedVisibleFrame:?];

  layout2 = [landscapeLayerStack layout];
  [layout2 normalizedVisibleFrame];
  PXRectFlippedVertically();
  [v10 setNormalizedLandscapeVisibleFrame:?];

  layout3 = [portraitLayerStack layout];
  [layout3 normalizedAdaptiveVisibleFrame];
  PXRectFlippedVertically();
  [v10 setNormalizedAdaptiveVisibleFrame:?];

  layout4 = [landscapeLayerStack layout];
  [layout4 normalizedAdaptiveVisibleFrame];
  PXRectFlippedVertically();
  [v10 setNormalizedLandscapeAdaptiveVisibleFrame:?];

  layout5 = [portraitLayerStack layout];
  [layout5 normalizedAdaptiveTimeFrame];
  PXRectFlippedVertically();
  [v10 setNormalizedAdaptiveTimeFrame:?];

  layout6 = [landscapeLayerStack layout];
  [layout6 normalizedAdaptiveTimeFrame];
  PXRectFlippedVertically();
  [v10 setNormalizedLandscapeAdaptiveTimeFrame:?];

  if ([portraitLayerStack depthEnabled] && !-[PUWallpaperPosterEditViewModel settlingEffectEnabled](self, "settlingEffectEnabled"))
  {
    v17 = [(PUWallpaperPosterEditViewModel *)self isBackdropEnvironment]^ 1;
  }

  else
  {
    v17 = 0;
  }

  [v10 setIsDepthEnabled:v17];
  segmentationItem = [(PUWallpaperPosterEditViewModel *)self segmentationItem];
  segmentationMatte = [segmentationItem segmentationMatte];
  [v10 setIsDepthAvailable:segmentationMatte != 0];

  if ([landscapeLayerStack depthEnabled])
  {
    v20 = [(PUWallpaperPosterEditViewModel *)self isBackdropEnvironment]^ 1;
  }

  else
  {
    v20 = 0;
  }

  [v10 setIsLandscapeDepthEnabled:v20];
  [v10 setIsSettlingEffectEnabled:{-[PUWallpaperPosterEditViewModel settlingEffectEnabled](self, "settlingEffectEnabled")}];
  segmentationItem2 = [(PUWallpaperPosterEditViewModel *)self segmentationItem];
  [v10 setIsSettlingEffectAvailable:{objc_msgSend(segmentationItem2, "isSettlingEffectAvailable")}];

  [v10 setIsSpatialPhotoEnabled:{-[PUWallpaperPosterEditViewModel spatialPhotoEnabled](self, "spatialPhotoEnabled")}];
  segmentationItem3 = [(PUWallpaperPosterEditViewModel *)self segmentationItem];
  [v10 setIsSpatialPhotoAvailable:{objc_msgSend(segmentationItem3, "isSpatialPhotoAvailable")}];

  [v10 setIsPerspectiveZoomEnabled:{-[PUWallpaperPosterEditViewModel parallaxDisabled](self, "parallaxDisabled") ^ 1}];
  [v10 setUserAdjustedVisibleFrame:{-[PUWallpaperPosterEditViewModel userHasAdjustedVisibleFrame](self, "userHasAdjustedVisibleFrame")}];
  style = [v5 style];
  bakedStyle = [style bakedStyle];
  [v10 setStyle:bakedStyle];

  [v5 overrideTitleHeight];
  [v10 setAdditionalTitleLabelHeight:?];
  [v5 landscapeOverrideTitleHeight];
  [v10 setLandscapeAdditionalTitleLabelHeight:?];
  [v10 setUserAdjustedTitleLabelHeightOffset:0.0];
  [v10 setLandscapeUserAdjustedTitleLabelHeightOffset:0.0];

  return v10;
}

- (void)applyChangesFromPosterEditConfiguration:(id)configuration
{
  configurationCopy = configuration;
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  orientation = [currentLayerStackViewModel orientation];

  if (orientation == 2)
  {
    [configurationCopy normalizedLandscapeVisibleFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    isLandscapeDepthEnabled = [configurationCopy isLandscapeDepthEnabled];
  }

  else
  {
    [configurationCopy normalizedVisibleFrame];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v14 = v19;
    isLandscapeDepthEnabled = [configurationCopy isDepthEnabled];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__PUWallpaperPosterEditViewModel_applyChangesFromPosterEditConfiguration___block_invoke;
  v21[3] = &unk_1E7B77F70;
  v24 = v8;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  v28 = isLandscapeDepthEnabled;
  v22 = configurationCopy;
  selfCopy = self;
  v20 = configurationCopy;
  [(PUWallpaperPosterEditViewModel *)self performChanges:v21];
}

void __74__PUWallpaperPosterEditViewModel_applyChangesFromPosterEditConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!CGRectIsEmpty(*(a1 + 48)))
  {
    [v3 setNormalizedVisibleFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  [v3 setDepthEnabled:*(a1 + 80)];
  if ([*(a1 + 32) isDepthEnabled])
  {
    v4 = [*(a1 + 40) currentLayerStackViewModel];
    if ([v4 clockAppearsAboveForeground])
    {
      v5 = [*(a1 + 32) isSpatialPhotoEnabled];

      if ((v5 & 1) == 0)
      {
        [v3 setDepthEnabled:0];
      }
    }

    else
    {
    }
  }

  [v3 setSettlingEffectEnabled:{objc_msgSend(*(a1 + 32), "isSettlingEffectEnabled")}];
  [v3 setSpatialPhotoEnabled:{objc_msgSend(*(a1 + 32), "isSpatialPhotoEnabled")}];
  [v3 setParallaxDisabled:{objc_msgSend(*(a1 + 32), "isPerspectiveZoomEnabled") ^ 1}];
  [v3 setUserHasAdjustedVisibleFrame:{objc_msgSend(*(a1 + 32), "userAdjustedVisibleFrame")}];
  v6 = [*(a1 + 32) style];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 kind];
    v9 = *MEMORY[0x1E69C0B38];
    v10[0] = v8;
    v10[1] = 0;
    v10[2] = v9;
    [v3 scrollToPosition:v10];
  }
}

- (id)_nextStyleKindForStyleKind:(id)kind
{
  v17 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  currentStyleKinds = [(PUWallpaperPosterEditViewModel *)self currentStyleKinds];
  v6 = [currentStyleKinds indexOfObject:kindCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = kindCopy;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "styleKind %@ not found in availableStyleKinds", &v15, 0xCu);
    }

    v8 = *MEMORY[0x1E69C0B28];
  }

  else
  {
    v9 = v6;
    v10 = v6 + 1;
    v11 = [currentStyleKinds count];
    if (v10 < v11 - 1)
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = v11 - 1;
    }

    v8 = [currentStyleKinds objectAtIndexedSubscript:v12];
  }

  v13 = v8;

  return v13;
}

- (id)_previousStyleKindForStyleKind:(id)kind
{
  v14 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  currentStyleKinds = [(PUWallpaperPosterEditViewModel *)self currentStyleKinds];
  v6 = [currentStyleKinds indexOfObject:kindCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = kindCopy;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "styleKind %@ not found in availableStyleKinds", &v12, 0xCu);
    }

    v8 = *MEMORY[0x1E69C0B28];
  }

  else
  {
    if (v6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6;
    }

    v8 = [currentStyleKinds objectAtIndexedSubscript:v9 - 1];
  }

  v10 = v8;

  return v10;
}

- (void)_updateCurrentStylesWithChange:(int64_t)change
{
  availableLayerStackViewModels = [(PUWallpaperPosterEditViewModel *)self availableLayerStackViewModels];
  v7 = PXMap();

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  changeCopy = change;
  currentStyles = [(PUWallpaperPosterEditViewModel *)self currentStyles];
  v9 = [currentStyles copy];

  if (v9)
  {
    v10 = [v9 count];
    if (v10 != [v7 count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditViewModel.m" lineNumber:777 description:@"Diffing is only supported when number of styles does not change"];
    }

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65__PUWallpaperPosterEditViewModel__updateCurrentStylesWithChange___block_invoke_2;
    v15 = &unk_1E7B77F48;
    v16 = v7;
    v17 = &v18;
    [v9 enumerateObjectsUsingBlock:&v12];
  }

  [(PUWallpaperPosterEditViewModel *)self setStylesChange:v19[3], v12, v13, v14, v15];
  [(PUWallpaperPosterEditViewModel *)self setCurrentStyles:v7];

  _Block_object_dispose(&v18, 8);
}

void __65__PUWallpaperPosterEditViewModel__updateCurrentStylesWithChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 kind];
  v7 = [v15 kind];
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    v14 = 2;
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) |= v14;
    goto LABEL_9;
  }

  v9 = [v5 clockFont];
  v10 = [v15 clockFont];
  if (([v9 isEqualToString:v10] & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = [v5 clockColor];
  v12 = [v15 clockColor];
  v13 = [v11 isEqual:v12];

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setCurrentStyles:(id)styles
{
  v4 = [styles copy];
  currentStyles = self->_currentStyles;
  self->_currentStyles = v4;

  [(PUWallpaperPosterEditViewModel *)self signalChange:512];
}

- (NSArray)currentStyleKinds
{
  currentStyles = [(PUWallpaperPosterEditViewModel *)self currentStyles];
  v3 = PXMap();

  return v3;
}

- (void)updatePhotoEffectsWithLoadedSegmentationItem:(id)item layerStack:(id)stack
{
  itemCopy = item;
  stackCopy = stack;
  if (self->_segmentationItem != itemCopy)
  {
    objc_storeStrong(&self->_segmentationItem, item);
    originalLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self originalLayerStackViewModel];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __90__PUWallpaperPosterEditViewModel_updatePhotoEffectsWithLoadedSegmentationItem_layerStack___block_invoke;
    v13 = &unk_1E7B804F8;
    v14 = itemCopy;
    v15 = stackCopy;
    [originalLayerStackViewModel performChanges:&v10];

    [(PUWallpaperPosterEditViewModel *)self signalChange:0x10000, v10, v11, v12, v13];
  }
}

- (void)setPresentingSingleStyle:(BOOL)style
{
  if (self->_presentingSingleStyle != style)
  {
    self->_presentingSingleStyle = style;
    [(PUWallpaperPosterEditViewModel *)self signalChange:64];
  }
}

- (void)setSettlingEffectStateRestorationLayerStyleKind:(id)kind
{
  kindCopy = kind;
  if (self->_settlingEffectStateRestorationLayerStyleKind != kindCopy)
  {
    v6 = kindCopy;
    objc_storeStrong(&self->_settlingEffectStateRestorationLayerStyleKind, kind);
    kindCopy = v6;
  }
}

- (void)setParallaxDisabled:(BOOL)disabled
{
  if (self->_parallaxDisabled != disabled)
  {
    self->_parallaxDisabled = disabled;
    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsProperties];

    [(PUWallpaperPosterEditViewModel *)self signalChange:32];
  }
}

- (void)setHeadroomEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PUWallpaperPosterEditViewModel *)self isUsingHeadroom]!= enabled)
  {
    self->_headroomEnabled = enabledCopy;
    currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
    orientation = [currentLayerStackViewModel orientation];
    if ([(PUWallpaperPosterEditViewModel *)self isUsingHeadroom])
    {
      [currentLayerStackViewModel effectiveDefaultLayout];
    }

    else
    {
      [currentLayerStackViewModel effectiveHeadroomLayout];
    }
    v7 = ;
    v8 = v7;
    if (orientation == 2)
    {
      [v7 landscapeLayout];
    }

    else
    {
      [v7 portraitLayout];
    }
    v9 = ;
    [v9 visibleFrame];
    x = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v9 imageSize];
    height = 0.0;
    width = 0.0;
    if (v18 != 0.0)
    {
      x = x / v18;
      width = v15 / v18;
    }

    if (v19 != 0.0)
    {
      v13 = v13 / v19;
      height = v17 / v19;
    }

    y = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (height + v13);
    [currentLayerStackViewModel normalizedVisibleFrame];
    v23 = PXRectApproximatelyEqualToRect();
    effectiveHeadroomLayout = [currentLayerStackViewModel effectiveHeadroomLayout];

    isUsingHeadroom = [v9 isUsingHeadroom];
    if (enabledCopy)
    {
      v26 = effectiveHeadroomLayout ? v23 : 1;
      if ((v26 & 1) != 0 || isUsingHeadroom != 1)
      {
        if ([(PUWallpaperPosterEditViewModel *)self spatialPhotoEnabled])
        {
          segmentationItem = [(PUWallpaperPosterEditViewModel *)self segmentationItem];
          [segmentationItem spatialPhotoNormalizedBounds];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
        }

        else
        {
          v29 = *MEMORY[0x1E69C48E0];
          v31 = *(MEMORY[0x1E69C48E0] + 8);
          v33 = *(MEMORY[0x1E69C48E0] + 16);
          v35 = *(MEMORY[0x1E69C48E0] + 24);
        }

        v36 = 1.0 - *MEMORY[0x1E69C0C68];
        v42.origin.x = v29;
        v42.origin.y = v31;
        v42.size.width = v33;
        v42.size.height = v35;
        CGRectOffset(v42, 0.0, v36);
        [currentLayerStackViewModel normalizedVisibleFrame];
        PXSizeGetAspectRatio();
        PXRectWithAspectRatioFittingRect();
        x = v43.origin.x;
        y = v43.origin.y;
        width = v43.size.width;
        height = v43.size.height;
        if (CGRectGetMinY(v43) < 0.0)
        {
          y = v36 * 0.25;
        }
      }
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    if (!CGRectIsEmpty(v44))
    {
      [(PUWallpaperPosterEditViewModel *)self setNormalizedVisibleFrameAnimated:x, y, width, height];
    }

    if (enabledCopy)
    {
      [(PUWallpaperPosterEditViewModel *)self setSettlingEffectEnabled:0];
      [(PUWallpaperPosterEditViewModel *)self setDepthEnabled:1];
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __53__PUWallpaperPosterEditViewModel_setHeadroomEnabled___block_invoke;
    v40[3] = &__block_descriptor_33_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    v41 = enabledCopy;
    [currentLayerStackViewModel performChanges:v40];
    if ([(PUWallpaperPosterEditViewModel *)self spatialPhotoEnabled])
    {
      viewModelUpdatersByStyleKind = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
      v38 = [viewModelUpdatersByStyleKind objectForKeyedSubscript:*MEMORY[0x1E69C0B28]];

      originalLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self originalLayerStackViewModel];
      [v38 renderSpatialPhotoLayerIfNeededForViewModel:originalLayerStackViewModel isUserTransformDisabled:-[PUWallpaperPosterEditViewModel isUserTransformDisabled](self completionHandler:{"isUserTransformDisabled"), &__block_literal_global_80}];
    }

    [(PUWallpaperPosterEditViewModel *)self signalChange:0x2000];
  }
}

uint64_t __53__PUWallpaperPosterEditViewModel_setHeadroomEnabled___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a2 setHeadroomState:v2];
}

- (void)setConfiguredSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  p_configuredSalientContentRectangle = &self->_configuredSalientContentRectangle;
  if (!CGRectEqualToRect(self->_configuredSalientContentRectangle, rectangle))
  {
    p_configuredSalientContentRectangle->origin.x = x;
    p_configuredSalientContentRectangle->origin.y = y;
    p_configuredSalientContentRectangle->size.width = width;
    p_configuredSalientContentRectangle->size.height = height;
    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsProperties];

    [(PUWallpaperPosterEditViewModel *)self _invalidateAdaptiveTimeFrame];
  }
}

- (void)setSettlingEffectEnabled:(BOOL)enabled
{
  if (self->_settlingEffectEnabled != enabled)
  {
    v8 = v3;
    self->_settlingEffectEnabled = enabled;
    if (enabled)
    {
      [(PUWallpaperPosterEditViewModel *)self setSpatialPhotoEnabled:0];
    }

    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsProperties:v4];

    [(PUWallpaperPosterEditViewModel *)self signalChange:1024];
  }
}

- (void)setAppliesDepthToAllOrientations:(BOOL)orientations
{
  if (self->_appliesDepthToAllOrientations != orientations)
  {
    self->_appliesDepthToAllOrientations = orientations;
    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsProperties];

    [(PUWallpaperPosterEditViewModel *)self signalChange:2048];
  }
}

- (void)setSpatialPhotoEnabled:(BOOL)enabled
{
  if (self->_spatialPhotoEnabled != enabled)
  {
    self->_spatialPhotoEnabled = enabled;
    if (enabled)
    {
      [(PUWallpaperPosterEditViewModel *)self setSettlingEffectEnabled:0];
      originalLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self originalLayerStackViewModel];
      isLoadingSpatialPhoto = [originalLayerStackViewModel isLoadingSpatialPhoto];

      if ((isLoadingSpatialPhoto & 1) == 0)
      {
        viewModelUpdatersByStyleKind = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
        v7 = [viewModelUpdatersByStyleKind objectForKeyedSubscript:*MEMORY[0x1E69C0B28]];

        objc_initWeak(&location, self);
        originalLayerStackViewModel2 = [(PUWallpaperPosterEditViewModel *)self originalLayerStackViewModel];
        isUserTransformDisabled = [(PUWallpaperPosterEditViewModel *)self isUserTransformDisabled];
        v10 = MEMORY[0x1E69E9820];
        v11 = 3221225472;
        v12 = __57__PUWallpaperPosterEditViewModel_setSpatialPhotoEnabled___block_invoke;
        v13 = &unk_1E7B80638;
        objc_copyWeak(&v14, &location);
        [v7 renderSpatialPhotoLayerIfNeededForViewModel:originalLayerStackViewModel2 isUserTransformDisabled:isUserTransformDisabled completionHandler:&v10];

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(PUWallpaperPosterEditViewModel *)self applyReframeVisibleFrameRestoration];
    }

    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsProperties:v10];
    [(PUWallpaperPosterEditViewModel *)self _invalidateSpatialPhotoEnabled];
    [(PUWallpaperPosterEditViewModel *)self signalChange:0x4000];
  }
}

void __57__PUWallpaperPosterEditViewModel_setSpatialPhotoEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performChanges:&__block_literal_global_77];
}

- (void)setDepthEnabled:(BOOL)enabled
{
  if (self->_depthEnabled != enabled && !self->_backdropEnvironment)
  {
    self->_depthEnabled = enabled;
    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsProperties];
    [(PUWallpaperPosterEditViewModel *)self _invalidateDepthEnabled];

    [(PUWallpaperPosterEditViewModel *)self signalChange:128];
  }
}

- (BOOL)depthEnabledInAnyOrientation
{
  if ([(PUWallpaperPosterEditViewModel *)self depthEnabled])
  {
    return 1;
  }

  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  depthEnabledInAnyOrientation = [currentLayerStackViewModel depthEnabledInAnyOrientation];

  return depthEnabledInAnyOrientation;
}

- (void)setContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_containerFrame = &self->_containerFrame;
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    p_containerFrame->origin.x = x;
    p_containerFrame->origin.y = y;
    p_containerFrame->size.width = width;
    p_containerFrame->size.height = height;
    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsContainerGeometry];

    [(PUWallpaperPosterEditViewModel *)self signalChange:16];
  }
}

- (BOOL)applyReframeVisibleFrameRestoration
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  orientation = [currentLayerStackViewModel orientation];
  compoundLayerStack = [currentLayerStackViewModel compoundLayerStack];
  landscapeLayerStack = [compoundLayerStack landscapeLayerStack];

  if (orientation == 2)
  {
    [(PUWallpaperPosterEditViewModel *)self reframeStateRestorationLandscapeNormalizedVisibleFrame];
  }

  else
  {
    [(PUWallpaperPosterEditViewModel *)self reframeStateRestorationPortraitNormalizedVisibleFrame];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  IsEmpty = CGRectIsEmpty(*&v7);
  if (!IsEmpty)
  {
    [(PUWallpaperPosterEditViewModel *)self setNormalizedVisibleFrameAnimated:v11, v12, v13, v14];
  }

  if (landscapeLayerStack)
  {
    if (orientation == 2)
    {
      [(PUWallpaperPosterEditViewModel *)self reframeStateRestorationPortraitNormalizedVisibleFrame];
    }

    else
    {
      [(PUWallpaperPosterEditViewModel *)self reframeStateRestorationLandscapeNormalizedVisibleFrame];
    }

    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if (!CGRectIsEmpty(*&v16))
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __69__PUWallpaperPosterEditViewModel_applyReframeVisibleFrameRestoration__block_invoke;
      v25[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
      v25[4] = v20;
      v25[5] = v21;
      v25[6] = v22;
      v25[7] = v23;
      [currentLayerStackViewModel performChanges:v25];
    }
  }

  return !IsEmpty;
}

- (void)setUserHasAdjustedVisibleFrame:(BOOL)frame
{
  if (self->_userHasAdjustedVisibleFrame != frame)
  {
    self->_userHasAdjustedVisibleFrame = 1;
    [(PUWallpaperPosterEditViewModel *)self _invalidateAvailableLayerStackViewModelsProperties];
  }
}

- (BOOL)userHasAdjustedLayout
{
  if ([(PUWallpaperPosterEditViewModel *)self userHasAdjustedPortraitVisibleFrame])
  {
    return 1;
  }

  return [(PUWallpaperPosterEditViewModel *)self userHasAdjustedLandscapeVisibleFrame];
}

- (void)noteUserAdjustedVisibleFrame
{
  [(PUWallpaperPosterEditViewModel *)self setSettlingEffectStateRestorationLayerStyleKind:*MEMORY[0x1E69C0B28]];
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  orientation = [currentLayerStackViewModel orientation];

  if (orientation == 2)
  {
    [(PUWallpaperPosterEditViewModel *)self setUserHasAdjustedLandscapeVisibleFrame:1];
    [(PUWallpaperPosterEditViewModel *)self setReframeStateRestorationLandscapeNormalizedVisibleFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  else if (orientation == 1)
  {
    [(PUWallpaperPosterEditViewModel *)self setUserHasAdjustedPortraitVisibleFrame:1];
    [(PUWallpaperPosterEditViewModel *)self setReframeStateRestorationPortraitNormalizedVisibleFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  [(PUWallpaperPosterEditViewModel *)self setUserHasAdjustedVisibleFrame:1];
}

- (void)reframeIfNeededNormalizedBounds:(CGRect)bounds layout:(id)layout useCase:(int64_t)case forceReframe:(BOOL)reframe
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v135 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PUWallpaperPosterEditViewModel_reframeIfNeededNormalizedBounds_layout_useCase_forceReframe___block_invoke;
  aBlock[3] = &unk_1E7B77EE0;
  reframeCopy = reframe;
  aBlock[4] = self;
  *&aBlock[5] = x;
  *&aBlock[6] = y;
  *&aBlock[7] = width;
  *&aBlock[8] = height;
  aBlock[9] = case;
  v14 = _Block_copy(aBlock);
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  orientation = [currentLayerStackViewModel orientation];
  compoundLayerStack = [currentLayerStackViewModel compoundLayerStack];
  landscapeLayerStack = [compoundLayerStack landscapeLayerStack];
  portraitLayerStack = [compoundLayerStack portraitLayerStack];
  v20 = portraitLayerStack;
  if (orientation == 2)
  {
    v21 = landscapeLayerStack;
  }

  else
  {
    v21 = portraitLayerStack;
  }

  if (orientation == 2)
  {
    v22 = portraitLayerStack;
  }

  else
  {
    v22 = landscapeLayerStack;
  }

  v125 = v21;
  v124 = v22;
  if (!layoutCopy)
  {
    v78 = PLWallpaperGetLog();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v78, OS_LOG_TYPE_ERROR, "Reframe layout missing, reframe failed", buf, 2u);
    }

    goto LABEL_71;
  }

  portraitLayout = [layoutCopy portraitLayout];
  [portraitLayout visibleFrame];
  v109 = v25;
  log = v24;
  v120 = v27;
  v121 = v26;

  landscapeLayout = [layoutCopy landscapeLayout];
  [landscapeLayout visibleFrame];
  v116 = v30;
  v118 = v29;
  v122 = v32;
  v123 = v31;

  v33.f64[0] = v109;
  v33.f64[1] = log;
  v34.f64[0] = v116;
  v34.f64[1] = v118;
  if (case == 1)
  {
    v107 = v33;
    rect1 = v34;
    if (![(PUWallpaperPosterEditViewModel *)self isUserTransformDisabled])
    {
      [currentLayerStackViewModel contentRect];
      [currentLayerStackViewModel layoutRectForViewRect:?];
      v36.f64[0] = v35;
      v38 = v37;
      v40.f64[0] = v39;
      v42 = v120;
      v41 = v121;
      v43.f64[0] = v120;
      v43.f64[1] = v121;
      v44.f64[0] = v122;
      v44.f64[1] = v123;
      v45 = vaddq_f64(rect1, v44);
      v46 = vaddq_f64(v107, v43);
      v105 = v36.f64[0];
      v106 = v47;
      v36.f64[1] = v47;
      v103 = v40.f64[0];
      v104 = v38;
      v40.f64[1] = v38;
      v48 = vaddq_f64(v36, v40);
      v49 = vbslq_s8(vcgtq_f64(v48, v45), v45, v48);
      v50 = vbslq_s8(vcgtq_f64(v48, v46), v46, v48);
      v51 = vaddq_f64(rect1, vsubq_f64(vbslq_s8(vcgtq_f64(v49, v36), v49, v36), v45));
      v52 = vaddq_f64(v107, vsubq_f64(vbslq_s8(vcgtq_f64(v50, v36), v50, v36), v46));
      v53 = vbslq_s8(vcgtq_f64(v48, v51), v51, v48);
      v54 = vbslq_s8(vcgtq_f64(v48, v52), v52, v48);
      rect1 = vbslq_s8(vcgtq_f64(v53, v36), v53, v36);
      v55 = vbslq_s8(vcgtq_f64(v54, v36), v54, v36);
      v56 = v55.i64[1];
      *&v54.f64[0] = v55.i64[1];
      v107 = v55;
      v49.f64[0] = v109;
      v50.f64[0] = log;
      v57 = v121;
      v40.f64[0] = v120;
      if (!CGRectEqualToRect(*(&v42 - 3), *(&v40 - 24)))
      {
        v58 = PLWallpaperGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&log, *&v109, *&v121, *&v120];
          v100 = MEMORY[0x1E696AEC0];
          v102 = v59;
          loga = v58;
          v110 = v59;
          v101 = [[v100 alloc] initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v56, *&v107.f64[0], *&v121, *&v120];
          v60 = objc_alloc(MEMORY[0x1E696AEC0]);

          v61 = [v60 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v106, *&v105, *&v104, *&v103];
          *buf = 138543874;
          v130 = v102;
          v131 = 2114;
          v132 = v101;
          v133 = 2114;
          v134 = v61;
          _os_log_impl(&dword_1B36F3000, loga, OS_LOG_TYPE_DEFAULT, "Constrained portraitReframeVisibleFrame: %{public}@ -> %{public}@ contentRect:%{public}@", buf, 0x20u);

          v58 = loga;
        }
      }

      v136.origin.x = rect1.f64[1];
      v136.origin.y = rect1.f64[0];
      v136.size.height = v122;
      v136.size.width = v123;
      v137.origin.y = v116;
      v137.origin.x = v118;
      v137.size.width = v123;
      v137.size.height = v122;
      if (!CGRectEqualToRect(v136, v137))
      {
        v62 = PLWallpaperGetLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          logb = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v118, *&v116, *&v123, *&v122];
          v111 = MEMORY[0x1E696AEC0];
          v119 = v62;
          v117 = logb;
          v112 = [[v111 alloc] initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&rect1.f64[1], *&rect1.f64[0], *&v123, *&v122];
          v63 = objc_alloc(MEMORY[0x1E696AEC0]);

          v64 = [v63 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v106, *&v105, *&v104, *&v103];
          *buf = 138543874;
          v130 = logb;
          v131 = 2114;
          v132 = v112;
          v133 = 2114;
          v134 = v64;
          _os_log_impl(&dword_1B36F3000, v119, OS_LOG_TYPE_DEFAULT, "Constrained landscapeReframeVisibleFrame: %{public}@ -> %{public}@ contentRect:%{public}@", buf, 0x20u);

          v62 = v119;
        }
      }
    }

    v33 = v107;
    v34 = rect1;
  }

  if (orientation == 2)
  {
    v65 = v122;
  }

  else
  {
    v65 = v120;
  }

  if (orientation == 2)
  {
    v66 = v123;
  }

  else
  {
    v66 = v121;
  }

  if (orientation == 2)
  {
    v67 = v34.f64[0];
  }

  else
  {
    v67 = v33.f64[0];
  }

  if (orientation == 2)
  {
    v68 = v34.f64[1];
  }

  else
  {
    v68 = v33.f64[1];
  }

  if (orientation == 2)
  {
    v69 = v120;
  }

  else
  {
    v69 = v122;
  }

  if (orientation == 2)
  {
    v70 = v121;
  }

  else
  {
    v70 = v123;
  }

  if (orientation == 2)
  {
    v71 = v33.f64[0];
  }

  else
  {
    v71 = v34.f64[0];
  }

  if (orientation == 2)
  {
    v72 = v33.f64[1];
  }

  else
  {
    v72 = v34.f64[1];
  }

  v73 = v14[2](v14, v125);
  if (v73)
  {
    [(PUWallpaperPosterEditViewModel *)self normalizedVisibleFrame];
  }

  else
  {
    v74 = *MEMORY[0x1E695F058];
    v75 = *(MEMORY[0x1E695F058] + 8);
    v76 = *(MEMORY[0x1E695F058] + 16);
    v77 = *(MEMORY[0x1E695F058] + 24);
  }

  if (orientation == 2)
  {
    [(PUWallpaperPosterEditViewModel *)self setReframeStateRestorationLandscapeNormalizedVisibleFrame:v74, v75, v76, v77];
    if (!v73)
    {
      goto LABEL_58;
    }
  }

  else
  {
    [(PUWallpaperPosterEditViewModel *)self setReframeStateRestorationPortraitNormalizedVisibleFrame:v74, v75, v76, v77];
    if (!v73)
    {
      goto LABEL_58;
    }
  }

  [currentLayerStackViewModel imageSize];
  v81 = 0.0;
  v82 = 0.0;
  if (v79 != 0.0)
  {
    v68 = v68 / v79;
    v82 = v66 / v79;
  }

  if (v80 != 0.0)
  {
    v67 = v67 / v80;
    v81 = v65 / v80;
  }

  [(PUWallpaperPosterEditViewModel *)self setNormalizedVisibleFrameAnimated:v68, *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v81 + v67), v82];
LABEL_58:
  v83 = v124;
  if (v124)
  {
    v84 = v14[2](v14, v124);
    if (v84)
    {
      layout = [v124 layout];
      [layout normalizedVisibleFrame];
      PXRectFlippedVertically();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;
    }

    else
    {
      v87 = *MEMORY[0x1E695F058];
      v89 = *(MEMORY[0x1E695F058] + 8);
      v91 = *(MEMORY[0x1E695F058] + 16);
      v93 = *(MEMORY[0x1E695F058] + 24);
    }

    if (orientation == 2)
    {
      [(PUWallpaperPosterEditViewModel *)self setReframeStateRestorationPortraitNormalizedVisibleFrame:v87, v89, v91, v93];
    }

    else
    {
      [(PUWallpaperPosterEditViewModel *)self setReframeStateRestorationLandscapeNormalizedVisibleFrame:v87, v89, v91, v93];
    }

    v83 = v124;
    if (v84)
    {
      layout2 = [v124 layout];
      [layout2 imageSize];
      v97 = 0.0;
      v98 = 0.0;
      if (v95 != 0.0)
      {
        v72 = v72 / v95;
        v98 = v70 / v95;
      }

      if (v96 != 0.0)
      {
        v71 = v71 / v96;
        v97 = v69 / v96;
      }

      v99 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v97 + v71);
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __94__PUWallpaperPosterEditViewModel_reframeIfNeededNormalizedBounds_layout_useCase_forceReframe___block_invoke_74;
      v126[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
      *&v126[4] = v72;
      *&v126[5] = v99;
      *&v126[6] = v98;
      *&v126[7] = v97;
      [currentLayerStackViewModel performChanges:v126];
LABEL_71:
      v83 = v124;
    }
  }
}

uint64_t __94__PUWallpaperPosterEditViewModel_reframeIfNeededNormalizedBounds_layout_useCase_forceReframe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 layout];
  v5 = [v4 orientation];

  if (*(a1 + 80))
  {
    goto LABEL_2;
  }

  if (v5 != 2)
  {
    if (v5 != 1 || ([*(a1 + 32) userHasAdjustedPortraitVisibleFrame] & 1) != 0)
    {
      goto LABEL_8;
    }

LABEL_2:
    v6 = 1;
    goto LABEL_15;
  }

  if (![*(a1 + 32) userHasAdjustedLandscapeVisibleFrame])
  {
    goto LABEL_2;
  }

LABEL_8:
  v7 = [v3 layout];
  [v7 imageSize];
  PXRectWithSize();

  if ([v3 spatialPhotoEnabled] && objc_msgSend(v3, "spatialPhotoBackfillIncludesHeadroom"))
  {
    v8 = [v3 layout];
    [v8 extendedImageSize];
    PXRectWithSize();
  }

  PXRectFlippedVertically();
  v9 = [v3 layout];
  [v9 visibleFrame];

  NUPixelRectFromCGRect();
  NUPixelRectFromCGRect();
  NUPixelRectToCGRect();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  NUPixelRectToCGRect();
  v30.origin.x = v18;
  v30.origin.y = v19;
  v30.size.width = v20;
  v30.size.height = v21;
  v29.origin.x = v11;
  v29.origin.y = v13;
  v29.size.width = v15;
  v29.size.height = v17;
  v22 = CGRectContainsRect(v29, v30);
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) normalizedVisibleFrame];
    v31.origin.x = v23;
    v31.origin.y = v24;
    v31.size.width = v25;
    v31.size.height = v26;
    v27 = !CGRectContainsRect(*(a1 + 40), v31);
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  v6 = !v22 || v27;
LABEL_15:

  return v6 & 1;
}

- (void)applyReframeIfNeededForUseCase:(int64_t)case
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  segmentationItem = [currentLayerStackViewModel segmentationItem];

  if (case == 1)
  {
    [segmentationItem spatialPhotoNormalizedBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    originalLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self originalLayerStackViewModel];
    compoundLayerStack = [originalLayerStackViewModel compoundLayerStack];
    layout = [compoundLayerStack layout];
    [(PUWallpaperPosterEditViewModel *)self reframeIfNeededNormalizedBounds:layout layout:1 useCase:0 forceReframe:v16, v18, v20, v22];
  }

  else
  {
    if (case)
    {
      goto LABEL_6;
    }

    [segmentationItem settlingEffectNormalizedBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    originalLayerStackViewModel = [segmentationItem settlingEffectLayout];
    [(PUWallpaperPosterEditViewModel *)self reframeIfNeededNormalizedBounds:originalLayerStackViewModel layout:0 useCase:0 forceReframe:v7, v9, v11, v13];
  }

LABEL_6:
}

- (void)setNormalizedVisibleFrameAnimated:(CGRect)animated
{
  height = animated.size.height;
  width = animated.size.width;
  y = animated.origin.y;
  x = animated.origin.x;
  p_normalizedVisibleFrame = &self->_normalizedVisibleFrame;
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    p_normalizedVisibleFrame->origin.x = x;
    p_normalizedVisibleFrame->origin.y = y;
    p_normalizedVisibleFrame->size.width = width;
    p_normalizedVisibleFrame->size.height = height;
    [(PUWallpaperPosterEditViewModel *)self _invalidateVisibleFrameCrossesHeadroomBoundary];
    [(PUWallpaperPosterEditViewModel *)self signalChange:8];
    currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__PUWallpaperPosterEditViewModel_setNormalizedVisibleFrameAnimated___block_invoke;
    v10[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    *&v10[4] = x;
    *&v10[5] = y;
    *&v10[6] = width;
    *&v10[7] = height;
    [currentLayerStackViewModel performChanges:v10];
  }
}

- (void)setNormalizedVisibleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_normalizedVisibleFrame = &self->_normalizedVisibleFrame;
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    p_normalizedVisibleFrame->origin.x = x;
    p_normalizedVisibleFrame->origin.y = y;
    p_normalizedVisibleFrame->size.width = width;
    p_normalizedVisibleFrame->size.height = height;
    [(PUWallpaperPosterEditViewModel *)self _invalidateNormalizedVisibleFrame];
    [(PUWallpaperPosterEditViewModel *)self _invalidateVisibleFrameCrossesHeadroomBoundary];

    [(PUWallpaperPosterEditViewModel *)self signalChange:8];
  }
}

- (void)setActiveLayerStackViewModels:(id)models
{
  modelsCopy = models;
  activeLayerStackViewModels = self->_activeLayerStackViewModels;
  if (activeLayerStackViewModels != modelsCopy)
  {
    v8 = modelsCopy;
    activeLayerStackViewModels = [(NSSet *)activeLayerStackViewModels isEqual:modelsCopy];
    modelsCopy = v8;
    if ((activeLayerStackViewModels & 1) == 0)
    {
      v6 = [(NSSet *)v8 copy];
      v7 = self->_activeLayerStackViewModels;
      self->_activeLayerStackViewModels = v6;

      modelsCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](activeLayerStackViewModels, modelsCopy);
}

- (void)setVisibleLayerStackViewModels:(id)models
{
  modelsCopy = models;
  visibleLayerStackViewModels = self->_visibleLayerStackViewModels;
  if (visibleLayerStackViewModels != modelsCopy)
  {
    v8 = modelsCopy;
    visibleLayerStackViewModels = [visibleLayerStackViewModels isEqual:modelsCopy];
    modelsCopy = v8;
    if ((visibleLayerStackViewModels & 1) == 0)
    {
      [(NSArray *)self->_visibleLayerStackViewModels enumerateObjectsUsingBlock:&__block_literal_global_70];
      v6 = [v8 copy];
      v7 = self->_visibleLayerStackViewModels;
      self->_visibleLayerStackViewModels = v6;

      visibleLayerStackViewModels = [(PUWallpaperPosterEditViewModel *)self signalChange:4];
      modelsCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](visibleLayerStackViewModels, modelsCopy);
}

- (void)scrollToPosition:(id *)position
{
  p_scrollPosition = &self->_scrollPosition;
  firstStyle = self->_scrollPosition.firstStyle;
  if (firstStyle != position->var0 || (self->_scrollPosition.secondStyleMixFactor == position->var1 ? (v7 = firstStyle == position->var2) : (v7 = 0), !v7))
  {
    currentStyleKinds = [(PUWallpaperPosterEditViewModel *)self currentStyleKinds];
    v8 = position->var0;
    v9 = position->var2;
    if (v9)
    {
      v10 = [currentStyleKinds indexOfObject:v8];
      if ([currentStyleKinds indexOfObject:v9] < v10)
      {
        v11 = 1.0 - position->var1;
        position->var0 = v9;
        position->var1 = v11;
        position->var2 = v8;
      }
    }

    v12 = *&position->var0;
    p_scrollPosition->secondStyle = position->var2;
    *&p_scrollPosition->firstStyle = v12;
    [(PUWallpaperPosterEditViewModel *)self signalChange:256];
    [(PUWallpaperPosterEditViewModel *)self _invalidateActiveLayerStackViewModels];
    [(PUWallpaperPosterEditViewModel *)self _invalidateVisibleLayerStackViewModels];
    [(PUWallpaperPosterEditViewModel *)self _invalidateCurrentLayerStackViewModel];
    [(PUWallpaperPosterEditViewModel *)self _invalidatePresentingSingleStyle];
  }
}

- (void)setIsUserPanningOrZooming:(BOOL)zooming
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_isUserPanningOrZooming != zooming)
  {
    self->_isUserPanningOrZooming = zooming;
    if (zooming)
    {
      [(PUWallpaperPosterEditViewModel *)self noteUserAdjustedVisibleFrame];
    }

    [(PUWallpaperPosterEditViewModel *)self _invalidateVisibleFrameCrossesHeadroomBoundary];
    [(PUWallpaperPosterEditViewModel *)self signalChange:2];
    if (!self->_isUserPanningOrZooming)
    {
      currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
      allValues = [layerStackViewModelsByStyleKind allValues];

      obj = allValues;
      v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          v10 = 0;
          do
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v18 + 1) + 8 * v10);
            if (v11 != currentLayerStackViewModel)
            {
              v17[0] = MEMORY[0x1E69E9820];
              v17[1] = 3221225472;
              v17[2] = __60__PUWallpaperPosterEditViewModel_setIsUserPanningOrZooming___block_invoke;
              v17[3] = &unk_1E7B80328;
              v17[4] = self;
              [v11 performChanges:v17];
              viewModelUpdatersByStyleKind = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
              style = [v11 style];
              kind = [style kind];
              v15 = [viewModelUpdatersByStyleKind objectForKeyedSubscript:kind];

              [v15 renderOffscreenModelAfterVisibleFrameChange:v11 highPriority:{-[NSSet containsObject:](self->_activeLayerStackViewModels, "containsObject:", v11)}];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }
    }
  }
}

void __60__PUWallpaperPosterEditViewModel_setIsUserPanningOrZooming___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 normalizedVisibleFrame];
  [v3 setNormalizedVisibleFrame:?];
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  if (self->_deviceOrientation != orientation)
  {
    self->_deviceOrientation = orientation;
    [(PUWallpaperPosterEditViewModel *)self _updateAvailableLayerStackViewModelsContainerGeometry];
  }
}

- (id)availableLayerStackViewModels
{
  currentStyleKinds = [(PUWallpaperPosterEditViewModel *)self currentStyleKinds];
  v3 = PXMap();

  return v3;
}

- (void)setCurrentLayerStackViewModel:(id)model
{
  v15 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = self->_currentLayerStackViewModel;
  v7 = v6;
  if (v6 == modelCopy)
  {
  }

  else
  {
    v8 = [(PUParallaxLayerStackViewModel *)v6 isEqual:modelCopy];

    if ((v8 & 1) == 0)
    {
      currentLayerStackViewModel = self->_currentLayerStackViewModel;
      objc_storeStrong(&self->_currentLayerStackViewModel, model);
      v10 = PLWallpaperGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        style = [(PUParallaxLayerStackViewModel *)modelCopy style];
        kind = [style kind];
        v13 = 138412290;
        v14 = kind;
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_INFO, "currentLayerStackViewModel:%@", &v13, 0xCu);
      }

      [(PUWallpaperPosterEditViewModel *)self signalChange:1];
      if (currentLayerStackViewModel)
      {
        [(PUWallpaperPosterEditViewModel *)self _invalidateOffscreenStylesPreheat];
      }
    }
  }
}

- (BOOL)headroomLayoutCanApplyHeadroom
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  headroomLayoutCanApplyHeadroom = [currentLayerStackViewModel headroomLayoutCanApplyHeadroom];

  return headroomLayoutCanApplyHeadroom;
}

- (BOOL)headroomLayoutUsesHeadroomArea
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  headroomLayoutUsesHeadroomArea = [currentLayerStackViewModel headroomLayoutUsesHeadroomArea];

  return headroomLayoutUsesHeadroomArea;
}

- (BOOL)canApplyHeadroom
{
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  canApplyHeadroom = [currentLayerStackViewModel canApplyHeadroom];

  return canApplyHeadroom;
}

- (PUParallaxLayerStackViewModelUpdater)currentLayerStackViewModelUpdater
{
  viewModelUpdatersByStyleKind = self->_viewModelUpdatersByStyleKind;
  currentLayerStackViewModel = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel];
  style = [currentLayerStackViewModel style];
  kind = [style kind];
  v6 = [(NSMutableDictionary *)viewModelUpdatersByStyleKind objectForKeyedSubscript:kind];

  return v6;
}

- (void)shutdownWithTimeout:(double)timeout
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF00] now];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  viewModelUpdatersByStyleKind = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
  allValues = [viewModelUpdatersByStyleKind allValues];

  v7 = [allValues countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v24 + 1) + 8 * v10++) cancelPendingRenders];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  viewModelUpdatersByStyleKind2 = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
  allValues2 = [viewModelUpdatersByStyleKind2 allValues];

  v13 = [allValues2 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(allValues2);
        }

        [*(*(&v20 + 1) + 8 * v16++) notifyWhenInFlightRendersComplete:&__block_literal_global_66];
      }

      while (v14 != v16);
      v14 = [allValues2 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v14);
  }

  v17 = [MEMORY[0x1E695DF00] now];
  v18 = PLWallpaperGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    [v17 timeIntervalSinceDate:v4];
    *buf = 134217984;
    v29 = v19;
    _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_INFO, "Editor canceled render requests in %0.3f s", buf, 0xCu);
  }
}

void __54__PUWallpaperPosterEditViewModel_shutdownWithTimeout___block_invoke()
{
  v0 = PLWallpaperGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B36F3000, v0, OS_LOG_TYPE_DEBUG, "Inflight renders complete after canceling", v1, 2u);
  }
}

- (double)currentClockAreaLuminanceForStyleKind:(id)kind
{
  v21 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  v5 = *MEMORY[0x1E69C0AD0];
  v6 = [(NSMutableDictionary *)self->_layerStackViewModelsByStyleKind objectForKeyedSubscript:kindCopy];
  currentLayerStack = [v6 currentLayerStack];
  v8 = currentLayerStack;
  if (currentLayerStack)
  {
    [currentLayerStack clockAreaLuminance];
    v10 = v9;
    if (v9 != v5)
    {
      goto LABEL_9;
    }

    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = kindCopy;
      v12 = "LuminanceForLook: Layer stack for look %@ has unknown clockAreaLuminance";
LABEL_7:
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
    }
  }

  else
  {
    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = kindCopy;
      v12 = "LuminanceForLook: Can't find layer stack for look %@";
      goto LABEL_7;
    }
  }

  v10 = v5;
LABEL_9:
  v13 = PLWallpaperGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = kindCopy;
    v17 = 2048;
    v18 = v10;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEBUG, "LuminanceForLook: luminance for %@ is %.2f, viewModel %@", &v15, 0x20u);
  }

  return v10;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PUWallpaperPosterEditViewModel;
  [(PUWallpaperPosterEditViewModel *)&v4 didPerformChanges];
  updater = [(PUWallpaperPosterEditViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUWallpaperPosterEditViewModel;
  [(PUWallpaperPosterEditViewModel *)&v3 performChanges:changes];
}

- (PUWallpaperPosterEditViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditViewModel.m" lineNumber:194 description:{@"%s is not available as initializer", "-[PUWallpaperPosterEditViewModel init]"}];

  abort();
}

- (void)_initScrollPositionWithViewModel:(id)model
{
  style = [model style];
  kind = [style kind];
  v6 = kind;
  v7 = *MEMORY[0x1E69C0B28];
  if (kind)
  {
    v7 = kind;
  }

  v8 = v7;

  p_scrollPosition = &self->_scrollPosition;
  v10 = *MEMORY[0x1E69C0B38];

  p_scrollPosition->firstStyle = v8;
  p_scrollPosition->secondStyleMixFactor = 0.0;
  p_scrollPosition->secondStyle = v10;
}

- (void)_createViewModelsWithInitialViewModel:(id)model isUserTransformDisabled:(BOOL)disabled
{
  modelCopy = model;
  v7 = [[PUParallaxLayerStackViewModelUpdater alloc] initWithSegmentationItem:self->_segmentationItem];
  availableStyles = [(PUWallpaperPosterEditViewModel *)self availableStyles];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PUWallpaperPosterEditViewModel__createViewModelsWithInitialViewModel_isUserTransformDisabled___block_invoke;
  v20[3] = &unk_1E7B79D50;
  v9 = modelCopy;
  v21 = v9;
  v10 = [availableStyles indexOfObjectPassingTest:v20];

  availableStyles2 = [(PUWallpaperPosterEditViewModel *)self availableStyles];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PUWallpaperPosterEditViewModel__createViewModelsWithInitialViewModel_isUserTransformDisabled___block_invoke_2;
  v14[3] = &unk_1E7B77E70;
  v15 = v9;
  v16 = v7;
  selfCopy = self;
  v18 = v10;
  disabledCopy = disabled;
  v12 = v7;
  v13 = v9;
  [availableStyles2 enumerateObjectsUsingBlock:v14];
}

uint64_t __96__PUWallpaperPosterEditViewModel__createViewModelsWithInitialViewModel_isUserTransformDisabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) style];
  v5 = [v4 kind];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __96__PUWallpaperPosterEditViewModel__createViewModelsWithInitialViewModel_isUserTransformDisabled___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 kind];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) style];
  v8 = [v7 kind];
  v9 = [v5 isEqualToString:v8];

  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = v10;
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = [v10 copy];
    v12 = [*(a1 + 40) copy];
    v13 = MEMORY[0x1E69BDEE0];
    v14 = [*(*(a1 + 48) + 112) defaultStyleOfKind:v5];
    v15 = [v13 styleWithBakedStyle:v14];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96__PUWallpaperPosterEditViewModel__createViewModelsWithInitialViewModel_isUserTransformDisabled___block_invoke_3;
    v21[3] = &unk_1E7B80328;
    v22 = v15;
    v16 = v15;
    [v11 performChanges:v21];
  }

  if (a3 - v6 >= 0)
  {
    v17 = a3 - v6;
  }

  else
  {
    v17 = v6 - a3;
  }

  v18 = [*(a1 + 48) layerStackViewModelsByStyleKind];
  [v18 setObject:v11 forKeyedSubscript:v5];

  v19 = [*(a1 + 48) viewModelUpdatersByStyleKind];
  [v19 setObject:v12 forKeyedSubscript:v5];

  if (v17 < 3)
  {
    v20 = 1;
  }

  else
  {
    v20 = v9;
  }

  [v12 renderModelAfterStyleInitialization:v11 isUserTransformDisabled:*(a1 + 64) isOnscreen:v9 highPriority:v20];
  [v11 registerChangeObserver:*(a1 + 48) context:"LayerStackViewModelObservationContext"];
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  v11 = [(PUWallpaperPosterEditViewModel *)self currentLayerStackViewModel:settings];
  viewModelUpdatersByStyleKind = [(PUWallpaperPosterEditViewModel *)self viewModelUpdatersByStyleKind];
  style = [v11 style];
  kind = [style kind];
  v8 = [viewModelUpdatersByStyleKind objectForKeyedSubscript:kind];

  layerStackViewModelsByStyleKind = [(PUWallpaperPosterEditViewModel *)self layerStackViewModelsByStyleKind];
  allValues = [layerStackViewModelsByStyleKind allValues];
  [v8 renderOnscreenModelAfterVisibleFrameChange:v11 recalculateLayoutProperties:1 allViewModels:allValues];
}

- (void)dealloc
{
  PXUnregisterPreferencesObserver();
  v3.receiver = self;
  v3.super_class = PUWallpaperPosterEditViewModel;
  [(PUWallpaperPosterEditViewModel *)&v3 dealloc];
}

- (PUWallpaperPosterEditViewModel)initWithInitialLayerStackViewModel:(id)model availableStyles:(id)styles environmentIsBackdrop:(BOOL)backdrop isUserTransformDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  modelCopy = model;
  stylesCopy = styles;
  v56.receiver = self;
  v56.super_class = PUWallpaperPosterEditViewModel;
  v13 = [(PUWallpaperPosterEditViewModel *)&v56 init];
  v14 = v13;
  if (v13)
  {
    v13->_backdropEnvironment = backdrop;
    v13->_isUserTransformDisabled = disabledCopy;
    segmentationItem = [modelCopy segmentationItem];
    segmentationItem = v14->_segmentationItem;
    v14->_segmentationItem = segmentationItem;

    v14->_deviceOrientation = [modelCopy deviceOrientation];
    style = [modelCopy style];
    v18 = style;
    if (style)
    {
      v51 = MEMORY[0x1E69E9820];
      v52 = 3221225472;
      v53 = __131__PUWallpaperPosterEditViewModel_initWithInitialLayerStackViewModel_availableStyles_environmentIsBackdrop_isUserTransformDisabled___block_invoke;
      v54 = &unk_1E7B79D78;
      v6 = &v55;
      v55 = style;
      v19 = PXExists();
    }

    else
    {
      v19 = 1;
    }

    v20 = [stylesCopy copy];
    availableStyles = v14->_availableStyles;
    v14->_availableStyles = v20;

    if ((v19 & 1) == 0)
    {
      v22 = v14->_availableStyles;
      [v18 bakedStyle];
      v24 = v23 = v6;
      v25 = [(NSArray *)v22 arrayByAddingObject:v24];
      v26 = v14->_availableStyles;
      v14->_availableStyles = v25;

      v6 = v23;
    }

    v27 = PXMap();
    currentStyles = v14->_currentStyles;
    v14->_currentStyles = v27;

    [modelCopy normalizedVisibleFrame];
    v14->_normalizedVisibleFrame.origin.x = v29;
    v14->_normalizedVisibleFrame.origin.y = v30;
    v14->_normalizedVisibleFrame.size.width = v31;
    v14->_normalizedVisibleFrame.size.height = v32;
    if (backdrop)
    {
      depthEnabled = 0;
    }

    else
    {
      depthEnabled = [modelCopy depthEnabled];
    }

    v14->_depthEnabled = depthEnabled;
    v14->_parallaxDisabled = [modelCopy parallaxDisabled];
    if (backdrop)
    {
      spatialPhotoEnabled = 0;
      v14->_settlingEffectEnabled = 0;
    }

    else
    {
      v14->_settlingEffectEnabled = [modelCopy settlingEffectEnabled];
      spatialPhotoEnabled = [modelCopy spatialPhotoEnabled];
    }

    v14->_spatialPhotoEnabled = spatialPhotoEnabled;
    [(PUWallpaperPosterEditViewModel *)v14 _initScrollPositionWithViewModel:modelCopy];
    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    layerStackViewModelsByStyleKind = v14->_layerStackViewModelsByStyleKind;
    v14->_layerStackViewModelsByStyleKind = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewModelUpdatersByStyleKind = v14->_viewModelUpdatersByStyleKind;
    v14->_viewModelUpdatersByStyleKind = v37;

    [(PUWallpaperPosterEditViewModel *)v14 _createViewModelsWithInitialViewModel:modelCopy isUserTransformDisabled:disabledCopy];
    v39 = objc_alloc_init(MEMORY[0x1E69C4588]);
    headroomVisibilityAmountAnimator = v14->_headroomVisibilityAmountAnimator;
    v14->_headroomVisibilityAmountAnimator = v39;

    [(PXNumberAnimator *)v14->_headroomVisibilityAmountAnimator registerChangeObserver:v14 context:"HeadroomVisibilityAmountAnimatorObservationContext"];
    v41 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v14 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v14->_updater;
    v14->_updater = v41;

    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateActiveLayerStackViewModels];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateCurrentStyles];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateVisibleLayerStackViewModels];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updatePresentingSingleStyle];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateCurrentLayerStackViewModel];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateOffscreenStylesPreheat];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateAvailableLayerStackViewModelsContainerGeometry];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updatePropertiesFromCurrentLayerStackViewModel];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateAvailableLayerStackViewModelsProperties];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateNormalizedVisibleFrame];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateDepthEnabled];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateSpatialPhotoEnabled];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateVisibleFrameCrossesHeadroomBoundary];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateDesiredHeadroomVisibilityAmount];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updatePreviewThumbnail];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateAdaptiveTimeFrame];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateAvailableLayerStackViewModelsDefaultLayouts];
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __131__PUWallpaperPosterEditViewModel_initWithInitialLayerStackViewModel_availableStyles_environmentIsBackdrop_isUserTransformDisabled___block_invoke_3;
    v49 = &unk_1E7B78288;
    v43 = v14;
    v50 = v43;
    [(PUWallpaperPosterEditViewModel *)v43 performChanges:&v46];
    v44 = [PUPosterHeadroomSettings sharedInstance:v46];
    [v44 addDeferredKeyPathObserver:v43];

    PXRegisterPreferencesObserver();
    if (v18)
    {
    }
  }

  return v14;
}

uint64_t __131__PUWallpaperPosterEditViewModel_initWithInitialLayerStackViewModel_availableStyles_environmentIsBackdrop_isUserTransformDisabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) kind];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __131__PUWallpaperPosterEditViewModel_initWithInitialLayerStackViewModel_availableStyles_environmentIsBackdrop_isUserTransformDisabled___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _invalidateActiveLayerStackViewModels];
  [*(a1 + 32) _invalidateCurrentStyles];
  [*(a1 + 32) _invalidateVisibleLayerStackViewModels];
  [*(a1 + 32) _invalidatePresentingSingleStyle];
  [*(a1 + 32) _invalidateCurrentLayerStackViewModel];
  [*(a1 + 32) _invalidateAvailableLayerStackViewModelsProperties];
  [*(a1 + 32) _invalidateVisibleFrameCrossesHeadroomBoundary];
  [*(a1 + 32) _invalidatePreviewThumbnail];
  v2 = *(a1 + 32);

  return [v2 _updateAdaptiveTimeFrame];
}

@end