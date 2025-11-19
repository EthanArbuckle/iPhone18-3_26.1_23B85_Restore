@interface UIWindowRotationAnimationController
@end

@implementation UIWindowRotationAnimationController

void __58___UIWindowRotationAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58___UIWindowRotationAnimationController_animateTransition___block_invoke_2;
  v13[3] = &unk_1E7104CA8;
  v2 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v2;
  v15 = *(a1 + 48);
  v3 = [*(a1 + 48) windowScene];
  [UIView _performBlockDelayingTriggeringResponderEvents:v13 forScene:v3];

  if ((*(a1 + 88) & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *(a1 + 48);
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
    v8 = [v6 dictionaryWithObjectsAndKeys:{v7, @"UIWindowNewOrientationUserInfoKey", 0}];
    [v4 postNotificationName:@"UIWindowWillAnimateRotationNotification" object:v5 userInfo:v8];
  }

  if (*(a1 + 89) == 1 && *(a1 + 64) != *(a1 + 72))
  {
    v9 = [*(a1 + 48) windowScene];
    v10 = *(a1 + 64);
    v11 = [*(a1 + 56) isAnimated];
    v12 = 0.0;
    if (v11)
    {
      v12 = *(a1 + 80);
    }

    [v9 _updateClientSettingsToInterfaceOrientation:v10 withAnimationDuration:v12];
  }
}

id __58___UIWindowRotationAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = [UIApp keyWindow];
  v3 = [v2 firstResponder];

  v4 = [v3 _window];
  v5 = [*(a1 + 32) animations];
  v5[2]();

  if (dyld_program_sdk_at_least())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58___UIWindowRotationAnimationController_animateTransition___block_invoke_3;
    v12[3] = &unk_1E70F3590;
    v13 = *(a1 + 40);
    [UIView animateWithDuration:0 delay:v12 options:0 animations:0.0 completion:0.0];
  }

  else
  {
    [*(a1 + 40) __runAlongsideAnimations];
  }

  v6 = *(a1 + 48);
  if ((v6 == v4 || ([UIApp keyWindow], v7 = objc_claimAutoreleasedReturnValue(), v7, v6 == v7)) && (objc_msgSend(UIApp, "keyWindow"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstResponder"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v3 != v9))
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __58___UIWindowRotationAnimationController_animateTransition___block_invoke_4(id *a1)
{
  [a1[4] setAnimations:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58___UIWindowRotationAnimationController_animateTransition___block_invoke_5;
  v3[3] = &unk_1E70FE928;
  v4 = a1[5];
  v2 = [a1[6] windowScene];
  [UIView _performBlockDelayingTriggeringResponderEvents:v3 forScene:v2];

  [a1[5] _setAnimator:0];
  [a1[6] _setAnimationController:0];
}

uint64_t __58___UIWindowRotationAnimationController_animateTransition___block_invoke_6(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048621 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end