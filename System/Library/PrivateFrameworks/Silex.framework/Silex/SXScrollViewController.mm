@interface SXScrollViewController
- (BOOL)accessibilityShouldHandleInteractionForView:(id)view;
- (BOOL)accessibilityShouldScrollForScrollView:(id)view defaultValue:(BOOL)value;
- (BOOL)addInteractivityFocusForComponent:(id)component;
- (BOOL)allowInteractivityFocusForComponent:(id)component;
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isPresentingFullscreenCanvas;
- (BOOL)isScrolling;
- (BOOL)isValidBlueprintForCurrentSize:(id)size;
- (BOOL)resignFirstResponder;
- (BOOL)scrollView:(id)view shouldOccludeAccessibilityElement:(id)element;
- (BOOL)shouldPreventDraggingForScrollView:(id)view;
- (BOOL)shouldRestoreScrollPositionForLayoutBlueprint:(id)blueprint;
- (BOOL)shouldStartPreviewForInteractionContextManager:(id)manager;
- (CGRect)frameOfComponentWithVideoPlayerViewController:(id)controller;
- (CGSize)viewportSize;
- (NSString)selectedText;
- (SXExperimentationDelegate)experimentationDelegate;
- (SXScrollViewController)initWithScrollView:(id)view documentControllerContainer:(id)container resourceDataSourceContainer:(id)sourceContainer analyticsReportingContainer:(id)reportingContainer presentationDelegateContainer:(id)delegateContainer presentationAttributeManager:(id)manager viewport:(id)viewport tangierController:(id)self0 componentController:(id)self1 interactor:(id)self2 appStateMonitor:(id)self3 viewControllerPresentingManager:(id)self4 scrollPositionManager:(id)self5 documentStyleRenderer:(id)self6 componentInteractionManager:(id)self7 interactionContextManager:(id)self8 hoverStyleManager:(id)self9 scrollReporter:(id)reporter videoPlayerViewControllerManager:(id)controllerManager mediaSharingPolicyProvider:(id)provider fontIndex:(id)index documentProvider:(id)documentProvider transitionDataSourceProvider:(id)sourceProvider DOMObjectProvider:(id)objectProvider experimentationManager:(id)experimentationManager;
- (SXScrollViewControllerDelegate)delegate;
- (UIColor)documentBackgroundColor;
- (UIEdgeInsets)safeAreaInsets;
- (UIResponder)responder;
- (UITraitCollection)presentationTraitCollection;
- (double)snaplineForContentOffset:(double)offset velocity:(double)velocity;
- (id)canvasViewController;
- (id)headlineAccessibilityElement;
- (id)interactiveCanvasController;
- (id)presentingContentViewController;
- (id)requestFullScreenCanvasViewControllerForComponent:(id)component canvasController:(id)controller withCompletionBlock:(id)block;
- (id)requestFullScreenCanvasViewControllerForComponent:(id)component withCompletionBlock:(id)block;
- (id)scrollPosition;
- (id)scrollPositionForComponentViews:(id)views;
- (id)scrollPositionForPlayingVideoComponentInComponentViews:(id)views;
- (id)scrollViewForFullscreenGalleryWithComponentIdentifier:(id)identifier;
- (id)scrollViewForStripGalleryWithComponentIdentifier:(id)identifier;
- (id)searchWithContext:(id)context;
- (id)textScrollPositionForComponentViews:(id)views;
- (id)videoComponentViewForVideoPlayerViewController:(id)controller;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)addComponentView:(id)view;
- (void)applyContentOverlayBlueprint:(id)blueprint topOffset:(double)offset;
- (void)applyFooterBlueprint:(id)blueprint;
- (void)applyHeaderBlueprint:(id)blueprint;
- (void)assistiveTechnologyStatusDidChange:(id)change;
- (void)dealloc;
- (void)dictionaryWithComponentOffsets:(id)offsets forComponentViews:(id)views;
- (void)dismissFullscreenCanvasForComponent:(id)component;
- (void)displayContentsAfterLayoutWithInteractor:(id)interactor;
- (void)finishArticleScrollEvents;
- (void)hideContentsForLayoutWithInteractor:(id)interactor;
- (void)interactor:(id)interactor didIntegrateBlueprint:(id)blueprint;
- (void)interactor:(id)interactor willIntegrateBlueprint:(id)blueprint;
- (void)interactor:(id)interactor willLayoutWithOptions:(id)options;
- (void)loadContext:(id)context analyticsReporting:(id)reporting;
- (void)presentFullscreenGalleryWithComponentIdentifier:(id)identifier;
- (void)reloadSearch;
- (void)removeInteractivityFocusForComponent:(id)component;
- (void)screenTraitCollectionDidChange:(id)change;
- (void)scrollToRect:(CGRect)rect animated:(BOOL)animated;
- (void)setupArticleExperimentation;
- (void)showScrollViewIfNeeded;
- (void)smartInvertColorsStatusDidChange:(id)change;
- (void)spacebarPressedWithModifierFlags:(int64_t)flags;
- (void)tangierController:(id)controller scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)tangierController:(id)controller scrollViewWillBeginDragging:(id)dragging;
- (void)tangierController:(id)controller scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)tangierControllerDidScroll:(id)scroll;
- (void)tangierControllerDidStopScrolling:(id)scrolling;
- (void)tangierControllerWillStartScrolling:(id)scrolling;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBehaviorForComponentView:(id)view;
- (void)updatePresentationWithAttributes:(id)attributes;
- (void)updatePrimaryContentScrollProgress;
- (void)updateScrollPosition:(id)position animated:(BOOL)animated;
- (void)updateStickyHeaders;
- (void)updateViewportForBlueprint:(id)blueprint;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
- (void)willDismissFullscreenCanvasForComponent:(id)component;
- (void)willReturnToFullscreenForComponent:(id)component;
@end

@implementation SXScrollViewController

- (SXScrollViewController)initWithScrollView:(id)view documentControllerContainer:(id)container resourceDataSourceContainer:(id)sourceContainer analyticsReportingContainer:(id)reportingContainer presentationDelegateContainer:(id)delegateContainer presentationAttributeManager:(id)manager viewport:(id)viewport tangierController:(id)self0 componentController:(id)self1 interactor:(id)self2 appStateMonitor:(id)self3 viewControllerPresentingManager:(id)self4 scrollPositionManager:(id)self5 documentStyleRenderer:(id)self6 componentInteractionManager:(id)self7 interactionContextManager:(id)self8 hoverStyleManager:(id)self9 scrollReporter:(id)reporter videoPlayerViewControllerManager:(id)controllerManager mediaSharingPolicyProvider:(id)provider fontIndex:(id)index documentProvider:(id)documentProvider transitionDataSourceProvider:(id)sourceProvider DOMObjectProvider:(id)objectProvider experimentationManager:(id)experimentationManager
{
  viewCopy = view;
  containerCopy = container;
  sourceContainerCopy = sourceContainer;
  sourceContainerCopy2 = sourceContainer;
  reportingContainerCopy = reportingContainer;
  delegateContainerCopy = delegateContainer;
  delegateContainerCopy2 = delegateContainer;
  managerCopy = manager;
  viewportCopy = viewport;
  controllerCopy = controller;
  componentControllerCopy = componentController;
  interactorCopy = interactor;
  monitorCopy = monitor;
  presentingManagerCopy = presentingManager;
  positionManagerCopy = positionManager;
  rendererCopy = renderer;
  interactionManagerCopy = interactionManager;
  contextManagerCopy = contextManager;
  styleManagerCopy = styleManager;
  reporterCopy = reporter;
  controllerManagerCopy = controllerManager;
  providerCopy = provider;
  indexCopy = index;
  documentProviderCopy = documentProvider;
  sourceProviderCopy = sourceProvider;
  objectProviderCopy = objectProvider;
  experimentationManagerCopy = experimentationManager;
  v81.receiver = self;
  v81.super_class = SXScrollViewController;
  v35 = [(SXScrollViewController *)&v81 initWithNibName:0 bundle:0];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_scrollView, view);
    objc_storeStrong(&v36->_documentControllerContainer, container);
    objc_storeStrong(&v36->_analyticsReportingContainer, reportingContainer);
    objc_storeStrong(&v36->_resourceDataSourceContainer, sourceContainerCopy);
    v58 = documentProviderCopy;
    objc_storeStrong(&v36->_presentationDelegateContainer, delegateContainerCopy);
    objc_storeStrong(&v36->_presentationAttributesManager, manager);
    objc_storeStrong(&v36->_mediaSharingPolicyProvider, provider);
    [(SXPresentationDelegateContainer *)v36->_presentationDelegateContainer registerPresentationDelegate:v36];
    objc_storeStrong(&v36->_viewControllerPresentingManager, presentingManager);
    [presentingManagerCopy setPresentingViewController:v36];
    objc_storeStrong(&v36->_scrollPositionManager, positionManager);
    [positionManagerCopy setScrollPositionRestoring:v36];
    objc_storeStrong(&v36->_interactionContextManager, contextManager);
    [(SXInteractionContextManager *)v36->_interactionContextManager setDelegate:v36];
    objc_storeStrong(&v36->_hoverStyleManager, styleManager);
    objc_storeStrong(&v36->_componentInteractionManager, interactionManager);
    objc_storeStrong(&v36->_documentStyleRenderer, renderer);
    objc_storeStrong(&v36->_viewport, viewport);
    objc_storeStrong(&v36->_appStateMonitor, monitor);
    objc_storeStrong(&v36->_tangierController, controller);
    [(SXTangierController *)v36->_tangierController setDelegate:v36];
    objc_storeStrong(&v36->_componentController, componentController);
    objc_storeStrong(&v36->_interactor, interactor);
    [(SXFormatInteractor *)v36->_interactor setDelegate:v36];
    [(SXFormatInteractor *)v36->_interactor updateWithPresentationEnvironment:v36];
    v37 = objc_alloc_init(SXFullscreenVideoPlaybackManager);
    fullscreenVideoPlaybackManager = v36->_fullscreenVideoPlaybackManager;
    v36->_fullscreenVideoPlaybackManager = v37;

    objc_storeStrong(&v36->_videoPlayerViewControllerManager, controllerManager);
    array = [MEMORY[0x1E695DF70] array];
    articleScrollEvents = v36->_articleScrollEvents;
    v36->_articleScrollEvents = array;

    v41 = objc_alloc_init(SXTextSelectionManager);
    textSelectionManager = v36->_textSelectionManager;
    v36->_textSelectionManager = v41;

    [(SXTextSelectionManager *)v36->_textSelectionManager addTextSelecting:v36->_tangierController];
    objc_storeStrong(&v36->_scrollReporter, reporter);
    objc_storeStrong(&v36->_fontIndex, index);
    objc_storeStrong(&v36->_documentProvider, documentProvider);
    objc_storeStrong(&v36->_transitionDataSourceProvider, sourceProvider);
    objc_storeStrong(&v36->_DOMObjectProvider, objectProvider);
    objc_storeStrong(&v36->_experimentationManager, experimentationManager);
    v43 = [(SXTangierController *)v36->_tangierController cvc];
    [(SXScrollViewController *)v36 addChildViewController:v43];

    scrollView = v36->_scrollView;
    [(SXScrollViewController *)v36 canvasViewController];
    v46 = v45 = experimentationManagerCopy;
    view = [v46 view];
    [(UIScrollView *)scrollView addSubview:view];

    v48 = v36->_scrollView;
    v49 = [(SXTangierController *)v36->_tangierController icc];
    [(UIScrollView *)v48 setDelegate:v49];

    experimentationManagerCopy = v45;
    v50 = [(SXTangierController *)v36->_tangierController cvc];
    [v50 didMoveToParentViewController:v36];

    documentProviderCopy = v58;
    v51 = [[SXDocumentSectionManager alloc] initWithSectionHosting:v36 viewport:viewportCopy appStateMonitor:monitorCopy];
    documentSectionManager = v36->_documentSectionManager;
    v36->_documentSectionManager = v51;

    [(SXScrollViewController *)v36 setRestoreScrollPositionOnNextLayout:1];
    v36->_isSearchActive = 0;
  }

  return v36;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v12 viewDidLoad];
  view = [(SXScrollViewController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];

  view2 = [(SXScrollViewController *)self view];
  [view2 setClipsToBounds:1];

  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView setScrollsToTop:1];
  view3 = [(SXScrollViewController *)self view];
  [view3 bounds];
  [scrollView setFrame:?];

  [scrollView setAutoresizingMask:18];
  [scrollView setScrollViewDelegate:self];
  [scrollView setAlwaysBounceVertical:1];
  [scrollView setClipsToBounds:0];
  [scrollView setDirectionalLockEnabled:1];
  [scrollView setPreservesSuperviewLayoutMargins:1];
  view4 = [(SXScrollViewController *)self view];
  [view4 addSubview:scrollView];

  interactionContextManager = [(SXScrollViewController *)self interactionContextManager];
  scrollView2 = [(SXScrollViewController *)self scrollView];
  [interactionContextManager registerOnView:scrollView2];

  viewport = [(SXScrollViewController *)self viewport];
  [viewport addViewportChangeListener:self forOptions:8];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_screenTraitCollectionDidChange_ name:*MEMORY[0x1E69DEA38] object:0];
}

