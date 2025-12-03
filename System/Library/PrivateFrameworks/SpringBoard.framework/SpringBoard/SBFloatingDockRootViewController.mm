@interface SBFloatingDockRootViewController
- (BOOL)floatingDockViewController:(id)controller canHandleDataDropSession:(id)session inIconListView:(id)view;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockViewController:(id)controller;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isFloatingDockViewControllerPresentedOnExternalDisplay:(id)display;
- (BOOL)isFloatingDockViewControllerPresentedOverApplication:(id)application;
- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningAppToAppContent:(id)content;
- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningSwitcherContent:(id)content;
- (BOOL)isLibraryPodIconEnabled;
- (BOOL)isPresentingFolder;
- (BOOL)isPresentingIconLocation:(id)location;
- (CGRect)_calculateStandardDockFrame;
- (CGRect)floatingDockScreenFrame;
- (CGRect)floatingDockScreenPresentationFrame;
- (NSSet)presentedIconLocations;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockRootViewController)initWithHomeScreenContextProvider:(id)provider applicationController:(id)controller recentsController:(id)recentsController recentsDataStore:(id)store appSuggestionManager:(id)manager layoutStateTransitionCoordinator:(id)coordinator iconViewProvider:(id)viewProvider analyticsClient:(id)self0;
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
- (double)floatingDockHeightForFrame:(CGRect)frame;
- (double)floatingDockViewTopMargin;
- (double)maximumDockContinuousCornerRadius;
- (double)maximumFloatingDockHeight;
- (double)minimumHomeScreenScaleForFloatingDockViewController:(id)controller;
- (double)preferredVerticalMargin;
- (double)translationFromFullyPresentedFrame;
- (id)connectedRemoteContentBundleIdentifier;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)floatingDockViewController:(id)controller acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)reason;
- (id)floatingDockViewController:(id)controller dataDropSessionDidUpdate:(id)update inIconListView:(id)view;
- (id)foregroundLibraryContainerViewControllerForFloatingDockViewController:(id)controller;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (id)libraryContainerViewControllerForFloatingDockViewController:(id)controller;
- (void)_beginPresentationTransition;
- (void)_configureNavigationGestureRecognizersIfNeeded;
- (void)_endPresentationTransition;
- (void)_handlePanGestureRecognizer:(id)recognizer;
- (void)_layoutFloatingDockPresentationProgress:(double)progress;
- (void)_setDisplayLayoutElementActive:(BOOL)active;
- (void)_setDisplayLayoutElementActive:(BOOL)active windowLevel:(double)level;
- (void)_setPresentedProgress:(double)progress animated:(BOOL)animated interactive:(BOOL)interactive completion:(id)completion;
- (void)cleanupAfterTransitionToEnvironmentMode:(int64_t)mode;
- (void)dealloc;
- (void)dismissPresentedFolderAnimated:(BOOL)animated withTransitionContext:(id)context completion:(id)completion;
- (void)dismissPresentedLibraryAnimated:(BOOL)animated withTransitionContext:(id)context completion:(id)completion;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)floatingDockViewController:(id)controller didChangeContentFrame:(CGRect)frame;
- (void)floatingDockViewController:(id)controller didChangeContentHeight:(double)height;
- (void)floatingDockViewController:(id)controller didFinishBouncingIconView:(id)view;
- (void)floatingDockViewController:(id)controller wantsToBePresented:(BOOL)presented;
- (void)floatingDockViewController:(id)controller willPerformTransitionWithFolder:(id)folder presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator;
- (void)floatingDockViewController:(id)controller willStartBouncingIconView:(id)view;
- (void)floatingDockViewController:(id)controller willUseAnimator:(id)animator forTransitioningWithFolder:(id)folder presenting:(BOOL)presenting;
- (void)floatingDockViewDidBecomeVisible:(id)visible;
- (void)floatingDockViewDidResignVisible:(id)visible;
- (void)floatingDockViewWillBecomeVisible:(id)visible;
- (void)floatingDockViewWillResignVisible:(id)visible;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)prepareForTransitionToEnvironmentMode:(int64_t)mode fromDockVisible:(BOOL)visible toDockVisible:(BOOL)dockVisible;
- (void)presentFolderForIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)reconnectHostingClient:(id)client;
- (void)setDelegate:(id)delegate;
- (void)setLegibilitySettings:(id)settings;
- (void)setLibraryPodIconEnabled:(BOOL)enabled;
- (void)setPresentationProgress:(double)progress animated:(BOOL)animated interactive:(BOOL)interactive withCompletion:(id)completion;
- (void)setPresentationProgress:(double)progress interactive:(BOOL)interactive withCompletion:(id)completion;
- (void)setRequestedSuggestedApplication:(id)application;
- (void)updateDisplayLayoutElementWindowLevel:(double)level;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillMoveToWindow:(id)window;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBFloatingDockRootViewController

