@interface SBModalLibraryController
- (BOOL)isPresentingLibrary;
- (BOOL)isPresentingLibraryInForeground;
- (BOOL)modalLibraryPresenterShouldAllowSwipeToDismissGesture:(id)gesture;
- (SBFloatingDockController)floatingDockController;
- (SBModalLibraryController)initWithIconManager:(id)manager libraryViewController:(id)controller floatingDockController:(id)dockController windowScene:(id)scene;
- (SBWindowScene)windowScene;
- (id)_currentLayoutState;
- (void)_configureFloatingDockBehaviorAssertionForPresented:(BOOL)presented;
- (void)_didCompleteTransitionWithLibraryToPresented:(BOOL)presented;
- (void)_evaluateKeyboardWindowLevelAssertion;
- (void)_evaluateResignActiveAssertion;
- (void)_evaluateWindowStatus;
- (void)_prepareLibraryViewControllerForDismissal:(id)dismissal;
- (void)_setLibraryDisplayLayoutElementActive:(BOOL)active;
- (void)_willPerformTransitionWithLibraryToPresented:(BOOL)presented;
- (void)dealloc;
- (void)dismissLibraryAnimated:(BOOL)animated completion:(id)completion;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)libraryViewController:(id)controller didDismissSearchController:(id)searchController;
- (void)libraryViewController:(id)controller willPresentSearchController:(id)searchController;
- (void)modalLibraryPresenter:(id)presenter didDismissLibrary:(id)library;
- (void)modalLibraryPresenter:(id)presenter didPassCriticalDismissalPoint:(id)point;
- (void)modalLibraryPresenter:(id)presenter didPresentLibrary:(id)library;
- (void)modalLibraryPresenter:(id)presenter willDismissLibrary:(id)library;
- (void)modalLibraryPresenter:(id)presenter willPresentLibrary:(id)library;
- (void)presentLibraryAnimated:(BOOL)animated completion:(id)completion;
- (void)presentLibraryCategoryPodForCategoryIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)toggleLibraryPresentedAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation SBModalLibraryController

- (SBModalLibraryController)initWithIconManager:(id)manager libraryViewController:(id)controller floatingDockController:(id)dockController windowScene:(id)scene
{
  managerCopy = manager;
  controllerCopy = controller;
  dockControllerCopy = dockController;
  sceneCopy = scene;
  v26.receiver = self;
  v26.super_class = SBModalLibraryController;
  v15 = [(SBModalLibraryController *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_iconManager, manager);
    objc_storeStrong(&v16->_libraryViewController, controller);
    [controllerCopy addObserver:v16];
    objc_storeWeak(&v16->_floatingDockController, dockControllerCopy);
    objc_storeWeak(&v16->_windowScene, sceneCopy);
    layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator addObserver:v16];

    floatingDockViewController = [dockControllerCopy floatingDockViewController];
    v19 = [floatingDockViewController configureForPresentingLibraryViewController:controllerCopy];
    libraryPresenter = v16->_libraryPresenter;
    v16->_libraryPresenter = v19;

    [(SBHModalLibraryPresenter *)v16->_libraryPresenter setPresentationDelegate:v16];
    [(SBHModalLibraryPresenter *)v16->_libraryPresenter addObserver:v16];
    v21 = +[SBSceneManagerCoordinator sharedInstance];
    sceneDeactivationManager = [v21 sceneDeactivationManager];
    v23 = [sceneDeactivationManager newAssertionWithReason:18];
    resignActiveAssertion = v16->_resignActiveAssertion;
    v16->_resignActiveAssertion = v23;
  }

  return v16;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
}

