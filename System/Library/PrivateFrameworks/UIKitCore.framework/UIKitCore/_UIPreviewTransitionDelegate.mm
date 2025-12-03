@interface _UIPreviewTransitionDelegate
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)interactionControllerForPresentation:(id)presentation;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation _UIPreviewTransitionDelegate

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  interactionProgressForPresentation = [(_UIPreviewTransitionDelegate *)self interactionProgressForPresentation];
  v8 = [[_UIPreviewTransitionController alloc] initWithInteractionProgress:interactionProgressForPresentation targetPresentationPhase:2];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  feedbackGenerator = [(_UIPreviewTransitionDelegate *)self feedbackGenerator];

  if (has_internal_diagnostics)
  {
    if (feedbackGenerator)
    {
      goto LABEL_3;
    }

    v15 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138412290;
    v29 = v17;
    _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "The feedbackGenerator in %@ should not be nil!", buf, 0xCu);
LABEL_11:

LABEL_12:
    goto LABEL_3;
  }

  if (!feedbackGenerator)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &animationControllerForPresentedController_presentingController_sourceController____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v15 = v18;
      v19 = objc_opt_class();
      v17 = NSStringFromClass(v19);
      *buf = 138412290;
      v29 = v17;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "The feedbackGenerator in %@ should not be nil!", buf, 0xCu);
      goto LABEL_11;
    }
  }

LABEL_3:
  feedbackGenerator2 = [(_UIPreviewTransitionDelegate *)self feedbackGenerator];
  [(_UIPreviewTransitionController *)v8 setFeedbackGenerator:feedbackGenerator2];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __112___UIPreviewTransitionDelegate_animationControllerForPresentedController_presentingController_sourceController___block_invoke;
  v26[3] = &unk_1E70F3590;
  v27 = controllerCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __112___UIPreviewTransitionDelegate_animationControllerForPresentedController_presentingController_sourceController___block_invoke_2;
  v24[3] = &unk_1E70F5AC0;
  v12 = v27;
  v25 = v12;
  [(_UIPreviewTransitionController *)v8 setAnimations:v26 completion:v24 forPresentationPhase:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112___UIPreviewTransitionDelegate_animationControllerForPresentedController_presentingController_sourceController___block_invoke_3;
  v22[3] = &unk_1E70F3590;
  v23 = v12;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112___UIPreviewTransitionDelegate_animationControllerForPresentedController_presentingController_sourceController___block_invoke_4;
  v20[3] = &unk_1E70F5AC0;
  v21 = v23;
  v13 = v23;
  [(_UIPreviewTransitionController *)v8 setAnimations:v22 completion:v20 forPresentationPhase:2];

  return v8;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  v4 = [[_UIPreviewTransitionController alloc] initWithInteractionProgress:0 targetPresentationPhase:5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UIPreviewTransitionDelegate_animationControllerForDismissedController___block_invoke;
  v9[3] = &unk_1E70F3590;
  v10 = controllerCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___UIPreviewTransitionDelegate_animationControllerForDismissedController___block_invoke_2;
  v7[3] = &unk_1E70F5AC0;
  v8 = v10;
  v5 = v10;
  [(_UIPreviewTransitionController *)v4 setAnimations:v9 completion:v7 forPresentationPhase:5];

  return v4;
}

- (id)interactionControllerForPresentation:(id)presentation
{
  presentationCopy = presentation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    interactionProgress = [presentationCopy interactionProgress];

    if (interactionProgress)
    {
      interactionProgress = presentationCopy;
    }
  }

  else
  {
    interactionProgress = 0;
  }

  return interactionProgress;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[_UIPreviewPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

@end