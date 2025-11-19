@interface SBFloatingDockRootViewController
- (BOOL)floatingDockViewController:(id)a3 canHandleDataDropSession:(id)a4 inIconListView:(id)a5;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockViewController:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isFloatingDockViewControllerPresentedOnExternalDisplay:(id)a3;
- (BOOL)isFloatingDockViewControllerPresentedOverApplication:(id)a3;
- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningAppToAppContent:(id)a3;
- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningSwitcherContent:(id)a3;
- (BOOL)isLibraryPodIconEnabled;
- (BOOL)isPresentingFolder;
- (BOOL)isPresentingIconLocation:(id)a3;
- (CGRect)_calculateStandardDockFrame;
- (CGRect)floatingDockScreenFrame;
- (CGRect)floatingDockScreenPresentationFrame;
- (NSSet)presentedIconLocations;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockRootViewController)initWithHomeScreenContextProvider:(id)a3 applicationController:(id)a4 recentsController:(id)a5 recentsDataStore:(id)a6 appSuggestionManager:(id)a7 layoutStateTransitionCoordinator:(id)a8 iconViewProvider:(id)a9 analyticsClient:(id)a10;
- (SBFloatingDockRootViewControllerDelegate)delegate;
- (SBFolderController)presentedFolderController;
- (SBIconListView)suggestionsIconListView;
- (SBIconListView)userIconListView;
- (SBIconListView)utilitiesIconListView;
- (SBIconViewProviding)iconViewProvider;
- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator;
- (_UILegibilitySettings)legibilitySettings;
- (double)_floatingDockViewTranslation;
- (double)effectiveFloatingDockHeight;
- (double)floatingDockHeight;
- (double)floatingDockHeightForFrame:(CGRect)a3;
- (double)floatingDockViewTopMargin;
- (double)maximumDockContinuousCornerRadius;
- (double)maximumFloatingDockHeight;
- (double)minimumHomeScreenScaleForFloatingDockViewController:(id)a3;
- (double)preferredVerticalMargin;
- (double)translationFromFullyPresentedFrame;
- (id)connectedRemoteContentBundleIdentifier;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)floatingDockViewController:(id)a3 acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)a4;
- (id)floatingDockViewController:(id)a3 dataDropSessionDidUpdate:(id)a4 inIconListView:(id)a5;
- (id)foregroundLibraryContainerViewControllerForFloatingDockViewController:(id)a3;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
- (id)libraryContainerViewControllerForFloatingDockViewController:(id)a3;
- (void)_beginPresentationTransition;
- (void)_configureNavigationGestureRecognizersIfNeeded;
- (void)_endPresentationTransition;
- (void)_handlePanGestureRecognizer:(id)a3;
- (void)_layoutFloatingDockPresentationProgress:(double)a3;
- (void)_setDisplayLayoutElementActive:(BOOL)a3;
- (void)_setDisplayLayoutElementActive:(BOOL)a3 windowLevel:(double)a4;
- (void)_setPresentedProgress:(double)a3 animated:(BOOL)a4 interactive:(BOOL)a5 completion:(id)a6;
- (void)cleanupAfterTransitionToEnvironmentMode:(int64_t)a3;
- (void)dealloc;
- (void)dismissPresentedFolderAnimated:(BOOL)a3 withTransitionContext:(id)a4 completion:(id)a5;
- (void)dismissPresentedLibraryAnimated:(BOOL)a3 withTransitionContext:(id)a4 completion:(id)a5;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)floatingDockViewController:(id)a3 didChangeContentFrame:(CGRect)a4;
- (void)floatingDockViewController:(id)a3 didChangeContentHeight:(double)a4;
- (void)floatingDockViewController:(id)a3 didFinishBouncingIconView:(id)a4;
- (void)floatingDockViewController:(id)a3 wantsToBePresented:(BOOL)a4;
- (void)floatingDockViewController:(id)a3 willPerformTransitionWithFolder:(id)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6;
- (void)floatingDockViewController:(id)a3 willStartBouncingIconView:(id)a4;
- (void)floatingDockViewController:(id)a3 willUseAnimator:(id)a4 forTransitioningWithFolder:(id)a5 presenting:(BOOL)a6;
- (void)floatingDockViewDidBecomeVisible:(id)a3;
- (void)floatingDockViewDidResignVisible:(id)a3;
- (void)floatingDockViewWillBecomeVisible:(id)a3;
- (void)floatingDockViewWillResignVisible:(id)a3;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)prepareForTransitionToEnvironmentMode:(int64_t)a3 fromDockVisible:(BOOL)a4 toDockVisible:(BOOL)a5;
- (void)presentFolderForIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)reconnectHostingClient:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setLibraryPodIconEnabled:(BOOL)a3;
- (void)setPresentationProgress:(double)a3 animated:(BOOL)a4 interactive:(BOOL)a5 withCompletion:(id)a6;
- (void)setPresentationProgress:(double)a3 interactive:(BOOL)a4 withCompletion:(id)a5;
- (void)setRequestedSuggestedApplication:(id)a3;
- (void)updateDisplayLayoutElementWindowLevel:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillMoveToWindow:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBFloatingDockRootViewController

