@interface SBDeckSwitcherViewController
- (SBAppSuggestionManager)appSuggestionManager;
- (SBDeckSwitcherViewController)initWithPersonality:(id)personality liveContentOverlayCoordinator:(id)coordinator dataSource:(id)source delegate:(id)delegate debugName:(id)name;
- (id)_assertionReason;
- (int64_t)orientationForSuggestionViewController:(id)controller;
- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)suggestionViewController:(id)controller activatedSuggestion:(id)suggestion;
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
  view = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController view];
  view2 = [(SBDeckSwitcherViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (SBDeckSwitcherViewController)initWithPersonality:(id)personality liveContentOverlayCoordinator:(id)coordinator dataSource:(id)source delegate:(id)delegate debugName:(id)name
{
  v12.receiver = self;
  v12.super_class = SBDeckSwitcherViewController;
  v7 = [(SBFluidSwitcherViewController *)&v12 initWithPersonality:personality liveContentOverlayCoordinator:coordinator dataSource:source delegate:delegate debugName:name];
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
  _assertionReason = [(SBDeckSwitcherViewController *)self _assertionReason];
  [WeakRetained disableListeningForUpdatesForReason:_assertionReason];

  v5.receiver = self;
  v5.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v5 invalidate];
}

- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v13 performTransitionWithContext:contextCopy animated:animatedCopy completion:completion];
  if (!animatedCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__SBDeckSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke;
    v12[3] = &unk_2783A8C18;
    v12[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v12];
  }

  layoutState = [contextCopy layoutState];
  if ([layoutState unlockedEnvironmentMode] != 2)
  {
    [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController setShowSuggestions:0];
    WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
    _assertionReason = [(SBDeckSwitcherViewController *)self _assertionReason];
    [WeakRetained disableListeningForUpdatesForReason:_assertionReason];
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

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v20 layoutStateTransitionCoordinator:coordinator transitionDidBeginWithTransitionContext:contextCopy];
  toLayoutState = [contextCopy toLayoutState];
  fromLayoutState = [contextCopy fromLayoutState];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
  appSuggestionController = self->_appSuggestionController;
  if (unlockedEnvironmentMode == 2)
  {
    if (appSuggestionController)
    {
      parentViewController = [(SBSwitcherAppSuggestionViewController *)appSuggestionController parentViewController];

      if (!parentViewController)
      {
        [(SBDeckSwitcherViewController *)self addChildViewController:self->_appSuggestionController];
        view = [(SBDeckSwitcherViewController *)self view];
        view2 = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController view];
        [view addSubview:view2];

        [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController didMoveToParentViewController:self];
      }
    }

    if (![(SBFluidSwitcherViewController *)self _shouldInterruptPresentationAndDismiss])
    {
      _assertionReason = [(SBDeckSwitcherViewController *)self _assertionReason];
      [WeakRetained enableListeningForUpdatesForReason:_assertionReason];

      [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController setShowSuggestions:1];
    }
  }

  else
  {
    [(SBSwitcherAppSuggestionViewController *)appSuggestionController setShowSuggestions:0];
    _assertionReason2 = [(SBDeckSwitcherViewController *)self _assertionReason];
    [WeakRetained disableListeningForUpdatesForReason:_assertionReason2];
  }

  if ([toLayoutState unlockedEnvironmentMode] == 3 && objc_msgSend(fromLayoutState, "unlockedEnvironmentMode") == 2)
  {
    applicationTransitionContext = [contextCopy applicationTransitionContext];
    request = [applicationTransitionContext request];
    source = [request source];

    if (source == 10)
    {
      [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController beginPausingSuggestionUpdatesForReason:@"ContinuityTransition"];
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v24 layoutStateTransitionCoordinator:coordinator transitionDidEndWithTransitionContext:contextCopy];
  toLayoutState = [contextCopy toLayoutState];
  if ([toLayoutState unlockedEnvironmentMode] == 2)
  {
    if (![(SBFluidSwitcherViewController *)self _shouldInterruptPresentationAndDismiss]&& ![(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController showSuggestions])
    {
      WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
      _assertionReason = [(SBDeckSwitcherViewController *)self _assertionReason];
      [WeakRetained enableListeningForUpdatesForReason:_assertionReason];

      [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController setShowSuggestions:1];
    }
  }

  else
  {
    parentViewController = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController parentViewController];

    if (parentViewController)
    {
      applicationTransitionContext = [contextCopy applicationTransitionContext];
      request = [applicationTransitionContext request];
      source = [request source];

      view = [(SBSwitcherAppSuggestionViewController *)self->_appSuggestionController view];
      layer = [view layer];
      [layer setAllowsGroupOpacity:1];

      v16 = MEMORY[0x277D75D18];
      if (source == 10)
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
      v23 = view;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __103__SBDeckSwitcherViewController_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2;
      v19[3] = &unk_2783A8BF0;
      v20 = v23;
      selfCopy = self;
      v18 = v23;
      [v16 animateWithDuration:v22 animations:v19 completion:v17];
    }
  }

  if (([contextCopy isInterrupted] & 1) == 0)
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

- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture
{
  appSuggestionController = self->_appSuggestionController;
  gestureCopy = gesture;
  managerCopy = manager;
  [(SBSwitcherAppSuggestionViewController *)appSuggestionController setShowSuggestions:0];
  WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);
  _assertionReason = [(SBDeckSwitcherViewController *)self _assertionReason];
  [WeakRetained disableListeningForUpdatesForReason:_assertionReason];

  v11.receiver = self;
  v11.super_class = SBDeckSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v11 handleFluidSwitcherGestureManager:managerCopy didBeginGesture:gestureCopy];
}

- (void)suggestionViewController:(id)controller activatedSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate switcherContentController:self activatedBestAppSuggestion:suggestionCopy];
  }
}

- (int64_t)orientationForSuggestionViewController:(id)controller
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v5 = [dataSource switcherInterfaceOrientationForSwitcherContentController:self];

  return v5;
}

- (SBAppSuggestionManager)appSuggestionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appSuggestionManager);

  return WeakRetained;
}

@end