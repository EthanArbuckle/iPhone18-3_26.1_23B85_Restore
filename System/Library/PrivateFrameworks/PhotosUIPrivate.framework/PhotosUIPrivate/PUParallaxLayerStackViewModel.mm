@interface PUParallaxLayerStackViewModel
+ (unint64_t)_changeDescriptorBetweenOldStyle:(id)a3 newStyle:(id)a4;
- (BOOL)canApplyHeadroom;
- (BOOL)canApplyParallax;
- (BOOL)canCreateSettlingEffectLayerView;
- (BOOL)canEnableDepthEffect;
- (BOOL)canEnableSettlingEffect;
- (BOOL)canEnableSpatialPhoto;
- (BOOL)depthEnabled;
- (BOOL)depthEnabledInAnyOrientation;
- (BOOL)hasEnoughRoomForParallax;
- (BOOL)hasMatte;
- (BOOL)hasUserAdjustedTitleHeightOffset;
- (BOOL)headroomLayoutCanApplyHeadroom;
- (BOOL)headroomLayoutUsesHeadroomArea;
- (BOOL)mainLayersArePruned;
- (BOOL)parallaxDisabled;
- (BOOL)representsPureStyle;
- (BOOL)settlingEffectEnabled;
- (BOOL)spatialPhotoEnabled;
- (BOOL)spatialPhotoFailedUnexpectedly;
- (BOOL)userAdjustedVisibleFrame;
- (CGAffineTransform)adaptiveLayoutTransform;
- (CGPoint)parallaxVector;
- (CGRect)_calculateNormalizedAdaptiveTimeRectForOrientation:(int64_t)a3 containerFrame:(CGRect)a4 configuredSalientContentRectangle:(CGRect)a5;
- (CGRect)_viewRectForLayoutRect:(CGRect)a3;
- (CGRect)configuredSalientContentRectangle;
- (CGRect)containerFrame;
- (CGRect)contentRect;
- (CGRect)currentNormalizedVisibleFrame;
- (CGRect)extendedImageRect;
- (CGRect)inactiveFrame;
- (CGRect)landscapeVisibleFrame;
- (CGRect)layoutRectForViewRect:(CGRect)a3;
- (CGRect)normalizedVisibleFrame;
- (CGRect)originalImageRect;
- (CGRect)portraitVisibleFrame;
- (CGRect)salientContentFrame;
- (CGRect)settlingEffectBounds;
- (CGRect)spatialPhotoBounds;
- (CGRect)spatialPhotoExtendedBounds;
- (CGRect)visibleFrame;
- (CGSize)imageSize;
- (NSString)clockLayerOrder;
- (NSString)debugDescription;
- (NSString)spatialPhotoFailuresDiagnosticDescription;
- (PFWallpaperCompoundLayerStack)compoundLayerStack;
- (PUParallaxLayerStackViewModel)init;
- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)a3 compoundLayerStack:(id)a4 style:(id)a5 deviceOrientation:(int64_t)a6 allowedBehaviors:(unint64_t)a7;
- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)a3 initialStyle:(id)a4 compoundLayerStack:(id)a5 deviceOrientation:(int64_t)a6 allowedBehaviors:(unint64_t)a7;
- (UIEdgeInsets)containerInsets;
- (double)clockAreaLuminance;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)environment;
- (unint64_t)clockIntersection;
- (void)_invalidateAdditionalViewTitleHeight;
- (void)_invalidateClockAppearsAboveForeground;
- (void)_invalidateCurrentLayerStack;
- (void)_invalidateCurrentLayout;
- (void)_invalidateCurrentLayoutProperties;
- (void)_invalidateCurrentNormalizedVisibleRect;
- (void)_invalidateDebugHUDRepresentation;
- (void)_invalidateDesiredHeadroomVisibilityAmount;
- (void)_invalidateEffectiveDefaultLayouts;
- (void)_invalidateHeadroomVisibilityAmount;
- (void)_invalidateInitialPortraitLayout;
- (void)_invalidateLayoutConfiguration;
- (void)_invalidateLegibilityVignetteVisible;
- (void)_invalidateOrientation;
- (void)_invalidateVisibleFrameCrossesHeadroomBoundary;
- (void)_invalidateVisibleFrameWithContainerFrame;
- (void)_signalLayerStackPropertiesChange:(unint64_t)a3;
- (void)_signalStylePropertiesChange:(unint64_t)a3;
- (void)_updateAdditionalViewTitleHeight;
- (void)_updateClockAppearsAboveForeground;
- (void)_updateCurrentLayerStack;
- (void)_updateCurrentLayerStackProperties:(id)a3 changeDescriptor:(unint64_t)a4;
- (void)_updateCurrentLayout;
- (void)_updateCurrentLayoutProperties;
- (void)_updateCurrentNormalizedVisibleRect;
- (void)_updateDebugHUDRepresentation;
- (void)_updateDesiredHeadroomVisibilityAmount;
- (void)_updateEffectiveDefaultLayouts;
- (void)_updateHeadroomVisibilityAmount;
- (void)_updateInitialPortraitLayout;
- (void)_updateLayerStackPropertiesForAllOrientations:(id)a3 changeDescriptor:(unint64_t)a4;
- (void)_updateLayoutConfiguration;
- (void)_updateLegibilityVignetteVisible;
- (void)_updateOrientation;
- (void)_updateVisibleFrameCrossesHeadroomBoundary;
- (void)_updateVisibleFrameWithContainerFrame;
- (void)_updateVisibleFrameWithContainerFrameSetFirstTime:(BOOL)a3;
- (void)_updateVisibleFrameWithContainerFrameUsingConfiguration;
- (void)didEndChangeHandling;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)performPrivateChanges:(id)a3;
- (void)reportSpatialPhotoGenerationError:(id)a3;
- (void)setAdaptiveLayoutTransform:(CGAffineTransform *)a3;
- (void)setAdditionalViewTitleHeight:(double)a3;
- (void)setAnimationCurve:(id)a3;
- (void)setAnimationDuration:(double)a3;
- (void)setAppliesDepthToAllOrientations:(BOOL)a3;
- (void)setBacklightLuminance:(int64_t)a3;
- (void)setClockAppearsAboveForeground:(BOOL)a3;
- (void)setClockAreaLuminance:(double)a3;
- (void)setClockIntersection:(unint64_t)a3;
- (void)setClockLayerOrder:(id)a3;
- (void)setConfiguredSalientContentRectangle:(CGRect)a3;
- (void)setContainerFrame:(CGRect)a3;
- (void)setContainerInsets:(UIEdgeInsets)a3;
- (void)setCurrentLayerStack:(id)a3;
- (void)setCurrentLayout:(id)a3;
- (void)setCurrentNormalizedVisibleFrame:(CGRect)a3;
- (void)setDebugHUDRepresentation:(id)a3;
- (void)setDefaultLayout:(id)a3;
- (void)setDefaultSpatialLayout:(id)a3;
- (void)setDepthEnabled:(BOOL)a3;
- (void)setDesiredHeadroomVisibilityAmount:(double)a3;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setEffectiveDefaultLayout:(id)a3;
- (void)setEffectiveHeadroomLayout:(id)a3;
- (void)setHeadroomLayout:(id)a3;
- (void)setHeadroomSpatialLayout:(id)a3;
- (void)setHeadroomState:(int64_t)a3;
- (void)setHeadroomVisibilityAmount:(double)a3;
- (void)setLandscapeLayerStack:(id)a3;
- (void)setLandscapeOverrideTitleHeight:(double)a3;
- (void)setLandscapeUserAdjustedTitleHeightOffset:(double)a3;
- (void)setLayoutOrder:(int64_t)a3;
- (void)setLegibilityVignetteEnabled:(BOOL)a3;
- (void)setLegibilityVignetteVisible:(BOOL)a3;
- (void)setLoadingSpatialPhoto:(BOOL)a3;
- (void)setNormalizedVisibleFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)setNormalizedVisibleFrameForInactiveOrientation:(CGRect)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOverrideTitleHeight:(double)a3;
- (void)setParallaxDisabled:(BOOL)a3;
- (void)setParallaxVector:(CGPoint)a3;
- (void)setPortraitLayerStack:(id)a3;
- (void)setSalientContentFrame:(CGRect)a3;
- (void)setSettlingEffectEnabled:(BOOL)a3;
- (void)setShouldAlwaysUseSpatialPhotoForGallery:(BOOL)a3;
- (void)setShouldLoopSettlingEffectForGallery:(BOOL)a3;
- (void)setShowsDebugHUD:(BOOL)a3;
- (void)setSpatialPhotoEnabled:(BOOL)a3;
- (void)setSpatialPhotoLoadingProgress:(double)a3;
- (void)setStyle:(id)a3;
- (void)setTargetAdditionalViewTitleHeight:(double)a3;
- (void)setUserAdjustedTitleHeightOffset:(double)a3;
- (void)setUserAdjustedVisibleFrame:(BOOL)a3;
- (void)setVisibilityAmount:(double)a3;
- (void)setVisibilityEffects:(int64_t)a3;
- (void)setVisibleFrame:(CGRect)a3;
- (void)setVisibleFrameCrossesHeadroomBoundary:(BOOL)a3;
- (void)updateBackfillLayersFromLayerStack:(id)a3;
- (void)updateLayerStack:(id)a3;
- (void)updateLayoutPropertiesWithLayerStack:(id)a3;
- (void)updatePhotoEffectsWithLoadedSegmentationItem:(id)a3 layerStack:(id)a4;
- (void)updateSpatialPhotoWithLayerStack:(id)a3 layout:(id)a4;
- (void)updateSpatialPhotoWithLayout:(id)a3;
@end

@implementation PUParallaxLayerStackViewModel

- (CGRect)landscapeVisibleFrame
{
  x = self->_landscapeVisibleFrame.origin.x;
  y = self->_landscapeVisibleFrame.origin.y;
  width = self->_landscapeVisibleFrame.size.width;
  height = self->_landscapeVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)portraitVisibleFrame
{
  x = self->_portraitVisibleFrame.origin.x;
  y = self->_portraitVisibleFrame.origin.y;
  width = self->_portraitVisibleFrame.size.width;
  height = self->_portraitVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentNormalizedVisibleFrame
{
  x = self->_currentNormalizedVisibleFrame.origin.x;
  y = self->_currentNormalizedVisibleFrame.origin.y;
  width = self->_currentNormalizedVisibleFrame.size.width;
  height = self->_currentNormalizedVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)adaptiveLayoutTransform
{
  v3 = *&self[14].tx;
  *&retstr->a = *&self[14].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[15].a;
  return self;
}

- (CGPoint)parallaxVector
{
  x = self->_parallaxVector.x;
  y = self->_parallaxVector.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)salientContentFrame
{
  x = self->_salientContentFrame.origin.x;
  y = self->_salientContentFrame.origin.y;
  width = self->_salientContentFrame.size.width;
  height = self->_salientContentFrame.size.height;
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

- (UIEdgeInsets)containerInsets
{
  top = self->_containerInsets.top;
  left = self->_containerInsets.left;
  bottom = self->_containerInsets.bottom;
  right = self->_containerInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 2) != 0 && AdditionalViewTitleHeightAnimatorObservationContext_49142 == a5)
  {
    v7[5] = v5;
    v7[6] = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__PUParallaxLayerStackViewModel_observable_didChange_context___block_invoke;
    v7[3] = &unk_1E7B80328;
    v7[4] = self;
    [(PUParallaxLayerStackViewModel *)self performChanges:v7];
  }
}