- (SBFloatingDockRootViewController)initWithHomeScreenContextProvider:(id)a3 applicationController:(id)a4 recentsController:(id)a5 recentsDataStore:(id)a6 appSuggestionManager:(id)a7 layoutStateTransitionCoordinator:(id)a8 iconViewProvider:(id)a9 analyticsClient:(id)a10
{
  v16 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v27.receiver = self;
  v27.super_class = SBFloatingDockRootViewController;
  v20 = [(SBFloatingDockRootViewController *)&v27 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_homeScreenContextProvider, v16);
    objc_storeStrong(&v21->_applicationController, a4);
    objc_storeStrong(&v21->_appSuggestionManager, a7);
    v21->_presentedProgress = 1.0;
    objc_storeStrong(&v21->_recentsController, a5);
    objc_storeStrong(&v21->_recentsDataStore, a6);
    objc_storeWeak(&v21->_layoutStateTransitionCoordinator, v17);
    objc_storeWeak(&v21->_iconViewProvider, v18);
    objc_storeStrong(&v21->_analyticsClient, a10);
  }

  return v21;
}

- (void)dealloc
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (displayLayoutAssertion)
  {
    [(BSInvalidatable *)displayLayoutAssertion invalidate];
    v4 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v33 viewDidLoad];
  v3 = [(SBFloatingDockRootViewController *)self homeScreenContextProvider];
  v4 = [(SBFloatingDockRootViewController *)self applicationController];
  v28 = [(SBFloatingDockRootViewController *)self iconViewProvider];
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 floatingDockDefaults];

  v7 = [MEMORY[0x277D66160] extendedFloatingDockCapacityIconCount];
  v8 = [SBFloatingDockSuggestionsModel alloc];
  recentsController = self->_recentsController;
  recentsDataStore = self->_recentsDataStore;
  v11 = +[SBDefaults localDefaults];
  v12 = [v11 recentDisplayItemsDefaults];
  v13 = [(SBFloatingDockSuggestionsModel *)v8 initWithMaximumNumberOfSuggestions:v7 homeScreenContextProvider:v3 recentsController:recentsController recentsDataStore:recentsDataStore recentsDefaults:v12 floatingDockDefaults:v6 appSuggestionManager:self->_appSuggestionManager applicationController:v4];

  v14 = [(SBFloatingDockRootViewController *)self requestedSuggestedApplication];
  [(SBFloatingDockSuggestionsModel *)v13 setRequestedSuggestedApplication:v14];

  [(SBFloatingDockRootViewController *)self setSuggestionsModel:v13];
  v15 = [SBFloatingDockSuggestionsViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
  v17 = [(SBFloatingDockSuggestionsViewController *)v15 initWithNumberOfRecents:v7 homeScreenContextProvider:v3 applicationController:v4 layoutStateTransitionCoordinator:WeakRetained suggestionsModel:v13 iconViewProvider:v28];

  v18 = objc_alloc(MEMORY[0x277D660C0]);
  v19 = [v3 iconManager];
  v20 = [v18 initWithIconManager:v19 iconViewProvider:v28];

  [v20 setDelegate:self];
  [v20 setSuggestionsViewController:v17];
  v21 = [(SBFloatingDockRootViewController *)self legibilitySettings];
  [v20 setLegibilitySettings:v21];

  [v20 setRequestedVerticalMargin:8.0];
  [(SBFloatingDockRootViewController *)self bs_addChildViewController:v20];
  [(SBFloatingDockRootViewController *)self setFloatingDockViewController:v20];
  -[SBFloatingDockRootViewController setLibraryPodIconEnabled:](self, "setLibraryPodIconEnabled:", [v6 appLibraryEnabled]);
  objc_initWeak(&location, self);
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"appLibraryEnabled"];
  v23 = MEMORY[0x277D85CD0];
  v24 = MEMORY[0x277D85CD0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __47__SBFloatingDockRootViewController_viewDidLoad__block_invoke;
  v29[3] = &unk_2783A9CE8;
  objc_copyWeak(&v31, &location);
  v25 = v6;
  v30 = v25;
  v26 = [v25 observeDefault:v22 onQueue:v23 withBlock:v29];

  v27 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handlePanGestureRecognizer_];
  [v27 setDelegate:self];
  [v20 _addDockGestureRecognizer:v27];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __47__SBFloatingDockRootViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLibraryPodIconEnabled:{objc_msgSend(*(a1 + 32), "appLibraryEnabled")}];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(SBFloatingDockRootViewController *)self view];
  v4 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v5 = [v4 view];

  [v3 bounds];
  [v5 setBounds:?];
  [v3 center];
  [v5 setCenter:?];
  [(SBFloatingDockRootViewController *)self _layoutFloatingDockPresentationProgress:self->_presentedProgress];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v5 viewDidAppear:a3];
  if (!self->_hasInitializedDockVisibility)
  {
    self->_hasInitializedDockVisibility = 1;
    if ([(SBFloatingDockRootViewController *)self isFloatingDockFullyPresented])
    {
      v4 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [v4 dockViewWillBecomeVisible];
      [v4 dockViewDidBecomeVisible];
    }
  }
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  if (a3)
  {
    a3->var6 = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 floatingDockRootViewController:self willTransitionToSize:v7 withTransitionCoordinator:{width, height}];
  }
}

