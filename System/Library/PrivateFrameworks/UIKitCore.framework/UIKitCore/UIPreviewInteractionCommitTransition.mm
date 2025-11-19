@interface UIPreviewInteractionCommitTransition
@end

@implementation UIPreviewInteractionCommitTransition

void __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _preferredTransitionAnimatorForReducedMotion];
  }

  else
  {
    [v3 _preferredTransitionAnimator];
  }
  v4 = ;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_2;
  v16[3] = &unk_1E70F5B18;
  v20 = *(a1 + 72);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v19 = *(a1 + 48);
  [v4 addAnimations:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_3;
  v12[3] = &unk_1E711AFE0;
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v15 = *(a1 + 64);
  [v4 addCompletion:v12];
  [v4 startAnimation];
  if ((*(a1 + 72) & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_4;
    v10[3] = &unk_1E70F3590;
    v11 = *(a1 + 40);
    v9 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:0x10000 delay:v10 options:0 animations:0.15 completion:0.0];
  }
}

uint64_t __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);

    return [v2 setAlpha:0.0];
  }

  else
  {
    [*(a1 + 40) _applyCommitEffectTransformToView:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v4 _applyCommitEffectTransformToView:v5];
  }
}

uint64_t __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) setCurrentCommitEffectWindow:0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 setBlurRadius:96.0];
}

void __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_5(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_6;
  v5[3] = &unk_1E70F4A50;
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  [UIViewController _performWithoutDeferringTransitions:v5];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v2, v3, v4);
}

uint64_t __91___UIPreviewInteractionCommitTransition_performTransitionWithPresentationBlock_completion___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _endDisablingAnimations];
}

@end