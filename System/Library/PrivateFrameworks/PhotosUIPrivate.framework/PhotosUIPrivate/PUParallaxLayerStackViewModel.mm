@interface PUParallaxLayerStackViewModel
+ (unint64_t)_changeDescriptorBetweenOldStyle:(id)style newStyle:(id)newStyle;
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
- (CGRect)_calculateNormalizedAdaptiveTimeRectForOrientation:(int64_t)orientation containerFrame:(CGRect)frame configuredSalientContentRectangle:(CGRect)rectangle;
- (CGRect)_viewRectForLayoutRect:(CGRect)rect;
- (CGRect)configuredSalientContentRectangle;
- (CGRect)containerFrame;
- (CGRect)contentRect;
- (CGRect)currentNormalizedVisibleFrame;
- (CGRect)extendedImageRect;
- (CGRect)inactiveFrame;
- (CGRect)landscapeVisibleFrame;
- (CGRect)layoutRectForViewRect:(CGRect)rect;
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
- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style deviceOrientation:(int64_t)orientation allowedBehaviors:(unint64_t)behaviors;
- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)item initialStyle:(id)style compoundLayerStack:(id)stack deviceOrientation:(int64_t)orientation allowedBehaviors:(unint64_t)behaviors;
- (UIEdgeInsets)containerInsets;
- (double)clockAreaLuminance;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)_signalLayerStackPropertiesChange:(unint64_t)change;
- (void)_signalStylePropertiesChange:(unint64_t)change;
- (void)_updateAdditionalViewTitleHeight;
- (void)_updateClockAppearsAboveForeground;
- (void)_updateCurrentLayerStack;
- (void)_updateCurrentLayerStackProperties:(id)properties changeDescriptor:(unint64_t)descriptor;
- (void)_updateCurrentLayout;
- (void)_updateCurrentLayoutProperties;
- (void)_updateCurrentNormalizedVisibleRect;
- (void)_updateDebugHUDRepresentation;
- (void)_updateDesiredHeadroomVisibilityAmount;
- (void)_updateEffectiveDefaultLayouts;
- (void)_updateHeadroomVisibilityAmount;
- (void)_updateInitialPortraitLayout;
- (void)_updateLayerStackPropertiesForAllOrientations:(id)orientations changeDescriptor:(unint64_t)descriptor;
- (void)_updateLayoutConfiguration;
- (void)_updateLegibilityVignetteVisible;
- (void)_updateOrientation;
- (void)_updateVisibleFrameCrossesHeadroomBoundary;
- (void)_updateVisibleFrameWithContainerFrame;
- (void)_updateVisibleFrameWithContainerFrameSetFirstTime:(BOOL)time;
- (void)_updateVisibleFrameWithContainerFrameUsingConfiguration;
- (void)didEndChangeHandling;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)performPrivateChanges:(id)changes;
- (void)reportSpatialPhotoGenerationError:(id)error;
- (void)setAdaptiveLayoutTransform:(CGAffineTransform *)transform;
- (void)setAdditionalViewTitleHeight:(double)height;
- (void)setAnimationCurve:(id)curve;
- (void)setAnimationDuration:(double)duration;
- (void)setAppliesDepthToAllOrientations:(BOOL)orientations;
- (void)setBacklightLuminance:(int64_t)luminance;
- (void)setClockAppearsAboveForeground:(BOOL)foreground;
- (void)setClockAreaLuminance:(double)luminance;
- (void)setClockIntersection:(unint64_t)intersection;
- (void)setClockLayerOrder:(id)order;
- (void)setConfiguredSalientContentRectangle:(CGRect)rectangle;
- (void)setContainerFrame:(CGRect)frame;
- (void)setContainerInsets:(UIEdgeInsets)insets;
- (void)setCurrentLayerStack:(id)stack;
- (void)setCurrentLayout:(id)layout;
- (void)setCurrentNormalizedVisibleFrame:(CGRect)frame;
- (void)setDebugHUDRepresentation:(id)representation;
- (void)setDefaultLayout:(id)layout;
- (void)setDefaultSpatialLayout:(id)layout;
- (void)setDepthEnabled:(BOOL)enabled;
- (void)setDesiredHeadroomVisibilityAmount:(double)amount;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setEffectiveDefaultLayout:(id)layout;
- (void)setEffectiveHeadroomLayout:(id)layout;
- (void)setHeadroomLayout:(id)layout;
- (void)setHeadroomSpatialLayout:(id)layout;
- (void)setHeadroomState:(int64_t)state;
- (void)setHeadroomVisibilityAmount:(double)amount;
- (void)setLandscapeLayerStack:(id)stack;
- (void)setLandscapeOverrideTitleHeight:(double)height;
- (void)setLandscapeUserAdjustedTitleHeightOffset:(double)offset;
- (void)setLayoutOrder:(int64_t)order;
- (void)setLegibilityVignetteEnabled:(BOOL)enabled;
- (void)setLegibilityVignetteVisible:(BOOL)visible;
- (void)setLoadingSpatialPhoto:(BOOL)photo;
- (void)setNormalizedVisibleFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setNormalizedVisibleFrameForInactiveOrientation:(CGRect)orientation;
- (void)setOrientation:(int64_t)orientation;
- (void)setOverrideTitleHeight:(double)height;
- (void)setParallaxDisabled:(BOOL)disabled;
- (void)setParallaxVector:(CGPoint)vector;
- (void)setPortraitLayerStack:(id)stack;
- (void)setSalientContentFrame:(CGRect)frame;
- (void)setSettlingEffectEnabled:(BOOL)enabled;
- (void)setShouldAlwaysUseSpatialPhotoForGallery:(BOOL)gallery;
- (void)setShouldLoopSettlingEffectForGallery:(BOOL)gallery;
- (void)setShowsDebugHUD:(BOOL)d;
- (void)setSpatialPhotoEnabled:(BOOL)enabled;
- (void)setSpatialPhotoLoadingProgress:(double)progress;
- (void)setStyle:(id)style;
- (void)setTargetAdditionalViewTitleHeight:(double)height;
- (void)setUserAdjustedTitleHeightOffset:(double)offset;
- (void)setUserAdjustedVisibleFrame:(BOOL)frame;
- (void)setVisibilityAmount:(double)amount;
- (void)setVisibilityEffects:(int64_t)effects;
- (void)setVisibleFrame:(CGRect)frame;
- (void)setVisibleFrameCrossesHeadroomBoundary:(BOOL)boundary;
- (void)updateBackfillLayersFromLayerStack:(id)stack;
- (void)updateLayerStack:(id)stack;
- (void)updateLayoutPropertiesWithLayerStack:(id)stack;
- (void)updatePhotoEffectsWithLoadedSegmentationItem:(id)item layerStack:(id)stack;
- (void)updateSpatialPhotoWithLayerStack:(id)stack layout:(id)layout;
- (void)updateSpatialPhotoWithLayout:(id)layout;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 2) != 0 && AdditionalViewTitleHeightAnimatorObservationContext_49142 == context)
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

- (void)_signalStylePropertiesChange:(unint64_t)change
{
  [(PUParallaxLayerStackViewModel *)self setStylePropertiesChange:[(PUParallaxLayerStackViewModel *)self stylePropertiesChange]| change];

  [(PUParallaxLayerStackViewModel *)self signalChange:16];
}

- (void)_signalLayerStackPropertiesChange:(unint64_t)change
{
  [(PUParallaxLayerStackViewModel *)self setCurrentLayerStackPropertiesChange:[(PUParallaxLayerStackViewModel *)self currentLayerStackPropertiesChange]| change];

  [(PUParallaxLayerStackViewModel *)self signalChange:4];
}

