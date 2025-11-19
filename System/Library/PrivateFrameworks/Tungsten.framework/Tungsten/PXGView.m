@interface PXGView
+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5;
+ (unint64_t)supportLevel;
+ (void)setForceAccessibilityEnabled:(BOOL)a3;
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (BOOL)hasExtendedColorDisplay;
- (BOOL)isObjectReference:(id)a3 visuallyBeforeObjectReference:(id)a4;
- (BOOL)isPerformingUpdate;
- (BOOL)isVisible;
- (BOOL)shouldReleaseResourcesWhenInvisible;
- (BOOL)slowAnimationsEnabled;
- (CGImage)textureSnapshotForSpriteReference:(id)a3;
- (CGPoint)convertPoint:(CGPoint)a3 fromLayout:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toLayout:(id)a4;
- (CGRect)convertRect:(CGRect)a3 fromLayout:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toLayout:(id)a4;
- (NSArray)debugHierarchyIdentifiers;
- (NSDictionary)ppt_extraResults;
- (NSString)diagnosticDescription;
- (NSString)preferredFileNameForExportingDebugHierarchy;
- (PXAnonymousScrollView)diagnosticsMainScrollView;
- (PXGAXResponder)axNextResponder;
- (PXGLayout)rootLayout;
- (PXGLayout)rootLayoutIfExists;
- (PXGView)initWithCoder:(id)a3;
- (PXGView)initWithFrame:(CGRect)a3 allowedPresentationTypes:(id)a4;
- (PXGView)initWithFrame:(CGRect)a3 allowedPresentationTypes:(id)a4 displayConfiguration:(id *)a5;
- (PXGViewDiagnosticsSource)diagnosticsSource;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (UIEdgeInsets)hitTestPadding;
- (UIEdgeInsets)minimumSafeAreaInsets;
- (UIEdgeInsets)safeAreaInsets;
- (UIWindowScene)windowScene;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (id)contentCoordinateSpaceForLayout:(id)a3;
- (id)dropTargetObjectReferenceForLocation:(CGPoint)a3;
- (id)hitTestResultAtPoint:(CGPoint)a3;
- (id)hitTestResultAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4 passingTest:(id)a5;
- (id)hitTestResultsAtPoint:(CGPoint)a3;
- (id)hitTestResultsAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4 passingTest:(id)a5;
- (id)hitTestResultsAtPoint:(CGPoint)a3 withIdentifiers:(id)a4;
- (id)hitTestResultsInDirection:(unint64_t)a3 fromSpriteReference:(id)a4;
- (id)hitTestResultsInRect:(CGRect)a3 passingTest:(id)a4;
- (id)layout:(id)a3 viewForSpriteIndex:(unsigned int)a4;
- (id)preferredFocusEnvironments;
- (id)regionOfInterestForHitTestResult:(id)a3;
- (id)regionOfInterestForObjectReference:(id)a3;
- (id)regionOfInterestForSpriteReference:(id)a3;
- (id)trackingContainerViewForSpriteIndex:(unsigned int)a3;
- (id)viewForSpriteIndex:(unsigned int)a3;
- (id)viewForSpriteReference:(id)a3;
- (void)_ensureEndAnimatedScroll;
- (void)_handleSafeAreaInsetsChange;
- (void)_handleSceneDidEnterBackground:(id)a3;
- (void)_handleSceneWillEnterForeground:(id)a3;
- (void)_installNextDidLayoutHandler:(id)a3;
- (void)_invalidateScrollableAxis;
- (void)_realignMetalViewIfNecessaryForScrollViewController:(id)a3;
- (void)_setNeedsUpdate;
- (void)_updateAccessibility;
- (void)_updateDebugHUD;
- (void)_updateEngineCanBlockMainThreadIfNeeded;
- (void)_updateEngineLowMemoryMode;
- (void)_updateEngineLowPowerMode;
- (void)_updateEngineWindowProperties;
- (void)_updateFocusItemProvider;
- (void)_updateInvertColors;
- (void)_updateIsSceneBackgrounded;
- (void)_updateIsVisible;
- (void)_updateLayoutScreenProperties;
- (void)_updateLayoutViewEnvironment;
- (void)_updateMetalView;
- (void)_updateRectDiagnosticsLayer;
- (void)_updateScrollableAxis;
- (void)_updateUserInterfaceDirection;
- (void)_willChangeBoundsSizeFrom:(CGRect)a3 toBounds:(CGRect)a4;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)disablePreheating;
- (void)engine:(id)a3 updateDebugHUDWithStats:(id *)a4;
- (void)engineSetNeedsUpdate:(id)a3;
- (void)ensureUpdatedLayout;
- (void)enumerateDebugHierarchyWithIdentifier:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)forceFullUpdate;
- (void)forceUpdate;
- (void)handlePan:(id)a3;
- (void)installAnimationRenderingCompletionHandler:(id)a3;
- (void)installRenderingCompletionHandler:(id)a3;
- (void)notifyContentFullyLoadedWithTimeout:(double)a3 block:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)ppt_cleanUpAfterTest:(id)a3 isScrollTest:(BOOL)a4;
- (void)ppt_prepareForTest:(id)a3 withOptions:(id)a4 isScrollTest:(BOOL)a5;
- (void)ppt_setCurrentTestOptions:(id)a3;
- (void)registerAllTextureProvidersWithMediaProvider:(id)a3;
- (void)registerAllTextureProvidersWithMediaProvider:(id)a3 namedImagesBundle:(id)a4;
- (void)registerTextureProvider:(id)a3 forMediaKind:(unsigned __int8)a4;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewControllerDidBeginFocusFastScrolling:(id)a3;
- (void)scrollViewControllerDidEndFocusFastScrolling:(id)a3;
- (void)scrollViewControllerDidEndScrolling:(id)a3;
- (void)scrollViewControllerDidLayoutSubviews:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerWillBeginScrolling:(id)a3;
- (void)scrollViewControllerWillBeginScrollingAnimation:(id)a3 towardsContentEdges:(unint64_t)a4;
- (void)setAdditionalSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCanBlockMainThreadIfNeeded:(BOOL)a3;
- (void)setContentShouldBeObscured:(BOOL)a3;
- (void)setCustomAssetImageViewClass:(Class)a3;
- (void)setCustomAssetImageViewClassConfigurator:(id)a3;
- (void)setDiagnosticsSource:(id)a3;
- (void)setDisableMetalViewDisplayCompositing:(BOOL)a3;
- (void)setEnableUnderlaySupport:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIsBeingFullPageSnapshotted:(BOOL)a3;
- (void)setIsSceneBackgrounded:(BOOL)a3;
- (void)setIsSceneResumingFromBackground:(BOOL)a3;
- (void)setLowMemoryModeEnabled:(BOOL)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setMinimumSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setOffscreenEffectQuality:(unint64_t)a3;
- (void)setRootLayout:(id)a3;
- (void)setScrollingAnimationAnchor:(id)a3;
- (void)setShouldReleaseResourcesWhenInvisible:(BOOL)a3;
- (void)setShouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea:(BOOL)a3;
- (void)setShowDebugHUD:(BOOL)a3;
- (void)setShowPerspectiveDebug:(BOOL)a3;
- (void)setSlowAnimationsEnabled:(BOOL)a3;
- (void)test_installRenderSnapshotHandler:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXGView

- (UIEdgeInsets)safeAreaInsets
{
  v7.receiver = self;
  v7.super_class = PXGView;
  [(PXGView *)&v7 safeAreaInsets];
  [(PXGView *)self additionalSafeAreaInsets];
  PXEdgeInsetsAdd();
  [(PXGView *)self minimumSafeAreaInsets];
  PXEdgeInsetsMax();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  top = self->_additionalSafeAreaInsets.top;
  left = self->_additionalSafeAreaInsets.left;
  bottom = self->_additionalSafeAreaInsets.bottom;
  right = self->_additionalSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)minimumSafeAreaInsets
{
  top = self->_minimumSafeAreaInsets.top;
  left = self->_minimumSafeAreaInsets.left;
  bottom = self->_minimumSafeAreaInsets.bottom;
  right = self->_minimumSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateMetalView
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(PXGView *)self metalView];
  if (!v3)
  {
    goto LABEL_37;
  }

  v34 = 0.0;
  v35 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  v4 = [(PXGView *)self backgroundColor];
  v5 = [(PXGView *)self traitCollection];
  v6 = [v4 resolvedColorWithTraitCollection:v5];

  if (([v6 getRed:&v35 green:&v34 blue:&v33 alpha:&v32] & 1) == 0)
  {
    v7 = PXGTungstenGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PXGView *)self backgroundColor];
      *buf = 138543618;
      v37 = v8;
      v38 = 2114;
      v39 = v6;
      _os_log_impl(&dword_21AD38000, v7, OS_LOG_TYPE_ERROR, "Unable to retrieve color components from backgroundColor:%{public}@ resolved:%{public}@", buf, 0x16u);
    }

    v32 = 1.0;
    v33 = 1.0;
    v34 = 1.0;
    v35 = 1.0;
  }

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v9 = [(PXGView *)self traitCollection];
    v10 = [v9 userInterfaceStyle] == 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PXGView *)self metalRenderer];
  [v11 setIsInvertColorsEnabled:v10];

  LODWORD(v11) = v32 == 1.0;
  v12 = v11 & ~[(PXGView *)self enableUnderlaySupport];
  if (v12 == 1)
  {
    v13 = v6;
  }

  else
  {
    v13 = [MEMORY[0x277D75348] clearColor];
  }

  v14 = v13;
  [v3 setBackgroundColor:v13];
  v15 = [v3 layer];
  [v15 setOpaque:v12];

  if (v14)
  {
    v16 = [(PXGView *)self metalRenderer];
    [v16 destinationColorSpaceName];
    v17 = PXGetColorSpace();

    CGColorGetColorSpace([v14 CGColor]);
    if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
    {
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v17, kCGRenderingIntentDefault, [v14 CGColor], 0);
      Components = CGColorGetComponents(CopyByMatchingToColorSpace);
      NumberOfComponents = CGColorGetNumberOfComponents(CopyByMatchingToColorSpace);
      if (NumberOfComponents != 3)
      {
        if (NumberOfComponents == 2)
        {
          v21 = Components[1];
          v33 = *Components;
          v34 = v33;
          v35 = v33;
        }

        else
        {
          if (NumberOfComponents == 1)
          {
            v33 = *Components;
            v34 = v33;
            v35 = v33;
LABEL_20:
            v32 = 1.0;
LABEL_24:
            CGColorRelease(CopyByMatchingToColorSpace);
            goto LABEL_25;
          }

          if (NumberOfComponents < 4)
          {
            goto LABEL_24;
          }

          v23 = *Components;
          v34 = Components[1];
          v35 = v23;
          v21 = Components[3];
          v33 = Components[2];
        }

        v32 = v21;
        goto LABEL_24;
      }

      v22 = *Components;
      v34 = Components[1];
      v35 = v22;
      v33 = Components[2];
      goto LABEL_20;
    }
  }

LABEL_25:
  v24 = v35;
  if (v10)
  {
    v24 = 1.0 - v35;
    v25 = 1.0 - v34;
    v26 = 1.0 - v33;
  }

  else
  {
    v26 = v33;
    v25 = v34;
  }

  [v3 setClearColor:{v24 * v32, v25 * v32, v26 * v32}];
  [(PXGView *)self displayConfiguration];
  v27 = PXGPixelFormatNameToMetalFormat();
  if (!v27)
  {
    v28 = [(PXGView *)self hasExtendedColorDisplay];
    v29 = 552;
    if (v12)
    {
      v29 = 554;
    }

    if (v28)
    {
      v27 = v29;
    }

    else
    {
      v27 = 80;
    }
  }

  if ([v3 colorPixelFormat] != v27)
  {
    [v3 setColorPixelFormat:v27];
  }

  [v3 setHidden:{-[PXGView contentShouldBeObscured](self, "contentShouldBeObscured")}];
  v30 = [(PXGView *)self engine];
  v31 = [v30 layout];
  [v31 setNeedsUpdate];

LABEL_37:
}

