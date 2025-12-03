@interface _UINavigationCrossfadeAnimator
- (void)animateTransition:(id)transition;
@end

@implementation _UINavigationCrossfadeAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  v7 = [transitionCopy viewForKey:@"UITransitionContextToView"];
  v8 = [transitionCopy viewForKey:@"UITransitionContextFromView"];
  [transitionCopy finalFrameForViewController:v6];
  [v7 setFrame:?];
  [v7 setAlpha:0.0];
  [containerView addSubview:v7];
  if (_UISolariumEnabled() && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52___UINavigationCrossfadeAnimator_animateTransition___block_invoke;
    v23[3] = &unk_1E70F3590;
    v24 = v7;
    [UIView performWithoutAnimation:v23];
  }

  [v8 alpha];
  v10 = v9;
  [(_UINavigationCrossfadeAnimator *)self transitionDuration:transitionCopy];
  v12 = v11;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52___UINavigationCrossfadeAnimator_animateTransition___block_invoke_2;
  v20[3] = &unk_1E70F35B8;
  v21 = v7;
  v22 = v8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52___UINavigationCrossfadeAnimator_animateTransition___block_invoke_3;
  v16[3] = &unk_1E70F8A88;
  v19 = v10;
  v17 = v22;
  v18 = transitionCopy;
  v13 = transitionCopy;
  v14 = v22;
  v15 = v7;
  [UIView animateWithDuration:v20 animations:v16 completion:v12];
}

@end