- (SBFloatingDockRootViewController)initWithHomeScreenContextProvider:(id)provider applicationController:(id)controller recentsController:(id)recentsController recentsDataStore:(id)store appSuggestionManager:(id)manager layoutStateTransitionCoordinator:(id)coordinator iconViewProvider:(id)viewProvider analyticsClient:(id)self0
{
  providerCopy = provider;
  controllerCopy = controller;
  recentsControllerCopy = recentsController;
  storeCopy = store;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  viewProviderCopy = viewProvider;
  clientCopy = client;
  v27.receiver = self;
  v27.super_class = SBFloatingDockRootViewController;
  v20 = [(SBFloatingDockRootViewController *)&v27 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_homeScreenContextProvider, providerCopy);
    objc_storeStrong(&v21->_applicationController, controller);
    objc_storeStrong(&v21->_appSuggestionManager, manager);
    v21->_presentedProgress = 1.0;
    objc_storeStrong(&v21->_recentsController, recentsController);
    objc_storeStrong(&v21->_recentsDataStore, store);
    objc_storeWeak(&v21->_layoutStateTransitionCoordinator, coordinatorCopy);
    objc_storeWeak(&v21->_iconViewProvider, viewProviderCopy);
    objc_storeStrong(&v21->_analyticsClient, client);
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
  homeScreenContextProvider = [(SBFloatingDockRootViewController *)self homeScreenContextProvider];
  applicationController = [(SBFloatingDockRootViewController *)self applicationController];
  iconViewProvider = [(SBFloatingDockRootViewController *)self iconViewProvider];
  v5 = +[SBDefaults localDefaults];
  floatingDockDefaults = [v5 floatingDockDefaults];

  extendedFloatingDockCapacityIconCount = [MEMORY[0x277D66160] extendedFloatingDockCapacityIconCount];
  v8 = [SBFloatingDockSuggestionsModel alloc];
  recentsController = self->_recentsController;
  recentsDataStore = self->_recentsDataStore;
  v11 = +[SBDefaults localDefaults];
  recentDisplayItemsDefaults = [v11 recentDisplayItemsDefaults];
  v13 = [(SBFloatingDockSuggestionsModel *)v8 initWithMaximumNumberOfSuggestions:extendedFloatingDockCapacityIconCount homeScreenContextProvider:homeScreenContextProvider recentsController:recentsController recentsDataStore:recentsDataStore recentsDefaults:recentDisplayItemsDefaults floatingDockDefaults:floatingDockDefaults appSuggestionManager:self->_appSuggestionManager applicationController:applicationController];

  requestedSuggestedApplication = [(SBFloatingDockRootViewController *)self requestedSuggestedApplication];
  [(SBFloatingDockSuggestionsModel *)v13 setRequestedSuggestedApplication:requestedSuggestedApplication];

  [(SBFloatingDockRootViewController *)self setSuggestionsModel:v13];
  v15 = [SBFloatingDockSuggestionsViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
  v17 = [(SBFloatingDockSuggestionsViewController *)v15 initWithNumberOfRecents:extendedFloatingDockCapacityIconCount homeScreenContextProvider:homeScreenContextProvider applicationController:applicationController layoutStateTransitionCoordinator:WeakRetained suggestionsModel:v13 iconViewProvider:iconViewProvider];

  v18 = objc_alloc(MEMORY[0x277D660C0]);
  iconManager = [homeScreenContextProvider iconManager];
  v20 = [v18 initWithIconManager:iconManager iconViewProvider:iconViewProvider];

  [v20 setDelegate:self];
  [v20 setSuggestionsViewController:v17];
  legibilitySettings = [(SBFloatingDockRootViewController *)self legibilitySettings];
  [v20 setLegibilitySettings:legibilitySettings];

  [v20 setRequestedVerticalMargin:8.0];
  [(SBFloatingDockRootViewController *)self bs_addChildViewController:v20];
  [(SBFloatingDockRootViewController *)self setFloatingDockViewController:v20];
  -[SBFloatingDockRootViewController setLibraryPodIconEnabled:](self, "setLibraryPodIconEnabled:", [floatingDockDefaults appLibraryEnabled]);
  objc_initWeak(&location, self);
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"appLibraryEnabled"];
  v23 = MEMORY[0x277D85CD0];
  v24 = MEMORY[0x277D85CD0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __47__SBFloatingDockRootViewController_viewDidLoad__block_invoke;
  v29[3] = &unk_2783A9CE8;
  objc_copyWeak(&v31, &location);
  v25 = floatingDockDefaults;
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
  view = [(SBFloatingDockRootViewController *)self view];
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  view2 = [floatingDockViewController view];

  [view bounds];
  [view2 setBounds:?];
  [view center];
  [view2 setCenter:?];
  [(SBFloatingDockRootViewController *)self _layoutFloatingDockPresentationProgress:self->_presentedProgress];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v5 viewDidAppear:appear];
  if (!self->_hasInitializedDockVisibility)
  {
    self->_hasInitializedDockVisibility = 1;
    if ([(SBFloatingDockRootViewController *)self isFloatingDockFullyPresented])
    {
      floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [floatingDockViewController dockViewWillBecomeVisible];
      [floatingDockViewController dockViewDidBecomeVisible];
    }
  }
}

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  if (settings)
  {
    settings->var6 = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewController:self willTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
  }
}