- (void)invalidate
{
  if (![(SBModalLibraryController *)self isInvalidated])
  {
    [(SBModalLibraryController *)self setInvalidated:1];
    libraryViewController = [(SBModalLibraryController *)self libraryViewController];
    [libraryViewController invalidate];

    libraryViewController2 = [(SBModalLibraryController *)self libraryViewController];
    [libraryViewController2 removeObserver:self];

    windowScene = [(SBModalLibraryController *)self windowScene];
    layoutStateTransitionCoordinator = [windowScene layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator removeObserver:self];

    libraryDisplayLayoutElementAssertion = [(SBModalLibraryController *)self libraryDisplayLayoutElementAssertion];
    [libraryDisplayLayoutElementAssertion invalidate];

    floatingDockBehaviorAssertion = [(SBModalLibraryController *)self floatingDockBehaviorAssertion];
    [floatingDockBehaviorAssertion invalidate];

    resignActiveAssertion = [(SBModalLibraryController *)self resignActiveAssertion];
    [resignActiveAssertion relinquish];

    libraryWindowKeyboardFocusAssertion = [(SBModalLibraryController *)self libraryWindowKeyboardFocusAssertion];
    [libraryWindowKeyboardFocusAssertion invalidate];
  }
}

- (BOOL)isPresentingLibraryInForeground
{
  libraryPresenter = [(SBModalLibraryController *)self libraryPresenter];
  isPresentingLibrary = [libraryPresenter isPresentingLibrary];
  isLibraryContainedInForeground = [libraryPresenter isLibraryContainedInForeground];

  return isPresentingLibrary & isLibraryContainedInForeground;
}

- (BOOL)isPresentingLibrary
{
  libraryPresenter = [(SBModalLibraryController *)self libraryPresenter];
  isPresentingLibrary = [libraryPresenter isPresentingLibrary];

  return isPresentingLibrary;
}

- (void)presentLibraryAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  libraryPresenter = [(SBModalLibraryController *)self libraryPresenter];
  [libraryPresenter presentLibraryWithAnimation:animatedCopy completion:completionCopy];
}

- (void)dismissLibraryAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  libraryPresenter = [(SBModalLibraryController *)self libraryPresenter];
  [libraryPresenter dismissLibraryWithAnimation:animatedCopy completion:completionCopy];
}

- (void)toggleLibraryPresentedAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  libraryPresenter = [(SBModalLibraryController *)self libraryPresenter];
  [libraryPresenter toggleLibraryPresentedInForegroundWithAnimation:animatedCopy completion:completionCopy];
}

- (void)presentLibraryCategoryPodForCategoryIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__SBModalLibraryController_presentLibraryCategoryPodForCategoryIdentifier_animated_completion___block_invoke;
  v12[3] = &unk_2783AAC18;
  v13 = identifierCopy;
  selfCopy = self;
  v16 = animatedCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  [(SBModalLibraryController *)self presentLibraryAnimated:animatedCopy completion:v12];
}

void __95__SBModalLibraryController_presentLibraryCategoryPodForCategoryIdentifier_animated_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      v5 = [*(a1 + 40) libraryViewController];
      [v5 presentPodWithCategoryIdentifier:*(a1 + 32) animated:*(a1 + 56) completion:*(a1 + 48)];
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = *(v3 + 16);

        v4();
      }
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion:coordinator];
  [(SBModalLibraryController *)self _evaluateResignActiveAssertion];

  [(SBModalLibraryController *)self _evaluateWindowStatus];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  toLayoutState = [context toLayoutState];
  if ([toLayoutState unlockedEnvironmentMode] == 1 && -[SBModalLibraryController isPresentingLibrary](self, "isPresentingLibrary"))
  {
    libraryPresenter = [(SBModalLibraryController *)self libraryPresenter];
    [libraryPresenter setOverrideContainerViewController:0];
  }

  [(SBModalLibraryController *)self _evaluateWindowStatus];
}

- (void)libraryViewController:(id)controller willPresentSearchController:(id)searchController
{
  [(SBModalLibraryController *)self setPresentingOrTransitioningSearch:1, searchController];

  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
}

- (void)libraryViewController:(id)controller didDismissSearchController:(id)searchController
{
  [(SBModalLibraryController *)self setPresentingOrTransitioningSearch:0, searchController];

  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
}

- (BOOL)modalLibraryPresenterShouldAllowSwipeToDismissGesture:(id)gesture
{
  iconManager = [(SBModalLibraryController *)self iconManager];
  libraryViewController = [(SBModalLibraryController *)self libraryViewController];
  v6 = [iconManager _shouldLibraryOverlayAllowSwipeToDismissGesture:libraryViewController];

  return v6;
}

