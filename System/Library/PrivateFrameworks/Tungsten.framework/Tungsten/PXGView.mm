@interface PXGView
+ (id)debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options;
+ (unint64_t)supportLevel;
+ (void)setForceAccessibilityEnabled:(BOOL)enabled;
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (BOOL)hasExtendedColorDisplay;
- (BOOL)isObjectReference:(id)reference visuallyBeforeObjectReference:(id)objectReference;
- (BOOL)isPerformingUpdate;
- (BOOL)isVisible;
- (BOOL)shouldReleaseResourcesWhenInvisible;
- (BOOL)slowAnimationsEnabled;
- (CGImage)textureSnapshotForSpriteReference:(id)reference;
- (CGPoint)convertPoint:(CGPoint)point fromLayout:(id)layout;
- (CGPoint)convertPoint:(CGPoint)point toLayout:(id)layout;
- (CGRect)convertRect:(CGRect)rect fromLayout:(id)layout;
- (CGRect)convertRect:(CGRect)rect toLayout:(id)layout;
- (NSArray)debugHierarchyIdentifiers;
- (NSDictionary)ppt_extraResults;
- (NSString)diagnosticDescription;
- (NSString)preferredFileNameForExportingDebugHierarchy;
- (PXAnonymousScrollView)diagnosticsMainScrollView;
- (PXGAXResponder)axNextResponder;
- (PXGLayout)rootLayout;
- (PXGLayout)rootLayoutIfExists;
- (PXGView)initWithCoder:(id)coder;
- (PXGView)initWithFrame:(CGRect)frame allowedPresentationTypes:(id)types;
- (PXGView)initWithFrame:(CGRect)frame allowedPresentationTypes:(id)types displayConfiguration:(id *)configuration;
- (PXGViewDiagnosticsSource)diagnosticsSource;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (UIEdgeInsets)hitTestPadding;
- (UIEdgeInsets)minimumSafeAreaInsets;
- (UIEdgeInsets)safeAreaInsets;
- (UIWindowScene)windowScene;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)contentCoordinateSpaceForLayout:(id)layout;
- (id)dropTargetObjectReferenceForLocation:(CGPoint)location;
- (id)hitTestResultAtPoint:(CGPoint)point;
- (id)hitTestResultAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding passingTest:(id)test;
- (id)hitTestResultsAtPoint:(CGPoint)point;
- (id)hitTestResultsAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding passingTest:(id)test;
- (id)hitTestResultsAtPoint:(CGPoint)point withIdentifiers:(id)identifiers;
- (id)hitTestResultsInDirection:(unint64_t)direction fromSpriteReference:(id)reference;
- (id)hitTestResultsInRect:(CGRect)rect passingTest:(id)test;
- (id)layout:(id)layout viewForSpriteIndex:(unsigned int)index;
- (id)preferredFocusEnvironments;
- (id)regionOfInterestForHitTestResult:(id)result;
- (id)regionOfInterestForObjectReference:(id)reference;
- (id)regionOfInterestForSpriteReference:(id)reference;
- (id)trackingContainerViewForSpriteIndex:(unsigned int)index;
- (id)viewForSpriteIndex:(unsigned int)index;
- (id)viewForSpriteReference:(id)reference;
- (void)_ensureEndAnimatedScroll;
- (void)_handleSafeAreaInsetsChange;
- (void)_handleSceneDidEnterBackground:(id)background;
- (void)_handleSceneWillEnterForeground:(id)foreground;
- (void)_installNextDidLayoutHandler:(id)handler;
- (void)_invalidateScrollableAxis;
- (void)_realignMetalViewIfNecessaryForScrollViewController:(id)controller;
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
- (void)_willChangeBoundsSizeFrom:(CGRect)from toBounds:(CGRect)bounds;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)disablePreheating;
- (void)engine:(id)engine updateDebugHUDWithStats:(id *)stats;
- (void)engineSetNeedsUpdate:(id)update;
- (void)ensureUpdatedLayout;
- (void)enumerateDebugHierarchyWithIdentifier:(id)identifier options:(unint64_t)options usingBlock:(id)block;
- (void)forceFullUpdate;
- (void)forceUpdate;
- (void)handlePan:(id)pan;
- (void)installAnimationRenderingCompletionHandler:(id)handler;
- (void)installRenderingCompletionHandler:(id)handler;
- (void)notifyContentFullyLoadedWithTimeout:(double)timeout block:(id)block;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)ppt_cleanUpAfterTest:(id)test isScrollTest:(BOOL)scrollTest;
- (void)ppt_prepareForTest:(id)test withOptions:(id)options isScrollTest:(BOOL)scrollTest;
- (void)ppt_setCurrentTestOptions:(id)options;
- (void)registerAllTextureProvidersWithMediaProvider:(id)provider;
- (void)registerAllTextureProvidersWithMediaProvider:(id)provider namedImagesBundle:(id)bundle;
- (void)registerTextureProvider:(id)provider forMediaKind:(unsigned __int8)kind;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewControllerDidBeginFocusFastScrolling:(id)scrolling;
- (void)scrollViewControllerDidEndFocusFastScrolling:(id)scrolling;
- (void)scrollViewControllerDidEndScrolling:(id)scrolling;
- (void)scrollViewControllerDidLayoutSubviews:(id)subviews;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerWillBeginScrolling:(id)scrolling;
- (void)scrollViewControllerWillBeginScrollingAnimation:(id)animation towardsContentEdges:(unint64_t)edges;
- (void)setAdditionalSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)mode;
- (void)setBackgroundColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setCanBlockMainThreadIfNeeded:(BOOL)needed;
- (void)setContentShouldBeObscured:(BOOL)obscured;
- (void)setCustomAssetImageViewClass:(Class)class;
- (void)setCustomAssetImageViewClassConfigurator:(id)configurator;
- (void)setDiagnosticsSource:(id)source;
- (void)setDisableMetalViewDisplayCompositing:(BOOL)compositing;
- (void)setEnableUnderlaySupport:(BOOL)support;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setIsBeingFullPageSnapshotted:(BOOL)snapshotted;
- (void)setIsSceneBackgrounded:(BOOL)backgrounded;
- (void)setIsSceneResumingFromBackground:(BOOL)background;
- (void)setLowMemoryModeEnabled:(BOOL)enabled;
- (void)setLowPowerModeEnabled:(BOOL)enabled;
- (void)setMinimumSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setOffscreenEffectQuality:(unint64_t)quality;
- (void)setRootLayout:(id)layout;
- (void)setScrollingAnimationAnchor:(id)anchor;
- (void)setShouldReleaseResourcesWhenInvisible:(BOOL)invisible;
- (void)setShouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea:(BOOL)area;
- (void)setShowDebugHUD:(BOOL)d;
- (void)setShowPerspectiveDebug:(BOOL)debug;
- (void)setSlowAnimationsEnabled:(BOOL)enabled;
- (void)test_installRenderSnapshotHandler:(id)handler;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
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
  metalView = [(PXGView *)self metalView];
  if (!metalView)
  {
    goto LABEL_37;
  }

  v34 = 0.0;
  v35 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  backgroundColor = [(PXGView *)self backgroundColor];
  traitCollection = [(PXGView *)self traitCollection];
  v6 = [backgroundColor resolvedColorWithTraitCollection:traitCollection];

  if (([v6 getRed:&v35 green:&v34 blue:&v33 alpha:&v32] & 1) == 0)
  {
    v7 = PXGTungstenGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      backgroundColor2 = [(PXGView *)self backgroundColor];
      *buf = 138543618;
      v37 = backgroundColor2;
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
    traitCollection2 = [(PXGView *)self traitCollection];
    v10 = [traitCollection2 userInterfaceStyle] == 1;
  }

  else
  {
    v10 = 0;
  }

  metalRenderer = [(PXGView *)self metalRenderer];
  [metalRenderer setIsInvertColorsEnabled:v10];

  LODWORD(metalRenderer) = v32 == 1.0;
  v12 = metalRenderer & ~[(PXGView *)self enableUnderlaySupport];
  if (v12 == 1)
  {
    clearColor = v6;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  v14 = clearColor;
  [metalView setBackgroundColor:clearColor];
  layer = [metalView layer];
  [layer setOpaque:v12];

  if (v14)
  {
    metalRenderer2 = [(PXGView *)self metalRenderer];
    [metalRenderer2 destinationColorSpaceName];
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

  [metalView setClearColor:{v24 * v32, v25 * v32, v26 * v32}];
  [(PXGView *)self displayConfiguration];
  v27 = PXGPixelFormatNameToMetalFormat();
  if (!v27)
  {
    hasExtendedColorDisplay = [(PXGView *)self hasExtendedColorDisplay];
    v29 = 552;
    if (v12)
    {
      v29 = 554;
    }

    if (hasExtendedColorDisplay)
    {
      v27 = v29;
    }

    else
    {
      v27 = 80;
    }
  }

  if ([metalView colorPixelFormat] != v27)
  {
    [metalView setColorPixelFormat:v27];
  }

  [metalView setHidden:{-[PXGView contentShouldBeObscured](self, "contentShouldBeObscured")}];
  engine = [(PXGView *)self engine];
  layout = [engine layout];
  [layout setNeedsUpdate];

LABEL_37:
}

- (BOOL)hasExtendedColorDisplay
{
  traitCollection = [(PXGView *)self traitCollection];
  v3 = [traitCollection displayGamut] == 1;

  return v3;
}

- (void)_updateLayoutScreenProperties
{
  [(PXGView *)self maximumDynamicRangeHeadroom];
  v4 = v3;
  rootLayoutIfExists = [(PXGView *)self rootLayoutIfExists];
  [rootLayoutIfExists setDisplayMaximumHeadroom:v4];

  [(PXGView *)self px_screenScale];
  v7 = v6;
  [(PXGView *)self displayScaleMultiplier];
  v9 = v7 * v8;
  rootLayoutIfExists2 = [(PXGView *)self rootLayoutIfExists];
  [rootLayoutIfExists2 setDisplayScale:v9];
}

- (PXGLayout)rootLayoutIfExists
{
  engine = [(PXGView *)self engine];
  layout = [engine layout];

  return layout;
}

- (void)_updateUserInterfaceDirection
{
  if ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PXGView semanticContentAttribute](self, "semanticContentAttribute")}])
  {
    bOOLValue = 1;
  }

  else
  {
    ppt_currentTestOptions = [(PXGView *)self ppt_currentTestOptions];
    v5 = [ppt_currentTestOptions objectForKeyedSubscript:@"forceRTL"];
    bOOLValue = [v5 BOOLValue];
  }

  rootLayout = [(PXGView *)self rootLayout];
  [rootLayout setUserInterfaceDirection:bOOLValue];
}

