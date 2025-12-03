@interface _UIAlertControllerAnimatedTransitioning
- (_UIAlertControllerAnimatedTransitioning)initWithInteractionProgress:(id)progress;
- (double)transitionDuration:(id)duration;
- (id)_alertControllerForContext:(id)context;
- (void)_animateTransition:(id)transition completionBlock:(id)block;
- (void)animateTransition:(id)transition;
@end

@implementation _UIAlertControllerAnimatedTransitioning

- (_UIAlertControllerAnimatedTransitioning)initWithInteractionProgress:(id)progress
{
  v6.receiver = self;
  v6.super_class = _UIAlertControllerAnimatedTransitioning;
  progressCopy = progress;
  v4 = [(_UIAlertControllerAnimatedTransitioning *)&v6 init];
  [(_UIAlertControllerAnimatedTransitioning *)v4 setInteractionProgress:progressCopy, v6.receiver, v6.super_class];

  return v4;
}

- (id)_alertControllerForContext:(id)context
{
  contextCopy = context;
  v5 = [contextCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  v6 = [contextCopy viewControllerForKey:@"UITransitionContextToViewController"];

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

- (double)transitionDuration:(id)duration
{
  v4 = [(_UIAlertControllerAnimatedTransitioning *)self _alertControllerForContext:duration];
  _visualStyle = [v4 _visualStyle];
  [_visualStyle transitionDurationForPresentation:-[_UIAlertControllerAnimatedTransitioning isPresentation](self ofAlertController:{"isPresentation"), v4}];
  v7 = v6;

  return v7;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [(_UIAlertControllerAnimatedTransitioning *)self _alertControllerForContext:transitionCopy];
  _visualStyle = [v5 _visualStyle];
  _systemProvidedPresentationDelegate = [v5 _systemProvidedPresentationDelegate];
  isInteractive = [transitionCopy isInteractive];
  isPresentation = [(_UIAlertControllerAnimatedTransitioning *)self isPresentation];
  v10 = [_visualStyle transitionOfType:!isPresentation shouldBeInteractiveForAlertController:v5];
  if (isInteractive && isPresentation && ([(_UIAlertControllerAnimatedTransitioning *)self interactionProgress], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && v10)
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
    [(_UIAlertControllerAnimatedTransitioning *)self transitionDuration:transitionCopy];
    v19 = v18;
    containerView = [transitionCopy containerView];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke;
    v26[3] = &unk_1E70F4660;
    v27 = transitionCopy;
    v28 = _systemProvidedPresentationDelegate;
    v29 = v5;
    selfCopy = self;
    v17 = transitionCopy;
    v14 = v5;
    v15 = _systemProvidedPresentationDelegate;
    [_visualStyle animateRevealOfAlertControllerView:v16 alertController:v14 inContainerView:containerView duration:v26 completionBlock:v19];
  }

  else
  {
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [_systemProvidedPresentationDelegate _didBeginSystemProvidedPresentationOfAlertController:v5];
      }

      v12 = +[UIDevice currentDevice];
      _tapticEngine = [v12 _tapticEngine];
      [_tapticEngine actuateFeedback:1];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke_3;
    v21[3] = &unk_1E70F4688;
    v25 = v10;
    v22 = _systemProvidedPresentationDelegate;
    v23 = v5;
    v24 = transitionCopy;
    v14 = transitionCopy;
    v15 = v5;
    v16 = _systemProvidedPresentationDelegate;
    [(_UIAlertControllerAnimatedTransitioning *)self _animateTransition:v14 completionBlock:v21];

    v17 = v22;
  }
}

- (void)_animateTransition:(id)transition completionBlock:(id)block
{
  v19 = a2;
  transitionCopy = transition;
  blockCopy = block;
  v6 = [transitionCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  v7 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  containerView = [transitionCopy containerView];
  v22 = v6;
  if (_UIAppUseModernRotationAndPresentationBehaviors() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _toView = [transitionCopy _toView];
    _fromView = [transitionCopy _fromView];
  }

  else
  {
    _fromView = [v6 view];
    _toView = [v7 view];
    containerView2 = [transitionCopy containerView];
    [containerView2 addSubview:_toView];
  }

  isPresentation = [(_UIAlertControllerAnimatedTransitioning *)self isPresentation];
  v13 = [(_UIAlertControllerAnimatedTransitioning *)self _alertControllerForContext:transitionCopy];
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
  [containerView layoutBelowIfNeeded];
  _visualStyle = [v13 _visualStyle];
  if (!_visualStyle)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v20 object:self file:@"_UIAlertControllerTransitioning.m" lineNumber:142 description:@"UIAlertController is expected to have a visual style during transitioning"];
  }

  if (isPresentation)
  {
    v16 = _toView;
  }

  else
  {
    v16 = _fromView;
  }

  v17 = v16;
  [(_UIAlertControllerAnimatedTransitioning *)self transitionDuration:transitionCopy];
  [_visualStyle animateAlertControllerView:v14 ofAlertController:v13 forPresentation:isPresentation inContainerView:containerView descendantOfContainerView:v17 duration:blockCopy completionBlock:?];
}

@end