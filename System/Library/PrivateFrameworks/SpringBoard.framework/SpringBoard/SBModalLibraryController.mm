@interface SBModalLibraryController
- (BOOL)isPresentingLibrary;
- (BOOL)isPresentingLibraryInForeground;
- (BOOL)modalLibraryPresenterShouldAllowSwipeToDismissGesture:(id)a3;
- (SBFloatingDockController)floatingDockController;
- (SBModalLibraryController)initWithIconManager:(id)a3 libraryViewController:(id)a4 floatingDockController:(id)a5 windowScene:(id)a6;
- (SBWindowScene)windowScene;
- (id)_currentLayoutState;
- (void)_configureFloatingDockBehaviorAssertionForPresented:(BOOL)a3;
- (void)_didCompleteTransitionWithLibraryToPresented:(BOOL)a3;
- (void)_evaluateKeyboardWindowLevelAssertion;
- (void)_evaluateResignActiveAssertion;
- (void)_evaluateWindowStatus;
- (void)_prepareLibraryViewControllerForDismissal:(id)a3;
- (void)_setLibraryDisplayLayoutElementActive:(BOOL)a3;
- (void)_willPerformTransitionWithLibraryToPresented:(BOOL)a3;
- (void)dealloc;
- (void)dismissLibraryAnimated:(BOOL)a3 completion:(id)a4;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)libraryViewController:(id)a3 didDismissSearchController:(id)a4;
- (void)libraryViewController:(id)a3 willPresentSearchController:(id)a4;
- (void)modalLibraryPresenter:(id)a3 didDismissLibrary:(id)a4;
- (void)modalLibraryPresenter:(id)a3 didPassCriticalDismissalPoint:(id)a4;
- (void)modalLibraryPresenter:(id)a3 didPresentLibrary:(id)a4;
- (void)modalLibraryPresenter:(id)a3 willDismissLibrary:(id)a4;
- (void)modalLibraryPresenter:(id)a3 willPresentLibrary:(id)a4;
- (void)presentLibraryAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentLibraryCategoryPodForCategoryIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)toggleLibraryPresentedAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation SBModalLibraryController

- (SBModalLibraryController)initWithIconManager:(id)a3 libraryViewController:(id)a4 floatingDockController:(id)a5 windowScene:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = SBModalLibraryController;
  v15 = [(SBModalLibraryController *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_iconManager, a3);
    objc_storeStrong(&v16->_libraryViewController, a4);
    [v12 addObserver:v16];
    objc_storeWeak(&v16->_floatingDockController, v13);
    objc_storeWeak(&v16->_windowScene, v14);
    v17 = [v14 layoutStateTransitionCoordinator];
    [v17 addObserver:v16];

    v18 = [v13 floatingDockViewController];
    v19 = [v18 configureForPresentingLibraryViewController:v12];
    libraryPresenter = v16->_libraryPresenter;
    v16->_libraryPresenter = v19;

    [(SBHModalLibraryPresenter *)v16->_libraryPresenter setPresentationDelegate:v16];
    [(SBHModalLibraryPresenter *)v16->_libraryPresenter addObserver:v16];
    v21 = +[SBSceneManagerCoordinator sharedInstance];
    v22 = [v21 sceneDeactivationManager];
    v23 = [v22 newAssertionWithReason:18];
    resignActiveAssertion = v16->_resignActiveAssertion;
    v16->_resignActiveAssertion = v23;
  }

  return v16;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)invalidate
{
  if (![(SBModalLibraryController *)self isInvalidated])
  {
    [(SBModalLibraryController *)self setInvalidated:1];
    v3 = [(SBModalLibraryController *)self libraryViewController];
    [v3 invalidate];

    v4 = [(SBModalLibraryController *)self libraryViewController];
    [v4 removeObserver:self];

    v5 = [(SBModalLibraryController *)self windowScene];
    v6 = [v5 layoutStateTransitionCoordinator];
    [v6 removeObserver:self];

    v7 = [(SBModalLibraryController *)self libraryDisplayLayoutElementAssertion];
    [v7 invalidate];

    v8 = [(SBModalLibraryController *)self floatingDockBehaviorAssertion];
    [v8 invalidate];

    v9 = [(SBModalLibraryController *)self resignActiveAssertion];
    [v9 relinquish];

    v10 = [(SBModalLibraryController *)self libraryWindowKeyboardFocusAssertion];
    [v10 invalidate];
  }
}

