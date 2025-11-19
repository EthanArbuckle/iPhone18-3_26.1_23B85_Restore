@interface PLClickPresentationDismissalTransition
- (PLClickPresentationDismissalTransition)initWithTransitionDelegate:(id)a3 presentingViewController:(id)a4 presentedViewController:(id)a5 completion:(id)a6;
- (PLClickPresentationPresentationTransition)presentationTransition;
- (id)_newAnimator;
- (void)_configureTransitionContextWithFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)updateBackgroundViewForTransition;
@end

@implementation PLClickPresentationDismissalTransition

- (PLClickPresentationDismissalTransition)initWithTransitionDelegate:(id)a3 presentingViewController:(id)a4 presentedViewController:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PLClickPresentationDismissalTransition;
  v12 = [(PLClickPresentationTransition *)&v15 initWithTransitionDelegate:a3 presentingViewController:v10 presentedViewController:v11 completion:a6];
  v13 = v12;
  if (v12)
  {
    [(_UIViewControllerOneToOneTransitionContext *)v12->super._transitionContext _setFromViewController:v11];
    [(_UIViewControllerOneToOneTransitionContext *)v13->super._transitionContext _setToViewController:v10];
  }

  return v13;
}

- (void)updateBackgroundViewForTransition
{
  v2 = [(PLClickPresentationTransition *)self backgroundView];
  [v2 setWeighting:0.0];
}

- (id)_newAnimator
{
  transitionDelegate = self->super._transitionDelegate;
  v3 = [(_UIViewControllerOneToOneTransitionContext *)self->super._transitionContext fromViewController];
  v4 = [(UIViewControllerTransitioningDelegate *)transitionDelegate animationControllerForDismissedController:v3];

  return v4;
}

- (void)_configureTransitionContextWithFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v11.receiver = self;
  v11.super_class = PLClickPresentationDismissalTransition;
  [(PLClickPresentationTransition *)&v11 _configureTransitionContextWithFromView:a3 toView:a4 containerView:a5];
  WeakRetained = objc_loadWeakRetained(&self->_presentationTransition);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    transitionContext = self->super._transitionContext;
    [WeakRetained targetTransform];
    [(_PLViewControllerOneToOneTransitionContext *)transitionContext setTargetTransform:&v10];
    v9 = [v7 backgroundView];
    [(PLClickPresentationTransition *)self setBackgroundView:v9];
  }
}

- (PLClickPresentationPresentationTransition)presentationTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationTransition);

  return WeakRetained;
}

@end