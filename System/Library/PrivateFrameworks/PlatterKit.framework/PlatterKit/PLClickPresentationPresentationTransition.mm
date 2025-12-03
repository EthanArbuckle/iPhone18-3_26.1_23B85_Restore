@interface PLClickPresentationPresentationTransition
- (CGAffineTransform)targetTransform;
- (PLClickPresentationPresentationTransition)initWithTransitionDelegate:(id)delegate presentingViewController:(id)controller presentedViewController:(id)viewController completion:(id)completion;
- (id)_newAnimator;
- (void)_configureTransitionContextWithFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)updateBackgroundViewForTransition;
@end

@implementation PLClickPresentationPresentationTransition

- (PLClickPresentationPresentationTransition)initWithTransitionDelegate:(id)delegate presentingViewController:(id)controller presentedViewController:(id)viewController completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v15.receiver = self;
  v15.super_class = PLClickPresentationPresentationTransition;
  v12 = [(PLClickPresentationTransition *)&v15 initWithTransitionDelegate:delegate presentingViewController:controllerCopy presentedViewController:viewControllerCopy completion:completion];
  v13 = v12;
  if (v12)
  {
    [(_UIViewControllerOneToOneTransitionContext *)v12->super._transitionContext _setFromViewController:controllerCopy];
    [(_UIViewControllerOneToOneTransitionContext *)v13->super._transitionContext _setToViewController:viewControllerCopy];
  }

  return v13;
}

- (void)updateBackgroundViewForTransition
{
  backgroundView = [(PLClickPresentationTransition *)self backgroundView];
  [backgroundView setWeighting:1.0];
}

- (CGAffineTransform)targetTransform
{
  result = self->super._transitionContext;
  if (result)
  {
    return [(CGAffineTransform *)result targetTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (id)_newAnimator
{
  transitionDelegate = self->super._transitionDelegate;
  toViewController = [(_UIViewControllerOneToOneTransitionContext *)self->super._transitionContext toViewController];
  fromViewController = [(_UIViewControllerOneToOneTransitionContext *)self->super._transitionContext fromViewController];
  fromViewController2 = [(_UIViewControllerOneToOneTransitionContext *)self->super._transitionContext fromViewController];
  v7 = [(UIViewControllerTransitioningDelegate *)transitionDelegate animationControllerForPresentedController:toViewController presentingController:fromViewController sourceController:fromViewController2];

  return v7;
}

- (void)_configureTransitionContextWithFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = PLClickPresentationPresentationTransition;
  containerViewCopy = containerView;
  [(PLClickPresentationTransition *)&v13 _configureTransitionContextWithFromView:viewCopy toView:toView containerView:containerViewCopy];
  v10 = [MEMORY[0x277D26718] materialViewWithRecipe:6 options:0 initialWeighting:0.0];
  [v10 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:1];
  [containerViewCopy bounds];
  [v10 setFrame:?];
  [v10 setAutoresizingMask:18];
  [containerViewCopy insertSubview:v10 atIndex:0];

  [(PLClickPresentationTransition *)self setBackgroundView:v10];
  if ([(PLClickPresentationTransition *)self propagatesPresentingViewTransform])
  {
    transitionContext = self->super._transitionContext;
    if (viewCopy)
    {
      [viewCopy transform];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    [(_PLViewControllerOneToOneTransitionContext *)transitionContext setTargetTransform:v12];
  }
}

@end