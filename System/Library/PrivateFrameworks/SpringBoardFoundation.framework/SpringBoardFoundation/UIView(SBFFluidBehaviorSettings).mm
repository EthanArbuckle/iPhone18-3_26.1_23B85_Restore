@interface UIView(SBFFluidBehaviorSettings)
+ (void)sb_animateWithSettings:()SBFFluidBehaviorSettings interactive:animations:completion:;
+ (void)sb_animateWithSettings:()SBFFluidBehaviorSettings mode:animations:completion:;
@end

@implementation UIView(SBFFluidBehaviorSettings)

+ (void)sb_animateWithSettings:()SBFFluidBehaviorSettings interactive:animations:completion:
{
  v15 = a3;
  v9 = a5;
  v10 = a6;
  behaviorType = [v15 behaviorType];
  if ((behaviorType - 1) >= 2)
  {
    if (behaviorType)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x1E69DD250];
    v13 = _SBModifyFrameRateForAnimationBlockFromSettings(v9, v15);
    [v14 _animateWithFrictionBounceAnimations:v13 completion:v10];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v13 = _SBModifyFrameRateForAnimationBlockFromSettings(v9, v15);
    [v12 _animateUsingSpringBehavior:v15 tracking:a4 animations:v13 completion:v10];
  }

LABEL_6:
}

+ (void)sb_animateWithSettings:()SBFFluidBehaviorSettings mode:animations:completion:
{
  v18 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        selfCopy2 = self;
        v14 = v18;
        v15 = 0;
        break;
      case 4:
        v17 = MEMORY[0x1E69DD250];
        currentHandler = _SBModifyFrameRateForAnimationBlockFromSettings(v11, v18);
        [v17 _animateByRetargetingAnimations:currentHandler completion:v12];
        goto LABEL_17;
      case 5:
        selfCopy2 = self;
        v14 = v18;
        v15 = 1;
        break;
      default:
        goto LABEL_18;
    }

    [selfCopy2 sb_animateWithSettings:v14 interactive:v15 animations:v11 completion:v12];
    goto LABEL_18;
  }

  switch(a4)
  {
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIView+SBFFluidBehaviorSettings.m" lineNumber:43 description:{@"sb_animateWithSettings needs a explicit update mode, not SBAnimationUpdateModeUnspecified"}];
LABEL_17:

      break;
    case 1:
      v11[2](v11);
      if (!v12)
      {
        break;
      }

      goto LABEL_15;
    case 2:
      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v11];
      if (v12)
      {
LABEL_15:
        v12[2](v12, 1, 0);
      }

      break;
  }

LABEL_18:
}

@end