- (BOOL)isPresentingLibraryInForeground
{
  v2 = [(SBModalLibraryController *)self libraryPresenter];
  v3 = [v2 isPresentingLibrary];
  v4 = [v2 isLibraryContainedInForeground];

  return v3 & v4;
}

- (BOOL)isPresentingLibrary
{
  v2 = [(SBModalLibraryController *)self libraryPresenter];
  v3 = [v2 isPresentingLibrary];

  return v3;
}

- (void)presentLibraryAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBModalLibraryController *)self libraryPresenter];
  [v7 presentLibraryWithAnimation:v4 completion:v6];
}

- (void)dismissLibraryAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBModalLibraryController *)self libraryPresenter];
  [v7 dismissLibraryWithAnimation:v4 completion:v6];
}

- (void)toggleLibraryPresentedAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBModalLibraryController *)self libraryPresenter];
  [v7 toggleLibraryPresentedInForegroundWithAnimation:v4 completion:v6];
}

- (void)presentLibraryCategoryPodForCategoryIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__SBModalLibraryController_presentLibraryCategoryPodForCategoryIdentifier_animated_completion___block_invoke;
  v12[3] = &unk_2783AAC18;
  v13 = v8;
  v14 = self;
  v16 = v6;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [(SBModalLibraryController *)self presentLibraryAnimated:v6 completion:v12];
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

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion:a3];
  [(SBModalLibraryController *)self _evaluateResignActiveAssertion];

  [(SBModalLibraryController *)self _evaluateWindowStatus];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v6 = [a4 toLayoutState];
  if ([v6 unlockedEnvironmentMode] == 1 && -[SBModalLibraryController isPresentingLibrary](self, "isPresentingLibrary"))
  {
    v5 = [(SBModalLibraryController *)self libraryPresenter];
    [v5 setOverrideContainerViewController:0];
  }

  [(SBModalLibraryController *)self _evaluateWindowStatus];
}

- (void)libraryViewController:(id)a3 willPresentSearchController:(id)a4
{
  [(SBModalLibraryController *)self setPresentingOrTransitioningSearch:1, a4];

  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
}

- (void)libraryViewController:(id)a3 didDismissSearchController:(id)a4
{
  [(SBModalLibraryController *)self setPresentingOrTransitioningSearch:0, a4];

  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
}

- (BOOL)modalLibraryPresenterShouldAllowSwipeToDismissGesture:(id)a3
{
  v4 = [(SBModalLibraryController *)self iconManager];
  v5 = [(SBModalLibraryController *)self libraryViewController];
  v6 = [v4 _shouldLibraryOverlayAllowSwipeToDismissGesture:v5];

  return v6;
}

- (void)modalLibraryPresenter:(id)a3 willPresentLibrary:(id)a4
{
  v5 = a4;
  v7 = [(SBModalLibraryController *)self iconManager];
  v6 = [v5 _sbWindowScene];

  LODWORD(v5) = [v6 isMainDisplayWindowScene];
  if (v5)
  {
    [v7 setMainDisplayLibraryViewVisible:1 libraryViewTransitioning:1];
  }

  [(SBModalLibraryController *)self _willPerformTransitionWithLibraryToPresented:1];
}

- (void)modalLibraryPresenter:(id)a3 didPresentLibrary:(id)a4
{
  v5 = a4;
  [(SBModalLibraryController *)self _didCompleteTransitionWithLibraryToPresented:1];
  v6 = [v5 _sbWindowScene];

  LODWORD(v5) = [v6 isMainDisplayWindowScene];
  if (v5)
  {
    v9 = [(SBModalLibraryController *)self iconManager];
    [v9 setMainDisplayLibraryViewVisibilityTransitioning:0];
    v7 = [v9 rootFolderController];
    v8 = [MEMORY[0x277D75518] focusSystemForEnvironment:v7];
    [v8 _focusEnvironmentWillDisappear:v7];
  }
}