- (PXGLayout)rootLayout
{
  engine = [(PXGView *)self engine];
  layout = [engine layout];

  if (!layout)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1293 description:{@"layout not set yet on %@", self}];
  }

  return layout;
}

- (void)_updateLayoutViewEnvironment
{
  v4 = [[PXGViewEnvironment alloc] initWithView:self accessibilityEnabled:[(PXGView *)self isAccessibilityEnabled] isBeingFullPageSnapshotted:[(PXGView *)self isBeingFullPageSnapshotted]];
  engine = [(PXGView *)self engine];
  [engine setViewEnvironment:v4];
}

- (void)_updateFocusItemProvider
{
  scrollViewController = [(PXGView *)self scrollViewController];
  if (scrollViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    px_descriptionForAssertionMessage = [scrollViewController px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1410 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.scrollViewController", v8, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1410 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.scrollViewController", v8}];
  }

LABEL_3:
  rootLayout = [(PXGView *)self rootLayout];
  axGroup = [rootLayout axGroup];
  [scrollViewController setFocusItemProvider:axGroup];
}

- (void)_setNeedsUpdate
{
  scrollViewController = [(PXGView *)self scrollViewController];
  [scrollViewController setNeedsUpdate];
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
    wantsRectDiagnosticsDebugHUD = 1;
  }

  else
  {
    wantsRectDiagnosticsDebugHUD = [v4 wantsRectDiagnosticsDebugHUD];
  }

  [(PXGView *)self setShowDebugHUD:wantsRectDiagnosticsDebugHUD];
}

- (void)_invalidateScrollableAxis
{
  updater = [(PXGView *)self updater];
  [updater setNeedsUpdateOf:sel__updateScrollableAxis];
}

- (void)_updateRectDiagnosticsLayer
{
  v3 = +[PXGRectDiagnosticsLayer layer];
  rectDiagnosticsLayer = self->_rectDiagnosticsLayer;
  self->_rectDiagnosticsLayer = v3;

  v13 = +[PXGRectDiagnosticsLayer defaultRectDiagnosticsProviders];
  diagnosticsSource = [(PXGView *)self diagnosticsSource];

  if (diagnosticsSource)
  {
    diagnosticsSource2 = [(PXGView *)self diagnosticsSource];
    v7 = [diagnosticsSource2 additionalRectDiagnosticsProvidersForView:self];
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
  superlayer = [(PXGDebugHUDLayer *)self->_debugHUDLayer superlayer];
  [superlayer insertSublayer:self->_rectDiagnosticsLayer below:self->_debugHUDLayer];

  rootLayout = [(PXGView *)self rootLayout];
  [rootLayout displayScale];
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
    selfCopy = self;
    px_perform_on_main_runloop();
  }

  engine = [(PXGView *)self engine];
  [engine setDidChangeWindow:1];

  [(PXGView *)self _updateEngineWindowProperties];
}

- (void)_updateIsSceneBackgrounded
{
  windowScene = [(PXGView *)self windowScene];
  if (windowScene)
  {
    v4 = windowScene;
    -[PXGView setIsSceneBackgrounded:](self, "setIsSceneBackgrounded:", [windowScene activationState] == 2);
    windowScene = v4;
  }
}

- (UIWindowScene)windowScene
{
  window = [(PXGView *)self window];
  windowScene = [window windowScene];

  return windowScene;
}

- (BOOL)isVisible
{
  window = [(PXGView *)self window];
  if (window)
  {
    v4 = window;
    isHidden = [(PXGView *)self isHidden];

    if (isHidden)
    {
      LOBYTE(window) = 0;
    }

    else
    {
      LOBYTE(window) = ![(PXGView *)self isSceneBackgrounded];
    }
  }

  return window;
}

- (void)_updateIsVisible
{
  isVisible = [(PXGView *)self isVisible];
  engine = [(PXGView *)self engine];
  [engine setVisible:isVisible];
}

- (void)_updateEngineWindowProperties
{
  window = [(PXGView *)self window];
  screen = [window screen];
  engine = [(PXGView *)self engine];
  [engine setScreen:screen];
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
  scrollViewController = [(PXGView *)self scrollViewController];
  [scrollViewController contentInset];
  v12 = PXEdgeInsetsEqualToEdgeInsets();

  if ((v12 & 1) == 0)
  {
    scrollViewController2 = [(PXGView *)self scrollViewController];
    [scrollViewController2 setContentInset:{v4, v6, v8, v10}];

    scrollViewController3 = [(PXGView *)self scrollViewController];
    isBouncing = [scrollViewController3 isBouncing];

    if ((isBouncing & 1) == 0)
    {
      rootLayout = [(PXGView *)self rootLayout];
      createAnchorForVisibleArea = [rootLayout createAnchorForVisibleArea];
      autoInvalidate = [createAnchorForVisibleArea autoInvalidate];
    }
  }
}

- (void)_updateScrollableAxis
{
  if (![(PXGView *)self managesScrollableAxisExternally])
  {
    rootLayout = [(PXGView *)self rootLayout];
    scrollableAxis = [rootLayout scrollableAxis];

    scrollViewController = [(PXGView *)self scrollViewController];
    scrollView = [scrollViewController scrollView];

    [scrollView setAlwaysBounceHorizontal:scrollableAxis == 2];
    [scrollView setAlwaysBounceVertical:scrollableAxis == 1];
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
  engine = [(PXGView *)self engine];
  isPerformingUpdate = [engine isPerformingUpdate];

  return isPerformingUpdate;
}

- (void)setIsBeingFullPageSnapshotted:(BOOL)snapshotted
{
  if (self->_isBeingFullPageSnapshotted != snapshotted)
  {
    self->_isBeingFullPageSnapshotted = snapshotted;
    [(PXGView *)self _updateLayoutViewEnvironment];
  }
}

- (void)forceFullUpdate
{
  engine = [(PXGView *)self engine];
  [engine setWantsImmediateUpdates:1];

  scrollViewController = [(PXGView *)self scrollViewController];
  [scrollViewController scrollViewDidLayout];

  metalView = [(PXGView *)self metalView];
  delegate = [metalView delegate];
  [delegate drawInMTKView:metalView];
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
      engine = [(PXGView *)self engine];
      v9 = 134217984;
      v10 = engine;
      _os_signpost_emit_with_name_impl(&dword_21AD38000, v3, OS_SIGNPOST_EVENT, v5, "forceUpdate", "Context=%{signpost.telemetry:string2}lu ", &v9, 0xCu);
    }
  }

  engine2 = [(PXGView *)self engine];
  [engine2 allowSecondRenderThisFrame];

  engine3 = [(PXGView *)self engine];
  [engine3 ensureUpdatedLayout];

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
  engine = [(PXGView *)self engine];
  [engine ensureUpdatedLayout];
}

