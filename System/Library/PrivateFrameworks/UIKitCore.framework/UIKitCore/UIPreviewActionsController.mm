@interface UIPreviewActionsController
@end

@implementation UIPreviewActionsController

void __88___UIPreviewActionsController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained _presentSubactionsForActionGroup:v4];
  }

  else
  {
    [WeakRetained _dismissWithAction:v4];
  }
}

uint64_t __61___UIPreviewActionsController__dismissForSelectedSwipeAction__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) platterView];
  [v4 setCenter:{v2, v3}];

  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 40);

  return [v7 setCenter:{v5, v6}];
}

void __61___UIPreviewActionsController__dismissForSelectedSwipeAction__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 150000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61___UIPreviewActionsController__dismissForSelectedSwipeAction__block_invoke_3;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], v4);
}

void __61___UIPreviewActionsController__dismissForSelectedSwipeAction__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _hideChromeAndSetAffordanceHidden:1];
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) quickAction];
  [v4 previewActionsController:v2 didCompleteWithSelectedAction:v3];
}

uint64_t __50___UIPreviewActionsController__dismissWithAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) platterView];
  [v4 setCenter:{v2, v3}];

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) previewActionsView];
  [v7 setCenter:{v5, v6}];

  v8 = *(a1 + 32);

  return [v8 _setAffordanceAlpha:1 withDuration:0.0 hideOnCompletion:0.1];
}

void __50___UIPreviewActionsController__dismissWithAction___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _hideChromeAndSetAffordanceHidden:1];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = v2;
  if (*(a1 + 40))
  {
    [v2 previewActionsController:v3 didCompleteWithSelectedAction:?];
  }

  else
  {
    [v2 didDismissPreviewActionsController:v3];
  }
}

void __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) platterView];
  [v3 setCenter:{v1, v2}];
}

void __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPreviewActionsView:*(a1 + 32)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_5;
  v3[3] = &unk_1E70F35B8;
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) _configurePlatterDynamicsController];
  v2 = [*(a1 + 40) platterDynamicsController];
  [v2 _beginInYLockedStatePresented];

  v4 = [*(a1 + 40) previewActionsView];
  v3 = [v4 window];
  [v3 setUserInteractionEnabled:1];
}

void __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_7;
  v3[3] = &unk_1E70F4940;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [UIView animateKeyframesWithDuration:0 delay:v3 options:0 animations:v2 completion:0.0];
}

uint64_t __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_7(void *a1)
{
  [UIView addKeyframeWithRelativeStartTime:a1[4] relativeDuration:0.0 animations:1.0];
  [UIView addKeyframeWithRelativeStartTime:a1[5] relativeDuration:0.0 animations:0.5];
  v2 = a1[6];

  return [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.5 animations:0.5];
}

void __81___UIPreviewActionsController__setAffordanceAlpha_withDuration_hideOnCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) affordanceView];
  [v2 setAlpha:v1];
}

void __81___UIPreviewActionsController__setAffordanceAlpha_withDuration_hideOnCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) affordanceView];
    [v2 setHidden:1];
  }
}

@end