- (void)modalLibraryPresenter:(id)a3 willDismissLibrary:(id)a4
{
  v8 = a4;
  v5 = [v8 _sbWindowScene];
  v6 = [v5 isMainDisplayWindowScene];

  if (v6)
  {
    v7 = [(SBModalLibraryController *)self iconManager];
    [v7 setMainDisplayLibraryViewVisibilityTransitioning:1];
  }

  [(SBModalLibraryController *)self _prepareLibraryViewControllerForDismissal:v8];
  [(SBModalLibraryController *)self _willPerformTransitionWithLibraryToPresented:0];
}

- (void)modalLibraryPresenter:(id)a3 didPassCriticalDismissalPoint:(id)a4
{
  v5 = a4;
  v6 = [(SBModalLibraryController *)self iconManager];
  [v6 _scrollToLastIconPageIfNecessaryForLibraryOverlayDismissal:v5];
}

- (void)modalLibraryPresenter:(id)a3 didDismissLibrary:(id)a4
{
  v5 = [a4 _sbWindowScene];
  v6 = [v5 isMainDisplayWindowScene];

  if (v6)
  {
    v7 = [(SBModalLibraryController *)self iconManager];
    [v7 setMainDisplayLibraryViewVisible:0 libraryViewTransitioning:0];
  }

  [(SBModalLibraryController *)self _didCompleteTransitionWithLibraryToPresented:0];
}

- (void)_willPerformTransitionWithLibraryToPresented:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBModalLibraryController *)self floatingDockController];
  v6 = [v5 floatingDockViewController];
  [v6 setLibraryPodIconVisible:v3 ^ 1];

  [(SBModalLibraryController *)self _configureFloatingDockBehaviorAssertionForPresented:v3];
  if (v3)
  {
    [(SBModalLibraryController *)self _evaluateResignActiveAssertion];
    [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
    v7 = [(SBModalLibraryController *)self libraryViewController];
    [v7 enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_316];
  }

  [(SBModalLibraryController *)self _evaluateWindowStatus];
}

- (void)_didCompleteTransitionWithLibraryToPresented:(BOOL)a3
{
  v3 = a3;
  [(SBModalLibraryController *)self _setLibraryDisplayLayoutElementActive:?];
  [(SBModalLibraryController *)self _evaluateKeyboardWindowLevelAssertion];
  [(SBModalLibraryController *)self _evaluateResignActiveAssertion];
  if (v3)
  {
    v5 = [(SBModalLibraryController *)self _currentLayoutState];
    v6 = [v5 unlockedEnvironmentMode];

    if (v6 == 3)
    {
      v9 = +[SBWorkspace mainWorkspace];
      v7 = [(SBModalLibraryController *)self coordinatorRequestedIdleTimerBehavior:v9];
      v8 = [v9 idleTimerProvider:self didProposeBehavior:v7 forReason:@"SBModalLibraryPresentedReason"];
    }
  }
}

- (void)_setLibraryDisplayLayoutElementActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBModalLibraryController *)self libraryDisplayLayoutElementAssertion];
  if (v3 && !v5)
  {
    v19 = 0;
    v6 = objc_alloc(MEMORY[0x277D66A50]);
    v7 = [v6 initWithIdentifier:*MEMORY[0x277D66F00]];
    [v7 setFillsDisplayBounds:1];
    [v7 setLayoutRole:3];
    v8 = [(SBModalLibraryController *)self libraryViewController];
    v9 = [v8 view];
    v10 = [v9 window];
    [v10 level];
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
    v15 = [(SBModalLibraryController *)self libraryViewController];
    v16 = [v15 _sbWindowScene];
    v17 = [v16 displayLayoutPublisher];
    v18 = [v17 addElement:v7];

    [(SBModalLibraryController *)self setLibraryDisplayLayoutElementAssertion:v18];
    goto LABEL_10;
  }

  if (!v3 && v5)
  {
    v19 = v5;
    [v5 invalidate];
    [(SBModalLibraryController *)self setLibraryDisplayLayoutElementAssertion:0];
LABEL_10:
    v5 = v19;
  }
}

