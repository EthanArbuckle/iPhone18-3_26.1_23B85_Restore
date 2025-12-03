@interface _UIPreviewInteractionDismissTransition
- (_UIPreviewInteractionDismissTransition)init;
- (double)transitionDuration:(id)duration;
- (id)_preparedDismissAnimator;
- (void)animateTransition:(id)transition;
@end

@implementation _UIPreviewInteractionDismissTransition

- (_UIPreviewInteractionDismissTransition)init
{
  v6.receiver = self;
  v6.super_class = _UIPreviewInteractionDismissTransition;
  v2 = [(_UIPreviewInteractionDismissTransition *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (double)transitionDuration:(id)duration
{
  _preparedDismissAnimator = [(_UIPreviewInteractionDismissTransition *)self _preparedDismissAnimator];
  [_preparedDismissAnimator duration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  _preparedDismissAnimator = [(_UIPreviewInteractionDismissTransition *)self _preparedDismissAnimator];
  [_preparedDismissAnimator addAnimations:&__block_literal_global_460];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___UIPreviewInteractionDismissTransition_animateTransition___block_invoke_2;
  v7[3] = &unk_1E70F5DB8;
  v8 = transitionCopy;
  v6 = transitionCopy;
  [_preparedDismissAnimator addCompletion:v7];
  [_preparedDismissAnimator startAnimation];
}

- (id)_preparedDismissAnimator
{
  dismissAnimator = self->_dismissAnimator;
  if (dismissAnimator)
  {
    v3 = dismissAnimator;
  }

  else
  {
    v5 = [[UICubicTimingParameters alloc] initWithAnimationCurve:0];
    v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v5 timingParameters:0.2];
    v6 = self->_dismissAnimator;
    self->_dismissAnimator = v3;
  }

  return v3;
}

@end