- (void)_signalStylePropertiesChange:(unint64_t)a3
{
  [(PUParallaxLayerStackViewModel *)self setStylePropertiesChange:[(PUParallaxLayerStackViewModel *)self stylePropertiesChange]| a3];

  [(PUParallaxLayerStackViewModel *)self signalChange:16];
}

- (void)_signalLayerStackPropertiesChange:(unint64_t)a3
{
  [(PUParallaxLayerStackViewModel *)self setCurrentLayerStackPropertiesChange:[(PUParallaxLayerStackViewModel *)self currentLayerStackPropertiesChange]| a3];

  [(PUParallaxLayerStackViewModel *)self signalChange:4];
}

- (void)_updateLayerStackPropertiesForAllOrientations:(id)a3 changeDescriptor:(unint64_t)a4
{
  v7 = a3;
  v8 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  v9 = (*(a3 + 2))(v7, v8);
  [(PUParallaxLayerStackViewModel *)self setPortraitLayerStack:v9];

  v10 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
  v11 = (*(a3 + 2))(v7, v10);

  [(PUParallaxLayerStackViewModel *)self setLandscapeLayerStack:v11];
  v12 = [(PUParallaxLayerStackViewModel *)self orientation];
  if (v12 == 2)
  {
    currentLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v15 = currentLayerStack;
    if (!currentLayerStack)
    {
      v15 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    }

    objc_storeStrong(&self->_currentLayerStack, v15);
    if (!currentLayerStack)
    {
    }
  }

  else
  {
    if (v12 != 1)
    {
      goto LABEL_9;
    }

    v13 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    currentLayerStack = self->_currentLayerStack;
    self->_currentLayerStack = v13;
  }

LABEL_9:
  [(PUParallaxLayerStackViewModel *)self _signalLayerStackPropertiesChange:a4];

  [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
}

- (void)_updateCurrentLayerStackProperties:(id)a3 changeDescriptor:(unint64_t)a4
{
  v6 = (*(a3 + 2))(a3, self->_currentLayerStack);
  v7 = v6;
  if (self->_currentLayerStack != v6)
  {
    v9 = v6;
    objc_storeStrong(&self->_currentLayerStack, v6);
    v8 = [(PUParallaxLayerStackViewModel *)self orientation];
    if (v8 == 2)
    {
      [(PUParallaxLayerStackViewModel *)self setLandscapeLayerStack:v9];
    }

    else if (v8 == 1)
    {
      [(PUParallaxLayerStackViewModel *)self setPortraitLayerStack:v9];
    }

    [(PUParallaxLayerStackViewModel *)self _signalLayerStackPropertiesChange:a4];
    v6 = [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
    v7 = v9;
    if ((a4 & 2) != 0)
    {
      v6 = [(PUParallaxLayerStackViewModel *)self _invalidateHeadroomVisibilityAmount];
      v7 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)setDebugHUDRepresentation:(id)a3
{
  v4 = a3;
  debugHUDRepresentation = self->_debugHUDRepresentation;
  if (debugHUDRepresentation != v4)
  {
    v8 = v4;
    debugHUDRepresentation = [debugHUDRepresentation isEqual:v4];
    v4 = v8;
    if ((debugHUDRepresentation & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_debugHUDRepresentation;
      self->_debugHUDRepresentation = v6;

      debugHUDRepresentation = [(PUParallaxLayerStackViewModel *)self signalChange:0x40000];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](debugHUDRepresentation, v4);
}

- (void)_updateDebugHUDRepresentation
{
  v63[2] = *MEMORY[0x1E69E9840];
  if ([(PUParallaxLayerStackViewModel *)self showsDebugHUD])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v62[0] = @"Device Orientation";
    v4 = [(PUParallaxLayerStackViewModel *)self deviceOrientation];
    v5 = @"unknown";
    if ((v4 - 1) <= 3)
    {
      v5 = off_1E7B740D0[v4 - 1];
    }

    v6 = v5;
    v62[1] = @"Layout Orientation";
    v63[0] = v6;
    v7 = [(PUParallaxLayerStackViewModel *)self orientation];
    v8 = @"portrait";
    if (v7 != 1)
    {
      v8 = @"unknown";
    }

    if (v7 == 2)
    {
      v8 = @"landscape";
    }

    v9 = v8;
    v63[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
    [v3 addEntriesFromDictionary:v10];

    if ([(PUParallaxLayerStackViewModel *)self environment]== 2)
    {
      v60 = @"Style";
      v11 = [(PUParallaxLayerStackViewModel *)self style];
      v12 = [v11 debugDescription];
      v13 = v12;
      v14 = @"none";
      if (v12)
      {
        v14 = v12;
      }

      v61 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      [v3 addEntriesFromDictionary:v15];
    }

    v16 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
    v17 = [v16 layers];
    v18 = [v17 count];

    if (v18)
    {
      v58 = @"Layers";
      v19 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
      v20 = [v19 layers];
      v21 = PXMap();
      v22 = [v21 sortedArrayUsingSelector:sel_compare_];
      v23 = [v22 componentsJoinedByString:{@", "}];
      v59 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      [v3 addEntriesFromDictionary:v24];
    }

    v56[0] = @"overrideTitleHeight";
    v25 = MEMORY[0x1E696AEC0];
    [(PUParallaxLayerStackViewModel *)self overrideTitleHeight];
    v27 = v26;
    [(PUParallaxLayerStackViewModel *)self containerFrame];
    v55 = [v25 stringWithFormat:@"%.2f", v27 * CGRectGetHeight(v64)];
    v57[0] = v55;
    v56[1] = @"landscapeOverrideTitleHeight";
    v28 = MEMORY[0x1E696AEC0];
    [(PUParallaxLayerStackViewModel *)self landscapeOverrideTitleHeight];
    v30 = v29;
    [(PUParallaxLayerStackViewModel *)self containerFrame];
    v54 = [v28 stringWithFormat:@"%.2f", v30 * CGRectGetHeight(v65)];
    v57[1] = v54;
    v56[2] = @"userAdjustedTitleHeightOffset";
    v31 = MEMORY[0x1E696AEC0];
    [(PUParallaxLayerStackViewModel *)self userAdjustedTitleHeightOffset];
    v33 = v32;
    [(PUParallaxLayerStackViewModel *)self containerFrame];
    v53 = [v31 stringWithFormat:@"%.2f", v33 * CGRectGetHeight(v66)];
    v57[2] = v53;
    v56[3] = @"landscapeUserAdjustedTitleHeightOffset";
    v34 = MEMORY[0x1E696AEC0];
    [(PUParallaxLayerStackViewModel *)self landscapeUserAdjustedTitleHeightOffset];
    v36 = v35;
    [(PUParallaxLayerStackViewModel *)self containerFrame];
    v52 = [v34 stringWithFormat:@"%.2f", v36 * CGRectGetHeight(v67)];
    v57[3] = v52;
    v56[4] = @"Title Height +";
    v37 = MEMORY[0x1E696AEC0];
    [(PUParallaxLayerStackViewModel *)self additionalViewTitleHeight];
    v51 = [v37 stringWithFormat:@"%.2f", v38];
    v57[4] = v51;
    v56[5] = @"Clock Shift";
    v39 = MEMORY[0x1E696AEC0];
    v40 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [v40 maxClockShift];
    v42 = [v39 stringWithFormat:@"%.2f", v41];
    v57[5] = v42;
    v56[6] = @"Layout Variant";
    v43 = MEMORY[0x1E696AEC0];
    v44 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    v45 = [v43 stringWithFormat:@"%ld", objc_msgSend(v44, "layoutVariant")];
    v57[6] = v45;
    v56[7] = @"Visible Rect";
    v46 = MEMORY[0x1E696AEC0];
    v47 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [v47 visibleFrame];
    v48 = NSStringFromCGRect(v68);
    v49 = [v46 stringWithFormat:@"%@", v48];
    v57[7] = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:8];
    [v3 addEntriesFromDictionary:v50];

    [(PUParallaxLayerStackViewModel *)self setDebugHUDRepresentation:v3];
  }
}

- (void)_invalidateDebugHUDRepresentation
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDebugHUDRepresentation];
}

- (void)setHeadroomVisibilityAmount:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_headroomVisibilityAmount = a3;

    [(PUParallaxLayerStackViewModel *)self signalChange:0x100000];
  }
}

- (void)setHeadroomState:(int64_t)a3
{
  if (self->_headroomState != a3)
  {
    self->_headroomState = a3;
  }
}

- (void)_updateHeadroomVisibilityAmount
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v4 = [v3 mayContainBakedHeadroom];

  v5 = [(PUParallaxLayerStackViewModel *)self representsPureStyle];
  v6 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v7 = [v6 layout];
  v8 = [v7 canApplyHeadroom];

  v9 = 0.0;
  if ((v4 & 1) == 0 && v8 && !v5)
  {
    [(PUParallaxLayerStackViewModel *)self desiredHeadroomVisibilityAmount];
  }

  [(PUParallaxLayerStackViewModel *)self setHeadroomVisibilityAmount:v9];
}

- (void)_invalidateHeadroomVisibilityAmount
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHeadroomVisibilityAmount];
}

- (void)setDesiredHeadroomVisibilityAmount:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_desiredHeadroomVisibilityAmount = a3;

    [(PUParallaxLayerStackViewModel *)self _invalidateHeadroomVisibilityAmount];
  }
}

- (void)_updateDesiredHeadroomVisibilityAmount
{
  v3 = [(PUParallaxLayerStackViewModel *)self visibleFrameCrossesHeadroomBoundary];
  v4 = 0.0;
  if (v3)
  {
    v4 = 1.0;
  }

  [(PUParallaxLayerStackViewModel *)self setDesiredHeadroomVisibilityAmount:v4];
}

- (void)_invalidateDesiredHeadroomVisibilityAmount
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDesiredHeadroomVisibilityAmount];
}

- (void)setVisibleFrameCrossesHeadroomBoundary:(BOOL)a3
{
  if (self->_visibleFrameCrossesHeadroomBoundary != a3)
  {
    self->_visibleFrameCrossesHeadroomBoundary = a3;
    [(PUParallaxLayerStackViewModel *)self _invalidateDesiredHeadroomVisibilityAmount];
  }
}

- (void)_updateVisibleFrameCrossesHeadroomBoundary
{
  if ([(PUParallaxLayerStackViewModel *)self environment]== 1)
  {
    [(PUParallaxLayerStackViewModel *)self normalizedVisibleFrame];
    v3 = CGRectGetMinY(v5) < 0.0;

    [(PUParallaxLayerStackViewModel *)self setVisibleFrameCrossesHeadroomBoundary:v3];
  }
}

- (void)_invalidateVisibleFrameCrossesHeadroomBoundary
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateVisibleFrameCrossesHeadroomBoundary];
}