- (void)viewWillMoveToWindow:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v16 viewWillMoveToWindow:v4];
  [(SBFloatingDockRootViewController *)self _configureNavigationGestureRecognizersIfNeeded];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_focusNavigationGestureRecognizers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v10 view];
        [v11 removeGestureRecognizer:v10];

        [v4 addGestureRecognizer:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      *&self->_delegateRespondsTo &= ~1u;
    }

    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
    }
  }
}

- (BOOL)isLibraryPodIconEnabled
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 isLibraryPodIconEnabled];

  return v3;
}

- (void)setLibraryPodIconEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v4 setLibraryPodIconEnabled:v3];
}

- (double)maximumFloatingDockHeight
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v2 maximumContentHeight];
  v4 = v3;

  return v4;
}

- (double)maximumDockContinuousCornerRadius
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v2 maximumDockContinuousCornerRadius];
  v4 = v3;

  return v4;
}

- (double)floatingDockHeight
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v2 contentHeight];
  v4 = v3;

  return v4;
}

- (double)floatingDockHeightForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v7 contentHeightForFrame:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (double)effectiveFloatingDockHeight
{
  if (![(SBFloatingDockRootViewController *)self isFloatingDockPresented])
  {
    return 0.0;
  }

  [(SBFloatingDockRootViewController *)self floatingDockHeight];
  return result;
}

- (double)preferredVerticalMargin
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v2 preferredVerticalMargin];
  v4 = v3;

  return v4;
}

- (double)floatingDockViewTopMargin
{
  v3 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v4 = [(SBFloatingDockRootViewController *)self view];
  [v4 bounds];
  [v3 minimumVerticalMarginForFrame:?];
  v6 = v5;

  return v6;
}

- (double)translationFromFullyPresentedFrame
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v2 translationFromFullyPresentedFrame];
  v4 = v3;

  return v4;
}

- (_UILegibilitySettings)legibilitySettings
{
  v3 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v4 = [v3 legibilitySettings];
  legibilitySettings = v4;
  if (!v4)
  {
    legibilitySettings = self->_legibilitySettings;
  }

  v6 = legibilitySettings;

  return legibilitySettings;
}

- (void)setLegibilitySettings:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    v5 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    [v5 setLegibilitySettings:v6];
  }
}

- (BOOL)isPresentingFolder
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 isPresentingFolder];

  return v3;
}

- (SBFolderController)presentedFolderController
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 presentedFolderController];

  return v3;
}

- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v6 layoutUserControlledIconListsWithAnimationType:a3 forceRelayout:v4];
}

- (SBIconListView)userIconListView
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 userIconListView];

  return v3;
}

- (SBIconListView)suggestionsIconListView
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 recentIconListView];

  return v3;
}

- (SBIconListView)utilitiesIconListView
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 utilitiesIconListView];

  return v3;
}

- (void)setRequestedSuggestedApplication:(id)a3
{
  v5 = a3;
  if (self->_requestedSuggestedApplication != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_requestedSuggestedApplication, a3);
    v6 = [(SBFloatingDockRootViewController *)self suggestionsModel];
    [v6 setRequestedSuggestedApplication:v7];

    v5 = v7;
  }
}

- (id)connectedRemoteContentBundleIdentifier
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 connectedRemoteContentBundleIdentifier];

  return v3;
}

- (CGRect)floatingDockScreenFrame
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v2 floatingDockScreenFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)floatingDockScreenPresentationFrame
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v2 floatingDockScreenPresentationFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setPresentationProgress:(double)a3 interactive:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SBFloatingDockRootViewController_setPresentationProgress_interactive_withCompletion___block_invoke;
  v10[3] = &unk_2783A9C70;
  v11 = v8;
  v9 = v8;
  [(SBFloatingDockRootViewController *)self _setPresentedProgress:1 animated:v5 interactive:v10 completion:a3];
}