- (void)_updateLayerStackPropertiesForAllOrientations:(id)orientations changeDescriptor:(unint64_t)descriptor
{
  orientationsCopy = orientations;
  portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  v9 = (*(orientations + 2))(orientationsCopy, portraitLayerStack);
  [(PUParallaxLayerStackViewModel *)self setPortraitLayerStack:v9];

  landscapeLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
  v11 = (*(orientations + 2))(orientationsCopy, landscapeLayerStack);

  [(PUParallaxLayerStackViewModel *)self setLandscapeLayerStack:v11];
  orientation = [(PUParallaxLayerStackViewModel *)self orientation];
  if (orientation == 2)
  {
    currentLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    portraitLayerStack2 = currentLayerStack;
    if (!currentLayerStack)
    {
      portraitLayerStack2 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    }

    objc_storeStrong(&self->_currentLayerStack, portraitLayerStack2);
    if (!currentLayerStack)
    {
    }
  }

  else
  {
    if (orientation != 1)
    {
      goto LABEL_9;
    }

    portraitLayerStack3 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    currentLayerStack = self->_currentLayerStack;
    self->_currentLayerStack = portraitLayerStack3;
  }

LABEL_9:
  [(PUParallaxLayerStackViewModel *)self _signalLayerStackPropertiesChange:descriptor];

  [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
}

- (void)_updateCurrentLayerStackProperties:(id)properties changeDescriptor:(unint64_t)descriptor
{
  _invalidateDebugHUDRepresentation = (*(properties + 2))(properties, self->_currentLayerStack);
  v7 = _invalidateDebugHUDRepresentation;
  if (self->_currentLayerStack != _invalidateDebugHUDRepresentation)
  {
    v9 = _invalidateDebugHUDRepresentation;
    objc_storeStrong(&self->_currentLayerStack, _invalidateDebugHUDRepresentation);
    orientation = [(PUParallaxLayerStackViewModel *)self orientation];
    if (orientation == 2)
    {
      [(PUParallaxLayerStackViewModel *)self setLandscapeLayerStack:v9];
    }

    else if (orientation == 1)
    {
      [(PUParallaxLayerStackViewModel *)self setPortraitLayerStack:v9];
    }

    [(PUParallaxLayerStackViewModel *)self _signalLayerStackPropertiesChange:descriptor];
    _invalidateDebugHUDRepresentation = [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
    v7 = v9;
    if ((descriptor & 2) != 0)
    {
      _invalidateDebugHUDRepresentation = [(PUParallaxLayerStackViewModel *)self _invalidateHeadroomVisibilityAmount];
      v7 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](_invalidateDebugHUDRepresentation, v7);
}

- (void)setDebugHUDRepresentation:(id)representation
{
  representationCopy = representation;
  debugHUDRepresentation = self->_debugHUDRepresentation;
  if (debugHUDRepresentation != representationCopy)
  {
    v8 = representationCopy;
    debugHUDRepresentation = [debugHUDRepresentation isEqual:representationCopy];
    representationCopy = v8;
    if ((debugHUDRepresentation & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_debugHUDRepresentation;
      self->_debugHUDRepresentation = v6;

      debugHUDRepresentation = [(PUParallaxLayerStackViewModel *)self signalChange:0x40000];
      representationCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](debugHUDRepresentation, representationCopy);
}

- (void)_updateDebugHUDRepresentation
{
  v63[2] = *MEMORY[0x1E69E9840];
  if ([(PUParallaxLayerStackViewModel *)self showsDebugHUD])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v62[0] = @"Device Orientation";
    deviceOrientation = [(PUParallaxLayerStackViewModel *)self deviceOrientation];
    v5 = @"unknown";
    if ((deviceOrientation - 1) <= 3)
    {
      v5 = off_1E7B740D0[deviceOrientation - 1];
    }

    v6 = v5;
    v62[1] = @"Layout Orientation";
    v63[0] = v6;
    orientation = [(PUParallaxLayerStackViewModel *)self orientation];
    v8 = @"portrait";
    if (orientation != 1)
    {
      v8 = @"unknown";
    }

    if (orientation == 2)
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
      style = [(PUParallaxLayerStackViewModel *)self style];
      v12 = [style debugDescription];
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

    currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
    layers = [currentLayerStack layers];
    v18 = [layers count];

    if (v18)
    {
      v58 = @"Layers";
      currentLayerStack2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
      layers2 = [currentLayerStack2 layers];
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
    currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [currentLayout maxClockShift];
    v42 = [v39 stringWithFormat:@"%.2f", v41];
    v57[5] = v42;
    v56[6] = @"Layout Variant";
    v43 = MEMORY[0x1E696AEC0];
    currentLayout2 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    v45 = [v43 stringWithFormat:@"%ld", objc_msgSend(currentLayout2, "layoutVariant")];
    v57[6] = v45;
    v56[7] = @"Visible Rect";
    v46 = MEMORY[0x1E696AEC0];
    currentLayout3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [currentLayout3 visibleFrame];
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
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDebugHUDRepresentation];
}

- (void)setHeadroomVisibilityAmount:(double)amount
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_headroomVisibilityAmount = amount;

    [(PUParallaxLayerStackViewModel *)self signalChange:0x100000];
  }
}

- (void)setHeadroomState:(int64_t)state
{
  if (self->_headroomState != state)
  {
    self->_headroomState = state;
  }
}

- (void)_updateHeadroomVisibilityAmount
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  mayContainBakedHeadroom = [currentLayerStack mayContainBakedHeadroom];

  representsPureStyle = [(PUParallaxLayerStackViewModel *)self representsPureStyle];
  currentLayerStack2 = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  layout = [currentLayerStack2 layout];
  canApplyHeadroom = [layout canApplyHeadroom];

  v9 = 0.0;
  if ((mayContainBakedHeadroom & 1) == 0 && canApplyHeadroom && !representsPureStyle)
  {
    [(PUParallaxLayerStackViewModel *)self desiredHeadroomVisibilityAmount];
  }

  [(PUParallaxLayerStackViewModel *)self setHeadroomVisibilityAmount:v9];
}

- (void)_invalidateHeadroomVisibilityAmount
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateHeadroomVisibilityAmount];
}

- (void)setDesiredHeadroomVisibilityAmount:(double)amount
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_desiredHeadroomVisibilityAmount = amount;

    [(PUParallaxLayerStackViewModel *)self _invalidateHeadroomVisibilityAmount];
  }
}

- (void)_updateDesiredHeadroomVisibilityAmount
{
  visibleFrameCrossesHeadroomBoundary = [(PUParallaxLayerStackViewModel *)self visibleFrameCrossesHeadroomBoundary];
  v4 = 0.0;
  if (visibleFrameCrossesHeadroomBoundary)
  {
    v4 = 1.0;
  }

  [(PUParallaxLayerStackViewModel *)self setDesiredHeadroomVisibilityAmount:v4];
}

- (void)_invalidateDesiredHeadroomVisibilityAmount
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDesiredHeadroomVisibilityAmount];
}

- (void)setVisibleFrameCrossesHeadroomBoundary:(BOOL)boundary
{
  if (self->_visibleFrameCrossesHeadroomBoundary != boundary)
  {
    self->_visibleFrameCrossesHeadroomBoundary = boundary;
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
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateVisibleFrameCrossesHeadroomBoundary];
}

- (void)setLegibilityVignetteVisible:(BOOL)visible
{
  if (self->_legibilityVignetteVisible != visible)
  {
    self->_legibilityVignetteVisible = visible;
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
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateLegibilityVignetteVisible];
}

- (void)_updateLayoutConfiguration
{
  v3 = objc_alloc(MEMORY[0x1E69C0938]);
  portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  layout = [portraitLayerStack layout];
  configuration = [layout configuration];
  landscapeLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
  layout2 = [landscapeLayerStack layout];
  configuration2 = [layout2 configuration];
  v9 = [v3 initWithPortraitConfiguration:configuration landscapeConfiguration:configuration2];
  [(PUParallaxLayerStackViewModel *)self setLayoutConfiguration:v9];
}

- (void)_invalidateLayoutConfiguration
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateLayoutConfiguration];
}

- (PFWallpaperCompoundLayerStack)compoundLayerStack
{
  v3 = objc_alloc(MEMORY[0x1E69C0940]);
  portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  landscapeLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
  v6 = [v3 initWithPortraitLayerStack:portraitLayerStack landscapeLayerStack:landscapeLayerStack];

  return v6;
}

- (void)setClockAppearsAboveForeground:(BOOL)foreground
{
  if (self->_clockAppearsAboveForeground != foreground)
  {
    self->_clockAppearsAboveForeground = foreground;
    [(PUParallaxLayerStackViewModel *)self signalChange:4096];
  }
}