- (void)setLegibilityVignetteVisible:(BOOL)a3
{
  if (self->_legibilityVignetteVisible != a3)
  {
    self->_legibilityVignetteVisible = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x100000000];
  }
}

- (void)_updateLegibilityVignetteVisible
{
  if ([(PUParallaxLayerStackViewModel *)self legibilityVignetteEnabled])
  {
    v3 = [(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 1;
  }

  else
  {
    v3 = 0;
  }

  [(PUParallaxLayerStackViewModel *)self setLegibilityVignetteVisible:v3];
}

- (void)_invalidateLegibilityVignetteVisible
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateLegibilityVignetteVisible];
}

- (void)_updateLayoutConfiguration
{
  v3 = objc_alloc(MEMORY[0x1E69C0938]);
  v10 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  v4 = [v10 layout];
  v5 = [v4 configuration];
  v6 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
  v7 = [v6 layout];
  v8 = [v7 configuration];
  v9 = [v3 initWithPortraitConfiguration:v5 landscapeConfiguration:v8];
  [(PUParallaxLayerStackViewModel *)self setLayoutConfiguration:v9];
}

- (void)_invalidateLayoutConfiguration
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateLayoutConfiguration];
}

- (PFWallpaperCompoundLayerStack)compoundLayerStack
{
  v3 = objc_alloc(MEMORY[0x1E69C0940]);
  v4 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  v5 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
  v6 = [v3 initWithPortraitLayerStack:v4 landscapeLayerStack:v5];

  return v6;
}

- (void)setClockAppearsAboveForeground:(BOOL)a3
{
  if (self->_clockAppearsAboveForeground != a3)
  {
    self->_clockAppearsAboveForeground = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:4096];
  }
}

- (void)_updateClockAppearsAboveForeground
{
  v3 = [(PUParallaxLayerStackViewModel *)self clockLayerOrder];

  if (v3)
  {
    v5 = [(PUParallaxLayerStackViewModel *)self clockLayerOrder];
    v4 = ([v5 isEqualToString:*MEMORY[0x1E69C0BA0]] & 1) != 0 || !-[PUParallaxLayerStackViewModel depthEnabled](self, "depthEnabled") || -[PUParallaxLayerStackViewModel settlingEffectEnabled](self, "settlingEffectEnabled");
    [(PUParallaxLayerStackViewModel *)self setClockAppearsAboveForeground:v4];
  }
}

- (void)_invalidateClockAppearsAboveForeground
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateClockAppearsAboveForeground];
}

- (void)_updateInitialPortraitLayout
{
  v8 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v8 normalizedVisibleFrame];
  PXSizeGetAspectRatio();
  v4 = v3;
  v5 = [(PUParallaxLayerStackViewModel *)self allowedBehaviors];
  v6 = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
  if (v6)
  {
  }

  else if (v4 <= 1.0 || (v5 & 8) != 0)
  {
    [(PUParallaxLayerStackViewModel *)self setInitialPortraitLayout:v8];
  }
}

- (void)_invalidateInitialPortraitLayout
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInitialPortraitLayout];
}

- (void)setSalientContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_salientContentFrame = &self->_salientContentFrame;
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    p_salientContentFrame->origin.x = x;
    p_salientContentFrame->origin.y = y;
    p_salientContentFrame->size.width = width;
    p_salientContentFrame->size.height = height;

    [(PUParallaxLayerStackViewModel *)self signalChange:0x80000000];
  }
}

- (void)setAdditionalViewTitleHeight:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_additionalViewTitleHeight = a3;
    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];

    [(PUParallaxLayerStackViewModel *)self signalChange:0x800000];
  }
}

- (void)_updateAdditionalViewTitleHeight
{
  v3 = [(PUParallaxLayerStackViewModel *)self additionalViewTitleHeightAnimator];
  [v3 presentationValue];
  [(PUParallaxLayerStackViewModel *)self setAdditionalViewTitleHeight:?];
}

- (void)_invalidateAdditionalViewTitleHeight
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAdditionalViewTitleHeight];
}

- (void)setTargetAdditionalViewTitleHeight:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    targetAdditionalViewTitleHeight = self->_targetAdditionalViewTitleHeight;
    self->_targetAdditionalViewTitleHeight = a3;
    if ([(PUParallaxLayerStackViewModel *)self environment]== 2 && ([(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 0x100) != 0 && [(PUParallaxLayerStackViewModel *)self userAdjustedVisibleFrame])
    {
      v6 = [(PUParallaxLayerStackViewModel *)self additionalViewTitleHeightAnimator];
      if (([v6 isAnimating] & 1) == 0)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __68__PUParallaxLayerStackViewModel_setTargetAdditionalViewTitleHeight___block_invoke;
        v9[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
        *&v9[4] = targetAdditionalViewTitleHeight;
        [v6 performChangesWithoutAnimation:v9];
      }

      v7 = [(PUParallaxLayerStackViewModel *)self additionalViewTitleHeightAnimator];
      [v7 approximateVelocity];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __68__PUParallaxLayerStackViewModel_setTargetAdditionalViewTitleHeight___block_invoke_2;
      v8[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
      *&v8[4] = a3;
      [v6 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v8 changes:?];
    }

    else
    {

      [(PUParallaxLayerStackViewModel *)self setAdditionalViewTitleHeight:a3];
    }
  }
}

- (void)_updateCurrentLayoutProperties
{
  v59 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  v3 = [v59 layoutVariant];
  v4 = [(PUParallaxLayerStackViewModel *)self deviceOrientation];
  [(PUParallaxLayerStackViewModel *)self setSupportsAdaptiveLayout:v3 == 2];
  [v59 salientContentFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v57 = v11;
  [v59 visibleFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([v59 layoutVariant] == 2)
  {
    [v59 adaptiveVisibleFrame];
    PXRectWithSizeAlignedToRectEdges();
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  v24 = v6 - v13;
  v25 = 0.0;
  v26 = 0.0;
  if (v17 != 0.0)
  {
    v24 = v24 / v17;
    v26 = v10 / v17;
  }

  v27 = v4 - 3;
  v28 = v8 - v15;
  if (v19 != 0.0)
  {
    v28 = v28 / v19;
    v25 = v57 / v19;
  }

  v29 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v25 + v28);
  [(PUParallaxLayerStackViewModel *)self containerFrame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (v27 <= 1)
  {
    PXRectTransposed();
    v31 = v38;
    v33 = v39;
    v35 = v40;
    v37 = v41;
  }

  [(PUParallaxLayerStackViewModel *)self setSalientContentFrame:v31 + v24 * v35, v33 + v29 * v37, v26 * v35, v25 * v37 + 40.0];
  [(PUParallaxLayerStackViewModel *)self containerFrame];
  Height = CGRectGetHeight(v61);
  v43 = 0.0;
  v44 = 0.0;
  if (v3 == 2)
  {
    v55 = Height;
    [v59 visibleFrame];
    v56 = v31;
    v58 = v33;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    [v59 adaptiveVisibleFrame];
    v53 = CGRectGetHeight(v62);
    v63.origin.x = v46;
    v63.origin.y = v48;
    v63.size.width = v50;
    v63.size.height = v52;
    v54 = v53 - CGRectGetHeight(v63);
    v64.origin.x = v46;
    v64.origin.y = v48;
    v64.size.width = v50;
    v31 = v56;
    v33 = v58;
    v64.size.height = v52;
    v44 = v55 * (v54 / CGRectGetHeight(v64));
  }

  [(PUParallaxLayerStackViewModel *)self setAdaptiveLayoutAvailableContentHeight:v44];
  [v59 layoutVariant];
  if (PFPosterIsLayoutVariantAdaptive())
  {
    [(PUParallaxLayerStackViewModel *)self deviceOrientation];
    v43 = PUPosterAdditionalViewTitleHeight(v59, v31, v33, v35, v37);
  }

  [(PUParallaxLayerStackViewModel *)self setTargetAdditionalViewTitleHeight:v43];
}

- (void)_invalidateCurrentLayoutProperties
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentLayoutProperties];
}

- (void)setLandscapeUserAdjustedTitleHeightOffset:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_landscapeUserAdjustedTitleHeightOffset = a3;

    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
  }
}

- (void)setUserAdjustedTitleHeightOffset:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_userAdjustedTitleHeightOffset = a3;

    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
  }
}

- (BOOL)hasUserAdjustedTitleHeightOffset
{
  if (([(PUParallaxLayerStackViewModel *)self deviceOrientation]- 1) > 1)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    [(PUParallaxLayerStackViewModel *)self overrideTitleHeight];
    v3 = PXFloatApproximatelyEqualToFloat() ^ 1;
  }

  if (([(PUParallaxLayerStackViewModel *)self deviceOrientation]- 3) > 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    [(PUParallaxLayerStackViewModel *)self landscapeOverrideTitleHeight];
    v4 = PXFloatApproximatelyEqualToFloat() ^ 1;
  }

  return (v3 | v4) & 1;
}

- (void)setLandscapeOverrideTitleHeight:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_landscapeOverrideTitleHeight = a3;

    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
  }
}

- (void)setOverrideTitleHeight:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_overrideTitleHeight = a3;

    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
  }
}

- (void)setCurrentNormalizedVisibleFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_currentNormalizedVisibleFrame = &self->_currentNormalizedVisibleFrame;
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    p_currentNormalizedVisibleFrame->origin.x = x;
    p_currentNormalizedVisibleFrame->origin.y = y;
    p_currentNormalizedVisibleFrame->size.width = width;
    p_currentNormalizedVisibleFrame->size.height = height;
    [(PUParallaxLayerStackViewModel *)self _invalidateVisibleFrameCrossesHeadroomBoundary];

    [(PUParallaxLayerStackViewModel *)self signalChange:0x4000];
  }
}

- (void)_updateCurrentNormalizedVisibleRect
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v3 normalizedVisibleFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  if (CGRectIsEmpty(v31))
  {
    v12 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [v12 imageSize];
    PXRectWithOriginAndSize();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [v21 deviceResolution];
    PXSizeGetAspectRatio();
    PXRectWithAspectRatioFittingRect();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v5 = v23 - v14;
    v11 = 0.0;
    v9 = 0.0;
    if (v18 != 0.0)
    {
      v5 = v5 / v18;
      v9 = v27 / v18;
    }

    v7 = v25 - v16;
    if (v20 != 0.0)
    {
      v7 = v7 / v20;
      v11 = v29 / v20;
    }
  }

  [(PUParallaxLayerStackViewModel *)self setCurrentNormalizedVisibleFrame:v5, v7, v9, v11];
}

- (void)_invalidateCurrentNormalizedVisibleRect
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentNormalizedVisibleRect];
}