- (BOOL)hasExtendedColorDisplay
{
  v2 = [(PXGView *)self traitCollection];
  v3 = [v2 displayGamut] == 1;

  return v3;
}

- (void)_updateLayoutScreenProperties
{
  [(PXGView *)self maximumDynamicRangeHeadroom];
  v4 = v3;
  v5 = [(PXGView *)self rootLayoutIfExists];
  [v5 setDisplayMaximumHeadroom:v4];

  [(PXGView *)self px_screenScale];
  v7 = v6;
  [(PXGView *)self displayScaleMultiplier];
  v9 = v7 * v8;
  v10 = [(PXGView *)self rootLayoutIfExists];
  [v10 setDisplayScale:v9];
}

- (PXGLayout)rootLayoutIfExists
{
  v2 = [(PXGView *)self engine];
  v3 = [v2 layout];

  return v3;
}

- (void)_updateUserInterfaceDirection
{
  if ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PXGView semanticContentAttribute](self, "semanticContentAttribute")}])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(PXGView *)self ppt_currentTestOptions];
    v5 = [v4 objectForKeyedSubscript:@"forceRTL"];
    v3 = [v5 BOOLValue];
  }

  v6 = [(PXGView *)self rootLayout];
  [v6 setUserInterfaceDirection:v3];
}

- (PXGLayout)rootLayout
{
  v4 = [(PXGView *)self engine];
  v5 = [v4 layout];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1293 description:{@"layout not set yet on %@", self}];
  }

  return v5;
}

- (void)_updateLayoutViewEnvironment
{
  v4 = [[PXGViewEnvironment alloc] initWithView:self accessibilityEnabled:[(PXGView *)self isAccessibilityEnabled] isBeingFullPageSnapshotted:[(PXGView *)self isBeingFullPageSnapshotted]];
  v3 = [(PXGView *)self engine];
  [v3 setViewEnvironment:v4];
}

- (void)_updateFocusItemProvider
{
  v11 = [(PXGView *)self scrollViewController];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v6 = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v11 px_descriptionForAssertionMessage];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1410 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.scrollViewController", v8, v10}];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1410 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.scrollViewController", v8}];
  }

LABEL_3:
  v4 = [(PXGView *)self rootLayout];
  v5 = [v4 axGroup];
  [v11 setFocusItemProvider:v5];
}

- (void)_setNeedsUpdate
{
  v2 = [(PXGView *)self scrollViewController];
  [v2 setNeedsUpdate];
}

- (PXGViewDiagnosticsSource)diagnosticsSource
{
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsSource);

  return WeakRetained;
}

- (void)_updateDebugHUD
{
  v4 = +[PXTungstenSettings sharedInstance];
  if ([v4 wantsStatsDebugHUD])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v4 wantsRectDiagnosticsDebugHUD];
  }

  [(PXGView *)self setShowDebugHUD:v3];
}

- (void)_invalidateScrollableAxis
{
  v2 = [(PXGView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateScrollableAxis];
}

- (void)_updateRectDiagnosticsLayer
{
  v3 = +[PXGRectDiagnosticsLayer layer];
  rectDiagnosticsLayer = self->_rectDiagnosticsLayer;
  self->_rectDiagnosticsLayer = v3;

  v13 = +[PXGRectDiagnosticsLayer defaultRectDiagnosticsProviders];
  v5 = [(PXGView *)self diagnosticsSource];

  if (v5)
  {
    v6 = [(PXGView *)self diagnosticsSource];
    v7 = [v6 additionalRectDiagnosticsProvidersForView:self];
    v8 = [v13 arrayByAddingObjectsFromArray:v7];

    v9 = v8;
  }

  else
  {
    v9 = v13;
  }

  v14 = v9;
  [(PXGRectDiagnosticsLayer *)self->_rectDiagnosticsLayer setRectDiagnosticsProviders:v9];
  [(PXGDebugHUDLayer *)self->_debugHUDLayer zPosition];
  [(PXGRectDiagnosticsLayer *)self->_rectDiagnosticsLayer setZPosition:v10 + -1.0];
  v11 = [(PXGDebugHUDLayer *)self->_debugHUDLayer superlayer];
  [v11 insertSublayer:self->_rectDiagnosticsLayer below:self->_debugHUDLayer];

  v12 = [(PXGView *)self rootLayout];
  [v12 displayScale];
  [(PXGRectDiagnosticsLayer *)self->_rectDiagnosticsLayer setContentsScale:?];
}

- (void)didMoveToWindow
{
  [(PXGView *)self _updateIsSceneBackgrounded];
  [(PXGView *)self _updateLayoutScreenProperties];
  [(PXGView *)self _updateLayoutViewEnvironment];
  if ([(PXGView *)self isVisible])
  {
    [(PXGView *)self _updateIsVisible];
  }

  else
  {
    v3 = self;
    px_perform_on_main_runloop();
  }

  v4 = [(PXGView *)self engine];
  [v4 setDidChangeWindow:1];

  [(PXGView *)self _updateEngineWindowProperties];
}

- (void)_updateIsSceneBackgrounded
{
  v3 = [(PXGView *)self windowScene];
  if (v3)
  {
    v4 = v3;
    -[PXGView setIsSceneBackgrounded:](self, "setIsSceneBackgrounded:", [v3 activationState] == 2);
    v3 = v4;
  }
}

- (UIWindowScene)windowScene
{
  v2 = [(PXGView *)self window];
  v3 = [v2 windowScene];

  return v3;
}

- (BOOL)isVisible
{
  v3 = [(PXGView *)self window];
  if (v3)
  {
    v4 = v3;
    v5 = [(PXGView *)self isHidden];

    if (v5)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PXGView *)self isSceneBackgrounded];
    }
  }

  return v3;
}

- (void)_updateIsVisible
{
  v3 = [(PXGView *)self isVisible];
  v4 = [(PXGView *)self engine];
  [v4 setVisible:v3];
}

- (void)_updateEngineWindowProperties
{
  v5 = [(PXGView *)self window];
  v3 = [v5 screen];
  v4 = [(PXGView *)self engine];
  [v4 setScreen:v3];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXGView;
  [(PXGView *)&v3 safeAreaInsetsDidChange];
  [(PXGView *)self _handleSafeAreaInsetsChange];
}

- (void)_handleSafeAreaInsetsChange
{
  [(PXGView *)self safeAreaInsets];
  [(PXGView *)self px_screenScale];
  PXEdgeInsetsRoundToPixel();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXGView *)self scrollViewController];
  [v11 contentInset];
  v12 = PXEdgeInsetsEqualToEdgeInsets();

  if ((v12 & 1) == 0)
  {
    v13 = [(PXGView *)self scrollViewController];
    [v13 setContentInset:{v4, v6, v8, v10}];

    v14 = [(PXGView *)self scrollViewController];
    v15 = [v14 isBouncing];

    if ((v15 & 1) == 0)
    {
      v18 = [(PXGView *)self rootLayout];
      v16 = [v18 createAnchorForVisibleArea];
      v17 = [v16 autoInvalidate];
    }
  }
}

- (void)_updateScrollableAxis
{
  if (![(PXGView *)self managesScrollableAxisExternally])
  {
    v3 = [(PXGView *)self rootLayout];
    v4 = [v3 scrollableAxis];

    v5 = [(PXGView *)self scrollViewController];
    v6 = [v5 scrollView];

    [v6 setAlwaysBounceHorizontal:v4 == 2];
    [v6 setAlwaysBounceVertical:v4 == 1];
  }
}

- (UIEdgeInsets)hitTestPadding
{
  top = self->_hitTestPadding.top;
  left = self->_hitTestPadding.left;
  bottom = self->_hitTestPadding.bottom;
  right = self->_hitTestPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->axNextResponder);

  return WeakRetained;
}

- (BOOL)isPerformingUpdate
{
  v2 = [(PXGView *)self engine];
  v3 = [v2 isPerformingUpdate];

  return v3;
}

- (void)setIsBeingFullPageSnapshotted:(BOOL)a3
{
  if (self->_isBeingFullPageSnapshotted != a3)
  {
    self->_isBeingFullPageSnapshotted = a3;
    [(PXGView *)self _updateLayoutViewEnvironment];
  }
}

- (void)forceFullUpdate
{
  v3 = [(PXGView *)self engine];
  [v3 setWantsImmediateUpdates:1];

  v4 = [(PXGView *)self scrollViewController];
  [v4 scrollViewDidLayout];

  v6 = [(PXGView *)self metalView];
  v5 = [v6 delegate];
  [v5 drawInMTKView:v6];
}

- (void)forceUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PXGTungstenGetLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      v6 = [(PXGView *)self engine];
      v9 = 134217984;
      v10 = v6;
      _os_signpost_emit_with_name_impl(&dword_21AD38000, v3, OS_SIGNPOST_EVENT, v5, "forceUpdate", "Context=%{signpost.telemetry:string2}lu ", &v9, 0xCu);
    }
  }

  v7 = [(PXGView *)self engine];
  [v7 allowSecondRenderThisFrame];

  v8 = [(PXGView *)self engine];
  [v8 ensureUpdatedLayout];

  [(PXGView *)self px_enumerateDescendantSubviewsUsingBlock:&__block_literal_global_209];
}

void __22__PXGView_forceUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  [v2 forceUpdate];
}

- (void)ensureUpdatedLayout
{
  v2 = [(PXGView *)self engine];
  [v2 ensureUpdatedLayout];
}

- (id)viewForSpriteReference:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PXGView *)self engine];
    v6 = [v5 layout];

    if (!v6 || (-[PXGView engine](self, "engine"), v7 = objc_claimAutoreleasedReturnValue(), [v7 ensureUpdatedLayout], v7, v8 = objc_msgSend(v6, "spriteIndexForSpriteReference:options:", v4, 0), v8 == -1))
    {
      v9 = 0;
    }

    else
    {
      v9 = [(PXGView *)self viewForSpriteIndex:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)trackingContainerViewForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(PXGView *)self viewRenderer];
  v5 = [v4 trackingContainerViewForSpriteIndex:v3];

  return v5;
}

- (id)viewForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(PXGView *)self viewRenderer];
  v5 = [v4 viewForSpriteIndex:v3];

  return v5;
}

- (NSDictionary)ppt_extraResults
{
  v2 = [(PXGView *)self engine];
  v3 = [v2 stats];
  v4 = v3[13];
  v27[12] = v3[12];
  v27[13] = v4;
  v27[14] = v3[14];
  v5 = v3[9];
  v27[8] = v3[8];
  v27[9] = v5;
  v6 = v3[11];
  v27[10] = v3[10];
  v27[11] = v6;
  v7 = v3[5];
  v27[4] = v3[4];
  v27[5] = v7;
  v8 = v3[7];
  v27[6] = v3[6];
  v27[7] = v8;
  v9 = v3[1];
  v27[0] = *v3;
  v27[1] = v9;
  v10 = v3[3];
  v27[2] = v3[2];
  v27[3] = v10;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = 0; i != 48; i += 8)
  {
    v13 = off_2782ABBD0[i / 8];
    v14 = *(&v27[12] + i);
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v27[9] + i) * 1000.0];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXTungsten:Update:%@:min", v13];
    [v11 setObject:v15 forKeyedSubscript:v16];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXTungsten:Update:%@:minUnits", v13];
    [v11 setObject:@"ms" forKeyedSubscript:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v14 * 1000.0];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXTungsten:Update:%@:max", v13];
    [v11 setObject:v18 forKeyedSubscript:v19];

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXTungsten:Update:%@:maxUnits", v13];
    [v11 setObject:@"ms" forKeyedSubscript:v20];

    v21 = *(&v27[6] + i);
    if (v21 >= 1)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v27[3] + i) / v21 * 1000.0];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXTungsten:Update:%@:mean", v13];
      [v11 setObject:v22 forKeyedSubscript:v23];

      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXTungsten:Update:%@:meanUnits", v13];
      [v11 setObject:@"ms" forKeyedSubscript:v24];
    }
  }

  v25 = [v11 copy];

  return v25;
}