- (void)_updateClockAppearsAboveForeground
{
  clockLayerOrder = [(PUParallaxLayerStackViewModel *)self clockLayerOrder];

  if (clockLayerOrder)
  {
    clockLayerOrder2 = [(PUParallaxLayerStackViewModel *)self clockLayerOrder];
    v4 = ([clockLayerOrder2 isEqualToString:*MEMORY[0x1E69C0BA0]] & 1) != 0 || !-[PUParallaxLayerStackViewModel depthEnabled](self, "depthEnabled") || -[PUParallaxLayerStackViewModel settlingEffectEnabled](self, "settlingEffectEnabled");
    [(PUParallaxLayerStackViewModel *)self setClockAppearsAboveForeground:v4];
  }
}

- (void)_invalidateClockAppearsAboveForeground
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateClockAppearsAboveForeground];
}

- (void)_updateInitialPortraitLayout
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout normalizedVisibleFrame];
  PXSizeGetAspectRatio();
  v4 = v3;
  allowedBehaviors = [(PUParallaxLayerStackViewModel *)self allowedBehaviors];
  initialPortraitLayout = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
  if (initialPortraitLayout)
  {
  }

  else if (v4 <= 1.0 || (allowedBehaviors & 8) != 0)
  {
    [(PUParallaxLayerStackViewModel *)self setInitialPortraitLayout:currentLayout];
  }
}

- (void)_invalidateInitialPortraitLayout
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateInitialPortraitLayout];
}

- (void)setSalientContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setAdditionalViewTitleHeight:(double)height
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_additionalViewTitleHeight = height;
    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];

    [(PUParallaxLayerStackViewModel *)self signalChange:0x800000];
  }
}

- (void)_updateAdditionalViewTitleHeight
{
  additionalViewTitleHeightAnimator = [(PUParallaxLayerStackViewModel *)self additionalViewTitleHeightAnimator];
  [additionalViewTitleHeightAnimator presentationValue];
  [(PUParallaxLayerStackViewModel *)self setAdditionalViewTitleHeight:?];
}

- (void)_invalidateAdditionalViewTitleHeight
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAdditionalViewTitleHeight];
}

- (void)setTargetAdditionalViewTitleHeight:(double)height
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    targetAdditionalViewTitleHeight = self->_targetAdditionalViewTitleHeight;
    self->_targetAdditionalViewTitleHeight = height;
    if ([(PUParallaxLayerStackViewModel *)self environment]== 2 && ([(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 0x100) != 0 && [(PUParallaxLayerStackViewModel *)self userAdjustedVisibleFrame])
    {
      additionalViewTitleHeightAnimator = [(PUParallaxLayerStackViewModel *)self additionalViewTitleHeightAnimator];
      if (([additionalViewTitleHeightAnimator isAnimating] & 1) == 0)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __68__PUParallaxLayerStackViewModel_setTargetAdditionalViewTitleHeight___block_invoke;
        v9[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
        *&v9[4] = targetAdditionalViewTitleHeight;
        [additionalViewTitleHeightAnimator performChangesWithoutAnimation:v9];
      }

      additionalViewTitleHeightAnimator2 = [(PUParallaxLayerStackViewModel *)self additionalViewTitleHeightAnimator];
      [additionalViewTitleHeightAnimator2 approximateVelocity];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __68__PUParallaxLayerStackViewModel_setTargetAdditionalViewTitleHeight___block_invoke_2;
      v8[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
      *&v8[4] = height;
      [additionalViewTitleHeightAnimator performChangesUsingDefaultSpringAnimationWithInitialVelocity:v8 changes:?];
    }

    else
    {

      [(PUParallaxLayerStackViewModel *)self setAdditionalViewTitleHeight:height];
    }
  }
}

- (void)_updateCurrentLayoutProperties
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  layoutVariant = [currentLayout layoutVariant];
  deviceOrientation = [(PUParallaxLayerStackViewModel *)self deviceOrientation];
  [(PUParallaxLayerStackViewModel *)self setSupportsAdaptiveLayout:layoutVariant == 2];
  [currentLayout salientContentFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v57 = v11;
  [currentLayout visibleFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([currentLayout layoutVariant] == 2)
  {
    [currentLayout adaptiveVisibleFrame];
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

  v27 = deviceOrientation - 3;
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
  if (layoutVariant == 2)
  {
    v55 = Height;
    [currentLayout visibleFrame];
    v56 = v31;
    v58 = v33;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    [currentLayout adaptiveVisibleFrame];
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
  [currentLayout layoutVariant];
  if (PFPosterIsLayoutVariantAdaptive())
  {
    [(PUParallaxLayerStackViewModel *)self deviceOrientation];
    v43 = PUPosterAdditionalViewTitleHeight(currentLayout, v31, v33, v35, v37);
  }

  [(PUParallaxLayerStackViewModel *)self setTargetAdditionalViewTitleHeight:v43];
}

- (void)_invalidateCurrentLayoutProperties
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentLayoutProperties];
}

- (void)setLandscapeUserAdjustedTitleHeightOffset:(double)offset
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_landscapeUserAdjustedTitleHeightOffset = offset;

    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
  }
}

- (void)setUserAdjustedTitleHeightOffset:(double)offset
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_userAdjustedTitleHeightOffset = offset;

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

- (void)setLandscapeOverrideTitleHeight:(double)height
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_landscapeOverrideTitleHeight = height;

    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
  }
}

- (void)setOverrideTitleHeight:(double)height
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_overrideTitleHeight = height;

    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
  }
}

- (void)setCurrentNormalizedVisibleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout normalizedVisibleFrame];
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
    currentLayout2 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [currentLayout2 imageSize];
    PXRectWithOriginAndSize();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    currentLayout3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
    [currentLayout3 deviceResolution];
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
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentNormalizedVisibleRect];
}

- (CGRect)_calculateNormalizedAdaptiveTimeRectForOrientation:(int64_t)orientation containerFrame:(CGRect)frame configuredSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  y = rectangle.origin.y;
  v7 = frame.size.height;
  width = frame.size.width;
  memset(&v38, 0, sizeof(v38));
  if (orientation >= 2)
  {
    if (orientation != 2)
    {
      timeRectCollectionLandscape = 0;
      v33 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
      goto LABEL_7;
    }

    x = rectangle.origin.x;
    v34 = rectangle.size.width;
    timeRectCollectionLandscape = [MEMORY[0x1E69C0790] timeRectCollectionLandscape];
    v11 = 170.0;
    v12 = 4;
    v33 = v7;
    v13 = width;
  }

  else
  {
    x = rectangle.origin.x;
    v34 = rectangle.size.width;
    timeRectCollectionLandscape = [MEMORY[0x1E69C0790] timeRectCollectionPortrait];
    v11 = 0.0;
    v12 = 1;
    v33 = width;
    v13 = v7;
  }

  PUPosterAdditionalTransformForDeviceOrientationAndContainerFrame(v12, &v38);
  rectangle.size.width = v34;
  rectangle.origin.x = x;
LABEL_7:
  v37 = v38;
  v39.origin.x = rectangle.origin.x;
  v39.origin.y = y;
  v39.size.width = rectangle.size.width;
  v39.size.height = height;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v35 = v13;
  v14 = v11 + v13 - v40.size.height;
  [timeRectCollectionLandscape minTimeRect];
  v37 = v38;
  v42 = CGRectApplyAffineTransform(v41, &v37);
  [timeRectCollectionLandscape rectForPointSpaceHeight:v14 - v42.origin.y];
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
  debugInfoViewIfLoaded = [(PUParallaxLayerStackViewManager *)self->_viewManager debugInfoViewIfLoaded];
  *v36 = v19;
  *&v36[1] = v20;
  *&v36[2] = v21;
  *&v36[3] = v22;
  v24 = [MEMORY[0x1E696B098] valueWithBytes:v36 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [debugInfoViewIfLoaded setDebugTimeRect:v24];

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
    currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
    if (currentLayout)
    {
      v10 = currentLayout;
      didSetContainerFrame = [(PUParallaxLayerStackViewModel *)self didSetContainerFrame];

      if (didSetContainerFrame)
      {
        orientation = [(PUParallaxLayerStackViewModel *)self orientation];
        [(PUParallaxLayerStackViewModel *)self containerFrame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [(PUParallaxLayerStackViewModel *)self configuredSalientContentRectangle];
        [(PUParallaxLayerStackViewModel *)self _calculateNormalizedAdaptiveTimeRectForOrientation:orientation containerFrame:v14 configuredSalientContentRectangle:v16, v18, v20, v21, v22, v23, v24];
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

- (void)setCurrentLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_currentLayout;
  v6 = v5;
  if (v5 == layoutCopy)
  {
  }

  else
  {
    v7 = [(PFPosterOrientedLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentLayout, layout);
      [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
      [(PUParallaxLayerStackViewModel *)self _invalidateInitialPortraitLayout];
      [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayoutProperties];
      [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];
    }
  }
}

- (void)_updateCurrentLayout
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  layout = [currentLayerStack layout];
  [(PUParallaxLayerStackViewModel *)self setCurrentLayout:layout];
}

- (void)_invalidateCurrentLayout
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentLayout];
}

- (void)setEffectiveHeadroomLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_effectiveHeadroomLayout;
  v6 = v5;
  if (v5 == layoutCopy)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_effectiveHeadroomLayout, layout);
      [(PUParallaxLayerStackViewModel *)self signalChange:0x4000000];
    }
  }
}