- (id)viewForSpriteReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    engine = [(PXGView *)self engine];
    layout = [engine layout];

    if (!layout || (-[PXGView engine](self, "engine"), v7 = objc_claimAutoreleasedReturnValue(), [v7 ensureUpdatedLayout], v7, v8 = objc_msgSend(layout, "spriteIndexForSpriteReference:options:", referenceCopy, 0), v8 == -1))
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

- (id)trackingContainerViewForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  viewRenderer = [(PXGView *)self viewRenderer];
  v5 = [viewRenderer trackingContainerViewForSpriteIndex:v3];

  return v5;
}

- (id)viewForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  viewRenderer = [(PXGView *)self viewRenderer];
  v5 = [viewRenderer viewForSpriteIndex:v3];

  return v5;
}

- (NSDictionary)ppt_extraResults
{
  engine = [(PXGView *)self engine];
  stats = [engine stats];
  v4 = stats[13];
  v27[12] = stats[12];
  v27[13] = v4;
  v27[14] = stats[14];
  v5 = stats[9];
  v27[8] = stats[8];
  v27[9] = v5;
  v6 = stats[11];
  v27[10] = stats[10];
  v27[11] = v6;
  v7 = stats[5];
  v27[4] = stats[4];
  v27[5] = v7;
  v8 = stats[7];
  v27[6] = stats[6];
  v27[7] = v8;
  v9 = stats[1];
  v27[0] = *stats;
  v27[1] = v9;
  v10 = stats[3];
  v27[2] = stats[2];
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

- (void)ppt_setCurrentTestOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (self->_ppt_currentTestOptions != optionsCopy)
  {
    v9 = optionsCopy;
    v6 = [(NSDictionary *)optionsCopy isEqual:?];
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

- (void)ppt_cleanUpAfterTest:(id)test isScrollTest:(BOOL)scrollTest
{
  scrollTestCopy = scrollTest;
  [(PXGView *)self ppt_setCurrentTestOptions:0];
  if (scrollTestCopy)
  {

    [(PXGView *)self setIsScrolling:0];
  }
}

- (void)ppt_prepareForTest:(id)test withOptions:(id)options isScrollTest:(BOOL)scrollTest
{
  scrollTestCopy = scrollTest;
  [(PXGView *)self ppt_setCurrentTestOptions:options];
  engine = [(PXGView *)self engine];
  stats = [engine stats];
  *stats = 0u;
  stats[1] = 0u;
  stats[2] = 0u;
  stats[3] = 0u;
  stats[4] = 0u;
  stats[5] = 0u;
  stats[6] = 0u;
  stats[7] = 0u;
  stats[8] = 0u;
  stats[9] = 0u;
  stats[10] = 0u;
  stats[11] = 0u;
  stats[12] = 0u;
  stats[13] = 0u;
  stats[14] = 0u;

  if (scrollTestCopy)
  {

    [(PXGView *)self setIsScrolling:1];
  }
}

- (PXAnonymousScrollView)diagnosticsMainScrollView
{
  v19 = *MEMORY[0x277D85DE8];
  scrollViewController = [(PXGView *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  subviews = [scrollView subviews];
  v6 = [subviews mutableCopy];

  while ([v6 count])
  {
    px_popFirst = [v6 px_popFirst];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 addObject:px_popFirst];
    }

    subviews2 = [px_popFirst subviews];
    [v6 addObjectsFromArray:subviews2];
  }

  if (![v4 count])
  {
    firstObject = scrollView;
LABEL_18:
    v10 = firstObject;
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

    firstObject = [v4 firstObject];
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

- (id)layout:(id)layout viewForSpriteIndex:(unsigned int)index
{
  v4 = *&index;
  layoutCopy = layout;
  rootLayout = [(PXGView *)self rootLayout];

  if (rootLayout == layoutCopy)
  {
    v8 = [(PXGView *)self viewForSpriteIndex:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contentCoordinateSpaceForLayout:(id)layout
{
  layoutCopy = layout;
  rootLayout = [(PXGView *)self rootLayout];

  if (rootLayout == layoutCopy)
  {
    scrollViewController = [(PXGView *)self scrollViewController];
    contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  }

  else
  {
    contentCoordinateSpace = 0;
  }

  return contentCoordinateSpace;
}

- (void)test_installRenderSnapshotHandler:(id)handler
{
  handlerCopy = handler;
  engine = [(PXGView *)self engine];
  [engine test_installRenderSnapshotHandler:handlerCopy];
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  diagnosticDescription = [(PXGView *)self diagnosticDescription];
  [containerCopy setObject:diagnosticDescription forKeyedSubscript:@"Summary"];
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXGView *)self axNextResponder];
  LOBYTE(action) = [axNextResponder axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return action;
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXGView *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  scrollViewController = [(PXGView *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (void)enumerateDebugHierarchyWithIdentifier:(id)identifier options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v98 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v51 = identifierCopy;
  if ([identifierCopy isEqualToString:@"PXGViewLayoutsAndSpritesHierarchyIdentifier"])
  {
    rootLayout = [(PXGView *)self rootLayout];
    [rootLayout visibleRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v49 = rootLayout;
    engine = [(PXGView *)self engine];
    textureManager = [engine textureManager];

    v18 = objc_alloc_init(PXDebugHierarchyMutableElement);
    [(PXGView *)self bounds];
    [(PXDebugHierarchyMutableElement *)v18 setFrame:?];
    backgroundColor = [(PXGView *)self backgroundColor];
    v20 = backgroundColor;
    -[PXDebugHierarchyMutableElement setBackgroundColor:](v18, "setBackgroundColor:", [backgroundColor CGColor]);

    [(PXDebugHierarchyMutableElement *)v18 setName:@"Tungsten Hierarchies"];
    [(PXDebugHierarchyMutableElement *)v18 setCanHaveChildren:1];
    v21 = (blockCopy + 16);
    (*(blockCopy + 2))(blockCopy, v18, v94 + 3);
    if ((v94[3] & 1) == 0)
    {
      identifier = [(PXDebugHierarchyMutableElement *)v18 identifier];
      [(PXDebugHierarchyMutableElement *)v18 prepareForReuse];
      [(PXGView *)self bounds];
      [(PXDebugHierarchyMutableElement *)v18 setFrame:?];
      [(PXDebugHierarchyMutableElement *)v18 setName:@"Layouts"];
      [(PXDebugHierarchyMutableElement *)v18 setCanHaveChildren:1];
      [(PXDebugHierarchyMutableElement *)v18 setParentIdentifier:identifier];
      (*(blockCopy + 2))(blockCopy, v18, v94 + 3);
      if ((v94[3] & 1) == 0)
      {
        identifier2 = [(PXDebugHierarchyMutableElement *)v18 identifier];
        v44 = identifier;
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
        v80 = textureManager;
        v28 = v49;
        v81 = v28;
        v82 = &__block_literal_global_158;
        v29 = MEMORY[0x21CEE40A0](v79);
        v26[2](v26, identifier2, 0);
        v30 = +[PXTungstenSettings sharedInstance];
        LOBYTE(identifier2) = [v30 includeLayoutsLocalSpritesInDebugHierarchy];

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
        v32 = blockCopy;
        v72 = v32;
        v75 = &v93;
        v45 = v26;
        v73 = v45;
        v78 = identifier2;
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
            identifier3 = [(PXDebugHierarchyMutableElement *)v31 identifier];
            if (optionsCopy)
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
            v63 = identifier3;
            v60 = v34;
            v64 = v10;
            v65 = v12;
            v66 = optionsCopy & 1;
            v38 = v36;
            v59 = v38;
            v39 = v32;
            v61 = v39;
            v62 = &v93;
            [v33 enumerateSpritesInRange:v37 usingBlock:v57];
            if ((optionsCopy & 1) != 0 && (v94[3] & 1) == 0)
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
  rootLayout = [(PXGView *)self rootLayout];
  recursiveDescription = [rootLayout recursiveDescription];
  [v5 appendFormat:@"\nLayout Hierarchy: {\n%@\n}\n", recursiveDescription];

  v8 = +[PXGSpriteDataStore newSpriteDataStore];
  [v8 setCount:{objc_msgSend(rootLayout, "numberOfSprites")}];
  [rootLayout copyLayoutForSpritesInRange:objc_msgSend(v8 entities:"count") << 32 geometries:objc_msgSend(v8 styles:"entities") infos:{objc_msgSend(v8, "geometries"), objc_msgSend(v8, "styles"), objc_msgSend(v8, "infos")}];
  diagnosticDescription = [v8 diagnosticDescription];
  [v5 appendFormat:@"\nSprites: { %@ }\n", diagnosticDescription];

  [v8 recycle];
  [v5 appendString:@"\nDescendant Layouts: {\n"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__PXGView_diagnosticDescription__block_invoke;
  v12[3] = &unk_2782ABA48;
  v10 = v5;
  v13 = v10;
  [rootLayout enumerateDescendantsLayoutsUsingBlock:v12];
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

- (void)scrollViewControllerWillBeginScrollingAnimation:(id)animation towardsContentEdges:(unint64_t)edges
{
  rootLayout = [(PXGView *)self rootLayout];
  [rootLayout clearLastVisibleAreaAnchoringInformation];
  [(PXGView *)self setIsAnimatingScrollTowardsEdge:1];
  v6 = [rootLayout createAnchorForScrollingAnimationTowardsContentEdges:edges];
  [(PXGView *)self setScrollingAnimationAnchor:v6];
}

- (void)scrollViewControllerDidEndFocusFastScrolling:(id)scrolling
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsFocusFastScrolling:0];
}

- (void)scrollViewControllerDidBeginFocusFastScrolling:(id)scrolling
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsFocusFastScrolling:1];
}

- (void)scrollViewControllerDidEndScrolling:(id)scrolling
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsScrolling:0];
}

- (void)scrollViewControllerWillBeginScrolling:(id)scrolling
{
  [(PXGView *)self _ensureEndAnimatedScroll];

  [(PXGView *)self setIsScrolling:1];
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (-[PXGView isScrolling](self, "isScrolling") || -[PXGView isFocusFastScrolling](self, "isFocusFastScrolling") || -[PXGView isAnimatingScrollTowardsEdge](self, "isAnimatingScrollTowardsEdge") || [scrollCopy isAnimatingScroll])
  {
    rootLayout = [(PXGView *)self rootLayout];
    [rootLayout clearLastVisibleAreaAnchoringInformation];
  }

  [(PXGView *)self _realignMetalViewIfNecessaryForScrollViewController:scrollCopy];
}

- (void)scrollViewControllerDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  updater = [(PXGView *)self updater];
  [updater updateIfNeeded];

  nextDidLayoutHandler = [(PXGView *)self nextDidLayoutHandler];
  if (nextDidLayoutHandler)
  {
    [(PXGView *)self setNextDidLayoutHandler:0];
    nextDidLayoutHandler[2](nextDidLayoutHandler);
  }

  [(PXGView *)self _realignMetalViewIfNecessaryForScrollViewController:subviewsCopy];
}

- (void)setSlowAnimationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  engine = [(PXGView *)self engine];
  [engine setSlowAnimationsEnabled:enabledCopy];
}

- (BOOL)slowAnimationsEnabled
{
  engine = [(PXGView *)self engine];
  slowAnimationsEnabled = [engine slowAnimationsEnabled];

  return slowAnimationsEnabled;
}

- (void)_updateEngineCanBlockMainThreadIfNeeded
{
  isSceneResumingFromBackground = [(PXGView *)self canBlockMainThreadIfNeeded]|| [(PXGView *)self isSceneResumingFromBackground];
  engine = [(PXGView *)self engine];
  [engine setCanBlockMainThreadIfNeeded:isSceneResumingFromBackground];
}

- (void)setCanBlockMainThreadIfNeeded:(BOOL)needed
{
  if (self->_canBlockMainThreadIfNeeded != needed)
  {
    self->_canBlockMainThreadIfNeeded = needed;
    [(PXGView *)self _updateEngineCanBlockMainThreadIfNeeded];
  }
}

- (void)engine:(id)engine updateDebugHUDWithStats:(id *)stats
{
  [(PXGDebugHUDLayer *)self->_debugHUDLayer updateDebugHUDWithStats:stats];
  if (self->_rectDiagnosticsLayer)
  {
    rootLayout = [(PXGView *)self rootLayout];
    [(PXGRectDiagnosticsLayer *)self->_rectDiagnosticsLayer setLayout:rootLayout];

    rectDiagnosticsLayer = self->_rectDiagnosticsLayer;

    [(PXGRectDiagnosticsLayer *)rectDiagnosticsLayer update];
  }
}

- (void)engineSetNeedsUpdate:(id)update
{
  scrollController = [update scrollController];
  [scrollController setNeedsUpdate];
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  if ([panCopy state] == 2)
  {
    [panCopy translationInView:self];
    [PXTungstenSettings setPerspectiveAngle:?];
    rootLayout = [(PXGView *)self rootLayout];
    [rootLayout setNeedsUpdate];
  }
}

- (void)setShowPerspectiveDebug:(BOOL)debug
{
  if (self->_showPerspectiveDebug != debug)
  {
    self->_showPerspectiveDebug = debug;
    [PXTungstenSettings setWantsPerspectiveDebug:?];
    v5 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePan_];
    [v5 setMaximumNumberOfTouches:1];
    [v5 setDelegate:self];
    [(PXGView *)self addGestureRecognizer:v5];
  }
}

- (void)setShowDebugHUD:(BOOL)d
{
  if (self->_showDebugHUD != d)
  {
    dCopy = d;
    self->_showDebugHUD = d;
    [(PXGDebugHUDLayer *)self->_debugHUDLayer removeFromSuperlayer];
    [(PXGRectDiagnosticsLayer *)self->_rectDiagnosticsLayer removeFromSuperlayer];
    debugHUDLayer = self->_debugHUDLayer;
    self->_debugHUDLayer = 0;

    rectDiagnosticsLayer = self->_rectDiagnosticsLayer;
    self->_rectDiagnosticsLayer = 0;

    if (dCopy)
    {
      v7 = +[PXGDebugHUDLayer layer];
      v8 = self->_debugHUDLayer;
      self->_debugHUDLayer = v7;

      scrollViewController = [(PXGView *)self scrollViewController];
      scrollView = [scrollViewController scrollView];
      [scrollView safeAreaInsets];
      v12 = v11;
      v14 = v13;

      [(PXGDebugHUDLayer *)self->_debugHUDLayer setFrame:v14, v12, 100.0, 100.0];
      layer = [(PXGView *)self layer];
      [layer addSublayer:self->_debugHUDLayer];

      rootLayout = [(PXGView *)self rootLayout];
      [rootLayout displayScale];
      [(PXGDebugHUDLayer *)self->_debugHUDLayer setContentsScale:?];

      engine = [(PXGView *)self engine];
      [engine setStatsTrackingEnabled:1];

      [(PXGView *)self _updateRectDiagnosticsLayer];
    }
  }
}

- (void)setDiagnosticsSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_diagnosticsSource, obj);
    [(PXGView *)self _updateRectDiagnosticsLayer];
    v5 = obj;
  }
}

- (CGImage)textureSnapshotForSpriteReference:(id)reference
{
  referenceCopy = reference;
  rootLayout = [(PXGView *)self rootLayout];
  v6 = [rootLayout spriteIndexForSpriteReference:referenceCopy];

  engine = [(PXGView *)self engine];
  textureManager = [engine textureManager];
  v9 = [textureManager textureSnapshotForSpriteIndex:v6];

  return v9;
}

- (BOOL)isObjectReference:(id)reference visuallyBeforeObjectReference:(id)objectReference
{
  v53 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  objectReferenceCopy = objectReference;
  v9 = objectReferenceCopy;
  if (!referenceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1786 description:{@"Invalid parameter not satisfying: %@", @"objectReference1"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1787 description:{@"Invalid parameter not satisfying: %@", @"objectReference2"}];

    goto LABEL_3;
  }

  if (!objectReferenceCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  v10 = [(PXGView *)self regionOfInterestForObjectReference:referenceCopy];
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
    rootLayout = [(PXGView *)self rootLayout];
    userInterfaceDirection = [rootLayout userInterfaceDirection];

    if (userInterfaceDirection == 1)
    {
      bounds = [(PXGView *)self bounds];
      v32 = v20;
      v34 = v33;
      v35 = v18;
      v37 = v36;
      v38 = v16;
      v40 = v39;
      v41 = v14;
      v43 = v42;
      MEMORY[0x21CEE3630](bounds, v41, v38, v35, v32, v34, v37, v39, v42);
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
      v50 = referenceCopy;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&dword_21AD38000, v45, OS_LOG_TYPE_ERROR, "Couldn't find region of interests for visual comparison of %@ with %@", buf, 0x16u);
    }

    v44 = 1;
  }

  return v44;
}

- (id)regionOfInterestForObjectReference:(id)reference
{
  referenceCopy = reference;
  rootLayout = [(PXGView *)self rootLayout];
  v6 = [rootLayout spriteReferenceForObjectReference:referenceCopy];

  v7 = [(PXGView *)self regionOfInterestForSpriteReference:v6];

  return v7;
}

- (id)regionOfInterestForHitTestResult:(id)result
{
  spriteReference = [result spriteReference];
  v5 = [(PXGView *)self regionOfInterestForSpriteReference:spriteReference];

  return v5;
}

- (id)regionOfInterestForSpriteReference:(id)reference
{
  v30 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  if (referenceCopy)
  {
    engine = [(PXGView *)self engine];
    layout = [engine layout];

    if (layout)
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
      engine2 = [(PXGView *)self engine];
      v8 = [engine2 copyPresentedSpriteFor:referenceCopy geometry:&v17 style:&v20 info:v15];

      v9 = 0;
      if (v8)
      {
        scrollViewController = [(PXGView *)self scrollViewController];
        contentCoordinateSpace = [scrollViewController contentCoordinateSpace];

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
        v9 = PXGRegionOfInterestForSprite(v14, v19, v12, contentCoordinateSpace);
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

- (CGRect)convertRect:(CGRect)rect fromLayout:(id)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  rootLayout = [(PXGView *)self rootLayout];
  [rootLayout convertRect:layoutCopy fromLayout:{x, y, width, height}];

  scrollViewController = [(PXGView *)self scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
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

- (CGRect)convertRect:(CGRect)rect toLayout:(id)layout
{
  layoutCopy = layout;
  scrollViewController = [(PXGView *)self scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  rootLayout = [(PXGView *)self rootLayout];
  [layoutCopy convertRect:rootLayout fromLayout:{v9, v11, v13, v15}];
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

- (CGPoint)convertPoint:(CGPoint)point fromLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  rootLayout = [(PXGView *)self rootLayout];
  [rootLayout convertPoint:layoutCopy fromLayout:{x, y}];

  scrollViewController = [(PXGView *)self scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toLayout:(id)layout
{
  layoutCopy = layout;
  scrollViewController = [(PXGView *)self scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;

  rootLayout = [(PXGView *)self rootLayout];
  [layoutCopy convertPoint:rootLayout fromLayout:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (id)dropTargetObjectReferenceForLocation:(CGPoint)location
{
  rootLayout = [(PXGView *)self rootLayout];
  userInterfaceDirection = [rootLayout userInterfaceDirection];

  if (userInterfaceDirection == 1)
  {
    [(PXGView *)self bounds];
  }

  scrollViewController = [(PXGView *)self scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;

  rootLayout2 = [(PXGView *)self rootLayout];
  v13 = [rootLayout2 dropTargetObjectReferenceForLocation:{v9, v11}];

  return v13;
}

- (id)hitTestResultsInDirection:(unint64_t)direction fromSpriteReference:(id)reference
{
  referenceCopy = reference;
  rootLayout = [(PXGView *)self rootLayout];
  v8 = [(PXGView *)self regionOfInterestForSpriteReference:referenceCopy];

  [v8 rectInCoordinateSpace:self];
  PXRectShrinkToPixel();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = 0;
  if (direction <= 3)
  {
    if (direction != 1)
    {
      if (direction != 2)
      {
        v18 = v16;
        v19 = v14;
        MinY = v12;
        v21 = v10;
        if (direction != 3)
        {
          goto LABEL_13;
        }

        v21 = v10 - v14;
        v17 = 1;
        goto LABEL_12;
      }

LABEL_10:
      [rootLayout referenceSize];
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
    [rootLayout referenceSize];
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

  if (direction != 4)
  {
    if (direction == 5)
    {
      goto LABEL_10;
    }

    v18 = v16;
    v19 = v14;
    MinY = v12;
    v21 = v10;
    if (direction != 6)
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
  rootLayout2 = [(PXGView *)self rootLayout];
  v29 = [rootLayout2 userInterfaceDirection] == 1;

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
  v43[9] = direction;
  v32 = [v31 sortedArrayUsingComparator:v43];
  firstObject = [v30 firstObject];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __57__PXGView_hitTestResultsInDirection_fromSpriteReference___block_invoke_5;
  v41[3] = &unk_2782AB9F8;
  v42 = firstObject;
  v34 = firstObject;
  v35 = [v32 indexOfObjectPassingTest:v41];
  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v36 = [v32 subarrayWithRange:{v35 + 1, objc_msgSend(v32, "count") - (v35 + 1)}];
  }

  v40 = rootLayout;
  v37 = rootLayout;
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

- (id)hitTestResultsInRect:(CGRect)rect passingTest:(id)test
{
  testCopy = test;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  scrollViewController = [(PXGView *)self scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  rootLayout = [(PXGView *)self rootLayout];
  if (!rootLayout)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1611 description:@"can't do hit testing without a layout"];
  }

  engine = [(PXGView *)self engine];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__PXGView_hitTestResultsInRect_passingTest___block_invoke;
  v26[3] = &unk_2782AB958;
  v28 = v7;
  v29 = testCopy;
  v27 = rootLayout;
  v20 = v7;
  v21 = rootLayout;
  v22 = testCopy;
  [engine enumerateSpritesInRect:v26 usingBlock:{v11, v13, v15, v17}];

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

- (id)hitTestResultsAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding passingTest:(id)test
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  y = point.y;
  x = point.x;
  v56 = *MEMORY[0x277D85DE8];
  testCopy = test;
  rootLayout = [(PXGView *)self rootLayout];
  if (!rootLayout)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1571 description:@"can't do hit testing without a layout"];
  }

  [(PXGView *)self convertPoint:rootLayout toLayout:x, y];
  v16 = v15;
  v18 = v17;
  PXRectWithEdges();
  v20 = v19;
  v22 = v21;
  v39 = v24;
  v40 = v23;
  array = [MEMORY[0x277CBEB18] array];
  engine = [(PXGView *)self engine];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __53__PXGView_hitTestResultsAtPoint_padding_passingTest___block_invoke;
  v45[3] = &unk_2782AB930;
  v27 = testCopy;
  v48 = v27;
  v28 = rootLayout;
  v46 = v28;
  v49 = top;
  v50 = left;
  v51 = bottom;
  v52 = right;
  v53 = v16;
  v54 = v18;
  v29 = array;
  v47 = v29;
  [engine enumerateSpritesInRect:v45 usingBlock:{v20, v22, v40, v39}];

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

- (id)hitTestResultsAtPoint:(CGPoint)point withIdentifiers:(id)identifiers
{
  y = point.y;
  x = point.x;
  identifiersCopy = identifiers;
  [(PXGView *)self hitTestPadding];
  v12 = [(PXGView *)self hitTestResultsAtPoint:0 padding:x passingTest:y, v8, v9, v10, v11];
  v13 = MEMORY[0x277CCAC30];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__PXGView_hitTestResultsAtPoint_withIdentifiers___block_invoke;
  v18[3] = &unk_2782AB908;
  v19 = identifiersCopy;
  v14 = identifiersCopy;
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

- (id)hitTestResultsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PXGView *)self hitTestPadding];

  return [(PXGView *)self hitTestResultsAtPoint:0 padding:x passingTest:y, v6, v7, v8, v9];
}

- (id)hitTestResultAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding passingTest:(id)test
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  y = point.y;
  x = point.x;
  testCopy = test;
  rootLayout = [(PXGView *)self rootLayout];
  if (!rootLayout)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:1515 description:@"can't do hit testing without a layout"];
  }

  [(PXGView *)self convertPoint:rootLayout toLayout:x, y];
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
  engine = [(PXGView *)self engine];
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
  v26 = testCopy;
  v35 = v26;
  v27 = rootLayout;
  v34 = v27;
  [engine enumerateSpritesInRect:v33 usingBlock:{v32, v31, v22, v24}];

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

- (id)hitTestResultAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PXGView *)self hitTestPadding];

  return [(PXGView *)self hitTestResultAtPoint:0 padding:x passingTest:y, v6, v7, v8, v9];
}

- (void)disablePreheating
{
  v5 = +[PXGTextureManagerPreheatingStrategy noPreheatingStrategy];
  engine = [(PXGView *)self engine];
  textureManager = [engine textureManager];
  [textureManager setPreheatingStrategy:v5];
}

- (void)setScrollingAnimationAnchor:(id)anchor
{
  anchorCopy = anchor;
  scrollingAnimationAnchor = self->_scrollingAnimationAnchor;
  if (scrollingAnimationAnchor != anchorCopy)
  {
    v7 = scrollingAnimationAnchor;
    objc_storeStrong(&self->_scrollingAnimationAnchor, anchor);
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

- (void)_installNextDidLayoutHandler:(id)handler
{
  handlerCopy = handler;
  nextDidLayoutHandler = [(PXGView *)self nextDidLayoutHandler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PXGView__installNextDidLayoutHandler___block_invoke;
  v8[3] = &unk_2782AB8B8;
  v9 = nextDidLayoutHandler;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = nextDidLayoutHandler;
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
  lowPowerModeEnabled = [(PXGView *)self lowPowerModeEnabled];
  engine = [(PXGView *)self engine];
  [engine setLowPowerMode:lowPowerModeEnabled];
}

- (void)_updateEngineLowMemoryMode
{
  lowMemoryModeEnabled = [(PXGView *)self lowMemoryModeEnabled];
  engine = [(PXGView *)self engine];
  [engine setLowMemoryMode:lowMemoryModeEnabled];

  allowLargerImagesDuringScrollingInLowMemoryMode = [(PXGView *)self allowLargerImagesDuringScrollingInLowMemoryMode];
  engine2 = [(PXGView *)self engine];
  [engine2 setAllowLargerImagesDuringScrollingInLowMemoryMode:allowLargerImagesDuringScrollingInLowMemoryMode];
}

- (void)setShouldReleaseResourcesWhenInvisible:(BOOL)invisible
{
  invisibleCopy = invisible;
  engine = [(PXGView *)self engine];
  [engine setShouldReleaseResourcesWhenInvisible:invisibleCopy];
}

- (BOOL)shouldReleaseResourcesWhenInvisible
{
  engine = [(PXGView *)self engine];
  shouldReleaseResourcesWhenInvisible = [engine shouldReleaseResourcesWhenInvisible];

  return shouldReleaseResourcesWhenInvisible;
}

- (void)installAnimationRenderingCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    engine = [(PXGView *)self engine];
    animationRenderingCompletionHandler = [engine animationRenderingCompletionHandler];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__PXGView_installAnimationRenderingCompletionHandler___block_invoke;
    v8[3] = &unk_2782AB8B8;
    v9 = animationRenderingCompletionHandler;
    v10 = handlerCopy;
    v7 = animationRenderingCompletionHandler;
    [engine setAnimationRenderingCompletionHandler:v8];
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

- (void)installRenderingCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    engine = [(PXGView *)self engine];
    renderingCompletionHandler = [engine renderingCompletionHandler];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__PXGView_installRenderingCompletionHandler___block_invoke;
    v8[3] = &unk_2782AB8B8;
    v9 = renderingCompletionHandler;
    v10 = handlerCopy;
    v7 = renderingCompletionHandler;
    [engine setRenderingCompletionHandler:v8];
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

- (void)registerAllTextureProvidersWithMediaProvider:(id)provider namedImagesBundle:(id)bundle
{
  bundleCopy = bundle;
  providerCopy = provider;
  engine = [(PXGView *)self engine];
  [engine registerAllTextureProvidersWithMediaProvider:providerCopy namedImagesBundle:bundleCopy];
}

- (void)registerAllTextureProvidersWithMediaProvider:(id)provider
{
  providerCopy = provider;
  engine = [(PXGView *)self engine];
  [engine registerAllTextureProvidersWithMediaProvider:providerCopy namedImagesBundle:0];
}

- (void)registerTextureProvider:(id)provider forMediaKind:(unsigned __int8)kind
{
  kindCopy = kind;
  providerCopy = provider;
  engine = [(PXGView *)self engine];
  [engine registerTextureProvider:providerCopy forMediaKind:kindCopy];
}

- (void)setRootLayout:(id)layout
{
  layoutCopy = layout;
  engine = [(PXGView *)self engine];
  layout = [engine layout];

  scrollDelegate = [layout scrollDelegate];

  if (scrollDelegate)
  {
    scrollDelegate2 = [layout scrollDelegate];

    if (scrollDelegate2 != self)
    {
      v9 = PXAssertGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21AD38000, v9, OS_LOG_TYPE_ERROR, "unexpected scrollDelegate of rootLayout", buf, 2u);
      }
    }

    [layout setScrollDelegate:0];
  }

  viewDelegate = [layout viewDelegate];

  if (viewDelegate)
  {
    viewDelegate2 = [layout viewDelegate];

    if (viewDelegate2 != self)
    {
      v12 = PXAssertGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_21AD38000, v12, OS_LOG_TYPE_ERROR, "unexpected viewDelegate of rootLayout", v18, 2u);
      }
    }

    [layout setViewDelegate:0];
  }

  focusDelegate = [layout focusDelegate];

  if (focusDelegate)
  {
    focusDelegate2 = [layout focusDelegate];

    if (focusDelegate2 != self)
    {
      v15 = PXAssertGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_21AD38000, v15, OS_LOG_TYPE_ERROR, "unexpected focusDelegate of rootLayout", v17, 2u);
      }
    }

    [layout setFocusDelegate:0];
  }

  engine2 = [(PXGView *)self engine];
  [engine2 setLayout:layoutCopy];

  [(PXGView *)self _updateLayoutScreenProperties];
  [(PXGView *)self _updateUserInterfaceDirection];
  [(PXGView *)self _updateLayoutViewEnvironment];
  [(PXGView *)self _updateFocusItemProvider];
  [(PXGView *)self _updateDebugHUD];
  [layoutCopy setScrollDelegate:self];
  [layoutCopy setViewDelegate:self];
  [layoutCopy setFocusDelegate:self];

  [(PXGView *)self _invalidateScrollableAxis];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = PXGView;
  [(PXGView *)&v4 setHidden:hidden];
  [(PXGView *)self _updateIsVisible];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v6 = self->_backgroundColor;
  v7 = v6;
  if (v6 == colorCopy)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:colorCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColor, color);
      [(PXGView *)self _updateMetalView];
      v9.receiver = self;
      v9.super_class = PXGView;
      [(PXGView *)&v9 setBackgroundColor:colorCopy];
    }
  }
}

