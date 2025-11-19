@interface _UIAlertControllerAnimatedTransitioning
- (_UIAlertControllerAnimatedTransitioning)initWithInteractionProgress:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)_alertControllerForContext:(id)a3;
- (void)_animateTransition:(id)a3 completionBlock:(id)a4;
- (void)animateTransition:(id)a3;
@end

@implementation _UIAlertControllerAnimatedTransitioning

- (_UIAlertControllerAnimatedTransitioning)initWithInteractionProgress:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIAlertControllerAnimatedTransitioning;
  v3 = a3;
  v4 = [(_UIAlertControllerAnimatedTransitioning *)&v6 init];
  [(_UIAlertControllerAnimatedTransitioning *)v4 setInteractionProgress:v3, v6.receiver, v6.super_class];

  return v4;
}

- (id)_alertControllerForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:@"UITransitionContextFromViewController"];
  v6 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];

  if ([(_UIAlertControllerAnimatedTransitioning *)self isPresentation])
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [UIAlertController _alertControllerContainedInViewController:v7];

  return v8;
}

- (double)transitionDuration:(id)a3
{
  v4 = [(_UIAlertControllerAnimatedTransitioning *)self _alertControllerForContext:a3];
  v5 = [v4 _visualStyle];
  [v5 transitionDurationForPresentation:-[_UIAlertControllerAnimatedTransitioning isPresentation](self ofAlertController:{"isPresentation"), v4}];
  v7 = v6;

  return v7;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(_UIAlertControllerAnimatedTransitioning *)self _alertControllerForContext:v4];
  v6 = [v5 _visualStyle];
  v7 = [v5 _systemProvidedPresentationDelegate];
  v8 = [v4 isInteractive];
  v9 = [(_UIAlertControllerAnimatedTransitioning *)self isPresentation];
  v10 = [v6 transitionOfType:!v9 shouldBeInteractiveForAlertController:v5];
  if (v8 && v9 && ([(_UIAlertControllerAnimatedTransitioning *)self interactionProgress], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && v10)
  {
    if (+[UIAlertController _shouldUsePresentationController])
    {
      [v5 view];
    }

    else
    {
      [v5 _foregroundView];
    }
    v16 = ;
    [(_UIAlertControllerAnimatedTransitioning *)self transitionDuration:v4];
    v19 = v18;
    v20 = [v4 containerView];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke;
    v26[3] = &unk_1E70F4660;
    v27 = v4;
    v28 = v7;
    v29 = v5;
    v30 = self;
    v17 = v4;
    v14 = v5;
    v15 = v7;
    [v6 animateRevealOfAlertControllerView:v16 alertController:v14 inContainerView:v20 duration:v26 completionBlock:v19];
  }

  else
  {
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [v7 _didBeginSystemProvidedPresentationOfAlertController:v5];
      }

      v12 = +[UIDevice currentDevice];
      v13 = [v12 _tapticEngine];
      [v13 actuateFeedback:1];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke_3;
    v21[3] = &unk_1E70F4688;
    v25 = v10;
    v22 = v7;
    v23 = v5;
    v24 = v4;
    v14 = v4;
    v15 = v5;
    v16 = v7;
    [(_UIAlertControllerAnimatedTransitioning *)self _animateTransition:v14 completionBlock:v21];

    v17 = v22;
  }
}

- (void)_animateTransition:(id)a3 completionBlock:(id)a4
{
  v19 = a2;
  v23 = a3;
  v21 = a4;
  v6 = [v23 viewControllerForKey:@"UITransitionContextFromViewController"];
  v7 = [v23 viewControllerForKey:@"UITransitionContextToViewController"];
  v8 = [v23 containerView];
  v22 = v6;
  if (_UIAppUseModernRotationAndPresentationBehaviors() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v23 _toView];
    v10 = [v23 _fromView];
  }

  else
  {
    v10 = [v6 view];
    v9 = [v7 view];
    v11 = [v23 containerView];
    [v11 addSubview:v9];
  }

  v12 = [(_UIAlertControllerAnimatedTransitioning *)self isPresentation];
  v13 = [(_UIAlertControllerAnimatedTransitioning *)self _alertControllerForContext:v23];
  if (+[UIAlertController _shouldUsePresentationController])
  {
    [v13 view];
  }

  else
  {
    [v13 _foregroundView];
  }
  v14 = ;
  [v13 _updateViewFrameForLandscapePresentationInShimIfNecessary];
  [v8 layoutBelowIfNeeded];
  v15 = [v13 _visualStyle];
  if (!v15)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:v20 object:self file:@"_UIAlertControllerTransitioning.m" lineNumber:142 description:@"UIAlertController is expected to have a visual style during transitioning"];
  }

  if (v12)
  {
    v16 = v9;
  }

  else
  {
    v16 = v10;
  }

  v17 = v16;
  [(_UIAlertControllerAnimatedTransitioning *)self transitionDuration:v23];
  [v15 animateAlertControllerView:v14 ofAlertController:v13 forPresentation:v12 inContainerView:v8 descendantOfContainerView:v17 duration:v21 completionBlock:?];
}

@end