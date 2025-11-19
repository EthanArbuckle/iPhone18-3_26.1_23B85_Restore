@interface SXScrollViewController
- (BOOL)accessibilityShouldHandleInteractionForView:(id)a3;
- (BOOL)accessibilityShouldScrollForScrollView:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)addInteractivityFocusForComponent:(id)a3;
- (BOOL)allowInteractivityFocusForComponent:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isPresentingFullscreenCanvas;
- (BOOL)isScrolling;
- (BOOL)isValidBlueprintForCurrentSize:(id)a3;
- (BOOL)resignFirstResponder;
- (BOOL)scrollView:(id)a3 shouldOccludeAccessibilityElement:(id)a4;
- (BOOL)shouldPreventDraggingForScrollView:(id)a3;
- (BOOL)shouldRestoreScrollPositionForLayoutBlueprint:(id)a3;
- (BOOL)shouldStartPreviewForInteractionContextManager:(id)a3;
- (CGRect)frameOfComponentWithVideoPlayerViewController:(id)a3;
- (CGSize)viewportSize;
- (NSString)selectedText;
- (SXExperimentationDelegate)experimentationDelegate;
- (SXScrollViewController)initWithScrollView:(id)a3 documentControllerContainer:(id)a4 resourceDataSourceContainer:(id)a5 analyticsReportingContainer:(id)a6 presentationDelegateContainer:(id)a7 presentationAttributeManager:(id)a8 viewport:(id)a9 tangierController:(id)a10 componentController:(id)a11 interactor:(id)a12 appStateMonitor:(id)a13 viewControllerPresentingManager:(id)a14 scrollPositionManager:(id)a15 documentStyleRenderer:(id)a16 componentInteractionManager:(id)a17 interactionContextManager:(id)a18 hoverStyleManager:(id)a19 scrollReporter:(id)a20 videoPlayerViewControllerManager:(id)a21 mediaSharingPolicyProvider:(id)a22 fontIndex:(id)a23 documentProvider:(id)a24 transitionDataSourceProvider:(id)a25 DOMObjectProvider:(id)a26 experimentationManager:(id)a27;
- (SXScrollViewControllerDelegate)delegate;
- (UIColor)documentBackgroundColor;
- (UIEdgeInsets)safeAreaInsets;
- (UIResponder)responder;
- (UITraitCollection)presentationTraitCollection;
- (double)snaplineForContentOffset:(double)a3 velocity:(double)a4;
- (id)canvasViewController;
- (id)headlineAccessibilityElement;
- (id)interactiveCanvasController;
- (id)presentingContentViewController;
- (id)requestFullScreenCanvasViewControllerForComponent:(id)a3 canvasController:(id)a4 withCompletionBlock:(id)a5;
- (id)requestFullScreenCanvasViewControllerForComponent:(id)a3 withCompletionBlock:(id)a4;
- (id)scrollPosition;
- (id)scrollPositionForComponentViews:(id)a3;
- (id)scrollPositionForPlayingVideoComponentInComponentViews:(id)a3;
- (id)scrollViewForFullscreenGalleryWithComponentIdentifier:(id)a3;
- (id)scrollViewForStripGalleryWithComponentIdentifier:(id)a3;
- (id)searchWithContext:(id)a3;
- (id)textScrollPositionForComponentViews:(id)a3;
- (id)videoComponentViewForVideoPlayerViewController:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)addComponentView:(id)a3;
- (void)applyContentOverlayBlueprint:(id)a3 topOffset:(double)a4;
- (void)applyFooterBlueprint:(id)a3;
- (void)applyHeaderBlueprint:(id)a3;
- (void)assistiveTechnologyStatusDidChange:(id)a3;
- (void)dealloc;
- (void)dictionaryWithComponentOffsets:(id)a3 forComponentViews:(id)a4;
- (void)dismissFullscreenCanvasForComponent:(id)a3;
- (void)displayContentsAfterLayoutWithInteractor:(id)a3;
- (void)finishArticleScrollEvents;
- (void)hideContentsForLayoutWithInteractor:(id)a3;
- (void)interactor:(id)a3 didIntegrateBlueprint:(id)a4;
- (void)interactor:(id)a3 willIntegrateBlueprint:(id)a4;
- (void)interactor:(id)a3 willLayoutWithOptions:(id)a4;
- (void)loadContext:(id)a3 analyticsReporting:(id)a4;
- (void)presentFullscreenGalleryWithComponentIdentifier:(id)a3;
- (void)reloadSearch;
- (void)removeInteractivityFocusForComponent:(id)a3;
- (void)screenTraitCollectionDidChange:(id)a3;
- (void)scrollToRect:(CGRect)a3 animated:(BOOL)a4;
- (void)setupArticleExperimentation;
- (void)showScrollViewIfNeeded;
- (void)smartInvertColorsStatusDidChange:(id)a3;
- (void)spacebarPressedWithModifierFlags:(int64_t)a3;
- (void)tangierController:(id)a3 scrollViewDidEndDragging:(id)a4 willDecelerate:(BOOL)a5;
- (void)tangierController:(id)a3 scrollViewWillBeginDragging:(id)a4;
- (void)tangierController:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6;
- (void)tangierControllerDidScroll:(id)a3;
- (void)tangierControllerDidStopScrolling:(id)a3;
- (void)tangierControllerWillStartScrolling:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBehaviorForComponentView:(id)a3;
- (void)updatePresentationWithAttributes:(id)a3;
- (void)updatePrimaryContentScrollProgress;
- (void)updateScrollPosition:(id)a3 animated:(BOOL)a4;
- (void)updateStickyHeaders;
- (void)updateViewportForBlueprint:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
- (void)willDismissFullscreenCanvasForComponent:(id)a3;
- (void)willReturnToFullscreenForComponent:(id)a3;
@end

@implementation SXScrollViewController