- (void)viewWillMoveToWindow:(id)window
{
  v18 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  v16.receiver = self;
  v16.super_class = SBFloatingDockRootViewController;
  [(SBFloatingDockRootViewController *)&v16 viewWillMoveToWindow:windowCopy];
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
        view = [v10 view];
        [view removeGestureRecognizer:v10];

        [windowCopy addGestureRecognizer:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  isLibraryPodIconEnabled = [floatingDockViewController isLibraryPodIconEnabled];

  return isLibraryPodIconEnabled;
}

- (void)setLibraryPodIconEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController setLibraryPodIconEnabled:enabledCopy];
}

- (double)maximumFloatingDockHeight
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController maximumContentHeight];
  v4 = v3;

  return v4;
}

- (double)maximumDockContinuousCornerRadius
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController maximumDockContinuousCornerRadius];
  v4 = v3;

  return v4;
}

- (double)floatingDockHeight
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController contentHeight];
  v4 = v3;

  return v4;
}

- (double)floatingDockHeightForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController contentHeightForFrame:{x, y, width, height}];
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
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController preferredVerticalMargin];
  v4 = v3;

  return v4;
}

- (double)floatingDockViewTopMargin
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  view = [(SBFloatingDockRootViewController *)self view];
  [view bounds];
  [floatingDockViewController minimumVerticalMarginForFrame:?];
  v6 = v5;

  return v6;
}

- (double)translationFromFullyPresentedFrame
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController translationFromFullyPresentedFrame];
  v4 = v3;

  return v4;
}

- (_UILegibilitySettings)legibilitySettings
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  legibilitySettings = [floatingDockViewController legibilitySettings];
  legibilitySettings = legibilitySettings;
  if (!legibilitySettings)
  {
    legibilitySettings = self->_legibilitySettings;
  }

  v6 = legibilitySettings;

  return legibilitySettings;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    [floatingDockViewController setLegibilitySettings:settingsCopy];
  }
}

- (BOOL)isPresentingFolder
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  isPresentingFolder = [floatingDockViewController isPresentingFolder];

  return isPresentingFolder;
}

- (SBFolderController)presentedFolderController
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  presentedFolderController = [floatingDockViewController presentedFolderController];

  return presentedFolderController;
}

- (void)layoutUserControlledIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController layoutUserControlledIconListsWithAnimationType:type forceRelayout:relayoutCopy];
}

- (SBIconListView)userIconListView
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  userIconListView = [floatingDockViewController userIconListView];

  return userIconListView;
}

- (SBIconListView)suggestionsIconListView
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  recentIconListView = [floatingDockViewController recentIconListView];

  return recentIconListView;
}

- (SBIconListView)utilitiesIconListView
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  utilitiesIconListView = [floatingDockViewController utilitiesIconListView];

  return utilitiesIconListView;
}

