@interface _TVNavigationCrossfadeAnimator
+ (void)_beginCrossfadeAnimationFromView:(id)view toView:(id)toView containerView:(id)containerView delay:(double)delay fadeOutFromView:(BOOL)fromView removeFromView:(BOOL)removeFromView completion:(id)completion;
- (void)_beginCrossfadeAnimationFromViewController:(id)controller toViewController:(id)viewController containerView:(id)view completion:(id)completion;
- (void)animateTransition:(id)transition;
@end

@implementation _TVNavigationCrossfadeAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52___TVNavigationCrossfadeAnimator_animateTransition___block_invoke;
  v9[3] = &unk_279D6E7F8;
  v10 = transitionCopy;
  v8 = transitionCopy;
  [(_TVNavigationCrossfadeAnimator *)self _beginCrossfadeAnimationFromViewController:v7 toViewController:v6 containerView:containerView completion:v9];
}

+ (void)_beginCrossfadeAnimationFromView:(id)view toView:(id)toView containerView:(id)containerView delay:(double)delay fadeOutFromView:(BOOL)fromView removeFromView:(BOOL)removeFromView completion:(id)completion
{
  viewCopy = view;
  toViewCopy = toView;
  completionCopy = completion;
  containerViewCopy = containerView;
  [containerViewCopy bounds];
  [toViewCopy setFrame:?];
  [toViewCopy setAlpha:0.0];
  [containerViewCopy addSubview:toViewCopy];

  v19 = MEMORY[0x277D75D18];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __136___TVNavigationCrossfadeAnimator__beginCrossfadeAnimationFromView_toView_containerView_delay_fadeOutFromView_removeFromView_completion___block_invoke;
  v27[3] = &unk_279D6E930;
  fromViewCopy = fromView;
  v28 = viewCopy;
  v29 = toViewCopy;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __136___TVNavigationCrossfadeAnimator__beginCrossfadeAnimationFromView_toView_containerView_delay_fadeOutFromView_removeFromView_completion___block_invoke_2;
  v23[3] = &unk_279D6E958;
  removeFromViewCopy = removeFromView;
  v24 = v28;
  v25 = completionCopy;
  v20 = completionCopy;
  v21 = v28;
  v22 = toViewCopy;
  [v19 animateWithDuration:2 delay:v27 options:v23 animations:0.5 completion:delay];
}

- (void)_beginCrossfadeAnimationFromViewController:(id)controller toViewController:(id)viewController containerView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v14 = objc_opt_class();
  view = [controllerCopy view];

  view2 = [viewControllerCopy view];

  [v14 _beginCrossfadeAnimationFromView:view toView:view2 containerView:viewCopy delay:self->_fadeOutFromView fadeOutFromView:1 removeFromView:completionCopy completion:0.0];
}

@end