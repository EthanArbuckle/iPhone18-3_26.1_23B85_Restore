@interface _UIPreviewInteractionCommitTransition
- (_UIPreviewInteractionCommitTransition)initWithPresentedViewController:(id)controller;
- (id)_preferredTransitionAnimator;
- (id)_preferredTransitionAnimatorForReducedMotion;
- (void)_applyCommitEffectTransformToView:(id)view;
- (void)performTransitionWithPresentationBlock:(id)block completion:(id)completion;
@end

@implementation _UIPreviewInteractionCommitTransition

- (_UIPreviewInteractionCommitTransition)initWithPresentedViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionCommitTransition.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];
  }

  v11.receiver = self;
  v11.super_class = _UIPreviewInteractionCommitTransition;
  v6 = [(_UIPreviewInteractionCommitTransition *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(_UIPreviewInteractionCommitTransition *)v6 setViewController:controllerCopy];
    v8 = v7;
  }

  return v7;
}

- (void)performTransitionWithPresentationBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  viewController = [(_UIPreviewInteractionCommitTransition *)self viewController];
  v30 = [viewController _existingPresentationControllerImmediate:0 effective:1];
  containerView = [v30 containerView];
  window = [containerView window];
  v10 = objc_alloc_init(_UIPreviewInteractionTransitionWindow);
  [(UIWindow *)v10 setHidden:0];
  [(UIView *)v10 bounds];
  v15 = _UISnapshotScreenAtViewRectAfterCommit(v10, 0, v11, v12, v13, v14);
  v16 = [_UIPreviewPresentationEffectView alloc];
  [v15 frame];
  v17 = [(_UIPreviewPresentationEffectView *)v16 initWithFrame:?];
  [(UIView *)v17 addSubview:v15];
  [(UIView *)v10 addSubview:v17];
  [(_UIPreviewInteractionCommitTransition *)self setCurrentCommitEffectWindow:v10];
  _shouldReduceMotion = [(_UIPreviewInteractionCommitTransition *)self _shouldReduceMotion];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke;
  aBlock[3] = &unk_1E70FCE78;
  v40 = _shouldReduceMotion;
  aBlock[4] = self;
  v36 = v17;
  v37 = window;
  v38 = v10;
  v39 = completionCopy;
  v19 = completionCopy;
  v20 = v10;
  v21 = window;
  v22 = v17;
  v23 = _Block_copy(aBlock);
  windowScene = [v21 windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  [keyboardSceneDelegate _beginDisablingAnimations];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_5;
  v31[3] = &unk_1E70FE0C8;
  v32 = keyboardSceneDelegate;
  v33 = blockCopy;
  v34 = v23;
  v26 = v23;
  v27 = keyboardSceneDelegate;
  v28 = blockCopy;
  [viewController dismissViewControllerAnimated:0 completion:v31];
  [UIWindow _synchronizeDrawingWithPreCommitHandler:0];
}

- (id)_preferredTransitionAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithMass:4.2 stiffness:620.0 damping:840.0 initialVelocity:0.0, 0.0];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.0];

  return v3;
}

- (id)_preferredTransitionAnimatorForReducedMotion
{
  v2 = [[UICubicTimingParameters alloc] initWithAnimationCurve:0];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.2];

  return v3;
}

- (void)_applyCommitEffectTransformToView:(id)view
{
  if (view)
  {
    memset(&v6, 0, sizeof(v6));
    viewCopy = view;
    [viewCopy transform];
    v4 = v6;
    CGAffineTransformScale(&v5, &v4, 1.75, 1.75);
    v4 = v5;
    [viewCopy setTransform:&v4];
    v4 = v6;
    [viewCopy setTransform:&v4];
  }
}

@end