- (SXScrollViewController)initWithScrollView:(id)a3 documentControllerContainer:(id)a4 resourceDataSourceContainer:(id)a5 analyticsReportingContainer:(id)a6 presentationDelegateContainer:(id)a7 presentationAttributeManager:(id)a8 viewport:(id)a9 tangierController:(id)a10 componentController:(id)a11 interactor:(id)a12 appStateMonitor:(id)a13 viewControllerPresentingManager:(id)a14 scrollPositionManager:(id)a15 documentStyleRenderer:(id)a16 componentInteractionManager:(id)a17 interactionContextManager:(id)a18 hoverStyleManager:(id)a19 scrollReporter:(id)a20 videoPlayerViewControllerManager:(id)a21 mediaSharingPolicyProvider:(id)a22 fontIndex:(id)a23 documentProvider:(id)a24 transitionDataSourceProvider:(id)a25 DOMObjectProvider:(id)a26 experimentationManager:(id)a27
{
  v76 = a3;
  v75 = a4;
  v55 = a5;
  v74 = a5;
  v73 = a6;
  v56 = a7;
  v72 = a7;
  v71 = a8;
  v80 = a9;
  v70 = a10;
  v69 = a11;
  v68 = a12;
  v79 = a13;
  v78 = a14;
  v77 = a15;
  v67 = a16;
  v66 = a17;
  v65 = a18;
  v64 = a19;
  v63 = a20;
  v62 = a21;
  v61 = a22;
  v60 = a23;
  v32 = a24;
  v33 = a25;
  v59 = a26;
  v34 = a27;
  v81.receiver = self;
  v81.super_class = SXScrollViewController;
  v35 = [(SXScrollViewController *)&v81 initWithNibName:0 bundle:0];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_scrollView, a3);
    objc_storeStrong(&v36->_documentControllerContainer, a4);
    objc_storeStrong(&v36->_analyticsReportingContainer, a6);
    objc_storeStrong(&v36->_resourceDataSourceContainer, v55);
    v58 = v32;
    objc_storeStrong(&v36->_presentationDelegateContainer, v56);
    objc_storeStrong(&v36->_presentationAttributesManager, a8);
    objc_storeStrong(&v36->_mediaSharingPolicyProvider, a22);
    [(SXPresentationDelegateContainer *)v36->_presentationDelegateContainer registerPresentationDelegate:v36];
    objc_storeStrong(&v36->_viewControllerPresentingManager, a14);
    [v78 setPresentingViewController:v36];
    objc_storeStrong(&v36->_scrollPositionManager, a15);
    [v77 setScrollPositionRestoring:v36];
    objc_storeStrong(&v36->_interactionContextManager, a18);
    [(SXInteractionContextManager *)v36->_interactionContextManager setDelegate:v36];
    objc_storeStrong(&v36->_hoverStyleManager, a19);
    objc_storeStrong(&v36->_componentInteractionManager, a17);
    objc_storeStrong(&v36->_documentStyleRenderer, a16);
    objc_storeStrong(&v36->_viewport, a9);
    objc_storeStrong(&v36->_appStateMonitor, a13);
    objc_storeStrong(&v36->_tangierController, a10);
    [(SXTangierController *)v36->_tangierController setDelegate:v36];
    objc_storeStrong(&v36->_componentController, a11);
    objc_storeStrong(&v36->_interactor, a12);
    [(SXFormatInteractor *)v36->_interactor setDelegate:v36];
    [(SXFormatInteractor *)v36->_interactor updateWithPresentationEnvironment:v36];
    v37 = objc_alloc_init(SXFullscreenVideoPlaybackManager);
    fullscreenVideoPlaybackManager = v36->_fullscreenVideoPlaybackManager;
    v36->_fullscreenVideoPlaybackManager = v37;

    objc_storeStrong(&v36->_videoPlayerViewControllerManager, a21);
    v39 = [MEMORY[0x1E695DF70] array];
    articleScrollEvents = v36->_articleScrollEvents;
    v36->_articleScrollEvents = v39;

    v41 = objc_alloc_init(SXTextSelectionManager);
    textSelectionManager = v36->_textSelectionManager;
    v36->_textSelectionManager = v41;

    [(SXTextSelectionManager *)v36->_textSelectionManager addTextSelecting:v36->_tangierController];
    objc_storeStrong(&v36->_scrollReporter, a20);
    objc_storeStrong(&v36->_fontIndex, a23);
    objc_storeStrong(&v36->_documentProvider, a24);
    objc_storeStrong(&v36->_transitionDataSourceProvider, a25);
    objc_storeStrong(&v36->_DOMObjectProvider, a26);
    objc_storeStrong(&v36->_experimentationManager, a27);
    v43 = [(SXTangierController *)v36->_tangierController cvc];
    [(SXScrollViewController *)v36 addChildViewController:v43];

    scrollView = v36->_scrollView;
    [(SXScrollViewController *)v36 canvasViewController];
    v46 = v45 = v34;
    v47 = [v46 view];
    [(UIScrollView *)scrollView addSubview:v47];

    v48 = v36->_scrollView;
    v49 = [(SXTangierController *)v36->_tangierController icc];
    [(UIScrollView *)v48 setDelegate:v49];

    v34 = v45;
    v50 = [(SXTangierController *)v36->_tangierController cvc];
    [v50 didMoveToParentViewController:v36];

    v32 = v58;
    v51 = [[SXDocumentSectionManager alloc] initWithSectionHosting:v36 viewport:v80 appStateMonitor:v79];
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
  v3 = [(SXScrollViewController *)self view];
  [v3 setPreservesSuperviewLayoutMargins:1];

  v4 = [(SXScrollViewController *)self view];
  [v4 setClipsToBounds:1];

  v5 = [(SXScrollViewController *)self scrollView];
  [v5 setScrollsToTop:1];
  v6 = [(SXScrollViewController *)self view];
  [v6 bounds];
  [v5 setFrame:?];

  [v5 setAutoresizingMask:18];
  [v5 setScrollViewDelegate:self];
  [v5 setAlwaysBounceVertical:1];
  [v5 setClipsToBounds:0];
  [v5 setDirectionalLockEnabled:1];
  [v5 setPreservesSuperviewLayoutMargins:1];
  v7 = [(SXScrollViewController *)self view];
  [v7 addSubview:v5];

  v8 = [(SXScrollViewController *)self interactionContextManager];
  v9 = [(SXScrollViewController *)self scrollView];
  [v8 registerOnView:v9];

  v10 = [(SXScrollViewController *)self viewport];
  [v10 addViewportChangeListener:self forOptions:8];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel_screenTraitCollectionDidChange_ name:*MEMORY[0x1E69DEA38] object:0];
}

- (void)loadContext:(id)a3 analyticsReporting:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = SXDefaultLog;
  if (v7)
  {
    if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v7 identifier];
      *buf = 138543362;
      v56 = v11;
      _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Loaded Silex context with identifier: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_ERROR))
  {
    [SXScrollViewController loadContext:v9 analyticsReporting:?];
  }

  objc_storeStrong(&self->_context, a3);
  v12 = [(SXScrollViewController *)self documentControllerContainer];
  v13 = [v7 documentController];
  [v12 registerDocumentController:v13];

  v14 = [(SXScrollViewController *)self resourceDataSourceContainer];
  v15 = [v7 resourceDataSource];
  [v14 registerResourceDataSource:v15];

  v16 = [[SXAnalyticsReporterProxy alloc] initWithAnalyticsReporter:v8];
  v17 = [(SXScrollViewController *)self analyticsReportingContainer];
  [v17 registerAnalyticsReporting:v16];

  v18 = [SXComponentAnimationController alloc];
  v19 = [(SXScrollViewController *)self viewport];
  v20 = [(SXComponentAnimationController *)v18 initWithViewport:v19];
  animationController = self->_animationController;
  self->_animationController = v20;

  v22 = [SXMediaPlaybackController alloc];
  v23 = [(SXScrollViewController *)self viewport];
  v24 = [(SXMediaPlaybackController *)&v22->super.isa initWithViewport:v23];
  mediaPlaybackController = self->_mediaPlaybackController;
  self->_mediaPlaybackController = v24;

  v26 = objc_alloc(MEMORY[0x1E69DC9C8]);
  v27 = [(SXScrollViewController *)self scrollView];
  v28 = [v26 initWithReferenceView:v27];

  v29 = [SXComponentBehaviorController alloc];
  v30 = [(SXScrollViewController *)self viewport];
  v31 = [(SXComponentBehaviorController *)v29 initWithViewport:v30 andAnimator:v28];
  behaviorController = self->_behaviorController;
  self->_behaviorController = v31;

  v33 = SXDefaultLog;
  if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    v35 = [v7 documentController];
    v36 = [v35 document];
    *buf = 138543362;
    v56 = v36;
    _os_log_impl(&dword_1D825C000, v34, OS_LOG_TYPE_DEFAULT, "Updating document with provider: %{public}@", buf, 0xCu);
  }

  v37 = [(SXScrollViewController *)self documentProvider];
  v38 = [v7 documentController];
  v39 = [v38 document];
  [v37 setDocument:v39];

  v40 = [SXDocumentFontFamilyProvider alloc];
  v41 = [(SXScrollViewController *)self context];
  v42 = [v41 documentController];
  v43 = [v42 document];
  v44 = [(SXDocumentFontFamilyProvider *)v40 initWithDocument:v43];

  v45 = [(SXScrollViewController *)self fontIndex];
  [v45 addFontFamilyProvider:v44];

  v46 = [(SXScrollViewController *)self experimentationDelegate];
  LODWORD(v42) = [v46 isExperimentationEnabled];

  if (v42)
  {
    [(SXScrollViewController *)self setupArticleExperimentation];
  }

  objc_initWeak(buf, self);
  v47 = [(SXScrollViewController *)self appStateMonitor];
  v48 = objc_opt_respondsToSelector();

  if (v48)
  {
    v49 = [(SXScrollViewController *)self appStateMonitor];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __57__SXScrollViewController_loadContext_analyticsReporting___block_invoke;
    v53[3] = &unk_1E84FEC28;
    objc_copyWeak(&v54, buf);
    [v49 performOnApplicationWindowDidBecomeBackground:v53];

    objc_destroyWeak(&v54);
  }

  v50 = [(SXScrollViewController *)self appStateMonitor];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __57__SXScrollViewController_loadContext_analyticsReporting___block_invoke_2;
  v51[3] = &unk_1E84FEC28;
  objc_copyWeak(&v52, buf);
  [v50 performOnApplicationDidEnterBackground:v51];

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

