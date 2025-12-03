@interface SBLockToAppStatusBarAnimator
- (void)animateStatusBarFromLockToHome;
@end

@implementation SBLockToAppStatusBarAnimator

- (void)animateStatusBarFromLockToHome
{
  v3 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v3 coverSheetViewController];
  _sbWindowScene = [coverSheetViewController _sbWindowScene];

  statusBarManager = [_sbWindowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];
  if (SBReduceMotion())
  {
    statusBarManager2 = [_sbWindowScene statusBarManager];
    [statusBarManager2 updateHomeScreenStatusBarLegibility];

    [v3 updateSpringBoardStatusBarForLockScreenTeardown];
    if ([statusBarManager isStatusBarEffectivelyHidden])
    {
      v16 = MEMORY[0x277CF0D38];
      rootSettings = [MEMORY[0x277D661A0] rootSettings];
      iconAnimationSettings = [rootSettings iconAnimationSettings];
      reducedMotionSettings = [iconAnimationSettings reducedMotionSettings];
      centralAnimationSettings = [reducedMotionSettings centralAnimationSettings];
      bSAnimationSettings = [centralAnimationSettings BSAnimationSettings];
      v17 = [v16 factoryWithSettings:bSAnimationSettings];

      v14 = MEMORY[0x277CF0D38];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke;
      v31[3] = &unk_2783A92D8;
      v31[4] = self;
      v32 = assertionManager;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_2;
      v30[3] = &unk_2783A9398;
      v30[4] = self;
      [v14 animateWithFactory:v17 actions:v31 completion:v30];
    }
  }

  else
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__102;
    v28[4] = __Block_byref_object_dispose__102;
    v29 = 0;
    v15 = MEMORY[0x277D75D18];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_21;
    v24[3] = &unk_2783AB258;
    v27 = v28;
    v25 = assertionManager;
    selfCopy = self;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_2_26;
    v18[3] = &unk_2783BE978;
    v19 = _sbWindowScene;
    v20 = v3;
    selfCopy2 = self;
    v22 = v28;
    v23 = 0x3FD0000000000000;
    [v15 animateWithDuration:v24 animations:v18 completion:0.25];

    _Block_object_dispose(v28, 8);
  }
}

void __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) acquireDisableAlphaChangesAssertionWithReason:@"SBLockToAppStatusBarAnimator"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

void __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[SBLockToAppStatusBarAnimator animateStatusBarFromLockToHome]_block_invoke"];
  v4 = [v2 newSettingsAssertionWithStatusBarHidden:1 atLevel:9 reason:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 48) + 8) + 40) acquire];
  v7 = [*(a1 + 32) acquireDisableAlphaChangesAssertionWithReason:@"SBLockToAppStatusBarAnimator"];
  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  *(v8 + 8) = v7;
}

uint64_t __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_2_26(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBarManager];
  [v2 updateHomeScreenStatusBarLegibility];

  [*(a1 + 40) updateSpringBoardStatusBarForLockScreenTeardown];
  [*(*(a1 + 48) + 8) invalidate];
  v3 = *(a1 + 48);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_3;
  v7[3] = &unk_2783A9718;
  v7[4] = *(a1 + 56);
  return [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v5];
}

void __62__SBLockToAppStatusBarAnimator_animateStatusBarFromLockToHome__block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end