@interface _UIPreviewInteractionPresentationTransition
- (_UIPreviewInteractionPresentationTransition)init;
- (double)transitionDuration:(id)duration;
- (id)_newPushDecayAnimator;
- (id)_newReducedMotionTimingCurveProviderForPreviewTransition;
- (id)_newTimingCurveProviderForPreviewTransition;
- (id)_preparedPresentationAnimator;
- (id)_previewPresentationControllerForTransitionContext:(id)context;
- (id)_previewPresentationControllerForViewController:(id)controller;
- (void)_applyPushDecayEffectTransformToView:(id)view;
- (void)_performCancelTransition;
- (void)_performFinishTransition;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
- (void)cancelTransition;
- (void)finishTransition;
- (void)startInteractiveTransition:(id)transition;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation _UIPreviewInteractionPresentationTransition

- (_UIPreviewInteractionPresentationTransition)init
{
  v6.receiver = self;
  v6.super_class = _UIPreviewInteractionPresentationTransition;
  v2 = [(_UIPreviewInteractionPresentationTransition *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_didScheduleFinishTransition = 0;
    v2->_interactiveTransitionFraction = 0.1;
    v4 = v2;
  }

  return v3;
}

- (void)updateInteractiveTransition:(double)transition
{
  if (!self->_didScheduleFinishTransition && !self->_didScheduleCancelTransition && [(UIViewControllerContextTransitioning *)self->_transitionContext isInteractive])
  {
    _preparedPresentationAnimator = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
    if (([_preparedPresentationAnimator isRunning] & 1) == 0)
    {
      [_preparedPresentationAnimator setFractionComplete:self->_interactiveTransitionFraction * transition];
      [(UIViewControllerContextTransitioning *)self->_transitionContext updateInteractiveTransition:transition];
    }
  }
}

- (void)finishTransition
{
  if (!self->_didScheduleFinishTransition)
  {
    if (self->_transitionContext)
    {
      [(_UIPreviewInteractionPresentationTransition *)self _performFinishTransition];
    }

    else
    {
      *&self->_didScheduleFinishTransition = 1;
    }
  }
}

- (void)cancelTransition
{
  if (!self->_didScheduleCancelTransition)
  {
    if (self->_transitionContext)
    {
      [(_UIPreviewInteractionPresentationTransition *)self _performCancelTransition];
    }

    else
    {
      *&self->_didScheduleFinishTransition = 256;
    }
  }
}

- (double)transitionDuration:(id)duration
{
  _preparedPresentationAnimator = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  [_preparedPresentationAnimator duration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  _preparedPresentationAnimator = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  [_preparedPresentationAnimator addAnimations:&__block_literal_global_462];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___UIPreviewInteractionPresentationTransition_animateTransition___block_invoke_2;
  v7[3] = &unk_1E70F5DB8;
  v8 = transitionCopy;
  v6 = transitionCopy;
  [_preparedPresentationAnimator addCompletion:v7];
  if (self->_shouldPerformAsDismissTransition)
  {
    [_preparedPresentationAnimator startAnimation];
  }

  else
  {
    [_preparedPresentationAnimator pauseAnimation];
  }
}

- (void)animationEnded:(BOOL)ended
{
  presentationAnimator = self->_presentationAnimator;
  self->_presentationAnimator = 0;
}

- (void)startInteractiveTransition:(id)transition
{
  transitionCopy = transition;
  objc_storeStrong(&self->_transitionContext, transition);
  [(_UIPreviewInteractionPresentationTransition *)self animateTransition:transitionCopy];
  if (self->_didScheduleFinishTransition || self->_didScheduleCancelTransition)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74___UIPreviewInteractionPresentationTransition_startInteractiveTransition___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_performFinishTransition
{
  _preparedPresentationAnimator = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  if ([(_UIPreviewInteractionPresentationTransition *)self _shouldReduceMotion])
  {
    _newReducedMotionTimingCurveProviderForPreviewTransition = [(_UIPreviewInteractionPresentationTransition *)self _newReducedMotionTimingCurveProviderForPreviewTransition];
    [_preparedPresentationAnimator continueAnimationWithTimingParameters:_newReducedMotionTimingCurveProviderForPreviewTransition durationFactor:1.0 - self->_interactiveTransitionFraction];
  }

  else
  {
    _newReducedMotionTimingCurveProviderForPreviewTransition = [(_UIPreviewInteractionPresentationTransition *)self _newTimingCurveProviderForPreviewTransition];
    [_preparedPresentationAnimator continueAnimationWithTimingParameters:_newReducedMotionTimingCurveProviderForPreviewTransition durationFactor:1.0 - self->_interactiveTransitionFraction];
    _newPushDecayAnimator = [(_UIPreviewInteractionPresentationTransition *)self _newPushDecayAnimator];
    [_newPushDecayAnimator startAnimation];
  }

  [(UIViewControllerContextTransitioning *)self->_transitionContext finishInteractiveTransition];
}

- (void)_performCancelTransition
{
  _preparedPresentationAnimator = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  [_preparedPresentationAnimator setReversed:1];
  [_preparedPresentationAnimator startAnimation];
  [(UIViewControllerContextTransitioning *)self->_transitionContext cancelInteractiveTransition];
}

- (id)_previewPresentationControllerForTransitionContext:(id)context
{
  v4 = [context viewControllerForKey:@"UITransitionContextToViewController"];
  v5 = [(_UIPreviewInteractionPresentationTransition *)self _previewPresentationControllerForViewController:v4];

  return v5;
}

- (id)_previewPresentationControllerForViewController:(id)controller
{
  v3 = [controller _existingPresentationControllerImmediate:1 effective:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_preparedPresentationAnimator
{
  presentationAnimator = self->_presentationAnimator;
  if (presentationAnimator)
  {
    v3 = presentationAnimator;
  }

  else
  {
    v5 = [[UICubicTimingParameters alloc] initWithAnimationCurve:3];
    v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v5 timingParameters:0.28];
    v6 = self->_presentationAnimator;
    self->_presentationAnimator = v3;
  }

  return v3;
}

- (id)_newTimingCurveProviderForPreviewTransition
{
  v2 = [UISpringTimingParameters alloc];

  return [(UISpringTimingParameters *)v2 initWithMass:0.84 stiffness:420.0 damping:1800.0 initialVelocity:0.0, 0.0];
}

- (id)_newReducedMotionTimingCurveProviderForPreviewTransition
{
  v2 = [UICubicTimingParameters alloc];

  return [(UICubicTimingParameters *)v2 initWithAnimationCurve:0];
}

- (id)_newPushDecayAnimator
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:18.0 stiffness:820.0 damping:400.0 initialVelocity:0.0, 0.0];
  v4 = [[UIViewPropertyAnimator alloc] initWithDuration:v3 timingParameters:0.0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___UIPreviewInteractionPresentationTransition__newPushDecayAnimator__block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [(UIViewPropertyAnimator *)v4 addAnimations:v6];
  [(UIViewPropertyAnimator *)v4 setUserInteractionEnabled:0];

  return v4;
}

- (void)_applyPushDecayEffectTransformToView:(id)view
{
  if (view)
  {
    memset(&v6, 0, sizeof(v6));
    viewCopy = view;
    [viewCopy transform];
    v4 = v6;
    CGAffineTransformScale(&v5, &v4, 1.26, 1.26);
    v4 = v5;
    [viewCopy setTransform:&v4];
    v4 = v6;
    [viewCopy setTransform:&v4];
  }
}

@end