- (void)setContentShouldBeObscured:(BOOL)obscured
{
  if (self->_contentShouldBeObscured != obscured)
  {
    self->_contentShouldBeObscured = obscured;
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
  engine = [(PXGView *)self engine];
  layout = [engine layout];
  [layout setNeedsUpdate];
}

- (NSString)preferredFileNameForExportingDebugHierarchy
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v7 = [v3 initWithFormat:@"%@-%p-%lx.caar", v5, self, objc_msgSend(uUID, "hash")];

  return v7;
}

- (id)preferredFocusEnvironments
{
  rootLayout = [(PXGView *)self rootLayout];
  v3 = PXGDeepestPreferredFocusEnvironmentsForLayout(rootLayout);

  return v3;
}

- (void)setEnableUnderlaySupport:(BOOL)support
{
  if (self->_enableUnderlaySupport != support)
  {
    self->_enableUnderlaySupport = support;
    [(PXGView *)self _updateMetalView];
  }
}

- (void)notifyContentFullyLoadedWithTimeout:(double)timeout block:(id)block
{
  blockCopy = block;
  engine = [(PXGView *)self engine];
  [engine notifyContentFullyLoadedWithTimeout:blockCopy block:timeout];
}

- (void)setMinimumSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_minimumSafeAreaInsets.top, v3), vceqq_f64(*&self->_minimumSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_minimumSafeAreaInsets = insets;
    [(PXGView *)self safeAreaInsetsDidChange];
  }
}

