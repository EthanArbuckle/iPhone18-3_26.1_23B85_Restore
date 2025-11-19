@interface PLExpandedPlatterTransitioningDelegate
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)viewControllerAnimator:(id)a3 willBeginDismissalAnimationWithTransitionContext:(id)a4;
- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4;
@end

@implementation PLExpandedPlatterTransitioningDelegate

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = a5;
  v7 = [v6 pl_containingClickPresentationInteractionPresentingViewController];
  v8 = v7;
  if (v7)
  {
    [v7 viewForPreview];
  }

  else
  {
    [v6 view];
  }
  v9 = ;
  v10 = [[PLViewControllerAnimator alloc] initForPresentation:1 withSourceView:v9];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 clickPresentationInteractionManager];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 hasCommittedToPresentation])
  {
    v12 = [v11 didInteractionInitiateWithHint];
  }

  else
  {
    v12 = 0;
  }

  [v10 setIncludePresentingViewInAnimation:v12];
  if ([(UIPresentationController *)self->_presentationController conformsToProtocol:&unk_2833AB500])
  {
    [v10 addObserver:self->_presentationController];
  }

  [v10 addObserver:self];

  return v10;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 presenter], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 viewForPreview];
  }

  else
  {
    v8 = [v4 presentingViewController];
    v7 = [v8 view];

    v6 = 0;
  }

  v9 = off_278424C18;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 viewControllerTransitionTypeForTransitionDelegate:self] == 1)
  {
    v9 = off_278424C20;
  }

  v10 = [objc_alloc(*v9) initForPresentation:0 withSourceView:v7];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v6 clickPresentationInteractionManager];
  }

  else
  {
    v11 = 0;
  }

  [v10 setIncludePresentingViewInAnimation:{objc_msgSend(v11, "didInteractionInitiateWithHint")}];
  if ([(UIPresentationController *)self->_presentationController conformsToProtocol:&unk_2833AB500])
  {
    [v10 addObserver:self->_presentationController];
  }

  [v10 addObserver:self];

  return v10;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  presentationController = self->_presentationController;
  if (!presentationController)
  {
    v10 = a5;
    v11 = a4;
    v12 = [v10 pl_containingClickPresentationInteractionPresentingViewController];
    v13 = [v12 viewForPreview];
    if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 setPresenter:v12];
    }

    v14 = [[PLExpandedPlatterPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v11 sourceViewController:v10 sourceView:v13];

    v15 = self->_presentationController;
    self->_presentationController = &v14->super;

    presentationController = self->_presentationController;
  }

  v16 = presentationController;

  return presentationController;
}

- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v7 viewControllerForKey:*MEMORY[0x277D77240]];
  v9 = [v8 transitionCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __117__PLExpandedPlatterTransitioningDelegate_viewControllerAnimator_willBeginPresentationAnimationWithTransitionContext___block_invoke;
  v10[3] = &unk_2784253C8;
  objc_copyWeak(&v11, &location);
  [v9 animateAlongsideTransition:0 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __117__PLExpandedPlatterTransitioningDelegate_viewControllerAnimator_willBeginPresentationAnimationWithTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [v3 isCancelled];

  if (a1)
  {
    [WeakRetained _setPresentationController:0];
  }
}

- (void)viewControllerAnimator:(id)a3 willBeginDismissalAnimationWithTransitionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v7 viewControllerForKey:*MEMORY[0x277D77230]];
  v9 = [v8 transitionCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__PLExpandedPlatterTransitioningDelegate_viewControllerAnimator_willBeginDismissalAnimationWithTransitionContext___block_invoke;
  v10[3] = &unk_2784253C8;
  objc_copyWeak(&v11, &location);
  [v9 animateAlongsideTransition:0 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __114__PLExpandedPlatterTransitioningDelegate_viewControllerAnimator_willBeginDismissalAnimationWithTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LOBYTE(a1) = [v3 isCancelled];

  if ((a1 & 1) == 0)
  {
    [WeakRetained _setPresentationController:0];
  }
}

@end