- (void)loadContext:(id)context analyticsReporting:(id)reporting
{
  v57 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  reportingCopy = reporting;
  v9 = SXDefaultLog;
  if (contextCopy)
  {
    if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      identifier = [contextCopy identifier];
      *buf = 138543362;
      v56 = identifier;
      _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Loaded Silex context with identifier: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_ERROR))
  {
    [SXScrollViewController loadContext:v9 analyticsReporting:?];
  }

  objc_storeStrong(&self->_context, context);
  documentControllerContainer = [(SXScrollViewController *)self documentControllerContainer];
  documentController = [contextCopy documentController];
  [documentControllerContainer registerDocumentController:documentController];

  resourceDataSourceContainer = [(SXScrollViewController *)self resourceDataSourceContainer];
  resourceDataSource = [contextCopy resourceDataSource];
  [resourceDataSourceContainer registerResourceDataSource:resourceDataSource];

  v16 = [[SXAnalyticsReporterProxy alloc] initWithAnalyticsReporter:reportingCopy];
  analyticsReportingContainer = [(SXScrollViewController *)self analyticsReportingContainer];
  [analyticsReportingContainer registerAnalyticsReporting:v16];

  v18 = [SXComponentAnimationController alloc];
  viewport = [(SXScrollViewController *)self viewport];
  v20 = [(SXComponentAnimationController *)v18 initWithViewport:viewport];
  animationController = self->_animationController;
  self->_animationController = v20;

  v22 = [SXMediaPlaybackController alloc];
  viewport2 = [(SXScrollViewController *)self viewport];
  v24 = [(SXMediaPlaybackController *)&v22->super.isa initWithViewport:viewport2];
  mediaPlaybackController = self->_mediaPlaybackController;
  self->_mediaPlaybackController = v24;

  v26 = objc_alloc(MEMORY[0x1E69DC9C8]);
  scrollView = [(SXScrollViewController *)self scrollView];
  v28 = [v26 initWithReferenceView:scrollView];

  v29 = [SXComponentBehaviorController alloc];
  viewport3 = [(SXScrollViewController *)self viewport];
  v31 = [(SXComponentBehaviorController *)v29 initWithViewport:viewport3 andAnimator:v28];
  behaviorController = self->_behaviorController;
  self->_behaviorController = v31;

  v33 = SXDefaultLog;
  if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    documentController2 = [contextCopy documentController];
    document = [documentController2 document];
    *buf = 138543362;
    v56 = document;
    _os_log_impl(&dword_1D825C000, v34, OS_LOG_TYPE_DEFAULT, "Updating document with provider: %{public}@", buf, 0xCu);
  }

  documentProvider = [(SXScrollViewController *)self documentProvider];
  documentController3 = [contextCopy documentController];
  document2 = [documentController3 document];
  [documentProvider setDocument:document2];

  v40 = [SXDocumentFontFamilyProvider alloc];
  context = [(SXScrollViewController *)self context];
  documentController4 = [context documentController];
  document3 = [documentController4 document];
  v44 = [(SXDocumentFontFamilyProvider *)v40 initWithDocument:document3];

  fontIndex = [(SXScrollViewController *)self fontIndex];
  [fontIndex addFontFamilyProvider:v44];

  experimentationDelegate = [(SXScrollViewController *)self experimentationDelegate];
  LODWORD(documentController4) = [experimentationDelegate isExperimentationEnabled];

  if (documentController4)
  {
    [(SXScrollViewController *)self setupArticleExperimentation];
  }

  objc_initWeak(buf, self);
  appStateMonitor = [(SXScrollViewController *)self appStateMonitor];
  v48 = objc_opt_respondsToSelector();

  if (v48)
  {
    appStateMonitor2 = [(SXScrollViewController *)self appStateMonitor];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __57__SXScrollViewController_loadContext_analyticsReporting___block_invoke;
    v53[3] = &unk_1E84FEC28;
    objc_copyWeak(&v54, buf);
    [appStateMonitor2 performOnApplicationWindowDidBecomeBackground:v53];

    objc_destroyWeak(&v54);
  }

  appStateMonitor3 = [(SXScrollViewController *)self appStateMonitor];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __57__SXScrollViewController_loadContext_analyticsReporting___block_invoke_2;
  v51[3] = &unk_1E84FEC28;
  objc_copyWeak(&v52, buf);
  [appStateMonitor3 performOnApplicationDidEnterBackground:v51];

  objc_destroyWeak(&v52);
  objc_destroyWeak(buf);
}

void __57__SXScrollViewController_loadContext_analyticsReporting___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishArticleScrollEvents];
}

void __57__SXScrollViewController_loadContext_analyticsReporting___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishArticleScrollEvents];
}

- (void)updatePresentationWithAttributes:(id)attributes
{
  v17 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v6 = SXDefaultLog;
  if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = attributesCopy;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Received request to update presentation attributes: %{public}@", &v15, 0xCu);
  }

  context = [(SXScrollViewController *)self context];

  if (context)
  {
    objc_storeStrong(&self->_presentationAttributes, attributes);
    componentController = [(SXScrollViewController *)self componentController];
    presentedBlueprint = [componentController presentedBlueprint];
    [(SXScrollViewController *)self updateViewportForBlueprint:presentedBlueprint];

    if ([attributesCopy enableViewportDebugging] && (-[SXScrollViewController viewportDebugger](self, "viewportDebugger"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v11 = [[SXViewportDebugger alloc] initWithViewport:?];
      [(SXScrollViewController *)self setViewportDebugger:v11];

      viewportDebugger = [(SXScrollViewController *)self viewportDebugger];
      view = [(SXScrollViewController *)self view];
      [(SXViewportDebugger *)viewportDebugger presentOnView:view];
    }

    else if (([attributesCopy enableViewportDebugging] & 1) == 0)
    {
      [(SXScrollViewController *)self setViewportDebugger:0];
    }

    presentationAttributesManager = [(SXScrollViewController *)self presentationAttributesManager];
    [presentationAttributesManager updateAttributes:attributesCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v10 viewWillAppear:?];
  viewport = [(SXScrollViewController *)self viewport];
  [viewport setAppearState:1];

  viewport2 = [(SXScrollViewController *)self viewport];
  [viewport2 setInterfaceOrientation:{-[SXScrollViewController interfaceOrientation](self, "interfaceOrientation")}];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

  [(SXScrollViewController *)self showScrollViewIfNeeded];
  tangierController = [(SXScrollViewController *)self tangierController];
  v9 = [tangierController cvc];
  [v9 beginAppearanceTransition:1 animated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v10 viewDidAppear:appear];
  viewport = [(SXScrollViewController *)self viewport];
  [viewport setAppearState:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_assistiveTechnologyStatusDidChange_ name:*MEMORY[0x1E69DDA58] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_assistiveTechnologyStatusDidChange_ name:*MEMORY[0x1E69DD960] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_smartInvertColorsStatusDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];

  tangierController = [(SXScrollViewController *)self tangierController];
  v9 = [tangierController cvc];
  [v9 endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13.receiver = self;
  v13.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v13 viewWillDisappear:?];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDA58] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DD960] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DD8D8] object:0];

  viewport = [(SXScrollViewController *)self viewport];
  [viewport setAppearState:3];

  [(SXScrollViewController *)self finishArticleScrollEvents];
  currentCanvasController = [(SXScrollViewController *)self currentCanvasController];
  [currentCanvasController dismiss];

  [(SXScrollViewController *)self dismissFullscreenCanvasForComponent:0];
  tangierController = [(SXScrollViewController *)self tangierController];
  v11 = [tangierController cvc];
  [v11 beginAppearanceTransition:0 animated:disappearCopy];

  textSelectionManager = [(SXScrollViewController *)self textSelectionManager];
  [textSelectionManager clearSelection];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v8 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  viewport = [(SXScrollViewController *)self viewport];
  [viewport setAppearState:0];

  tangierController = [(SXScrollViewController *)self tangierController];
  v7 = [tangierController cvc];
  [v7 endAppearanceTransition];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v23 viewWillLayoutSubviews];
  documentSectionManager = [(SXScrollViewController *)self documentSectionManager];
  headerBlueprint = [(SXScrollViewController *)self headerBlueprint];
  view = [(SXScrollViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  traitCollection = [(SXScrollViewController *)self traitCollection];
  [documentSectionManager heightForBlueprint:headerBlueprint canvasSize:traitCollection traitCollection:{v7, v9}];
  v12 = v11;

  [(SXScrollViewController *)self setHeaderHeight:v12];
  documentSectionManager2 = [(SXScrollViewController *)self documentSectionManager];
  footerBlueprint = [(SXScrollViewController *)self footerBlueprint];
  presentationAttributes = [(SXScrollViewController *)self presentationAttributes];
  [presentationAttributes canvasSize];
  v17 = v16;
  v19 = v18;
  traitCollection2 = [(SXScrollViewController *)self traitCollection];
  [documentSectionManager2 heightForBlueprint:footerBlueprint canvasSize:traitCollection2 traitCollection:{v17, v19}];
  v22 = v21;

  [(SXScrollViewController *)self setFooterHeight:v22];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v6 viewDidLayoutSubviews];
  componentController = [(SXScrollViewController *)self componentController];
  presentedBlueprint = [componentController presentedBlueprint];
  [(SXScrollViewController *)self updateViewportForBlueprint:presentedBlueprint];

  interactor = [(SXScrollViewController *)self interactor];
  [interactor updateWithPresentationEnvironment:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = SXScrollViewController;
  coordinatorCopy = coordinator;
  [(SXScrollViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(SXScrollViewController *)self setTransitioning:1];
  fullscreenVideoPlaybackManager = [(SXScrollViewController *)self fullscreenVideoPlaybackManager];
  [SXFullscreenVideoPlaybackManager willLayoutAndTransitionToSize:fullscreenVideoPlaybackManager];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__SXScrollViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E84FEC50;
  v9[4] = self;
  *&v9[5] = width;
  *&v9[6] = height;
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];
}

uint64_t __77__SXScrollViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fullscreenVideoPlaybackManager];
  [SXFullscreenVideoPlaybackManager didTransitionToSize:v2];

  v3 = *(a1 + 32);

  return [v3 setTransitioning:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v5 traitCollectionDidChange:change];
  interactor = [(SXScrollViewController *)self interactor];
  [interactor updateWithPresentationEnvironment:self];
}

