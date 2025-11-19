@interface _UIAnimationCoordinator
- (CGRect)endFrame;
- (CGRect)startFrame;
- (NSMutableDictionary)stash;
- (_UIViewControllerOneToOneTransitionContext)transitionContext;
- (void)_updateTransitionContext;
- (void)animate;
- (void)animateInteractively;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)cancelInteractiveAnimation;
- (void)dealloc;
- (void)finishInteractiveAnimation;
- (void)setContainerView:(id)a3;
- (void)setDuration:(double)a3;
- (void)setEndFrame:(CGRect)a3;
- (void)setStartFrame:(CGRect)a3;
- (void)setViewController:(id)a3;
- (void)updateInteractiveProgress:(double)a3;
@end

@implementation _UIAnimationCoordinator

- (_UIViewControllerOneToOneTransitionContext)transitionContext
{
  transitionContext = self->_transitionContext;
  if (!transitionContext)
  {
    v4 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
    v5 = self->_transitionContext;
    self->_transitionContext = v4;

    transitionContext = self->_transitionContext;
  }

  return transitionContext;
}

- (void)dealloc
{
  transitionContext = self->_transitionContext;
  if (transitionContext)
  {
    [(_UIViewControllerTransitionContext *)transitionContext _setInteractor:0];
    [(_UIViewControllerTransitionContext *)self->_transitionContext _setAnimator:0];
    v4 = self->_transitionContext;
    self->_transitionContext = 0;
  }

  v5.receiver = self;
  v5.super_class = _UIAnimationCoordinator;
  [(_UIAnimationCoordinator *)&v5 dealloc];
}

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    [(_UIViewControllerTransitionContext *)self->_transitionContext _setDuration:?];
  }
}

- (NSMutableDictionary)stash
{
  stash = self->_stash;
  if (!stash)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_stash;
    self->_stash = v4;

    stash = self->_stash;
  }

  return stash;
}

- (void)setContainerView:(id)a3
{
  v5 = a3;
  if (self->_containerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_containerView, a3);
    [(_UIViewControllerTransitionContext *)self->_transitionContext _setContainerView:self->_containerView];
    v5 = v6;
  }
}

- (void)setViewController:(id)a3
{
  v5 = a3;
  if (self->_viewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewController, a3);
    [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext _setFromViewController:self->_viewController];
    v5 = v6;
  }
}

- (void)setStartFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_startFrame))
  {
    self->_startFrame.origin.x = x;
    self->_startFrame.origin.y = y;
    self->_startFrame.size.width = width;
    self->_startFrame.size.height = height;
    [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext _setToStartFrame:x, y, width, height];
    transitionContext = self->_transitionContext;
    v9 = self->_startFrame.origin.x;
    v10 = self->_startFrame.origin.y;
    v11 = self->_startFrame.size.width;
    v12 = self->_startFrame.size.height;

    [(_UIViewControllerOneToOneTransitionContext *)transitionContext _setFromStartFrame:v9, v10, v11, v12];
  }
}

- (void)setEndFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_endFrame))
  {
    self->_endFrame.origin.x = x;
    self->_endFrame.origin.y = y;
    self->_endFrame.size.width = width;
    self->_endFrame.size.height = height;
    [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext _setToEndFrame:x, y, width, height];
    transitionContext = self->_transitionContext;
    v9 = self->_endFrame.origin.x;
    v10 = self->_endFrame.origin.y;
    v11 = self->_endFrame.size.width;
    v12 = self->_endFrame.size.height;

    [(_UIViewControllerOneToOneTransitionContext *)transitionContext _setFromEndFrame:v9, v10, v11, v12];
  }
}

- (void)_updateTransitionContext
{
  v3 = [(_UIAnimationCoordinator *)self transitionContext];
  v4 = self->_duration > 0.0 && self->_animator != 0;
  v5 = v3;
  [v3 _setIsAnimated:v4];
  [v5 _setFromViewController:self->_viewController];
  [v5 _setToViewController:0];
  [v5 _setContainerView:self->_containerView];
  [v5 _setToStartFrame:{self->_startFrame.origin.x, self->_startFrame.origin.y, self->_startFrame.size.width, self->_startFrame.size.height}];
  [v5 _setFromStartFrame:{self->_startFrame.origin.x, self->_startFrame.origin.y, self->_startFrame.size.width, self->_startFrame.size.height}];
  [v5 _setToEndFrame:{self->_endFrame.origin.x, self->_endFrame.origin.y, self->_endFrame.size.width, self->_endFrame.size.height}];
  [v5 _setFromEndFrame:{self->_endFrame.origin.x, self->_endFrame.origin.y, self->_endFrame.size.width, self->_endFrame.size.height}];
  [v5 _setAnimator:self];
}

