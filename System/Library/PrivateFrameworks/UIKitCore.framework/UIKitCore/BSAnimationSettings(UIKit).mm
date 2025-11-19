@interface BSAnimationSettings(UIKit)
+ (void)tryAnimatingWithSettings:()UIKit fromCurrentState:actions:completion:;
@end

@implementation BSAnimationSettings(UIKit)

+ (void)tryAnimatingWithSettings:()UIKit fromCurrentState:actions:completion:
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"BSAnimationSettings+UIKit.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"animations"}];
  }

  [v11 duration];
  v15 = v14;
  [v11 delay];
  v17 = v16;
  v18 = [v11 timingFunction];
  if ([v11 isSpringAnimation])
  {
    v19 = v11;
    [v19 duration];
    v21 = v20;
    [v19 delay];
    v23 = v22;
    if (a4)
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    [v19 mass];
    v26 = v25;
    [v19 stiffness];
    v28 = v27;
    [v19 damping];
    v30 = v29;
    [v19 initialVelocity];
    v32 = v31;

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __91__BSAnimationSettings_UIKit__tryAnimatingWithSettings_fromCurrentState_actions_completion___block_invoke;
    v40[3] = &unk_1E70F0F78;
    v41 = v12;
    [UIView _animateUsingSpringWithDuration:v24 delay:v40 options:v13 mass:v21 stiffness:v23 damping:v26 initialVelocity:v28 animations:v30 completion:v32];
    v33 = v41;
    goto LABEL_8;
  }

  if (v18)
  {
    v34 = objc_alloc_init(_UISceneSettingsMediaTimingAnimationFactory);
    [(_UISceneSettingsMediaTimingAnimationFactory *)v34 set_timingFunctionForAnimation:v18];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __91__BSAnimationSettings_UIKit__tryAnimatingWithSettings_fromCurrentState_actions_completion___block_invoke_2;
    v38[3] = &unk_1E70F0F78;
    v39 = v12;
    [UIView _animateWithDuration:393216 delay:v34 options:v38 factory:v13 animations:v15 completion:v17];

    goto LABEL_11;
  }

  if (v15 > 0.0)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __91__BSAnimationSettings_UIKit__tryAnimatingWithSettings_fromCurrentState_actions_completion___block_invoke_3;
    v36[3] = &unk_1E70F0F78;
    v37 = v12;
    [UIView animateWithDuration:0 delay:v36 options:v13 animations:v15 completion:v17];
    v33 = v37;
LABEL_8:

    goto LABEL_11;
  }

  (*(v12 + 2))(v12, 0);
  if (v13)
  {
    v13[2](v13, 1);
  }

LABEL_11:
}

@end