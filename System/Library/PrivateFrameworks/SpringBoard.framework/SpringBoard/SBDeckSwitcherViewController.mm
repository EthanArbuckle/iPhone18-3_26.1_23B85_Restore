@interface SBDeckSwitcherViewController
- (SBAppSuggestionManager)appSuggestionManager;
- (SBDeckSwitcherViewController)initWithPersonality:(id)a3 liveContentOverlayCoordinator:(id)a4 dataSource:(id)a5 delegate:(id)a6 debugName:(id)a7;
- (id)_assertionReason;
- (int64_t)orientationForSuggestionViewController:(id)a3;
- (void)handleFluidSwitcherGestureManager:(id)a3 didBeginGesture:(id)a4;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)suggestionViewController:(id)a3 activatedSuggestion:(id)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation SBDeckSwitcherViewController

- (id)_assertionReason
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@-%p", v5, self];

  return v6;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController view];
  v4 = [(SBDeckSwitcherViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (SBDeckSwitcherViewController)initWithPersonality:(id)a3 liveContentOverlayCoordinator:(id)a4 dataSource:(id)a5 delegate:(id)a6 debugName:(id)a7
{
  v12.receiver = self;
  v12.super_class = SBDeckSwitcherViewController;
  v7 = [(SBFluidSwitcherViewController *)&v12 initWithPersonality:a3 liveContentOverlayCoordinator:a4 dataSource:a5 delegate:a6 debugName:a7];
  if (v7)
  {
    v8 = [[SBSwitcherAppSuggestionViewController alloc] initWithNibName:0 bundle:0];
    appSuggestionController = v7->_appSuggestionController;
    v7->_appSuggestionController = v8;

    [(SBSwitcherAppSuggestionViewController *)v7->_appSuggestionController setDelegate:v7];
    v10 = +[SBAppSuggestionManager sharedInstance];
    objc_storeWeak(&v7->_appSuggestionManager, v10);
  }

  return v7;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
  v4 = [(SBDeckSwitcherViewController *)self _assertionReason];
  [WeakRetained disableListeningForUpdatesForReason:v4];

  v5.receiver = self;
  v5.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v5 invalidate];
}

- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v13 performTransitionWithContext:v8 animated:v6 completion:a5];
  if (!v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__SBDeckSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke;
    v12[3] = &unk_2783A8C18;
    v12[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v12];
  }

  v9 = [v8 layoutState];
  if ([v9 unlockedEnvironmentMode] != 2)
  {
    [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController setShowSuggestions:0];
    WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
    v11 = [(SBDeckSwitcherViewController *)self _assertionReason];
    [WeakRetained disableListeningForUpdatesForReason:v11];
  }
}