- (void)setAdditionalSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalSafeAreaInsets.top), vceqq_f64(v4, *&self->_additionalSafeAreaInsets.bottom)))) & 1) == 0)
  {
    self->_additionalSafeAreaInsets = insets;
    [(PXGView *)self safeAreaInsetsDidChange];
  }
}

- (void)setIsSceneResumingFromBackground:(BOOL)background
{
  if (self->_isSceneResumingFromBackground != background)
  {
    self->_isSceneResumingFromBackground = background;
    if (background)
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

- (void)setIsSceneBackgrounded:(BOOL)backgrounded
{
  isSceneBackgrounded = self->_isSceneBackgrounded;
  if (isSceneBackgrounded != backgrounded)
  {
    self->_isSceneBackgrounded = backgrounded;
    [(PXGView *)self setIsSceneResumingFromBackground:isSceneBackgrounded];

    [(PXGView *)self _updateIsVisible];
  }
}

- (void)_handleSceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  windowScene = [(PXGView *)self windowScene];
  if (object == windowScene)
  {
    [(PXGView *)self setIsSceneBackgrounded:0];
  }
}

- (void)_handleSceneDidEnterBackground:(id)background
{
  object = [background object];
  windowScene = [(PXGView *)self windowScene];
  if (object == windowScene)
  {
    [(PXGView *)self setIsSceneBackgrounded:1];
  }
}

- (void)setCustomAssetImageViewClassConfigurator:(id)configurator
{
  configuratorCopy = configurator;
  v4 = MEMORY[0x21CEE40A0]();
  customAssetImageViewClassConfigurator = self->_customAssetImageViewClassConfigurator;
  self->_customAssetImageViewClassConfigurator = v4;

  [(PXGViewRenderer *)self->_viewRenderer setCustomAssetImageViewClassConfigurator:configuratorCopy];
}

- (void)setCustomAssetImageViewClass:(Class)class
{
  objc_storeStrong(&self->_customAssetImageViewClass, class);
  viewRenderer = self->_viewRenderer;

  [(PXGViewRenderer *)viewRenderer setCustomAssetImageViewClass:class];
}

- (void)setOffscreenEffectQuality:(unint64_t)quality
{
  if (self->_offscreenEffectQuality != quality)
  {
    self->_offscreenEffectQuality = quality;
    if (quality == 1)
    {
      v9 = 0.25;
    }

    else if (quality == 2)
    {
      v9 = 0.5;
    }

    else
    {
      v9 = 1.0;
      if (!quality)
      {
        v14 = v4;
        v15 = v3;
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:684 description:@"Code which should be unreachable has been reached"];

        abort();
      }
    }

    metalRenderer = self->_metalRenderer;

    [(PXGMetalRenderer *)metalRenderer setOffscreenEffectScale:v9];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)enabled
{
  if (self->_lowPowerModeEnabled != enabled)
  {
    self->_lowPowerModeEnabled = enabled;
    [(PXGView *)self _updateEngineLowPowerMode];
  }
}

- (void)setLowMemoryModeEnabled:(BOOL)enabled
{
  if (self->_lowMemoryModeEnabled != enabled)
  {
    self->_lowMemoryModeEnabled = enabled;
    [(PXGView *)self _updateEngineLowMemoryMode];
  }
}

- (void)setDisableMetalViewDisplayCompositing:(BOOL)compositing
{
  if (self->_disableMetalViewDisplayCompositing != compositing)
  {
    compositingCopy = compositing;
    self->_disableMetalViewDisplayCompositing = compositing;
    engine = [(PXGView *)self engine];
    [engine setDisableMetalViewDisplayCompositing:compositingCopy];
  }
}

- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)mode
{
  if (self->_allowLargerImagesDuringScrollingInLowMemoryMode != mode)
  {
    self->_allowLargerImagesDuringScrollingInLowMemoryMode = mode;
    [(PXGView *)self _updateEngineLowMemoryMode];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v11.receiver = self;
  v11.super_class = PXGView;
  contextCopy = context;
  [(PXGView *)&v11 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  v8 = [(PXGView *)self px_isAncestorOfFocusEnvironment:previouslyFocusedItem];

  nextFocusedItem = [contextCopy nextFocusedItem];

  v10 = [(PXGView *)self px_isAncestorOfFocusEnvironment:nextFocusedItem];
  if ((v8 & 1) != 0 || v10)
  {
    [(PXGView *)self _updateLayoutViewEnvironment];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PXGView;
  changeCopy = change;
  [(PXGView *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(PXGView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

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

- (void)setShouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea:(BOOL)area
{
  if (self->_shouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea != area)
  {
    areaCopy = area;
    self->_shouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea = area;
    scrollViewController = [(PXGView *)self scrollViewController];
    scrollView = [scrollViewController scrollView];

    if (areaCopy)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    [scrollView setContentInsetAdjustmentBehavior:v6];
    [scrollView _setAutomaticContentOffsetAdjustmentEnabled:areaCopy];
    [scrollView _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:areaCopy ^ 1];
  }
}

- (void)_willChangeBoundsSizeFrom:(CGRect)from toBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = from.size.height;
  v9 = from.size.width;
  v10 = from.origin.y;
  v11 = from.origin.x;
  v140 = *MEMORY[0x277D85DE8];
  metalView = [(PXGView *)self metalView];
  entityHostingView = [(PXGView *)self entityHostingView];
  if (entityHostingView)
  {
    entityHostingView2 = [(PXGView *)self entityHostingView];
    [entityHostingView2 frame];
    v78 = v16;
    v80 = v15;
    v74 = v18;
    v76 = v17;
  }

  else
  {
    [metalView frame];
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
      rootLayout = [(PXGView *)self rootLayout];
      createAnchorForVisibleArea = [rootLayout createAnchorForVisibleArea];
      autoInvalidate = [createAnchorForVisibleArea autoInvalidate];

      engine = [(PXGView *)self engine];
      [engine allowSecondRenderThisFrame];

      v71 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      metalView2 = [(PXGView *)self metalView];

      if (metalView2)
      {
        metalView3 = [(PXGView *)self metalView];
        [v71 addObject:metalView3];
      }

      entityHostingView3 = [(PXGView *)self entityHostingView];

      if (entityHostingView3)
      {
        entityHostingView4 = [(PXGView *)self entityHostingView];
        [v71 addObject:entityHostingView4];
      }

      v70 = [MEMORY[0x277CBEB18] arrayWithArray:v71];
      scrollViewController = [(PXGView *)self scrollViewController];
      scrollView = [scrollViewController scrollView];

      if (scrollView)
      {
        [v70 addObject:?];
      }

      v32 = PFIsPhotosPicker();
      traitCollection = [(PXGView *)self traitCollection];
      if ([traitCollection userInterfaceIdiom] != 1 || (PXSizeIsEmpty() & 1) != 0 || (PXSizeIsEmpty() & 1) != 0 || (PXFloatApproximatelyEqualToFloat() & 1) != 0)
      {
      }

      else
      {
        v44 = PXFloatApproximatelyEqualToFloat();

        if (v44 && !(v32 & 1 | (([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)))
        {
          showsVerticalScrollIndicator = [scrollView showsVerticalScrollIndicator];
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
                rootLayout2 = [(PXGView *)self rootLayout];
                createDefaultAnimationForCurrentContext = [rootLayout2 createDefaultAnimationForCurrentContext];

                [MEMORY[0x277D75D18] inheritedAnimationDuration];
                [createDefaultAnimationForCurrentContext setDuration:?];
                superview = [(PXGView *)self superview];
                v50Superview = [superview superview];
                layer = [v50Superview layer];

                animationKeys = [layer animationKeys];
                firstObject = [animationKeys firstObject];
                v55 = [layer animationForKey:firstObject];

                if (v55)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [createDefaultAnimationForCurrentContext setSpringAnimation:v55];
                    [createDefaultAnimationForCurrentContext setCurve:3];
                  }
                }

                [v47 frame];
                v57 = v56 > width;
                v58 = dbl_21AE2D530[v56 > width];
                *&v58 = v58;
                [createDefaultAnimationForCurrentContext setSpringAnimationInitialProgress:v58];
                if (v57)
                {
                  v59 = 0.95;
                }

                else
                {
                  v59 = 1.0;
                }

                *&v59 = v59;
                [createDefaultAnimationForCurrentContext setSpringAnimationProgressMultiplier:v59];
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
                v61 = scrollView;
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
                v125 = showsVerticalScrollIndicator;
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
            v66 = scrollView;
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
            v109 = showsVerticalScrollIndicator;
            [v67 animateWithDuration:v110 animations:v107 completion:v69];
          }

          goto LABEL_34;
        }
      }

      if (![MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] || -[PXGView avoidSnapshotOnHeightChanges](self, "avoidSnapshotOnHeightChanges") && v9 == width)
      {
        if ([(PXGView *)self resizesDrawableManually]&& metalView)
        {
          [metalView setAutoResizeDrawable:0];
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

        if ([(PXGView *)self resizesDrawableManually]&& metalView != 0)
        {
          px_screen = [metalView px_screen];
          [px_screen nativeScale];

          [(PXGView *)self displayScaleMultiplier];
          PXSizeScale();
          [metalView setDrawableSize:?];
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)_realignMetalViewIfNecessaryForScrollViewController:(id)controller
{
  controllerCopy = controller;
  if ([(PXGView *)self isMetalViewInScrollView])
  {
    [controllerCopy visibleRect];
    [(MTKView *)self->_metalView setFrame:?];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (WindowFirstResponderObserverContext == context)
  {
    [(PXGView *)self _updateLayoutViewEnvironment];
  }

  else if (SafeAreaInsetsObserverContext == context)
  {
    [(PXGView *)self _handleSafeAreaInsetsChange];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PXGView;
    [(PXGView *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (PXGView)initWithFrame:(CGRect)frame allowedPresentationTypes:(id)types displayConfiguration:(id *)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v63[2] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v62.receiver = self;
  v62.super_class = PXGView;
  height = [(PXGView *)&v62 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(PXGView *)height bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    var3 = configuration->var3;
    *&v13->_displayConfiguration.allowHDR = *&configuration->var0;
    v13->_displayConfiguration.requiredPixelFormat = var3;
    v13->_displayScaleMultiplier = 1.0;
    if (!typesCopy)
    {
      v63[0] = &unk_282C7F640;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
      v63[1] = v23;
      typesCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
    }

    v24 = *(MEMORY[0x277D3CF88] + 16);
    *&v13->_hitTestPadding.top = *MEMORY[0x277D3CF88];
    *&v13->_hitTestPadding.bottom = v24;
    clearColor = [MEMORY[0x277D75348] clearColor];
    v61.receiver = v13;
    v61.super_class = PXGView;
    [(PXGView *)&v61 setBackgroundColor:clearColor];

    v26 = [objc_alloc(MEMORY[0x277D3CE20]) initWithFrame:{v15, v17, v19, v21}];
    [v26 setChildScrollViewAccessibilityIdentifier:@"content_scroll_view"];
    scrollView = [v26 scrollView];
    [scrollView setContentInsetAdjustmentBehavior:1];

    scrollView2 = [v26 scrollView];
    [scrollView2 _setAutomaticContentOffsetAdjustmentEnabled:0];

    scrollView3 = [v26 scrollView];
    [scrollView3 _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:1];

    scrollView4 = [v26 scrollView];
    [scrollView4 setAutoresizingMask:0];

    scrollView5 = [v26 scrollView];
    [scrollView5 setClipsToBounds:0];

    objc_storeStrong(&v13->_scrollViewController, v26);
    [(PXScrollViewController *)v13->_scrollViewController setRespectsContentZOrder:1];
    [(PXScrollViewController *)v13->_scrollViewController registerObserver:v13];
    v32 = [objc_alloc(MEMORY[0x277D3CDC0]) initWithScrollController:v13->_scrollViewController];
    scrollingSpeedometer = v13->_scrollingSpeedometer;
    v13->_scrollingSpeedometer = v32;

    array = [MEMORY[0x277CBEB18] array];
    v35 = [typesCopy containsObject:&unk_282C7F658];
    if ([typesCopy containsObject:&unk_282C7F640])
    {
      v36 = objc_alloc_init(PXGViewRenderer);
      viewRenderer = v13->_viewRenderer;
      v13->_viewRenderer = v36;

      [(PXGViewRenderer *)v13->_viewRenderer setScrollViewController:v13->_scrollViewController];
      [(PXGViewRenderer *)v13->_viewRenderer setShouldSeparateViewLayers:0];
      [(PXGViewRenderer *)v13->_viewRenderer setRootView:v13];
      [array addObject:v13->_viewRenderer];
    }

    if (v35)
    {
      v38 = [PXGMetalViewRenderDestination alloc];
      v59 = *&configuration->var0;
      v60 = configuration->var3;
      v39 = [(PXGMetalViewRenderDestination *)v38 initWithDisplayConfiguration:&v59];
      [(PXGView *)v13 displayScaleMultiplier];
      [(PXGMetalViewRenderDestination *)v39 setDisplayScaleMultiplier:?];
      v40 = [PXGMetalRenderer alloc];
      v41 = [(PXGMetalRenderer *)v40 initWithRenderDestination:v39 layoutQueue:MEMORY[0x277D85CD0]];
      metalRenderer = v13->_metalRenderer;
      v13->_metalRenderer = v41;

      metalView = [(PXGMetalViewRenderDestination *)v39 metalView];
      metalView = v13->_metalView;
      v13->_metalView = metalView;

      [array addObject:v13->_metalRenderer];
    }

    v45 = [PXGEngine alloc];
    v46 = objc_alloc_init(PXGAnimator);
    v47 = [(PXGEngine *)v45 initWithAnimator:v46 renderers:array displayLinkClass:objc_opt_class() layoutQueue:MEMORY[0x277D85CD0]];
    engine = v13->_engine;
    v13->_engine = v47;

    [(PXGEngine *)v13->_engine setScrollController:v26];
    [(PXGEngine *)v13->_engine setScrollViewSpeedometer:v13->_scrollingSpeedometer];
    [(PXGEngine *)v13->_engine setInteractionView:v13];
    [(PXGEngine *)v13->_engine setDelegate:v13];
    coalescingAXResponder = [(PXGEngine *)v13->_engine coalescingAXResponder];
    [coalescingAXResponder setAxNextResponder:v13];

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
      clearColor2 = [MEMORY[0x277D75348] clearColor];
      [(MTKView *)v52 setBackgroundColor:clearColor2];

      if (MEMORY[0x21CEE3960]([(MTKView *)v52 setAutoresizingMask:0]) && _os_feature_enabled_impl() && configuration->var1)
      {
        scrollView6 = [v26 scrollView];
        [scrollView6 addSubview:v52];

        v13->_isMetalViewInScrollView = 1;
      }

      else
      {
        [(PXGView *)v13 addSubview:v52];
      }
    }

    scrollView7 = [(PXScrollViewController *)v13->_scrollViewController scrollView];
    [(PXGView *)v13 addSubview:scrollView7];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PXGView *)v13 setBackgroundColor:systemBackgroundColor];

    [defaultCenter addObserver:v13 selector:sel__updateInvertColors name:*MEMORY[0x277D76480] object:0];
    [defaultCenter addObserver:v13 selector:sel__handleSceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];
    [defaultCenter addObserver:v13 selector:sel__handleSceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:0];
    v13->_isAccessibilityEnabled = [objc_opt_class() forceAccessibilityEnabled];
    v13->_offscreenEffectQuality = 3;
  }

  return v13;
}

- (PXGView)initWithFrame:(CGRect)frame allowedPresentationTypes:(id)types
{
  v6 = 0;
  v5 = PXGViewDisplayConfigurationDefault;
  return [(PXGView *)self initWithFrame:types allowedPresentationTypes:&v5 displayConfiguration:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (PXGView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGView.m" lineNumber:194 description:{@"%s is not available as initializer", "-[PXGView initWithCoder:]"}];

  abort();
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options
{
  objectCopy = object;
  dCopy = d;
  v8 = +[PXTungstenSettings sharedInstance];
  v9 = PXDebugHierarchyObjectsInGroupForView(dCopy, objectCopy, @"PXGViewLayoutsAndSpritesHierarchyIdentifier", [v8 enableXcodeCustomDebugHierarchy]);

  return v9;
}

+ (void)setForceAccessibilityEnabled:(BOOL)enabled
{
  if (s_forceAccessibilityEnabled != enabled)
  {
    s_forceAccessibilityEnabled = enabled;
    v5 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"PXGInitializeAccessibilityNotification" object:0 userInfo:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v5];
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