- (void)screenTraitCollectionDidChange:(id)change
{
  interactor = [(SXScrollViewController *)self interactor];
  [interactor updateWithPresentationEnvironment:self];
}

- (void)assistiveTechnologyStatusDidChange:(id)change
{
  componentController = [(SXScrollViewController *)self componentController];
  [componentController assistiveTechnologyStatusDidChange];
}

- (void)smartInvertColorsStatusDidChange:(id)change
{
  interactor = [(SXScrollViewController *)self interactor];
  [interactor updateWithPresentationEnvironment:self];
}

- (void)dealloc
{
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView setDelegate:0];

  tangierController = [(SXScrollViewController *)self tangierController];
  [tangierController teardown];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v6 dealloc];
}

- (BOOL)becomeFirstResponder
{
  tangierController = [(SXScrollViewController *)self tangierController];
  v4 = [tangierController cvc];
  [v4 becomeFirstResponder];

  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  return [(SXScrollViewController *)&v6 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  tangierController = [(SXScrollViewController *)self tangierController];
  v4 = [tangierController cvc];
  [v4 resignFirstResponder];

  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  return [(SXScrollViewController *)&v6 resignFirstResponder];
}

- (UIResponder)responder
{
  tangierController = [(SXScrollViewController *)self tangierController];
  v3 = [tangierController cvc];

  return v3;
}

- (void)applyHeaderBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  documentSectionManager = [(SXScrollViewController *)self documentSectionManager];
  headerBlueprint = [(SXScrollViewController *)self headerBlueprint];
  view = [(SXScrollViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  traitCollection = [(SXScrollViewController *)self traitCollection];
  [documentSectionManager heightForBlueprint:headerBlueprint canvasSize:traitCollection traitCollection:{v10, v12}];
  v15 = v14;

  documentSectionManager2 = [(SXScrollViewController *)self documentSectionManager];
  view2 = [(SXScrollViewController *)self view];
  [view2 bounds];
  v19 = v18;
  v21 = v20;
  traitCollection2 = [(SXScrollViewController *)self traitCollection];
  [documentSectionManager2 heightForBlueprint:blueprintCopy canvasSize:traitCollection2 traitCollection:{v19, v21}];
  v24 = v23;

  [(SXScrollViewController *)self setHeaderHeight:v24];
  if (v15 == v24)
  {
    objc_storeStrong(&self->_headerBlueprint, blueprint);
    documentSectionManager3 = [(SXScrollViewController *)self documentSectionManager];
    presentationAttributes = [(SXScrollViewController *)self presentationAttributes];
    [presentationAttributes canvasSize];
    [documentSectionManager3 applySectionBlueprint:blueprintCopy identifier:@"header" offset:*MEMORY[0x1E695EFF8] size:{*(MEMORY[0x1E695EFF8] + 8), v32, v33}];
  }

  else
  {
    documentSectionManager3 = [(SXScrollViewController *)self componentController];
    presentedBlueprint = [documentSectionManager3 presentedBlueprint];
    v27 = presentedBlueprint;
    if (presentedBlueprint)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __47__SXScrollViewController_applyHeaderBlueprint___block_invoke;
      v44[3] = &unk_1E84FECA0;
      v44[4] = self;
      v45 = presentedBlueprint;
      v46 = documentSectionManager3;
      v28 = MEMORY[0x1DA716BE0](v44);
      if (v15 > 0.0 && v24 == 0.0)
      {
        v29 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:210.0 damping:29.0 initialVelocity:{0.0, 0.0}];
        v30 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v29 timingParameters:0.0];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __47__SXScrollViewController_applyHeaderBlueprint___block_invoke_3;
        v41[3] = &unk_1E84FECC8;
        v41[4] = self;
        v43 = v15;
        v42 = v28;
        [v30 addAnimations:v41];
        v35 = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = __47__SXScrollViewController_applyHeaderBlueprint___block_invoke_4;
        v38 = &unk_1E84FECF0;
        selfCopy = self;
        v40 = blueprintCopy;
        [v30 addCompletion:&v35];
        [v30 startAnimation];
      }

      else
      {
        objc_storeStrong(&self->_headerBlueprint, blueprint);
        v28[2](v28);
      }
    }

    else
    {
      objc_storeStrong(&self->_headerBlueprint, blueprint);
      interactor = [(SXScrollViewController *)self interactor];
      [interactor updateWithPresentationEnvironment:self];
    }
  }
}

void __47__SXScrollViewController_applyHeaderBlueprint___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 interactor];
  [v2 interactor:v3 willIntegrateBlueprint:*(a1 + 40)];

  v4 = [*(a1 + 32) tangierController];
  [v4 setRebuildFlows:0];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SXScrollViewController_applyHeaderBlueprint___block_invoke_2;
  v7[3] = &unk_1E84FEC78;
  v7[4] = *(a1 + 32);
  v8 = v5;
  [v6 integrateBlueprint:v8 withCompletion:v7];
}

void __47__SXScrollViewController_applyHeaderBlueprint___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 interactor];
  [v2 interactor:v3 didIntegrateBlueprint:*(a1 + 40)];
}

uint64_t __47__SXScrollViewController_applyHeaderBlueprint___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) headerBlueprint];
  v3 = [v2 items];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        memset(&v13, 0, sizeof(v13));
        CGAffineTransformMakeTranslation(&v13, 0.0, -*(a1 + 48));
        v9 = [v8 sectionItemViewController];
        v10 = [v9 view];
        v12 = v13;
        [v10 setTransform:&v12];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return (*(*(a1 + 40) + 16))();
}

void __47__SXScrollViewController_applyHeaderBlueprint___block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) headerBlueprint];
  v3 = [v2 items];

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v15 = *MEMORY[0x1E695EFD0];
    v13 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) sectionItemViewController];
        v9 = [v8 view];
        v16[0] = v15;
        v16[1] = v14;
        v16[2] = v13;
        [v9 setTransform:v16];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  objc_storeStrong((*(a1 + 32) + 1216), *(a1 + 40));
  v10 = [*(a1 + 32) documentSectionManager];
  v11 = [*(a1 + 32) headerBlueprint];
  v12 = [*(a1 + 32) scrollView];
  [v12 bounds];
  [v10 applySectionBlueprint:v11 identifier:@"header" offset:*MEMORY[0x1E695EFF8] size:*(MEMORY[0x1E695EFF8] + 8)];
}

- (void)applyFooterBlueprint:(id)blueprint
{
  v62 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  objc_storeStrong(&self->_footerBlueprint, blueprint);
  componentController = [(SXScrollViewController *)self componentController];
  presentedBlueprint = [componentController presentedBlueprint];
  if (!presentedBlueprint)
  {

LABEL_13:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    items = [blueprintCopy items];
    v30 = [items countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v53;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(items);
          }

          sectionItemViewController = [*(*(&v52 + 1) + 8 * i) sectionItemViewController];
          view = [sectionItemViewController view];
          [view setHidden:1];
        }

        v31 = [items countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v31);
    }

    goto LABEL_20;
  }

  v8 = presentedBlueprint;
  componentController2 = [(SXScrollViewController *)self componentController];
  presentedBlueprint2 = [componentController2 presentedBlueprint];
  isComplete = [presentedBlueprint2 isComplete];

  if (!isComplete)
  {
    goto LABEL_13;
  }

  componentController3 = [(SXScrollViewController *)self componentController];
  presentedBlueprint3 = [componentController3 presentedBlueprint];
  [presentedBlueprint3 blueprintSize];
  v15 = v14;

  documentSectionManager = [(SXScrollViewController *)self documentSectionManager];
  [(SXScrollViewController *)self headerHeight];
  v18 = v15 + v17;
  presentationAttributes = [(SXScrollViewController *)self presentationAttributes];
  [presentationAttributes canvasSize];
  [documentSectionManager applySectionBlueprint:blueprintCopy identifier:@"footer" offset:0.0 size:{v18, v20, v21}];

  contentOverlayBlueprint = [(SXScrollViewController *)self contentOverlayBlueprint];

  if (!contentOverlayBlueprint)
  {
    documentSectionManager2 = [(SXScrollViewController *)self documentSectionManager];
    presentationAttributes2 = [(SXScrollViewController *)self presentationAttributes];
    [presentationAttributes2 canvasSize];
    v39 = v38;
    v41 = v40;
    traitCollection = [(SXScrollViewController *)self traitCollection];
    [documentSectionManager2 heightForBlueprint:blueprintCopy canvasSize:traitCollection traitCollection:{v39, v41}];
    v44 = v43;

    [(SXScrollViewController *)self setFooterHeight:v44];
    scrollView = [(SXScrollViewController *)self scrollView];
    scrollView2 = [(SXScrollViewController *)self scrollView];
    [scrollView2 contentSize];
    v48 = v47;
    [(SXScrollViewController *)self footerHeight];
    v50 = v15 + v49;
    [(SXScrollViewController *)self headerHeight];
    [scrollView setContentSize:{v48, v50 + v51}];

    goto LABEL_21;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  items = [blueprintCopy items];
  v24 = [items countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v57;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(items);
        }

        sectionItemViewController2 = [*(*(&v56 + 1) + 8 * j) sectionItemViewController];
        view2 = [sectionItemViewController2 view];
        [view2 setHidden:1];
      }

      v25 = [items countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v25);
  }

LABEL_20:

LABEL_21:
}