- (CGRect)_calculateNormalizedAdaptiveTimeRectForOrientation:(int64_t)a3 containerFrame:(CGRect)a4 configuredSalientContentRectangle:(CGRect)a5
{
  height = a5.size.height;
  y = a5.origin.y;
  v7 = a4.size.height;
  width = a4.size.width;
  memset(&v38, 0, sizeof(v38));
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      v10 = 0;
      v33 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
      goto LABEL_7;
    }

    x = a5.origin.x;
    v34 = a5.size.width;
    v10 = [MEMORY[0x1E69C0790] timeRectCollectionLandscape];
    v11 = 170.0;
    v12 = 4;
    v33 = v7;
    v13 = width;
  }

  else
  {
    x = a5.origin.x;
    v34 = a5.size.width;
    v10 = [MEMORY[0x1E69C0790] timeRectCollectionPortrait];
    v11 = 0.0;
    v12 = 1;
    v33 = width;
    v13 = v7;
  }

  PUPosterAdditionalTransformForDeviceOrientationAndContainerFrame(v12, &v38);
  a5.size.width = v34;
  a5.origin.x = x;
LABEL_7:
  v37 = v38;
  v39.origin.x = a5.origin.x;
  v39.origin.y = y;
  v39.size.width = a5.size.width;
  v39.size.height = height;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v35 = v13;
  v14 = v11 + v13 - v40.size.height;
  [v10 minTimeRect];
  v37 = v38;
  v42 = CGRectApplyAffineTransform(v41, &v37);
  [v10 rectForPointSpaceHeight:v14 - v42.origin.y];
  v15 = v43.origin.x;
  v16 = v43.origin.y;
  v17 = v43.size.width;
  v18 = v43.size.height;
  v37 = v38;
  v44 = CGRectApplyAffineTransform(v43, &v37);
  v19 = v44.origin.x;
  v20 = v44.origin.y;
  v21 = v44.size.width;
  v22 = v44.size.height;
  v23 = [(PUParallaxLayerStackViewManager *)self->_viewManager debugInfoViewIfLoaded];
  *v36 = v19;
  *&v36[1] = v20;
  *&v36[2] = v21;
  *&v36[3] = v22;
  v24 = [MEMORY[0x1E696B098] valueWithBytes:v36 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v23 setDebugTimeRect:v24];

  v25 = 0.0;
  v26 = 0.0;
  if (v33 != 0.0)
  {
    v15 = v15 / v33;
    v26 = v17 / v33;
  }

  if (v35 != 0.0)
  {
    v16 = v16 / v35;
    v25 = v18 / v35;
  }

  v27 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v25 + v16);

  v28 = v15;
  v29 = v27;
  v30 = v26;
  v31 = v25;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)setConfiguredSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_configuredSalientContentRectangle = &self->_configuredSalientContentRectangle;
  if (!CGRectEqualToRect(self->_configuredSalientContentRectangle, a3))
  {
    p_configuredSalientContentRectangle->origin.x = x;
    p_configuredSalientContentRectangle->origin.y = y;
    p_configuredSalientContentRectangle->size.width = width;
    p_configuredSalientContentRectangle->size.height = height;
    v9 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    if (v9)
    {
      v10 = v9;
      v11 = [(PUParallaxLayerStackViewModel *)self didSetContainerFrame];

      if (v11)
      {
        v12 = [(PUParallaxLayerStackViewModel *)self orientation];
        [(PUParallaxLayerStackViewModel *)self containerFrame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [(PUParallaxLayerStackViewModel *)self configuredSalientContentRectangle];
        [(PUParallaxLayerStackViewModel *)self _calculateNormalizedAdaptiveTimeRectForOrientation:v12 containerFrame:v14 configuredSalientContentRectangle:v16, v18, v20, v21, v22, v23, v24];
        v25 = v30.origin.x;
        v26 = v30.origin.y;
        v27 = v30.size.width;
        v28 = v30.size.height;
        if (!CGRectIsNull(v30))
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __70__PUParallaxLayerStackViewModel_setConfiguredSalientContentRectangle___block_invoke;
          v29[3] = &__block_descriptor_64_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
          *&v29[4] = v25;
          *&v29[5] = v26;
          *&v29[6] = v27;
          *&v29[7] = v28;
          [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v29 changeDescriptor:0];
        }
      }
    }

    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
    [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
  }
}

id __70__PUParallaxLayerStackViewModel_setConfiguredSalientContentRectangle___block_invoke(double *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 layout];
    [v4 visibleFrame];
    v7 = v5 + a1[4] * v6;
    v10 = v8 + a1[5] * v9;
    v11 = v6 * a1[6];
    v12 = v9 * a1[7];

    v13 = [v3 layout];
    v14 = [v13 layoutByUpdatingAdaptiveTimeFrame:{v7, v10, v11, v12}];

    v15 = [v3 layerStackByUpdatingLayout:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setCurrentLayout:(id)a3
{
  v8 = a3;
  v5 = self->_currentLayout;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFPosterOrientedLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentLayout, a3);
      [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
      [(PUParallaxLayerStackViewModel *)self _invalidateInitialPortraitLayout];
      [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayoutProperties];
      [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
    }
  }
}

- (void)_updateCurrentLayout
{
  v4 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v3 = [v4 layout];
  [(PUParallaxLayerStackViewModel *)self setCurrentLayout:v3];
}

- (void)_invalidateCurrentLayout
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentLayout];
}

- (void)setEffectiveHeadroomLayout:(id)a3
{
  v8 = a3;
  v5 = self->_effectiveHeadroomLayout;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_effectiveHeadroomLayout, a3);
      [(PUParallaxLayerStackViewModel *)self signalChange:0x4000000];
    }
  }
}

- (void)setEffectiveDefaultLayout:(id)a3
{
  v8 = a3;
  v5 = self->_effectiveDefaultLayout;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_effectiveDefaultLayout, a3);
      [(PUParallaxLayerStackViewModel *)self signalChange:8];
    }
  }
}

- (void)_updateEffectiveDefaultLayouts
{
  if ([(PUParallaxLayerStackViewModel *)self spatialPhotoEnabled])
  {
    v3 = [(PUParallaxLayerStackViewModel *)self defaultSpatialLayout];
    [(PUParallaxLayerStackViewModel *)self setEffectiveDefaultLayout:v3];

    [(PUParallaxLayerStackViewModel *)self headroomSpatialLayout];
  }

  else
  {
    v4 = [(PUParallaxLayerStackViewModel *)self defaultLayout];
    [(PUParallaxLayerStackViewModel *)self setEffectiveDefaultLayout:v4];

    [(PUParallaxLayerStackViewModel *)self headroomLayout];
  }
  v5 = ;
  [(PUParallaxLayerStackViewModel *)self setEffectiveHeadroomLayout:v5];
}

- (void)_invalidateEffectiveDefaultLayouts
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateEffectiveDefaultLayouts];
}

- (void)setCurrentLayerStack:(id)a3
{
  v8 = a3;
  v5 = self->_currentLayerStack;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFParallaxLayerStack *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentLayerStack, a3);
      [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
      [(PUParallaxLayerStackViewModel *)self _invalidateCurrentNormalizedVisibleRect];
      [(PUParallaxLayerStackViewModel *)self _invalidateHeadroomVisibilityAmount];
      [(PUParallaxLayerStackViewModel *)self signalChange:2];
    }
  }
}

- (void)_updateCurrentLayerStack
{
  v3 = [(PUParallaxLayerStackViewModel *)self orientation];
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 2)
  {
    v5 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    }

    v8 = v7;

    v4 = v8;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    v4 = 0;
  }

  else
  {
LABEL_4:
    v4 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  }

LABEL_10:
  v9 = v4;
  [(PUParallaxLayerStackViewModel *)self setCurrentLayerStack:v4];
}

- (void)_invalidateCurrentLayerStack
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentLayerStack];
}

- (void)_updateVisibleFrameWithContainerFrame
{
  if (([(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 8) != 0)
  {

    [(PUParallaxLayerStackViewModel *)self _updateVisibleFrameWithContainerFrameUsingConfiguration];
  }

  else if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    if ([(PUParallaxLayerStackViewModel *)self needsToAdjustVisibleFrame])
    {
      [(PUParallaxLayerStackViewModel *)self containerFrame];
      if (!CGRectIsEmpty(v4))
      {

        [(PUParallaxLayerStackViewModel *)self _updateVisibleFrameWithContainerFrameSetFirstTime:0];
      }
    }
  }
}

- (void)_invalidateVisibleFrameWithContainerFrame
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateVisibleFrameWithContainerFrame];
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayerStack];
    [(PUParallaxLayerStackViewModel *)self _invalidateVisibleFrameWithContainerFrame];
    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];

    [(PUParallaxLayerStackViewModel *)self signalChange:32];
  }
}

- (void)_updateOrientation
{
  [(PUParallaxLayerStackViewModel *)self containerFrame];
  v3 = [(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 0x10;
  PXSizeGetAspectRatio();
  if (v4 > 1.0 && v3 == 0)
  {
    v6 = 2;
  }

  else if ([(PUParallaxLayerStackViewModel *)self deviceOrientation])
  {
    if (([(PUParallaxLayerStackViewModel *)self deviceOrientation]- 3) >= 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  [(PUParallaxLayerStackViewModel *)self setOrientation:v6];
}

- (void)_invalidateOrientation
{
  v2 = [(PUParallaxLayerStackViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateOrientation];
}

- (void)didEndChangeHandling
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackViewModel;
  [(PUParallaxLayerStackViewModel *)&v3 didEndChangeHandling];
  [(PUParallaxLayerStackViewModel *)self setCurrentLayerStackPropertiesChange:0];
  [(PUParallaxLayerStackViewModel *)self setStylePropertiesChange:0];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PUParallaxLayerStackViewModel;
  [(PUParallaxLayerStackViewModel *)&v4 didPerformChanges];
  v3 = [(PUParallaxLayerStackViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)performPrivateChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackViewModel;
  [(PUParallaxLayerStackViewModel *)&v3 performChanges:a3];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackViewModel;
  [(PUParallaxLayerStackViewModel *)&v3 performChanges:a3];
}

- (void)setLegibilityVignetteEnabled:(BOOL)a3
{
  if (self->_legibilityVignetteEnabled != a3)
  {
    self->_legibilityVignetteEnabled = a3;
    [(PUParallaxLayerStackViewModel *)self _invalidateLegibilityVignetteVisible];
  }
}

- (void)setAnimationCurve:(id)a3
{
  v5 = a3;
  if (self->_animationCurve != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_animationCurve, a3);
    v5 = v6;
  }
}

- (void)setAnimationDuration:(double)a3
{
  if (vabdd_f64(self->_animationDuration, a3) > 0.00000999999975)
  {
    self->_animationDuration = a3;
  }
}

- (void)setHeadroomSpatialLayout:(id)a3
{
  v8 = a3;
  v5 = self->_headroomSpatialLayout;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_headroomSpatialLayout, a3);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setDefaultSpatialLayout:(id)a3
{
  v8 = a3;
  v5 = self->_defaultSpatialLayout;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_defaultSpatialLayout, a3);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setHeadroomLayout:(id)a3
{
  v8 = a3;
  v5 = self->_headroomLayout;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_headroomLayout, a3);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setDefaultLayout:(id)a3
{
  v8 = a3;
  v5 = self->_defaultLayout;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_defaultLayout, a3);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setSpatialPhotoLoadingProgress:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_spatialPhotoLoadingProgress = a3;

    [(PUParallaxLayerStackViewModel *)self signalChange:0x10000000];
  }
}

- (void)setLoadingSpatialPhoto:(BOOL)a3
{
  if (self->_loadingSpatialPhoto != a3)
  {
    self->_loadingSpatialPhoto = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x8000000];
  }
}

- (void)reportSpatialPhotoGenerationError:(id)a3
{
  v6 = a3;
  [(PUParallaxLayerStackViewModel *)self setLoadingSpatialPhoto:0];
  v4 = [v6 domain];
  if ([v4 isEqual:*MEMORY[0x1E69C0BC8]])
  {
    v5 = [v6 code];

    if (v5 == 1002)
    {

      [(PUParallaxLayerStackViewModel *)self setDebugSpatialPhotoGenerationError:0];
      return;
    }
  }

  else
  {
  }

  [(PUParallaxLayerStackViewModel *)self setDebugSpatialPhotoGenerationError:v6];
  if (v6)
  {
    [(PUParallaxLayerStackViewModel *)self signalChange:0x2000000];
  }
}

- (void)updateLayoutPropertiesWithLayerStack:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PUParallaxLayerStackViewModel_updateLayoutPropertiesWithLayerStack___block_invoke;
  v6[3] = &unk_1E7B7A290;
  v7 = v4;
  v5 = v4;
  [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v6 changeDescriptor:2];
  [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
}

id __70__PUParallaxLayerStackViewModel_updateLayoutPropertiesWithLayerStack___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layout];
  v5 = [v3 layerStackByUpdatingLayout:v4];

  return v5;
}

