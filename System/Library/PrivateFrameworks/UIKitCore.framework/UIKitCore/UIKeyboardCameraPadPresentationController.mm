@interface UIKeyboardCameraPadPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (UIDimmingViewDelegate)dimmingViewDelegate;
- (void)_animateDismissTransition:(id)transition;
- (void)_animatePresentTransition:(id)transition;
- (void)animateTransition:(id)transition;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIKeyboardCameraPadPresentationController

- (void)presentationTransitionWillBegin
{
  v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v4 = [v3 vendKeyboardSuppressionAssertionForReason:@"Keyboard Camera"];
  keyboardSuppressionAssertion = self->_keyboardSuppressionAssertion;
  self->_keyboardSuppressionAssertion = v4;

  [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:2 forStart:1];
}

- (void)dismissalTransitionWillBegin
{
  [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:3 forStart:1];
  keyboardSuppressionAssertion = self->_keyboardSuppressionAssertion;
  self->_keyboardSuppressionAssertion = 0;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  +[UIKeyboard sizeForInterfaceOrientation:](UIKeyboard, "sizeForInterfaceOrientation:", [presentingViewController interfaceOrientation]);
  v5 = v4;

  if (v5 > 400.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 400.0;
  }

  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = CGRectGetHeight(v20) - v6;
  v17 = v6 + -30.0;
  v18 = v9 + 30.0;
  v19 = v13 + -60.0;
  result.size.height = v17;
  result.size.width = v19;
  result.origin.y = v16;
  result.origin.x = v18;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = UIKeyboardCameraPadPresentationController;
  [(UIPresentationController *)&v16 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x4010000000;
  v13[3] = "";
  v14 = 0u;
  v15 = 0u;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4010000000;
  v10[3] = "";
  v11 = 0u;
  v12 = 0u;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__UIKeyboardCameraPadPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E70F5A70;
  v9[4] = self;
  v9[5] = v13;
  v9[6] = v10;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__UIKeyboardCameraPadPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E70F5A98;
  v8[4] = self;
  v8[5] = v13;
  v8[6] = v10;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v13, 8);
}

uint64_t __96__UIKeyboardCameraPadPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 400) frame];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  [*(a1 + 32) frameOfPresentedViewInContainerView];
  v7 = *(*(a1 + 48) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
  v12 = *(*(a1 + 40) + 8);
  v13 = *(*(a1 + 48) + 8);
  [*(a1 + 32) modifyKeyboardTrackingUsingNotificationType:2 from:1 to:v12[4] forStart:{v12[5], v12[6], v12[7], v13[4], v13[5], v13[6], v13[7]}];
  v14 = [*(a1 + 32) containerView];
  [v14 bounds];
  [*(*(a1 + 32) + 408) setFrame:?];

  v15 = *(*(a1 + 48) + 8);
  v16 = v15[4];
  v17 = v15[5];
  v18 = *(*(a1 + 32) + 400);
  v19 = v15[6];
  v20 = v15[7];

  return [v18 setFrame:{v16, v17, v19, v20}];
}

uint64_t __96__UIKeyboardCameraPadPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 48) + 8);
  return [*(a1 + 32) modifyKeyboardTrackingUsingNotificationType:2 from:0 to:v1[4] forStart:{v1[5], v1[6], v1[7], v2[4], v2[5], v2[6], v2[7]}];
}

- (void)animateTransition:(id)transition
{
  if (self->_shadowView)
  {
    [(UIKeyboardCameraPadPresentationController *)self _animateDismissTransition:transition];
  }

  else
  {
    [(UIKeyboardCameraPadPresentationController *)self _animatePresentTransition:transition];
  }
}

- (void)_animateDismissTransition:(id)transition
{
  transitionCopy = transition;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__UIKeyboardCameraPadPresentationController__animateDismissTransition___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__UIKeyboardCameraPadPresentationController__animateDismissTransition___block_invoke_2;
  v6[3] = &unk_1E70F3C60;
  v6[4] = self;
  v7 = transitionCopy;
  v5 = transitionCopy;
  [UIView _animateUsingSpringWithDuration:0 delay:v8 options:v6 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

uint64_t __71__UIKeyboardCameraPadPresentationController__animateDismissTransition___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 400) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.6, 0.6);
  v2 = *(*(a1 + 32) + 400);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __71__UIKeyboardCameraPadPresentationController__animateDismissTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 400) removeFromSuperview];
  [*(*(a1 + 32) + 408) removeFromSuperview];
  v4 = *(a1 + 40);

  return [v4 completeTransition:a2];
}

- (void)_animatePresentTransition:(id)transition
{
  transitionCopy = transition;
  v6 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  view = [v6 view];
  containerView = [transitionCopy containerView];
  [containerView setIgnoresInteractionEvents:0];
  [containerView setIgnoreDirectTouchEvents:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraPadPresentationController.m" lineNumber:150 description:@"Keyboard Camera is being presented in something other than a UITransitionView."];
  }

  delegate = [containerView delegate];

  if (delegate != self)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraPadPresentationController.m" lineNumber:151 description:@"Expecting to be the delegate of the UITransitionView for UITextEffectsWindow."];
  }

  v10 = objc_alloc_init(UIDimmingView);
  dimmingView = self->_dimmingView;
  self->_dimmingView = v10;

  dimmingViewDelegate = [(UIKeyboardCameraPadPresentationController *)self dimmingViewDelegate];
  [(UIDimmingView *)self->_dimmingView setDelegate:dimmingViewDelegate];

  [containerView bounds];
  [(UIView *)self->_dimmingView setFrame:?];
  [transitionCopy finalFrameForViewController:v6];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = objc_alloc_init(UIView);
  shadowView = self->_shadowView;
  self->_shadowView = v21;

  [(UIView *)self->_shadowView setFrame:v14, v16, v18, v20];
  [(UIView *)self->_shadowView bounds];
  [view setFrame:?];
  [view setClipsToBounds:1];
  [view _setContinuousCornerRadius:15.0];
  [(UIView *)self->_shadowView addSubview:view];
  [containerView addSubview:self->_dimmingView];
  [containerView addSubview:self->_shadowView];
  [(UIView *)self->_shadowView setAlpha:0.0];
  CGAffineTransformMakeScale(&v38, 0.6, 0.6);
  v23 = self->_shadowView;
  v37 = v38;
  [(UIView *)v23 setTransform:&v37];
  layer = [(UIView *)self->_shadowView layer];
  LODWORD(v25) = 0.25;
  [layer setShadowOpacity:v25];

  layer2 = [(UIView *)self->_shadowView layer];
  [layer2 setShadowRadius:30.0];

  layer3 = [(UIView *)self->_shadowView layer];
  [layer3 setShadowOffset:{0.0, -10.0}];

  v28 = +[UIColor blackColor];
  cGColor = [v28 CGColor];
  layer4 = [(UIView *)self->_shadowView layer];
  [layer4 setShadowColor:cGColor];

  v35 = transitionCopy;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __71__UIKeyboardCameraPadPresentationController__animatePresentTransition___block_invoke;
  v36[3] = &unk_1E70F3590;
  v36[4] = self;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __71__UIKeyboardCameraPadPresentationController__animatePresentTransition___block_invoke_2;
  v34[3] = &unk_1E70F5AC0;
  v31 = transitionCopy;
  [UIView _animateUsingSpringWithDuration:0 delay:v36 options:v34 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

uint64_t __71__UIKeyboardCameraPadPresentationController__animatePresentTransition___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 400) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 400);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

- (UIDimmingViewDelegate)dimmingViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dimmingViewDelegate);

  return WeakRetained;
}

@end