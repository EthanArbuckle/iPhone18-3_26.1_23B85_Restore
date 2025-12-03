@interface PUCrossfadeAnimatedTransitioning
- (void)animateTransition:(id)transition;
@end

@implementation PUCrossfadeAnimatedTransitioning

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  containerView = [transitionCopy containerView];
  view = [v4 view];
  [view setAlpha:0.0];
  [containerView addSubview:view];
  v7 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PUCrossfadeAnimatedTransitioning_animateTransition___block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v13 = view;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PUCrossfadeAnimatedTransitioning_animateTransition___block_invoke_2;
  v10[3] = &unk_1E7B7F020;
  v11 = transitionCopy;
  v8 = transitionCopy;
  v9 = view;
  [v7 animateWithDuration:v12 animations:v10 completion:0.3];
}

@end