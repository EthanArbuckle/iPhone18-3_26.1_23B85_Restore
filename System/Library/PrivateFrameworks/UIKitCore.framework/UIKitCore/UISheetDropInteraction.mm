@interface UISheetDropInteraction
@end

@implementation UISheetDropInteraction

void __58___UISheetDropInteraction__activityForSession_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

void __55___UISheetDropInteraction_dropInteraction_performDrop___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 delegate];
    [v5 _sheetDropInteraction:*(a1 + 32) handleUserActivity:v4 forPresentedViewController:*(a1 + 40)];
  }
}

void __76___UISheetDropInteraction_dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = [*(a1 + 32) presentationController];
    v3 = [v4 presentedView];
    [v3 setAlpha:1.0];
  }
}

@end