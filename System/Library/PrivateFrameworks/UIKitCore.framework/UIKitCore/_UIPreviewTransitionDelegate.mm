@interface _UIPreviewTransitionDelegate
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)interactionControllerForPresentation:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation _UIPreviewTransitionDelegate

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_UIPreviewTransitionDelegate *)self interactionProgressForPresentation];
  v8 = [[_UIPreviewTransitionController alloc] initWithInteractionProgress:v7 targetPresentationPhase:2];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v10 = [(_UIPreviewTransitionDelegate *)self feedbackGenerator];

  if (has_internal_diagnostics)
  {
    if (v10)
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

  if (!v10)
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
  v11 = [(_UIPreviewTransitionDelegate *)self feedbackGenerator];
  [(_UIPreviewTransitionController *)v8 setFeedbackGenerator:v11];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __112___UIPreviewTransitionDelegate_animationControllerForPresentedController_presentingController_sourceController___block_invoke;
  v26[3] = &unk_1E70F3590;
  v27 = v6;
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

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = a3;
  v4 = [[_UIPreviewTransitionController alloc] initWithInteractionProgress:0 targetPresentationPhase:5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UIPreviewTransitionDelegate_animationControllerForDismissedController___block_invoke;
  v9[3] = &unk_1E70F3590;
  v10 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___UIPreviewTransitionDelegate_animationControllerForDismissedController___block_invoke_2;
  v7[3] = &unk_1E70F5AC0;
  v8 = v10;
  v5 = v10;
  [(_UIPreviewTransitionController *)v4 setAnimations:v9 completion:v7 forPresentationPhase:5];

  return v4;
}

- (id)interactionControllerForPresentation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 interactionProgress];

    if (v4)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[_UIPreviewPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

@end