- (void)updateSpatialPhotoWithLayout:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PUParallaxLayerStackViewModel_updateSpatialPhotoWithLayout___block_invoke;
    v6[3] = &unk_1E7B7A368;
    v6[4] = self;
    v7 = v4;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v6 changeDescriptor:0];
  }
}

id __62__PUParallaxLayerStackViewModel_updateSpatialPhotoWithLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) landscapeLayerStack];
  v5 = *(a1 + 40);
  if (v4 == v3)
  {
    [v5 landscapeLayout];
  }

  else
  {
    [v5 portraitLayout];
  }
  v6 = ;

  v7 = [v3 layerStackByUpdatingLayout:v6];

  return v7;
}

- (void)updateSpatialPhotoWithLayerStack:(id)a3 layout:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PUParallaxLayerStackViewModel *)self setLoadingSpatialPhoto:0];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v6 spatialPhotoBackgroundLayer];

  if (v9)
  {
    v10 = [v6 spatialPhotoBackgroundLayer];
    [v8 addObject:v10];
  }

  v11 = [v6 spatialPhotoForegroundLayer];

  if (v11)
  {
    v12 = [v6 spatialPhotoForegroundLayer];
    [v8 addObject:v12];
  }

  v13 = [v6 spatialPhotoBackgroundBackfillLayer];

  if (v13)
  {
    v14 = [v6 spatialPhotoBackgroundBackfillLayer];
    [v8 addObject:v14];
  }

  v15 = [v6 spatialPhotoForegroundBackfillLayer];

  if (v15)
  {
    v16 = [v6 spatialPhotoForegroundBackfillLayer];
    [v8 addObject:v16];
  }

  if ([v8 count])
  {
    [(PUParallaxLayerStackViewModel *)self setDebugSpatialPhotoGenerationError:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__PUParallaxLayerStackViewModel_updateSpatialPhotoWithLayerStack_layout___block_invoke;
    v17[3] = &unk_1E7B7A340;
    v17[4] = self;
    v18 = v7;
    v19 = v8;
    v20 = v6;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v17 changeDescriptor:2];
  }
}

id __73__PUParallaxLayerStackViewModel_updateSpatialPhotoWithLayerStack_layout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) landscapeLayerStack];
  v5 = *(a1 + 40);
  if (v4 == v3)
  {
    [v5 landscapeLayout];
  }

  else
  {
    [v5 portraitLayout];
  }
  v6 = ;

  v7 = *(a1 + 48);
  [*(a1 + 56) size];
  v8 = [v3 layerStackByUpdatingLayers:v7 imageSize:?];
  v9 = [v8 layerStackByUpdatingLayout:v6];

  return v9;
}

- (void)updatePhotoEffectsWithLoadedSegmentationItem:(id)a3 layerStack:(id)a4
{
  v7 = a3;
  if (self->_segmentationItem != v7)
  {
    objc_storeStrong(&self->_segmentationItem, a3);
    v8 = a4;
    v9 = [v8 settlingEffectLayer];

    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __89__PUParallaxLayerStackViewModel_updatePhotoEffectsWithLoadedSegmentationItem_layerStack___block_invoke;
      v10[3] = &unk_1E7B7A290;
      v11 = v9;
      [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v10 changeDescriptor:2];
    }
  }
}

id __89__PUParallaxLayerStackViewModel_updatePhotoEffectsWithLoadedSegmentationItem_layerStack___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v7 count:1];
  [v3 size];
  v5 = [v3 layerStackByUpdatingLayers:v4 imageSize:?];

  return v5;
}

- (void)setClockIntersection:(unint64_t)a3
{
  if ([(PUParallaxLayerStackViewModel *)self clockIntersection]!= a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__PUParallaxLayerStackViewModel_setClockIntersection___block_invoke;
    v5[3] = &__block_descriptor_40_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v5[4] = a3;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v5 changeDescriptor:0];
    [(PUParallaxLayerStackViewModel *)self signalChange:256];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
  }
}

id __54__PUParallaxLayerStackViewModel_setClockIntersection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 layout];
  v5 = [v4 layoutByUpdatingClockIntersection:*(a1 + 32)];

  v6 = [v3 layerStackByUpdatingLayout:v5];

  return v6;
}

- (unint64_t)clockIntersection
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  v3 = [v2 clockIntersection];

  return v3;
}

- (double)clockAreaLuminance
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  [v2 clockAreaLuminance];
  v4 = v3;

  return v4;
}

- (void)setClockAreaLuminance:(double)a3
{
  v5 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  [v5 clockAreaLuminance];
  v7 = vabdd_f64(a3, v6);

  if (v7 > 0.00000999999975)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PUParallaxLayerStackViewModel_setClockAreaLuminance___block_invoke;
    v8[3] = &__block_descriptor_40_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    *&v8[4] = a3;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v8 changeDescriptor:32];
  }
}

- (void)setClockLayerOrder:(id)a3
{
  v4 = a3;
  v5 = [(PUParallaxLayerStackViewModel *)self clockLayerOrder];

  if (v5 != v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__PUParallaxLayerStackViewModel_setClockLayerOrder___block_invoke;
    v6[3] = &unk_1E7B7A290;
    v7 = v4;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v6 changeDescriptor:16];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
  }
}

- (NSString)clockLayerOrder
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  v3 = [v2 clockLayerOrder];

  return v3;
}

- (void)updateBackfillLayersFromLayerStack:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PUParallaxLayerStackViewModel_updateBackfillLayersFromLayerStack___block_invoke;
  v6[3] = &unk_1E7B7A290;
  v7 = v4;
  v5 = v4;
  [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v6 changeDescriptor:2];
}

id __68__PUParallaxLayerStackViewModel_updateBackfillLayersFromLayerStack___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layers];
  [v3 size];
  v5 = [v3 layerStackByUpdatingLayers:v4 imageSize:?];

  return v5;
}

- (void)updateLayerStack:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUParallaxLayerStackViewModel_updateLayerStack___block_invoke;
  v6[3] = &unk_1E7B7A290;
  v5 = v4;
  v7 = v5;
  [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v6 changeDescriptor:2];
  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration] && -[PUParallaxLayerStackViewModel needsToAdjustVisibleFrame](self, "needsToAdjustVisibleFrame") && -[PUParallaxLayerStackViewModel orientation](self, "orientation") == 2)
  {
    [(PUParallaxLayerStackViewModel *)self setNeedsToAdjustVisibleFrame:0];
  }
}

id __50__PUParallaxLayerStackViewModel_updateLayerStack___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layers];
  [*(a1 + 32) size];
  v6 = [v4 layerStackByUpdatingLayers:v5 imageSize:?];

  return v6;
}

- (void)setShowsDebugHUD:(BOOL)a3
{
  if (self->_showsDebugHUD != a3)
  {
    self->_showsDebugHUD = a3;
    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];

    [(PUParallaxLayerStackViewModel *)self signalChange:0x80000];
  }
}

- (void)setShouldAlwaysUseSpatialPhotoForGallery:(BOOL)a3
{
  if (self->_shouldAlwaysUseSpatialPhotoForGallery != a3)
  {
    self->_shouldAlwaysUseSpatialPhotoForGallery = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x20000000];
  }
}

- (void)setShouldLoopSettlingEffectForGallery:(BOOL)a3
{
  if (self->_shouldLoopSettlingEffectForGallery != a3)
  {
    self->_shouldLoopSettlingEffectForGallery = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x200000];
  }
}

- (void)setLayoutOrder:(int64_t)a3
{
  if (self->_layoutOrder != a3)
  {
    self->_layoutOrder = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:64];
  }
}

- (void)setDeviceOrientation:(int64_t)a3
{
  if (self->_deviceOrientation != a3)
  {
    self->_deviceOrientation = a3;
    [(PUParallaxLayerStackViewModel *)self _invalidateOrientation];
    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];

    [(PUParallaxLayerStackViewModel *)self signalChange:0x20000];
  }
}

- (void)setBacklightLuminance:(int64_t)a3
{
  if (self->_backlightLuminance != a3)
  {
    self->_backlightLuminance = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:128];
  }
}

- (void)setVisibilityEffects:(int64_t)a3
{
  if (self->_visibilityEffects != a3)
  {
    self->_visibilityEffects = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x40000000];
  }
}

- (void)setVisibilityAmount:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_visibilityAmount = a3;

    [(PUParallaxLayerStackViewModel *)self signalChange:1024];
  }
}

- (void)setAdaptiveLayoutTransform:(CGAffineTransform *)a3
{
  p_adaptiveLayoutTransform = &self->_adaptiveLayoutTransform;
  v6 = *&self->_adaptiveLayoutTransform.c;
  *&t1.a = *&self->_adaptiveLayoutTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_adaptiveLayoutTransform.tx;
  v7 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v7;
  *&v10.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_adaptiveLayoutTransform->c = *&a3->c;
    *&p_adaptiveLayoutTransform->tx = v9;
    *&p_adaptiveLayoutTransform->a = v8;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x400000];
  }
}

- (void)setParallaxVector:(CGPoint)a3
{
  if (self->_parallaxVector.x != a3.x || self->_parallaxVector.y != a3.y)
  {
    self->_parallaxVector = a3;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x2000];
  }
}