- (void)ppt_setCurrentTestOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ppt_currentTestOptions != v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      ppt_currentTestOptions = self->_ppt_currentTestOptions;
      self->_ppt_currentTestOptions = v7;

      [(PXGView *)self _updateUserInterfaceDirection];
      v5 = v9;
    }
  }
}

- (void)ppt_cleanUpAfterTest:(id)a3 isScrollTest:(BOOL)a4
{
  v4 = a4;
  [(PXGView *)self ppt_setCurrentTestOptions:0];
  if (v4)
  {

    [(PXGView *)self setIsScrolling:0];
  }
}

- (void)ppt_prepareForTest:(id)a3 withOptions:(id)a4 isScrollTest:(BOOL)a5
{
  v5 = a5;
  [(PXGView *)self ppt_setCurrentTestOptions:a4];
  v7 = [(PXGView *)self engine];
  v8 = [v7 stats];
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[8] = 0u;
  v8[9] = 0u;
  v8[10] = 0u;
  v8[11] = 0u;
  v8[12] = 0u;
  v8[13] = 0u;
  v8[14] = 0u;

  if (v5)
  {

    [(PXGView *)self setIsScrolling:1];
  }
}

- (PXAnonymousScrollView)diagnosticsMainScrollView
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(PXGView *)self scrollViewController];
  v3 = [v2 scrollView];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v3 subviews];
  v6 = [v5 mutableCopy];

  while ([v6 count])
  {
    v7 = [v6 px_popFirst];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 addObject:v7];
    }

    v8 = [v7 subviews];
    [v6 addObjectsFromArray:v8];
  }

  if (![v4 count])
  {
    v12 = v3;
LABEL_18:
    v10 = v12;
    goto LABEL_19;
  }

  if ([v4 count] < 2)
  {
LABEL_13:
    if ([v4 count] >= 2)
    {
      v13 = PXGTungstenGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "Found multiple nested scroll views in the view hierarchy: %@", &v15, 0xCu);
      }
    }

    v12 = [v4 firstObject];
    goto LABEL_18;
  }

  v9 = PXFilter();
  if ([v9 count] != 1)
  {

    goto LABEL_13;
  }

  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = PXGTungstenGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_21AD38000, v11, OS_LOG_TYPE_DEFAULT, "Found multiple nested scroll views: %@\nPicking up the vertical one: %@", &v15, 0x16u);
  }

LABEL_19:

  return v10;
}

- (id)layout:(id)a3 viewForSpriteIndex:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PXGView *)self rootLayout];

  if (v7 == v6)
  {
    v8 = [(PXGView *)self viewForSpriteIndex:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contentCoordinateSpaceForLayout:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self rootLayout];

  if (v5 == v4)
  {
    v7 = [(PXGView *)self scrollViewController];
    v6 = [v7 contentCoordinateSpace];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)test_installRenderSnapshotHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self engine];
  [v5 test_installRenderSnapshotHandler:v4];
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self diagnosticDescription];
  [v4 setObject:v5 forKeyedSubscript:@"Summary"];
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXGView *)self axNextResponder];
  LOBYTE(a4) = [v10 axGroup:v9 didRequestToPerformAction:a4 userInfo:v8];

  return a4;
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXGView *)self axNextResponder];
  [v10 axGroup:v9 didChange:a4 userInfo:v8];
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v3 = [(PXGView *)self scrollViewController];
  v4 = [v3 scrollView];

  return v4;
}

- (void)enumerateDebugHierarchyWithIdentifier:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v50 = a4;
  v98 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v52 = a5;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v51 = v7;
  if ([v7 isEqualToString:@"PXGViewLayoutsAndSpritesHierarchyIdentifier"])
  {
    v8 = [(PXGView *)self rootLayout];
    [v8 visibleRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v49 = v8;
    v17 = [(PXGView *)self engine];
    v48 = [v17 textureManager];

    v18 = objc_alloc_init(PXDebugHierarchyMutableElement);
    [(PXGView *)self bounds];
    [(PXDebugHierarchyMutableElement *)v18 setFrame:?];
    v19 = [(PXGView *)self backgroundColor];
    v20 = v19;
    -[PXDebugHierarchyMutableElement setBackgroundColor:](v18, "setBackgroundColor:", [v19 CGColor]);

    [(PXDebugHierarchyMutableElement *)v18 setName:@"Tungsten Hierarchies"];
    [(PXDebugHierarchyMutableElement *)v18 setCanHaveChildren:1];
    v21 = (v52 + 16);
    (*(v52 + 2))(v52, v18, v94 + 3);
    if ((v94[3] & 1) == 0)
    {
      v22 = [(PXDebugHierarchyMutableElement *)v18 identifier];
      [(PXDebugHierarchyMutableElement *)v18 prepareForReuse];
      [(PXGView *)self bounds];
      [(PXDebugHierarchyMutableElement *)v18 setFrame:?];
      [(PXDebugHierarchyMutableElement *)v18 setName:@"Layouts"];
      [(PXDebugHierarchyMutableElement *)v18 setCanHaveChildren:1];
      [(PXDebugHierarchyMutableElement *)v18 setParentIdentifier:v22];
      (*(v52 + 2))(v52, v18, v94 + 3);
      if ((v94[3] & 1) == 0)
      {
        v23 = [(PXDebugHierarchyMutableElement *)v18 identifier];
        v44 = v22;
        v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_3;
        v90[3] = &unk_2782ABAB0;
        v25 = v24;
        v91 = v25;
        v92 = &__block_literal_global_165;
        v26 = MEMORY[0x21CEE40A0](v90);
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_4;
        v87[3] = &unk_2782ABAD8;
        v47 = v25;
        v88 = v47;
        v89 = &__block_literal_global_165;
        v27 = MEMORY[0x21CEE40A0](v87);
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_5;
        v79[3] = &unk_2782ABB00;
        v83 = v10;
        v84 = v12;
        v85 = v14;
        v86 = v16;
        v80 = v48;
        v28 = v49;
        v81 = v28;
        v82 = &__block_literal_global_158;
        v29 = MEMORY[0x21CEE40A0](v79);
        v26[2](v26, v23, 0);
        v30 = +[PXTungstenSettings sharedInstance];
        LOBYTE(v23) = [v30 includeLayoutsLocalSpritesInDebugHierarchy];

        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_6;
        v67[3] = &unk_2782ABB28;
        v76 = v10;
        v77 = v12;
        v31 = v18;
        v68 = v31;
        v70 = &__block_literal_global_158;
        v46 = v27;
        v71 = v46;
        v32 = v52;
        v72 = v32;
        v75 = &v93;
        v45 = v26;
        v73 = v45;
        v78 = v23;
        v33 = v28;
        v69 = v33;
        v34 = v29;
        v74 = v34;
        [v33 enumerateDescendantsLayoutsUsingBlock:v67];
        if ((v94[3] & 1) == 0)
        {
          [(PXDebugHierarchyMutableElement *)v31 prepareForReuse];
          [(PXGView *)self bounds];
          [(PXDebugHierarchyMutableElement *)v31 setFrame:?];
          [(PXDebugHierarchyMutableElement *)v31 setName:@"Sprites"];
          [(PXDebugHierarchyMutableElement *)v31 setCanHaveChildren:1];
          [(PXDebugHierarchyMutableElement *)v31 setParentIdentifier:v44];
          (*v21)(v32, v31, v94 + 3);
          if ((v94[3] & 1) == 0)
          {
            v35 = [(PXDebugHierarchyMutableElement *)v31 identifier];
            if (v50)
            {
              v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "numberOfSprites")}];
            }

            else
            {
              v36 = 0;
            }

            v37 = [v33 numberOfSprites] << 32;
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_7;
            v57[3] = &unk_2782ABB50;
            v58 = v31;
            v63 = v35;
            v60 = v34;
            v64 = v10;
            v65 = v12;
            v66 = v50 & 1;
            v38 = v36;
            v59 = v38;
            v39 = v32;
            v61 = v39;
            v62 = &v93;
            [v33 enumerateSpritesInRange:v37 usingBlock:v57];
            if ((v50 & 1) != 0 && (v94[3] & 1) == 0)
            {
              [v38 sortUsingComparator:&__block_literal_global_179];
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v40 = v38;
              v41 = [v40 countByEnumeratingWithState:&v53 objects:v97 count:16];
              if (v41)
              {
                v42 = *v54;
LABEL_13:
                v43 = 0;
                while (1)
                {
                  if (*v54 != v42)
                  {
                    objc_enumerationMutation(v40);
                  }

                  (*v21)(v39, *(*(&v53 + 1) + 8 * v43), v94 + 3);
                  if (v94[3])
                  {
                    break;
                  }

                  if (v41 == ++v43)
                  {
                    v41 = [v40 countByEnumeratingWithState:&v53 objects:v97 count:16];
                    if (v41)
                    {
                      goto LABEL_13;
                    }

                    break;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  _Block_object_dispose(&v93, 8);
}

void __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v9 = [v5 numberWithUnsignedInteger:a2];
  v7 = *(a1 + 32);
  v8 = (*(*(a1 + 40) + 16))();

  [v7 setObject:v9 forKeyedSubscript:v8];
}

uint64_t __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 objectForKeyedSubscript:v2];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

BOOL __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, void *a7, uint64_t a8, CGFloat a9, CGFloat a10)
{
  v49 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v20 = a7;
  v21 = *(a4 + 16);
  v22 = *(a3 + 48);
  PXRectWithCenterAndSize();
  v51 = CGRectOffset(v50, a9, a10);
  v23 = CGRectIntersectsRect(v51, *(a1 + 56));
  if (v23)
  {
    v24 = v22;
    v25 = v21 + v24;
    PXPointSubtract();
    [v19 setFrame:?];
    [v19 setZPosition:-v25];
    [v19 setAlpha:*a5];
    [v19 setPreviewImage:{objc_msgSend(*(a1 + 32), "textureSnapshotForSpriteIndex:", objc_msgSend(*(a1 + 40), "convertSpriteIndex:fromDescendantLayout:", a8, v20))}];
    [v19 setContentsRect:{COERCE_FLOAT(*(a5 + 4)), COERCE_FLOAT(HIDWORD(*(a5 + 4))), COERCE_FLOAT(*(a5 + 12)), COERCE_FLOAT(HIDWORD(*(a5 + 4)))}];
    v26 = CALayerContentsGravityFromPXGContentsGravity(*(a5 + 70));
    [v19 setContentsGravity:v26];

    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = (*(*(a1 + 48) + 16))();
    v29 = a5[7];
    v45 = a5[6];
    v46 = v29;
    v30 = a5[9];
    v47 = a5[8];
    v48 = v30;
    v31 = a5[3];
    v41 = a5[2];
    v42 = v31;
    v32 = a5[5];
    v43 = a5[4];
    v44 = v32;
    v33 = a5[1];
    v39 = *a5;
    v40 = v33;
    v34 = PXGSpriteStyleDescription(&v39);
    v35 = a6[1];
    v39 = *a6;
    v40 = v35;
    *&v41 = *(a6 + 4);
    v36 = PXGSpriteInfoDescription(&v39);
    v37 = [v27 initWithFormat:@"Sprite %u of %@ style:%@ info:%@", a8, v28, v34, v36];
    [v19 setName:v37];
  }

  return v23;
}

void __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_6(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  [v5 contentSize];
  v9 = v8;
  v11 = v10;
  v12 = [v5 superlayout];
  v13 = v12;
  if (v12)
  {
    [v12 convertRect:v5 fromDescendantLayout:{v6, v7, v9, v11}];
    v15 = v14;
    v17 = v16;
    v9 = v18;
    v11 = v19;
  }

  else
  {
    PXPointSubtract();
    v15 = v20;
    v17 = v21;
  }

  [*(a1 + 32) prepareForReuse];
  [*(a1 + 32) setFrame:{v15, v17, v9, v11}];
  v22 = (*(*(a1 + 48) + 16))();
  [*(a1 + 32) setName:v22];

  [*(a1 + 32) setCanHaveChildren:1];
  [*(a1 + 32) setParentIdentifier:(*(*(a1 + 56) + 16))()];
  (*(*(a1 + 64) + 16))();
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  else
  {
    v23 = [*(a1 + 32) identifier];
    (*(*(a1 + 72) + 16))();
    if (*(a1 + 112) == 1)
    {
      [*(a1 + 32) prepareForReuse];
      [*(a1 + 32) setParentIdentifier:v23];
      v24 = [v5 spriteDataStore];
      v25 = [v24 count];
      v26 = [v24 geometries];
      v27 = [v24 styles];
      v28 = [v24 infos];
      [*(a1 + 40) convertPoint:v5 fromLayout:{v6, v7}];
      if (v25)
      {
        v31 = v29;
        v32 = v30;
        v33 = 0;
        while (1)
        {
          if ((*(*(a1 + 80) + 16))(v31, v32, v6, v7))
          {
            (*(*(a1 + 64) + 16))();
            if (*(*(*(a1 + 88) + 8) + 24) == 1)
            {
              break;
            }
          }

          ++v33;
          v28 += 40;
          v27 += 160;
          v26 += 32;
          if (v25 == v33)
          {
            goto LABEL_11;
          }
        }

        *a3 = 1;
      }

LABEL_11:
    }
  }
}

void __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, _BYTE *a9)
{
  v20 = a7;
  [*(a1 + 32) prepareForReuse];
  [*(a1 + 32) setParentIdentifier:*(a1 + 72)];
  v15 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v16 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      if ((*(*(a1 + 48) + 16))(v16, v17, *(a1 + 80), *(a1 + 88)))
      {
        if (*(a1 + 96) == 1)
        {
          v18 = *(a1 + 40);
          v19 = [*(a1 + 32) copy];
          [v18 addObject:v19];
        }

        else
        {
          (*(*(a1 + 56) + 16))();
          if (*(*(*(a1 + 64) + 8) + 24) == 1)
          {
            *a9 = 1;
            break;
          }
        }
      }

      ++a8;
      a6 += 40;
      a5 += 160;
      a4 += 32;
      --v15;
    }

    while (v15);
  }
}

