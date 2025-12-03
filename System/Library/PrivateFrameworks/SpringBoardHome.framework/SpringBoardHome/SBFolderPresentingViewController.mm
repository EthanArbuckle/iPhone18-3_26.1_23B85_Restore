@interface SBFolderPresentingViewController
- (SBFolderContainerView)view;
- (SBFolderController)presentedFolderController;
- (SBFolderPresentingViewControllerDelegate)folderPresentationDelegate;
- (double)minimumHomeScreenScaleForFolderControllerBackgroundView:(id)view;
- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated;
- (id)nestingViewController:(id)controller interactionControllerForAnimationController:(id)animationController;
- (id)nestingViewController:(id)controller sourceViewForPresentingViewController:(id)viewController;
- (void)dismissPresentedFolderControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator;
- (void)presentFolderController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setBackgroundEffect:(unint64_t)effect;
@end

@implementation SBFolderPresentingViewController

- (SBFolderContainerView)view
{
  v4.receiver = self;
  v4.super_class = SBFolderPresentingViewController;
  view = [(SBFolderPresentingViewController *)&v4 view];

  return view;
}

- (void)loadView
{
  v3 = [[SBFolderContainerView alloc] initWithFolderView:0];
  [(SBFolderPresentingViewController *)self setView:v3];
}

- (SBFolderController)presentedFolderController
{
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  if (!nestedViewController)
  {
    nestedViewController = [(SBFolderPresentingViewController *)self presentedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = nestedViewController;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)presentFolderController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentedFolderController = [(SBFolderPresentingViewController *)self presentedFolderController];
  if (presentedFolderController)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(SBNestingViewController *)self pushNestedViewController:controllerCopy animated:animatedCopy withCompletion:completionCopy];
  }
}

- (void)dismissPresentedFolderControllerAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__SBFolderPresentingViewController_dismissPresentedFolderControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E8091408;
  aBlock[4] = self;
  animatedCopy = animated;
  v7 = completionCopy;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (animated)
  {
    v10 = +[SBHIconViewContextMenuStateController sharedInstance];
    [v10 dismissAppIconForceTouchControllers:v9];
  }

  else
  {
    v11 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__SBFolderPresentingViewController_dismissPresentedFolderControllerAnimated_completion___block_invoke_2;
    v12[3] = &unk_1E8089600;
    v13 = v8;
    [v11 performWithoutAnimation:v12];
    v10 = v13;
  }
}

uint64_t __88__SBFolderPresentingViewController_dismissPresentedFolderControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedFolderController];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) popNestedViewControllerAnimated:*(a1 + 48) withCompletion:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_6;
    }

    v5 = 0;
    v3 = (*(v3 + 16))(v3, 0);
  }

  v2 = v5;
LABEL_6:

  return MEMORY[0x1EEE66BB8](v3, v2);
}

void __88__SBFolderPresentingViewController_dismissPresentedFolderControllerAnimated_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[SBHIconViewContextMenuStateController sharedInstance];
  [v2 dismissAppIconForceTouchControllers:*(a1 + 32)];
}

- (void)setBackgroundEffect:(unint64_t)effect
{
  if ([(SBFolderPresentingViewController *)self backgroundEffect]!= effect)
  {
    self->_backgroundEffect = effect;
    if ([(SBFolderPresentingViewController *)self isViewLoaded])
    {
      view = [(SBFolderPresentingViewController *)self view];
      backgroundView = [view backgroundView];

      [backgroundView setEffect:effect];
    }
  }
}

- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = viewControllerCopy;
    if (v12)
    {
      folderPresentationDelegate = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
      if (objc_opt_respondsToSelector())
      {
        v14 = [folderPresentationDelegate folderPresentationController:self animationControllerForTransitionWithFolder:v12 presenting:operation == 1 animated:animatedCopy];
        [(SBFolderPresentingViewController *)self setCurrentFolderAnimator:v14];

        goto LABEL_8;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16.receiver = self;
  v16.super_class = SBFolderPresentingViewController;
  v14 = [(SBNestingViewController *)&v16 nestingViewController:controllerCopy animationControllerForOperation:operation onViewController:viewControllerCopy animated:animatedCopy];
LABEL_8:

  return v14;
}

- (id)nestingViewController:(id)controller interactionControllerForAnimationController:(id)animationController
{
  controllerCopy = controller;
  animationControllerCopy = animationController;
  currentFolderAnimator = [(SBFolderPresentingViewController *)self currentFolderAnimator];

  if (currentFolderAnimator == animationControllerCopy)
  {
    folderPresentationDelegate = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [folderPresentationDelegate folderPresentationController:self interactionControllerForAnimationController:animationControllerCopy];

      goto LABEL_6;
    }
  }

  v12.receiver = self;
  v12.super_class = SBFolderPresentingViewController;
  v10 = [(SBNestingViewController *)&v12 nestingViewController:controllerCopy interactionControllerForAnimationController:animationControllerCopy];
LABEL_6:

  return v10;
}

- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  coordinatorCopy = coordinator;
  if (controllerCopy == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = viewControllerCopy;
      folderPresentationDelegate = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
      view = [(SBFolderPresentingViewController *)self view];
      backgroundView = [view backgroundView];

      if (operation == 1)
      {
        v26 = folderPresentationDelegate;
        v17 = v13;
        if (backgroundView)
        {
          [backgroundView removeFromSuperview];
        }

        v18 = [SBFolderControllerBackgroundView alloc];
        view2 = [(SBFolderPresentingViewController *)self view];
        [view2 bounds];
        v20 = [(SBFolderControllerBackgroundView *)v18 initWithFrame:?];

        [(SBFolderControllerBackgroundView *)v20 setDelegate:self];
        [(SBFolderControllerBackgroundView *)v20 setEffect:[(SBFolderPresentingViewController *)self backgroundEffect]];
        view3 = [(SBFolderPresentingViewController *)self view];
        [view3 setBackgroundView:v20];

        view4 = [(SBFolderPresentingViewController *)self view];
        [view4 addSubview:v20];

        view5 = [(SBFolderPresentingViewController *)self view];
        folderContainerView = [v17 folderContainerView];
        [view5 setChildFolderContainerView:folderContainerView];

        v13 = v17;
        backgroundView = v20;
        folderPresentationDelegate = v26;
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __122__SBFolderPresentingViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke;
      v31[3] = &unk_1E808D418;
      v32 = backgroundView;
      v33 = operation == 1;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __122__SBFolderPresentingViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_2;
      v28[3] = &unk_1E808D468;
      v30 = operation == 1;
      v28[4] = self;
      v25 = v32;
      v29 = v25;
      [coordinatorCopy animateAlongsideTransition:v31 completion:v28];
      [v25 setExpanding:operation == 1];
      if (objc_opt_respondsToSelector())
      {
        [folderPresentationDelegate folderPresentationController:self willPerformTransitionWithFolder:v13 presenting:operation == 1 withTransitionCoordinator:coordinatorCopy];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SBFolderPresentingViewController;
  [(SBNestingViewController *)&v27 nestingViewController:controllerCopy willPerformOperation:operation onViewController:viewControllerCopy withTransitionCoordinator:coordinatorCopy, v26];
}

void __122__SBFolderPresentingViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isInteractive] & 1) == 0)
  {
    v3 = [v7 isCancelled];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 setTransitionCancelled:1];
      v5 = *(a1 + 32);
      v6 = (*(a1 + 40) & 1) == 0;
    }

    else
    {
      [v4 setTransitionCancelled:0];
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
    }

    [v5 setEffectActive:v6];
  }
}

uint64_t __122__SBFolderPresentingViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled] == *(a1 + 48))
  {
    v3 = [*(a1 + 32) view];
    [v3 setChildFolderContainerView:0];

    [*(a1 + 40) removeFromSuperview];
    v4 = [*(a1 + 32) view];
    [v4 setBackgroundView:0];
  }

  v5 = *(a1 + 32);

  return [v5 setCurrentFolderAnimator:0];
}

- (id)nestingViewController:(id)controller sourceViewForPresentingViewController:(id)viewController
{
  viewControllerCopy = viewController;
  folderPresentationDelegate = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderPresentationDelegate folderPresentationController:self sourceViewForPresentingViewController:viewControllerCopy];
  }

  else
  {
    [(SBFolderPresentingViewController *)self view];
  }
  v7 = ;

  return v7;
}

- (double)minimumHomeScreenScaleForFolderControllerBackgroundView:(id)view
{
  folderPresentationDelegate = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [folderPresentationDelegate minimumHomeScreenScaleForFolderPresentationController:self];
    v5 = v6;
  }

  return v5;
}

- (SBFolderPresentingViewControllerDelegate)folderPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_folderPresentationDelegate);

  return WeakRetained;
}

@end