- (void)setEffectiveDefaultLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_effectiveDefaultLayout;
  v6 = v5;
  if (v5 == layoutCopy)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_effectiveDefaultLayout, layout);
      [(PUParallaxLayerStackViewModel *)self signalChange:8];
    }
  }
}

- (void)_updateEffectiveDefaultLayouts
{
  if ([(PUParallaxLayerStackViewModel *)self spatialPhotoEnabled])
  {
    defaultSpatialLayout = [(PUParallaxLayerStackViewModel *)self defaultSpatialLayout];
    [(PUParallaxLayerStackViewModel *)self setEffectiveDefaultLayout:defaultSpatialLayout];

    [(PUParallaxLayerStackViewModel *)self headroomSpatialLayout];
  }

  else
  {
    defaultLayout = [(PUParallaxLayerStackViewModel *)self defaultLayout];
    [(PUParallaxLayerStackViewModel *)self setEffectiveDefaultLayout:defaultLayout];

    [(PUParallaxLayerStackViewModel *)self headroomLayout];
  }
  v5 = ;
  [(PUParallaxLayerStackViewModel *)self setEffectiveHeadroomLayout:v5];
}

- (void)_invalidateEffectiveDefaultLayouts
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateEffectiveDefaultLayouts];
}

- (void)setCurrentLayerStack:(id)stack
{
  stackCopy = stack;
  v5 = self->_currentLayerStack;
  v6 = v5;
  if (v5 == stackCopy)
  {
  }

  else
  {
    v7 = [(PFParallaxLayerStack *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentLayerStack, stack);
      [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
      [(PUParallaxLayerStackViewModel *)self _invalidateCurrentNormalizedVisibleRect];
      [(PUParallaxLayerStackViewModel *)self _invalidateHeadroomVisibilityAmount];
      [(PUParallaxLayerStackViewModel *)self signalChange:2];
    }
  }
}

- (void)_updateCurrentLayerStack
{
  orientation = [(PUParallaxLayerStackViewModel *)self orientation];
  if (!orientation)
  {
    goto LABEL_4;
  }

  if (orientation == 2)
  {
    landscapeLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v6 = landscapeLayerStack;
    if (landscapeLayerStack)
    {
      portraitLayerStack = landscapeLayerStack;
    }

    else
    {
      portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    }

    v8 = portraitLayerStack;

    portraitLayerStack2 = v8;
    goto LABEL_10;
  }

  if (orientation != 1)
  {
    portraitLayerStack2 = 0;
  }

  else
  {
LABEL_4:
    portraitLayerStack2 = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  }

LABEL_10:
  v9 = portraitLayerStack2;
  [(PUParallaxLayerStackViewModel *)self setCurrentLayerStack:portraitLayerStack2];
}

- (void)_invalidateCurrentLayerStack
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentLayerStack];
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
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateVisibleFrameWithContainerFrame];
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
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
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateOrientation];
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
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performPrivateChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackViewModel;
  [(PUParallaxLayerStackViewModel *)&v3 performChanges:changes];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackViewModel;
  [(PUParallaxLayerStackViewModel *)&v3 performChanges:changes];
}

- (void)setLegibilityVignetteEnabled:(BOOL)enabled
{
  if (self->_legibilityVignetteEnabled != enabled)
  {
    self->_legibilityVignetteEnabled = enabled;
    [(PUParallaxLayerStackViewModel *)self _invalidateLegibilityVignetteVisible];
  }
}

- (void)setAnimationCurve:(id)curve
{
  curveCopy = curve;
  if (self->_animationCurve != curveCopy)
  {
    v6 = curveCopy;
    objc_storeStrong(&self->_animationCurve, curve);
    curveCopy = v6;
  }
}

- (void)setAnimationDuration:(double)duration
{
  if (vabdd_f64(self->_animationDuration, duration) > 0.00000999999975)
  {
    self->_animationDuration = duration;
  }
}

- (void)setHeadroomSpatialLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_headroomSpatialLayout;
  v6 = v5;
  if (v5 == layoutCopy)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_headroomSpatialLayout, layout);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setDefaultSpatialLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_defaultSpatialLayout;
  v6 = v5;
  if (v5 == layoutCopy)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_defaultSpatialLayout, layout);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setHeadroomLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_headroomLayout;
  v6 = v5;
  if (v5 == layoutCopy)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_headroomLayout, layout);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setDefaultLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_defaultLayout;
  v6 = v5;
  if (v5 == layoutCopy)
  {
  }

  else
  {
    v7 = [(PFPosterLayout *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_defaultLayout, layout);
      [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    }
  }
}

- (void)setSpatialPhotoLoadingProgress:(double)progress
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_spatialPhotoLoadingProgress = progress;

    [(PUParallaxLayerStackViewModel *)self signalChange:0x10000000];
  }
}

- (void)setLoadingSpatialPhoto:(BOOL)photo
{
  if (self->_loadingSpatialPhoto != photo)
  {
    self->_loadingSpatialPhoto = photo;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x8000000];
  }
}

- (void)reportSpatialPhotoGenerationError:(id)error
{
  errorCopy = error;
  [(PUParallaxLayerStackViewModel *)self setLoadingSpatialPhoto:0];
  domain = [errorCopy domain];
  if ([domain isEqual:*MEMORY[0x1E69C0BC8]])
  {
    code = [errorCopy code];

    if (code == 1002)
    {

      [(PUParallaxLayerStackViewModel *)self setDebugSpatialPhotoGenerationError:0];
      return;
    }
  }

  else
  {
  }

  [(PUParallaxLayerStackViewModel *)self setDebugSpatialPhotoGenerationError:errorCopy];
  if (errorCopy)
  {
    [(PUParallaxLayerStackViewModel *)self signalChange:0x2000000];
  }
}

