@interface UIView(SBUISystemApertureAnimationParameters)
+ (void)SBUISA_animateWithSettings:()SBUISystemApertureAnimationParameters animations:completion:;
+ (void)SBUISA_performWithoutAnimationOrRetargeting:()SBUISystemApertureAnimationParameters;
@end

@implementation UIView(SBUISystemApertureAnimationParameters)

+ (void)SBUISA_animateWithSettings:()SBUISystemApertureAnimationParameters animations:completion:
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  if ([v12 isAnimated])
  {
    isRetargeted = [v12 isRetargeted];
    v10 = MEMORY[0x1E69DD250];
    if (isRetargeted)
    {
      [MEMORY[0x1E69DD250] _animateByRetargetingAnimations:v7 completion:v8];
    }

    else
    {
      fluidBehaviorSettings = [v12 fluidBehaviorSettings];
      [v10 _animateUsingSpringBehavior:fluidBehaviorSettings tracking:objc_msgSend(v12 animations:"tracking") completion:{v7, v8}];
    }
  }

  else
  {
    [MEMORY[0x1E69DD250] SBUISA_performWithoutAnimationOrRetargeting:v7];
    if (v8)
    {
      v8[2](v8, 1, 0);
    }
  }
}

+ (void)SBUISA_performWithoutAnimationOrRetargeting:()SBUISystemApertureAnimationParameters
{
  v3 = a3;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__UIView_SBUISystemApertureAnimationParameters__SBUISA_performWithoutAnimationOrRetargeting___block_invoke;
  v6[3] = &unk_1E789DBB8;
  v7 = v3;
  v5 = v3;
  [v4 performWithoutAnimation:v6];
}

@end