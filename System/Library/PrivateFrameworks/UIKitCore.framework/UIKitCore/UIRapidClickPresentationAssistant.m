@interface UIRapidClickPresentationAssistant
@end

@implementation UIRapidClickPresentationAssistant

void __83___UIRapidClickPresentationAssistant_presentFromSourcePreview_lifecycleCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83___UIRapidClickPresentationAssistant_presentFromSourcePreview_lifecycleCompletion___block_invoke_2;
  v3[3] = &unk_1E70F5AF0;
  v5 = *(a1 + 56);
  v3[4] = *(a1 + 48);
  v4 = v1;
  [v4 presentViewController:v2 animated:0 completion:v3];
}

uint64_t __83___UIRapidClickPresentationAssistant_presentFromSourcePreview_lifecycleCompletion___block_invoke_2(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    return [*(result + 32) _performPresentationAnimationsFromViewController:*(result + 40)];
  }

  return result;
}

uint64_t __87___UIRapidClickPresentationAssistant__performPresentationAnimationsFromViewController___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) transitionDidEnd:1];
  }

  return result;
}

uint64_t __84___UIRapidClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84___UIRapidClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke_2;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  [UIViewController _performWithoutDeferringTransitions:v3];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84___UIRapidClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) presentation];
  v5 = [v1 viewController];

  v2 = [v5 presentedViewController];

  if (v2)
  {
    v3 = [v5 presentingViewController];

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  [v4 dismissViewControllerAnimated:0 completion:0];
}

void __85___UIRapidClickPresentationAssistant__animateDismissalWithReason_actions_completion___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (a2)
  {
    v10 = WeakRetained;
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v6 = [WeakRetained animationWatchdogTimer];
      [v6 invalidate];

      [*(*(*(a1 + 64) + 8) + 40) _unlockEnvironment:*(a1 + 32)];
      [*(*(*(a1 + 64) + 8) + 40) _unlockEnvironment:*(a1 + 40)];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }

    [*(a1 + 48) transitionDidEnd:1];
    v9 = *(a1 + 56);
    v5 = v10;
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
      v5 = v10;
    }
  }
}

void __56___UIRapidClickPresentationAssistant_animateTransition___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56___UIRapidClickPresentationAssistant_animateTransition___block_invoke_2;
  v5[3] = &unk_1E70F35B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _animateDismissalWithReason:9 actions:v5 completion:0];
}

void __56___UIRapidClickPresentationAssistant_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v3 = [*(a1 + 40) lifecycleCompletion];
  [*(a1 + 40) setLifecycleCompletion:0];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 1);
    v2 = v3;
  }
}

uint64_t __93___UIRapidClickPresentationAssistant__animateUsingFluidSpringWithType_animations_completion___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __93___UIRapidClickPresentationAssistant__animateUsingFluidSpringWithType_animations_completion___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  --*(a1[4] + 8);
  v6 = *(__UILogGetCategoryCachedImpl("UICMILifecycle", &_UIRapidClickPresentationAssistantKeyboardSuppressionAssertionReason_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = a1[6];
    v9 = v6;
    v10 = [v7 numberWithUnsignedInteger:v8];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v13 = *(a1[4] + 8);
    v15 = 138413058;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 1024;
    v22 = v13;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "_animateUsingFluidSpringWithType %@ completion: finished %@, retargeted %@, count: %d", &v15, 0x26u);
  }

  return (*(a1[5] + 16))();
}

@end