- (void)applyContentOverlayBlueprint:(id)blueprint topOffset:(double)offset
{
  blueprintCopy = blueprint;
  objc_storeStrong(&self->_contentOverlayBlueprint, blueprint);
  self->_contentOverlayTopOffset = offset;
  viewport = [(SXScrollViewController *)self viewport];
  [viewport bounds];
  v9 = v8;

  documentSectionManager = [(SXScrollViewController *)self documentSectionManager];
  [(SXScrollViewController *)self contentOverlayTopOffset];
  v12 = v9 + v11;
  presentationAttributes = [(SXScrollViewController *)self presentationAttributes];
  [presentationAttributes canvasSize];
  [documentSectionManager applySectionBlueprint:blueprintCopy identifier:@"contentOverlay" offset:0.0 size:{v12, v14, v15}];

  if (blueprintCopy)
  {
    documentSectionManager2 = [(SXScrollViewController *)self documentSectionManager];
    view = [(SXScrollViewController *)self view];
    [view bounds];
    v19 = v18;
    v21 = v20;
    traitCollection = [(SXScrollViewController *)self traitCollection];
    [documentSectionManager2 heightForBlueprint:blueprintCopy canvasSize:traitCollection traitCollection:{v19, v21}];
    v24 = v23;

    scrollView = [(SXScrollViewController *)self scrollView];
    scrollView2 = [(SXScrollViewController *)self scrollView];
    [scrollView2 contentSize];
    v28 = v27;
    [(SXScrollViewController *)self contentOverlayTopOffset];
    [scrollView setContentSize:{v28, v24 + v9 + v29}];
  }
}

- (void)updatePrimaryContentScrollProgress
{
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;

  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 contentSize];
  v8 = v7;
  scrollView3 = [(SXScrollViewController *)self scrollView];
  [scrollView3 bounds];
  Height = CGRectGetHeight(v17);
  [(SXScrollViewController *)self footerHeight];
  v12 = v11;

  if (v5 > 0.0 && v5 >= v8 - Height - v12)
  {
    delegate = [(SXScrollViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [(SXScrollViewController *)self delegate];
      [delegate2 scrollViewControllerDidScrollToBottomOfPrimaryContent:self];
    }
  }
}

- (void)updateStickyHeaders
{
  v41 = *MEMORY[0x1E69E9840];
  headerBlueprint = [(SXScrollViewController *)self headerBlueprint];

  if (headerBlueprint)
  {
    scrollView = [(SXScrollViewController *)self scrollView];
    [scrollView contentOffset];
    v6 = v5;
    scrollView2 = [(SXScrollViewController *)self scrollView];
    [scrollView2 contentInset];
    v9 = v6 + v8;

    if (v9 < 0.0)
    {
      v37 = 0uLL;
      v38 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      headerBlueprint2 = [(SXScrollViewController *)self headerBlueprint];
      items = [headerBlueprint2 items];

      v11 = [items countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v36;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(items);
            }

            v15 = *(*(&v35 + 1) + 8 * i);
            memset(&v34, 0, sizeof(v34));
            CGAffineTransformMakeTranslation(&v34, 0.0, v9);
            sectionItemViewController = [v15 sectionItemViewController];
            view = [sectionItemViewController view];
            v33 = v34;
            [view setTransform:&v33];
          }

          v12 = [items countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v31 = 0uLL;
      v32 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      headerBlueprint3 = [(SXScrollViewController *)self headerBlueprint];
      items = [headerBlueprint3 items];

      v20 = [items countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v30;
        v27 = *(MEMORY[0x1E695EFD0] + 16);
        v28 = *MEMORY[0x1E695EFD0];
        v26 = *(MEMORY[0x1E695EFD0] + 32);
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(items);
            }

            sectionItemViewController2 = [*(*(&v29 + 1) + 8 * j) sectionItemViewController];
            view2 = [sectionItemViewController2 view];
            *&v34.a = v28;
            *&v34.c = v27;
            *&v34.tx = v26;
            [view2 setTransform:&v34];
          }

          v21 = [items countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v21);
      }
    }
  }
}

- (CGSize)viewportSize
{
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view = [(SXScrollViewController *)self view];
  if (view)
  {
    v13 = view;
    do
    {
      [v13 center];
      v15 = v14;
      [v13 bounds];
      v5 = v5 + v15 - v16 * 0.5;
      [v13 center];
      v18 = v17;
      [v13 bounds];
      v7 = v7 + v18 - v19 * 0.5;
      superview = [v13 superview];

      v13 = superview;
    }

    while (superview);
  }

  view2 = [(SXScrollViewController *)self view];
  window = [view2 window];
  [window bounds];
  v24 = v23;
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  v25 = v24 - CGRectGetMaxY(v35);

  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 bounds];
  v28 = v27;
  scrollView3 = [(SXScrollViewController *)self scrollView];
  [scrollView3 bounds];
  v31 = v25 + v30;

  v32 = v28;
  v33 = v31;
  result.height = v33;
  result.width = v32;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    v4 = selfCopy;
    do
    {
      if ([(SXScrollViewController *)v4 conformsToProtocol:&unk_1F54389A0])
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      parentViewController = [(SXScrollViewController *)v4 parentViewController];

      v7 = v5 == 0;
      if (v5)
      {
        break;
      }

      v4 = parentViewController;
    }

    while (parentViewController);
  }

  else
  {
    v5 = 0;
    parentViewController = 0;
    v7 = 1;
  }

  view = [(SXScrollViewController *)v3 view];
  [view safeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (!v7)
  {
    [(SXScrollViewController *)v5 overrideSafeAreaInsets];
    v12 = v17;
    v16 = v18;
  }

  v19 = v10;
  v20 = v12;
  v21 = v14;
  v22 = v16;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UITraitCollection)presentationTraitCollection
{
  v14[2] = *MEMORY[0x1E69E9840];
  traitCollection = [(SXScrollViewController *)self traitCollection];
  view = [(SXScrollViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  traitCollection2 = [windowScene traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  v9 = MEMORY[0x1E69DD1B8];
  v14[0] = traitCollection;
  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:userInterfaceStyle];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [v9 traitCollectionWithTraitsFromCollections:v11];

  return v12;
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  if ([viewport appearState] == 2)
  {
    componentController = [(SXScrollViewController *)self componentController];
    isPresented = [componentController isPresented];

    if (isPresented)
    {
      videoPlayerViewControllerManager = [(SXScrollViewController *)self videoPlayerViewControllerManager];
      [videoPlayerViewControllerManager setPresentedAndAppeared:1];
    }
  }
}

- (void)interactor:(id)interactor willLayoutWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(SXScrollViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 scrollViewControllerWillLayoutContent:self];
  }

  componentController = [(SXScrollViewController *)self componentController];
  presentedBlueprint = [componentController presentedBlueprint];
  layoutOptions = [presentedBlueprint layoutOptions];
  v12 = [optionsCopy diffWithLayoutOptions:layoutOptions];

  previouslyRestoredScrollPosition = [(SXScrollViewController *)self previouslyRestoredScrollPosition];

  if (previouslyRestoredScrollPosition || v12)
  {

    [(SXScrollViewController *)self setRestoreScrollPositionOnNextLayout:1];
  }

  else
  {
    componentController2 = [(SXScrollViewController *)self componentController];
    presentedBlueprint2 = [componentController2 presentedBlueprint];
    [(SXScrollViewController *)self setRestoreScrollPositionOnNextLayout:[(SXScrollViewController *)self shouldRestoreScrollPositionForLayoutBlueprint:presentedBlueprint2]];
  }
}

- (void)interactor:(id)interactor willIntegrateBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  componentController = [(SXScrollViewController *)self componentController];
  if ([componentController isPresented])
  {
    restoreScrollPositionOnNextLayout = [(SXScrollViewController *)self restoreScrollPositionOnNextLayout];

    if (restoreScrollPositionOnNextLayout)
    {
      previouslyRestoredScrollPosition = [(SXScrollViewController *)self previouslyRestoredScrollPosition];
      v8 = previouslyRestoredScrollPosition;
      if (previouslyRestoredScrollPosition)
      {
        scrollPosition = previouslyRestoredScrollPosition;
      }

      else
      {
        scrollPosition = [(SXScrollViewController *)self scrollPosition];
      }

      v10 = scrollPosition;

      [(SXScrollViewController *)self setRestoredScrollPosition:v10];
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (![(SXScrollViewController *)self restoreScrollPositionOnNextLayout])
  {
    [(SXScrollViewController *)self setRestoreScrollPositionOnNextLayout:1];
  }

LABEL_10:
  componentController2 = [(SXScrollViewController *)self componentController];
  presentedBlueprint = [componentController2 presentedBlueprint];

  if (presentedBlueprint && [presentedBlueprint isComplete])
  {
    layoutOptions = [presentedBlueprint layoutOptions];
    layoutOptions2 = [blueprintCopy layoutOptions];
    v15 = [layoutOptions isEqual:layoutOptions2];

    v16 = v15 ^ 1u;
  }

  else
  {
    v16 = 1;
  }

  tangierController = [(SXScrollViewController *)self tangierController];
  [tangierController setRebuildFlows:v16];

  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView bounds];
  v20 = v19;

  [blueprintCopy blueprintSize];
  v22 = v21;
  [(SXScrollViewController *)self headerHeight];
  v24 = v23;
  documentSectionManager = [(SXScrollViewController *)self documentSectionManager];
  footerBlueprint = [(SXScrollViewController *)self footerBlueprint];
  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 bounds];
  v29 = v28;
  v31 = v30;
  traitCollection = [(SXScrollViewController *)self traitCollection];
  [documentSectionManager heightForBlueprint:footerBlueprint canvasSize:traitCollection traitCollection:{v29, v31}];
  v34 = v33;

  contentOverlayBlueprint = [(SXScrollViewController *)self contentOverlayBlueprint];

  if (contentOverlayBlueprint)
  {
    documentSectionManager2 = [(SXScrollViewController *)self documentSectionManager];
    contentOverlayBlueprint2 = [(SXScrollViewController *)self contentOverlayBlueprint];
    scrollView3 = [(SXScrollViewController *)self scrollView];
    [scrollView3 bounds];
    v40 = v39;
    v42 = v41;
    traitCollection2 = [(SXScrollViewController *)self traitCollection];
    [documentSectionManager2 heightForBlueprint:contentOverlayBlueprint2 canvasSize:traitCollection2 traitCollection:{v40, v42}];
    v45 = v44;

    viewport = [(SXScrollViewController *)self viewport];
    [viewport bounds];
    v48 = v47;
    [(SXScrollViewController *)self contentOverlayTopOffset];
    v50 = v45 + v49 + v48;
  }

  else
  {
    v50 = v22 + v24 + v34;
  }

  scrollView4 = [(SXScrollViewController *)self scrollView];
  [scrollView4 setContentSize:{v20, v50}];

  [(SXScrollViewController *)self updateViewportForBlueprint:blueprintCopy];
}

