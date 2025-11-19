@interface PUCrossfadeNavigationTransition
- (PUCrossfadeNavigationTransition)init;
- (void)_animateTransition;
@end

@implementation PUCrossfadeNavigationTransition

- (void)_animateTransition
{
  v3 = [(PUViewControllerTransition *)self fromViewController];
  v4 = [(PUViewControllerTransition *)self toViewController];
  v5 = [v3 view];
  v6 = [v4 view];
  v7 = [(PUViewControllerTransition *)self containerView];
  [v6 layoutIfNeeded];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [v6 setFrame:?];
  [v6 setAlpha:0.0];
  [v7 insertSubview:v6 aboveSubview:v5];
  v8 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v10 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__PUCrossfadeNavigationTransition__animateTransition__block_invoke;
  v13[3] = &unk_1E7B80DD0;
  v14 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__PUCrossfadeNavigationTransition__animateTransition__block_invoke_2;
  v12[3] = &unk_1E7B7F020;
  v12[4] = self;
  v11 = v6;
  [v8 animateWithDuration:v13 animations:v12 completion:v10];
}

- (PUCrossfadeNavigationTransition)init
{
  v3.receiver = self;
  v3.super_class = PUCrossfadeNavigationTransition;
  return [(PUNavigationTransition *)&v3 initWithDuration:0.300000012];
}

@end