- (void)modalLibraryPresenter:(id)presenter willPresentLibrary:(id)library
{
  libraryCopy = library;
  iconManager = [(SBModalLibraryController *)self iconManager];
  _sbWindowScene = [libraryCopy _sbWindowScene];

  LODWORD(libraryCopy) = [_sbWindowScene isMainDisplayWindowScene];
  if (libraryCopy)
  {
    [iconManager setMainDisplayLibraryViewVisible:1 libraryViewTransitioning:1];
  }

  [(SBModalLibraryController *)self _willPerformTransitionWithLibraryToPresented:1];
}

- (void)modalLibraryPresenter:(id)presenter didPresentLibrary:(id)library
{
  libraryCopy = library;
  [(SBModalLibraryController *)self _didCompleteTransitionWithLibraryToPresented:1];
  _sbWindowScene = [libraryCopy _sbWindowScene];

  LODWORD(libraryCopy) = [_sbWindowScene isMainDisplayWindowScene];
  if (libraryCopy)
  {
    iconManager = [(SBModalLibraryController *)self iconManager];
    [iconManager setMainDisplayLibraryViewVisibilityTransitioning:0];
    rootFolderController = [iconManager rootFolderController];
    v8 = [MEMORY[0x277D75518] focusSystemForEnvironment:rootFolderController];
    [v8 _focusEnvironmentWillDisappear:rootFolderController];
  }
}

- (void)modalLibraryPresenter:(id)presenter willDismissLibrary:(id)library
{
  libraryCopy = library;
  _sbWindowScene = [libraryCopy _sbWindowScene];
  isMainDisplayWindowScene = [_sbWindowScene isMainDisplayWindowScene];

  if (isMainDisplayWindowScene)
  {
    iconManager = [(SBModalLibraryController *)self iconManager];
    [iconManager setMainDisplayLibraryViewVisibilityTransitioning:1];
  }

  [(SBModalLibraryController *)self _prepareLibraryViewControllerForDismissal:libraryCopy];
  [(SBModalLibraryController *)self _willPerformTransitionWithLibraryToPresented:0];
}

- (void)modalLibraryPresenter:(id)presenter didPassCriticalDismissalPoint:(id)point
{
  pointCopy = point;
  iconManager = [(SBModalLibraryController *)self iconManager];
  [iconManager _scrollToLastIconPageIfNecessaryForLibraryOverlayDismissal:pointCopy];
}

- (void)modalLibraryPresenter:(id)presenter didDismissLibrary:(id)library
{
  _sbWindowScene = [library _sbWindowScene];
  isMainDisplayWindowScene = [_sbWindowScene isMainDisplayWindowScene];

  if (isMainDisplayWindowScene)
  {
    iconManager = [(SBModalLibraryController *)self iconManager];
    [iconManager setMainDisplayLibraryViewVisible:0 libraryViewTransitioning:0];
  }

  [(SBModalLibraryController *)self _didCompleteTransitionWithLibraryToPresented:0];
}