void __81__SBDeckSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 2240) view];
  v3 = [*(a1 + 32) view];
  [v3 bounds];
  [v2 setFrame:?];

  v4 = [*(*(a1 + 32) + 2240) view];
  [v4 layoutIfNeeded];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v20 layoutStateTransitionCoordinator:a3 transitionDidBeginWithTransitionContext:v6];
  v7 = [v6 toLayoutState];
  v8 = [v6 fromLayoutState];
  v9 = [v7 unlockedEnvironmentMode];
  WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
  appSuggestionController = self->_appSuggestionController;
  if (v9 == 2)
  {
    if (appSuggestionController)
    {
      v12 = [(SBSwitcherAppSuggestionViewController *)appSuggestionController parentViewController];

      if (!v12)
      {
        [(SBDeckSwitcherViewController *)self addChildViewController:self->_appSuggestionController];
        v13 = [(SBDeckSwitcherViewController *)self view];
        v14 = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController view];
        [v13 addSubview:v14];

        [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController didMoveToParentViewController:self];
      }
    }

    if (![(SBFluidSwitcherViewController *)self _shouldInterruptPresentationAndDismiss])
    {
      v15 = [(SBDeckSwitcherViewController *)self _assertionReason];
      [WeakRetained enableListeningForUpdatesForReason:v15];

      [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController setShowSuggestions:1];
    }
  }

  else
  {
    [(SBSwitcherAppSuggestionViewController *)appSuggestionController setShowSuggestions:0];
    v16 = [(SBDeckSwitcherViewController *)self _assertionReason];
    [WeakRetained disableListeningForUpdatesForReason:v16];
  }

  if ([v7 unlockedEnvironmentMode] == 3 && objc_msgSend(v8, "unlockedEnvironmentMode") == 2)
  {
    v17 = [v6 applicationTransitionContext];
    v18 = [v17 request];
    v19 = [v18 source];

    if (v19 == 10)
    {
      [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController beginPausingSuggestionUpdatesForReason:@"ContinuityTransition"];
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v6 = a4;
  v24.receiver = self;
  v24.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v24 layoutStateTransitionCoordinator:a3 transitionDidEndWithTransitionContext:v6];
  v7 = [v6 toLayoutState];
  if ([v7 unlockedEnvironmentMode] == 2)
  {
    if (![(SBFluidSwitcherViewController *)self _shouldInterruptPresentationAndDismiss]&& ![(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController showSuggestions])
    {
      WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
      v9 = [(SBDeckSwitcherViewController *)self _assertionReason];
      [WeakRetained enableListeningForUpdatesForReason:v9];

      [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController setShowSuggestions:1];
    }
  }

  else
  {
    v10 = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController parentViewController];

    if (v10)
    {
      v11 = [v6 applicationTransitionContext];
      v12 = [v11 request];
      v13 = [v12 source];

      v14 = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController view];
      v15 = [v14 layer];
      [v15 setAllowsGroupOpacity:1];

      v16 = MEMORY[0x277D75D18];
      if (v13 == 10)
      {
        v17 = 0.35;
      }

      else
      {
        v17 = 0.0;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __103__SBDeckSwitcherViewController_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
      v22[3] = &unk_2783A8C18;
      v23 = v14;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __103__SBDeckSwitcherViewController_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2;
      v19[3] = &unk_2783A8BF0;
      v20 = v23;
      v21 = self;
      v18 = v23;
      [v16 animateWithDuration:v22 animations:v19 completion:v17];
    }
  }

  if (([v6 isInterrupted] & 1) == 0)
  {
    [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController endPausingSuggestionUpdatesForReason:@"ContinuityTransition"];
  }
}

uint64_t __103__SBDeckSwitcherViewController_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupOpacity:0];

  [*(*(a1 + 40) + 2240) willMoveToParentViewController:0];
  [*(a1 + 32) removeFromSuperview];
  v3 = *(*(a1 + 40) + 2240);

  return [v3 removeFromParentViewController];
}

- (void)handleFluidSwitcherGestureManager:(id)a3 didBeginGesture:(id)a4
{
  appSuggestionController = self->_appSuggestionController;
  v7 = a4;
  v8 = a3;
  [(SBSwitcherAppSuggestionViewController *)appSuggestionController setShowSuggestions:0];
  WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
  v10 = [(SBDeckSwitcherViewController *)self _assertionReason];
  [WeakRetained disableListeningForUpdatesForReason:v10];

  v11.receiver = self;
  v11.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v11 handleFluidSwitcherGestureManager:v8 didBeginGesture:v7];
}

- (void)suggestionViewController:(id)a3 activatedSuggestion:(id)a4
{
  v6 = a4;
  v5 = [(SBFluidSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 switcherContentController:self activatedBestAppSuggestion:v6];
  }
}

- (int64_t)orientationForSuggestionViewController:(id)a3
{
  v4 = [(SBFluidSwitcherViewController *)self dataSource];
  v5 = [v4 switcherInterfaceOrientationForSwitcherContentController:self];

  return v5;
}

- (SBAppSuggestionManager)appSuggestionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);

  return WeakRetained;
}

@end