uint64_t __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 zPosition];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 zPosition];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

id __68__PXGView_enumerateDebugHierarchyWithIdentifier_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v2 stringWithFormat:@"%@ (%p)", v5, v3];

  return v6;
}

- (NSArray)debugHierarchyIdentifiers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"PXGViewLayoutsAndSpritesHierarchyIdentifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = [(PXGView *)self description];
  v5 = [v3 initWithString:v4];

  [v5 px_removeSuffix:@">"];
  v6 = [(PXGView *)self rootLayout];
  v7 = [v6 recursiveDescription];
  [v5 appendFormat:@"\nLayout Hierarchy: {\n%@\n}\n", v7];

  v8 = +[PXGSpriteDataStore newSpriteDataStore];
  [v8 setCount:{objc_msgSend(v6, "numberOfSprites")}];
  [v6 copyLayoutForSpritesInRange:objc_msgSend(v8 entities:"count") << 32 geometries:objc_msgSend(v8 styles:"entities") infos:{objc_msgSend(v8, "geometries"), objc_msgSend(v8, "styles"), objc_msgSend(v8, "infos")}];
  v9 = [v8 diagnosticDescription];
  [v5 appendFormat:@"\nSprites: { %@ }\n", v9];

  [v8 recycle];
  [v5 appendString:@"\nDescendant Layouts: {\n"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__PXGView_diagnosticDescription__block_invoke;
  v12[3] = &unk_2782ABA48;
  v10 = v5;
  v13 = v10;
  [v6 enumerateDescendantsLayoutsUsingBlock:v12];
  [v10 appendString:@"}"];
  [v10 appendString:@">"];

  return v10;
}

void __32__PXGView_diagnosticDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 diagnosticDescription];
  [v2 appendFormat:@"%@\n", v3];
}

- (void)_ensureEndAnimatedScroll
{
  [(PXGView *)self setIsAnimatingScrollTowardsEdge:0];

  [(PXGView *)self setScrollingAnimationAnchor:0];
}

- (void)scrollViewControllerWillBeginScrollingAnimation:(id)a3 towardsContentEdges:(unint64_t)a4
{
  v7 = [(PXGView *)self rootLayout];
  [v7 clearLastVisibleAreaAnchoringInformation];
  [(PXGView *)self setIsAnimatingScrollTowardsEdge:1];
  v6 = [v7 createAnchorForScrollingAnimationTowardsContentEdges:a4];
  [(PXGView *)self setScrollingAnimationAnchor:v6];
}

- (void)scrollViewControllerDidEndFocusFastScrolling:(id)a3
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsFocusFastScrolling:0];
}

- (void)scrollViewControllerDidBeginFocusFastScrolling:(id)a3
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsFocusFastScrolling:1];
}

- (void)scrollViewControllerDidEndScrolling:(id)a3
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsScrolling:0];
}

- (void)scrollViewControllerWillBeginScrolling:(id)a3
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsScrolling:1];
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v5 = a3;
  if (-[PXGView isScrolling](self, "isScrolling") || -[PXGView isFocusFastScrolling](self, "isFocusFastScrolling") || -[PXGView isAnimatingScrollTowardsEdge](self, "isAnimatingScrollTowardsEdge") || [v5 isAnimatingScroll])
  {
    v4 = [(PXGView *)self rootLayout];
    [v4 clearLastVisibleAreaAnchoringInformation];
  }

  [(PXGView *)self _realignMetalViewIfNecessaryForScrollViewController:v5];
}

- (void)scrollViewControllerDidLayoutSubviews:(id)a3
{
  v6 = a3;
  v4 = [(PXGView *)self updater];
  [v4 updateIfNeeded];

  v5 = [(PXGView *)self nextDidLayoutHandler];
  if (v5)
  {
    [(PXGView *)self setNextDidLayoutHandler:0];
    v5[2](v5);
  }

  [(PXGView *)self _realignMetalViewIfNecessaryForScrollViewController:v6];
}

- (void)setSlowAnimationsEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXGView *)self engine];
  [v4 setSlowAnimationsEnabled:v3];
}

- (BOOL)slowAnimationsEnabled
{
  v2 = [(PXGView *)self engine];
  v3 = [v2 slowAnimationsEnabled];

  return v3;
}

- (void)_updateEngineCanBlockMainThreadIfNeeded
{
  v3 = [(PXGView *)self canBlockMainThreadIfNeeded]|| [(PXGView *)self isSceneResumingFromBackground];
  v4 = [(PXGView *)self engine];
  [v4 setCanBlockMainThreadIfNeeded:v3];
}

- (void)setCanBlockMainThreadIfNeeded:(BOOL)a3
{
  if (self->_canBlockMainThreadIfNeeded != a3)
  {
    self->_canBlockMainThreadIfNeeded = a3;
    [(PXGView *)self _updateEngineCanBlockMainThreadIfNeeded];
  }
}

- (void)engine:(id)a3 updateDebugHUDWithStats:(id *)a4
{
  [(PXGDebugHUDLayer *)self->_debugHUDLayer updateDebugHUDWithStats:a4];
  if (self->_rectDiagnosticsLayer)
  {
    v5 = [(PXGView *)self rootLayout];
    [(PXGRectDiagnosticsLayer *)self->_rectDiagnosticsLayer setLayout:v5];

    rectDiagnosticsLayer = self->_rectDiagnosticsLayer;

    [(PXGRectDiagnosticsLayer *)rectDiagnosticsLayer update];
  }
}

- (void)engineSetNeedsUpdate:(id)a3
{
  v3 = [a3 scrollController];
  [v3 setNeedsUpdate];
}

- (void)handlePan:(id)a3
{
  v5 = a3;
  if ([v5 state] == 2)
  {
    [v5 translationInView:self];
    [PXTungstenSettings setPerspectiveAngle:?];
    v4 = [(PXGView *)self rootLayout];
    [v4 setNeedsUpdate];
  }
}

- (void)setShowPerspectiveDebug:(BOOL)a3
{
  if (self->_showPerspectiveDebug != a3)
  {
    self->_showPerspectiveDebug = a3;
    [PXTungstenSettings setWantsPerspectiveDebug:?];
    v5 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePan_];
    [v5 setMaximumNumberOfTouches:1];
    [v5 setDelegate:self];
    [(PXGView *)self addGestureRecognizer:v5];
  }
}

- (void)setShowDebugHUD:(BOOL)a3
{
  if (self->_showDebugHUD != a3)
  {
    v3 = a3;
    self->_showDebugHUD = a3;
    [(PXGDebugHUDLayer *)self->_debugHUDLayer removeFromSuperlayer];
    [(PXGRectDiagnosticsLayer *)self->_rectDiagnosticsLayer removeFromSuperlayer];
    debugHUDLayer = self->_debugHUDLayer;
    self->_debugHUDLayer = 0;

    rectDiagnosticsLayer = self->_rectDiagnosticsLayer;
    self->_rectDiagnosticsLayer = 0;

    if (v3)
    {
      v7 = +[PXGDebugHUDLayer layer];
      v8 = self->_debugHUDLayer;
      self->_debugHUDLayer = v7;

      v9 = [(PXGView *)self scrollViewController];
      v10 = [v9 scrollView];
      [v10 safeAreaInsets];
      v12 = v11;
      v14 = v13;

      [(PXGDebugHUDLayer *)self->_debugHUDLayer setFrame:v14, v12, 100.0, 100.0];
      v15 = [(PXGView *)self layer];
      [v15 addSublayer:self->_debugHUDLayer];

      v16 = [(PXGView *)self rootLayout];
      [v16 displayScale];
      [(PXGDebugHUDLayer *)self->_debugHUDLayer setContentsScale:?];

      v17 = [(PXGView *)self engine];
      [v17 setStatsTrackingEnabled:1];

      [(PXGView *)self _updateRectDiagnosticsLayer];
    }
  }
}

- (void)setDiagnosticsSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_diagnosticsSource, obj);
    [(PXGView *)self _updateRectDiagnosticsLayer];
    v5 = obj;
  }
}

- (CGImage)textureSnapshotForSpriteReference:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self rootLayout];
  v6 = [v5 spriteIndexForSpriteReference:v4];

  v7 = [(PXGView *)self engine];
  v8 = [v7 textureManager];
  v9 = [v8 textureSnapshotForSpriteIndex:v6];

  return v9;
}

- (BOOL)isObjectReference:(id)a3 visuallyBeforeObjectReference:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v47 = [MEMORY[0x277CCA890] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1786 description:{@"Invalid parameter not satisfying: %@", @"objectReference1"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:
    v48 = [MEMORY[0x277CCA890] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1787 description:{@"Invalid parameter not satisfying: %@", @"objectReference2"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v10 = [(PXGView *)self regionOfInterestForObjectReference:v7];
  v11 = [(PXGView *)self regionOfInterestForObjectReference:v9];
  v12 = v11;
  if (v10 && v11)
  {
    [v10 rectInCoordinateSpace:self];
    PXRectRoundToPixel();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 rectInCoordinateSpace:self];
    PXRectRoundToPixel();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(PXGView *)self rootLayout];
    v30 = [v29 userInterfaceDirection];

    if (v30 == 1)
    {
      v31 = [(PXGView *)self bounds];
      v32 = v20;
      v34 = v33;
      v35 = v18;
      v37 = v36;
      v38 = v16;
      v40 = v39;
      v41 = v14;
      v43 = v42;
      MEMORY[0x21CEE3630](v31, v41, v38, v35, v32, v34, v37, v39, v42);
      MEMORY[0x21CEE3630](v22, v24, v26, v28, v34, v37, v40, v43);
    }

    v44 = PXRectCompareForHorizontalMovementInVerticalLayout() != 1;
  }

  else
  {
    v45 = PXGTungstenGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = v7;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&dword_21AD38000, v45, OS_LOG_TYPE_ERROR, "Couldn't find region of interests for visual comparison of %@ with %@", buf, 0x16u);
    }

    v44 = 1;
  }

  return v44;
}

- (id)regionOfInterestForObjectReference:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self rootLayout];
  v6 = [v5 spriteReferenceForObjectReference:v4];

  v7 = [(PXGView *)self regionOfInterestForSpriteReference:v6];

  return v7;
}

