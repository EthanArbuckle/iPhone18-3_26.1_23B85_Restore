@interface UIKeyboardCameraOverlayPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (void)_determinePortraitHeights;
- (void)_handlePan:(id)pan;
- (void)_installGrabber;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIKeyboardCameraOverlayPresentationController

- (void)_determinePortraitHeights
{
  if ([(UIKeyboardCameraBasePresentationController *)self presentingOverKeyboard])
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    inputViewSet = [presentingViewController inputViewSet];
    inputView = [inputViewSet inputView];
    inputAssistantView = [inputViewSet inputAssistantView];
    v7 = inputAssistantView;
    if (inputAssistantView)
    {
      v8 = inputAssistantView;
    }

    else
    {
      v8 = inputView;
    }

    v9 = v8;
    [v9 bounds];
    [v9 convertRect:0 toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    Height = CGRectGetHeight(v26);
    v27.origin.x = v11;
    v27.origin.y = v13;
    v27.size.width = v15;
    v27.size.height = v17;
    v20 = Height - CGRectGetMinY(v27);

    self->_keyboardCameraNormalHeight = v20;
  }

  else
  {
    self->_keyboardCameraNormalHeight = 325.0;
  }

  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
  v23 = v22;
  containerView2 = [(UIPresentationController *)self containerView];
  [containerView2 safeAreaInsets];
  self->_keyboardCameraFullScreenHeight = v23 - v25;

  self->_keyboardCameraHeight = self->_keyboardCameraNormalHeight;
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  switch(state)
  {
    case 3:
      keyboardCameraNormalHeight = self->_keyboardCameraNormalHeight;
      if (self->_panningStartingHeight == keyboardCameraNormalHeight)
      {
        if (self->_keyboardCameraHeight - keyboardCameraNormalHeight > 75.0)
        {
          keyboardCameraFullScreenHeight = self->_keyboardCameraFullScreenHeight;
LABEL_12:
          keyboardCameraNormalHeight = keyboardCameraFullScreenHeight;
        }
      }

      else
      {
        keyboardCameraFullScreenHeight = self->_keyboardCameraFullScreenHeight;
        if (keyboardCameraFullScreenHeight - self->_keyboardCameraHeight <= 75.0)
        {
          goto LABEL_12;
        }
      }

      self->_keyboardCameraHeight = keyboardCameraNormalHeight;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__UIKeyboardCameraOverlayPresentationController__handlePan___block_invoke;
      v22[3] = &unk_1E70F3590;
      v22[4] = self;
      [UIView animateWithDuration:v22 animations:0.25];
      break;
    case 2:
      containerView = [(UIPresentationController *)self containerView];
      [panCopy translationInView:containerView];
      v8 = v7;

      panningStartingHeight = self->_panningStartingHeight;
      v10 = fmax(panningStartingHeight - v8, self->_keyboardCameraNormalHeight);
      if (vabdd_f64(v10, panningStartingHeight) > 75.0)
      {
        [panCopy setState:3];
      }

      self->_keyboardCameraHeight = v10;
      [(UIKeyboardCameraOverlayPresentationController *)self frameOfPresentedViewInContainerView];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      presentedView = [(UIPresentationController *)self presentedView];
      [presentedView setFrame:{v12, v14, v16, v18}];

      break;
    case 1:
      self->_panningStartingHeight = self->_keyboardCameraHeight;
      break;
  }
}

void __60__UIKeyboardCameraOverlayPresentationController__handlePan___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frameOfPresentedViewInContainerView];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) presentedView];
  [v10 setFrame:{v3, v5, v7, v9}];

  v11 = [*(a1 + 32) containerView];
  [v11 layoutIfNeeded];
}