uint64_t __87__SBFloatingDockRootViewController_setPresentationProgress_interactive_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setPresentationProgress:(double)a3 animated:(BOOL)a4 interactive:(BOOL)a5 withCompletion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SBFloatingDockRootViewController_setPresentationProgress_animated_interactive_withCompletion___block_invoke;
  v12[3] = &unk_2783A9C70;
  v13 = v10;
  v11 = v10;
  [(SBFloatingDockRootViewController *)self _setPresentedProgress:v7 animated:v6 interactive:v12 completion:a3];
}

uint64_t __96__SBFloatingDockRootViewController_setPresentationProgress_animated_interactive_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentFolderForIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v13 presentFolderForIcon:v12 location:v11 animated:v6 completion:v10];
}

- (void)dismissPresentedFolderAnimated:(BOOL)a3 withTransitionContext:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  [(SBFloatingDockRootViewController *)self setCurrentTransitionContext:a4];
  v9 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__SBFloatingDockRootViewController_dismissPresentedFolderAnimated_withTransitionContext_completion___block_invoke;
  v11[3] = &unk_2783A9C98;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 dismissPresentedFolderAnimated:v6 completion:v11];
}

uint64_t __100__SBFloatingDockRootViewController_dismissPresentedFolderAnimated_withTransitionContext_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentTransitionContext:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)dismissPresentedLibraryAnimated:(BOOL)a3 withTransitionContext:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  if ([v10 isPresentingLibrary])
  {
    [(SBFloatingDockRootViewController *)self setCurrentTransitionContext:v8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__SBFloatingDockRootViewController_dismissPresentedLibraryAnimated_withTransitionContext_completion___block_invoke;
    v11[3] = &unk_2783A9C98;
    v11[4] = self;
    v12 = v9;
    [v10 dismissLibraryAnimated:v6 completion:v11];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }
}

uint64_t __101__SBFloatingDockRootViewController_dismissPresentedLibraryAnimated_withTransitionContext_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentTransitionContext:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)isDisplayingIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [v5 isDisplayingIcon:v4];

  return v6;
}

- (void)prepareForTransitionToEnvironmentMode:(int64_t)a3 fromDockVisible:(BOOL)a4 toDockVisible:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(SBFloatingDockRootViewController *)self setUseDismissHitTestPadding:a3 == 3];
  v9 = [(SBFloatingDockRootViewController *)self view];
  [v9 setNeedsLayout];

  v12 = [MEMORY[0x277D66190] configurationWithEnvironmentMode:a3];
  v10 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v11 = (a3 - 4) < 0xFFFFFFFFFFFFFFFELL;
  [v10 setWantsFastIconReordering:v11];
  [v10 setShouldIndicateImpossibleDrop:v11];
  [v10 prepareForTransitionToStyleConfiguration:v12 fromDockVisible:v6 toDockVisible:v5];
}

- (void)cleanupAfterTransitionToEnvironmentMode:(int64_t)a3
{
  v3 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v3 cleanUpAfterUnderlyingBackgroundStyleTransition];
}

- (void)_setDisplayLayoutElementActive:(BOOL)a3
{
  v3 = a3;
  v6 = [(SBFloatingDockRootViewController *)self view];
  v5 = [v6 window];
  [v5 level];
  [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:v3 windowLevel:?];
}

- (void)_setDisplayLayoutElementActive:(BOOL)a3 windowLevel:(double)a4
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (a3)
  {
    if (displayLayoutAssertion)
    {
      return;
    }

    v7 = objc_alloc(MEMORY[0x277D66A50]);
    v15 = [v7 initWithIdentifier:*MEMORY[0x277D66F18]];
    [v15 setLevel:a4];
    [v15 setLayoutRole:4];
    v8 = [(SBFloatingDockRootViewController *)self view];
    v9 = [v8 window];
    [(SBFloatingDockRootViewController *)self _calculateStandardDockFrame];
    [v8 convertRect:0 toView:?];
    [v9 _convertRectToSceneReferenceSpace:?];
    [v15 setReferenceFrame:?];
    v10 = [(UIViewController *)self _sbWindowScene];
    v11 = [v10 displayLayoutPublisher];
    v12 = [v11 addElement:v15];
    v13 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = v12;

    v14 = v15;
  }

  else
  {
    if (!displayLayoutAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutAssertion invalidate];
    v14 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = 0;
  }
}