- (void)updateLayoutPropertiesWithLayerStack:(id)stack
{
  stackCopy = stack;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PUParallaxLayerStackViewModel_updateLayoutPropertiesWithLayerStack___block_invoke;
  v6[3] = &unk_1E7B7A290;
  v7 = stackCopy;
  v5 = stackCopy;
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

- (void)updateSpatialPhotoWithLayout:(id)layout
{
  layoutCopy = layout;
  v5 = layoutCopy;
  if (layoutCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PUParallaxLayerStackViewModel_updateSpatialPhotoWithLayout___block_invoke;
    v6[3] = &unk_1E7B7A368;
    v6[4] = self;
    v7 = layoutCopy;
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

- (void)updateSpatialPhotoWithLayerStack:(id)stack layout:(id)layout
{
  stackCopy = stack;
  layoutCopy = layout;
  [(PUParallaxLayerStackViewModel *)self setLoadingSpatialPhoto:0];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  spatialPhotoBackgroundLayer = [stackCopy spatialPhotoBackgroundLayer];

  if (spatialPhotoBackgroundLayer)
  {
    spatialPhotoBackgroundLayer2 = [stackCopy spatialPhotoBackgroundLayer];
    [v8 addObject:spatialPhotoBackgroundLayer2];
  }

  spatialPhotoForegroundLayer = [stackCopy spatialPhotoForegroundLayer];

  if (spatialPhotoForegroundLayer)
  {
    spatialPhotoForegroundLayer2 = [stackCopy spatialPhotoForegroundLayer];
    [v8 addObject:spatialPhotoForegroundLayer2];
  }

  spatialPhotoBackgroundBackfillLayer = [stackCopy spatialPhotoBackgroundBackfillLayer];

  if (spatialPhotoBackgroundBackfillLayer)
  {
    spatialPhotoBackgroundBackfillLayer2 = [stackCopy spatialPhotoBackgroundBackfillLayer];
    [v8 addObject:spatialPhotoBackgroundBackfillLayer2];
  }

  spatialPhotoForegroundBackfillLayer = [stackCopy spatialPhotoForegroundBackfillLayer];

  if (spatialPhotoForegroundBackfillLayer)
  {
    spatialPhotoForegroundBackfillLayer2 = [stackCopy spatialPhotoForegroundBackfillLayer];
    [v8 addObject:spatialPhotoForegroundBackfillLayer2];
  }

  if ([v8 count])
  {
    [(PUParallaxLayerStackViewModel *)self setDebugSpatialPhotoGenerationError:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__PUParallaxLayerStackViewModel_updateSpatialPhotoWithLayerStack_layout___block_invoke;
    v17[3] = &unk_1E7B7A340;
    v17[4] = self;
    v18 = layoutCopy;
    v19 = v8;
    v20 = stackCopy;
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

- (void)updatePhotoEffectsWithLoadedSegmentationItem:(id)item layerStack:(id)stack
{
  itemCopy = item;
  if (self->_segmentationItem != itemCopy)
  {
    objc_storeStrong(&self->_segmentationItem, item);
    stackCopy = stack;
    settlingEffectLayer = [stackCopy settlingEffectLayer];

    if (settlingEffectLayer)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __89__PUParallaxLayerStackViewModel_updatePhotoEffectsWithLoadedSegmentationItem_layerStack___block_invoke;
      v10[3] = &unk_1E7B7A290;
      v11 = settlingEffectLayer;
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

- (void)setClockIntersection:(unint64_t)intersection
{
  if ([(PUParallaxLayerStackViewModel *)self clockIntersection]!= intersection)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__PUParallaxLayerStackViewModel_setClockIntersection___block_invoke;
    v5[3] = &__block_descriptor_40_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v5[4] = intersection;
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
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  clockIntersection = [currentLayout clockIntersection];

  return clockIntersection;
}

- (double)clockAreaLuminance
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  [currentLayerStack clockAreaLuminance];
  v4 = v3;

  return v4;
}

- (void)setClockAreaLuminance:(double)luminance
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  [currentLayerStack clockAreaLuminance];
  v7 = vabdd_f64(luminance, v6);

  if (v7 > 0.00000999999975)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PUParallaxLayerStackViewModel_setClockAreaLuminance___block_invoke;
    v8[3] = &__block_descriptor_40_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    *&v8[4] = luminance;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v8 changeDescriptor:32];
  }
}

- (void)setClockLayerOrder:(id)order
{
  orderCopy = order;
  clockLayerOrder = [(PUParallaxLayerStackViewModel *)self clockLayerOrder];

  if (clockLayerOrder != orderCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__PUParallaxLayerStackViewModel_setClockLayerOrder___block_invoke;
    v6[3] = &unk_1E7B7A290;
    v7 = orderCopy;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v6 changeDescriptor:16];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayout];
  }
}

- (NSString)clockLayerOrder
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  clockLayerOrder = [currentLayout clockLayerOrder];

  return clockLayerOrder;
}

- (void)updateBackfillLayersFromLayerStack:(id)stack
{
  stackCopy = stack;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PUParallaxLayerStackViewModel_updateBackfillLayersFromLayerStack___block_invoke;
  v6[3] = &unk_1E7B7A290;
  v7 = stackCopy;
  v5 = stackCopy;
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

- (void)updateLayerStack:(id)stack
{
  stackCopy = stack;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUParallaxLayerStackViewModel_updateLayerStack___block_invoke;
  v6[3] = &unk_1E7B7A290;
  v5 = stackCopy;
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

- (void)setShowsDebugHUD:(BOOL)d
{
  if (self->_showsDebugHUD != d)
  {
    self->_showsDebugHUD = d;
    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];

    [(PUParallaxLayerStackViewModel *)self signalChange:0x80000];
  }
}

- (void)setShouldAlwaysUseSpatialPhotoForGallery:(BOOL)gallery
{
  if (self->_shouldAlwaysUseSpatialPhotoForGallery != gallery)
  {
    self->_shouldAlwaysUseSpatialPhotoForGallery = gallery;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x20000000];
  }
}

- (void)setShouldLoopSettlingEffectForGallery:(BOOL)gallery
{
  if (self->_shouldLoopSettlingEffectForGallery != gallery)
  {
    self->_shouldLoopSettlingEffectForGallery = gallery;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x200000];
  }
}

- (void)setLayoutOrder:(int64_t)order
{
  if (self->_layoutOrder != order)
  {
    self->_layoutOrder = order;
    [(PUParallaxLayerStackViewModel *)self signalChange:64];
  }
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  if (self->_deviceOrientation != orientation)
  {
    self->_deviceOrientation = orientation;
    [(PUParallaxLayerStackViewModel *)self _invalidateOrientation];
    [(PUParallaxLayerStackViewModel *)self _invalidateDebugHUDRepresentation];

    [(PUParallaxLayerStackViewModel *)self signalChange:0x20000];
  }
}

- (void)setBacklightLuminance:(int64_t)luminance
{
  if (self->_backlightLuminance != luminance)
  {
    self->_backlightLuminance = luminance;
    [(PUParallaxLayerStackViewModel *)self signalChange:128];
  }
}

- (void)setVisibilityEffects:(int64_t)effects
{
  if (self->_visibilityEffects != effects)
  {
    self->_visibilityEffects = effects;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x40000000];
  }
}

- (void)setVisibilityAmount:(double)amount
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_visibilityAmount = amount;

    [(PUParallaxLayerStackViewModel *)self signalChange:1024];
  }
}

- (void)setAdaptiveLayoutTransform:(CGAffineTransform *)transform
{
  p_adaptiveLayoutTransform = &self->_adaptiveLayoutTransform;
  v6 = *&self->_adaptiveLayoutTransform.c;
  *&t1.a = *&self->_adaptiveLayoutTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_adaptiveLayoutTransform.tx;
  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_adaptiveLayoutTransform->c = *&transform->c;
    *&p_adaptiveLayoutTransform->tx = v9;
    *&p_adaptiveLayoutTransform->a = v8;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x400000];
  }
}

- (void)setParallaxVector:(CGPoint)vector
{
  if (self->_parallaxVector.x != vector.x || self->_parallaxVector.y != vector.y)
  {
    self->_parallaxVector = vector;
    [(PUParallaxLayerStackViewModel *)self signalChange:0x2000];
  }
}

- (void)_updateVisibleFrameWithContainerFrameUsingConfiguration
{
  initialPortraitLayout = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];

  if (initialPortraitLayout)
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
    initialPortraitLayout2 = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
    portraitConfiguration = [v20 portraitConfiguration];
    v25 = [initialPortraitLayout2 layoutByUpdatingConfigurationWithSaliency:portraitConfiguration normalizedTopEdgeInset:v22];

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

