@interface NCLongLookDefaultPresentationController
- (BOOL)_shouldPresentInCurrentContext;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3;
- (NCLongLookDefaultPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5 sourceView:(id)a6;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)viewControllerAnimator:(id)a3 willBeginDismissalAnimationWithTransitionContext:(id)a4;
- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4;
@end

@implementation NCLongLookDefaultPresentationController

- (NCLongLookDefaultPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5 sourceView:(id)a6
{
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NCLongLookDefaultPresentationController;
  v11 = [(PLExpandedPlatterPresentationController *)&v14 initWithPresentedViewController:a3 presentingViewController:a4 sourceViewController:v10 sourceView:a6];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_sourceViewController, v10);
  }

  return v12;
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3
{
  v4 = a3;
  v5 = [(PLExpandedPlatterPresentationController *)self presentationControllerDelegate];
  [v5 expandedPlatterPresentationController:self frameForTransitionViewInPresentationSuperview:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  if (CGRectIsEmpty(v23))
  {
    v22.receiver = self;
    v22.super_class = NCLongLookDefaultPresentationController;
    [(NCLongLookDefaultPresentationController *)&v22 _frameForTransitionViewInPresentationSuperview:v4];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)presentationTransitionWillBegin
{
  v9.receiver = self;
  v9.super_class = NCLongLookDefaultPresentationController;
  [(PLExpandedPlatterPresentationController *)&v9 presentationTransitionWillBegin];
  v3 = [(PLExpandedPlatterPresentationController *)self presentationControllerDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 customBackgroundContainerViewForExpandedPlatterPresentationController:self], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = [(NCLongLookDefaultPresentationController *)self containerView];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [v3 expandedPlatterPresentationControllerShouldProvideBackground:self])
  {
    v6 = [MEMORY[0x277D26718] materialViewWithRecipe:6 options:0 initialWeighting:0.0];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v6;

    v8 = self->_backgroundMaterialView;
    [v5 bounds];
    [(MTMaterialView *)v8 setFrame:?];
    [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
    [v5 addSubview:self->_backgroundMaterialView];
    [v5 sendSubviewToBack:self->_backgroundMaterialView];
  }

LABEL_8:
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = NCLongLookDefaultPresentationController;
  [(NCLongLookDefaultPresentationController *)&v6 dismissalTransitionDidEnd:?];
  if (v3)
  {
    [(MTMaterialView *)self->_backgroundMaterialView removeFromSuperview];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = 0;
  }
}

- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4
{
  v12.receiver = self;
  v12.super_class = NCLongLookDefaultPresentationController;
  [(PLExpandedPlatterPresentationController *)&v12 viewControllerAnimator:a3 willBeginPresentationAnimationWithTransitionContext:a4];
  backgroundMaterialView = self->_backgroundMaterialView;
  if (backgroundMaterialView)
  {
    v6 = backgroundMaterialView;
    v7 = [(NCLongLookDefaultPresentationController *)self presentedViewController];
    v8 = [v7 transitionCoordinator];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __118__NCLongLookDefaultPresentationController_viewControllerAnimator_willBeginPresentationAnimationWithTransitionContext___block_invoke;
    v10[3] = &unk_278371E28;
    v11 = v6;
    v9 = v6;
    [v8 animateAlongsideTransition:v10 completion:0];
  }
}

- (void)viewControllerAnimator:(id)a3 willBeginDismissalAnimationWithTransitionContext:(id)a4
{
  v12.receiver = self;
  v12.super_class = NCLongLookDefaultPresentationController;
  [(PLExpandedPlatterPresentationController *)&v12 viewControllerAnimator:a3 willBeginDismissalAnimationWithTransitionContext:a4];
  backgroundMaterialView = self->_backgroundMaterialView;
  if (backgroundMaterialView)
  {
    v6 = backgroundMaterialView;
    v7 = [(NCLongLookDefaultPresentationController *)self presentedViewController];
    v8 = [v7 transitionCoordinator];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __115__NCLongLookDefaultPresentationController_viewControllerAnimator_willBeginDismissalAnimationWithTransitionContext___block_invoke;
    v10[3] = &unk_278371E28;
    v11 = v6;
    v9 = v6;
    [v8 animateAlongsideTransition:v10 completion:0];
  }
}

- (BOOL)_shouldPresentInCurrentContext
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceViewController);
  v3 = [WeakRetained definesPresentationContext];

  return v3;
}

@end