- (void)_installGrabber
{
  v28[4] = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  grabberView = self->_grabberView;
  if (has_internal_diagnostics)
  {
    if (grabberView)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "There's a request to install the Keyboard Camera grabber when it already exists", buf, 2u);
      }
    }
  }

  else if (grabberView)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &_installGrabber___s_category) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "There's a request to install the Keyboard Camera grabber when it already exists", buf, 2u);
    }
  }

  v5 = objc_alloc_init(UIKeyboardCameraGrabberView);
  v6 = self->_grabberView;
  self->_grabberView = v5;

  [(UIView *)self->_grabberView setTranslatesAutoresizingMaskIntoConstraints:0];
  containerView = [(UIPresentationController *)self containerView];
  presentedView = [(UIPresentationController *)self presentedView];
  [containerView addSubview:self->_grabberView];
  v20 = MEMORY[0x1E69977A0];
  topAnchor = [(UIView *)self->_grabberView topAnchor];
  topAnchor2 = [presentedView topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v22;
  centerXAnchor = [(UIView *)self->_grabberView centerXAnchor];
  v24 = presentedView;
  centerXAnchor2 = [presentedView centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v28[1] = v9;
  heightAnchor = [(UIView *)self->_grabberView heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:30.0];
  v28[2] = v11;
  widthAnchor = [(UIView *)self->_grabberView widthAnchor];
  widthAnchor2 = [presentedView widthAnchor];
  v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v28[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [v20 activateConstraints:v15];

  v16 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handlePan_];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v16;

  [(UIView *)self->_grabberView addGestureRecognizer:self->_panGestureRecognizer];
  [(UIView *)self->_grabberView setHidden:self->_isLandscape];
}

- (void)presentationTransitionWillBegin
{
  v3 = +[UIDevice currentDevice];
  self->_isLandscape = ([v3 orientation] - 3) < 2;

  [(UIKeyboardCameraOverlayPresentationController *)self _determinePortraitHeights];
  if (![(UIKeyboardCameraBasePresentationController *)self presentingOverKeyboard])
  {

    [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:2 forStart:1];
  }
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:1];
  [(UIKeyboardCameraOverlayPresentationController *)self _installGrabber];
  if (_UISolariumEnabled())
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v4 preferencesActions];
    traitCollection = [(UIPresentationController *)self traitCollection];
    [traitCollection displayScale];
    [preferencesActions rivenSizeFactor:81.0 / v7];
    v9 = v8;

    presentedView = [(UIPresentationController *)self presentedView];
    layer = [presentedView layer];

    [layer setMasksToBounds:1];
    [layer setMaskedCorners:3];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setCornerRadius:v9];
  }

  if (![(UIKeyboardCameraBasePresentationController *)self presentingOverKeyboard])
  {

    [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:2 forStart:0];
  }
}

- (void)dismissalTransitionWillBegin
{
  if (![(UIKeyboardCameraBasePresentationController *)self presentingOverKeyboard])
  {

    [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:3 forStart:1];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (![(UIKeyboardCameraBasePresentationController *)self presentingOverKeyboard])
  {

    [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:3 forStart:0];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];

  isLandscape = self->_isLandscape;
  containerView2 = [(UIPresentationController *)self containerView];
  [containerView2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  keyboardCameraHeight = v12;

  if (!isLandscape)
  {
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = keyboardCameraHeight;
    Height = CGRectGetHeight(v19);
    keyboardCameraHeight = self->_keyboardCameraHeight;
    v9 = v9 + Height - keyboardCameraHeight;
  }

  v15 = v7;
  v16 = v9;
  v17 = v11;
  v18 = keyboardCameraHeight;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v19.receiver = self;
  v19.super_class = UIKeyboardCameraOverlayPresentationController;
  [(UIPresentationController *)&v19 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  updatesGuideDuringRotation = [(UIKeyboardCameraOverlayPresentationController *)self updatesGuideDuringRotation];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x4010000000;
  v16[3] = "";
  v17 = 0u;
  v18 = 0u;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x4010000000;
  v13[3] = "";
  v14 = 0u;
  v15 = 0u;
  self->_isLandscape = width > height;
  [(UIView *)self->_grabberView setHidden:?];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__UIKeyboardCameraOverlayPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_1E7103B68;
  v11[4] = self;
  v11[5] = v16;
  v11[6] = v13;
  v12 = updatesGuideDuringRotation;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__UIKeyboardCameraOverlayPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v9[3] = &unk_1E7103B68;
  v10 = updatesGuideDuringRotation;
  v9[4] = self;
  v9[5] = v16;
  v9[6] = v13;
  [coordinatorCopy animateAlongsideTransition:v11 completion:v9];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v16, 8);
}

void __100__UIKeyboardCameraOverlayPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _determinePortraitHeights];
  v2 = [*(a1 + 32) presentedView];
  [v2 frame];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;

  [*(a1 + 32) frameOfPresentedViewInContainerView];
  v8 = *(*(a1 + 48) + 8);
  v8[4] = v9;
  v8[5] = v10;
  v8[6] = v11;
  v8[7] = v12;
  if (*(a1 + 56) == 1)
  {
    v13 = *(*(a1 + 40) + 8);
    v14 = *(*(a1 + 48) + 8);
    [*(a1 + 32) modifyKeyboardTrackingUsingNotificationType:1 from:0 to:v13[4] forStart:{v13[5], v13[6], v13[7], v14[4], v14[5], v14[6], v14[7]}];
  }

  v15 = *(*(a1 + 48) + 8);
  v16 = v15[4];
  v17 = v15[5];
  v18 = v15[6];
  v19 = v15[7];
  v20 = [*(a1 + 32) presentedView];
  [v20 setFrame:{v16, v17, v18, v19}];
}

uint64_t __100__UIKeyboardCameraOverlayPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = *(*(result + 40) + 8);
    v2 = *(*(result + 48) + 8);
    return [*(result + 32) modifyKeyboardTrackingUsingNotificationType:1 from:0 to:v1[4] forStart:{v1[5], v1[6], v1[7], v2[4], v2[5], v2[6], v2[7]}];
  }

  return result;
}

@end