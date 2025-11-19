@interface _UIPreviewInteractionPresentationTransition
- (_UIPreviewInteractionPresentationTransition)init;
- (double)transitionDuration:(id)a3;
- (id)_newPushDecayAnimator;
- (id)_newReducedMotionTimingCurveProviderForPreviewTransition;
- (id)_newTimingCurveProviderForPreviewTransition;
- (id)_preparedPresentationAnimator;
- (id)_previewPresentationControllerForTransitionContext:(id)a3;
- (id)_previewPresentationControllerForViewController:(id)a3;
- (void)_applyPushDecayEffectTransformToView:(id)a3;
- (void)_performCancelTransition;
- (void)_performFinishTransition;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)cancelTransition;
- (void)finishTransition;
- (void)startInteractiveTransition:(id)a3;
- (void)updateInteractiveTransition:(double)a3;
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

- (void)updateInteractiveTransition:(double)a3
{
  if (!self->_didScheduleFinishTransition && !self->_didScheduleCancelTransition && [(UIViewControllerContextTransitioning *)self->_transitionContext isInteractive])
  {
    v5 = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
    if (([v5 isRunning] & 1) == 0)
    {
      [v5 setFractionComplete:self->_interactiveTransitionFraction * a3];
      [(UIViewControllerContextTransitioning *)self->_transitionContext updateInteractiveTransition:a3];
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

- (double)transitionDuration:(id)a3
{
  v3 = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  [v3 duration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  [v5 addAnimations:&__block_literal_global_462];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___UIPreviewInteractionPresentationTransition_animateTransition___block_invoke_2;
  v7[3] = &unk_1E70F5DB8;
  v8 = v4;
  v6 = v4;
  [v5 addCompletion:v7];
  if (self->_shouldPerformAsDismissTransition)
  {
    [v5 startAnimation];
  }

  else
  {
    [v5 pauseAnimation];
  }
}

- (void)animationEnded:(BOOL)a3
{
  presentationAnimator = self->_presentationAnimator;
  self->_presentationAnimator = 0;
}

- (void)startInteractiveTransition:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_transitionContext, a3);
  [(_UIPreviewInteractionPresentationTransition *)self animateTransition:v5];
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
  v5 = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  if ([(_UIPreviewInteractionPresentationTransition *)self _shouldReduceMotion])
  {
    v3 = [(_UIPreviewInteractionPresentationTransition *)self _newReducedMotionTimingCurveProviderForPreviewTransition];
    [v5 continueAnimationWithTimingParameters:v3 durationFactor:1.0 - self->_interactiveTransitionFraction];
  }

  else
  {
    v3 = [(_UIPreviewInteractionPresentationTransition *)self _newTimingCurveProviderForPreviewTransition];
    [v5 continueAnimationWithTimingParameters:v3 durationFactor:1.0 - self->_interactiveTransitionFraction];
    v4 = [(_UIPreviewInteractionPresentationTransition *)self _newPushDecayAnimator];
    [v4 startAnimation];
  }

  [(UIViewControllerContextTransitioning *)self->_transitionContext finishInteractiveTransition];
}

- (void)_performCancelTransition
{
  v3 = [(_UIPreviewInteractionPresentationTransition *)self _preparedPresentationAnimator];
  [v3 setReversed:1];
  [v3 startAnimation];
  [(UIViewControllerContextTransitioning *)self->_transitionContext cancelInteractiveTransition];
}

- (id)_previewPresentationControllerForTransitionContext:(id)a3
{
  v4 = [a3 viewControllerForKey:@"UITransitionContextToViewController"];
  v5 = [(_UIPreviewInteractionPresentationTransition *)self _previewPresentationControllerForViewController:v4];

  return v5;
}

- (id)_previewPresentationControllerForViewController:(id)a3
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
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

- (void)_applyPushDecayEffectTransformToView:(id)a3
{
  if (a3)
  {
    memset(&v6, 0, sizeof(v6));
    v3 = a3;
    [v3 transform];
    v4 = v6;
    CGAffineTransformScale(&v5, &v4, 1.26, 1.26);
    v4 = v5;
    [v3 setTransform:&v4];
    v4 = v6;
    [v3 setTransform:&v4];
  }
}

@end