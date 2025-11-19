@interface SBFocusAnimator
@end

@implementation SBFocusAnimator

void __38___SBFocusAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38___SBFocusAnimator_animateTransition___block_invoke_2;
  v9[3] = &unk_2783A8C18;
  v10 = *(a1 + 32);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1703937 updateReason:v9 animations:{v6, v7, v8}];
}

uint64_t __38___SBFocusAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 __runAlongsideAnimations];
  }

  return result;
}

@end