- (void)_prepareLibraryViewControllerForDismissal:(id)a3
{
  [a3 enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_23_1];
  v4 = [(SBModalLibraryController *)self iconManager];
  [v4 dismissIconShareSheets];
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

- (void)_configureFloatingDockBehaviorAssertionForPresented:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBModalLibraryController *)self floatingDockBehaviorAssertion];
  if (v3 && !v5)
  {
    v9 = 0;
    v6 = [SBFloatingDockBehaviorAssertion alloc];
    v7 = [(SBModalLibraryController *)self floatingDockController];
    v8 = [(SBFloatingDockBehaviorAssertion *)v6 initWithFloatingDockController:v7 visibleProgress:1 animated:1 gesturePossible:9 atLevel:@"SBModalLibraryPresentedReason" reason:0 withCompletion:0.0];

    [(SBModalLibraryController *)self setFloatingDockBehaviorAssertion:v8];
LABEL_7:
    v5 = v9;
    goto LABEL_8;
  }

  if (!v3 && v5)
  {
    v9 = v5;
    [v5 invalidate];
    [(SBModalLibraryController *)self setFloatingDockBehaviorAssertion:0];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_evaluateKeyboardWindowLevelAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained isMainDisplayWindowScene];

  if (!v4)
  {
    return;
  }

  v5 = [(SBModalLibraryController *)self _currentLayoutState];
  v6 = [v5 unlockedEnvironmentMode];

  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 2 && [(SBModalLibraryController *)self isPresentingLibraryInForeground]&& [(SBModalLibraryController *)self isPresentingOrTransitioningSearch];
  v8 = [(SBModalLibraryController *)self keyboardWindowLevelAssertion];
  if (!v7 || v8)
  {
    if (v8)
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

    v18 = v8;
    [v8 invalidate];
    [(SBModalLibraryController *)self setKeyboardWindowLevelAssertion:0];
  }

  else
  {
    v18 = 0;
    v9 = [(SBModalLibraryController *)self libraryViewController];
    v10 = [v9 _sbWindowScene];
    v11 = [v10 medusaHostedKeyboardWindowController];
    v12 = [(SBModalLibraryController *)self libraryViewController];
    v13 = [v12 view];
    v14 = [v13 window];
    [v14 windowLevel];
    v16 = [v11 newMedusaHostedKeyboardWindowLevelAssertionWithPriority:1 windowLevel:v15 + 1.0];

    [(SBModalLibraryController *)self setKeyboardWindowLevelAssertion:v16];
  }

  v8 = v18;
LABEL_16:
}

- (void)_evaluateResignActiveAssertion
{
  v3 = [(SBModalLibraryController *)self _currentLayoutState];
  v4 = [v3 unlockedEnvironmentMode];

  v5 = [(SBModalLibraryController *)self isPresentingLibraryInForeground];
  v6 = v4 == 3 && v5;
  v7 = [(SBModalLibraryController *)self resignActiveAssertion];
  v8 = [v7 isAcquired];

  if (!v6 || (v8 & 1) != 0)
  {
    if (v6 || (v8 & 1) == 0)
    {
      return;
    }

    v13 = SBLogAppLibrary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Modal Library Controller] Updating resign active assertion to: Relinquished", v14, 2u);
    }

    v10 = [(SBModalLibraryController *)self resignActiveAssertion];
    [v10 relinquish];
  }

  else
  {
    v9 = SBLogAppLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Modal Library Controller] Updating resign active assertion to: Acquired", buf, 2u);
    }

    v10 = [(SBModalLibraryController *)self resignActiveAssertion];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v12 = [WeakRetained _fbsDisplayIdentity];
    [v10 sb_acquireForDisplayIdentity:v12];
  }
}

- (void)_evaluateWindowStatus
{
  if ([(SBModalLibraryController *)self isPresentingLibraryInForeground])
  {
    v3 = [(SBModalLibraryController *)self libraryViewController];
    v4 = [v3 viewIfLoaded];
    v12 = [v4 window];

    if (!self->_libraryWindowKeyboardFocusAssertion)
    {
      v5 = +[SBWorkspace mainWorkspace];
      v6 = [v5 keyboardFocusController];
      v7 = +[SBKeyboardFocusLockReason modalAppLibrary];
      v8 = [v6 focusLockSpringBoardWindow:v12 forReason:v7];
      libraryWindowKeyboardFocusAssertion = self->_libraryWindowKeyboardFocusAssertion;
      self->_libraryWindowKeyboardFocusAssertion = v8;
    }

    if (([v12 isKeyWindow] & 1) == 0)
    {
      [v12 makeKeyWindow];
    }

    v10 = v12;
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
  v3 = [WeakRetained layoutStateProvider];
  v4 = [v3 layoutState];

  return v4;
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