- (void)updateDisplayLayoutElementWindowLevel:(double)a3
{
  v5 = [(SBFloatingDockRootViewController *)self displayLayoutAssertion];

  if (v5)
  {
    v6 = [(UIViewController *)self _sbWindowScene];
    v7 = [v6 displayLayoutPublisher];
    v8 = [v7 transitionAssertionWithReason:0];

    [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:0 windowLevel:a3];
    [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:1 windowLevel:a3];
    [v8 invalidate];
  }
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [v8 iconViewForIcon:v7 location:v6];

  return v9;
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [v8 firstIconViewForIcon:v7 inLocations:v6];

  return v9;
}

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [v5 firstIconViewForIcon:v4];

  return v6;
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [v8 firstIconViewForIcon:v7 excludingLocations:v6];

  return v9;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [v8 isDisplayingIcon:v7 inLocation:v6];

  return v9;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([(SBFloatingDockRootViewController *)self isDisplayingIcon:v6 inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [v5 isDisplayingIconView:v4];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [v8 isDisplayingIconView:v7 inLocation:v6];

  return v9;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v5 enumerateDisplayedIconViewsUsingBlock:v4];
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [v8 enumerateDisplayedIconViewsForIcon:v7 usingBlock:v6];
}

- (BOOL)isPresentingIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [v5 isPresentingIconLocation:v4];

  return v6;
}

- (NSSet)presentedIconLocations
{
  v2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v3 = [v2 presentedIconLocations];

  return v3;
}

- (void)_layoutFloatingDockPresentationProgress:(double)a3
{
  if ([(SBFloatingDockRootViewController *)self useDismissHitTestPadding])
  {
    v5 = +[SBMedusaDomain rootSettings];
    [v5 dismissHitTestTopPadding];
  }

  UIEdgeInsetsMakeWithEdges();
  [(SBFloatingDockViewController *)self->_floatingDockViewController _setPaddingEdgeInsets:?];
  [(SBFloatingDockViewController *)self->_floatingDockViewController setDockOffscreenProgress:1.0 - a3];
  v6 = [(SBFloatingDockRootViewController *)self delegate];
  [(SBFloatingDockRootViewController *)self floatingDockScreenFrame];
  [v6 floatingDockRootViewController:self didChangeToFrame:?];
}

- (void)_setPresentedProgress:(double)a3 animated:(BOOL)a4 interactive:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  if (BSFloatEqualToFloat())
  {
    goto LABEL_32;
  }

  v11 = BSFloatGreaterThanFloat();
  v12 = [(SBFloatingDockRootViewController *)self isFloatingDockPresented];
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {
      [(SBFloatingDockRootViewController *)self loadViewIfNeeded];
      v14 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [v14 dockViewWillBecomeVisible];

      [(SBFloatingDockRootViewController *)self _beginPresentationTransition];
      [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:1];
    }

    v15 = !v13;
    if (!BSFloatGreaterThanFloat())
    {
      goto LABEL_10;
    }

    v16 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    v17 = [v16 _sbWindowScene];
    v18 = [v17 switcherController];

    v19 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    LODWORD(v17) = [v19 isPresentingFolder];

    if (v17)
    {
      v20 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [v20 dismissPresentedFolderAnimated:v7 completion:0];
    }

    else if (v6 && (-[SBFloatingDockRootViewController floatingDockViewController](self, "floatingDockViewController"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 isPresentingLibraryInForeground], v34, v35))
    {
      v20 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [v20 dismissLibraryAnimated:v7 completion:0];
    }

    else
    {
      if ([v18 unlockedEnvironmentMode] == 3)
      {
        goto LABEL_9;
      }

      v20 = [(SBFloatingDockRootViewController *)self homeScreenContextProvider];
      v36 = [v20 iconManager];
      v37 = [v36 hasOpenFolder];

      if (v37)
      {
        v38 = [v20 iconManager];
        [v38 popExpandedIconAnimated:v7 completionHandler:0];
      }
    }

LABEL_9:
LABEL_10:
    v21 = 0;
    goto LABEL_14;
  }

  if (v12)
  {
    v22 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    [v22 dockViewWillResignVisible];

    [(SBFloatingDockRootViewController *)self _beginPresentationTransition];
    [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:0];
    v15 = 0;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v15 = 0;
  }

LABEL_14:
  self->_presentedProgress = a3;
  v23 = fmin(fmax(a3, 0.0), 1.0);
  v24 = [(SBFloatingDockRootViewController *)self viewIfLoaded];

  if (!v24)
  {
    goto LABEL_19;
  }

  v25 = [(SBFloatingDockRootViewController *)self delegate];
  [(SBFloatingDockRootViewController *)self floatingDockHeight];
  v27 = v26 * a3;
  if (!v7)
  {
    [v25 floatingDockRootViewController:self willChangeToHeight:v6 interactive:v26 * a3];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__SBFloatingDockRootViewController__setPresentedProgress_animated_interactive_completion___block_invoke_3;
    v39[3] = &unk_2783A8BC8;
    v39[4] = self;
    *&v39[5] = a3;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v39];