- (UIColor)documentBackgroundColor
{
  dOMObjectProvider = [(SXScrollViewController *)self DOMObjectProvider];
  documentStyle = [dOMObjectProvider documentStyle];
  backgroundColor = [documentStyle backgroundColor];

  return backgroundColor;
}

- (void)interactor:(id)interactor didIntegrateBlueprint:(id)blueprint
{
  v85 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  tangierController = [(SXScrollViewController *)self tangierController];
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView contentSize];
  v9 = v8;
  v11 = v10;
  componentController = [(SXScrollViewController *)self componentController];
  flattenedComponentViews = [componentController flattenedComponentViews];
  [tangierController updateCanvasSize:flattenedComponentViews forComponentViews:{v9, v11}];

  behaviorController = [(SXScrollViewController *)self behaviorController];
  [behaviorController reset];

  [(SXScrollViewController *)self updateViewportForBlueprint:blueprintCopy];
  v15 = [blueprintCopy snapLinesIncludingChildren:1];
  [(SXScrollViewController *)self setSnapLines:v15];

  videoPlayerViewControllerManager = [(SXScrollViewController *)self videoPlayerViewControllerManager];
  viewport = [(SXScrollViewController *)self viewport];
  [videoPlayerViewControllerManager setPresentedAndAppeared:{objc_msgSend(viewport, "appearState") == 2}];

  fullscreenVideoPlaybackManager = [(SXScrollViewController *)self fullscreenVideoPlaybackManager];
  viewport2 = [(SXScrollViewController *)self viewport];
  [viewport2 bounds];
  [SXFullscreenVideoPlaybackManager didLayoutForSize:fullscreenVideoPlaybackManager];

  delegate = [(SXScrollViewController *)self delegate];
  LOBYTE(viewport2) = objc_opt_respondsToSelector();

  if (viewport2)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 scrollViewControllerDidLayoutContent:self];
  }

  documentSectionManager = [(SXScrollViewController *)self documentSectionManager];
  headerBlueprint = [(SXScrollViewController *)self headerBlueprint];
  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 bounds];
  [documentSectionManager applySectionBlueprint:headerBlueprint identifier:@"header" offset:*MEMORY[0x1E695EFF8] size:*(MEMORY[0x1E695EFF8] + 8)];

  if ([blueprintCopy isComplete])
  {
    documentSectionManager2 = [(SXScrollViewController *)self documentSectionManager];
    footerBlueprint = [(SXScrollViewController *)self footerBlueprint];
    [blueprintCopy blueprintSize];
    v28 = v27;
    [(SXScrollViewController *)self headerHeight];
    v30 = v28 + v29;
    scrollView3 = [(SXScrollViewController *)self scrollView];
    [scrollView3 bounds];
    [documentSectionManager2 applySectionBlueprint:footerBlueprint identifier:@"footer" offset:0.0 size:v30];
  }

  viewport3 = [(SXScrollViewController *)self viewport];
  [viewport3 bounds];

  scrollView4 = [(SXScrollViewController *)self scrollView];
  [scrollView4 bounds];
  v35 = v34;

  documentSectionManager3 = [(SXScrollViewController *)self documentSectionManager];
  contentOverlayBlueprint = [(SXScrollViewController *)self contentOverlayBlueprint];
  [(SXScrollViewController *)self contentOverlayTopOffset];
  v39 = v35 + v38;
  scrollView5 = [(SXScrollViewController *)self scrollView];
  [scrollView5 bounds];
  [documentSectionManager3 applySectionBlueprint:contentOverlayBlueprint identifier:@"contentOverlay" offset:0.0 size:v39];

  behaviorController2 = [(SXScrollViewController *)self behaviorController];
  [behaviorController2 update];

  documentStyleRenderer = [(SXScrollViewController *)self documentStyleRenderer];
  dOMObjectProvider = [(SXScrollViewController *)self DOMObjectProvider];
  documentStyle = [dOMObjectProvider documentStyle];
  scrollView6 = [(SXScrollViewController *)self scrollView];
  [documentStyleRenderer applyStyle:documentStyle onView:scrollView6];

  delegate3 = [(SXScrollViewController *)self delegate];
  LOBYTE(documentStyle) = objc_opt_respondsToSelector();

  if (documentStyle)
  {
    delegate4 = [(SXScrollViewController *)self delegate];
    dOMObjectProvider2 = [(SXScrollViewController *)self DOMObjectProvider];
    documentStyle2 = [dOMObjectProvider2 documentStyle];
    [delegate4 scrollViewController:self didApplyDocumentStyle:documentStyle2];
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  headerBlueprint2 = [(SXScrollViewController *)self headerBlueprint];
  items = [headerBlueprint2 items];

  v52 = [items countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v80;
    do
    {
      v55 = 0;
      do
      {
        if (*v80 != v54)
        {
          objc_enumerationMutation(items);
        }

        v56 = *(*(&v79 + 1) + 8 * v55);
        if (objc_opt_respondsToSelector())
        {
          dOMObjectProvider3 = [(SXScrollViewController *)self DOMObjectProvider];
          documentStyle3 = [dOMObjectProvider3 documentStyle];
          [v56 scrollViewController:self didApplyDocumentStyle:documentStyle3];
        }

        ++v55;
      }

      while (v53 != v55);
      v53 = [items countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v53);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  footerBlueprint2 = [(SXScrollViewController *)self footerBlueprint];
  items2 = [footerBlueprint2 items];

  v61 = [items2 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v76;
    do
    {
      v64 = 0;
      do
      {
        if (*v76 != v63)
        {
          objc_enumerationMutation(items2);
        }

        v65 = *(*(&v75 + 1) + 8 * v64);
        if (objc_opt_respondsToSelector())
        {
          dOMObjectProvider4 = [(SXScrollViewController *)self DOMObjectProvider];
          documentStyle4 = [dOMObjectProvider4 documentStyle];
          [v65 scrollViewController:self didApplyDocumentStyle:documentStyle4];
        }

        ++v64;
      }

      while (v62 != v64);
      v62 = [items2 countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v62);
  }

  restoredScrollPosition = [(SXScrollViewController *)self restoredScrollPosition];
  if (restoredScrollPosition)
  {
    v69 = restoredScrollPosition;
    isComplete = [blueprintCopy isComplete];

    if (isComplete)
    {
      restoredScrollPosition2 = [(SXScrollViewController *)self restoredScrollPosition];
      [(SXScrollViewController *)self updateScrollPosition:restoredScrollPosition2 animated:0];

      restoredScrollPosition3 = [(SXScrollViewController *)self restoredScrollPosition];
      [(SXScrollViewController *)self setPreviouslyRestoredScrollPosition:restoredScrollPosition3];

      [(SXScrollViewController *)self setRestoredScrollPosition:0];
    }
  }

  if ([(SXScrollViewController *)self isSearchActive])
  {
    tangierController2 = [(SXScrollViewController *)self tangierController];
    rebuildFlows = [tangierController2 rebuildFlows];

    if (rebuildFlows)
    {
      [(SXScrollViewController *)self reloadSearch];
    }
  }
}

- (void)hideContentsForLayoutWithInteractor:(id)interactor
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__SXScrollViewController_hideContentsForLayoutWithInteractor___block_invoke;
  v3[3] = &unk_1E84FED18;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

void __62__SXScrollViewController_hideContentsForLayoutWithInteractor___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) scrollView];
  [v1 setAlpha:0.0];
}

- (void)displayContentsAfterLayoutWithInteractor:(id)interactor
{
  if ([(SXScrollViewController *)self transitioning])
  {
    view = [(SXScrollViewController *)self view];
    layer = [view layer];
    v6 = [layer animationForKey:@"bounds"];

    if (v6)
    {
      view2 = [(SXScrollViewController *)self view];
      layer2 = [view2 layer];
      [layer2 convertTime:0 fromLayer:CACurrentMediaTime()];
      v10 = v9;
      [v6 beginTime];
      v12 = v10 - v11;

      [v6 duration];
      v14 = v13 - v12;
      if (v14 >= 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }
    }

    else
    {
      v15 = 0.15;
    }
  }

  else
  {
    v15 = 0.15;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__SXScrollViewController_displayContentsAfterLayoutWithInteractor___block_invoke;
  v16[3] = &unk_1E84FED18;
  v16[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v16 options:0 animations:v15 completion:0.0];
}

void __67__SXScrollViewController_displayContentsAfterLayoutWithInteractor___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) scrollView];
  [v1 setAlpha:1.0];
}

- (void)addComponentView:(id)view
{
  viewCopy = view;
  tangierController = [(SXScrollViewController *)self tangierController];
  [tangierController initialSubviewCount];

  for (i = 0; ; ++i)
  {
    canvasViewController = [(SXScrollViewController *)self canvasViewController];
    view = [canvasViewController view];
    subviews = [view subviews];
    v9 = [subviews count];

    canvasViewController2 = [(SXScrollViewController *)self canvasViewController];
    view2 = [canvasViewController2 view];
    view4 = view2;
    if (i >= v9)
    {
      [view2 addSubview:viewCopy];
      goto LABEL_8;
    }

    subviews2 = [view2 subviews];
    v14 = [subviews2 objectAtIndex:i];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      canvasViewController3 = [(SXScrollViewController *)self canvasViewController];
      view3 = [canvasViewController3 view];
      subviews3 = [view3 subviews];
      v19 = [subviews3 indexOfObject:v15];

      componentIndex = [v15 componentIndex];
      if (componentIndex > [viewCopy componentIndex])
      {
        break;
      }
    }
  }

  canvasViewController2 = [(SXScrollViewController *)self canvasViewController];
  view4 = [canvasViewController2 view];
  [view4 insertSubview:viewCopy atIndex:v19];
LABEL_8:
}