- (void)_updateVisibleFrameWithContainerFrameUsingConfiguration
{
  v3 = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];

  if (v3)
  {
    v4 = PUPosterGenericCenteredTitleBounds();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PUParallaxLayerStackViewModel *)self containerFrame];
    v12 = v11;
    v14 = v13;
    if (([(PUParallaxLayerStackViewModel *)self deviceOrientation]- 3) <= 1)
    {
      PXSizeTranspose();
      v12 = v15;
      v14 = v16;
    }

    v17 = MEMORY[0x1E69C0938];
    PXSizeTranspose();
    v20 = [v17 specificConfigurationWithPortraitTitleBounds:v4 portraitScreenSize:v6 landscapeScreenSize:{v8, v10, v12, v14, v18, v19}];
    [(PUParallaxLayerStackViewModel *)self containerInsets];
    v22 = v21 / v14;
    v23 = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
    v24 = [v20 portraitConfiguration];
    v25 = [v23 layoutByUpdatingConfigurationWithSaliency:v24 normalizedTopEdgeInset:v22];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __88__PUParallaxLayerStackViewModel__updateVisibleFrameWithContainerFrameUsingConfiguration__block_invoke;
    v31[3] = &unk_1E7B7A290;
    v32 = v25;
    v26 = v25;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v31 changeDescriptor:0];
    [v26 normalizedVisibleFrame];
    self->_currentNormalizedVisibleFrame.origin.x = v27;
    self->_currentNormalizedVisibleFrame.origin.y = v28;
    self->_currentNormalizedVisibleFrame.size.width = v29;
    self->_currentNormalizedVisibleFrame.size.height = v30;
    [(PUParallaxLayerStackViewModel *)self signalChange:2];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentNormalizedVisibleRect];
  }
}

- (void)_updateVisibleFrameWithContainerFrameSetFirstTime:(BOOL)a3
{
  v3 = a3;
  if (([(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 8) == 0)
  {
    v5 = [(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 4;
    v6 = [(PUParallaxLayerStackViewModel *)self orientation];
    [(PUParallaxLayerStackViewModel *)self containerFrame];
    v7 = [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration];
    v8 = v7;
    if (v7 && [(PUParallaxLayerStackViewModel *)self needsToAdjustVisibleFrame]&& v6 == 2)
    {
      PXRectTransposed();
    }

    PXRectTransposed();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__PUParallaxLayerStackViewModel__updateVisibleFrameWithContainerFrameSetFirstTime___block_invoke;
    v18[3] = &unk_1E7B7A2D8;
    v19 = v8;
    v18[4] = self;
    v20 = v5 >> 2;
    v9 = _Block_copy(v18);
    if (v5)
    {
      v10 = [(PUParallaxLayerStackViewModel *)self initialLayerStack];

      if (v10)
      {
        v11 = [(PUParallaxLayerStackViewModel *)self initialLayerStack];
        v12 = [v11 portraitLayerStack];
        v13 = [v12 layout];
        [v13 normalizedVisibleFrame];
        self->_currentNormalizedVisibleFrame.origin.x = v14;
        self->_currentNormalizedVisibleFrame.origin.y = v15;
        self->_currentNormalizedVisibleFrame.size.width = v16;
        self->_currentNormalizedVisibleFrame.size.height = v17;
      }
    }

    else if (!v3)
    {
      goto LABEL_15;
    }

    [(PUParallaxLayerStackViewModel *)self visibleFrame];
    [(PUParallaxLayerStackViewModel *)self setPortraitVisibleFrame:?];
    [(PUParallaxLayerStackViewModel *)self portraitVisibleFrame];
    v9[2](v9);
    [(PUParallaxLayerStackViewModel *)self setLandscapeVisibleFrame:?];
LABEL_15:
    if (v6 == 2)
    {
      [(PUParallaxLayerStackViewModel *)self landscapeVisibleFrame];
    }

    else
    {
      [(PUParallaxLayerStackViewModel *)self portraitVisibleFrame];
    }

    if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      [(PUParallaxLayerStackViewModel *)self portraitVisibleFrame];
      v9[2](v9);
      [(PUParallaxLayerStackViewModel *)self setPortraitVisibleFrame:?];
      [(PUParallaxLayerStackViewModel *)self portraitVisibleFrame];
      v9[2](v9);
      [(PUParallaxLayerStackViewModel *)self setLandscapeVisibleFrame:?];
      [(PUParallaxLayerStackViewModel *)self setNeedsToAdjustVisibleFrame:1];
    }

    if ([(PUParallaxLayerStackViewModel *)self needsToAdjustVisibleFrame])
    {
      if (v6 == 2)
      {
        [(PUParallaxLayerStackViewModel *)self landscapeVisibleFrame];
      }

      else
      {
        [(PUParallaxLayerStackViewModel *)self portraitVisibleFrame];
      }

      [(PUParallaxLayerStackViewModel *)self setVisibleFrame:?];
    }

    return;
  }

  [(PUParallaxLayerStackViewModel *)self _updateVisibleFrameWithContainerFrameUsingConfiguration];
}

uint64_t __83__PUParallaxLayerStackViewModel__updateVisibleFrameWithContainerFrameSetFirstTime___block_invoke(uint64_t result, double a2, double a3, double a4, double a5, double a6)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) needsToAdjustVisibleFrame];
  }

  return result;
}

- (void)setContainerInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_containerInsets = &self->_containerInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_containerInsets->top = top;
    p_containerInsets->left = left;
    p_containerInsets->bottom = bottom;
    p_containerInsets->right = right;

    [(PUParallaxLayerStackViewModel *)self _updateVisibleFrameWithContainerFrameSetFirstTime:0];
  }
}

- (void)setContainerFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_containerFrame = &self->_containerFrame;
  if (!CGRectEqualToRect(self->_containerFrame, a3))
  {
    p_containerFrame->origin.x = x;
    p_containerFrame->origin.y = y;
    p_containerFrame->size.width = width;
    p_containerFrame->size.height = height;
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectIsEmpty(v11))
    {
      v9 = [(PUParallaxLayerStackViewModel *)self didSetContainerFrame];
      [(PUParallaxLayerStackViewModel *)self setDidSetContainerFrame:1];
      [(PUParallaxLayerStackViewModel *)self _updateVisibleFrameWithContainerFrameSetFirstTime:!v9];
    }

    [(PUParallaxLayerStackViewModel *)self _invalidateOrientation];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayoutProperties];

    [(PUParallaxLayerStackViewModel *)self signalChange:512];
  }
}

- (void)setStyle:(id)a3
{
  v9 = a3;
  v5 = self->_style;
  v6 = v5;
  if (v5 == v9)
  {
  }

  else
  {
    v7 = [(PIParallaxStyle *)v5 isEqual:v9];

    if ((v7 & 1) == 0)
    {
      v8 = [objc_opt_class() _changeDescriptorBetweenOldStyle:self->_style newStyle:v9];
      objc_storeStrong(&self->_style, a3);
      if (v8)
      {
        [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
        [(PUParallaxLayerStackViewModel *)self _invalidateHeadroomVisibilityAmount];
        [(PUParallaxLayerStackViewModel *)self _signalStylePropertiesChange:v8];
      }
    }
  }
}

- (BOOL)headroomLayoutCanApplyHeadroom
{
  v3 = [(PUParallaxLayerStackViewModel *)self effectiveHeadroomLayout];
  if (v3)
  {
    if ([(PUParallaxLayerStackViewModel *)self orientation]== 2)
    {
      [v3 landscapeLayout];
    }

    else
    {
      [v3 portraitLayout];
    }
    v5 = ;
    v4 = [v5 canApplyHeadroom];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)headroomLayoutUsesHeadroomArea
{
  v3 = [(PUParallaxLayerStackViewModel *)self effectiveHeadroomLayout];
  if (v3)
  {
    if ([(PUParallaxLayerStackViewModel *)self orientation]== 2)
    {
      [v3 landscapeLayout];
    }

    else
    {
      [v3 portraitLayout];
    }
    v5 = ;
    if ([v5 isUsingHeadroom])
    {
      v4 = 1;
    }

    else if ([(PUParallaxLayerStackViewModel *)self spatialPhotoEnabled])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
      v7 = [v6 segmentationMatte];
      v4 = v7 == 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canApplyHeadroom
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v4 = [v3 layout];
  if ([v4 canApplyHeadroom])
  {
    v5 = [(PUParallaxLayerStackViewModel *)self effectiveHeadroomLayout];
    if (v5)
    {
      v6 = [(PUParallaxLayerStackViewModel *)self effectiveDefaultLayout];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)representsPureStyle
{
  v2 = [(PUParallaxLayerStackViewModel *)self style];
  v3 = [v2 kind];

  if ([v3 isEqualToString:*MEMORY[0x1E69C0B08]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0B10]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E69C0B18]];
  }

  return v4;
}

- (BOOL)mainLayersArePruned
{
  v3 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  if ([v3 hasMainLayers])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v4 = [v5 hasMainLayers] ^ 1;
  }

  return v4;
}

- (NSString)spatialPhotoFailuresDiagnosticDescription
{
  v3 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  if ([v3 isSpatialPhotoAvailable])
  {
    [v3 spatialPhotoNormalizedBounds];
    if (CGRectIsEmpty(v11))
    {
      v4 = @"spatialPhotoNormalizedBounds is empty";
      goto LABEL_11;
    }

    v8 = [(PUParallaxLayerStackViewModel *)self debugSpatialPhotoGenerationError];

    if (v8)
    {
      v6 = [(PUParallaxLayerStackViewModel *)self debugSpatialPhotoGenerationError];
      v4 = [v6 localizedDescription];
      goto LABEL_8;
    }

    v4 = @"Unknown Error";
  }

  else
  {
    if ([v3 spatialPhotoFailedAnyGating])
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [v3 spatialPhotoGatingDiagnosticsOnlyFailures:1];
      v7 = [v6 componentsJoinedByString:{@", "}];
      v4 = [v5 stringWithFormat:@"Gating Failures: [%@]", v7];

LABEL_8:
      goto LABEL_11;
    }

    [v3 spatialPhotoStatus];
    v4 = PIPosterSpatialPhotoStatusDescription();
  }

LABEL_11:

  return v4;
}

- (BOOL)spatialPhotoFailedUnexpectedly
{
  v2 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  v3 = [v2 spatialPhotoFailedUnexpectedly];

  return v3;
}

- (BOOL)canEnableSpatialPhoto
{
  v3 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  v4 = [v3 isSpatialPhotoAvailable];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [v5 spatialPhotoNormalizedBounds];
  IsEmpty = CGRectIsEmpty(v8);

  return !IsEmpty;
}

- (BOOL)canCreateSettlingEffectLayerView
{
  if ([(PUParallaxLayerStackViewModel *)self environment]== 2 || [(PUParallaxLayerStackViewModel *)self shouldLoopSettlingEffectForGallery])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v4 isLowPowerModeEnabled] ^ 1;
  }

  return v3;
}

- (BOOL)canEnableSettlingEffect
{
  v3 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  v4 = [v3 isSettlingEffectAvailable];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [v5 settlingEffectNormalizedBounds];
  IsEmpty = CGRectIsEmpty(v8);

  return !IsEmpty;
}