- (void)updatePresentationWithAttributes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SXDefaultLog;
  if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Received request to update presentation attributes: %{public}@", &v15, 0xCu);
  }

  v7 = [(SXScrollViewController *)self context];

  if (v7)
  {
    objc_storeStrong(&self->_presentationAttributes, a3);
    v8 = [(SXScrollViewController *)self componentController];
    v9 = [v8 presentedBlueprint];
    [(SXScrollViewController *)self updateViewportForBlueprint:v9];

    if ([v5 enableViewportDebugging] && (-[SXScrollViewController viewportDebugger](self, "viewportDebugger"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v11 = [[SXViewportDebugger alloc] initWithViewport:?];
      [(SXScrollViewController *)self setViewportDebugger:v11];

      v12 = [(SXScrollViewController *)self viewportDebugger];
      v13 = [(SXScrollViewController *)self view];
      [(SXViewportDebugger *)v12 presentOnView:v13];
    }

    else if (([v5 enableViewportDebugging] & 1) == 0)
    {
      [(SXScrollViewController *)self setViewportDebugger:0];
    }

    v14 = [(SXScrollViewController *)self presentationAttributesManager];
    [v14 updateAttributes:v5];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v10 viewWillAppear:?];
  v5 = [(SXScrollViewController *)self viewport];
  [v5 setAppearState:1];

  v6 = [(SXScrollViewController *)self viewport];
  [v6 setInterfaceOrientation:{-[SXScrollViewController interfaceOrientation](self, "interfaceOrientation")}];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

  [(SXScrollViewController *)self showScrollViewIfNeeded];
  v8 = [(SXScrollViewController *)self tangierController];
  v9 = [v8 cvc];
  [v9 beginAppearanceTransition:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v10 viewDidAppear:a3];
  v4 = [(SXScrollViewController *)self viewport];
  [v4 setAppearState:2];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_assistiveTechnologyStatusDidChange_ name:*MEMORY[0x1E69DDA58] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_assistiveTechnologyStatusDidChange_ name:*MEMORY[0x1E69DD960] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_smartInvertColorsStatusDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];

  v8 = [(SXScrollViewController *)self tangierController];
  v9 = [v8 cvc];
  [v9 endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v13 viewWillDisappear:?];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DDA58] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69DD960] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x1E69DD8D8] object:0];

  v8 = [(SXScrollViewController *)self viewport];
  [v8 setAppearState:3];

  [(SXScrollViewController *)self finishArticleScrollEvents];
  v9 = [(SXScrollViewController *)self currentCanvasController];
  [v9 dismiss];

  [(SXScrollViewController *)self dismissFullscreenCanvasForComponent:0];
  v10 = [(SXScrollViewController *)self tangierController];
  v11 = [v10 cvc];
  [v11 beginAppearanceTransition:0 animated:v3];

  v12 = [(SXScrollViewController *)self textSelectionManager];
  [v12 clearSelection];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v8 viewDidDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  v5 = [(SXScrollViewController *)self viewport];
  [v5 setAppearState:0];

  v6 = [(SXScrollViewController *)self tangierController];
  v7 = [v6 cvc];
  [v7 endAppearanceTransition];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v23 viewWillLayoutSubviews];
  v3 = [(SXScrollViewController *)self documentSectionManager];
  v4 = [(SXScrollViewController *)self headerBlueprint];
  v5 = [(SXScrollViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [(SXScrollViewController *)self traitCollection];
  [v3 heightForBlueprint:v4 canvasSize:v10 traitCollection:{v7, v9}];
  v12 = v11;

  [(SXScrollViewController *)self setHeaderHeight:v12];
  v13 = [(SXScrollViewController *)self documentSectionManager];
  v14 = [(SXScrollViewController *)self footerBlueprint];
  v15 = [(SXScrollViewController *)self presentationAttributes];
  [v15 canvasSize];
  v17 = v16;
  v19 = v18;
  v20 = [(SXScrollViewController *)self traitCollection];
  [v13 heightForBlueprint:v14 canvasSize:v20 traitCollection:{v17, v19}];
  v22 = v21;

  [(SXScrollViewController *)self setFooterHeight:v22];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(SXScrollViewController *)self componentController];
  v4 = [v3 presentedBlueprint];
  [(SXScrollViewController *)self updateViewportForBlueprint:v4];

  v5 = [(SXScrollViewController *)self interactor];
  [v5 updateWithPresentationEnvironment:self];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = SXScrollViewController;
  v7 = a4;
  [(SXScrollViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(SXScrollViewController *)self setTransitioning:1];
  v8 = [(SXScrollViewController *)self fullscreenVideoPlaybackManager];
  [SXFullscreenVideoPlaybackManager willLayoutAndTransitionToSize:v8];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__SXScrollViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E84FEC50;
  v9[4] = self;
  *&v9[5] = width;
  *&v9[6] = height;
  [v7 animateAlongsideTransition:0 completion:v9];
}

uint64_t __77__SXScrollViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fullscreenVideoPlaybackManager];
  [SXFullscreenVideoPlaybackManager didTransitionToSize:v2];

  v3 = *(a1 + 32);

  return [v3 setTransitioning:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v5 traitCollectionDidChange:a3];
  v4 = [(SXScrollViewController *)self interactor];
  [v4 updateWithPresentationEnvironment:self];
}

- (void)screenTraitCollectionDidChange:(id)a3
{
  v4 = [(SXScrollViewController *)self interactor];
  [v4 updateWithPresentationEnvironment:self];
}

- (void)assistiveTechnologyStatusDidChange:(id)a3
{
  v3 = [(SXScrollViewController *)self componentController];
  [v3 assistiveTechnologyStatusDidChange];
}

- (void)smartInvertColorsStatusDidChange:(id)a3
{
  v4 = [(SXScrollViewController *)self interactor];
  [v4 updateWithPresentationEnvironment:self];
}

- (void)dealloc
{
  v3 = [(SXScrollViewController *)self scrollView];
  [v3 setDelegate:0];

  v4 = [(SXScrollViewController *)self tangierController];
  [v4 teardown];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  [(SXScrollViewController *)&v6 dealloc];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(SXScrollViewController *)self tangierController];
  v4 = [v3 cvc];
  [v4 becomeFirstResponder];

  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  return [(SXScrollViewController *)&v6 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = [(SXScrollViewController *)self tangierController];
  v4 = [v3 cvc];
  [v4 resignFirstResponder];

  v6.receiver = self;
  v6.super_class = SXScrollViewController;
  return [(SXScrollViewController *)&v6 resignFirstResponder];
}

- (UIResponder)responder
{
  v2 = [(SXScrollViewController *)self tangierController];
  v3 = [v2 cvc];

  return v3;
}

- (void)applyHeaderBlueprint:(id)a3
{
  v5 = a3;
  v6 = [(SXScrollViewController *)self documentSectionManager];
  v7 = [(SXScrollViewController *)self headerBlueprint];
  v8 = [(SXScrollViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v13 = [(SXScrollViewController *)self traitCollection];
  [v6 heightForBlueprint:v7 canvasSize:v13 traitCollection:{v10, v12}];
  v15 = v14;

  v16 = [(SXScrollViewController *)self documentSectionManager];
  v17 = [(SXScrollViewController *)self view];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v22 = [(SXScrollViewController *)self traitCollection];
  [v16 heightForBlueprint:v5 canvasSize:v22 traitCollection:{v19, v21}];
  v24 = v23;

  [(SXScrollViewController *)self setHeaderHeight:v24];
  if (v15 == v24)
  {
    objc_storeStrong(&self->_headerBlueprint, a3);
    v25 = [(SXScrollViewController *)self documentSectionManager];
    v31 = [(SXScrollViewController *)self presentationAttributes];
    [v31 canvasSize];
    [v25 applySectionBlueprint:v5 identifier:@"header" offset:*MEMORY[0x1E695EFF8] size:{*(MEMORY[0x1E695EFF8] + 8), v32, v33}];
  }

  else
  {
    v25 = [(SXScrollViewController *)self componentController];
    v26 = [v25 presentedBlueprint];
    v27 = v26;
    if (v26)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __47__SXScrollViewController_applyHeaderBlueprint___block_invoke;
      v44[3] = &unk_1E84FECA0;
      v44[4] = self;
      v45 = v26;
      v46 = v25;
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
        v39 = self;
        v40 = v5;
        [v30 addCompletion:&v35];
        [v30 startAnimation];
      }

      else
      {
        objc_storeStrong(&self->_headerBlueprint, a3);
        v28[2](v28);
      }
    }

    else
    {
      objc_storeStrong(&self->_headerBlueprint, a3);
      v34 = [(SXScrollViewController *)self interactor];
      [v34 updateWithPresentationEnvironment:self];
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

- (void)applyFooterBlueprint:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_footerBlueprint, a3);
  v6 = [(SXScrollViewController *)self componentController];
  v7 = [v6 presentedBlueprint];
  if (!v7)
  {

LABEL_13:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v23 = [v5 items];
    v30 = [v23 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
            objc_enumerationMutation(v23);
          }

          v34 = [*(*(&v52 + 1) + 8 * i) sectionItemViewController];
          v35 = [v34 view];
          [v35 setHidden:1];
        }

        v31 = [v23 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v31);
    }

    goto LABEL_20;
  }

  v8 = v7;
  v9 = [(SXScrollViewController *)self componentController];
  v10 = [v9 presentedBlueprint];
  v11 = [v10 isComplete];

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = [(SXScrollViewController *)self componentController];
  v13 = [v12 presentedBlueprint];
  [v13 blueprintSize];
  v15 = v14;

  v16 = [(SXScrollViewController *)self documentSectionManager];
  [(SXScrollViewController *)self headerHeight];
  v18 = v15 + v17;
  v19 = [(SXScrollViewController *)self presentationAttributes];
  [v19 canvasSize];
  [v16 applySectionBlueprint:v5 identifier:@"footer" offset:0.0 size:{v18, v20, v21}];

  v22 = [(SXScrollViewController *)self contentOverlayBlueprint];

  if (!v22)
  {
    v36 = [(SXScrollViewController *)self documentSectionManager];
    v37 = [(SXScrollViewController *)self presentationAttributes];
    [v37 canvasSize];
    v39 = v38;
    v41 = v40;
    v42 = [(SXScrollViewController *)self traitCollection];
    [v36 heightForBlueprint:v5 canvasSize:v42 traitCollection:{v39, v41}];
    v44 = v43;

    [(SXScrollViewController *)self setFooterHeight:v44];
    v45 = [(SXScrollViewController *)self scrollView];
    v46 = [(SXScrollViewController *)self scrollView];
    [v46 contentSize];
    v48 = v47;
    [(SXScrollViewController *)self footerHeight];
    v50 = v15 + v49;
    [(SXScrollViewController *)self headerHeight];
    [v45 setContentSize:{v48, v50 + v51}];

    goto LABEL_21;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v23 = [v5 items];
  v24 = [v23 countByEnumeratingWithState:&v56 objects:v61 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v56 + 1) + 8 * j) sectionItemViewController];
        v29 = [v28 view];
        [v29 setHidden:1];
      }

      v25 = [v23 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v25);
  }

