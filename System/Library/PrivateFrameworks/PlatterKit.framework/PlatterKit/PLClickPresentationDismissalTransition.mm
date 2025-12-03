@interface PLClickPresentationDismissalTransition
- (PLClickPresentationDismissalTransition)initWithTransitionDelegate:(id)delegate presentingViewController:(id)controller presentedViewController:(id)viewController completion:(id)completion;
- (PLClickPresentationPresentationTransition)presentationTransition;
- (id)_newAnimator;
- (void)_configureTransitionContextWithFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)updateBackgroundViewForTransition;
@end

@implementation PLClickPresentationDismissalTransition

- (PLClickPresentationDismissalTransition)initWithTransitionDelegate:(id)delegate presentingViewController:(id)controller presentedViewController:(id)viewController completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v15.receiver = self;
  v15.super_class = PLClickPresentationDismissalTransition;
  v12 = [(PLClickPresentationTransition *)&v15 initWithTransitionDelegate:delegate presentingViewController:controllerCopy presentedViewController:viewControllerCopy completion:completion];
  v13 = v12;
  if (v12)
  {
    [(_UIViewControllerOneToOneTransitionContext *)v12->super._transitionContext _setFromViewController:viewControllerCopy];
    [(_UIViewControllerOneToOneTransitionContext *)v13->super._transitionContext _setToViewController:controllerCopy];
  }

  return v13;
}

- (void)updateBackgroundViewForTransition
{
  backgroundView = [(PLClickPresentationTransition *)self backgroundView];
  [backgroundView setWeighting:0.0];
}

- (id)_newAnimator
{
  transitionDelegate = self->super._transitionDelegate;
  fromViewController = [(_UIViewControllerOneToOneTransitionContext *)self->super._transitionContext fromViewController];
  v4 = [(UIViewControllerTransitioningDelegate *)transitionDelegate animationControllerForDismissedController:fromViewController];

  return v4;
}

- (void)_configureTransitionContextWithFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  v11.receiver = self;
  v11.super_class = PLClickPresentationDismissalTransition;
  [(PLClickPresentationTransition *)&v11 _configureTransitionContextWithFromView:view toView:toView containerView:containerView];
  WeakRetained = objc_loadWeakRetained(&self->_presentationTransition);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    transitionContext = self->super._transitionContext;
    [WeakRetained targetTransform];
    [(_PLViewControllerOneToOneTransitionContext *)transitionContext setTargetTransform:&v10];
    backgroundView = [v7 backgroundView];
    [(PLClickPresentationTransition *)self setBackgroundView:backgroundView];
  }
}

- (PLClickPresentationPresentationTransition)presentationTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationTransition);

  return WeakRetained;
}

@end