@interface UIPreviewTransitionController
@end

@implementation UIPreviewTransitionController

uint64_t __59___UIPreviewTransitionController__animateRevealTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _completeAnimationWithPresentationPhase:1 finished:a2];
  v3 = *(a1 + 40);
  v4 = [v3 transitionWasCancelled] ^ 1;

  return [v3 completeTransition:v4];
}

uint64_t __60___UIPreviewTransitionController__animateDismissTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _completeAnimationWithPresentationPhase:5 finished:a2];
  v3 = *(a1 + 40);
  v4 = [v3 transitionWasCancelled] ^ 1;

  return [v3 completeTransition:v4];
}

uint64_t __59___UIPreviewTransitionController__animateCommitTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _computeAndApplyScrollContentInsetDeltaForViewController:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [v2 _viewControllerUnderlapsStatusBar];
    if (v3)
    {
      v5 = 0x4000000000;
      if (!v4)
      {
        v5 = 0;
      }

      v3[47] = v3[47] & 0xFFFFFFBFFFFFFFFFLL | v5;
    }

    v6 = [v3 topViewController];
    [v3 _computeAndApplyScrollContentInsetDeltaForViewController:v6];
  }

  v7 = [*(a1 + 48) layer];
  v8 = *(MEMORY[0x1E69792E8] + 80);
  v15[4] = *(MEMORY[0x1E69792E8] + 64);
  v15[5] = v8;
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v15[6] = *(MEMORY[0x1E69792E8] + 96);
  v15[7] = v9;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v15[0] = *MEMORY[0x1E69792E8];
  v15[1] = v10;
  v11 = *(MEMORY[0x1E69792E8] + 48);
  v15[2] = *(MEMORY[0x1E69792E8] + 32);
  v15[3] = v11;
  [v7 setSublayerTransform:v15];

  [*(a1 + 48) setShouldLayoutForCommitPhase:1];
  [*(a1 + 48) setNeedsLayout];
  [*(a1 + 48) layoutIfNeeded];
  [*(a1 + 56) setEffect:0];
  v12 = *(a1 + 64);
  [*(a1 + 72) bounds];
  [v12 setFrame:?];
  v13 = *(a1 + 80);
  [*(a1 + 72) bounds];
  return [v13 setFrame:?];
}

uint64_t __59___UIPreviewTransitionController__animateCommitTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  [*(a1 + 64) removeFromSuperview];
  [*(a1 + 72) addSubview:*(a1 + 80)];
  [*(a1 + 80) setFrame:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
  [*(a1 + 88) addSubview:*(a1 + 96)];
  [*(a1 + 104) addSubview:*(a1 + 112)];
  [*(a1 + 120) _completeAnimationWithPresentationPhase:4 finished:a2];
  v4 = *(a1 + 128);

  return [v4 completeTransition:1];
}

void __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_2(id *a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_3;
  v9[3] = &unk_1E70F6B40;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 dismissViewControllerAnimated:0 completion:v9];
}

uint64_t __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_3(void *a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = a1[4];
  v4 = a1[5];
  if (v2)
  {
    v5 = a1[6];

    return [v3 previewInteractionController:v4 performCommitToViewController:v5];
  }

  else
  {
    v8 = a1[6];
    v7 = a1[7];

    return [v3 previewInteractionController:v4 performCommitForPreviewViewController:v7 committedViewController:v8];
  }
}

void __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_48(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = v4;
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v7;
    if (isKindOfClass)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v7;
    }
  }
}

id __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_2_54(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 40) previewInteractionController:*(a1 + 48) committedViewControllerForPreviewViewController:*(a1 + 32)];

    v2 = v3;
  }

  return v2;
}

@end