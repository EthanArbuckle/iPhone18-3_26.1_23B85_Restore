@interface UIView(SUIAFluidBehaviorSettings)
+ (void)suia_animateWithSettings:()SUIAFluidBehaviorSettings interactive:animations:completion:;
+ (void)suia_animateWithSettings:()SUIAFluidBehaviorSettings mode:animations:completion:;
- (void)suia_replaceInProcessAnimationForKeyPath:()SUIAFluidBehaviorSettings settings:interactive:;
- (void)suia_replaceInProcessAnimationForKeyPath:()SUIAFluidBehaviorSettings settings:mode:;
@end

@implementation UIView(SUIAFluidBehaviorSettings)

+ (void)suia_animateWithSettings:()SUIAFluidBehaviorSettings interactive:animations:completion:
{
  v13 = a3;
  v9 = a5;
  v10 = a6;
  if ([v13 behaviorType] <= 1)
  {
    v11 = MEMORY[0x277D75D18];
    v12 = _SUIAModifyFrameRateForAnimationBlockFromSettings(v9, v13);
    [v11 _animateUsingSpringBehavior:v13 tracking:a4 animations:v12 completion:v10];
  }
}

+ (void)suia_animateWithSettings:()SUIAFluidBehaviorSettings mode:animations:completion:
{
  v18 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v13 = a1;
        v14 = v18;
        v15 = 0;
        break;
      case 4:
        v16 = MEMORY[0x277D75D18];
        v17 = _SUIAModifyFrameRateForAnimationBlockFromSettings(v10, v18);
        [v16 _animateByRetargetingAnimations:v17 completion:v12];

        goto LABEL_18;
      case 5:
        v13 = a1;
        v14 = v18;
        v15 = 1;
        break;
      default:
        goto LABEL_18;
    }

    [v13 suia_animateWithSettings:v14 interactive:v15 animations:v10 completion:v12];
    goto LABEL_18;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v10[2](v10);
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_18;
      }

      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v10];
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v12[2](v12, 1, 0);
    goto LABEL_18;
  }

  if (v11)
  {
    (*(v11 + 2))(v11, 0, 0);
  }

LABEL_18:
}

- (void)suia_replaceInProcessAnimationForKeyPath:()SUIAFluidBehaviorSettings settings:mode:
{
  v10 = a3;
  v8 = a4;
  if (a5 == 5)
  {
    v9 = 1;
  }

  else
  {
    if (a5 != 3)
    {
      goto LABEL_6;
    }

    v9 = 0;
  }

  [a1 suia_replaceInProcessAnimationForKeyPath:v10 settings:v8 interactive:v9];
LABEL_6:
}

- (void)suia_replaceInProcessAnimationForKeyPath:()SUIAFluidBehaviorSettings settings:interactive:
{
  v9 = a3;
  v8 = a4;
  if ([v8 behaviorType] <= 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [a1 _replaceInProcessAnimationForKey:v9 behavior:v8 interactive:a5];
  }
}

@end