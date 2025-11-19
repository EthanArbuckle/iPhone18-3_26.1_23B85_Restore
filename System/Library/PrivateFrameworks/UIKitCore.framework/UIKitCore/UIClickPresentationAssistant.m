@interface UIClickPresentationAssistant
@end

@implementation UIClickPresentationAssistant

uint64_t __79___UIClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __53___UIClickPresentationAssistant__animatePresentation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourcePreview];
  v3 = [v2 view];

  [v3 bounds];
  [*(a1 + 40) setBounds:?];
  v4 = *(a1 + 48);
  [v3 center];
  v6 = v5;
  v8 = v7;
  v9 = [v3 superview];
  [v4 convertPoint:v9 fromView:{v6, v8}];
  [*(a1 + 40) setCenter:?];

  v10 = [*(a1 + 32) sourcePreview];
  v11 = [v10 target];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v13 = *(a1 + 40);
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  [v13 setTransform:v14];

  [*(a1 + 48) addSubview:*(a1 + 40)];
  [*(a1 + 56) prepareTransitionFromView:*(a1 + 40) toView:*(a1 + 64) containerView:*(a1 + 48)];
}

uint64_t __53___UIClickPresentationAssistant__animatePresentation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationSourcePortalView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  return [*(a1 + 40) performTransitionFromView:*(a1 + 48) toView:*(a1 + 56) containerView:*(a1 + 64)];
}

uint64_t __53___UIClickPresentationAssistant__animatePresentation__block_invoke_4(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048613 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __53___UIClickPresentationAssistant__animatePresentation__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationSourcePortalView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setPresentationSourcePortalView:0];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourcePreview];
  v3 = [v2 view];

  [v3 bounds];
  [*(a1 + 40) setBounds:?];
  v4 = *(a1 + 48);
  [v3 center];
  v6 = v5;
  v8 = v7;
  v9 = [v3 superview];
  [v4 convertPoint:v9 fromView:{v6, v8}];
  [*(a1 + 40) setCenter:?];

  v10 = *(a1 + 40);
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v11;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v10 setTransform:v12];
  [*(a1 + 48) addSubview:*(a1 + 40)];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 56) prepareTransitionFromView:*(a1 + 64) toView:*(a1 + 40) containerView:*(a1 + 48)];
  }
}

uint64_t __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationSourcePortalView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  return [*(a1 + 40) performTransitionFromView:*(a1 + 48) toView:*(a1 + 56) containerView:*(a1 + 64)];
}

uint64_t __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return handleEvent(stateMachineSpec_4, *(v2 + 16), 3, &v2, (v2 + 16));
}

uint64_t __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_5(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048613 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __77___UIClickPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stashedParentViewController];
  [*(a1 + 32) setStashedParentViewController:0];
  v3 = [*(a1 + 32) stashedSuperView];
  [*(a1 + 32) setStashedSuperView:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___UIClickPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_2;
  v6[3] = &unk_1E70F6228;
  v7 = *(a1 + 40);
  v8 = v2;
  v9 = v3;
  v4 = v3;
  v5 = v2;
  [UIViewController _performWithoutDeferringTransitions:v6];
}

uint64_t __77___UIClickPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) view];
  [v2 addSubview:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 addChildViewController:v5];
}

id __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained presentation];
  v3 = [v2 customContainerView];

  return v3;
}

id __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained presentedViewController];
  v4 = [v3 isBeingPresented];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 presentationSourcePortalView];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 presentedView];
  }
  v6 = ;

  return v6;
}

id __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained presentedViewController];
  v4 = [v3 isBeingPresented];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 presentedView];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 presentationSourcePortalView];
  }
  v6 = ;

  return v6;
}

void __51___UIClickPresentationAssistant_animateTransition___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v7 = WeakRetained[1];
  WeakRetained[1] = 0;
  v8 = v6;

  v9 = WeakRetained[3];
  WeakRetained[3] = 0;

  [v5 transitionDidEnd:a3];
  [*(a1 + 32) completeTransition:a3];
}

@end