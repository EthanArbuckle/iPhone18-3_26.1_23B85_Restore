@interface SBFolderPresentingViewController
- (SBFolderContainerView)view;
- (SBFolderController)presentedFolderController;
- (SBFolderPresentingViewControllerDelegate)folderPresentationDelegate;
- (double)minimumHomeScreenScaleForFolderControllerBackgroundView:(id)a3;
- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6;
- (id)nestingViewController:(id)a3 interactionControllerForAnimationController:(id)a4;
- (id)nestingViewController:(id)a3 sourceViewForPresentingViewController:(id)a4;
- (void)dismissPresentedFolderControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6;
- (void)presentFolderController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setBackgroundEffect:(unint64_t)a3;
@end

@implementation SBFolderPresentingViewController

- (SBFolderContainerView)view
{
  v4.receiver = self;
  v4.super_class = SBFolderPresentingViewController;
  v2 = [(SBFolderPresentingViewController *)&v4 view];

  return v2;
}

- (void)loadView
{
  v3 = [[SBFolderContainerView alloc] initWithFolderView:0];
  [(SBFolderPresentingViewController *)self setView:v3];
}

- (SBFolderController)presentedFolderController
{
  v3 = [(SBNestingViewController *)self nestedViewController];
  if (!v3)
  {
    v3 = [(SBFolderPresentingViewController *)self presentedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)presentFolderController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v10 = a3;
  v8 = a5;
  v9 = [(SBFolderPresentingViewController *)self presentedFolderController];
  if (v9)
  {
    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    [(SBNestingViewController *)self pushNestedViewController:v10 animated:v6 withCompletion:v8];
  }
}

- (void)dismissPresentedFolderControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__SBFolderPresentingViewController_dismissPresentedFolderControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E8091408;
  aBlock[4] = self;
  v16 = a3;
  v7 = v6;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (a3)
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

- (void)setBackgroundEffect:(unint64_t)a3
{
  if ([(SBFolderPresentingViewController *)self backgroundEffect]!= a3)
  {
    self->_backgroundEffect = a3;
    if ([(SBFolderPresentingViewController *)self isViewLoaded])
    {
      v5 = [(SBFolderPresentingViewController *)self view];
      v6 = [v5 backgroundView];

      [v6 setEffect:a3];
    }
  }
}

- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    if (v12)
    {
      v13 = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
      if (objc_opt_respondsToSelector())
      {
        v14 = [v13 folderPresentationController:self animationControllerForTransitionWithFolder:v12 presenting:a4 == 1 animated:v6];
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
  v14 = [(SBNestingViewController *)&v16 nestingViewController:v10 animationControllerForOperation:a4 onViewController:v11 animated:v6];
LABEL_8:

  return v14;
}

- (id)nestingViewController:(id)a3 interactionControllerForAnimationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderPresentingViewController *)self currentFolderAnimator];

  if (v8 == v7)
  {
    v9 = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 folderPresentationController:self interactionControllerForAnimationController:v7];

      goto LABEL_6;
    }
  }

  v12.receiver = self;
  v12.super_class = SBFolderPresentingViewController;
  v10 = [(SBNestingViewController *)&v12 nestingViewController:v6 interactionControllerForAnimationController:v7];
LABEL_6:

  return v10;
}

- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10 == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v11;
      v14 = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
      v15 = [(SBFolderPresentingViewController *)self view];
      v16 = [v15 backgroundView];

      if (a4 == 1)
      {
        v26 = v14;
        v17 = v13;
        if (v16)
        {
          [v16 removeFromSuperview];
        }

        v18 = [SBFolderControllerBackgroundView alloc];
        v19 = [(SBFolderPresentingViewController *)self view];
        [v19 bounds];
        v20 = [(SBFolderControllerBackgroundView *)v18 initWithFrame:?];

        [(SBFolderControllerBackgroundView *)v20 setDelegate:self];
        [(SBFolderControllerBackgroundView *)v20 setEffect:[(SBFolderPresentingViewController *)self backgroundEffect]];
        v21 = [(SBFolderPresentingViewController *)self view];
        [v21 setBackgroundView:v20];

        v22 = [(SBFolderPresentingViewController *)self view];
        [v22 addSubview:v20];

        v23 = [(SBFolderPresentingViewController *)self view];
        v24 = [v17 folderContainerView];
        [v23 setChildFolderContainerView:v24];

        v13 = v17;
        v16 = v20;
        v14 = v26;
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __122__SBFolderPresentingViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke;
      v31[3] = &unk_1E808D418;
      v32 = v16;
      v33 = a4 == 1;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __122__SBFolderPresentingViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_2;
      v28[3] = &unk_1E808D468;
      v30 = a4 == 1;
      v28[4] = self;
      v25 = v32;
      v29 = v25;
      [v12 animateAlongsideTransition:v31 completion:v28];
      [v25 setExpanding:a4 == 1];
      if (objc_opt_respondsToSelector())
      {
        [v14 folderPresentationController:self willPerformTransitionWithFolder:v13 presenting:a4 == 1 withTransitionCoordinator:v12];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SBFolderPresentingViewController;
  [(SBNestingViewController *)&v27 nestingViewController:v10 willPerformOperation:a4 onViewController:v11 withTransitionCoordinator:v12, v26];
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

- (id)nestingViewController:(id)a3 sourceViewForPresentingViewController:(id)a4
{
  v5 = a4;
  v6 = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 folderPresentationController:self sourceViewForPresentingViewController:v5];
  }

  else
  {
    [(SBFolderPresentingViewController *)self view];
  }
  v7 = ;

  return v7;
}

- (double)minimumHomeScreenScaleForFolderControllerBackgroundView:(id)a3
{
  v4 = [(SBFolderPresentingViewController *)self folderPresentationDelegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 minimumHomeScreenScaleForFolderPresentationController:self];
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