- (void)setRequestedSuggestedApplication:(id)application
{
  applicationCopy = application;
  if (self->_requestedSuggestedApplication != applicationCopy)
  {
    v7 = applicationCopy;
    objc_storeStrong(&self->_requestedSuggestedApplication, application);
    suggestionsModel = [(SBFloatingDockRootViewController *)self suggestionsModel];
    [suggestionsModel setRequestedSuggestedApplication:v7];

    applicationCopy = v7;
  }
}

- (id)connectedRemoteContentBundleIdentifier
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  connectedRemoteContentBundleIdentifier = [floatingDockViewController connectedRemoteContentBundleIdentifier];

  return connectedRemoteContentBundleIdentifier;
}

- (CGRect)floatingDockScreenFrame
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController floatingDockScreenFrame];
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
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController floatingDockScreenPresentationFrame];
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

- (void)setPresentationProgress:(double)progress interactive:(BOOL)interactive withCompletion:(id)completion
{
  interactiveCopy = interactive;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SBFloatingDockRootViewController_setPresentationProgress_interactive_withCompletion___block_invoke;
  v10[3] = &unk_2783A9C70;
  v11 = completionCopy;
  v9 = completionCopy;
  [(SBFloatingDockRootViewController *)self _setPresentedProgress:1 animated:interactiveCopy interactive:v10 completion:progress];
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

- (void)setPresentationProgress:(double)progress animated:(BOOL)animated interactive:(BOOL)interactive withCompletion:(id)completion
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SBFloatingDockRootViewController_setPresentationProgress_animated_interactive_withCompletion___block_invoke;
  v12[3] = &unk_2783A9C70;
  v13 = completionCopy;
  v11 = completionCopy;
  [(SBFloatingDockRootViewController *)self _setPresentedProgress:animatedCopy animated:interactiveCopy interactive:v12 completion:progress];
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

- (void)presentFolderForIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  locationCopy = location;
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController presentFolderForIcon:iconCopy location:locationCopy animated:animatedCopy completion:completionCopy];
}

- (void)dismissPresentedFolderAnimated:(BOOL)animated withTransitionContext:(id)context completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBFloatingDockRootViewController *)self setCurrentTransitionContext:context];
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__SBFloatingDockRootViewController_dismissPresentedFolderAnimated_withTransitionContext_completion___block_invoke;
  v11[3] = &unk_2783A9C98;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [floatingDockViewController dismissPresentedFolderAnimated:animatedCopy completion:v11];
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

