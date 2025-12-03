@interface _UIWindowAnimationController
+ (_UIWindowAnimationController)animationControllerWithWindow:(id)window;
- (_UIWindowAnimationController)initWithWindow:(id)window;
- (void)_performCrossfadeAnimationWithContext:(id)context windowGeometryUpdatingBlock:(id)block;
- (void)_performLayoutAnimationWithContext:(id)context windowGeometryUpdatingBlock:(id)block;
- (void)animateTransition:(id)transition;
@end

@implementation _UIWindowAnimationController

+ (_UIWindowAnimationController)animationControllerWithWindow:(id)window
{
  windowCopy = window;
  v4 = [objc_alloc(objc_opt_class()) initWithWindow:windowCopy];

  return v4;
}

- (_UIWindowAnimationController)initWithWindow:(id)window
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = _UIWindowAnimationController;
  v5 = [(_UIWindowAnimationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIWindowAnimationController *)v5 setWindow:windowCopy];
    [windowCopy _setAnimationController:v6];
  }

  return v6;
}

- (void)_performCrossfadeAnimationWithContext:(id)context windowGeometryUpdatingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  containerView = [contextCopy containerView];
  v9 = [UIWindow alloc];
  [containerView frame];
  v10 = [(UIWindow *)v9 initWithFrame:?];
  [v10 setHidden:0];
  [containerView level];
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
  v14 = containerView[67];
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
  [containerView frame];
  [v10 setFrame:?];
  snapshotView = [containerView snapshotView];
  [snapshotView setAutoresizingMask:18];
  view = [(UIViewController *)v12 view];
  [view addSubview:snapshotView];

  blockCopy[2](blockCopy);
  [contextCopy __runAlongsideAnimations];
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  [containerView transform];
  CGAffineTransformMakeScale(&v33, 0.0, 0.0);
  [containerView setTransform:&v33];
  v17 = UIApp;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98___UIWindowAnimationController__performCrossfadeAnimationWithContext_windowGeometryUpdatingBlock___block_invoke;
  v23[3] = &unk_1E7104C80;
  v24 = containerView;
  v25 = snapshotView;
  v26 = v12;
  selfCopy = self;
  v28 = contextCopy;
  v29 = v10;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v18 = v10;
  v19 = contextCopy;
  v20 = v12;
  v21 = snapshotView;
  v22 = containerView;
  [v17 _performBlockAfterCATransactionCommits:v23];
}

- (void)_performLayoutAnimationWithContext:(id)context windowGeometryUpdatingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v8 = contextCopy;
  containerView = [v8 containerView];
  [(_UIWindowAnimationController *)self transitionDuration:v8];
  v11 = v10;
  v12 = [v8 _completionCurve] << 16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95___UIWindowAnimationController__performLayoutAnimationWithContext_windowGeometryUpdatingBlock___block_invoke;
  v19[3] = &unk_1E70F4A50;
  v21 = blockCopy;
  v13 = v8;
  v20 = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95___UIWindowAnimationController__performLayoutAnimationWithContext_windowGeometryUpdatingBlock___block_invoke_2;
  v16[3] = &unk_1E70F3C60;
  v17 = v13;
  v18 = containerView;
  v14 = containerView;
  v15 = blockCopy;
  [UIView animateWithDuration:v12 delay:v19 options:v16 animations:v11 completion:0.0];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  [transitionCopy finalFrameForViewController:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  containerView = [transitionCopy containerView];
  if ([transitionCopy isAnimated])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50___UIWindowAnimationController_animateTransition___block_invoke;
    aBlock[3] = &unk_1E70F3B20;
    v17 = containerView;
    v18 = v7;
    v19 = v9;
    v20 = v11;
    v21 = v13;
    v15 = _Block_copy(aBlock);
    if ([(_UIWindowAnimationController *)self shouldCrossfade])
    {
      [(_UIWindowAnimationController *)self _performCrossfadeAnimationWithContext:transitionCopy windowGeometryUpdatingBlock:v15];
    }

    else
    {
      [(_UIWindowAnimationController *)self _performLayoutAnimationWithContext:transitionCopy windowGeometryUpdatingBlock:v15];
    }

    [transitionCopy _setTransitionIsInFlight:1];
  }

  else
  {
    [containerView setFrame:{v7, v9, v11, v13}];
    [transitionCopy __runAlongsideAnimations];
    [transitionCopy completeTransition:1];
    [transitionCopy _setAnimator:0];
    [containerView _setAnimationController:0];
  }
}

@end