- (id)regionOfInterestForHitTestResult:(id)a3
{
  v4 = [a3 spriteReference];
  v5 = [(PXGView *)self regionOfInterestForSpriteReference:v4];

  return v5;
}

- (id)regionOfInterestForSpriteReference:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(PXGView *)self engine];
    v6 = [v5 layout];

    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v26 = xmmword_21AE2E2C0;
      v27 = unk_21AE2E2D0;
      v28 = xmmword_21AE2E2E0;
      v29 = unk_21AE2E2F0;
      v22 = xmmword_21AE2E280;
      v23 = unk_21AE2E290;
      v24 = xmmword_21AE2E2A0;
      v25 = unk_21AE2E2B0;
      v20 = PXGSpriteStyleDefault;
      v21 = unk_21AE2E270;
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v7 = [(PXGView *)self engine];
      v8 = [v7 copyPresentedSpriteFor:v4 geometry:&v17 style:&v20 info:v15];

      v9 = 0;
      if (v8)
      {
        v10 = [(PXGView *)self scrollViewController];
        v11 = [v10 contentCoordinateSpace];

        v14[0] = v17;
        v14[1] = v18;
        v19[6] = v26;
        v19[7] = v27;
        v19[8] = v28;
        v19[9] = v29;
        v19[2] = v22;
        v19[3] = v23;
        v19[4] = v24;
        v19[5] = v25;
        v19[0] = v20;
        v19[1] = v21;
        v9 = PXGRegionOfInterestForSprite(v14, v19, v12, v11);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGRect)convertRect:(CGRect)a3 fromLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PXGView *)self rootLayout];
  [v10 convertRect:v9 fromLayout:{x, y, width, height}];

  v11 = [(PXGView *)self scrollViewController];
  v12 = [v11 contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toLayout:(id)a4
{
  v5 = a4;
  v6 = [(PXGView *)self scrollViewController];
  v7 = [v6 contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(PXGView *)self rootLayout];
  [v5 convertRect:v16 fromLayout:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXGView *)self rootLayout];
  [v8 convertPoint:v7 fromLayout:{x, y}];

  v9 = [(PXGView *)self scrollViewController];
  v10 = [v9 contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toLayout:(id)a4
{
  v5 = a4;
  v6 = [(PXGView *)self scrollViewController];
  v7 = [v6 contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;

  v12 = [(PXGView *)self rootLayout];
  [v5 convertPoint:v12 fromLayout:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (id)dropTargetObjectReferenceForLocation:(CGPoint)a3
{
  v4 = [(PXGView *)self rootLayout];
  v5 = [v4 userInterfaceDirection];

  if (v5 == 1)
  {
    [(PXGView *)self bounds];
  }

  v6 = [(PXGView *)self scrollViewController];
  v7 = [v6 contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;

  v12 = [(PXGView *)self rootLayout];
  v13 = [v12 dropTargetObjectReferenceForLocation:{v9, v11}];

  return v13;
}

- (id)hitTestResultsInDirection:(unint64_t)a3 fromSpriteReference:(id)a4
{
  v6 = a4;
  v7 = [(PXGView *)self rootLayout];
  v8 = [(PXGView *)self regionOfInterestForSpriteReference:v6];

  [v8 rectInCoordinateSpace:self];
  PXRectShrinkToPixel();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = 0;
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        v18 = v16;
        v19 = v14;
        MinY = v12;
        v21 = v10;
        if (a3 != 3)
        {
          goto LABEL_13;
        }

        v21 = v10 - v14;
        v17 = 1;
        goto LABEL_12;
      }

LABEL_10:
      [v7 referenceSize];
      v19 = v25;
      v18 = v26;
      v50.origin.x = v10;
      v50.origin.y = v12;
      v50.size.width = v14;
      v50.size.height = v16;
      MinY = CGRectGetMinY(v50);
      v17 = 0;
      v21 = 0.0;
      goto LABEL_13;
    }

LABEL_9:
    [v7 referenceSize];
    v19 = v22;
    v18 = v23;
    v48.origin.x = v10;
    v48.origin.y = v12;
    v48.size.width = v14;
    v48.size.height = v16;
    MaxY = CGRectGetMaxY(v48);
    v49.origin.x = v10;
    v49.origin.y = v12;
    v49.size.width = v19;
    v49.size.height = v18;
    MinY = MaxY - CGRectGetHeight(v49);
    v21 = 0.0;
    v17 = 1;
    goto LABEL_13;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      goto LABEL_10;
    }

    v18 = v16;
    v19 = v14;
    MinY = v12;
    v21 = v10;
    if (a3 != 6)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v17 = 0;
  v21 = v10 + v14;
LABEL_12:
  v18 = v16;
  v19 = v14;
  MinY = v12;
LABEL_13:
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke;
  v46[3] = &unk_2782AB9A8;
  v46[4] = self;
  v27 = MEMORY[0x21CEE40A0](v46);
  v28 = [(PXGView *)self rootLayout];
  v29 = [v28 userInterfaceDirection] == 1;

  v30 = v27[2](v27, v10, v12, v14, v16);
  v31 = v27[2](v27, v21, MinY, v19, v18);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_3;
  v43[3] = &unk_2782AB9D0;
  *&v43[5] = v10;
  *&v43[6] = v12;
  *&v43[7] = v14;
  *&v43[8] = v16;
  v43[4] = self;
  v44 = v17;
  v45 = v29;
  v43[9] = a3;
  v32 = [v31 sortedArrayUsingComparator:v43];
  v33 = [v30 firstObject];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_5;
  v41[3] = &unk_2782AB9F8;
  v42 = v33;
  v34 = v33;
  v35 = [v32 indexOfObjectPassingTest:v41];
  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v36 = [v32 subarrayWithRange:{v35 + 1, objc_msgSend(v32, "count") - (v35 + 1)}];
  }

  v40 = v7;
  v37 = v7;
  v38 = PXMap();

  return v38;
}

id __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) scrollViewController];
  v4 = [v3 contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [*(a1 + 32) engine];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_2;
  v16[3] = &unk_2782AB980;
  v14 = v2;
  v17 = v14;
  [v13 enumerateSpritesInRect:v16 usingBlock:{v6, v8, v10, v12}];

  return v14;
}

uint64_t __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = a3;
  v8 = [v5 scrollViewController];
  v9 = [v8 contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();

  [v6 rect];
  PXRectRoundToPixel();
  [v7 rect];

  PXRectRoundToPixel();
  if ((*(a1 + 72) - 1) <= 1)
  {
    return PXRectCompareForVerticalMovementInVerticalLayoutWithSourceRect();
  }

  return PXRectCompareForHorizontalMovementInVerticalLayout();
}

BOOL __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_5(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = [a2 tag];
  return v3 == [*(a1 + 32) tag];
}

uint64_t __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 tag];

  return [v2 hitTestResultForSpriteIndex:v3];
}

void __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3, float *a4, _BYTE *a5)
{
  v8 = *a4 > 0.0;
  v9 = a5[1];
  if (v9 == 8)
  {
    v8 = *a4 > 0.0 && *a5 == 1;
  }

  v11 = *(a3 + 24);
  if (*&v11 >= *(&v11 + 1))
  {
    LODWORD(v11) = HIDWORD(*(a3 + 24));
  }

  if (v9 == 2 && *&v11 > 1.0 && (a5[34] & 2) == 0 && v8)
  {
    v15 = objc_alloc(MEMORY[0x277D3CDF0]);
    v16 = *(a3 + 24);
    v17 = vmul_f32(v16, 0x3F0000003F000000);
    v18 = [v15 initWithRect:a2 tag:{*a3 - v17.f32[0], *(a3 + 8) - v17.f32[1], v16.f32[0], v16.f32[1]}];
    [*(a1 + 32) addObject:v18];
  }
}

- (id)hitTestResultsInRect:(CGRect)a3 passingTest:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [(PXGView *)self scrollViewController];
  v9 = [v8 contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(PXGView *)self rootLayout];
  if (!v18)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1611 description:@"can't do hit testing without a layout"];
  }

  v19 = [(PXGView *)self engine];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__PXGView_hitTestResultsInRect_passingTest___block_invoke;
  v26[3] = &unk_2782AB958;
  v28 = v7;
  v29 = v6;
  v27 = v18;
  v20 = v7;
  v21 = v18;
  v22 = v6;
  [v19 enumerateSpritesInRect:v26 usingBlock:{v11, v13, v15, v17}];

  v23 = [v20 copy];

  return v23;
}

void __44__PXGView_hitTestResultsInRect_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, _BYTE *a5, uint64_t a6)
{
  v8 = *a4 > 0.0;
  if (a5[1] == 8)
  {
    v8 = *a4 > 0.0 && *a5 == 1;
  }

  v10 = *(a3 + 24);
  if (*&v10 >= *(&v10 + 1))
  {
    LODWORD(v10) = HIDWORD(*(a3 + 24));
  }

  if (*&v10 > 1.0 && (a5[34] & 2) == 0 && v8)
  {
    v13 = *(a1 + 48);
    if (!v13 || (*(v13 + 16))(v13, a2, *(a1 + 32), a6))
    {
      v14 = [*(a1 + 32) hitTestResultForSpriteIndex:a2];
      if (v14)
      {
        v15 = v14;
        [*(a1 + 40) addObject:v14];
        v14 = v15;
      }
    }
  }
}

- (id)hitTestResultsAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4 passingTest:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  y = a3.y;
  x = a3.x;
  v56 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = [(PXGView *)self rootLayout];
  if (!v14)
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1571 description:@"can't do hit testing without a layout"];
  }

  [(PXGView *)self convertPoint:v14 toLayout:x, y];
  v16 = v15;
  v18 = v17;
  PXRectWithEdges();
  v20 = v19;
  v22 = v21;
  v39 = v24;
  v40 = v23;
  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [(PXGView *)self engine];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __53__PXGView_hitTestResultsAtPoint_padding_passingTest___block_invoke;
  v45[3] = &unk_2782AB930;
  v27 = v13;
  v48 = v27;
  v28 = v14;
  v46 = v28;
  v49 = top;
  v50 = left;
  v51 = bottom;
  v52 = right;
  v53 = v16;
  v54 = v18;
  v29 = v25;
  v47 = v29;
  [v26 enumerateSpritesInRect:v45 usingBlock:{v20, v22, v40, v39}];

  [v29 sortUsingSelector:sel_compare_];
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v29, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v42;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [v28 hitTestResultForSpriteIndex:{*objc_msgSend(*(*(&v41 + 1) + 8 * i), "hitInfo")}];
        if (v36)
        {
          [v30 addObject:v36];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v33);
  }

  return v30;
}

void __53__PXGView_hitTestResultsAtPoint_padding_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, _BYTE *a5, uint64_t a6)
{
  v7 = a2;
  v9 = *a4 > 0.0;
  if (a5[1] == 8)
  {
    v9 = *a4 > 0.0 && *a5 == 1;
  }

  v11 = *(a3 + 24);
  v12 = *(&v11 + 1);
  if (*&v11 < *(&v11 + 1))
  {
    v12 = *&v11;
  }

  if (v12 > 1.0 && (a5[34] & 2) == 0 && v9)
  {
    v15 = *(a1 + 48);
    if (!v15 || (*(v15 + 16))(v15, a2, *(a1 + 32), a6))
    {
      PXRectWithCenterAndSize();
      PXEdgeInsetsInvert();
      PXEdgeInsetsInsetRect();
      v21 = objc_alloc_init(PXGHitInfoObject);
      v16 = v21;
      v17 = [(PXGHitInfoObject *)v21 hitInfo];
      *v17 = v7;
      v18 = *(a3 + 16);
      *(v17 + 24) = *a3;
      *(v17 + 40) = v18;
      PXRectShortestDistanceToPoint();
      *(v17 + 8) = v19;
      PXRectShortestDistanceToPoint();
      *(v17 + 16) = v20;
      [*(a1 + 40) addObject:v21];
    }
  }
}