LABEL_20:

LABEL_21:
}

- (void)applyContentOverlayBlueprint:(id)a3 topOffset:(double)a4
{
  v30 = a3;
  objc_storeStrong(&self->_contentOverlayBlueprint, a3);
  self->_contentOverlayTopOffset = a4;
  v7 = [(SXScrollViewController *)self viewport];
  [v7 bounds];
  v9 = v8;

  v10 = [(SXScrollViewController *)self documentSectionManager];
  [(SXScrollViewController *)self contentOverlayTopOffset];
  v12 = v9 + v11;
  v13 = [(SXScrollViewController *)self presentationAttributes];
  [v13 canvasSize];
  [v10 applySectionBlueprint:v30 identifier:@"contentOverlay" offset:0.0 size:{v12, v14, v15}];

  if (v30)
  {
    v16 = [(SXScrollViewController *)self documentSectionManager];
    v17 = [(SXScrollViewController *)self view];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v22 = [(SXScrollViewController *)self traitCollection];
    [v16 heightForBlueprint:v30 canvasSize:v22 traitCollection:{v19, v21}];
    v24 = v23;

    v25 = [(SXScrollViewController *)self scrollView];
    v26 = [(SXScrollViewController *)self scrollView];
    [v26 contentSize];
    v28 = v27;
    [(SXScrollViewController *)self contentOverlayTopOffset];
    [v25 setContentSize:{v28, v24 + v9 + v29}];
  }
}

- (void)updatePrimaryContentScrollProgress
{
  v3 = [(SXScrollViewController *)self scrollView];
  [v3 contentOffset];
  v5 = v4;

  v6 = [(SXScrollViewController *)self scrollView];
  [v6 contentSize];
  v8 = v7;
  v9 = [(SXScrollViewController *)self scrollView];
  [v9 bounds];
  Height = CGRectGetHeight(v17);
  [(SXScrollViewController *)self footerHeight];
  v12 = v11;

  if (v5 > 0.0 && v5 >= v8 - Height - v12)
  {
    v13 = [(SXScrollViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(SXScrollViewController *)self delegate];
      [v15 scrollViewControllerDidScrollToBottomOfPrimaryContent:self];
    }
  }
}

- (void)updateStickyHeaders
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(SXScrollViewController *)self headerBlueprint];

  if (v3)
  {
    v4 = [(SXScrollViewController *)self scrollView];
    [v4 contentOffset];
    v6 = v5;
    v7 = [(SXScrollViewController *)self scrollView];
    [v7 contentInset];
    v9 = v6 + v8;

    if (v9 < 0.0)
    {
      v37 = 0uLL;
      v38 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v10 = [(SXScrollViewController *)self headerBlueprint];
      v19 = [v10 items];

      v11 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
              objc_enumerationMutation(v19);
            }

            v15 = *(*(&v35 + 1) + 8 * i);
            memset(&v34, 0, sizeof(v34));
            CGAffineTransformMakeTranslation(&v34, 0.0, v9);
            v16 = [v15 sectionItemViewController];
            v17 = [v16 view];
            v33 = v34;
            [v17 setTransform:&v33];
          }

          v12 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
      v18 = [(SXScrollViewController *)self headerBlueprint];
      v19 = [v18 items];

      v20 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v29 + 1) + 8 * j) sectionItemViewController];
            v25 = [v24 view];
            *&v34.a = v28;
            *&v34.c = v27;
            *&v34.tx = v26;
            [v25 setTransform:&v34];
          }

          v21 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v21);
      }
    }
  }
}

- (CGSize)viewportSize
{
  v3 = [(SXScrollViewController *)self scrollView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SXScrollViewController *)self view];
  if (v12)
  {
    v13 = v12;
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
      v20 = [v13 superview];

      v13 = v20;
    }

    while (v20);
  }

  v21 = [(SXScrollViewController *)self view];
  v22 = [v21 window];
  [v22 bounds];
  v24 = v23;
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  v25 = v24 - CGRectGetMaxY(v35);

  v26 = [(SXScrollViewController *)self scrollView];
  [v26 bounds];
  v28 = v27;
  v29 = [(SXScrollViewController *)self scrollView];
  [v29 bounds];
  v31 = v25 + v30;

  v32 = v28;
  v33 = v31;
  result.height = v33;
  result.width = v32;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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

      v6 = [(SXScrollViewController *)v4 parentViewController];

      v7 = v5 == 0;
      if (v5)
      {
        break;
      }

      v4 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  v8 = [(SXScrollViewController *)v3 view];
  [v8 safeAreaInsets];
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
  v3 = [(SXScrollViewController *)self traitCollection];
  v4 = [(SXScrollViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 traitCollection];
  v8 = [v7 userInterfaceStyle];

  v9 = MEMORY[0x1E69DD1B8];
  v14[0] = v3;
  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v8];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [v9 traitCollectionWithTraitsFromCollections:v11];

  return v12;
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  if ([a3 appearState] == 2)
  {
    v5 = [(SXScrollViewController *)self componentController];
    v6 = [v5 isPresented];

    if (v6)
    {
      v7 = [(SXScrollViewController *)self videoPlayerViewControllerManager];
      [v7 setPresentedAndAppeared:1];
    }
  }
}

- (void)interactor:(id)a3 willLayoutWithOptions:(id)a4
{
  v5 = a4;
  v6 = [(SXScrollViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SXScrollViewController *)self delegate];
    [v8 scrollViewControllerWillLayoutContent:self];
  }

  v9 = [(SXScrollViewController *)self componentController];
  v10 = [v9 presentedBlueprint];
  v11 = [v10 layoutOptions];
  v12 = [v5 diffWithLayoutOptions:v11];

  v13 = [(SXScrollViewController *)self previouslyRestoredScrollPosition];

  if (v13 || v12)
  {

    [(SXScrollViewController *)self setRestoreScrollPositionOnNextLayout:1];
  }

  else
  {
    v15 = [(SXScrollViewController *)self componentController];
    v14 = [v15 presentedBlueprint];
    [(SXScrollViewController *)self setRestoreScrollPositionOnNextLayout:[(SXScrollViewController *)self shouldRestoreScrollPositionForLayoutBlueprint:v14]];
  }
}