- (void)_willPerformTransitionWithLibraryToPresented:(BOOL)presented
{
  presentedCopy = presented;
  floatingDockController = [(SBModalLibraryController *)self floatingDockController];
  floatingDockViewController = [floatingDockController floatingDockViewController];
  [floatingDockViewController setLibraryPodIconVisible:presentedCopy ^ 1];

  [(SBModalLibraryController *)self _configureFloatingDockBehaviorAssertionForPresented:presentedCopy];
  if (presentedCopy)
  {
    [(SBModalLibraryController *)self _evaluateResignActiveAssertion];
    [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
    libraryViewController = [(SBModalLibraryController *)self libraryViewController];
    [libraryViewController enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_316];
  }

  [(SBModalLibraryController *)self _evaluateWindowStatus];
}

- (void)_didCompleteTransitionWithLibraryToPresented:(BOOL)presented
{
  presentedCopy = presented;
  [(SBModalLibraryController *)self _setLibraryDisplayLayoutElementActive:?];
  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
  [(SBModalLibraryController *)self _evaluateResignActiveAssertion];
  if (presentedCopy)
  {
    _currentLayoutState = [(SBModalLibraryController *)self _currentLayoutState];
    unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

    if (unlockedEnvironmentMode == 3)
    {
      v9 = +[SBWorkspace mainWorkspace];
      v7 = [(SBModalLibraryController *)self coordinatorRequestedIdleTimerBehavior:v9];
      v8 = [v9 idleTimerProvider:self didProposeBehavior:v7 forReason:@"SBModalLibraryPresentedReason"];
    }
  }
}

- (void)_setLibraryDisplayLayoutElementActive:(BOOL)active
{
  activeCopy = active;
  libraryDisplayLayoutElementAssertion = [(SBModalLibraryController *)self libraryDisplayLayoutElementAssertion];
  if (activeCopy && !libraryDisplayLayoutElementAssertion)
  {
    v19 = 0;
    v6 = objc_alloc(MEMORY[0x277D66A50]);
    v7 = [v6 initWithIdentifier:*MEMORY[0x277D66F00]];
    [v7 setFillsDisplayBounds:1];
    [v7 setLayoutRole:3];
    libraryViewController = [(SBModalLibraryController *)self libraryViewController];
    view = [libraryViewController view];
    window = [view window];
    [window level];
    v12 = v11;
    v13 = v11;

    if (*MEMORY[0x277D772B0] + -2.0 >= v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    [v7 setLevel:v14];
    libraryViewController2 = [(SBModalLibraryController *)self libraryViewController];
    _sbWindowScene = [libraryViewController2 _sbWindowScene];
    displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
    v18 = [displayLayoutPublisher addElement:v7];

    [(SBModalLibraryController *)self setLibraryDisplayLayoutElementAssertion:v18];
    goto LABEL_10;
  }

  if (!activeCopy && libraryDisplayLayoutElementAssertion)
  {
    v19 = libraryDisplayLayoutElementAssertion;
    [libraryDisplayLayoutElementAssertion invalidate];
    [(SBModalLibraryController *)self setLibraryDisplayLayoutElementAssertion:0];
LABEL_10:
    libraryDisplayLayoutElementAssertion = v19;
  }
}

- (void)_prepareLibraryViewControllerForDismissal:(id)dismissal
{
  [dismissal enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_23_1];
  iconManager = [(SBModalLibraryController *)self iconManager];
  [iconManager dismissIconShareSheets];
}

void __70__SBModalLibraryController__prepareLibraryViewControllerForDismissal___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  if ([v4 isShowingContextMenu])
  {
    [v4 dismissContextMenuWithCompletion:0];
    *a3 = 1;
  }
}

- (void)_configureFloatingDockBehaviorAssertionForPresented:(BOOL)presented
{
  presentedCopy = presented;
  floatingDockBehaviorAssertion = [(SBModalLibraryController *)self floatingDockBehaviorAssertion];
  if (presentedCopy && !floatingDockBehaviorAssertion)
  {
    v9 = 0;
    v6 = [SBFloatingDockBehaviorAssertion alloc];
    floatingDockController = [(SBModalLibraryController *)self floatingDockController];
    v8 = [(SBFloatingDockBehaviorAssertion *)v6 initWithFloatingDockController:floatingDockController visibleProgress:1 animated:1 gesturePossible:9 atLevel:@"SBModalLibraryPresentedReason" reason:0 withCompletion:0.0];

    [(SBModalLibraryController *)self setFloatingDockBehaviorAssertion:v8];
LABEL_7:
    floatingDockBehaviorAssertion = v9;
    goto LABEL_8;
  }

  if (!presentedCopy && floatingDockBehaviorAssertion)
  {
    v9 = floatingDockBehaviorAssertion;
    [floatingDockBehaviorAssertion invalidate];
    [(SBModalLibraryController *)self setFloatingDockBehaviorAssertion:0];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_evaluateKeyboardWindowLevelAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  isMainDisplayWindowScene = [WeakRetained isMainDisplayWindowScene];

  if (!isMainDisplayWindowScene)
  {
    return;
  }

  _currentLayoutState = [(SBModalLibraryController *)self _currentLayoutState];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

  v7 = (unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL) == 2 && [(SBModalLibraryController *)self isPresentingLibraryInForeground]&& [(SBModalLibraryController *)self isPresentingOrTransitioningSearch];
  keyboardWindowLevelAssertion = [(SBModalLibraryController *)self keyboardWindowLevelAssertion];
  if (!v7 || keyboardWindowLevelAssertion)
  {
    if (keyboardWindowLevelAssertion)
    {
      v17 = v7;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_16;
    }

    v18 = keyboardWindowLevelAssertion;
    [keyboardWindowLevelAssertion invalidate];
    [(SBModalLibraryController *)self setKeyboardWindowLevelAssertion:0];
  }

  else
  {
    v18 = 0;
    libraryViewController = [(SBModalLibraryController *)self libraryViewController];
    _sbWindowScene = [libraryViewController _sbWindowScene];
    medusaHostedKeyboardWindowController = [_sbWindowScene medusaHostedKeyboardWindowController];
    libraryViewController2 = [(SBModalLibraryController *)self libraryViewController];
    view = [libraryViewController2 view];
    window = [view window];
    [window windowLevel];
    v16 = [medusaHostedKeyboardWindowController newMedusaHostedKeyboardWindowLevelAssertionWithPriority:1 windowLevel:v15 + 1.0];

    [(SBModalLibraryController *)self setKeyboardWindowLevelAssertion:v16];
  }

  keyboardWindowLevelAssertion = v18;
LABEL_16:
}

- (void)_evaluateResignActiveAssertion
{
  _currentLayoutState = [(SBModalLibraryController *)self _currentLayoutState];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

  isPresentingLibraryInForeground = [(SBModalLibraryController *)self isPresentingLibraryInForeground];
  v6 = unlockedEnvironmentMode == 3 && isPresentingLibraryInForeground;
  resignActiveAssertion = [(SBModalLibraryController *)self resignActiveAssertion];
  isAcquired = [resignActiveAssertion isAcquired];

  if (!v6 || (isAcquired & 1) != 0)
  {
    if (v6 || (isAcquired & 1) == 0)
    {
      return;
    }

    v13 = SBLogAppLibrary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Modal Library Controller] Updating resign active assertion to: Relinquished", v14, 2u);
    }

    resignActiveAssertion2 = [(SBModalLibraryController *)self resignActiveAssertion];
    [resignActiveAssertion2 relinquish];
  }

  else
  {
    v9 = SBLogAppLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Modal Library Controller] Updating resign active assertion to: Acquired", buf, 2u);
    }

    resignActiveAssertion2 = [(SBModalLibraryController *)self resignActiveAssertion];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
    [resignActiveAssertion2 sb_acquireForDisplayIdentity:_fbsDisplayIdentity];
  }
}

