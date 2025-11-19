@interface _UIWindowAnimationController
+ (_UIWindowAnimationController)animationControllerWithWindow:(id)a3;
- (_UIWindowAnimationController)initWithWindow:(id)a3;
- (void)_performCrossfadeAnimationWithContext:(id)a3 windowGeometryUpdatingBlock:(id)a4;
- (void)_performLayoutAnimationWithContext:(id)a3 windowGeometryUpdatingBlock:(id)a4;
- (void)animateTransition:(id)a3;
@end

@implementation _UIWindowAnimationController

+ (_UIWindowAnimationController)animationControllerWithWindow:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithWindow:v3];

  return v4;
}

- (_UIWindowAnimationController)initWithWindow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIWindowAnimationController;
  v5 = [(_UIWindowAnimationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIWindowAnimationController *)v5 setWindow:v4];
    [v4 _setAnimationController:v6];
  }

  return v6;
}

- (void)_performCrossfadeAnimationWithContext:(id)a3 windowGeometryUpdatingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 containerView];
  v9 = [UIWindow alloc];
  [v8 frame];
  v10 = [(UIWindow *)v9 initWithFrame:?];
  [v10 setHidden:0];
  [v8 level];
  [v10 setLevel:v11 + 1.0];
  v12 = objc_alloc_init(UIViewController);
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    [(UIViewController *)v12 _setAllowsAutorotation:0];
  }

  objc_storeStrong((v10 + 560), v12);
  objc_storeWeak((v10 + 440), v12);
  [v10 _updateTransformLayer];
  v13 = *(v10 + 536);
  v14 = v8[67];
  if (v14)
  {
    [v14 affineTransform];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
  }

  [v13 setAffineTransform:&v34];
  [v8 frame];
  [v10 setFrame:?];
  v15 = [v8 snapshotView];
  [v15 setAutoresizingMask:18];
  v16 = [(UIViewController *)v12 view];
  [v16 addSubview:v15];

  v7[2](v7);
  [v6 __runAlongsideAnimations];
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  [v8 transform];
  CGAffineTransformMakeScale(&v33, 0.0, 0.0);
  [v8 setTransform:&v33];
  v17 = UIApp;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98___UIWindowAnimationController__performCrossfadeAnimationWithContext_windowGeometryUpdatingBlock___block_invoke;
  v23[3] = &unk_1E7104C80;
  v24 = v8;
  v25 = v15;
  v26 = v12;
  v27 = self;
  v28 = v6;
  v29 = v10;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v18 = v10;
  v19 = v6;
  v20 = v12;
  v21 = v15;
  v22 = v8;
  [v17 _performBlockAfterCATransactionCommits:v23];
}

- (void)_performLayoutAnimationWithContext:(id)a3 windowGeometryUpdatingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 containerView];
  [(_UIWindowAnimationController *)self transitionDuration:v8];
  v11 = v10;
  v12 = [v8 _completionCurve] << 16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95___UIWindowAnimationController__performLayoutAnimationWithContext_windowGeometryUpdatingBlock___block_invoke;
  v19[3] = &unk_1E70F4A50;
  v21 = v7;
  v13 = v8;
  v20 = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95___UIWindowAnimationController__performLayoutAnimationWithContext_windowGeometryUpdatingBlock___block_invoke_2;
  v16[3] = &unk_1E70F3C60;
  v17 = v13;
  v18 = v9;
  v14 = v9;
  v15 = v7;
  [UIView animateWithDuration:v12 delay:v19 options:v16 animations:v11 completion:0.0];
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];
  [v4 finalFrameForViewController:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 containerView];
  if ([v4 isAnimated])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50___UIWindowAnimationController_animateTransition___block_invoke;
    aBlock[3] = &unk_1E70F3B20;
    v17 = v14;
    v18 = v7;
    v19 = v9;
    v20 = v11;
    v21 = v13;
    v15 = _Block_copy(aBlock);
    if ([(_UIWindowAnimationController *)self shouldCrossfade])
    {
      [(_UIWindowAnimationController *)self _performCrossfadeAnimationWithContext:v4 windowGeometryUpdatingBlock:v15];
    }

    else
    {
      [(_UIWindowAnimationController *)self _performLayoutAnimationWithContext:v4 windowGeometryUpdatingBlock:v15];
    }

    [v4 _setTransitionIsInFlight:1];
  }

  else
  {
    [v14 setFrame:{v7, v9, v11, v13}];
    [v4 __runAlongsideAnimations];
    [v4 completeTransition:1];
    [v4 _setAnimator:0];
    [v14 _setAnimationController:0];
  }
}

@end