- (void)_updateVisibleFrameWithContainerFrameSetFirstTime:(BOOL)time
{
  timeCopy = time;
  if (([(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 8) == 0)
  {
    v5 = [(PUParallaxLayerStackViewModel *)self allowedBehaviors]& 4;
    orientation = [(PUParallaxLayerStackViewModel *)self orientation];
    [(PUParallaxLayerStackViewModel *)self containerFrame];
    deviceSupportsLandscapeConfiguration = [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration];
    v8 = deviceSupportsLandscapeConfiguration;
    if (deviceSupportsLandscapeConfiguration && [(PUParallaxLayerStackViewModel *)self needsToAdjustVisibleFrame]&& orientation == 2)
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
      initialLayerStack = [(PUParallaxLayerStackViewModel *)self initialLayerStack];

      if (initialLayerStack)
      {
        initialLayerStack2 = [(PUParallaxLayerStackViewModel *)self initialLayerStack];
        portraitLayerStack = [initialLayerStack2 portraitLayerStack];
        layout = [portraitLayerStack layout];
        [layout normalizedVisibleFrame];
        self->_currentNormalizedVisibleFrame.origin.x = v14;
        self->_currentNormalizedVisibleFrame.origin.y = v15;
        self->_currentNormalizedVisibleFrame.size.width = v16;
        self->_currentNormalizedVisibleFrame.size.height = v17;
      }
    }

    else if (!timeCopy)
    {
      goto LABEL_15;
    }

    [(PUParallaxLayerStackViewModel *)self visibleFrame];
    [(PUParallaxLayerStackViewModel *)self setPortraitVisibleFrame:?];
    [(PUParallaxLayerStackViewModel *)self portraitVisibleFrame];
    v9[2](v9);
    [(PUParallaxLayerStackViewModel *)self setLandscapeVisibleFrame:?];
LABEL_15:
    if (orientation == 2)
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
      if (orientation == 2)
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

- (void)setContainerInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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

- (void)setContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_containerFrame = &self->_containerFrame;
  if (!CGRectEqualToRect(self->_containerFrame, frame))
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
      didSetContainerFrame = [(PUParallaxLayerStackViewModel *)self didSetContainerFrame];
      [(PUParallaxLayerStackViewModel *)self setDidSetContainerFrame:1];
      [(PUParallaxLayerStackViewModel *)self _updateVisibleFrameWithContainerFrameSetFirstTime:!didSetContainerFrame];
    }

    [(PUParallaxLayerStackViewModel *)self _invalidateOrientation];
    [(PUParallaxLayerStackViewModel *)self _invalidateCurrentLayoutProperties];

    [(PUParallaxLayerStackViewModel *)self signalChange:512];
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  v5 = self->_style;
  v6 = v5;
  if (v5 == styleCopy)
  {
  }

  else
  {
    v7 = [(PIParallaxStyle *)v5 isEqual:styleCopy];

    if ((v7 & 1) == 0)
    {
      v8 = [objc_opt_class() _changeDescriptorBetweenOldStyle:self->_style newStyle:styleCopy];
      objc_storeStrong(&self->_style, style);
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
  effectiveHeadroomLayout = [(PUParallaxLayerStackViewModel *)self effectiveHeadroomLayout];
  if (effectiveHeadroomLayout)
  {
    if ([(PUParallaxLayerStackViewModel *)self orientation]== 2)
    {
      [effectiveHeadroomLayout landscapeLayout];
    }

    else
    {
      [effectiveHeadroomLayout portraitLayout];
    }
    v5 = ;
    canApplyHeadroom = [v5 canApplyHeadroom];
  }

  else
  {
    canApplyHeadroom = 0;
  }

  return canApplyHeadroom;
}

- (BOOL)headroomLayoutUsesHeadroomArea
{
  effectiveHeadroomLayout = [(PUParallaxLayerStackViewModel *)self effectiveHeadroomLayout];
  if (effectiveHeadroomLayout)
  {
    if ([(PUParallaxLayerStackViewModel *)self orientation]== 2)
    {
      [effectiveHeadroomLayout landscapeLayout];
    }

    else
    {
      [effectiveHeadroomLayout portraitLayout];
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
      segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
      segmentationMatte = [segmentationItem segmentationMatte];
      v4 = segmentationMatte == 0;
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
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  layout = [currentLayerStack layout];
  if ([layout canApplyHeadroom])
  {
    effectiveHeadroomLayout = [(PUParallaxLayerStackViewModel *)self effectiveHeadroomLayout];
    if (effectiveHeadroomLayout)
    {
      effectiveDefaultLayout = [(PUParallaxLayerStackViewModel *)self effectiveDefaultLayout];
      v7 = effectiveDefaultLayout != 0;
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
  style = [(PUParallaxLayerStackViewModel *)self style];
  kind = [style kind];

  if ([kind isEqualToString:*MEMORY[0x1E69C0B08]] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B10]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [kind isEqualToString:*MEMORY[0x1E69C0B18]];
  }

  return v4;
}

- (BOOL)mainLayersArePruned
{
  portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  if ([portraitLayerStack hasMainLayers])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    landscapeLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v4 = [landscapeLayerStack hasMainLayers] ^ 1;
  }

  return v4;
}

- (NSString)spatialPhotoFailuresDiagnosticDescription
{
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  if ([segmentationItem isSpatialPhotoAvailable])
  {
    [segmentationItem spatialPhotoNormalizedBounds];
    if (CGRectIsEmpty(v11))
    {
      localizedDescription = @"spatialPhotoNormalizedBounds is empty";
      goto LABEL_11;
    }

    debugSpatialPhotoGenerationError = [(PUParallaxLayerStackViewModel *)self debugSpatialPhotoGenerationError];

    if (debugSpatialPhotoGenerationError)
    {
      debugSpatialPhotoGenerationError2 = [(PUParallaxLayerStackViewModel *)self debugSpatialPhotoGenerationError];
      localizedDescription = [debugSpatialPhotoGenerationError2 localizedDescription];
      goto LABEL_8;
    }

    localizedDescription = @"Unknown Error";
  }

  else
  {
    if ([segmentationItem spatialPhotoFailedAnyGating])
    {
      v5 = MEMORY[0x1E696AEC0];
      debugSpatialPhotoGenerationError2 = [segmentationItem spatialPhotoGatingDiagnosticsOnlyFailures:1];
      v7 = [debugSpatialPhotoGenerationError2 componentsJoinedByString:{@", "}];
      localizedDescription = [v5 stringWithFormat:@"Gating Failures: [%@]", v7];

LABEL_8:
      goto LABEL_11;
    }

    [segmentationItem spatialPhotoStatus];
    localizedDescription = PIPosterSpatialPhotoStatusDescription();
  }

LABEL_11:

  return localizedDescription;
}

- (BOOL)spatialPhotoFailedUnexpectedly
{
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  spatialPhotoFailedUnexpectedly = [segmentationItem spatialPhotoFailedUnexpectedly];

  return spatialPhotoFailedUnexpectedly;
}

- (BOOL)canEnableSpatialPhoto
{
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  isSpatialPhotoAvailable = [segmentationItem isSpatialPhotoAvailable];

  if (!isSpatialPhotoAvailable)
  {
    return 0;
  }

  segmentationItem2 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [segmentationItem2 spatialPhotoNormalizedBounds];
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
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v3 = [processInfo isLowPowerModeEnabled] ^ 1;
  }

  return v3;
}

- (BOOL)canEnableSettlingEffect
{
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  isSettlingEffectAvailable = [segmentationItem isSettlingEffectAvailable];

  if (!isSettlingEffectAvailable)
  {
    return 0;
  }

  segmentationItem2 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [segmentationItem2 settlingEffectNormalizedBounds];
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

  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  if ([currentLayout layoutVariant] == 2)
  {
    goto LABEL_7;
  }

  currentLayout2 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  if ([currentLayout2 layoutVariant] == 3)
  {

LABEL_7:
    return 1;
  }

  currentLayout3 = [(PUParallaxLayerStackViewModel *)self currentLayout];
  layoutVariant = [currentLayout3 layoutVariant];

  if (layoutVariant == 4)
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
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  segmentationMatte = [segmentationItem segmentationMatte];
  v4 = segmentationMatte != 0;

  return v4;
}

- (BOOL)hasEnoughRoomForParallax
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  canApplyParallax = [currentLayout canApplyParallax];

  return canApplyParallax;
}

- (BOOL)canApplyParallax
{
  if ([(PUParallaxLayerStackViewModel *)self parallaxDisabled])
  {
    return 0;
  }

  return [(PUParallaxLayerStackViewModel *)self hasEnoughRoomForParallax];
}

- (void)setParallaxDisabled:(BOOL)disabled
{
  if ([(PUParallaxLayerStackViewModel *)self parallaxDisabled]!= disabled)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__PUParallaxLayerStackViewModel_setParallaxDisabled___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    disabledCopy = disabled;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:1];
  }
}

- (BOOL)parallaxDisabled
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  parallaxDisabled = [currentLayerStack parallaxDisabled];

  return parallaxDisabled;
}

- (void)setUserAdjustedVisibleFrame:(BOOL)frame
{
  if ([(PUParallaxLayerStackViewModel *)self userAdjustedVisibleFrame]!= frame)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PUParallaxLayerStackViewModel_setUserAdjustedVisibleFrame___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    frameCopy = frame;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:128];
  }
}

- (BOOL)userAdjustedVisibleFrame
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  userAdjustedVisibleFrame = [currentLayerStack userAdjustedVisibleFrame];

  return userAdjustedVisibleFrame;
}