LABEL_19:
    if (v10)
    {
      v10[2](v10, 1);
    }

    if (v15)
    {
      v29 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [v29 dockViewDidBecomeVisible];
    }

    else
    {
      if (!v21 || !BSFloatIsZero())
      {
        goto LABEL_32;
      }

      v29 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [v29 dockViewDidResignVisible];
    }

    [(SBFloatingDockRootViewController *)self _endPresentationTransition];
    goto LABEL_32;
  }

  v28 = +[SBMedusaDomain rootSettings];
  if ([(SBFloatingDockRootViewController *)self isPresentingFolder])
  {
    [v28 dockWithPresentedFolderAnimationSettings];
  }

  else
  {
    [v28 dockAnimationSettings];
  }
  v30 = ;
  ++self->_floatingDockPresentationAnimationCount;
  if (v6)
  {
    v31 = 5;
  }

  else
  {
    v31 = 3;
  }

  v32 = MEMORY[0x277D75D18];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __90__SBFloatingDockRootViewController__setPresentedProgress_animated_interactive_completion___block_invoke;
  v44[3] = &unk_2783BE5E0;
  v45 = v25;
  v46 = self;
  v49 = v6;
  v47 = v27;
  v48 = a3;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __90__SBFloatingDockRootViewController__setPresentedProgress_animated_interactive_completion___block_invoke_2;
  v40[3] = &unk_2783BC2B8;
  v40[4] = self;
  v42 = a3;
  v41 = v10;
  v43 = v23;
  v33 = v25;
  [v32 sb_animateWithSettings:v30 mode:v31 animations:v44 completion:v40];

LABEL_32:
}

uint64_t __90__SBFloatingDockRootViewController__setPresentedProgress_animated_interactive_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) floatingDockRootViewController:*(a1 + 40) willChangeToHeight:*(a1 + 64) interactive:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);

  return [v2 _layoutFloatingDockPresentationProgress:v3];
}

uint64_t __90__SBFloatingDockRootViewController__setPresentedProgress_animated_interactive_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  if (v3 && (*(v2 + 1152) = v3 - 1, *(*(a1 + 32) + 1152)))
  {
    v4 = 0;
  }

  else
  {
    v4 = BSFloatEqualToFloat();
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, v4);
  }

  if (v4)
  {
    if (BSFloatIsOne())
    {
      v6 = [*(a1 + 32) floatingDockViewController];
      [v6 dockViewDidBecomeVisible];
    }

    else
    {
      if (!BSFloatIsZero())
      {
LABEL_14:
        v7 = *(a1 + 32);

        return [v7 _endPresentationTransition];
      }

      v6 = [*(a1 + 32) floatingDockViewController];
      [v6 dockViewDidResignVisible];
    }

    goto LABEL_14;
  }

  return result;
}

- (void)_beginPresentationTransition
{
  if (![(SBFloatingDockRootViewController *)self isTransitioningPresentation])
  {
    [(SBFloatingDockRootViewController *)self setTransitioningPresentation:1];
    if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleFloatingDock") & 1) == 0)
    {
      v3 = [(SBFloatingDockRootViewController *)self view];
      v6 = [v3 window];

      v4 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v6 disableInterfaceOrientationChangesForReason:@"floating-dock"];
      }
    }
  }
}

- (void)_endPresentationTransition
{
  if ([(SBFloatingDockRootViewController *)self isTransitioningPresentation])
  {
    [(SBFloatingDockRootViewController *)self setTransitioningPresentation:0];
    if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleFloatingDock") & 1) == 0)
    {
      v3 = [(SBFloatingDockRootViewController *)self view];
      v4 = [v3 window];

      v5 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v4 enableInterfaceOrientationChangesForReason:@"floating-dock"];
      }
    }

    v7 = [(SBFloatingDockRootViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 floatingDockRootViewControllerDidEndPresentationTransition:self];
    }
  }
}

