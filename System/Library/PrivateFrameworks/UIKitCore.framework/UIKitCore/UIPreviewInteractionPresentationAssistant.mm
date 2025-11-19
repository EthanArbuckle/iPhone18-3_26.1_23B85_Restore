@interface UIPreviewInteractionPresentationAssistant
@end

@implementation UIPreviewInteractionPresentationAssistant

void __67___UIPreviewInteractionPresentationAssistant_dismissViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationSourcePortalView];
  [v2 _removePropertyAnimationsForLayerKeyPath:@"transform"];

  v3 = [*(a1 + 32) presentationSourcePortalView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

void __90___UIPreviewInteractionPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stashedParentViewController];
  [*(a1 + 32) setStashedParentViewController:0];
  v3 = [*(a1 + 32) stashedSuperView];
  [*(a1 + 32) setStashedSuperView:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90___UIPreviewInteractionPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_2;
  v6[3] = &unk_1E70F6228;
  v7 = *(a1 + 40);
  v8 = v2;
  v9 = v3;
  v4 = v3;
  v5 = v2;
  [UIViewController _performWithoutDeferringTransitions:v6];
}

uint64_t __90___UIPreviewInteractionPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) view];
  [v2 addSubview:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 addChildViewController:v5];
}

id __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 presentedViewController];
  v5 = [v4 isBeingPresented];

  if (v5)
  {
    v6 = [WeakRetained presentationSourcePortalView];
  }

  else
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v6 = [v7 presentedView];
  }

  return v6;
}

id __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 presentedViewController];
  v5 = [v4 isBeingPresented];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 presentedView];
  }

  else
  {
    v7 = [WeakRetained presentationSourcePortalView];
  }

  return v7;
}

void __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourcePreview];
  v3 = [v2 view];

  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 32) highlighter];

    if (v4)
    {
      v5 = [*(a1 + 32) highlighter];
      v6 = [v5 customBackgroundEffectView];

      [*(a1 + 40) bounds];
      [v6 setFrame:?];
      [v6 setAutoresizingMask:18];
      [*(a1 + 40) insertSubview:v6 atIndex:0];
    }

    [v3 bounds];
    v7 = (a1 + 48);
    [*(a1 + 48) setBounds:?];
    v8 = *(a1 + 40);
    [v3 center];
    v10 = v9;
    v12 = v11;
    v13 = [v3 superview];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    [*(a1 + 48) setCenter:?];

    v14 = [*(a1 + 32) sourcePreview];
    v15 = [v14 target];
    v16 = v15;
    if (v15)
    {
      [v15 transform];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
    }

    v25 = *v7;
    v26 = v29;
    v27 = v30;
    v28 = v31;
    [v25 setTransform:&v26];
  }

  else
  {
    [v3 bounds];
    v7 = (a1 + 56);
    [*(a1 + 56) setBounds:?];
    v17 = *(a1 + 40);
    [v3 center];
    v19 = v18;
    v21 = v20;
    v22 = [v3 superview];
    [v17 convertPoint:v22 fromView:{v19, v21}];
    [*(a1 + 56) setCenter:?];

    v23 = *(a1 + 56);
    v24 = *(MEMORY[0x1E695EFD0] + 16);
    v26 = *MEMORY[0x1E695EFD0];
    v27 = v24;
    v28 = *(MEMORY[0x1E695EFD0] + 32);
    [v23 setTransform:&v26];
  }

  [*(a1 + 40) addSubview:*v7];
  [*(a1 + 64) prepareTransitionFromView:*(a1 + 48) toView:*(a1 + 56) containerView:*(a1 + 40)];
}

void __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performTransitionFromView:*(a1 + 40) toView:*(a1 + 48) containerView:*(a1 + 56)];
  v2 = [*(a1 + 64) presentationSourcePortalView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v3;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v12];

  v4 = [*(a1 + 64) highlighter];

  if (v4)
  {
    v5 = [*(a1 + 64) highlighter];
    v6 = [v5 customBackgroundEffectView];

    v7 = [*(a1 + 64) highlighter];
    v8 = [v7 backgroundEffectApplyBlock];

    if (v8)
    {
      if (*(a1 + 72))
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      v10 = [*(a1 + 64) highlighter];
      v11 = [v10 backgroundEffectApplyBlock];
      (v11)[2](v11, v6, v9);
    }
  }
}

void __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = *(*(a1 + 32) + 8);
  if (has_internal_diagnostics)
  {
    if (!v5)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412290;
        v14 = objc_opt_class();
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "%@: animator completion called while _currentContext is nil", &v13, 0xCu);
      }

      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_22) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v11 = v12;
      v13 = 138412290;
      v14 = objc_opt_class();
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%@: animator completion called while _currentContext is nil", &v13, 0xCu);
LABEL_12:
    }
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;

  [*(a1 + 40) transitionDidEnd:a2 == 0];
  [v6 completeTransition:a2 == 0];
  if (a2 || (*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _postInteractionCleanup];
  }
}

void __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentation];
  [v1 setPrivatePresentationCompletionBlock:0];

  if ([WeakRetained isAppearing] && objc_msgSend(WeakRetained[3], "isRunning"))
  {
    [WeakRetained dismissViewController];
  }
}

@end