- (void)interactor:(id)a3 willIntegrateBlueprint:(id)a4
{
  v52 = a4;
  v5 = [(SXScrollViewController *)self componentController];
  if ([v5 isPresented])
  {
    v6 = [(SXScrollViewController *)self restoreScrollPositionOnNextLayout];

    if (v6)
    {
      v7 = [(SXScrollViewController *)self previouslyRestoredScrollPosition];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [(SXScrollViewController *)self scrollPosition];
      }

      v10 = v9;

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
  v11 = [(SXScrollViewController *)self componentController];
  v12 = [v11 presentedBlueprint];

  if (v12 && [v12 isComplete])
  {
    v13 = [v12 layoutOptions];
    v14 = [v52 layoutOptions];
    v15 = [v13 isEqual:v14];

    v16 = v15 ^ 1u;
  }

  else
  {
    v16 = 1;
  }

  v17 = [(SXScrollViewController *)self tangierController];
  [v17 setRebuildFlows:v16];

  v18 = [(SXScrollViewController *)self scrollView];
  [v18 bounds];
  v20 = v19;

  [v52 blueprintSize];
  v22 = v21;
  [(SXScrollViewController *)self headerHeight];
  v24 = v23;
  v25 = [(SXScrollViewController *)self documentSectionManager];
  v26 = [(SXScrollViewController *)self footerBlueprint];
  v27 = [(SXScrollViewController *)self scrollView];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v32 = [(SXScrollViewController *)self traitCollection];
  [v25 heightForBlueprint:v26 canvasSize:v32 traitCollection:{v29, v31}];
  v34 = v33;

  v35 = [(SXScrollViewController *)self contentOverlayBlueprint];

  if (v35)
  {
    v36 = [(SXScrollViewController *)self documentSectionManager];
    v37 = [(SXScrollViewController *)self contentOverlayBlueprint];
    v38 = [(SXScrollViewController *)self scrollView];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v43 = [(SXScrollViewController *)self traitCollection];
    [v36 heightForBlueprint:v37 canvasSize:v43 traitCollection:{v40, v42}];
    v45 = v44;

    v46 = [(SXScrollViewController *)self viewport];
    [v46 bounds];
    v48 = v47;
    [(SXScrollViewController *)self contentOverlayTopOffset];
    v50 = v45 + v49 + v48;
  }

  else
  {
    v50 = v22 + v24 + v34;
  }

  v51 = [(SXScrollViewController *)self scrollView];
  [v51 setContentSize:{v20, v50}];

  [(SXScrollViewController *)self updateViewportForBlueprint:v52];
}

- (UIColor)documentBackgroundColor
{
  v2 = [(SXScrollViewController *)self DOMObjectProvider];
  v3 = [v2 documentStyle];
  v4 = [v3 backgroundColor];

  return v4;
}

- (void)interactor:(id)a3 didIntegrateBlueprint:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SXScrollViewController *)self tangierController];
  v7 = [(SXScrollViewController *)self scrollView];
  [v7 contentSize];
  v9 = v8;
  v11 = v10;
  v12 = [(SXScrollViewController *)self componentController];
  v13 = [v12 flattenedComponentViews];
  [v6 updateCanvasSize:v13 forComponentViews:{v9, v11}];

  v14 = [(SXScrollViewController *)self behaviorController];
  [v14 reset];

  [(SXScrollViewController *)self updateViewportForBlueprint:v5];
  v15 = [v5 snapLinesIncludingChildren:1];
  [(SXScrollViewController *)self setSnapLines:v15];

  v16 = [(SXScrollViewController *)self videoPlayerViewControllerManager];
  v17 = [(SXScrollViewController *)self viewport];
  [v16 setPresentedAndAppeared:{objc_msgSend(v17, "appearState") == 2}];

  v18 = [(SXScrollViewController *)self fullscreenVideoPlaybackManager];
  v19 = [(SXScrollViewController *)self viewport];
  [v19 bounds];
  [SXFullscreenVideoPlaybackManager didLayoutForSize:v18];

  v20 = [(SXScrollViewController *)self delegate];
  LOBYTE(v19) = objc_opt_respondsToSelector();

  if (v19)
  {
    v21 = [(SXScrollViewController *)self delegate];
    [v21 scrollViewControllerDidLayoutContent:self];
  }

  v22 = [(SXScrollViewController *)self documentSectionManager];
  v23 = [(SXScrollViewController *)self headerBlueprint];
  v24 = [(SXScrollViewController *)self scrollView];
  [v24 bounds];
  [v22 applySectionBlueprint:v23 identifier:@"header" offset:*MEMORY[0x1E695EFF8] size:*(MEMORY[0x1E695EFF8] + 8)];

  if ([v5 isComplete])
  {
    v25 = [(SXScrollViewController *)self documentSectionManager];
    v26 = [(SXScrollViewController *)self footerBlueprint];
    [v5 blueprintSize];
    v28 = v27;
    [(SXScrollViewController *)self headerHeight];
    v30 = v28 + v29;
    v31 = [(SXScrollViewController *)self scrollView];
    [v31 bounds];
    [v25 applySectionBlueprint:v26 identifier:@"footer" offset:0.0 size:v30];
  }

  v32 = [(SXScrollViewController *)self viewport];
  [v32 bounds];

  v33 = [(SXScrollViewController *)self scrollView];
  [v33 bounds];
  v35 = v34;

  v36 = [(SXScrollViewController *)self documentSectionManager];
  v37 = [(SXScrollViewController *)self contentOverlayBlueprint];
  [(SXScrollViewController *)self contentOverlayTopOffset];
  v39 = v35 + v38;
  v40 = [(SXScrollViewController *)self scrollView];
  [v40 bounds];
  [v36 applySectionBlueprint:v37 identifier:@"contentOverlay" offset:0.0 size:v39];

  v41 = [(SXScrollViewController *)self behaviorController];
  [v41 update];

  v42 = [(SXScrollViewController *)self documentStyleRenderer];
  v43 = [(SXScrollViewController *)self DOMObjectProvider];
  v44 = [v43 documentStyle];
  v45 = [(SXScrollViewController *)self scrollView];
  [v42 applyStyle:v44 onView:v45];

  v46 = [(SXScrollViewController *)self delegate];
  LOBYTE(v44) = objc_opt_respondsToSelector();

  if (v44)
  {
    v47 = [(SXScrollViewController *)self delegate];
    v48 = [(SXScrollViewController *)self DOMObjectProvider];
    v49 = [v48 documentStyle];
    [v47 scrollViewController:self didApplyDocumentStyle:v49];
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v50 = [(SXScrollViewController *)self headerBlueprint];
  v51 = [v50 items];

  v52 = [v51 countByEnumeratingWithState:&v79 objects:v84 count:16];
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
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v79 + 1) + 8 * v55);
        if (objc_opt_respondsToSelector())
        {
          v57 = [(SXScrollViewController *)self DOMObjectProvider];
          v58 = [v57 documentStyle];
          [v56 scrollViewController:self didApplyDocumentStyle:v58];
        }

        ++v55;
      }

      while (v53 != v55);
      v53 = [v51 countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v53);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v59 = [(SXScrollViewController *)self footerBlueprint];
  v60 = [v59 items];

  v61 = [v60 countByEnumeratingWithState:&v75 objects:v83 count:16];
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
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v75 + 1) + 8 * v64);
        if (objc_opt_respondsToSelector())
        {
          v66 = [(SXScrollViewController *)self DOMObjectProvider];
          v67 = [v66 documentStyle];
          [v65 scrollViewController:self didApplyDocumentStyle:v67];
        }

        ++v64;
      }

      while (v62 != v64);
      v62 = [v60 countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v62);
  }

  v68 = [(SXScrollViewController *)self restoredScrollPosition];
  if (v68)
  {
    v69 = v68;
    v70 = [v5 isComplete];

    if (v70)
    {
      v71 = [(SXScrollViewController *)self restoredScrollPosition];
      [(SXScrollViewController *)self updateScrollPosition:v71 animated:0];

      v72 = [(SXScrollViewController *)self restoredScrollPosition];
      [(SXScrollViewController *)self setPreviouslyRestoredScrollPosition:v72];

      [(SXScrollViewController *)self setRestoredScrollPosition:0];
    }
  }

  if ([(SXScrollViewController *)self isSearchActive])
  {
    v73 = [(SXScrollViewController *)self tangierController];
    v74 = [v73 rebuildFlows];

    if (v74)
    {
      [(SXScrollViewController *)self reloadSearch];
    }
  }
}

- (void)hideContentsForLayoutWithInteractor:(id)a3
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

- (void)displayContentsAfterLayoutWithInteractor:(id)a3
{
  if ([(SXScrollViewController *)self transitioning])
  {
    v4 = [(SXScrollViewController *)self view];
    v5 = [v4 layer];
    v6 = [v5 animationForKey:@"bounds"];

    if (v6)
    {
      v7 = [(SXScrollViewController *)self view];
      v8 = [v7 layer];
      [v8 convertTime:0 fromLayer:CACurrentMediaTime()];
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

- (void)addComponentView:(id)a3
{
  v21 = a3;
  v4 = [(SXScrollViewController *)self tangierController];
  [v4 initialSubviewCount];

  for (i = 0; ; ++i)
  {
    v6 = [(SXScrollViewController *)self canvasViewController];
    v7 = [v6 view];
    v8 = [v7 subviews];
    v9 = [v8 count];

    v10 = [(SXScrollViewController *)self canvasViewController];
    v11 = [v10 view];
    v12 = v11;
    if (i >= v9)
    {
      [v11 addSubview:v21];
      goto LABEL_8;
    }

    v13 = [v11 subviews];
    v14 = [v13 objectAtIndex:i];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      v16 = [(SXScrollViewController *)self canvasViewController];
      v17 = [v16 view];
      v18 = [v17 subviews];
      v19 = [v18 indexOfObject:v15];

      v20 = [v15 componentIndex];
      if (v20 > [v21 componentIndex])
      {
        break;
      }
    }
  }

  v10 = [(SXScrollViewController *)self canvasViewController];
  v12 = [v10 view];
  [v12 insertSubview:v21 atIndex:v19];
LABEL_8:
}

- (void)updateViewportForBlueprint:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self viewport];
  [v5 beginUpdates];

  [v4 blueprintSize];
  v7 = v6;
  v9 = v8;
  [(SXScrollViewController *)self headerHeight];
  v11 = v9 + v10;
  v12 = [(SXScrollViewController *)self viewport];
  [v12 setDocumentSize:{v7, v11}];

  v13 = [(SXScrollViewController *)self viewport];
  [(SXScrollViewController *)self headerHeight];
  v15 = v14;
  v16 = [(SXScrollViewController *)self view];
  [v16 bounds];
  Width = CGRectGetWidth(v56);
  [v4 blueprintSize];
  v19 = v18;

  [v13 setContentFrame:{0.0, v15, Width, v19}];
  v20 = [(SXScrollViewController *)self delegate];
  LOBYTE(v13) = objc_opt_respondsToSelector();

  v21 = 0.0;
  if (v13)
  {
    v22 = [(SXScrollViewController *)self delegate];
    [v22 navigationBarHeightForScrollViewController:self];
    v21 = v23;
  }

  v24 = [(SXScrollViewController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(SXScrollViewController *)self delegate];
    [v26 toolBarHeightForScrollViewController:self];
  }

  v27 = [(SXScrollViewController *)self scrollView];
  [v27 contentOffset];
  v28 = [(SXScrollViewController *)self scrollView];
  [v28 bounds];
  v29 = [(SXScrollViewController *)self scrollView];
  [v29 contentSize];

  v30 = [(SXScrollViewController *)self scrollView];
  [v30 contentOffset];
  v31 = [(SXScrollViewController *)self scrollView];
  [v31 bounds];
  CGRectGetHeight(v57);

  [(SXScrollViewController *)self headerHeight];
  v33 = v32;
  v34 = [(SXScrollViewController *)self scrollView];
  [v34 contentOffset];
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

  v40 = [(SXScrollViewController *)self scrollView];
  [v40 contentOffset];
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
  v45 = [(SXScrollViewController *)self scrollView];
  [v45 bounds];
  CGRectGetHeight(v58);

  v46 = [(SXScrollViewController *)self scrollView];
  [v46 contentOffset];
  v48 = v44 + v47;

  v49 = [(SXScrollViewController *)self viewport];
  v50 = [(SXScrollViewController *)self view];
  [v50 bounds];
  [v49 setDynamicBounds:{0.0, v48}];

  v51 = [(SXScrollViewController *)self viewport];
  v52 = [(SXScrollViewController *)self scrollView];
  [v52 bounds];
  [v51 setBounds:?];

  v53 = [(SXScrollViewController *)self viewport];
  [v53 setInterfaceOrientation:{-[SXScrollViewController interfaceOrientation](self, "interfaceOrientation")}];

  v54 = [(SXScrollViewController *)self viewport];
  [v54 endUpdates];
}