- (id)hitTestResultsAtPoint:(CGPoint)a3 withIdentifiers:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(PXGView *)self hitTestPadding];
  v12 = [(PXGView *)self hitTestResultsAtPoint:0 padding:x passingTest:y, v8, v9, v10, v11];
  v13 = MEMORY[0x277CCAC30];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__PXGView_hitTestResultsAtPoint_withIdentifiers___block_invoke;
  v18[3] = &unk_2782AB908;
  v19 = v7;
  v14 = v7;
  v15 = [v13 predicateWithBlock:v18];
  v16 = [v12 filteredArrayUsingPredicate:v15];

  return v16;
}

uint64_t __49__PXGView_hitTestResultsAtPoint_withIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)hitTestResultsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PXGView *)self hitTestPadding];

  return [(PXGView *)self hitTestResultsAtPoint:0 padding:x passingTest:y, v6, v7, v8, v9];
}

- (id)hitTestResultAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4 passingTest:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  y = a3.y;
  x = a3.x;
  v13 = a5;
  v14 = [(PXGView *)self rootLayout];
  if (!v14)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1515 description:@"can't do hit testing without a layout"];
  }

  [(PXGView *)self convertPoint:v14 toLayout:x, y];
  v16 = v15;
  v18 = v17;
  PXRectWithEdges();
  v31 = v20;
  v32 = v19;
  v22 = v21;
  v24 = v23;
  v43 = 0;
  v44 = &v43;
  v45 = 0x5810000000;
  v46 = "";
  v47 = 0xFFFFFFFFLL;
  v48 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v49 = 0u;
  v50 = 0u;
  v25 = [(PXGView *)self engine];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __52__PXGView_hitTestResultAtPoint_padding_passingTest___block_invoke;
  v33[3] = &unk_2782AB8E0;
  v37 = top;
  v38 = left;
  v39 = bottom;
  v40 = right;
  v41 = v16;
  v42 = v18;
  v36 = &v43;
  v26 = v13;
  v35 = v26;
  v27 = v14;
  v34 = v27;
  [v25 enumerateSpritesInRect:v33 usingBlock:{v32, v31, v22, v24}];

  if (*(v44 + 8) == -1)
  {
    v28 = 0;
  }

  else
  {
    v28 = [v27 hitTestResultForSpriteIndex:?];
  }

  _Block_object_dispose(&v43, 8);

  return v28;
}

uint64_t __52__PXGView_hitTestResultAtPoint_padding_passingTest___block_invoke(uint64_t result, uint64_t a2, __int128 *a3, float *a4, _BYTE *a5, uint64_t a6)
{
  v9 = result;
  v10 = *a4 > 0.0;
  if (a5[1] == 8)
  {
    v10 = *a4 > 0.0 && *a5 == 1;
  }

  v12 = *(a3 + 3);
  if (*&v12 >= *(&v12 + 1))
  {
    LODWORD(v13) = HIDWORD(*(a3 + 3));
  }

  else
  {
    v13 = *&v12;
  }

  if (v13 > 1.0 && (a5[34] & 2) == 0 && v10)
  {
    PXRectWithCenterAndSize();
    PXEdgeInsetsInvert();
    PXEdgeInsetsInsetRect();
    PXRectShortestDistanceToPoint();
    v17 = v16;
    result = PXRectShortestDistanceToPoint();
    v19 = v18;
    v26 = *a3;
    v20 = *(a3 + 2);
    v21 = *(a3 + 3);
    v22 = *(v9[6] + 8);
    v23 = *(v22 + 40);
    if (v17 < v23 || v17 == v23 && ((v24 = *(v22 + 72), v20 < v24) || v20 == v24 && ((v25 = *(v22 + 48), v19 < v25) || v19 == v25 && *(v22 + 32) < a2)))
    {
      result = v9[5];
      if (result)
      {
        result = (*(result + 16))(result, a2, v9[4], a6);
        if (!result)
        {
          return result;
        }

        v22 = *(v9[6] + 8);
      }

      *(v22 + 32) = a2;
      *(v22 + 36) = 0;
      *(v22 + 40) = v17;
      *(v22 + 48) = v19;
      *(v22 + 56) = v26;
      *(v22 + 72) = v20;
      *(v22 + 80) = v21;
    }
  }

  return result;
}

- (id)hitTestResultAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PXGView *)self hitTestPadding];

  return [(PXGView *)self hitTestResultAtPoint:0 padding:x passingTest:y, v6, v7, v8, v9];
}

- (void)disablePreheating
{
  v5 = +[PXGTextureManagerPreheatingStrategy noPreheatingStrategy];
  v3 = [(PXGView *)self engine];
  v4 = [v3 textureManager];
  [v4 setPreheatingStrategy:v5];
}

- (void)setScrollingAnimationAnchor:(id)a3
{
  v5 = a3;
  scrollingAnimationAnchor = self->_scrollingAnimationAnchor;
  if (scrollingAnimationAnchor != v5)
  {
    v7 = scrollingAnimationAnchor;
    objc_storeStrong(&self->_scrollingAnimationAnchor, a3);
    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __39__PXGView_setScrollingAnimationAnchor___block_invoke;
      v8[3] = &unk_2782ABE50;
      v9 = v7;
      [(PXGView *)self installLayoutCompletionHandler:v8];
    }
  }
}

- (void)_installNextDidLayoutHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self nextDidLayoutHandler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PXGView__installNextDidLayoutHandler___block_invoke;
  v8[3] = &unk_2782AB8B8;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(PXGView *)self setNextDidLayoutHandler:v8];
}

uint64_t __40__PXGView__installNextDidLayoutHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_updateEngineLowPowerMode
{
  v3 = [(PXGView *)self lowPowerModeEnabled];
  v4 = [(PXGView *)self engine];
  [v4 setLowPowerMode:v3];
}

- (void)_updateEngineLowMemoryMode
{
  v3 = [(PXGView *)self lowMemoryModeEnabled];
  v4 = [(PXGView *)self engine];
  [v4 setLowMemoryMode:v3];

  v5 = [(PXGView *)self allowLargerImagesDuringScrollingInLowMemoryMode];
  v6 = [(PXGView *)self engine];
  [v6 setAllowLargerImagesDuringScrollingInLowMemoryMode:v5];
}

- (void)setShouldReleaseResourcesWhenInvisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXGView *)self engine];
  [v4 setShouldReleaseResourcesWhenInvisible:v3];
}

- (BOOL)shouldReleaseResourcesWhenInvisible
{
  v2 = [(PXGView *)self engine];
  v3 = [v2 shouldReleaseResourcesWhenInvisible];

  return v3;
}

- (void)installAnimationRenderingCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PXGView *)self engine];
    v6 = [v5 animationRenderingCompletionHandler];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__PXGView_installAnimationRenderingCompletionHandler___block_invoke;
    v8[3] = &unk_2782AB8B8;
    v9 = v6;
    v10 = v4;
    v7 = v6;
    [v5 setAnimationRenderingCompletionHandler:v8];
  }
}

uint64_t __54__PXGView_installAnimationRenderingCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)installRenderingCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PXGView *)self engine];
    v6 = [v5 renderingCompletionHandler];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__PXGView_installRenderingCompletionHandler___block_invoke;
    v8[3] = &unk_2782AB8B8;
    v9 = v6;
    v10 = v4;
    v7 = v6;
    [v5 setRenderingCompletionHandler:v8];
  }
}

uint64_t __45__PXGView_installRenderingCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)registerAllTextureProvidersWithMediaProvider:(id)a3 namedImagesBundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXGView *)self engine];
  [v8 registerAllTextureProvidersWithMediaProvider:v7 namedImagesBundle:v6];
}

- (void)registerAllTextureProvidersWithMediaProvider:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self engine];
  [v5 registerAllTextureProvidersWithMediaProvider:v4 namedImagesBundle:0];
}

- (void)registerTextureProvider:(id)a3 forMediaKind:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXGView *)self engine];
  [v7 registerTextureProvider:v6 forMediaKind:v4];
}

- (void)setRootLayout:(id)a3
{
  v4 = a3;
  v5 = [(PXGView *)self engine];
  v6 = [v5 layout];

  v7 = [v6 scrollDelegate];

  if (v7)
  {
    v8 = [v6 scrollDelegate];

    if (v8 != self)
    {
      v9 = PXAssertGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21AD38000, v9, OS_LOG_TYPE_ERROR, "unexpected scrollDelegate of rootLayout", buf, 2u);
      }
    }

    [v6 setScrollDelegate:0];
  }

  v10 = [v6 viewDelegate];

  if (v10)
  {
    v11 = [v6 viewDelegate];

    if (v11 != self)
    {
      v12 = PXAssertGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_21AD38000, v12, OS_LOG_TYPE_ERROR, "unexpected viewDelegate of rootLayout", v18, 2u);
      }
    }

    [v6 setViewDelegate:0];
  }

  v13 = [v6 focusDelegate];

  if (v13)
  {
    v14 = [v6 focusDelegate];

    if (v14 != self)
    {
      v15 = PXAssertGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_21AD38000, v15, OS_LOG_TYPE_ERROR, "unexpected focusDelegate of rootLayout", v17, 2u);
      }
    }

    [v6 setFocusDelegate:0];
  }

  v16 = [(PXGView *)self engine];
  [v16 setLayout:v4];

  [(PXGView *)self _updateLayoutScreenProperties];
  [(PXGView *)self _updateUserInterfaceDirection];
  [(PXGView *)self _updateLayoutViewEnvironment];
  [(PXGView *)self _updateFocusItemProvider];
  [(PXGView *)self _updateDebugHUD];
  [v4 setScrollDelegate:self];
  [v4 setViewDelegate:self];
  [v4 setFocusDelegate:self];

  [(PXGView *)self _invalidateScrollableAxis];
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXGView;
  [(PXGView *)&v4 setHidden:a3];
  [(PXGView *)self _updateIsVisible];
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self->_backgroundColor;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColor, a3);
      [(PXGView *)self _updateMetalView];
      v9.receiver = self;
      v9.super_class = PXGView;
      [(PXGView *)&v9 setBackgroundColor:v5];
    }
  }
}

- (void)setContentShouldBeObscured:(BOOL)a3
{
  if (self->_contentShouldBeObscured != a3)
  {
    self->_contentShouldBeObscured = a3;
    [(PXGView *)self _updateMetalView];
  }
}

- (void)_updateInvertColors
{
  [(PXGView *)self _updateMetalView];

  [(PXGView *)self _updateWolfRendererInvertColors];
}

- (void)_updateAccessibility
{
  v3 = PXGTungstenGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21AD38000, v3, OS_LOG_TYPE_DEFAULT, "Accessibility Enabled", v6, 2u);
  }

  [(PXGView *)self setIsAccessibilityEnabled:1];
  [(PXGView *)self _updateLayoutViewEnvironment];
  v4 = [(PXGView *)self engine];
  v5 = [v4 layout];
  [v5 setNeedsUpdate];
}

- (NSString)preferredFileNameForExportingDebugHierarchy
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v3 initWithFormat:@"%@-%p-%lx.caar", v5, self, objc_msgSend(v6, "hash")];

  return v7;
}

- (id)preferredFocusEnvironments
{
  v2 = [(PXGView *)self rootLayout];
  v3 = PXGDeepestPreferredFocusEnvironmentsForLayout(v2);

  return v3;
}

- (void)setEnableUnderlaySupport:(BOOL)a3
{
  if (self->_enableUnderlaySupport != a3)
  {
    self->_enableUnderlaySupport = a3;
    [(PXGView *)self _updateMetalView];
  }
}

- (void)notifyContentFullyLoadedWithTimeout:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(PXGView *)self engine];
  [v7 notifyContentFullyLoadedWithTimeout:v6 block:a3];
}

- (void)setMinimumSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_minimumSafeAreaInsets.top, v3), vceqq_f64(*&self->_minimumSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_minimumSafeAreaInsets = a3;
    [(PXGView *)self safeAreaInsetsDidChange];
  }
}

- (void)setAdditionalSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalSafeAreaInsets.top), vceqq_f64(v4, *&self->_additionalSafeAreaInsets.bottom)))) & 1) == 0)
  {
    self->_additionalSafeAreaInsets = a3;
    [(PXGView *)self safeAreaInsetsDidChange];
  }
}

