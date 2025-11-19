@interface _UIHostedWindowAnimationController
- (void)animateTransition:(id)a3;
@end

@implementation _UIHostedWindowAnimationController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];
  [v4 finalFrameForViewController:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(_UIHostedWindowAnimationController *)self transitionDuration:v4];
  v16 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___UIHostedWindowAnimationController_animateTransition___block_invoke;
  aBlock[3] = &unk_1E70FFF08;
  v17 = v5;
  v34 = v8;
  v35 = v10;
  v36 = v12;
  v37 = v14;
  v31 = v17;
  v32 = self;
  v18 = v4;
  v33 = v18;
  v19 = _Block_copy(aBlock);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __56___UIHostedWindowAnimationController_animateTransition___block_invoke_2;
  v26 = &unk_1E70F4638;
  v27 = self;
  v20 = v18;
  v28 = v20;
  v21 = v17;
  v29 = v21;
  v22 = _Block_copy(&v23);
  if ([v20 isAnimated])
  {
    +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v20 _completionCurve] << 16, v19, v22, v16, 0.0);
    [v20 _setTransitionIsInFlight:1];
  }

  else
  {
    v19[2](v19);
    v22[2](v22, 1);
  }
}

@end