- (void)animate
{
  [(_UIAnimationCoordinator *)self _updateTransitionContext];
  if (self->_preperation)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __34___UIAnimationCoordinator_animate__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [UIView performWithoutAnimation:v3];
  }

  [(_UIAnimationCoordinator *)self animateTransition:self->_transitionContext];
}

- (void)animateInteractively
{
  [(_UIAnimationCoordinator *)self _updateTransitionContext];
  v3 = objc_alloc_init(UIPercentDrivenInteractiveTransition);
  interactiveTransition = self->_interactiveTransition;
  self->_interactiveTransition = v3;

  [(UIPercentDrivenInteractiveTransition *)self->_interactiveTransition startInteractiveTransition:self->_transitionContext];
  [(_UIViewControllerTransitionContext *)self->_transitionContext _setInteractor:self->_interactiveTransition];
  [(_UIViewControllerTransitionContext *)self->_transitionContext _setTransitionIsInFlight:1];
  [(_UIViewControllerTransitionContext *)self->_transitionContext _addInteractiveUpdateHandler:&__block_literal_global_159];
  if (self->_preperation)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47___UIAnimationCoordinator_animateInteractively__block_invoke_2;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)updateInteractiveProgress:(double)a3
{
  interactiveTransition = self->_interactiveTransition;
  if (!interactiveTransition)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIAnimationCoordinator.m" lineNumber:151 description:@"Trying to update an interactive transition that was not started interactively"];

    interactiveTransition = self->_interactiveTransition;
  }

  v5 = 0.0;
  if (a3 >= 0.0)
  {
    v5 = a3;
    if (a3 >= 1.0)
    {
      v5 = nextafter(1.0, -1.0);
    }
  }

  [(UIPercentDrivenInteractiveTransition *)interactiveTransition updateInteractiveTransition:v5];
}

- (void)cancelInteractiveAnimation
{
  interactiveTransition = self->_interactiveTransition;
  if (!interactiveTransition)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIAnimationCoordinator.m" lineNumber:157 description:@"Trying to cancel an interactive transition that was not started interactively"];

    interactiveTransition = self->_interactiveTransition;
  }

  [(UIPercentDrivenInteractiveTransition *)interactiveTransition cancelInteractiveTransition];
}

- (void)finishInteractiveAnimation
{
  interactiveTransition = self->_interactiveTransition;
  if (!interactiveTransition)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIAnimationCoordinator.m" lineNumber:163 description:@"Trying to finish an interactive transition that was not started interactively"];

    interactiveTransition = self->_interactiveTransition;
  }

  [(UIPercentDrivenInteractiveTransition *)interactiveTransition finishInteractiveTransition];
}

- (void)animateTransition:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45___UIAnimationCoordinator_animateTransition___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  if ([(_UIViewControllerTransitionContext *)self->_transitionContext isAnimated])
  {
    if (self->_interactiveTransition)
    {
      v5 = [(UIView *)self->_containerView window];
    }

    else
    {
      v5 = 0;
    }

    [v5 beginDisablingInterfaceAutorotation];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45___UIAnimationCoordinator_animateTransition___block_invoke_2;
    v17[3] = &unk_1E70F3590;
    v17[4] = self;
    v7 = _Block_copy(v17);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __45___UIAnimationCoordinator_animateTransition___block_invoke_3;
    v14 = &unk_1E70FE248;
    v8 = v5;
    v15 = v8;
    v16 = v4;
    v9 = _Block_copy(&v11);
    duration = self->_duration;
    if (self->_interactiveTransition)
    {
      [UIView animateWithDuration:196608 delay:v7 options:v9 animations:duration completion:0.0, v11, v12, v13, v14, v15];
    }

    else
    {
      [UIView animateWithDuration:0 delay:v7 usingSpringWithDamping:v9 initialSpringVelocity:duration options:0.0 animations:1.0 completion:0.0, v11, v12, v13, v14, v15];
    }
  }

  else
  {
    animator = self->_animator;
    if (animator)
    {
      animator[2](animator, self);
    }

    [(_UIViewControllerTransitionContext *)self->_transitionContext __runAlongsideAnimations];
    v4[2](v4);
  }
}

- (void)animationEnded:(BOOL)a3
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self);
  }
}

- (CGRect)startFrame
{
  x = self->_startFrame.origin.x;
  y = self->_startFrame.origin.y;
  width = self->_startFrame.size.width;
  height = self->_startFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endFrame
{
  x = self->_endFrame.origin.x;
  y = self->_endFrame.origin.y;
  width = self->_endFrame.size.width;
  height = self->_endFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end