- (void)setIsSceneResumingFromBackground:(BOOL)a3
{
  if (self->_isSceneResumingFromBackground != a3)
  {
    self->_isSceneResumingFromBackground = a3;
    if (a3)
    {
      objc_initWeak(&location, self);
      v4 = MEMORY[0x277D85DD0];
      v5 = 3221225472;
      v6 = __44__PXGView_setIsSceneResumingFromBackground___block_invoke;
      v7 = &unk_2782AB888;
      objc_copyWeak(&v8, &location);
      px_perform_on_main_runloop();
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    [(PXGView *)self _updateEngineCanBlockMainThreadIfNeeded:v4];
  }
}

void __44__PXGView_setIsSceneResumingFromBackground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsSceneResumingFromBackground:0];
}

- (void)setIsSceneBackgrounded:(BOOL)a3
{
  isSceneBackgrounded = self->_isSceneBackgrounded;
  if (isSceneBackgrounded != a3)
  {
    self->_isSceneBackgrounded = a3;
    [(PXGView *)self setIsSceneResumingFromBackground:isSceneBackgrounded];

    [(PXGView *)self _updateIsVisible];
  }
}

- (void)_handleSceneWillEnterForeground:(id)a3
{
  v5 = [a3 object];
  v4 = [(PXGView *)self windowScene];
  if (v5 == v4)
  {
    [(PXGView *)self setIsSceneBackgrounded:0];
  }
}

- (void)_handleSceneDidEnterBackground:(id)a3
{
  v5 = [a3 object];
  v4 = [(PXGView *)self windowScene];
  if (v5 == v4)
  {
    [(PXGView *)self setIsSceneBackgrounded:1];
  }
}

- (void)setCustomAssetImageViewClassConfigurator:(id)a3
{
  v6 = a3;
  v4 = MEMORY[0x21CEE40A0]();
  customAssetImageViewClassConfigurator = self->_customAssetImageViewClassConfigurator;
  self->_customAssetImageViewClassConfigurator = v4;

  [(PXGViewRenderer *)self->_viewRenderer setCustomAssetImageViewClassConfigurator:v6];
}

- (void)setCustomAssetImageViewClass:(Class)a3
{
  objc_storeStrong(&self->_customAssetImageViewClass, a3);
  viewRenderer = self->_viewRenderer;

  [(PXGViewRenderer *)viewRenderer setCustomAssetImageViewClass:a3];
}

- (void)setOffscreenEffectQuality:(unint64_t)a3
{
  if (self->_offscreenEffectQuality != a3)
  {
    self->_offscreenEffectQuality = a3;
    if (a3 == 1)
    {
      v9 = 0.25;
    }

    else if (a3 == 2)
    {
      v9 = 0.5;
    }

    else
    {
      v9 = 1.0;
      if (!a3)
      {
        v14 = v4;
        v15 = v3;
        v12 = [MEMORY[0x277CCA890] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:684 description:@"Code which should be unreachable has been reached"];

        abort();
      }
    }

    metalRenderer = self->_metalRenderer;

    [(PXGMetalRenderer *)metalRenderer setOffscreenEffectScale:v9];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  if (self->_lowPowerModeEnabled != a3)
  {
    self->_lowPowerModeEnabled = a3;
    [(PXGView *)self _updateEngineLowPowerMode];
  }
}

- (void)setLowMemoryModeEnabled:(BOOL)a3
{
  if (self->_lowMemoryModeEnabled != a3)
  {
    self->_lowMemoryModeEnabled = a3;
    [(PXGView *)self _updateEngineLowMemoryMode];
  }
}

- (void)setDisableMetalViewDisplayCompositing:(BOOL)a3
{
  if (self->_disableMetalViewDisplayCompositing != a3)
  {
    v4 = a3;
    self->_disableMetalViewDisplayCompositing = a3;
    v5 = [(PXGView *)self engine];
    [v5 setDisableMetalViewDisplayCompositing:v4];
  }
}

- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)a3
{
  if (self->_allowLargerImagesDuringScrollingInLowMemoryMode != a3)
  {
    self->_allowLargerImagesDuringScrollingInLowMemoryMode = a3;
    [(PXGView *)self _updateEngineLowMemoryMode];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v11.receiver = self;
  v11.super_class = PXGView;
  v6 = a3;
  [(PXGView *)&v11 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 previouslyFocusedItem];
  v8 = [(PXGView *)self px_isAncestorOfFocusEnvironment:v7];

  v9 = [v6 nextFocusedItem];

  v10 = [(PXGView *)self px_isAncestorOfFocusEnvironment:v9];
  if ((v8 & 1) != 0 || v10)
  {
    [(PXGView *)self _updateLayoutViewEnvironment];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXGView;
  v4 = a3;
  [(PXGView *)&v7 traitCollectionDidChange:v4];
  v5 = [(PXGView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {
    [(PXGView *)self _updateMetalView];
  }

  [(PXGView *)self _updateLayoutViewEnvironment];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PXGView;
  [(PXGView *)&v3 tintColorDidChange];
  [(PXGView *)self _updateLayoutViewEnvironment];
}

- (void)setShouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea:(BOOL)a3
{
  if (self->_shouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea != a3)
  {
    v4 = a3;
    self->_shouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea = a3;
    v5 = [(PXGView *)self scrollViewController];
    v7 = [v5 scrollView];

    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    [v7 setContentInsetAdjustmentBehavior:v6];
    [v7 _setAutomaticContentOffsetAdjustmentEnabled:v4];
    [v7 _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:v4 ^ 1];
  }
}

- (void)_willChangeBoundsSizeFrom:(CGRect)a3 toBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v140 = *MEMORY[0x277D85DE8];
  v73 = [(PXGView *)self metalView];
  v13 = [(PXGView *)self entityHostingView];
  if (v13)
  {
    v14 = [(PXGView *)self entityHostingView];
    [v14 frame];
    v78 = v16;
    v80 = v15;
    v74 = v18;
    v76 = v17;
  }

  else
  {
    [v73 frame];
    v78 = v20;
    v80 = v19;
    v74 = v22;
    v76 = v21;
  }

  if (![(PXGView *)self shouldWorkaround18475431]|| (v141.origin.x = v11, v141.origin.y = v10, v141.size.width = v9, v141.size.height = v8, CGRectGetWidth(v141), v142.origin.x = x, v142.origin.y = y, v142.size.width = width, v142.size.height = height, CGRectGetWidth(v142), (PXFloatApproximatelyEqualToFloat() & 1) == 0))
  {
    v143.origin.x = x;
    v143.origin.y = y;
    v143.size.width = width;
    v143.size.height = height;
    v144.origin.y = v78;
    v144.origin.x = v80;
    v144.size.height = v74;
    v144.size.width = v76;
    if (!CGRectEqualToRect(v143, v144))
    {
      v23 = [(PXGView *)self rootLayout];
      v24 = [v23 createAnchorForVisibleArea];
      v25 = [v24 autoInvalidate];

      v26 = [(PXGView *)self engine];
      [v26 allowSecondRenderThisFrame];

      v71 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      v27 = [(PXGView *)self metalView];

      if (v27)
      {
        v28 = [(PXGView *)self metalView];
        [v71 addObject:v28];
      }

      v29 = [(PXGView *)self entityHostingView];

      if (v29)
      {
        v30 = [(PXGView *)self entityHostingView];
        [v71 addObject:v30];
      }

      v70 = [MEMORY[0x277CBEB18] arrayWithArray:v71];
      v31 = [(PXGView *)self scrollViewController];
      v81 = [v31 scrollView];

      if (v81)
      {
        [v70 addObject:?];
      }

      v32 = PFIsPhotosPicker();
      v33 = [(PXGView *)self traitCollection];
      if ([v33 userInterfaceIdiom] != 1 || (PXSizeIsEmpty() & 1) != 0 || (PXSizeIsEmpty() & 1) != 0 || (PXFloatApproximatelyEqualToFloat() & 1) != 0)
      {
      }

      else
      {
        v44 = PXFloatApproximatelyEqualToFloat();

        if (v44 && !(v32 & 1 | (([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)))
        {
          v77 = [v81 showsVerticalScrollIndicator];
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          obj = v71;
          v79 = [obj countByEnumeratingWithState:&v134 objects:v139 count:16];
          if (v79)
          {
            v75 = *v135;
            v45 = MEMORY[0x277D85DD0];
            do
            {
              for (i = 0; i != v79; ++i)
              {
                if (*v135 != v75)
                {
                  objc_enumerationMutation(obj);
                }

                v47 = *(*(&v134 + 1) + 8 * i);
                v48 = [(PXGView *)self rootLayout];
                v49 = [v48 createDefaultAnimationForCurrentContext];

                [MEMORY[0x277D75D18] inheritedAnimationDuration];
                [v49 setDuration:?];
                v50 = [(PXGView *)self superview];
                v51 = [v50 superview];
                v52 = [v51 layer];

                v53 = [v52 animationKeys];
                v54 = [v53 firstObject];
                v55 = [v52 animationForKey:v54];

                if (v55)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v49 setSpringAnimation:v55];
                    [v49 setCurve:3];
                  }
                }

                [v47 frame];
                v57 = v56 > width;
                v58 = dbl_21AE2D530[v56 > width];
                *&v58 = v58;
                [v49 setSpringAnimationInitialProgress:v58];
                if (v57)
                {
                  v59 = 0.95;
                }

                else
                {
                  v59 = 1.0;
                }

                *&v59 = v59;
                [v49 setSpringAnimationProgressMultiplier:v59];
                v60 = MEMORY[0x277D75D18];
                v127[0] = v45;
                v127[1] = 3221225472;
                v127[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke;
                v127[3] = &unk_2782AB770;
                v133 = v57;
                v127[4] = v47;
                v129 = x;
                v130 = y;
                v131 = width;
                v132 = height;
                v61 = v81;
                v128 = v61;
                [v60 performWithoutAnimation:v127];
                v62 = MEMORY[0x277D75D18];
                [MEMORY[0x277D75D18] inheritedAnimationDuration];
                v64 = v63;
                v126[0] = v45;
                v126[1] = 3221225472;
                v126[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_2;
                v126[3] = &unk_2782ABE50;
                v126[4] = v47;
                v118[0] = v45;
                v118[1] = 3221225472;
                v118[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_3;
                v118[3] = &unk_2782AB798;
                v124 = v57;
                v120 = x;
                v121 = y;
                v122 = width;
                v123 = height;
                v118[4] = v47;
                v118[5] = self;
                v119 = v61;
                v125 = v77;
                [v62 animateWithDuration:v126 animations:v118 completion:v64];
              }

              v79 = [obj countByEnumeratingWithState:&v134 objects:v139 count:16];
            }

            while (v79);
          }

          if (![obj count])
          {
            v65 = MEMORY[0x277D75D18];
            v112[0] = MEMORY[0x277D85DD0];
            v112[1] = 3221225472;
            v112[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_5;
            v112[3] = &unk_2782AB7C0;
            v66 = v81;
            v113 = v66;
            v114 = x;
            v115 = y;
            v116 = width;
            v117 = height;
            [v65 performWithoutAnimation:v112];
            v67 = MEMORY[0x277D75D18];
            [MEMORY[0x277D75D18] inheritedAnimationDuration];
            v69 = v68;
            v110[0] = MEMORY[0x277D85DD0];
            v110[1] = 3221225472;
            v110[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_6;
            v110[3] = &unk_2782ABE50;
            v111 = v66;
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v107[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_7;
            v107[3] = &unk_2782AB7E8;
            v108 = v111;
            v109 = v77;
            [v67 animateWithDuration:v110 animations:v107 completion:v69];
          }

          goto LABEL_34;
        }
      }

      if (![MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] || -[PXGView avoidSnapshotOnHeightChanges](self, "avoidSnapshotOnHeightChanges") && v9 == width)
      {
        if ([(PXGView *)self resizesDrawableManually]&& v73)
        {
          [v73 setAutoResizeDrawable:0];
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v34 = v70;
        v35 = [v34 countByEnumeratingWithState:&v82 objects:v138 count:16];
        if (v35)
        {
          v36 = *v83;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v83 != v36)
              {
                objc_enumerationMutation(v34);
              }

              [*(*(&v82 + 1) + 8 * j) setFrame:{x, y, width, height}];
            }

            v35 = [v34 countByEnumeratingWithState:&v82 objects:v138 count:16];
          }

          while (v35);
        }

        if ([(PXGView *)self resizesDrawableManually]&& v73 != 0)
        {
          v38 = [v73 px_screen];
          [v38 nativeScale];

          [(PXGView *)self displayScaleMultiplier];
          PXSizeScale();
          [v73 setDrawableSize:?];
        }
      }

      else
      {
        v105[0] = 0;
        v105[1] = v105;
        v105[2] = 0x3032000000;
        v105[3] = __Block_byref_object_copy__17604;
        v105[4] = __Block_byref_object_dispose__17605;
        v106 = 0;
        v39 = MEMORY[0x277D75D18];
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_59;
        v94[3] = &unk_2782AB810;
        v96 = v105;
        v94[4] = self;
        v97 = v11;
        v98 = v10;
        v99 = v9;
        v100 = v8;
        v40 = v70;
        v95 = v40;
        v101 = x;
        v102 = y;
        v103 = width;
        v104 = height;
        [v39 performWithoutAnimation:v94];
        v41 = MEMORY[0x277D75D18];
        [MEMORY[0x277D75D18] inheritedAnimationDuration];
        v43 = v42;
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_2_60;
        v87[3] = &unk_2782AB838;
        v89 = v105;
        v90 = x;
        v91 = y;
        v92 = width;
        v93 = height;
        v88 = v40;
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_3_61;
        v86[3] = &unk_2782AB860;
        v86[4] = v105;
        [v41 animateWithDuration:v87 animations:v86 completion:v43];

        _Block_object_dispose(v105, 8);
      }

LABEL_34:
    }
  }
}

uint64_t __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  [*(a1 + 40) setShowsVerticalScrollIndicator:0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  if (*(a1 + 88) == 1)
  {
    v2 = [*(a1 + 32) contentMode];
    [*(a1 + 32) setContentMode:7];
    [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_4;
    v5[3] = &unk_2782ABF68;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    [v3 installAnimationRenderingCompletionHandler:v5];
  }

  return [*(a1 + 48) setShowsVerticalScrollIndicator:*(a1 + 89)];
}

uint64_t __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setShowsVerticalScrollIndicator:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);

  return [v3 setShowsVerticalScrollIndicator:v2];
}

void __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_59(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) snapshotViewAfterScreenUpdates:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(*(*(a1 + 48) + 8) + 40) setAutoresizingMask:0];
  [*(a1 + 32) addSubview:*(*(*(a1 + 48) + 8) + 40)];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), v11}];
        PXRectGetCenter();
        [v10 setCenter:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void __46__PXGView__willChangeBoundsSizeFrom_toBounds___block_invoke_2_60(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  PXRectGetCenter();
  [*(*(*(a1 + 40) + 8) + 40) setCenter:?];
  [*(*(*(a1 + 40) + 8) + 40) setAlpha:0.0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
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

        v7 = *(*(&v8 + 1) + 8 * v6);
        PXRectGetCenter();
        [v7 setCenter:v8];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXGView *)self bounds];
  if (width != v9 || height != v8)
  {
    [PXGView _willChangeBoundsSizeFrom:"_willChangeBoundsSizeFrom:toBounds:" toBounds:?];
  }

  v11.receiver = self;
  v11.super_class = PXGView;
  [(PXGView *)&v11 setFrame:x, y, width, height];
  [(PXGView *)self _realignMetalViewIfNecessaryForScrollViewController:self->_scrollViewController];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXGView *)self bounds];
  if (width != v9 || height != v8)
  {
    [PXGView _willChangeBoundsSizeFrom:"_willChangeBoundsSizeFrom:toBounds:" toBounds:?];
  }

  v11.receiver = self;
  v11.super_class = PXGView;
  [(PXGView *)&v11 setBounds:x, y, width, height];
  [(PXGView *)self _realignMetalViewIfNecessaryForScrollViewController:self->_scrollViewController];
}