- (void)_evaluateWindowStatus
{
  if ([(SBModalLibraryController *)self isPresentingLibraryInForeground])
  {
    libraryViewController = [(SBModalLibraryController *)self libraryViewController];
    viewIfLoaded = [libraryViewController viewIfLoaded];
    window = [viewIfLoaded window];

    if (!self->_libraryWindowKeyboardFocusAssertion)
    {
      v5 = +[SBWorkspace mainWorkspace];
      keyboardFocusController = [v5 keyboardFocusController];
      v7 = +[SBKeyboardFocusLockReason modalAppLibrary];
      v8 = [keyboardFocusController focusLockSpringBoardWindow:window forReason:v7];
      libraryWindowKeyboardFocusAssertion = self->_libraryWindowKeyboardFocusAssertion;
      self->_libraryWindowKeyboardFocusAssertion = v8;
    }

    if (([window isKeyWindow] & 1) == 0)
    {
      [window makeKeyWindow];
    }

    v10 = window;
  }

  else
  {
    v11 = self->_libraryWindowKeyboardFocusAssertion;
    if (!v11)
    {
      return;
    }

    [(BSInvalidatable *)v11 invalidate];
    v10 = self->_libraryWindowKeyboardFocusAssertion;
    self->_libraryWindowKeyboardFocusAssertion = 0;
  }
}

- (id)_currentLayoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  return layoutState;
}

- (SBFloatingDockController)floatingDockController
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingDockController);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end