- (void)setSpatialPhotoEnabled:(BOOL)enabled
{
  if ([(PUParallaxLayerStackViewModel *)self spatialPhotoEnabled]!= enabled)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PUParallaxLayerStackViewModel_setSpatialPhotoEnabled___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    enabledCopy = enabled;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:64];
    [(PUParallaxLayerStackViewModel *)self _invalidateEffectiveDefaultLayouts];
    [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
  }
}

- (BOOL)spatialPhotoEnabled
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  spatialPhotoEnabled = [currentLayerStack spatialPhotoEnabled];

  return spatialPhotoEnabled;
}

- (void)setSettlingEffectEnabled:(BOOL)enabled
{
  if ([(PUParallaxLayerStackViewModel *)self settlingEffectEnabled]!= enabled)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PUParallaxLayerStackViewModel_setSettlingEffectEnabled___block_invoke;
    v5[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    enabledCopy = enabled;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v5 changeDescriptor:8];
    [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
  }
}

- (BOOL)settlingEffectEnabled
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  settlingEffectEnabled = [currentLayerStack settlingEffectEnabled];

  return settlingEffectEnabled;
}

- (void)setAppliesDepthToAllOrientations:(BOOL)orientations
{
  if (self->_appliesDepthToAllOrientations != orientations)
  {
    self->_appliesDepthToAllOrientations = orientations;
  }
}

- (void)setDepthEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PUParallaxLayerStackViewModel *)self appliesDepthToAllOrientations])
  {
    portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    if ([portraitLayerStack depthEnabled] == enabledCopy)
    {
      landscapeLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
      depthEnabled = [landscapeLayerStack depthEnabled];

      if (depthEnabled == enabledCopy)
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
    v11 = enabledCopy;
    [(PUParallaxLayerStackViewModel *)self _updateLayerStackPropertiesForAllOrientations:v10 changeDescriptor:4];
  }

  else
  {
    if ([(PUParallaxLayerStackViewModel *)self depthEnabled]== enabledCopy)
    {
      return;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__PUParallaxLayerStackViewModel_setDepthEnabled___block_invoke_2;
    v8[3] = &__block_descriptor_33_e52___PFParallaxLayerStack_16__0__PFParallaxLayerStack_8l;
    v9 = enabledCopy;
    [(PUParallaxLayerStackViewModel *)self _updateCurrentLayerStackProperties:v8 changeDescriptor:4];
  }

  [(PUParallaxLayerStackViewModel *)self _invalidateClockAppearsAboveForeground];
}

- (BOOL)depthEnabledInAnyOrientation
{
  portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
  if ([portraitLayerStack depthEnabled])
  {
    depthEnabled = 1;
  }

  else
  {
    landscapeLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    depthEnabled = [landscapeLayerStack depthEnabled];
  }

  return depthEnabled;
}

- (BOOL)depthEnabled
{
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  depthEnabled = [currentLayerStack depthEnabled];

  return depthEnabled;
}

- (void)setLandscapeLayerStack:(id)stack
{
  stackCopy = stack;
  if (self->_landscapeLayerStack != stackCopy)
  {
    v6 = stackCopy;
    objc_storeStrong(&self->_landscapeLayerStack, stack);
    [(PUParallaxLayerStackViewModel *)self _invalidateLayoutConfiguration];
    stackCopy = v6;
  }
}

- (void)setPortraitLayerStack:(id)stack
{
  stackCopy = stack;
  if (self->_portraitLayerStack != stackCopy)
  {
    v6 = stackCopy;
    objc_storeStrong(&self->_portraitLayerStack, stack);
    [(PUParallaxLayerStackViewModel *)self _invalidateLayoutConfiguration];
    stackCopy = v6;
  }
}

- (CGRect)inactiveFrame
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout inactiveFrame];
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

- (void)setNormalizedVisibleFrameForInactiveOrientation:(CGRect)orientation
{
  PXRectFlippedVertically();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  orientation = [(PUParallaxLayerStackViewModel *)self orientation];
  if (orientation == 2)
  {
    portraitLayerStack = [(PUParallaxLayerStackViewModel *)self portraitLayerStack];
    v14 = &OBJC_IVAR___PUParallaxLayerStackViewModel__portraitLayerStack;
  }

  else
  {
    if (orientation != 1)
    {
      return;
    }

    portraitLayerStack = [(PUParallaxLayerStackViewModel *)self landscapeLayerStack];
    v14 = &OBJC_IVAR___PUParallaxLayerStackViewModel__landscapeLayerStack;
  }

  v20 = portraitLayerStack;
  layout = [portraitLayerStack layout];
  v16 = [layout layoutByUpdatingNormalizedVisibleFrame:1 remapAdaptiveVisibleFrame:{v5, v7, v9, v11}];

  v17 = [v20 layerStackByUpdatingLayout:v16];
  v18 = *v14;
  v19 = *(&self->super.super.isa + v18);
  *(&self->super.super.isa + v18) = v17;
}

- (void)setNormalizedVisibleFrame:(CGRect)frame animated:(BOOL)animated
{
  animatedCopy = animated;
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
    if (animatedCopy)
    {
      objc_initWeak(&location, self);
      viewManager = [(PUParallaxLayerStackViewModel *)self viewManager];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__PUParallaxLayerStackViewModel_setNormalizedVisibleFrame_animated___block_invoke;
      v27[3] = &unk_1E7B7A268;
      objc_copyWeak(v28, &location);
      v28[1] = *&v10;
      v28[2] = *&v11;
      v28[3] = *&v12;
      v28[4] = *&v13;
      [viewManager layoutViewsWithDefaultAnimations:v27];

      objc_destroyWeak(v28);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PUParallaxLayerStackViewModel *)self signalChange:0x4000];
    }

    initialPortraitLayout = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
    [initialPortraitLayout normalizedVisibleFrame];
    if (vabdd_f64(v20, p_currentNormalizedVisibleFrame->origin.x) <= 0.0001 && vabdd_f64(v17, self->_currentNormalizedVisibleFrame.origin.y) <= 0.0001 && vabdd_f64(v18, self->_currentNormalizedVisibleFrame.size.width) <= 0.0001)
    {
      v24 = vabdd_f64(v19, self->_currentNormalizedVisibleFrame.size.height);

      if (v24 <= 0.0001)
      {
        initialPortraitLayout2 = [(PUParallaxLayerStackViewModel *)self initialPortraitLayout];
        if (initialPortraitLayout2)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
    initialPortraitLayout2 = [currentLayout layoutByUpdatingNormalizedVisibleFrame:1 remapAdaptiveVisibleFrame:{v10, v11, v12, v13}];

LABEL_13:
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__PUParallaxLayerStackViewModel_setNormalizedVisibleFrame_animated___block_invoke_3;
    v25[3] = &unk_1E7B7A290;
    v26 = initialPortraitLayout2;
    v23 = initialPortraitLayout2;
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

- (void)setVisibleFrame:(CGRect)frame
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout imageSize];

  PXRectNormalize();

  [(PUParallaxLayerStackViewModel *)self setNormalizedVisibleFrame:?];
}