- (void)_realignMetalViewIfNecessaryForScrollViewController:(id)a3
{
  v4 = a3;
  if ([(PXGView *)self isMetalViewInScrollView])
  {
    [v4 visibleRect];
    [(MTKView *)self->_metalView setFrame:?];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (WindowFirstResponderObserverContext == a6)
  {
    [(PXGView *)self _updateLayoutViewEnvironment];
  }

  else if (SafeAreaInsetsObserverContext == a6)
  {
    [(PXGView *)self _handleSafeAreaInsetsChange];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PXGView;
    [(PXGView *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (PXGView)initWithFrame:(CGRect)a3 allowedPresentationTypes:(id)a4 displayConfiguration:(id *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v63[2] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v62.receiver = self;
  v62.super_class = PXGView;
  v12 = [(PXGView *)&v62 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(PXGView *)v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    var3 = a5->var3;
    *&v13->_displayConfiguration.allowHDR = *&a5->var0;
    v13->_displayConfiguration.requiredPixelFormat = var3;
    v13->_displayScaleMultiplier = 1.0;
    if (!v11)
    {
      v63[0] = &unk_282C7F640;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
      v63[1] = v23;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
    }

    v24 = *(MEMORY[0x277D3CF88] + 16);
    *&v13->_hitTestPadding.top = *MEMORY[0x277D3CF88];
    *&v13->_hitTestPadding.bottom = v24;
    v25 = [MEMORY[0x277D75348] clearColor];
    v61.receiver = v13;
    v61.super_class = PXGView;
    [(PXGView *)&v61 setBackgroundColor:v25];

    v26 = [objc_alloc(MEMORY[0x277D3CE20]) initWithFrame:{v15, v17, v19, v21}];
    [v26 setChildScrollViewAccessibilityIdentifier:@"content_scroll_view"];
    v27 = [v26 scrollView];
    [v27 setContentInsetAdjustmentBehavior:1];

    v28 = [v26 scrollView];
    [v28 _setAutomaticContentOffsetAdjustmentEnabled:0];

    v29 = [v26 scrollView];
    [v29 _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:1];

    v30 = [v26 scrollView];
    [v30 setAutoresizingMask:0];

    v31 = [v26 scrollView];
    [v31 setClipsToBounds:0];

    objc_storeStrong(&v13->_scrollViewController, v26);
    [(PXScrollViewController *)v13->_scrollViewController setRespectsContentZOrder:1];
    [(PXScrollViewController *)v13->_scrollViewController registerObserver:v13];
    v32 = [objc_alloc(MEMORY[0x277D3CDC0]) initWithScrollController:v13->_scrollViewController];
    scrollingSpeedometer = v13->_scrollingSpeedometer;
    v13->_scrollingSpeedometer = v32;

    v34 = [MEMORY[0x277CBEB18] array];
    v35 = [v11 containsObject:&unk_282C7F658];
    if ([v11 containsObject:&unk_282C7F640])
    {
      v36 = objc_alloc_init(PXGViewRenderer);
      viewRenderer = v13->_viewRenderer;
      v13->_viewRenderer = v36;

      [(PXGViewRenderer *)v13->_viewRenderer setScrollViewController:v13->_scrollViewController];
      [(PXGViewRenderer *)v13->_viewRenderer setShouldSeparateViewLayers:0];
      [(PXGViewRenderer *)v13->_viewRenderer setRootView:v13];
      [v34 addObject:v13->_viewRenderer];
    }

    if (v35)
    {
      v38 = [PXGMetalViewRenderDestination alloc];
      v59 = *&a5->var0;
      v60 = a5->var3;
      v39 = [(PXGMetalViewRenderDestination *)v38 initWithDisplayConfiguration:&v59];
      [(PXGView *)v13 displayScaleMultiplier];
      [(PXGMetalViewRenderDestination *)v39 setDisplayScaleMultiplier:?];
      v40 = [PXGMetalRenderer alloc];
      v41 = [(PXGMetalRenderer *)v40 initWithRenderDestination:v39 layoutQueue:MEMORY[0x277D85CD0]];
      metalRenderer = v13->_metalRenderer;
      v13->_metalRenderer = v41;

      v43 = [(PXGMetalViewRenderDestination *)v39 metalView];
      metalView = v13->_metalView;
      v13->_metalView = v43;

      [v34 addObject:v13->_metalRenderer];
    }

    v45 = [PXGEngine alloc];
    v46 = objc_alloc_init(PXGAnimator);
    v47 = [(PXGEngine *)v45 initWithAnimator:v46 renderers:v34 displayLinkClass:objc_opt_class() layoutQueue:MEMORY[0x277D85CD0]];
    engine = v13->_engine;
    v13->_engine = v47;

    [(PXGEngine *)v13->_engine setScrollController:v26];
    [(PXGEngine *)v13->_engine setScrollViewSpeedometer:v13->_scrollingSpeedometer];
    [(PXGEngine *)v13->_engine setInteractionView:v13];
    [(PXGEngine *)v13->_engine setDelegate:v13];
    v49 = [(PXGEngine *)v13->_engine coalescingAXResponder];
    [v49 setAxNextResponder:v13];

    v13->_canBlockMainThreadIfNeeded = [(PXGEngine *)v13->_engine canBlockMainThreadIfNeeded];
    v50 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v13 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v13->_updater;
    v13->_updater = v50;

    [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateScrollableAxis];
    if (v35)
    {
      v52 = v13->_metalView;
      [(PXGView *)v13 bounds];
      [(MTKView *)v52 setFrame:?];
      v53 = [MEMORY[0x277D75348] clearColor];
      [(MTKView *)v52 setBackgroundColor:v53];

      if (MEMORY[0x21CEE3960]([(MTKView *)v52 setAutoresizingMask:0]) && _os_feature_enabled_impl() && a5->var1)
      {
        v54 = [v26 scrollView];
        [v54 addSubview:v52];

        v13->_isMetalViewInScrollView = 1;
      }

      else
      {
        [(PXGView *)v13 addSubview:v52];
      }
    }

    v55 = [(PXScrollViewController *)v13->_scrollViewController scrollView];
    [(PXGView *)v13 addSubview:v55];

    v56 = [MEMORY[0x277CCAB98] defaultCenter];
    v57 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PXGView *)v13 setBackgroundColor:v57];

    [v56 addObserver:v13 selector:sel__updateInvertColors name:*MEMORY[0x277D76480] object:0];
    [v56 addObserver:v13 selector:sel__handleSceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];
    [v56 addObserver:v13 selector:sel__handleSceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:0];
    v13->_isAccessibilityEnabled = [objc_opt_class() forceAccessibilityEnabled];
    v13->_offscreenEffectQuality = 3;
  }

  return v13;
}

- (PXGView)initWithFrame:(CGRect)a3 allowedPresentationTypes:(id)a4
{
  v6 = 0;
  v5 = PXGViewDisplayConfigurationDefault;
  return [(PXGView *)self initWithFrame:a4 allowedPresentationTypes:&v5 displayConfiguration:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (PXGView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:194 description:{@"%s is not available as initializer", "-[PXGView initWithCoder:]"}];

  abort();
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = +[PXTungstenSettings sharedInstance];
  v9 = PXDebugHierarchyObjectsInGroupForView(v7, v6, @"PXGViewLayoutsAndSpritesHierarchyIdentifier", [v8 enableXcodeCustomDebugHierarchy]);

  return v9;
}

+ (void)setForceAccessibilityEnabled:(BOOL)a3
{
  if (s_forceAccessibilityEnabled != a3)
  {
    s_forceAccessibilityEnabled = a3;
    v5 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"PXGInitializeAccessibilityNotification" object:0 userInfo:0];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotification:v5];
  }
}

+ (unint64_t)supportLevel
{
  if (supportLevel_onceToken != -1)
  {
    dispatch_once(&supportLevel_onceToken, &__block_literal_global_17645);
  }

  return supportLevel_supportLevel;
}

void __23__PXGView_supportLevel__block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();

  if (v0)
  {
    v1 = +[PXTungstenSettings sharedInstance];
    v2 = [v1 simulateMissingMetalDevice] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  supportLevel_supportLevel = v2;
}

@end