- (BOOL)canEnableDepthEffect
{
  if ([(PUParallaxLayerStackViewModel *)self environment]!= 2)
  {
    return 0;
  }

  if ([(PUParallaxLayerStackViewModel *)self spatialPhotoEnabled]&& (PFPosterIsSpatialPhotoOcclusionEnabled() & 1) != 0)
  {
    return 1;
  }

  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  if ([v3 layoutVariant] == 2)
  {
    goto LABEL_7;
  }

  v4 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  if ([v4 layoutVariant] == 3)
  {

LABEL_7:
    return 1;
  }

  v6 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  v7 = [v6 layoutVariant];

  if (v7 == 4)
  {
    return 1;
  }

  if (-[PUParallaxLayerStackViewModel clockIntersection](self, "clockIntersection") != 3 && (-[PUParallaxLayerStackViewModel segmentationItem](self, "segmentationItem"), v8 = objc_claimAutoreleasedReturnValue(), [v8 segmentationMatte], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    return [(PUParallaxLayerStackViewModel *)self clockIntersection]== 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasMatte
{
  v2 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  v3 = [v2 segmentationMatte];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasEnoughRoomForParallax
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  v3 = [v2 canApplyParallax];

  return v3;
}

- (BOOL)canApplyParallax
{
  if ([(PUParallaxLayerStackViewModel *)self parallaxDisabled])
  {
    return 0;
  }

  return [(PUParallaxLayerStackViewModel *)self hasEnoughRoomForParallax];
}

- (void)setParallaxDisabled:(BOOL)a3
{
  if ([(PUParallaxLayerStackViewModel *)self parallaxDisabled]!= a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__PUParallaxLayerStackViewModel_setParallaxDisabled___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v6 = a3;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:1];
  }
}

- (BOOL)parallaxDisabled
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v3 = [v2 parallaxDisabled];

  return v3;
}

- (void)setUserAdjustedVisibleFrame:(BOOL)a3
{
  if ([(PUParallaxLayerStackViewModel *)self userAdjustedVisibleFrame]!= a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PUParallaxLayerStackViewModel_setUserAdjustedVisibleFrame___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v6 = a3;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:128];
  }
}

- (BOOL)userAdjustedVisibleFrame
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v3 = [v2 userAdjustedVisibleFrame];

  return v3;
}

- (void)setSpatialPhotoEnabled:(BOOL)a3
{
  if ([(PUParallaxLayerStackViewModel *)self spatialPhotoEnabled]!= a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PUParallaxLayerStackViewModel_setSpatialPhotoEnabled___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v6 = a3;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:64];
    [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
  }
}

- (BOOL)spatialPhotoEnabled
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v3 = [v2 spatialPhotoEnabled];

  return v3;
}

- (void)setSettlingEffectEnabled:(BOOL)a3
{
  if ([(PUParallaxLayerStackViewModel *)self settlingEffectEnabled]!= a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PUParallaxLayerStackViewModel_setSettlingEffectEnabled___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v6 = a3;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:8];
    [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
  }
}

- (BOOL)settlingEffectEnabled
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v3 = [v2 settlingEffectEnabled];

  return v3;
}

- (void)setAppliesDepthToAllOrientations:(BOOL)a3
{
  if (self->_appliesDepthToAllOrientations != a3)
  {
    self->_appliesDepthToAllOrientations = a3;
  }
}

- (void)setDepthEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PUParallaxLayerStackViewModel *)self appliesDepthToAllOrientations])
  {
    v5 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    if ([v5 depthEnabled] == v3)
    {
      v6 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
      v7 = [v6 depthEnabled];

      if (v7 == v3)
      {
        return;
      }
    }

    else
    {
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PUParallaxLayerStackViewModel_setDepthEnabled___block_invoke;
    v10[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v11 = v3;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v10 changeDescriptor:4];
  }

  else
  {
    if ([(PUParallaxLayerStackViewModel *)self depthEnabled]== v3)
    {
      return;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__PUParallaxLayerStackViewModel_setDepthEnabled___block_invoke_2;
    v8[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v9 = v3;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v8 changeDescriptor:4];
  }

  [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
}

- (BOOL)depthEnabledInAnyOrientation
{
  v3 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  if ([v3 depthEnabled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v4 = [v5 depthEnabled];
  }

  return v4;
}

- (BOOL)depthEnabled
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v3 = [v2 depthEnabled];

  return v3;
}

- (void)setLandscapeLayerStack:(id)a3
{
  v5 = a3;
  if (self->_landscapeLayerStack != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_landscapeLayerStack, a3);
    [(PUParallaxLayerStackViewModel *)self _invalidateLayoutConfiguration];
    v5 = v6;
  }
}

- (void)setPortraitLayerStack:(id)a3
{
  v5 = a3;
  if (self->_portraitLayerStack != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_portraitLayerStack, a3);
    [(PUParallaxLayerStackViewModel *)self _invalidateLayoutConfiguration];
    v5 = v6;
  }
}

- (CGRect)inactiveFrame
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v3 inactiveFrame];
  [(PUParallaxLayerStackViewModel *)self _viewRectForLayoutRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setNormalizedVisibleFrameForInactiveOrientation:(CGRect)a3
{
  PXRectFlippedVertically();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PUParallaxLayerStackViewModel *)self orientation];
  if (v12 == 2)
  {
    v13 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    v14 = &OBJC_IVAR___PUParallaxLayerStackViewModel__portraitLayerStack;
  }

  else
  {
    if (v12 != 1)
    {
      return;
    }

    v13 = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v14 = &OBJC_IVAR___PUParallaxLayerStackViewModel__landscapeLayerStack;
  }

  v20 = v13;
  v15 = [v13 layout];
  v16 = [v15 layoutByUpdatingNormalizedVisibleFrame:1 remapAdaptiveVisibleFrame:{v5, v7, v9, v11}];

  v17 = [v20 layerStackByUpdatingLayout:v16];
  v18 = *v14;
  v19 = *(&self->super.super.isa + v18);
  *(&self->super.super.isa + v18) = v17;
}

- (void)setNormalizedVisibleFrame:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  PXRectFlippedVertically();
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  p_currentNormalizedVisibleFrame = &self->_currentNormalizedVisibleFrame;
  if (vabdd_f64(v6, self->_currentNormalizedVisibleFrame.origin.x) > 0.0001 || vabdd_f64(v7, self->_currentNormalizedVisibleFrame.origin.y) > 0.0001 || vabdd_f64(v8, self->_currentNormalizedVisibleFrame.size.width) > 0.0001 || vabdd_f64(v9, self->_currentNormalizedVisibleFrame.size.height) > 0.0001)
  {
    p_currentNormalizedVisibleFrame->origin.x = v6;
    self->_currentNormalizedVisibleFrame.origin.y = v7;
    self->_currentNormalizedVisibleFrame.size.width = v8;
    self->_currentNormalizedVisibleFrame.size.height = v9;
    if (v4)
    {
      objc_initWeak(&location, self);
      v15 = [(PUParallaxLayerStackViewModel *)self viewManager];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__PUParallaxLayerStackViewModel_setNormalizedVisibleFrame_animated___block_invoke;
      v27[3] = &unk_1E7B7A268;
      objc_copyWeak(v28, &location);
      v28[1] = *&v10;
      v28[2] = *&v11;
      v28[3] = *&v12;
      v28[4] = *&v13;
      [v15 layoutViewsWithDefaultAnimations:v27];

      objc_destroyWeak(v28);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PUParallaxLayerStackViewModel *)self signalChange:0x4000];
    }

    v16 = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
    [v16 normalizedVisibleFrame];
    if (vabdd_f64(v20, p_currentNormalizedVisibleFrame->origin.x) <= 0.0001 && vabdd_f64(v17, self->_currentNormalizedVisibleFrame.origin.y) <= 0.0001 && vabdd_f64(v18, self->_currentNormalizedVisibleFrame.size.width) <= 0.0001)
    {
      v24 = vabdd_f64(v19, self->_currentNormalizedVisibleFrame.size.height);

      if (v24 <= 0.0001)
      {
        v22 = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
        if (v22)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    v21 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    v22 = [v21 layoutByUpdatingNormalizedVisibleFrame:1 remapAdaptiveVisibleFrame:{v10, v11, v12, v13}];

LABEL_13:
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__PUParallaxLayerStackViewModel_setNormalizedVisibleFrame_animated___block_invoke_3;
    v25[3] = &unk_1E7B7A290;
    v26 = v22;
    v23 = v22;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v25 changeDescriptor:0];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
  }
}

void __68__PUParallaxLayerStackViewModel_setNormalizedVisibleFrame_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained currentNormalizedVisibleFrame];
  v3 = CGRectEqualToRect(v7, *(a1 + 40));

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__PUParallaxLayerStackViewModel_setNormalizedVisibleFrame_animated___block_invoke_2;
    v5[3] = &unk_1E7B7A240;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 performChanges:v5];

    objc_destroyWeak(&v6);
  }
}

void __68__PUParallaxLayerStackViewModel_setNormalizedVisibleFrame_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalChange:0x8000];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 signalChange:0x4000];
}

- (CGRect)normalizedVisibleFrame
{
  [(PUParallaxLayerStackViewModel *)self currentNormalizedVisibleFrame];

  PXRectFlippedVertically();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setVisibleFrame:(CGRect)a3
{
  v4 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v4 imageSize];

  PXRectNormalize();

  [(PUParallaxLayerStackViewModel *)self setNormalizedVisibleFrame:?];
}

