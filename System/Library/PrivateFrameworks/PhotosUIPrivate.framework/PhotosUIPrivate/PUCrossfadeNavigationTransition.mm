@interface PUCrossfadeNavigationTransition
- (PUCrossfadeNavigationTransition)init;
- (void)_animateTransition;
@end

@implementation PUCrossfadeNavigationTransition

- (void)_animateTransition
{
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  toViewController = [(PUViewControllerTransition *)self toViewController];
  view = [fromViewController view];
  view2 = [toViewController view];
  containerView = [(PUViewControllerTransition *)self containerView];
  [view2 layoutIfNeeded];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [view2 setFrame:?];
  [view2 setAlpha:0.0];
  [containerView insertSubview:view2 aboveSubview:view];
  v8 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v10 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__PUCrossfadeNavigationTransition__animateTransition__block_invoke;
  v13[3] = &unk_1E7B80DD0;
  v14 = view2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__PUCrossfadeNavigationTransition__animateTransition__block_invoke_2;
  v12[3] = &unk_1E7B7F020;
  v12[4] = self;
  v11 = view2;
  [v8 animateWithDuration:v13 animations:v12 completion:v10];
}

- (PUCrossfadeNavigationTransition)init
{
  v3.receiver = self;
  v3.super_class = PUCrossfadeNavigationTransition;
  return [(PUNavigationTransition *)&v3 initWithDuration:0.300000012];
}

@end