- (void)dismissPresentedLibraryAnimated:(BOOL)animated withTransitionContext:(id)context completion:(id)completion
{
  animatedCopy = animated;
  contextCopy = context;
  completionCopy = completion;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  if ([floatingDockViewController isPresentingLibrary])
  {
    [(SBFloatingDockRootViewController *)self setCurrentTransitionContext:contextCopy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__SBFloatingDockRootViewController_dismissPresentedLibraryAnimated_withTransitionContext_completion___block_invoke;
    v11[3] = &unk_2783A9C98;
    v11[4] = self;
    v12 = completionCopy;
    [floatingDockViewController dismissLibraryAnimated:animatedCopy completion:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
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

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [floatingDockViewController isDisplayingIcon:iconCopy];

  return v6;
}

- (void)prepareForTransitionToEnvironmentMode:(int64_t)mode fromDockVisible:(BOOL)visible toDockVisible:(BOOL)dockVisible
{
  dockVisibleCopy = dockVisible;
  visibleCopy = visible;
  [(SBFloatingDockRootViewController *)self setUseDismissHitTestPadding:mode == 3];
  view = [(SBFloatingDockRootViewController *)self view];
  [view setNeedsLayout];

  v12 = [MEMORY[0x277D66190] configurationWithEnvironmentMode:mode];
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v11 = (mode - 4) < 0xFFFFFFFFFFFFFFFELL;
  [floatingDockViewController setWantsFastIconReordering:v11];
  [floatingDockViewController setShouldIndicateImpossibleDrop:v11];
  [floatingDockViewController prepareForTransitionToStyleConfiguration:v12 fromDockVisible:visibleCopy toDockVisible:dockVisibleCopy];
}

- (void)cleanupAfterTransitionToEnvironmentMode:(int64_t)mode
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController cleanUpAfterUnderlyingBackgroundStyleTransition];
}

- (void)_setDisplayLayoutElementActive:(BOOL)active
{
  activeCopy = active;
  view = [(SBFloatingDockRootViewController *)self view];
  window = [view window];
  [window level];
  [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:activeCopy windowLevel:?];
}

- (void)_setDisplayLayoutElementActive:(BOOL)active windowLevel:(double)level
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (active)
  {
    if (displayLayoutAssertion)
    {
      return;
    }

    v7 = objc_alloc(MEMORY[0x277D66A50]);
    v15 = [v7 initWithIdentifier:*MEMORY[0x277D66F18]];
    [v15 setLevel:level];
    [v15 setLayoutRole:4];
    view = [(SBFloatingDockRootViewController *)self view];
    window = [view window];
    [(SBFloatingDockRootViewController *)self _calculateStandardDockFrame];
    [view convertRect:0 toView:?];
    [window _convertRectToSceneReferenceSpace:?];
    [v15 setReferenceFrame:?];
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
    v12 = [displayLayoutPublisher addElement:v15];
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

- (void)updateDisplayLayoutElementWindowLevel:(double)level
{
  displayLayoutAssertion = [(SBFloatingDockRootViewController *)self displayLayoutAssertion];

  if (displayLayoutAssertion)
  {
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
    v8 = [displayLayoutPublisher transitionAssertionWithReason:0];

    [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:0 windowLevel:level];
    [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:1 windowLevel:level];
    [v8 invalidate];
  }
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  locationCopy = location;
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [floatingDockViewController iconViewForIcon:iconCopy location:locationCopy];

  return v9;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  locationsCopy = locations;
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [floatingDockViewController firstIconViewForIcon:iconCopy inLocations:locationsCopy];

  return v9;
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [floatingDockViewController firstIconViewForIcon:iconCopy];

  return v6;
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  locationsCopy = locations;
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [floatingDockViewController firstIconViewForIcon:iconCopy excludingLocations:locationsCopy];

  return v9;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  locationCopy = location;
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [floatingDockViewController isDisplayingIcon:iconCopy inLocation:locationCopy];

  return v9;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  v19 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(locationsCopy);
        }

        if ([(SBFloatingDockRootViewController *)self isDisplayingIcon:iconCopy inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [floatingDockViewController isDisplayingIconView:viewCopy];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  locationCopy = location;
  viewCopy = view;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v9 = [floatingDockViewController isDisplayingIconView:viewCopy inLocation:locationCopy];

  return v9;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController enumerateDisplayedIconViewsUsingBlock:blockCopy];
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  blockCopy = block;
  iconCopy = icon;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  [floatingDockViewController enumerateDisplayedIconViewsForIcon:iconCopy usingBlock:blockCopy];
}

- (BOOL)isPresentingIconLocation:(id)location
{
  locationCopy = location;
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  v6 = [floatingDockViewController isPresentingIconLocation:locationCopy];

  return v6;
}

- (NSSet)presentedIconLocations
{
  floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
  presentedIconLocations = [floatingDockViewController presentedIconLocations];

  return presentedIconLocations;
}

- (void)_layoutFloatingDockPresentationProgress:(double)progress
{
  if ([(SBFloatingDockRootViewController *)self useDismissHitTestPadding])
  {
    v5 = +[SBMedusaDomain rootSettings];
    [v5 dismissHitTestTopPadding];
  }

  UIEdgeInsetsMakeWithEdges();
  [(SBFloatingDockViewController *)self->_floatingDockViewController _setPaddingEdgeInsets:?];
  [(SBFloatingDockViewController *)self->_floatingDockViewController setDockOffscreenProgress:1.0 - progress];
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  [(SBFloatingDockRootViewController *)self floatingDockScreenFrame];
  [delegate floatingDockRootViewController:self didChangeToFrame:?];
}

- (void)_setPresentedProgress:(double)progress animated:(BOOL)animated interactive:(BOOL)interactive completion:(id)completion
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  completionCopy = completion;
  if (BSFloatEqualToFloat())
  {
    goto LABEL_32;
  }

  v11 = BSFloatGreaterThanFloat();
  isFloatingDockPresented = [(SBFloatingDockRootViewController *)self isFloatingDockPresented];
  v13 = isFloatingDockPresented;
  if (v11)
  {
    if (!isFloatingDockPresented)
    {
      [(SBFloatingDockRootViewController *)self loadViewIfNeeded];
      floatingDockViewController = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [floatingDockViewController dockViewWillBecomeVisible];

      [(SBFloatingDockRootViewController *)self _beginPresentationTransition];
      [(SBFloatingDockRootViewController *)self _setDisplayLayoutElementActive:1];
    }

    v15 = !v13;
    if (!BSFloatGreaterThanFloat())
    {
      goto LABEL_10;
    }

    floatingDockViewController2 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    _sbWindowScene = [floatingDockViewController2 _sbWindowScene];
    switcherController = [_sbWindowScene switcherController];

    floatingDockViewController3 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    LODWORD(_sbWindowScene) = [floatingDockViewController3 isPresentingFolder];

    if (_sbWindowScene)
    {
      floatingDockViewController4 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [floatingDockViewController4 dismissPresentedFolderAnimated:animatedCopy completion:0];
    }

    else if (interactiveCopy && (-[SBFloatingDockRootViewController floatingDockViewController](self, "floatingDockViewController"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 isPresentingLibraryInForeground], v34, v35))
    {
      floatingDockViewController4 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [floatingDockViewController4 dismissLibraryAnimated:animatedCopy completion:0];
    }

    else
    {
      if ([switcherController unlockedEnvironmentMode] == 3)
      {
        goto LABEL_9;
      }

      floatingDockViewController4 = [(SBFloatingDockRootViewController *)self homeScreenContextProvider];
      iconManager = [floatingDockViewController4 iconManager];
      hasOpenFolder = [iconManager hasOpenFolder];

      if (hasOpenFolder)
      {
        iconManager2 = [floatingDockViewController4 iconManager];
        [iconManager2 popExpandedIconAnimated:animatedCopy completionHandler:0];
      }
    }

LABEL_9:
LABEL_10:
    v21 = 0;
    goto LABEL_14;
  }

  if (isFloatingDockPresented)
  {
    floatingDockViewController5 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
    [floatingDockViewController5 dockViewWillResignVisible];

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
  self->_presentedProgress = progress;
  v23 = fmin(fmax(progress, 0.0), 1.0);
  viewIfLoaded = [(SBFloatingDockRootViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    goto LABEL_19;
  }

  delegate = [(SBFloatingDockRootViewController *)self delegate];
  [(SBFloatingDockRootViewController *)self floatingDockHeight];
  v27 = v26 * progress;
  if (!animatedCopy)
  {
    [delegate floatingDockRootViewController:self willChangeToHeight:interactiveCopy interactive:v26 * progress];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__SBFloatingDockRootViewController__setPresentedProgress_animated_interactive_completion___block_invoke_3;
    v39[3] = &unk_2783A8BC8;
    v39[4] = self;
    *&v39[5] = progress;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v39];

LABEL_19:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    if (v15)
    {
      floatingDockViewController6 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [floatingDockViewController6 dockViewDidBecomeVisible];
    }

    else
    {
      if (!v21 || !BSFloatIsZero())
      {
        goto LABEL_32;
      }

      floatingDockViewController6 = [(SBFloatingDockRootViewController *)self floatingDockViewController];
      [floatingDockViewController6 dockViewDidResignVisible];
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
  if (interactiveCopy)
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
  v45 = delegate;
  selfCopy = self;
  v49 = interactiveCopy;
  v47 = v27;
  progressCopy = progress;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __90__SBFloatingDockRootViewController__setPresentedProgress_animated_interactive_completion___block_invoke_2;
  v40[3] = &unk_2783BC2B8;
  v40[4] = self;
  progressCopy2 = progress;
  v41 = completionCopy;
  v43 = v23;
  v33 = delegate;
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
      view = [(SBFloatingDockRootViewController *)self view];
      window = [view window];

      v4 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [window disableInterfaceOrientationChangesForReason:@"floating-dock"];
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
      view = [(SBFloatingDockRootViewController *)self view];
      window = [view window];

      v5 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [window enableInterfaceOrientationChangesForReason:@"floating-dock"];
      }
    }

    delegate = [(SBFloatingDockRootViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate floatingDockRootViewControllerDidEndPresentationTransition:self];
    }
  }
}

- (CGRect)_calculateStandardDockFrame
{
  view = [(SBFloatingDockRootViewController *)self view];
  [view bounds];
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

- (void)_handlePanGestureRecognizer:(id)recognizer
{
  v31[1] = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  if ((*&self->_delegateRespondsTo & 1) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v6 = [WeakRetained floatingDockRootViewControllerShouldHandlePanGestureRecognizer:self], WeakRetained, v6))
  {
    view = [(SBFloatingDockRootViewController *)self view];
    [recognizerCopy translationInView:view];
    [recognizerCopy velocityInView:view];
    v9 = v8;
    [(SBFloatingDockRootViewController *)self _floatingDockViewTranslation];
    v22 = *MEMORY[0x277CF0B28];
    v23 = *(MEMORY[0x277CF0B28] + 16);
    BSUIConstrainValueToIntervalWithRubberBand();
    v11 = v10;
    v12 = [(SBFloatingDockRootViewController *)self delegate:v22];
    state = [recognizerCopy state];
    if (state <= 3)
    {
      switch(state)
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

    if ((state - 4) < 2)
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && !self->_focusNavigationGestureRecognizers)
  {
    WeakRetained = objc_loadWeakRetained(&self->_homeScreenContextProvider);
    navigationDelegate = [WeakRetained navigationDelegate];

    v7 = [objc_alloc(MEMORY[0x277D66138]) initWithTarget:0 action:0];
    [v7 setName:@"FloatingDock-GameController-BackButton"];
    [v7 setDelegate:self];
    [v7 setNavigationDelegate:navigationDelegate];
    v8 = [objc_alloc(MEMORY[0x277D66218]) initWithTarget:0 action:0];
    [v8 setName:@"FloatingDock-GameController-LeftShoulderButton"];
    [v8 setDelegate:self];
    [v8 setNavigationDelegate:navigationDelegate];
    v9 = [objc_alloc(MEMORY[0x277D66290]) initWithTarget:0 action:0];
    [v9 setName:@"FloatingDock-GameController-RightShoulderButton"];
    [v9 setDelegate:self];
    [v9 setNavigationDelegate:navigationDelegate];
    v12[0] = v7;
    v12[1] = v8;
    v12[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    focusNavigationGestureRecognizers = self->_focusNavigationGestureRecognizers;
    self->_focusNavigationGestureRecognizers = v10;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if ((*&self->_delegateRespondsTo & 1) == 0)
  {
    return 1;
  }

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained floatingDockRootViewControllerShouldHandlePanGestureRecognizer:selfCopy];

  return selfCopy;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)floatingDockViewController:(id)controller wantsToBePresented:(BOOL)presented
{
  presentedCopy = presented;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  [delegate floatingDockRootViewController:self floatingDockWantsToBePresented:presentedCopy];
}

- (void)floatingDockViewController:(id)controller didChangeContentHeight:(double)height
{
  if ([(SBFloatingDockRootViewController *)self isFloatingDockPresented])
  {
    delegate = [(SBFloatingDockRootViewController *)self delegate];
    [delegate floatingDockRootViewController:self willChangeToHeight:0 interactive:height];
  }
}

- (void)floatingDockViewController:(id)controller didChangeContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  [delegate floatingDockRootViewController:self didChangeToFrame:{x, y, width, height}];
}

- (void)floatingDockViewController:(id)controller willPerformTransitionWithFolder:(id)folder presenting:(BOOL)presenting withTransitionCoordinator:(id)coordinator
{
  presentingCopy = presenting;
  folderCopy = folder;
  coordinatorCopy = coordinator;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewController:self willPerformTransitionWithFolder:folderCopy presenting:presentingCopy withTransitionCoordinator:coordinatorCopy];
  }
}

