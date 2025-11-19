@interface UISheetPresentationInteraction
@end

@implementation UISheetPresentationInteraction

void __46___UISheetPresentationInteraction__handlePan___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 _sheetPresentationInteractionDidStartPresentationTransition:WeakRetained];
  }
}

uint64_t __46___UISheetPresentationInteraction__handlePan___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _sheetInteraction];
  [v2 unregisterPanGestureRecognizer:*(a1 + 40)];

  [*(a1 + 40) addTarget:*(a1 + 48) action:sel__handlePan_];
  [*(a1 + 40) setEnabled:1];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);

    return [v4 _sheetPresentationInteractionDidFinishPresentationTransition:v5];
  }

  return result;
}

@end