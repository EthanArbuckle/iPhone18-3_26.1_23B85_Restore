@interface _SBFocusAnimator
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation _SBFocusAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___SBFocusAnimator_animateTransition___block_invoke;
  v8[3] = &unk_2783A8C18;
  v9 = transitionCopy;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38___SBFocusAnimator_animateTransition___block_invoke_3;
  v6[3] = &unk_2783A9398;
  v7 = v9;
  v5 = v9;
  [v4 fcui_animateWithAnimationType:0 actions:v8 completion:v6];
}

- (double)transitionDuration:(id)duration
{
  durationCopy = duration;
  if (objc_opt_respondsToSelector())
  {
    [durationCopy _duration];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x277D0AA28];
  }

  return v5;
}

@end