- (void)floatingDockViewController:(id)controller willUseAnimator:(id)animator forTransitioningWithFolder:(id)folder presenting:(BOOL)presenting
{
  animatorCopy = animator;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = animatorCopy;
  if (isKindOfClass)
  {
    iconAnimator = [animatorCopy iconAnimator];
    v10 = objc_opt_self();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = iconAnimator;
      v13 = +[SBMedusaDomain rootSettings];
      dockWithPresentedFolderAnimationSettings = [v13 dockWithPresentedFolderAnimationSettings];
      [v12 setDockAnimationSettings:dockWithPresentedFolderAnimationSettings];
    }

    v8 = animatorCopy;
  }
}

- (double)minimumHomeScreenScaleForFloatingDockViewController:(id)controller
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate minimumHomeScreenScaleForFloatingDockRootViewController:self];
    v5 = v6;
  }

  return v5;
}

- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningAppToAppContent:(id)content
{
  currentTransitionContext = [(SBFloatingDockRootViewController *)self currentTransitionContext];
  previousLayoutState = [currentTransitionContext previousLayoutState];
  unlockedEnvironmentMode = [previousLayoutState unlockedEnvironmentMode];
  layoutState = [currentTransitionContext layoutState];
  unlockedEnvironmentMode2 = [layoutState unlockedEnvironmentMode];
  v8 = (unlockedEnvironmentMode2 == 3) & ~[layoutState isEqual:previousLayoutState];
  if (unlockedEnvironmentMode == 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isFloatingDockViewControllerPresentedOverApplication:(id)application
{
  _sbWindowScene = [application _sbWindowScene];
  switcherController = [_sbWindowScene switcherController];

  LOBYTE(_sbWindowScene) = [switcherController unlockedEnvironmentMode] == 3;
  return _sbWindowScene;
}

- (BOOL)isFloatingDockViewControllerPresentedOverTransitioningSwitcherContent:(id)content
{
  currentTransitionContext = [(SBFloatingDockRootViewController *)self currentTransitionContext];
  previousLayoutState = [currentTransitionContext previousLayoutState];
  unlockedEnvironmentMode = [previousLayoutState unlockedEnvironmentMode];
  layoutState = [currentTransitionContext layoutState];
  unlockedEnvironmentMode2 = [layoutState unlockedEnvironmentMode];
  v8 = unlockedEnvironmentMode == 2 && unlockedEnvironmentMode2 == 2 || unlockedEnvironmentMode == 2 && unlockedEnvironmentMode2 == 3;

  return v8;
}

- (BOOL)isFloatingDockViewControllerPresentedOnExternalDisplay:(id)display
{
  _sbWindowScene = [display _sbWindowScene];
  delegate = [_sbWindowScene delegate];
  v5 = objc_opt_class();
  v6 = delegate;
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

- (id)libraryContainerViewControllerForFloatingDockViewController:(id)controller
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate libraryContainerViewControllerForFloatingDockRootViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDefaultLibraryContainerViewControllerForegroundForFloatingDockViewController:(id)controller
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate isDefaultLibraryContainerViewControllerForegroundForFloatingDockRootViewController:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)foregroundLibraryContainerViewControllerForFloatingDockViewController:(id)controller
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate foregroundLibraryContainerViewControllerForFloatingDockRootViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)floatingDockViewController:(id)controller acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:(id)reason
{
  reasonCopy = reason;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate floatingDockRootViewController:self acquireOrderFloatingDockContainerBeforeLibraryAssertionForReason:reasonCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)floatingDockViewWillBecomeVisible:(id)visible
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewWillBecomeVisible:self];
  }
}