- (BOOL)isPresentingFullscreenCanvas
{
  v2 = [(SXScrollViewController *)self fullscreenCanvasViewController];
  v3 = v2 != 0;

  return v3;
}

- (CGRect)frameOfComponentWithVideoPlayerViewController:(id)a3
{
  v4 = [(SXScrollViewController *)self videoComponentViewForVideoPlayerViewController:a3];
  v5 = v4;
  if (v4)
  {
    [v4 contentFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(SXScrollViewController *)self scrollView];
    [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
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

- (id)videoComponentViewForVideoPlayerViewController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SXScrollViewController *)self componentController];
  v6 = [v5 flattenedComponentViews];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 videoPlayerViewController];

          if (v11 == v4)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(SXScrollViewController *)self textSelectionManager];
  v3 = [v2 selectedText];

  return v3;
}

- (id)headlineAccessibilityElement
{
  v3 = [(SXScrollViewController *)self componentController];
  v4 = [v3 componentViewsForRole:32];
  v5 = [v4 firstObject];

  v6 = [(SXScrollViewController *)self scrollView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v5 absoluteFrame];
  v20.x = v15;
  v20.y = v16;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  LODWORD(v3) = CGRectContainsPoint(v21, v20);

  if (v3)
  {
    v17 = [v5 _accessibilityFindDescendant:&__block_literal_global_2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)scrollPosition
{
  v3 = [(SXScrollViewController *)self scrollView];
  [v3 contentInset];
  v5 = v4;
  v6 = [(SXScrollViewController *)self scrollView];
  [v6 contentOffset];
  v8 = v5 + v7;

  if (v8 > 0.001 || (-[SXScrollViewController presentationAttributes](self, "presentationAttributes"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 useTransparentToolbar], v9, v10))
  {
    v11 = [(SXScrollViewController *)self componentController];
    v12 = [v11 flattenedComponentViews];
    v13 = [(SXScrollViewController *)self scrollPositionForPlayingVideoComponentInComponentViews:v12];

    if (!v13)
    {
      v14 = [(SXScrollViewController *)self componentController];
      v15 = [v14 flattenedComponentViews];
      v13 = [(SXScrollViewController *)self textScrollPositionForComponentViews:v15];

      if (!v13)
      {
        v16 = [(SXScrollViewController *)self componentController];
        v17 = [v16 flattenedComponentViews];
        v13 = [(SXScrollViewController *)self scrollPositionForComponentViews:v17];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)scrollPositionForComponentViews:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  [(SXScrollViewController *)self dictionaryWithComponentOffsets:v6 forComponentViews:v5];

  v7 = [v6 allKeys];
  v42 = [v7 sortedArrayUsingSelector:sel_compare_];

  v8 = [v42 firstObject];
  v9 = [v6 objectForKey:v8];

  v10 = [v9 superview];
  [v9 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SXScrollViewController *)self scrollView];
  [v10 convertRect:v19 toView:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [SXComponentScrollPosition alloc];
  v29 = [v9 component];
  v30 = [v29 identifier];
  v31 = [(SXScrollViewController *)self componentController];
  v32 = [v31 presentedBlueprint];
  v33 = [v32 layoutOptions];
  v34 = [v33 columnLayout];
  [v34 constrainedViewportSize];
  v36 = v35;
  v44.origin.x = v21;
  v44.origin.y = v23;
  v44.size.width = v25;
  v44.size.height = v27;
  MinY = CGRectGetMinY(v44);
  v38 = [(SXScrollViewController *)self scrollView];
  [v38 contentOffset];
  v40 = [(SXComponentScrollPosition *)v28 initWithComponentIdentifier:v30 canvasWidth:v36 relativePageOffset:MinY - v39];

  return v40;
}

- (void)dictionaryWithComponentOffsets:(id)a3 forComponentViews:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 superview];

        if (v13)
        {
          v14 = [(SXScrollViewController *)self viewport];
          [v12 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = [v12 superview];
          [v14 convertRectToViewportCoordinateSpace:v23 fromView:{v16, v18, v20, v22}];
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
            [v6 setObject:v12 forKey:v32];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }
}

- (id)scrollPositionForPlayingVideoComponentInComponentViews:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v62 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 videoPlayerViewController];
          if ([v11 isPlaying])
          {
            [v10 absoluteFrame];
            v13 = v12;
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v20 = [(SXScrollViewController *)self viewport];
            [v20 dynamicBounds];
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
              v26 = [v10 superview];
              [v10 frame];
              v28 = v27;
              v30 = v29;
              v32 = v31;
              v34 = v33;
              v35 = [(SXScrollViewController *)self scrollView];
              [v26 convertRect:v35 toView:{v28, v30, v32, v34}];
              v37 = v36;
              v39 = v38;
              v41 = v40;
              v43 = v42;

              v57 = [SXComponentScrollPosition alloc];
              v44 = [v10 component];
              v45 = [v44 identifier];
              v46 = [(SXScrollViewController *)self componentController];
              v47 = [v46 presentedBlueprint];
              v48 = [v47 layoutOptions];
              v49 = [v48 columnLayout];
              [v49 constrainedViewportSize];
              v51 = v50;
              v66.origin.x = v37;
              v66.origin.y = v39;
              v66.size.width = v41;
              v66.size.height = v43;
              MinY = CGRectGetMinY(v66);
              v53 = [(SXScrollViewController *)self scrollView];
              [v53 contentOffset];
              v55 = [(SXComponentScrollPosition *)v57 initWithComponentIdentifier:v45 canvasWidth:v51 relativePageOffset:MinY - v54];

              goto LABEL_15;
            }
          }

          else
          {
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v6);
  }

  v55 = 0;
LABEL_15:

  return v55;
}

- (id)textScrollPositionForComponentViews:(id)a3
{
  v4 = [(SXScrollViewController *)self componentController];
  v5 = [v4 presentedBlueprint];
  v6 = [v5 layoutOptions];
  v7 = [v6 columnLayout];
  [v7 constrainedViewportSize];

  v8 = [(SXScrollViewController *)self tangierController];
  v9 = [(SXScrollViewController *)self viewport];
  [v9 dynamicBounds];
  v10 = [v8 scrollPositionForVisibleBounds:? canvasWidth:?];

  return v10;
}

