@interface PLExpandedPlatterTransitioningDelegate
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)viewControllerAnimator:(id)animator willBeginDismissalAnimationWithTransitionContext:(id)context;
- (void)viewControllerAnimator:(id)animator willBeginPresentationAnimationWithTransitionContext:(id)context;
@end

@implementation PLExpandedPlatterTransitioningDelegate

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  sourceControllerCopy = sourceController;
  pl_containingClickPresentationInteractionPresentingViewController = [sourceControllerCopy pl_containingClickPresentationInteractionPresentingViewController];
  v8 = pl_containingClickPresentationInteractionPresentingViewController;
  if (pl_containingClickPresentationInteractionPresentingViewController)
  {
    [pl_containingClickPresentationInteractionPresentingViewController viewForPreview];
  }

  else
  {
    [sourceControllerCopy view];
  }
  v9 = ;
  v10 = [[PLViewControllerAnimator alloc] initForPresentation:1 withSourceView:v9];
  if (objc_opt_respondsToSelector())
  {
    clickPresentationInteractionManager = [v8 clickPresentationInteractionManager];
  }

  else
  {
    clickPresentationInteractionManager = 0;
  }

  if ([clickPresentationInteractionManager hasCommittedToPresentation])
  {
    didInteractionInitiateWithHint = [clickPresentationInteractionManager didInteractionInitiateWithHint];
  }

  else
  {
    didInteractionInitiateWithHint = 0;
  }

  [v10 setIncludePresentingViewInAnimation:didInteractionInitiateWithHint];
  if ([(UIPresentationController *)self->_presentationController conformsToProtocol:&unk_2833AB500])
  {
    [v10 addObserver:self->_presentationController];
  }

  [v10 addObserver:self];

  return v10;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([controllerCopy presenter], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    viewForPreview = [v5 viewForPreview];
  }

  else
  {
    presentingViewController = [controllerCopy presentingViewController];
    viewForPreview = [presentingViewController view];

    v6 = 0;
  }

  v9 = off_278424C18;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [controllerCopy viewControllerTransitionTypeForTransitionDelegate:self] == 1)
  {
    v9 = off_278424C20;
  }

  v10 = [objc_alloc(*v9) initForPresentation:0 withSourceView:viewForPreview];
  if (objc_opt_respondsToSelector())
  {
    clickPresentationInteractionManager = [v6 clickPresentationInteractionManager];
  }

  else
  {
    clickPresentationInteractionManager = 0;
  }

  [v10 setIncludePresentingViewInAnimation:{objc_msgSend(clickPresentationInteractionManager, "didInteractionInitiateWithHint")}];
  if ([(UIPresentationController *)self->_presentationController conformsToProtocol:&unk_2833AB500])
  {
    [v10 addObserver:self->_presentationController];
  }

  [v10 addObserver:self];

  return v10;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  presentationController = self->_presentationController;
  if (!presentationController)
  {
    sourceViewControllerCopy = sourceViewController;
    viewControllerCopy = viewController;
    pl_containingClickPresentationInteractionPresentingViewController = [sourceViewControllerCopy pl_containingClickPresentationInteractionPresentingViewController];
    viewForPreview = [pl_containingClickPresentationInteractionPresentingViewController viewForPreview];
    if (pl_containingClickPresentationInteractionPresentingViewController && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [controllerCopy setPresenter:pl_containingClickPresentationInteractionPresentingViewController];
    }

    v14 = [[PLExpandedPlatterPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy sourceViewController:sourceViewControllerCopy sourceView:viewForPreview];

    v15 = self->_presentationController;
    self->_presentationController = &v14->super;

    presentationController = self->_presentationController;
  }

  v16 = presentationController;

  return presentationController;
}

- (void)viewControllerAnimator:(id)animator willBeginPresentationAnimationWithTransitionContext:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  objc_initWeak(&location, self);
  v8 = [contextCopy viewControllerForKey:*MEMORY[0x277D77240]];
  transitionCoordinator = [v8 transitionCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __117__PLExpandedPlatterTransitioningDelegate_viewControllerAnimator_willBeginPresentationAnimationWithTransitionContext___block_invoke;
  v10[3] = &unk_2784253C8;
  objc_copyWeak(&v11, &location);
  [transitionCoordinator animateAlongsideTransition:0 completion:v10];

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

- (void)viewControllerAnimator:(id)animator willBeginDismissalAnimationWithTransitionContext:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  objc_initWeak(&location, self);
  v8 = [contextCopy viewControllerForKey:*MEMORY[0x277D77230]];
  transitionCoordinator = [v8 transitionCoordinator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__PLExpandedPlatterTransitioningDelegate_viewControllerAnimator_willBeginDismissalAnimationWithTransitionContext___block_invoke;
  v10[3] = &unk_2784253C8;
  objc_copyWeak(&v11, &location);
  [transitionCoordinator animateAlongsideTransition:0 completion:v10];

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