- (CGRect)visibleFrame
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout imageSize];

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
      allowedBehaviors = [(PUParallaxLayerStackViewModel *)self allowedBehaviors];
      currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
      v9 = currentLayerStack;
      if ((allowedBehaviors & 0x200) != 0)
      {
        spatialPhotoBackfillIncludesHeadroom = [currentLayerStack spatialPhotoBackfillIncludesHeadroom];

        if (!spatialPhotoBackfillIncludesHeadroom)
        {
          goto LABEL_6;
        }
      }

      else
      {
        spatialPhotoIncludesHeadroom = [currentLayerStack spatialPhotoIncludesHeadroom];

        if ((spatialPhotoIncludesHeadroom & 1) == 0)
        {
LABEL_6:
          [(PUParallaxLayerStackViewModel *)self spatialPhotoBounds];
          goto LABEL_15;
        }
      }

      [(PUParallaxLayerStackViewModel *)self spatialPhotoExtendedBounds];
      goto LABEL_15;
    }

    segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
    segmentationMatte = [segmentationItem segmentationMatte];

    if (segmentationMatte)
    {
LABEL_8:
      [(PUParallaxLayerStackViewModel *)self extendedImageRect];
      goto LABEL_15;
    }

    headroomState = [(PUParallaxLayerStackViewModel *)self headroomState];
    if (headroomState != 2)
    {
      if (headroomState == 1)
      {
        goto LABEL_8;
      }

      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      if (headroomState)
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
      settlingEffectEnabled = [(PUParallaxLayerStackViewModel *)self settlingEffectEnabled];
      [(PUParallaxLayerStackViewModel *)self settlingEffectBounds];
      v21 = NSStringFromCGRect(v38);
      [(PUParallaxLayerStackViewModel *)self extendedImageRect];
      v22 = NSStringFromCGRect(v39);
      v31[0] = 67109634;
      v31[1] = settlingEffectEnabled;
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
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [segmentationItem spatialPhotoNormalizedBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout extendedImageSize];
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
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [segmentationItem spatialPhotoNormalizedBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout imageSize];
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
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  [segmentationItem settlingEffectNormalizedBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout imageSize];
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
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout originalImageExtent];
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
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout extendedImageExtent];
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
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout imageSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)_viewRectForLayoutRect:(CGRect)rect
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout imageSize];

  PXRectFlippedVertically();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)layoutRectForViewRect:(CGRect)rect
{
  currentLayout = [(PUParallaxLayerStackViewModel *)self currentLayout];
  [currentLayout imageSize];

  PXRectFlippedVertically();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (int64_t)environment
{
  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];
  if (segmentationItem)
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
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self currentLayerStack];
  style = [(PUParallaxLayerStackViewModel *)self style];
  v6 = [v3 stringByAppendingFormat:@" currentLayerStack = %@, style = %@", currentLayerStack, style];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  updater = [(PUParallaxLayerStackViewModel *)self updater];
  [updater updateIfNeeded];

  segmentationItem = [(PUParallaxLayerStackViewModel *)self segmentationItem];

  v6 = objc_alloc(objc_opt_class());
  if (segmentationItem)
  {
    segmentationItem2 = [(PUParallaxLayerStackViewModel *)self segmentationItem];
    style = [(PUParallaxLayerStackViewModel *)self style];
    bakedStyle = [style bakedStyle];
    compoundLayerStack = [(PUParallaxLayerStackViewModel *)self compoundLayerStack];
    v11 = [v6 initWithSegmentationItem:segmentationItem2 initialStyle:bakedStyle compoundLayerStack:compoundLayerStack deviceOrientation:-[PUParallaxLayerStackViewModel deviceOrientation](self allowedBehaviors:{"deviceOrientation"), -[PUParallaxLayerStackViewModel allowedBehaviors](self, "allowedBehaviors")}];
  }

  else
  {
    segmentationItem2 = [(PUParallaxLayerStackViewModel *)self compoundLayerStack];
    style = [(PUParallaxLayerStackViewModel *)self style];
    bakedStyle = [style bakedStyle];
    v11 = [v6 initWithCompoundLayerStack:segmentationItem2 style:bakedStyle deviceOrientation:-[PUParallaxLayerStackViewModel deviceOrientation](self allowedBehaviors:{"deviceOrientation"), -[PUParallaxLayerStackViewModel allowedBehaviors](self, "allowedBehaviors")}];
  }

  [(PUParallaxLayerStackViewModel *)self containerFrame];
  [v11 setContainerFrame:?];
  [(PUParallaxLayerStackViewModel *)self animationDuration];
  [v11 setAnimationDuration:?];
  animationCurve = [(PUParallaxLayerStackViewModel *)self animationCurve];
  [v11 setAnimationCurve:animationCurve];

  *(v11 + 96) = self->_legibilityVignetteEnabled;
  [v11 setConfiguredSalientContentRectangle:{self->_configuredSalientContentRectangle.origin.x, self->_configuredSalientContentRectangle.origin.y, self->_configuredSalientContentRectangle.size.width, self->_configuredSalientContentRectangle.size.height}];
  *(v11 + 320) = self->_headroomState;
  return v11;
}

- (PUParallaxLayerStackViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewModel.m" lineNumber:162 description:{@"%s is not available as initializer", "-[PUParallaxLayerStackViewModel init]"}];

  abort();
}

- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)item compoundLayerStack:(id)stack style:(id)style deviceOrientation:(int64_t)orientation allowedBehaviors:(unint64_t)behaviors
{
  itemCopy = item;
  stackCopy = stack;
  styleCopy = style;
  if (!stackCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewModel.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"compoundLayerStack != nil"}];
  }

  v43.receiver = self;
  v43.super_class = PUParallaxLayerStackViewModel;
  v17 = [(PUParallaxLayerStackViewModel *)&v43 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_initialLayerStack, stack);
    portraitLayerStack = [stackCopy portraitLayerStack];
    portraitLayerStack = v18->_portraitLayerStack;
    v18->_portraitLayerStack = portraitLayerStack;

    landscapeLayerStack = [stackCopy landscapeLayerStack];
    landscapeLayerStack = v18->_landscapeLayerStack;
    v18->_landscapeLayerStack = landscapeLayerStack;

    v18->_needsToAdjustVisibleFrame = v18->_landscapeLayerStack == 0;
    objc_storeStrong(&v18->_segmentationItem, item);
    if (styleCopy)
    {
      v23 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:styleCopy];
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v18->_style, v23);
    if (styleCopy)
    {
    }

    v18->_allowedBehaviors = behaviors;
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
    if (itemCopy)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v18->_visibilityEffects = v31;
    v18->_backlightLuminance = -1;
    v18->_deviceOrientation = orientation;
    if ((orientation - 3) < 2)
    {
      v30 = 2;
    }

    v18->_orientation = v30;
    if ((orientation - 3) >= 2)
    {
      p_portraitLayerStack = &v18->_portraitLayerStack;
    }

    else
    {
      p_portraitLayerStack = &v18->_landscapeLayerStack;
    }

    layout = [*p_portraitLayerStack layout];
    isUsingHeadroom = [layout isUsingHeadroom];

    if (itemCopy)
    {
      segmentationMatte = [itemCopy segmentationMatte];

      if (!segmentationMatte)
      {
        v36 = 1;
        if (!isUsingHeadroom)
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

- (PUParallaxLayerStackViewModel)initWithSegmentationItem:(id)item initialStyle:(id)style compoundLayerStack:(id)stack deviceOrientation:(int64_t)orientation allowedBehaviors:(unint64_t)behaviors
{
  itemCopy = item;
  styleCopy = style;
  stackCopy = stack;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackViewModel.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];

    if (styleCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    originalStyle = [itemCopy originalStyle];
    v16 = [(PUParallaxLayerStackViewModel *)self initWithSegmentationItem:itemCopy compoundLayerStack:stackCopy style:originalStyle deviceOrientation:orientation allowedBehaviors:behaviors];

    goto LABEL_6;
  }

  if (!styleCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = [(PUParallaxLayerStackViewModel *)self initWithSegmentationItem:itemCopy compoundLayerStack:stackCopy style:styleCopy deviceOrientation:orientation allowedBehaviors:behaviors];
LABEL_6:

  return v16;
}

+ (unint64_t)_changeDescriptorBetweenOldStyle:(id)style newStyle:(id)newStyle
{
  styleCopy = style;
  newStyleCopy = newStyle;
  kind = [styleCopy kind];
  kind2 = [newStyleCopy kind];
  v9 = [kind isEqualToString:kind2];

  if (v9)
  {
    if ([newStyleCopy hasTonalityMode])
    {
      tonality = [styleCopy tonality];
      v11 = 2 * (tonality != [newStyleCopy tonality]);
    }

    else
    {
      v11 = 0;
    }

    if ([newStyleCopy hasColorParameter])
    {
      color = [styleCopy color];
      color2 = [newStyleCopy color];
      v14 = [color isEqual:color2];

      if (!v14)
      {
        v11 |= 4uLL;
      }
    }

    if ([newStyleCopy hasBackgroundParameter])
    {
      showsBackground = [styleCopy showsBackground];
      if (showsBackground != [newStyleCopy showsBackground])
      {
        v11 |= 8uLL;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  clockColor = [styleCopy clockColor];
  clockColor2 = [newStyleCopy clockColor];
  v18 = clockColor2;
  if (clockColor == clockColor2)
  {
  }

  else
  {
    v19 = [clockColor isEqual:clockColor2];

    if (!v19)
    {
      v11 |= 0x10uLL;
    }
  }

  return v11;
}

@end