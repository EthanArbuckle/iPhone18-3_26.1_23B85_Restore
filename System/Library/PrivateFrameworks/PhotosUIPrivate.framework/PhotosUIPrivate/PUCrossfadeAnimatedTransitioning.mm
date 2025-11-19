@interface PUCrossfadeAnimatedTransitioning
- (void)animateTransition:(id)a3;
@end

@implementation PUCrossfadeAnimatedTransitioning

- (void)animateTransition:(id)a3
{
  v3 = a3;
  v4 = [v3 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v5 = [v3 containerView];
  v6 = [v4 view];
  [v6 setAlpha:0.0];
  [v5 addSubview:v6];
  v7 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PUCrossfadeAnimatedTransitioning_animateTransition___block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v13 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PUCrossfadeAnimatedTransitioning_animateTransition___block_invoke_2;
  v10[3] = &unk_1E7B7F020;
  v11 = v3;
  v8 = v3;
  v9 = v6;
  [v7 animateWithDuration:v12 animations:v10 completion:0.3];
}

@end