- (CGRect)visibleFrame
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v3 imageSize];

  [(PUParallaxLayerStackViewModel *)self normalizedVisibleFrame];

  PXRectDenormalize();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)contentRect
{
  v36 = *MEMORY[0x1E69E9840];
  if (![(PUParallaxLayerStackViewModel *)self settlingEffectEnabled])
  {
    if ([(PUParallaxLayerStackViewModel *)self spatialPhotoEnabled])
    {
      v7 = [(PUParallaxLayerStackViewModel *)self allowedBehaviors];
      v8 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
      v9 = v8;
      if ((v7 & 0x200) != 0)
      {
        v13 = [v8 spatialPhotoBackfillIncludesHeadroom];

        if (!v13)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = [v8 spatialPhotoIncludesHeadroom];

        if ((v10 & 1) == 0)
        {
LABEL_6:
          [(PUParallaxLayerStackViewModel *)self spatialPhotoBounds];
          goto LABEL_15;
        }
      }

      [(PUParallaxLayerStackViewModel *)self spatialPhotoExtendedBounds];
      goto LABEL_15;
    }

    v11 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
    v12 = [v11 segmentationMatte];

    if (v12)
    {
LABEL_8:
      [(PUParallaxLayerStackViewModel *)self extendedImageRect];
      goto LABEL_15;
    }

    v14 = [(PUParallaxLayerStackViewModel *)self headroomState];
    if (v14 != 2)
    {
      if (v14 == 1)
      {
        goto LABEL_8;
      }

      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      if (v14)
      {
        goto LABEL_16;
      }
    }

    [(PUParallaxLayerStackViewModel *)self originalImageRect];
    goto LABEL_15;
  }

  [(PUParallaxLayerStackViewModel *)self settlingEffectBounds];
LABEL_15:
  v18 = v3;
  v17 = v4;
  v16 = v5;
  v15 = v6;
LABEL_16:
  v37.origin.x = v18;
  v37.origin.y = v17;
  v37.size.width = v16;
  v37.size.height = v15;
  if (CGRectIsEmpty(v37))
  {
    v19 = PLWallpaperGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(PUParallaxLayerStackViewModel *)self settlingEffectEnabled];
      [(PUParallaxLayerStackViewModel *)self settlingEffectBounds];
      v21 = NSStringFromCGRect(v38);
      [(PUParallaxLayerStackViewModel *)self extendedImageRect];
      v22 = NSStringFromCGRect(v39);
      v31[0] = 67109634;
      v31[1] = v20;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = v22;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Empty content rect. Settling effect enabled: %d, settlingEffectBounds: %{public}@, extendedImageRect: %{public}@", v31, 0x1Cu);
    }

    [(PUParallaxLayerStackViewModel *)self extendedImageRect];
    v18 = v23;
    v17 = v24;
    v16 = v25;
    v15 = v26;
  }

  v27 = v18;
  v28 = v17;
  v29 = v16;
  v30 = v15;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)spatialPhotoExtendedBounds
{
  v3 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [v3 spatialPhotoNormalizedBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v12 extendedImageSize];
  v14 = v13;
  v16 = v15;

  [(PUParallaxLayerStackViewModel *)self _viewRectForLayoutRect:v5 * v14 + 0.0, v7 * v16 + 0.0, v9 * v14, v11 * v16];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)spatialPhotoBounds
{
  v3 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [v3 spatialPhotoNormalizedBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v12 imageSize];
  v14 = v13;
  v16 = v15;

  [(PUParallaxLayerStackViewModel *)self _viewRectForLayoutRect:v5 * v14 + 0.0, v7 * v16 + 0.0, v9 * v14, v11 * v16];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)settlingEffectBounds
{
  v3 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [v3 settlingEffectNormalizedBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v12 imageSize];
  v14 = v13;
  v16 = v15;

  [(PUParallaxLayerStackViewModel *)self _viewRectForLayoutRect:v5 * v14 + 0.0, v7 * v16 + 0.0, v9 * v14, v11 * v16];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)originalImageRect
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v3 originalImageExtent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PUParallaxLayerStackViewModel *)self _viewRectForLayoutRect:v5, v7, v9, v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)extendedImageRect
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v3 extendedImageExtent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PUParallaxLayerStackViewModel *)self _viewRectForLayoutRect:v5, v7, v9, v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)imageSize
{
  v2 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v2 imageSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)_viewRectForLayoutRect:(CGRect)a3
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v3 imageSize];

  PXRectFlippedVertically();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)layoutRectForViewRect:(CGRect)a3
{
  v3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [v3 imageSize];

  PXRectFlippedVertically();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (int64_t)environment
{
  v2 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (NSString)debugDescription
{
  v8.receiver = self;
  v8.super_class = PUParallaxLayerStackViewModel;
  v3 = [(PUParallaxLayerStackViewModel *)&v8 debugDescription];
  v4 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  v5 = [(PUParallaxLayerStackViewModel *)self style];
  v6 = [v3 stringByAppendingFormat:@" currentLayerStack = %@, style = %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PUParallaxLayerStackViewModel *)self updater];
  [v4 updateIfNeeded];

  v5 = [(PUParallaxLayerStackViewModel *)self segmentationItem];

  v6 = objc_alloc(objc_opt_class());
  if (v5)
  {
    v7 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
    v8 = [(PUParallaxLayerStackViewModel *)self style];
    v9 = [v8 bakedStyle];
    v10 = [(PUParallaxLayerStackViewModel *)self compoundLayerStack];
    v11 = [v6 initWithSegmentationItem:v7 initialStyle:v9 compoundLayerStack:v10 deviceOrientation:-[PUParallaxLayerStackViewModel deviceOrientation](self allowedBehaviors:{"deviceOrientation"), -[PUParallaxLayerStackViewModel allowedBehaviors](self, "allowedBehaviors")}];
  }

  else
  {
    v7 = [(PUParallaxLayerStackViewModel *)self compoundLayerStack];
    v8 = [(PUParallaxLayerStackViewModel *)self style];
    v9 = [v8 bakedStyle];
    v11 = [v6 initWithCompoundLayerStack:v7 style:v9 deviceOrientation:-[PUParallaxLayerStackViewModel deviceOrientation](self allowedBehaviors:{"deviceOrientation"), -[PUParallaxLayerStackViewModel allowedBehaviors](self, "allowedBehaviors")}];
  }

  [(PUParallaxLayerStackViewModel *)self containerFrame];
  [v11 setContainerFrame:?];
  [(PUParallaxLayerStackViewModel *)self animationDuration];
  [v11 setAnimationDuration:?];
  v12 = [(PUParallaxLayerStackViewModel *)self animationCurve];
  [v11 setAnimationCurve:v12];

  *(v11 + 96) = self->_legibilityVignetteEnabled;
  [v11 setConfiguredSalientContentRectangle:{self->_configuredSalientContentRectangle.origin.x, self->_configuredSalientContentRectangle.origin.y, self->_configuredSalientContentRectangle.size.width, self->_configuredSalientContentRectangle.size.height}];
  *(v11 + 320) = self->_headroomState;
  return v11;
}

- (PUParallaxLayerStackViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewModel.m" lineNumber:162 description:{@"%s is not available as initializer", "-[PUParallaxLayerStackViewModel init]"}];

  abort();
}

- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)a3 compoundLayerStack:(id)a4 style:(id)a5 deviceOrientation:(int64_t)a6 allowedBehaviors:(unint64_t)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (!v15)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewModel.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"compoundLayerStack != nil"}];
  }

  v43.receiver = self;
  v43.super_class = PUParallaxLayerStackViewModel;
  v17 = [(PUParallaxLayerStackViewModel *)&v43 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_initialLayerStack, a4);
    v19 = [v15 portraitLayerStack];
    portraitLayerStack = v18->_portraitLayerStack;
    v18->_portraitLayerStack = v19;

    v21 = [v15 landscapeLayerStack];
    landscapeLayerStack = v18->_landscapeLayerStack;
    v18->_landscapeLayerStack = v21;

    v18->_needsToAdjustVisibleFrame = v18->_landscapeLayerStack == 0;
    objc_storeStrong(&v18->_segmentationItem, a3);
    if (v16)
    {
      v23 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v16];
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v18->_style, v23);
    if (v16)
    {
    }

    v18->_allowedBehaviors = a7;
    v24 = MEMORY[0x1E695EFD0];
    *&v18->_adaptiveLayoutTransform.tx = *(MEMORY[0x1E695EFD0] + 32);
    v25 = v24[1];
    *&v18->_adaptiveLayoutTransform.a = *v24;
    *&v18->_adaptiveLayoutTransform.c = v25;
    v26 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:0.0];
    additionalViewTitleHeightAnimator = v18->_additionalViewTitleHeightAnimator;
    v18->_additionalViewTitleHeightAnimator = v26;

    [(PXNumberAnimator *)v18->_additionalViewTitleHeightAnimator setHighFrameRateReason:2228225];
    [(PXNumberAnimator *)v18->_additionalViewTitleHeightAnimator registerChangeObserver:v18 context:AdditionalViewTitleHeightAnimatorObservationContext_49142];
    v28 = [[PUParallaxLayerStackViewManager alloc] initWithViewModel:v18];
    viewManager = v18->_viewManager;
    v18->_viewManager = v28;

    v18->_visibilityAmount = 1.0;
    v30 = 1;
    if (v14)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v18->_visibilityEffects = v31;
    v18->_backlightLuminance = -1;
    v18->_deviceOrientation = a6;
    if ((a6 - 3) < 2)
    {
      v30 = 2;
    }

    v18->_orientation = v30;
    if ((a6 - 3) >= 2)
    {
      p_portraitLayerStack = &v18->_portraitLayerStack;
    }

    else
    {
      p_portraitLayerStack = &v18->_landscapeLayerStack;
    }

    v33 = [*p_portraitLayerStack layout];
    v34 = [v33 isUsingHeadroom];

    if (v14)
    {
      v35 = [v14 segmentationMatte];

      if (!v35)
      {
        v36 = 1;
        if (!v34)
        {
          v36 = 2;
        }

        v18->_headroomState = v36;
      }
    }

    v37 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v18 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v18->_updater;
    v18->_updater = v37;

    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateOrientation];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateVisibleFrameWithContainerFrame];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateCurrentLayerStack];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateEffectiveDefaultLayouts];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateCurrentLayout];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateCurrentNormalizedVisibleRect];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateCurrentLayoutProperties];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateAdditionalViewTitleHeight];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateVisibleFrameCrossesHeadroomBoundary];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateDesiredHeadroomVisibilityAmount];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateHeadroomVisibilityAmount];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateInitialPortraitLayout];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateClockAppearsAboveForeground];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateLayoutConfiguration];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateLegibilityVignetteVisible];
    [(PXUpdater *)v18->_updater addUpdateSelector:sel__updateDebugHUDRepresentation];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __118__PUParallaxLayerStackViewModel_initWithSegmentationItem_compoundLayerStack_style_deviceOrientation_allowedBehaviors___block_invoke;
    v41[3] = &unk_1E7B80328;
    v42 = v18;
    [(PUParallaxLayerStackViewModel *)v42 performChanges:v41];
  }

  return v18;
}

uint64_t __118__PUParallaxLayerStackViewModel_initWithSegmentationItem_compoundLayerStack_style_deviceOrientation_allowedBehaviors___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateCurrentLayerStack];
  [*(a1 + 32) _invalidateEffectiveDefaultLayouts];
  v2 = *(a1 + 32);

  return [v2 _invalidateLayoutConfiguration];
}

- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)a3 initialStyle:(id)a4 compoundLayerStack:(id)a5 deviceOrientation:(int64_t)a6 allowedBehaviors:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!v13)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewModel.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = [v13 originalStyle];
    v16 = [(PUParallaxLayerStackViewModel *)self initWithSegmentationItem:v13 compoundLayerStack:v15 style:v18 deviceOrientation:a6 allowedBehaviors:a7];

    goto LABEL_6;
  }

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = [(PUParallaxLayerStackViewModel *)self initWithSegmentationItem:v13 compoundLayerStack:v15 style:v14 deviceOrientation:a6 allowedBehaviors:a7];
LABEL_6:

  return v16;
}

+ (unint64_t)_changeDescriptorBetweenOldStyle:(id)a3 newStyle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 kind];
  v8 = [v6 kind];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    if ([v6 hasTonalityMode])
    {
      v10 = [v5 tonality];
      v11 = 2 * (v10 != [v6 tonality]);
    }

    else
    {
      v11 = 0;
    }

    if ([v6 hasColorParameter])
    {
      v12 = [v5 color];
      v13 = [v6 color];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        v11 |= 4uLL;
      }
    }

    if ([v6 hasBackgroundParameter])
    {
      v15 = [v5 showsBackground];
      if (v15 != [v6 showsBackground])
      {
        v11 |= 8uLL;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  v16 = [v5 clockColor];
  v17 = [v6 clockColor];
  v18 = v17;
  if (v16 == v17)
  {
  }

  else
  {
    v19 = [v16 isEqual:v17];

    if (!v19)
    {
      v11 |= 0x10uLL;
    }
  }

  return v11;
}

@end