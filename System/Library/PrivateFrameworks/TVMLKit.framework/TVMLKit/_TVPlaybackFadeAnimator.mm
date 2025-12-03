@interface _TVPlaybackFadeAnimator
- (_TVPlaybackFadeAnimator)init;
- (void)_beginFadeAnimationFromViewController:(id)controller toViewController:(id)viewController containerView:(id)view completion:(id)completion;
- (void)animateTransition:(id)transition;
@end

@implementation _TVPlaybackFadeAnimator

- (_TVPlaybackFadeAnimator)init
{
  v3.receiver = self;
  v3.super_class = _TVPlaybackFadeAnimator;
  result = [(_TVPlaybackFadeAnimator *)&v3 init];
  if (result)
  {
    result->_transitionDuration = 0.2;
    result->_usesCustomEasing = 1;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45___TVPlaybackFadeAnimator_animateTransition___block_invoke;
  v9[3] = &unk_279D6E7F8;
  v10 = transitionCopy;
  v8 = transitionCopy;
  [(_TVPlaybackFadeAnimator *)self _beginFadeAnimationFromViewController:v7 toViewController:v6 containerView:containerView completion:v9];
}

- (void)_beginFadeAnimationFromViewController:(id)controller toViewController:(id)viewController containerView:(id)view completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  viewCopy = view;
  view = [viewController view];
  [viewCopy bounds];
  [view setFrame:?];
  [view setHidden:1];
  [viewCopy addSubview:view];
  v14 = objc_alloc(MEMORY[0x277D75D18]);
  [viewCopy bounds];
  v15 = [v14 initWithFrame:?];
  [v15 setAutoresizingMask:18];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v15 setBackgroundColor:blackColor];

  [v15 setAlpha:0.0];
  [viewCopy addSubview:v15];

  shouldAnimateHalfwayThenPopIn = self->_shouldAnimateHalfwayThenPopIn;
  if (shouldAnimateHalfwayThenPopIn)
  {
    transitionDuration = self->_transitionDuration;
  }

  else
  {
    transitionDuration = self->_transitionDuration * 0.5;
  }

  usesCustomEasing = self->_usesCustomEasing;
  v20 = MEMORY[0x277D75D18];
  if (usesCustomEasing)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = 0;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __107___TVPlaybackFadeAnimator__beginFadeAnimationFromViewController_toViewController_containerView_completion___block_invoke;
  v34[3] = &unk_279D6E7F8;
  v35 = v15;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __107___TVPlaybackFadeAnimator__beginFadeAnimationFromViewController_toViewController_containerView_completion___block_invoke_2;
  v26[3] = &unk_279D6F6C0;
  v27 = controllerCopy;
  v28 = view;
  v32 = shouldAnimateHalfwayThenPopIn;
  v29 = v35;
  v30 = completionCopy;
  v31 = transitionDuration;
  v33 = usesCustomEasing;
  v22 = completionCopy;
  v23 = v35;
  v24 = view;
  v25 = controllerCopy;
  [v20 animateWithDuration:v21 delay:v34 options:v26 animations:transitionDuration completion:0.0];
}

@end