- (void)updateScrollPosition:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v59 = a3;
  v6 = [(SXScrollViewController *)self componentController];
  v7 = [v6 isPresented];

  if (!v7)
  {
    [(SXScrollViewController *)self setRestoredScrollPosition:v59];
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v59;
    v9 = [(SXScrollViewController *)self componentController];
    v10 = [v8 componentIdentifier];
    v11 = [v9 componentViewForIdentifier:v10];

    v12 = [(SXScrollViewController *)self tangierController];
    v13 = [v8 characterIndex];
    v14 = [v8 componentIdentifier];
    [v12 pointForCharacterAtIndex:v13 inComponentWithIdentifier:v14];
    v16 = v15;

    [v11 absoluteFrame];
    v17 = v16 + CGRectGetMinY(v61);
    v18 = [(SXScrollViewController *)self delegate];
    LOBYTE(v13) = objc_opt_respondsToSelector();

    if (v13)
    {
      v19 = [(SXScrollViewController *)self delegate];
      [v19 navigationBarHeightForScrollViewController:self];
      v17 = v17 - v20;
    }

    [v8 canvasWidth];
    v22 = v21;
    v23 = [(SXScrollViewController *)self componentController];
    v24 = [v23 presentedBlueprint];
    v25 = [v24 layoutOptions];
    v26 = [v25 columnLayout];
    [v26 constrainedViewportSize];
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
    v56 = [(SXScrollViewController *)self scrollView];
    [v56 setContentOffset:v4 animated:{0.0, MinY}];

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = v59;
  v31 = [(SXScrollViewController *)self componentController];
  v32 = [v8 componentIdentifier];
  v11 = [v31 componentViewForIdentifier:v32];

  if (v11)
  {
    [v11 absoluteFrame];
    MinY = CGRectGetMinY(v62);
    [v8 canvasWidth];
    v34 = v33;
    v35 = [(SXScrollViewController *)self componentController];
    v36 = [v35 presentedBlueprint];
    v37 = [v36 layoutOptions];
    v38 = [v37 columnLayout];
    [v38 constrainedViewportSize];
    v40 = v39;

    if (v34 == v40)
    {
      [v8 relativePageOffset];
      MinY = MinY - v41;
    }

    else
    {
      v42 = [(SXScrollViewController *)self delegate];
      v43 = objc_opt_respondsToSelector();

      if (v43)
      {
        v44 = [(SXScrollViewController *)self delegate];
        [v44 navigationBarHeightForScrollViewController:self];
        v46 = MinY - v45;

        v47 = [(SXScrollViewController *)self scrollView];
        [v47 contentInset];
        v49 = -v48;

        v50 = [(SXScrollViewController *)self scrollView];
        [v50 contentSize];
        v52 = v51;
        v53 = [(SXScrollViewController *)self scrollView];
        [v53 frame];
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
  v57 = [(SXScrollViewController *)self tangierController];
  v58 = [v57 icc];
  [v58 invalidateLayers];
}

- (BOOL)shouldRestoreScrollPositionForLayoutBlueprint:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isComplete])
  {
    v5 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(SXScrollViewController *)self componentController];
    v7 = [v6 flattenedComponentViews];

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v20 + 1) + 8 * i) component];
          v13 = [v12 identifier];
          v14 = [v4 componentBlueprintForComponentIdentifier:v13 includeChildren:1];

          if (([v14 hasValidLayout] & 1) == 0)
          {
            [v14 absoluteFrame];
            MaxY = CGRectGetMaxY(v26);
            v16 = [(SXScrollViewController *)self viewport];
            [v16 dynamicBounds];
            v18 = v17;

            if (MaxY < v18)
            {

              v5 = 1;
              goto LABEL_14;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (BOOL)allowInteractivityFocusForComponent:(id)a3
{
  if ([(SXScrollViewController *)self isPreviewing])
  {
    return 0;
  }

  v5 = [(SXScrollViewController *)self viewport];
  v4 = [v5 appearState] == 2;

  return v4;
}

- (BOOL)addInteractivityFocusForComponent:(id)a3
{
  v4 = a3;
  if ([(SXScrollViewController *)self isPreviewing]|| ([(SXScrollViewController *)self focussedComponentView], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 0;
  }

  else
  {
    v8 = [(SXScrollViewController *)self textSelectionManager];
    [v8 clearSelection];

    [(SXScrollViewController *)self setFocussedComponentView:v4];
    v9 = [(SXScrollViewController *)self scrollView];
    v6 = 1;
    [v9 setScrollEnabled:1];
  }

  return v6;
}

- (void)removeInteractivityFocusForComponent:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self focussedComponentView];

  if (v5 == v4)
  {
    [(SXScrollViewController *)self setFocussedComponentView:0];
    v6 = [(SXScrollViewController *)self scrollView];
    [v6 setScrollEnabled:1];
  }
}

- (id)requestFullScreenCanvasViewControllerForComponent:(id)a3 withCompletionBlock:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(SXFullscreenCanvasViewController);
  v7 = [(SXFullscreenCanvasViewController *)v6 view];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [(SXScrollViewController *)self navigationController];
  -[SXFullscreenCanvasViewController setStatusBarStyle:](v6, "setStatusBarStyle:", [v9 preferredStatusBarStyle]);

  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v10 setModalPresentationStyle:5];
  [v10 setModalPresentationCapturesStatusBarAppearance:1];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [v10 setNavigationBarHidden:1 animated:0];
  }

  [(SXScrollViewController *)self presentViewController:v10 animated:0 completion:v5];
  v11 = [(SXScrollViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(SXScrollViewController *)self delegate];
    [v13 scrollViewControllerRequestsFullscreen:self];
  }

  [(SXScrollViewController *)self setFullscreenCanvasViewController:v6];
  v14 = [(SXScrollViewController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(SXScrollViewController *)self delegate];
    [v16 scrollViewController:self enableNavigation:0];
  }

  v17 = [(SXScrollViewController *)self fullscreenCanvasViewController];

  return v17;
}

- (void)willReturnToFullscreenForComponent:(id)a3
{
  v4 = [(SXScrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SXScrollViewController *)self delegate];
    [v6 willReturnToFullscreen:self];
  }
}

- (id)requestFullScreenCanvasViewControllerForComponent:(id)a3 canvasController:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SXScrollViewController *)self fullscreenCanvasViewController];

  if (v11)
  {
    [(SXScrollViewController *)self dismissFullscreenCanvasForComponent:v8];
  }

  [(SXScrollViewController *)self setCurrentCanvasController:v9];
  v12 = [(SXScrollViewController *)self requestFullScreenCanvasViewControllerForComponent:v8 withCompletionBlock:v10];

  return v12;
}

- (void)willDismissFullscreenCanvasForComponent:(id)a3
{
  v4 = [(SXScrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SXScrollViewController *)self delegate];
    [v6 scrollViewControllerWillDismissFullscreen:self];
  }
}

- (void)dismissFullscreenCanvasForComponent:(id)a3
{
  v4 = [(SXScrollViewController *)self fullscreenCanvasViewController];

  if (v4)
  {
    v5 = [(SXScrollViewController *)self fullscreenCanvasViewController];
    [v5 dismissViewControllerAnimated:0 completion:0];
    [(SXScrollViewController *)self setCurrentCanvasController:0];
    [(SXScrollViewController *)self setFullscreenCanvasViewController:0];
    v6 = [(SXScrollViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SXScrollViewController *)self delegate];
      [v8 scrollViewControllerDismissFullscreen:self];
    }
  }

  v9 = [(SXScrollViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SXScrollViewController *)self delegate];
    [v11 scrollViewController:self enableNavigation:1];
  }
}

- (BOOL)isScrolling
{
  v2 = [(SXScrollViewController *)self scrollView];
  v3 = [v2 isScrolling];

  return v3;
}

- (void)scrollToRect:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(SXScrollViewController *)self scrollView];
  [v9 scrollRectToVisible:v4 animated:{x, y, width, height}];
}

- (id)presentingContentViewController
{
  v2 = [(SXScrollViewController *)self tangierController];
  v3 = [v2 cvc];

  return v3;
}

- (void)updateBehaviorForComponentView:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self behaviorController];
  [v5 updateComponentView:v4];
}

- (BOOL)shouldPreventDraggingForScrollView:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self focussedComponentView];

  v9 = 0;
  if (v5)
  {
    v6 = [(SXScrollViewController *)self focussedComponentView];
    v7 = [v4 panGestureRecognizer];
    v8 = [v6 gestureShouldBegin:v7];

    if (!v8)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)scrollView:(id)a3 shouldOccludeAccessibilityElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SXScrollViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SXScrollViewController *)self delegate];
    v11 = [v10 scrollViewController:self shouldOccludeAccessibilityElement:v7];
LABEL_9:
    v14 = v11;

    goto LABEL_10;
  }

  v12 = [v6 accessibilityContainer];
  if (v12)
  {
    v10 = v12;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v13 = [v10 accessibilityContainer];

      v10 = v13;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v11 = [v10 shouldOccludeAccessibilityElement:v7];
    goto LABEL_9;
  }

LABEL_7:
  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)accessibilityShouldScrollForScrollView:(id)a3 defaultValue:(BOOL)a4
{
  v4 = a4;
  v6 = [(SXScrollViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SXScrollViewController *)self delegate];
    LOBYTE(v4) = [v8 accessibilityShouldScrollForScrollViewController:self defaultValue:v4];
  }

  return v4;
}

- (BOOL)accessibilityShouldHandleInteractionForView:(id)a3
{
  v4 = a3;
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(SXComponentInteractionManager *)self->_componentInteractionManager accessibilityShouldHandleInteractionForComponentView:v4];

  return v5;
}