- (CGRect)_calculateStandardDockFrame
{
  v3 = [(SBFloatingDockRootViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memset(&slice, 0, sizeof(slice));
  v12 = [(SBFloatingDockRootViewController *)self floatingDockViewController:0];
  [v12 contentHeightForFrame:{v5, v7, v9, v11}];
  v14 = ceil(v13);
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  CGRectDivide(v21, &slice, &v19, v14, CGRectMaxYEdge);

  x = slice.origin.x;
  y = slice.origin.y;
  width = slice.size.width;
  height = slice.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_handlePanGestureRecognizer:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((*&self->_delegateRespondsTo & 1) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v6 = [WeakRetained floatingDockRootViewControllerShouldHandlePanGestureRecognizer:self], WeakRetained, v6))
  {
    v7 = [(SBFloatingDockRootViewController *)self view];
    [v4 translationInView:v7];
    [v4 velocityInView:v7];
    v9 = v8;
    [(SBFloatingDockRootViewController *)self _floatingDockViewTranslation];
    v22 = *MEMORY[0x277CF0B28];
    v23 = *(MEMORY[0x277CF0B28] + 16);
    BSUIConstrainValueToIntervalWithRubberBand();
    v11 = v10;
    v12 = [(SBFloatingDockRootViewController *)self delegate:v22];
    v13 = [v4 state];
    if (v13 <= 3)
    {
      switch(v13)
      {
        case 1:
          analyticsClient = self->_analyticsClient;
          v30 = *MEMORY[0x277D674C8];
          v31[0] = &unk_283371900;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
          [(SBFAnalyticsClient *)analyticsClient emitEvent:26 withPayload:v21];

          break;
        case 2:
          break;
        case 3:
          if (v11 >= 0.25 && v9 <= 10.0)
          {
            [v12 floatingDockRootViewController:self modifyProgress:0 interactive:0 completion:1.0];
            v15 = self->_analyticsClient;
            v26 = *MEMORY[0x277D674C8];
            v27 = &unk_283371930;
            v16 = MEMORY[0x277CBEAC0];
            v17 = &v27;
            v18 = &v26;
          }

          else
          {
            [v12 floatingDockRootViewController:self modifyProgress:0 interactive:0 completion:0.0];
            v15 = self->_analyticsClient;
            v28 = *MEMORY[0x277D674C8];
            v29 = &unk_283371918;
            v16 = MEMORY[0x277CBEAC0];
            v17 = &v29;
            v18 = &v28;
          }

          goto LABEL_14;
        default:
          goto LABEL_17;
      }

      [v12 floatingDockRootViewController:self modifyProgress:1 interactive:0 completion:v11];
      goto LABEL_17;
    }

    if ((v13 - 4) < 2)
    {
      [v12 floatingDockRootViewController:self modifyProgress:0 interactive:0 completion:1.0];
      v15 = self->_analyticsClient;
      v24 = *MEMORY[0x277D674C8];
      v25 = &unk_283371930;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v25;
      v18 = &v24;
LABEL_14:
      v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
      [(SBFAnalyticsClient *)v15 emitEvent:26 withPayload:v19];
    }

LABEL_17:
  }
}

- (double)_floatingDockViewTranslation
{
  [(SBFloatingDockRootViewController *)self floatingDockHeight];

  [(SBFloatingDockRootViewController *)self _floatingDockViewTranslationForHeight:?];
  return result;
}

- (void)_configureNavigationGestureRecognizersIfNeeded
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && !self->_focusNavigationGestureRecognizers)
  {
    WeakRetained = objc_loadWeakRetained(&self->_homeScreenContextProvider);
    v6 = [WeakRetained navigationDelegate];

    v7 = [objc_alloc(MEMORY[0x277D66138]) initWithTarget:0 action:0];
    [v7 setName:@"FloatingDock-GameController-BackButton"];
    [v7 setDelegate:self];
    [v7 setNavigationDelegate:v6];
    v8 = [objc_alloc(MEMORY[0x277D66218]) initWithTarget:0 action:0];
    [v8 setName:@"FloatingDock-GameController-LeftShoulderButton"];
    [v8 setDelegate:self];
    [v8 setNavigationDelegate:v6];
    v9 = [objc_alloc(MEMORY[0x277D66290]) initWithTarget:0 action:0];
    [v9 setName:@"FloatingDock-GameController-RightShoulderButton"];
    [v9 setDelegate:self];
    [v9 setNavigationDelegate:v6];
    v12[0] = v7;
    v12[1] = v8;
    v12[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    focusNavigationGestureRecognizers = self->_focusNavigationGestureRecognizers;
    self->_focusNavigationGestureRecognizers = v10;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if ((*&self->_delegateRespondsTo & 1) == 0)
  {
    return 1;
  }

  v4 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v4) = [WeakRetained floatingDockRootViewControllerShouldHandlePanGestureRecognizer:v4];

  return v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)floatingDockViewController:(id)a3 wantsToBePresented:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBFloatingDockRootViewController *)self delegate];
  [v6 floatingDockRootViewController:self floatingDockWantsToBePresented:v4];
}

- (void)floatingDockViewController:(id)a3 didChangeContentHeight:(double)a4
{
  if ([(SBFloatingDockRootViewController *)self isFloatingDockPresented])
  {
    v6 = [(SBFloatingDockRootViewController *)self delegate];
    [v6 floatingDockRootViewController:self willChangeToHeight:0 interactive:a4];
  }
}