- (void)updateViewportForBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  viewport = [(SXScrollViewController *)self viewport];
  [viewport beginUpdates];

  [blueprintCopy blueprintSize];
  v7 = v6;
  v9 = v8;
  [(SXScrollViewController *)self headerHeight];
  v11 = v9 + v10;
  viewport2 = [(SXScrollViewController *)self viewport];
  [viewport2 setDocumentSize:{v7, v11}];

  viewport3 = [(SXScrollViewController *)self viewport];
  [(SXScrollViewController *)self headerHeight];
  v15 = v14;
  view = [(SXScrollViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v56);
  [blueprintCopy blueprintSize];
  v19 = v18;

  [viewport3 setContentFrame:{0.0, v15, Width, v19}];
  delegate = [(SXScrollViewController *)self delegate];
  LOBYTE(viewport3) = objc_opt_respondsToSelector();

  v21 = 0.0;
  if (viewport3)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 navigationBarHeightForScrollViewController:self];
    v21 = v23;
  }

  delegate3 = [(SXScrollViewController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    delegate4 = [(SXScrollViewController *)self delegate];
    [delegate4 toolBarHeightForScrollViewController:self];
  }

  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView contentOffset];
  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 bounds];
  scrollView3 = [(SXScrollViewController *)self scrollView];
  [scrollView3 contentSize];

  scrollView4 = [(SXScrollViewController *)self scrollView];
  [scrollView4 contentOffset];
  scrollView5 = [(SXScrollViewController *)self scrollView];
  [scrollView5 bounds];
  CGRectGetHeight(v57);

  [(SXScrollViewController *)self headerHeight];
  v33 = v32;
  scrollView6 = [(SXScrollViewController *)self scrollView];
  [scrollView6 contentOffset];
  v36 = v21 + v35;

  if (v36 >= 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v38 = v33 - v37;
  if (v38 >= 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  scrollView7 = [(SXScrollViewController *)self scrollView];
  [scrollView7 contentOffset];
  v42 = v41;

  v43 = -v42;
  if (v42 >= 0.0)
  {
    v43 = 0.0;
  }

  if (v21 >= v43)
  {
    v43 = v21;
  }

  v44 = v39 + v43;
  scrollView8 = [(SXScrollViewController *)self scrollView];
  [scrollView8 bounds];
  CGRectGetHeight(v58);

  scrollView9 = [(SXScrollViewController *)self scrollView];
  [scrollView9 contentOffset];
  v48 = v44 + v47;

  viewport4 = [(SXScrollViewController *)self viewport];
  view2 = [(SXScrollViewController *)self view];
  [view2 bounds];
  [viewport4 setDynamicBounds:{0.0, v48}];

  viewport5 = [(SXScrollViewController *)self viewport];
  scrollView10 = [(SXScrollViewController *)self scrollView];
  [scrollView10 bounds];
  [viewport5 setBounds:?];

  viewport6 = [(SXScrollViewController *)self viewport];
  [viewport6 setInterfaceOrientation:{-[SXScrollViewController interfaceOrientation](self, "interfaceOrientation")}];

  viewport7 = [(SXScrollViewController *)self viewport];
  [viewport7 endUpdates];
}

- (BOOL)isPresentingFullscreenCanvas
{
  fullscreenCanvasViewController = [(SXScrollViewController *)self fullscreenCanvasViewController];
  v3 = fullscreenCanvasViewController != 0;

  return v3;
}

- (CGRect)frameOfComponentWithVideoPlayerViewController:(id)controller
{
  v4 = [(SXScrollViewController *)self videoComponentViewForVideoPlayerViewController:controller];
  v5 = v4;
  if (v4)
  {
    [v4 contentFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    scrollView = [(SXScrollViewController *)self scrollView];
    [v5 convertRect:scrollView toView:{v7, v9, v11, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = *MEMORY[0x1E695F058];
    v18 = *(MEMORY[0x1E695F058] + 8);
    v20 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)videoComponentViewForVideoPlayerViewController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  componentController = [(SXScrollViewController *)self componentController];
  flattenedComponentViews = [componentController flattenedComponentViews];

  v7 = [flattenedComponentViews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(flattenedComponentViews);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          videoPlayerViewController = [v10 videoPlayerViewController];

          if (videoPlayerViewController == controllerCopy)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [flattenedComponentViews countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (NSString)selectedText
{
  textSelectionManager = [(SXScrollViewController *)self textSelectionManager];
  selectedText = [textSelectionManager selectedText];

  return selectedText;
}

- (id)headlineAccessibilityElement
{
  componentController = [(SXScrollViewController *)self componentController];
  v4 = [componentController componentViewsForRole:32];
  firstObject = [v4 firstObject];

  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [firstObject absoluteFrame];
  v20.x = v15;
  v20.y = v16;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  LODWORD(componentController) = CGRectContainsPoint(v21, v20);

  if (componentController)
  {
    v17 = [firstObject _accessibilityFindDescendant:&__block_literal_global_2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)scrollPosition
{
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView contentInset];
  v5 = v4;
  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 contentOffset];
  v8 = v5 + v7;

  if (v8 > 0.001 || (-[SXScrollViewController presentationAttributes](self, "presentationAttributes"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 useTransparentToolbar], v9, v10))
  {
    componentController = [(SXScrollViewController *)self componentController];
    flattenedComponentViews = [componentController flattenedComponentViews];
    v13 = [(SXScrollViewController *)self scrollPositionForPlayingVideoComponentInComponentViews:flattenedComponentViews];

    if (!v13)
    {
      componentController2 = [(SXScrollViewController *)self componentController];
      flattenedComponentViews2 = [componentController2 flattenedComponentViews];
      v13 = [(SXScrollViewController *)self textScrollPositionForComponentViews:flattenedComponentViews2];

      if (!v13)
      {
        componentController3 = [(SXScrollViewController *)self componentController];
        flattenedComponentViews3 = [componentController3 flattenedComponentViews];
        v13 = [(SXScrollViewController *)self scrollPositionForComponentViews:flattenedComponentViews3];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)scrollPositionForComponentViews:(id)views
{
  v4 = MEMORY[0x1E695DF90];
  viewsCopy = views;
  dictionary = [v4 dictionary];
  [(SXScrollViewController *)self dictionaryWithComponentOffsets:dictionary forComponentViews:viewsCopy];

  allKeys = [dictionary allKeys];
  v42 = [allKeys sortedArrayUsingSelector:sel_compare_];

  firstObject = [v42 firstObject];
  v9 = [dictionary objectForKey:firstObject];

  superview = [v9 superview];
  [v9 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  scrollView = [(SXScrollViewController *)self scrollView];
  [superview convertRect:scrollView toView:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [SXComponentScrollPosition alloc];
  component = [v9 component];
  identifier = [component identifier];
  componentController = [(SXScrollViewController *)self componentController];
  presentedBlueprint = [componentController presentedBlueprint];
  layoutOptions = [presentedBlueprint layoutOptions];
  columnLayout = [layoutOptions columnLayout];
  [columnLayout constrainedViewportSize];
  v36 = v35;
  v44.origin.x = v21;
  v44.origin.y = v23;
  v44.size.width = v25;
  v44.size.height = v27;
  MinY = CGRectGetMinY(v44);
  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 contentOffset];
  v40 = [(SXComponentScrollPosition *)v28 initWithComponentIdentifier:identifier canvasWidth:v36 relativePageOffset:MinY - v39];

  return v40;
}

- (void)dictionaryWithComponentOffsets:(id)offsets forComponentViews:(id)views
{
  v38 = *MEMORY[0x1E69E9840];
  offsetsCopy = offsets;
  viewsCopy = views;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [viewsCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        superview = [v12 superview];

        if (superview)
        {
          viewport = [(SXScrollViewController *)self viewport];
          [v12 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          superview2 = [v12 superview];
          [viewport convertRectToViewportCoordinateSpace:superview2 fromView:{v16, v18, v20, v22}];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v39.origin.x = v25;
          v39.origin.y = v27;
          v39.size.width = v29;
          v39.size.height = v31;
          if (CGRectGetMinY(v39) > 0.0)
          {
            v32 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            [offsetsCopy setObject:v12 forKey:v32];
          }
        }
      }

      v9 = [viewsCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }
}

- (id)scrollPositionForPlayingVideoComponentInComponentViews:(id)views
{
  v63 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  viewsCopy = views;
  v5 = [viewsCopy countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          videoPlayerViewController = [v10 videoPlayerViewController];
          if ([videoPlayerViewController isPlaying])
          {
            [v10 absoluteFrame];
            v13 = v12;
            v15 = v14;
            v17 = v16;
            v19 = v18;
            viewport = [(SXScrollViewController *)self viewport];
            [viewport dynamicBounds];
            v67.origin.x = v21;
            v67.origin.y = v22;
            v67.size.width = v23;
            v67.size.height = v24;
            v65.origin.x = v13;
            v65.origin.y = v15;
            v65.size.width = v17;
            v65.size.height = v19;
            v25 = CGRectIntersectsRect(v65, v67);

            if (v25)
            {
              superview = [v10 superview];
              [v10 frame];
              v28 = v27;
              v30 = v29;
              v32 = v31;
              v34 = v33;
              scrollView = [(SXScrollViewController *)self scrollView];
              [superview convertRect:scrollView toView:{v28, v30, v32, v34}];
              v37 = v36;
              v39 = v38;
              v41 = v40;
              v43 = v42;

              v57 = [SXComponentScrollPosition alloc];
              component = [v10 component];
              identifier = [component identifier];
              componentController = [(SXScrollViewController *)self componentController];
              presentedBlueprint = [componentController presentedBlueprint];
              layoutOptions = [presentedBlueprint layoutOptions];
              columnLayout = [layoutOptions columnLayout];
              [columnLayout constrainedViewportSize];
              v51 = v50;
              v66.origin.x = v37;
              v66.origin.y = v39;
              v66.size.width = v41;
              v66.size.height = v43;
              MinY = CGRectGetMinY(v66);
              scrollView2 = [(SXScrollViewController *)self scrollView];
              [scrollView2 contentOffset];
              v55 = [(SXComponentScrollPosition *)v57 initWithComponentIdentifier:identifier canvasWidth:v51 relativePageOffset:MinY - v54];

              goto LABEL_15;
            }
          }

          else
          {
          }
        }
      }

      v6 = [viewsCopy countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v6);
  }

  v55 = 0;
LABEL_15:

  return v55;
}

- (id)textScrollPositionForComponentViews:(id)views
{
  componentController = [(SXScrollViewController *)self componentController];
  presentedBlueprint = [componentController presentedBlueprint];
  layoutOptions = [presentedBlueprint layoutOptions];
  columnLayout = [layoutOptions columnLayout];
  [columnLayout constrainedViewportSize];

  tangierController = [(SXScrollViewController *)self tangierController];
  viewport = [(SXScrollViewController *)self viewport];
  [viewport dynamicBounds];
  v10 = [tangierController scrollPositionForVisibleBounds:? canvasWidth:?];

  return v10;
}

- (void)updateScrollPosition:(id)position animated:(BOOL)animated
{
  animatedCopy = animated;
  positionCopy = position;
  componentController = [(SXScrollViewController *)self componentController];
  isPresented = [componentController isPresented];

  if (!isPresented)
  {
    [(SXScrollViewController *)self setRestoredScrollPosition:positionCopy];
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = positionCopy;
    componentController2 = [(SXScrollViewController *)self componentController];
    componentIdentifier = [v8 componentIdentifier];
    v11 = [componentController2 componentViewForIdentifier:componentIdentifier];

    tangierController = [(SXScrollViewController *)self tangierController];
    characterIndex = [v8 characterIndex];
    componentIdentifier2 = [v8 componentIdentifier];
    [tangierController pointForCharacterAtIndex:characterIndex inComponentWithIdentifier:componentIdentifier2];
    v16 = v15;

    [v11 absoluteFrame];
    v17 = v16 + CGRectGetMinY(v61);
    delegate = [(SXScrollViewController *)self delegate];
    LOBYTE(characterIndex) = objc_opt_respondsToSelector();

    if (characterIndex)
    {
      delegate2 = [(SXScrollViewController *)self delegate];
      [delegate2 navigationBarHeightForScrollViewController:self];
      v17 = v17 - v20;
    }

    [v8 canvasWidth];
    v22 = v21;
    componentController3 = [(SXScrollViewController *)self componentController];
    presentedBlueprint = [componentController3 presentedBlueprint];
    layoutOptions = [presentedBlueprint layoutOptions];
    columnLayout = [layoutOptions columnLayout];
    [columnLayout constrainedViewportSize];
    v28 = v27;

    if (v22 == v28)
    {
      [v8 relativeTextOffset];
      v17 = v17 - v29;
    }

    if (v17 <= 10.0)
    {
      MinY = 0.0;
    }

    else
    {
      MinY = v17;
    }

LABEL_24:
    scrollView = [(SXScrollViewController *)self scrollView];
    [scrollView setContentOffset:animatedCopy animated:{0.0, MinY}];

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = positionCopy;
  componentController4 = [(SXScrollViewController *)self componentController];
  componentIdentifier3 = [v8 componentIdentifier];
  v11 = [componentController4 componentViewForIdentifier:componentIdentifier3];

  if (v11)
  {
    [v11 absoluteFrame];
    MinY = CGRectGetMinY(v62);
    [v8 canvasWidth];
    v34 = v33;
    componentController5 = [(SXScrollViewController *)self componentController];
    presentedBlueprint2 = [componentController5 presentedBlueprint];
    layoutOptions2 = [presentedBlueprint2 layoutOptions];
    columnLayout2 = [layoutOptions2 columnLayout];
    [columnLayout2 constrainedViewportSize];
    v40 = v39;

    if (v34 == v40)
    {
      [v8 relativePageOffset];
      MinY = MinY - v41;
    }

    else
    {
      delegate3 = [(SXScrollViewController *)self delegate];
      v43 = objc_opt_respondsToSelector();

      if (v43)
      {
        delegate4 = [(SXScrollViewController *)self delegate];
        [delegate4 navigationBarHeightForScrollViewController:self];
        v46 = MinY - v45;

        scrollView2 = [(SXScrollViewController *)self scrollView];
        [scrollView2 contentInset];
        v49 = -v48;

        scrollView3 = [(SXScrollViewController *)self scrollView];
        [scrollView3 contentSize];
        v52 = v51;
        scrollView4 = [(SXScrollViewController *)self scrollView];
        [scrollView4 frame];
        v54 = v52 - CGRectGetHeight(v63);

        if (v54 <= v49)
        {
          v55 = v49;
        }

        else
        {
          v55 = v54;
        }

        if (v46 >= v55)
        {
          MinY = v55;
        }

        else
        {
          MinY = v46;
        }
      }
    }

    if (MinY <= 10.0)
    {
      MinY = 0.0;
    }

    goto LABEL_24;
  }

LABEL_25:

LABEL_26:
  tangierController2 = [(SXScrollViewController *)self tangierController];
  v58 = [tangierController2 icc];
  [v58 invalidateLayers];
}

- (BOOL)shouldRestoreScrollPositionForLayoutBlueprint:(id)blueprint
{
  v25 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  if ([blueprintCopy isComplete])
  {
    v5 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    componentController = [(SXScrollViewController *)self componentController];
    flattenedComponentViews = [componentController flattenedComponentViews];

    v8 = [flattenedComponentViews countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(flattenedComponentViews);
          }

          component = [*(*(&v20 + 1) + 8 * i) component];
          identifier = [component identifier];
          v14 = [blueprintCopy componentBlueprintForComponentIdentifier:identifier includeChildren:1];

          if (([v14 hasValidLayout] & 1) == 0)
          {
            [v14 absoluteFrame];
            MaxY = CGRectGetMaxY(v26);
            viewport = [(SXScrollViewController *)self viewport];
            [viewport dynamicBounds];
            v18 = v17;

            if (MaxY < v18)
            {

              v5 = 1;
              goto LABEL_14;
            }
          }
        }

        v9 = [flattenedComponentViews countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_14:
  }

  return v5;
}

- (BOOL)allowInteractivityFocusForComponent:(id)component
{
  if ([(SXScrollViewController *)self isPreviewing])
  {
    return 0;
  }

  viewport = [(SXScrollViewController *)self viewport];
  v4 = [viewport appearState] == 2;

  return v4;
}

- (BOOL)addInteractivityFocusForComponent:(id)component
{
  componentCopy = component;
  if ([(SXScrollViewController *)self isPreviewing]|| ([(SXScrollViewController *)self focussedComponentView], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 0;
  }

  else
  {
    textSelectionManager = [(SXScrollViewController *)self textSelectionManager];
    [textSelectionManager clearSelection];

    [(SXScrollViewController *)self setFocussedComponentView:componentCopy];
    scrollView = [(SXScrollViewController *)self scrollView];
    v6 = 1;
    [scrollView setScrollEnabled:1];
  }

  return v6;
}

- (void)removeInteractivityFocusForComponent:(id)component
{
  componentCopy = component;
  focussedComponentView = [(SXScrollViewController *)self focussedComponentView];

  if (focussedComponentView == componentCopy)
  {
    [(SXScrollViewController *)self setFocussedComponentView:0];
    scrollView = [(SXScrollViewController *)self scrollView];
    [scrollView setScrollEnabled:1];
  }
}

- (id)requestFullScreenCanvasViewControllerForComponent:(id)component withCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = objc_alloc_init(SXFullscreenCanvasViewController);
  view = [(SXFullscreenCanvasViewController *)v6 view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  navigationController = [(SXScrollViewController *)self navigationController];
  -[SXFullscreenCanvasViewController setStatusBarStyle:](v6, "setStatusBarStyle:", [navigationController preferredStatusBarStyle]);

  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v10 setModalPresentationStyle:5];
  [v10 setModalPresentationCapturesStatusBarAppearance:1];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [v10 setNavigationBarHidden:1 animated:0];
  }

  [(SXScrollViewController *)self presentViewController:v10 animated:0 completion:blockCopy];
  delegate = [(SXScrollViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 scrollViewControllerRequestsFullscreen:self];
  }

  [(SXScrollViewController *)self setFullscreenCanvasViewController:v6];
  delegate3 = [(SXScrollViewController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate4 = [(SXScrollViewController *)self delegate];
    [delegate4 scrollViewController:self enableNavigation:0];
  }

  fullscreenCanvasViewController = [(SXScrollViewController *)self fullscreenCanvasViewController];

  return fullscreenCanvasViewController;
}

- (void)willReturnToFullscreenForComponent:(id)component
{
  delegate = [(SXScrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 willReturnToFullscreen:self];
  }
}

- (id)requestFullScreenCanvasViewControllerForComponent:(id)component canvasController:(id)controller withCompletionBlock:(id)block
{
  componentCopy = component;
  controllerCopy = controller;
  blockCopy = block;
  fullscreenCanvasViewController = [(SXScrollViewController *)self fullscreenCanvasViewController];

  if (fullscreenCanvasViewController)
  {
    [(SXScrollViewController *)self dismissFullscreenCanvasForComponent:componentCopy];
  }

  [(SXScrollViewController *)self setCurrentCanvasController:controllerCopy];
  v12 = [(SXScrollViewController *)self requestFullScreenCanvasViewControllerForComponent:componentCopy withCompletionBlock:blockCopy];

  return v12;
}

- (void)willDismissFullscreenCanvasForComponent:(id)component
{
  delegate = [(SXScrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 scrollViewControllerWillDismissFullscreen:self];
  }
}

- (void)dismissFullscreenCanvasForComponent:(id)component
{
  fullscreenCanvasViewController = [(SXScrollViewController *)self fullscreenCanvasViewController];

  if (fullscreenCanvasViewController)
  {
    fullscreenCanvasViewController2 = [(SXScrollViewController *)self fullscreenCanvasViewController];
    [fullscreenCanvasViewController2 dismissViewControllerAnimated:0 completion:0];
    [(SXScrollViewController *)self setCurrentCanvasController:0];
    [(SXScrollViewController *)self setFullscreenCanvasViewController:0];
    delegate = [(SXScrollViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(SXScrollViewController *)self delegate];
      [delegate2 scrollViewControllerDismissFullscreen:self];
    }
  }

  delegate3 = [(SXScrollViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate4 = [(SXScrollViewController *)self delegate];
    [delegate4 scrollViewController:self enableNavigation:1];
  }
}

- (BOOL)isScrolling
{
  scrollView = [(SXScrollViewController *)self scrollView];
  isScrolling = [scrollView isScrolling];

  return isScrolling;
}

- (void)scrollToRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView scrollRectToVisible:animatedCopy animated:{x, y, width, height}];
}

- (id)presentingContentViewController
{
  tangierController = [(SXScrollViewController *)self tangierController];
  v3 = [tangierController cvc];

  return v3;
}

- (void)updateBehaviorForComponentView:(id)view
{
  viewCopy = view;
  behaviorController = [(SXScrollViewController *)self behaviorController];
  [behaviorController updateComponentView:viewCopy];
}

- (BOOL)shouldPreventDraggingForScrollView:(id)view
{
  viewCopy = view;
  focussedComponentView = [(SXScrollViewController *)self focussedComponentView];

  v9 = 0;
  if (focussedComponentView)
  {
    focussedComponentView2 = [(SXScrollViewController *)self focussedComponentView];
    panGestureRecognizer = [viewCopy panGestureRecognizer];
    v8 = [focussedComponentView2 gestureShouldBegin:panGestureRecognizer];

    if (!v8)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)scrollView:(id)view shouldOccludeAccessibilityElement:(id)element
{
  viewCopy = view;
  elementCopy = element;
  delegate = [(SXScrollViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    v11 = [delegate2 scrollViewController:self shouldOccludeAccessibilityElement:elementCopy];
LABEL_9:
    v14 = v11;

    goto LABEL_10;
  }

  accessibilityContainer = [viewCopy accessibilityContainer];
  if (accessibilityContainer)
  {
    delegate2 = accessibilityContainer;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      accessibilityContainer2 = [delegate2 accessibilityContainer];

      delegate2 = accessibilityContainer2;
      if (!accessibilityContainer2)
      {
        goto LABEL_7;
      }
    }

    v11 = [delegate2 shouldOccludeAccessibilityElement:elementCopy];
    goto LABEL_9;
  }

LABEL_7:
  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)accessibilityShouldScrollForScrollView:(id)view defaultValue:(BOOL)value
{
  valueCopy = value;
  delegate = [(SXScrollViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    LOBYTE(valueCopy) = [delegate2 accessibilityShouldScrollForScrollViewController:self defaultValue:valueCopy];
  }

  return valueCopy;
}

- (BOOL)accessibilityShouldHandleInteractionForView:(id)view
{
  viewCopy = view;
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(SXComponentInteractionManager *)self->_componentInteractionManager accessibilityShouldHandleInteractionForComponentView:viewCopy];

  return v5;
}

- (void)tangierControllerDidScroll:(id)scroll
{
  [(SXScrollViewController *)self setPreviouslyRestoredScrollPosition:0];
  componentController = [(SXScrollViewController *)self componentController];
  isPresented = [componentController isPresented];

  if (isPresented)
  {
    componentController2 = [(SXScrollViewController *)self componentController];
    presentedBlueprint = [componentController2 presentedBlueprint];
    [(SXScrollViewController *)self updateViewportForBlueprint:presentedBlueprint];
  }

  [(SXScrollViewController *)self updateStickyHeaders];
  delegate = [(SXScrollViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 scrollViewControllerDidScroll:self];
  }

  scrollReporter = [(SXScrollViewController *)self scrollReporter];
  [scrollReporter didScroll];

  [(SXScrollViewController *)self updatePrimaryContentScrollProgress];
}

- (void)tangierControllerWillStartScrolling:(id)scrolling
{
  scrollReporter = [(SXScrollViewController *)self scrollReporter];
  [scrollReporter willStartScrolling];
}

- (void)tangierControllerDidStopScrolling:(id)scrolling
{
  delegate = [(SXScrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 scrollViewControllerDidStopScrolling:self];
  }

  scrollReporter = [(SXScrollViewController *)self scrollReporter];
  [scrollReporter didStopScrolling];
}

- (void)tangierController:(id)controller scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [draggingCopy contentOffset];
  v7 = v6;
  [draggingCopy contentSize];
  v9 = v8;

  v11 = objc_alloc_init(SXArticleScrollEvent);
  [(SXArticleScrollEvent *)v11 setStartPosition:fmax(v7 / v9 * 100.0, 0.0)];
  articleScrollEvents = [(SXScrollViewController *)self articleScrollEvents];
  [articleScrollEvents addObject:v11];
}

- (void)tangierController:(id)controller scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  controllerCopy = controller;
  draggingCopy = dragging;
  if (!decelerate)
  {
    delegate = [(SXScrollViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(SXScrollViewController *)self delegate];
      [delegate2 scrollViewControllerDidStopScrolling:self];
    }
  }
}

- (void)tangierController:(id)controller scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  v10 = offset->y;
  v36 = draggingCopy;
  if (v10 > 0.0)
  {
    [draggingCopy contentSize];
    v12 = v11;
    [v36 bounds];
    Height = CGRectGetHeight(v38);
    draggingCopy = v36;
    if (v10 < v12 + Height)
    {
      [(SXScrollViewController *)self snaplineForContentOffset:offset->y velocity:y];
      v15 = v14;
      delegate = [(SXScrollViewController *)self delegate];
      v17 = objc_opt_respondsToSelector();

      v18 = 0.0;
      if (v17)
      {
        delegate2 = [(SXScrollViewController *)self delegate];
        [delegate2 navigationBarHeightForScrollViewController:self];
        v18 = v20;
      }

      draggingCopy = v36;
      if (v15 != 9.22337204e18)
      {
        scrollView = [(SXScrollViewController *)self scrollView];
        [scrollView contentSize];
        v23 = v22;
        scrollView2 = [(SXScrollViewController *)self scrollView];
        [scrollView2 bounds];
        v25 = v23 - CGRectGetHeight(v39);

        draggingCopy = v36;
        if (v15 < v25)
        {
          offset->y = v15 - v18;
        }
      }
    }
  }

  v26 = offset->y;
  [draggingCopy contentSize];
  if (v26 / v27 * 100.0 <= 100.0)
  {
    v28 = v26 / v27 * 100.0;
  }

  else
  {
    v28 = 100.0;
  }

  [v36 contentOffset];
  v30 = v29;
  [v36 bounds];
  v31 = v30 + CGRectGetHeight(v40);
  [v36 contentSize];
  if (v31 / v32 * 100.0 <= 100.0)
  {
    v33 = v31 / v32 * 100.0;
  }

  else
  {
    v33 = 100.0;
  }

  articleScrollEvents = [(SXScrollViewController *)self articleScrollEvents];
  lastObject = [articleScrollEvents lastObject];

  [lastObject setTargetPosition:v28];
  [lastObject setEndPosition:v33];
  [lastObject setVelocity:y];
  [lastObject determineEndDate];
}

- (void)spacebarPressedWithModifierFlags:(int64_t)flags
{
  flagsCopy = flags;
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView contentOffset];
  v7 = v6;

  scrollView2 = [(SXScrollViewController *)self scrollView];
  [scrollView2 bounds];
  Height = CGRectGetHeight(v20);

  delegate = [(SXScrollViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  v12 = 0.0;
  if (v11)
  {
    delegate2 = [(SXScrollViewController *)self delegate];
    [delegate2 navigationBarHeightForScrollViewController:self];
    v12 = v14;
  }

  if ((flagsCopy & 0x20000) == 0)
  {
    [(SXScrollViewController *)self snaplineForContentOffset:v7 + Height + v12 velocity:1.79769313e308];
  }

  scrollView3 = [(SXScrollViewController *)self scrollView];
  [scrollView3 contentSize];
  scrollView4 = [(SXScrollViewController *)self scrollView];
  [scrollView4 bounds];
  CGRectGetHeight(v21);

  scrollView5 = [(SXScrollViewController *)self scrollView];
  scrollView6 = [(SXScrollViewController *)self scrollView];
  [scrollView6 contentOffset];
  [scrollView5 setContentOffset:1 animated:?];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  focussedComponentView = [(SXScrollViewController *)self focussedComponentView];

  if (focussedComponentView)
  {
    focussedComponentView2 = [(SXScrollViewController *)self focussedComponentView];
    v7 = [focussedComponentView2 gestureShouldBegin:beginCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldStartPreviewForInteractionContextManager:(id)manager
{
  focussedComponentView = [(SXScrollViewController *)self focussedComponentView];
  v4 = focussedComponentView == 0;

  return v4;
}

- (void)finishArticleScrollEvents
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  articleScrollEvents = [(SXScrollViewController *)self articleScrollEvents];
  v4 = [articleScrollEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(articleScrollEvents);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        analyticsReportingContainer = [(SXScrollViewController *)self analyticsReportingContainer];
        analyticsReporting = [analyticsReportingContainer analyticsReporting];
        [analyticsReporting reportEvent:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [articleScrollEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  articleScrollEvents2 = [(SXScrollViewController *)self articleScrollEvents];
  [articleScrollEvents2 removeAllObjects];
}

- (double)snaplineForContentOffset:(double)offset velocity:(double)velocity
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(SXScrollViewController *)self snapLines];
  v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    offsetCopy = offset;
    do
    {
      v11 = 0;
      v34 = v8;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        scrollView = [(SXScrollViewController *)self scrollView];
        [scrollView contentOffset];
        v15 = vabdd_f64(offset, v14);

        v15 /= 50;
        intValue = [v12 intValue];
        v17 = -7 * v15 + intValue;
        v18 = 14 * v15;
        if (offsetCopy >= v17 && offsetCopy - v17 < v18)
        {
          v20 = offsetCopy;
          v21 = v9;
          v22 = intValue;
          scrollView2 = [(SXScrollViewController *)self scrollView];
          [scrollView2 contentOffset];
          v25 = v24 >= v22 || velocity <= 0.0;
          if (v25 && ((-[SXScrollViewController scrollView](self, "scrollView"), v35 = objc_claimAutoreleasedReturnValue(), [v35 contentOffset], velocity >= 0.0) || v26 <= v22))
          {

            offsetCopy = v20;
            v8 = v34;
          }

          else
          {
            scrollView3 = [(SXScrollViewController *)self scrollView];
            [scrollView3 contentOffset];
            v30 = v28 < v17 || v28 - v17 >= v18;

            if (v25)
            {
            }

            v9 = v21;
            offsetCopy = v20;
            v8 = v34;
            if (v30)
            {
              [v12 floatValue];
              v32 = v31;
              goto LABEL_30;
            }
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  v32 = 9.22337204e18;
LABEL_30:

  return v32;
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  view = [(SXScrollViewController *)self view];
  [view setAlpha:1.0];

  [(SXScrollViewController *)self showScrollViewIfNeeded];
}

- (void)showScrollViewIfNeeded
{
  componentController = [(SXScrollViewController *)self componentController];
  presentedBlueprint = [componentController presentedBlueprint];
  v5 = [(SXScrollViewController *)self isValidBlueprintForCurrentSize:presentedBlueprint];

  if (v5)
  {
    scrollView = [(SXScrollViewController *)self scrollView];
    [scrollView setAlpha:1.0];
  }
}

- (BOOL)isValidBlueprintForCurrentSize:(id)size
{
  sizeCopy = size;
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView bounds];
  Width = CGRectGetWidth(v12);
  layoutOptions = [sizeCopy layoutOptions];

  [layoutOptions viewportSize];
  v9 = Width - v8;

  v10 = -v9;
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  return v10 < 0.00000011920929;
}

- (id)interactiveCanvasController
{
  tangierController = [(SXScrollViewController *)self tangierController];
  v3 = [tangierController icc];

  return v3;
}

- (id)canvasViewController
{
  tangierController = [(SXScrollViewController *)self tangierController];
  v3 = [tangierController cvc];

  return v3;
}

- (void)setupArticleExperimentation
{
  documentProvider = [(SXScrollViewController *)self documentProvider];
  document = [documentProvider document];

  experimentationManager = [(SXScrollViewController *)self experimentationManager];
  experimentationDelegate = [(SXScrollViewController *)self experimentationDelegate];
  [experimentationManager setupExperimentationForDocument:document experimentationDelegate:experimentationDelegate];
}

- (id)searchWithContext:(id)context
{
  contextCopy = context;
  -[SXScrollViewController setIsSearchActive:](self, "setIsSearchActive:", [contextCopy action] != 3);
  scrollView = [(SXScrollViewController *)self scrollView];
  [scrollView stopScrollingAndZooming];

  tangierController = [(SXScrollViewController *)self tangierController];
  v7 = [tangierController searchWithContext:contextCopy];

  return v7;
}

- (void)reloadSearch
{
  tangierController = [(SXScrollViewController *)self tangierController];
  [tangierController reloadSearch];
}

- (SXScrollViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SXExperimentationDelegate)experimentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_experimentationDelegate);

  return WeakRetained;
}

- (id)scrollViewForStripGalleryWithComponentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  componentController = [(SXScrollViewController *)self componentController];
  v6 = [componentController componentViewForIdentifier:identifierCopy];

  itemizedScrollView = [v6 itemizedScrollView];

  return itemizedScrollView;
}

- (void)presentFullscreenGalleryWithComponentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  componentController = [(SXScrollViewController *)self componentController];
  v8 = [componentController componentViewForIdentifier:identifierCopy];

  imageViews = [v8 imageViews];
  firstObject = [imageViews firstObject];
  [v8 forceImageViewFullscreen:firstObject];
}

- (id)scrollViewForFullscreenGalleryWithComponentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  componentController = [(SXScrollViewController *)self componentController];
  v6 = [componentController componentViewForIdentifier:identifierCopy];

  fullScreenCanvasController = [v6 fullScreenCanvasController];
  itemizedScrollView = [fullScreenCanvasController itemizedScrollView];

  return itemizedScrollView;
}

@end