- (void)tangierControllerDidScroll:(id)a3
{
  [(SXScrollViewController *)self setPreviouslyRestoredScrollPosition:0];
  v4 = [(SXScrollViewController *)self componentController];
  v5 = [v4 isPresented];

  if (v5)
  {
    v6 = [(SXScrollViewController *)self componentController];
    v7 = [v6 presentedBlueprint];
    [(SXScrollViewController *)self updateViewportForBlueprint:v7];
  }

  [(SXScrollViewController *)self updateStickyHeaders];
  v8 = [(SXScrollViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SXScrollViewController *)self delegate];
    [v10 scrollViewControllerDidScroll:self];
  }

  v11 = [(SXScrollViewController *)self scrollReporter];
  [v11 didScroll];

  [(SXScrollViewController *)self updatePrimaryContentScrollProgress];
}

- (void)tangierControllerWillStartScrolling:(id)a3
{
  v3 = [(SXScrollViewController *)self scrollReporter];
  [v3 willStartScrolling];
}

- (void)tangierControllerDidStopScrolling:(id)a3
{
  v4 = [(SXScrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SXScrollViewController *)self delegate];
    [v6 scrollViewControllerDidStopScrolling:self];
  }

  v7 = [(SXScrollViewController *)self scrollReporter];
  [v7 didStopScrolling];
}

- (void)tangierController:(id)a3 scrollViewWillBeginDragging:(id)a4
{
  v5 = a4;
  [v5 contentOffset];
  v7 = v6;
  [v5 contentSize];
  v9 = v8;

  v11 = objc_alloc_init(SXArticleScrollEvent);
  [(SXArticleScrollEvent *)v11 setStartPosition:fmax(v7 / v9 * 100.0, 0.0)];
  v10 = [(SXScrollViewController *)self articleScrollEvents];
  [v10 addObject:v11];
}

- (void)tangierController:(id)a3 scrollViewDidEndDragging:(id)a4 willDecelerate:(BOOL)a5
{
  v12 = a3;
  v8 = a4;
  if (!a5)
  {
    v9 = [(SXScrollViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(SXScrollViewController *)self delegate];
      [v11 scrollViewControllerDidStopScrolling:self];
    }
  }
}

- (void)tangierController:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6
{
  y = a5.y;
  v9 = a4;
  v10 = a6->y;
  v36 = v9;
  if (v10 > 0.0)
  {
    [v9 contentSize];
    v12 = v11;
    [v36 bounds];
    Height = CGRectGetHeight(v38);
    v9 = v36;
    if (v10 < v12 + Height)
    {
      [(SXScrollViewController *)self snaplineForContentOffset:a6->y velocity:y];
      v15 = v14;
      v16 = [(SXScrollViewController *)self delegate];
      v17 = objc_opt_respondsToSelector();

      v18 = 0.0;
      if (v17)
      {
        v19 = [(SXScrollViewController *)self delegate];
        [v19 navigationBarHeightForScrollViewController:self];
        v18 = v20;
      }

      v9 = v36;
      if (v15 != 9.22337204e18)
      {
        v21 = [(SXScrollViewController *)self scrollView];
        [v21 contentSize];
        v23 = v22;
        v24 = [(SXScrollViewController *)self scrollView];
        [v24 bounds];
        v25 = v23 - CGRectGetHeight(v39);

        v9 = v36;
        if (v15 < v25)
        {
          a6->y = v15 - v18;
        }
      }
    }
  }

  v26 = a6->y;
  [v9 contentSize];
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

  v34 = [(SXScrollViewController *)self articleScrollEvents];
  v35 = [v34 lastObject];

  [v35 setTargetPosition:v28];
  [v35 setEndPosition:v33];
  [v35 setVelocity:y];
  [v35 determineEndDate];
}

- (void)spacebarPressedWithModifierFlags:(int64_t)a3
{
  v3 = a3;
  v5 = [(SXScrollViewController *)self scrollView];
  [v5 contentOffset];
  v7 = v6;

  v8 = [(SXScrollViewController *)self scrollView];
  [v8 bounds];
  Height = CGRectGetHeight(v20);

  v10 = [(SXScrollViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  v12 = 0.0;
  if (v11)
  {
    v13 = [(SXScrollViewController *)self delegate];
    [v13 navigationBarHeightForScrollViewController:self];
    v12 = v14;
  }

  if ((v3 & 0x20000) == 0)
  {
    [(SXScrollViewController *)self snaplineForContentOffset:v7 + Height + v12 velocity:1.79769313e308];
  }

  v15 = [(SXScrollViewController *)self scrollView];
  [v15 contentSize];
  v16 = [(SXScrollViewController *)self scrollView];
  [v16 bounds];
  CGRectGetHeight(v21);

  v18 = [(SXScrollViewController *)self scrollView];
  v17 = [(SXScrollViewController *)self scrollView];
  [v17 contentOffset];
  [v18 setContentOffset:1 animated:?];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self focussedComponentView];

  if (v5)
  {
    v6 = [(SXScrollViewController *)self focussedComponentView];
    v7 = [v6 gestureShouldBegin:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldStartPreviewForInteractionContextManager:(id)a3
{
  v3 = [(SXScrollViewController *)self focussedComponentView];
  v4 = v3 == 0;

  return v4;
}

- (void)finishArticleScrollEvents
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(SXScrollViewController *)self articleScrollEvents];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(SXScrollViewController *)self analyticsReportingContainer];
        v10 = [v9 analyticsReporting];
        [v10 reportEvent:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = [(SXScrollViewController *)self articleScrollEvents];
  [v11 removeAllObjects];
}

- (double)snaplineForContentOffset:(double)a3 velocity:(double)a4
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
    v10 = a3;
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
        v13 = [(SXScrollViewController *)self scrollView];
        [v13 contentOffset];
        v15 = vabdd_f64(a3, v14);

        v15 /= 50;
        v16 = [v12 intValue];
        v17 = -7 * v15 + v16;
        v18 = 14 * v15;
        if (v10 >= v17 && v10 - v17 < v18)
        {
          v20 = v10;
          v21 = v9;
          v22 = v16;
          v23 = [(SXScrollViewController *)self scrollView];
          [v23 contentOffset];
          v25 = v24 >= v22 || a4 <= 0.0;
          if (v25 && ((-[SXScrollViewController scrollView](self, "scrollView"), v35 = objc_claimAutoreleasedReturnValue(), [v35 contentOffset], a4 >= 0.0) || v26 <= v22))
          {

            v10 = v20;
            v8 = v34;
          }

          else
          {
            v27 = [(SXScrollViewController *)self scrollView];
            [v27 contentOffset];
            v30 = v28 < v17 || v28 - v17 >= v18;

            if (v25)
            {
            }

            v9 = v21;
            v10 = v20;
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

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = [(SXScrollViewController *)self view];
  [v4 setAlpha:1.0];

  [(SXScrollViewController *)self showScrollViewIfNeeded];
}

- (void)showScrollViewIfNeeded
{
  v3 = [(SXScrollViewController *)self componentController];
  v4 = [v3 presentedBlueprint];
  v5 = [(SXScrollViewController *)self isValidBlueprintForCurrentSize:v4];

  if (v5)
  {
    v6 = [(SXScrollViewController *)self scrollView];
    [v6 setAlpha:1.0];
  }
}

- (BOOL)isValidBlueprintForCurrentSize:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self scrollView];
  [v5 bounds];
  Width = CGRectGetWidth(v12);
  v7 = [v4 layoutOptions];

  [v7 viewportSize];
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
  v2 = [(SXScrollViewController *)self tangierController];
  v3 = [v2 icc];

  return v3;
}

- (id)canvasViewController
{
  v2 = [(SXScrollViewController *)self tangierController];
  v3 = [v2 cvc];

  return v3;
}

- (void)setupArticleExperimentation
{
  v3 = [(SXScrollViewController *)self documentProvider];
  v6 = [v3 document];

  v4 = [(SXScrollViewController *)self experimentationManager];
  v5 = [(SXScrollViewController *)self experimentationDelegate];
  [v4 setupExperimentationForDocument:v6 experimentationDelegate:v5];
}

- (id)searchWithContext:(id)a3
{
  v4 = a3;
  -[SXScrollViewController setIsSearchActive:](self, "setIsSearchActive:", [v4 action] != 3);
  v5 = [(SXScrollViewController *)self scrollView];
  [v5 stopScrollingAndZooming];

  v6 = [(SXScrollViewController *)self tangierController];
  v7 = [v6 searchWithContext:v4];

  return v7;
}

- (void)reloadSearch
{
  v2 = [(SXScrollViewController *)self tangierController];
  [v2 reloadSearch];
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

- (id)scrollViewForStripGalleryWithComponentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self componentController];
  v6 = [v5 componentViewForIdentifier:v4];

  v7 = [v6 itemizedScrollView];

  return v7;
}

- (void)presentFullscreenGalleryWithComponentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self componentController];
  v8 = [v5 componentViewForIdentifier:v4];

  v6 = [v8 imageViews];
  v7 = [v6 firstObject];
  [v8 forceImageViewFullscreen:v7];
}

- (id)scrollViewForFullscreenGalleryWithComponentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXScrollViewController *)self componentController];
  v6 = [v5 componentViewForIdentifier:v4];

  v7 = [v6 fullScreenCanvasController];
  v8 = [v7 itemizedScrollView];

  return v8;
}

@end