- (void)floatingDockViewController:(id)a3 didChangeContentFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(SBFloatingDockRootViewController *)self delegate];
  [v9 floatingDockRootViewController:self didChangeToFrame:{x, y, width, height}];
}

- (void)floatingDockViewController:(id)a3 willPerformTransitionWithFolder:(id)a4 presenting:(BOOL)a5 withTransitionCoordinator:(id)a6
{
  v7 = a5;
  v11 = a4;
  v9 = a6;
  v10 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 floatingDockRootViewController:self willPerformTransitionWithFolder:v11 presenting:v7 withTransitionCoordinator:v9];
  }
}

- (void)floatingDockViewController:(id)a3 willUseAnimator:(id)a4 forTransitioningWithFolder:(id)a5 presenting:(BOOL)a6
{
  v15 = a4;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = v15;
  if (isKindOfClass)
  {
    v9 = [v15 iconAnimator];
    v10 = objc_opt_self();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = v9;
      v13 = +[SBMedusaDomain rootSettings];
      v14 = [v13 dockWithPresentedFolderAnimationSettings];
      [v12 setDockAnimationSettings:v14];
    }

    v8 = v15;
  }
}

- (double)minimumHomeScreenScaleForFloatingDockViewController:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 minimumHomeScreenScaleForFloatingDockRootViewController:self];
    v5 = v6;
  }

  return v5;
}

- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningAppToAppContent:(id)a3
{
  v3 = [(SBFloatingDockRootViewController *)self currentTransitionContext];
  v4 = [v3 previousLayoutState];
  v5 = [v4 unlockedEnvironmentMode];
  v6 = [v3 layoutState];
  v7 = [v6 unlockedEnvironmentMode];
  v8 = (v7 == 3) & ~[v6 isEqual:v4];
  if (v5 == 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isFloatingDockViewControllerPresentedOverApplication:(id)a3
{
  v3 = [a3 _sbWindowScene];
  v4 = [v3 switcherController];

  LOBYTE(v3) = [v4 unlockedEnvironmentMode] == 3;
  return v3;
}

- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningSwitcherContent:(id)a3
{
  v3 = [(SBFloatingDockRootViewController *)self currentTransitionContext];
  v4 = [v3 previousLayoutState];
  v5 = [v4 unlockedEnvironmentMode];
  v6 = [v3 layoutState];
  v7 = [v6 unlockedEnvironmentMode];
  v8 = v5 == 2 && v7 == 2 || v5 == 2 && v7 == 3;

  return v8;
}

- (BOOL)isFloatingDockViewControllerPresentedOnExternalDisplay:(id)a3
{
  v3 = [a3 _sbWindowScene];
  v4 = [v3 delegate];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = v7;

  return v8 != 0;
}

- (id)libraryContainerViewControllerForFloatingDockViewController:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 libraryContainerViewControllerForFloatingDockRootViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockViewController:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isDefaultLibraryContainerViewControllerForegroundForFloatingDockRootViewController:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)foregroundLibraryContainerViewControllerForFloatingDockViewController:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 foregroundLibraryContainerViewControllerForFloatingDockRootViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)floatingDockViewController:(id)a3 acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)a4
{
  v5 = a4;
  v6 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 floatingDockRootViewController:self acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)floatingDockViewWillBecomeVisible:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingDockRootViewWillBecomeVisible:self];
  }
}

- (void)floatingDockViewDidBecomeVisible:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingDockRootViewDidBecomeVisible:self];
  }
}

- (void)floatingDockViewWillResignVisible:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingDockRootViewWillResignVisible:self];
  }
}

- (void)floatingDockViewDidResignVisible:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 floatingDockRootViewDidResignVisible:self];
  }
}

- (void)floatingDockViewController:(id)a3 willStartBouncingIconView:(id)a4
{
  v6 = a4;
  v5 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 floatingDockRootViewController:self finishDownloadAnimationWillBeginForIconView:v6];
  }
}

- (void)floatingDockViewController:(id)a3 didFinishBouncingIconView:(id)a4
{
  v6 = a4;
  v5 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 floatingDockRootViewController:self finishDownloadAnimationDidEndForIconView:v6];
  }
}

- (BOOL)floatingDockViewController:(id)a3 canHandleDataDropSession:(id)a4 inIconListView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 floatingDockRootViewController:self canHandleDataDropSession:v7 inIconListView:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)floatingDockViewController:(id)a3 dataDropSessionDidUpdate:(id)a4 inIconListView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 floatingDockRootViewController:self dataDropSessionDidUpdate:v7 inIconListView:v8];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];
  }

  v11 = v10;

  return v11;
}

- (void)reconnectHostingClient:(id)a3
{
  v4 = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 reconnectHostingClient:self];
  }
}

- (SBFloatingDockRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_homeScreenContextProvider);

  return WeakRetained;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

@end