- (void)floatingDockViewDidBecomeVisible:(id)visible
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewDidBecomeVisible:self];
  }
}

- (void)floatingDockViewWillResignVisible:(id)visible
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewWillResignVisible:self];
  }
}

- (void)floatingDockViewDidResignVisible:(id)visible
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewDidResignVisible:self];
  }
}

- (void)floatingDockViewController:(id)controller willStartBouncingIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewController:self finishDownloadAnimationWillBeginForIconView:viewCopy];
  }
}

- (void)floatingDockViewController:(id)controller didFinishBouncingIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate floatingDockRootViewController:self finishDownloadAnimationDidEndForIconView:viewCopy];
  }
}

- (BOOL)floatingDockViewController:(id)controller canHandleDataDropSession:(id)session inIconListView:(id)view
{
  sessionCopy = session;
  viewCopy = view;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate floatingDockRootViewController:self canHandleDataDropSession:sessionCopy inIconListView:viewCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)floatingDockViewController:(id)controller dataDropSessionDidUpdate:(id)update inIconListView:(id)view
{
  updateCopy = update;
  viewCopy = view;
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate floatingDockRootViewController:self dataDropSessionDidUpdate:updateCopy inIconListView:viewCopy];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];
  }

  v11 = v10;

  return v11;
}

- (void)reconnectHostingClient:(id)client
{
  delegate = [(SBFloatingDockRootViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate reconnectHostingClient:self];
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