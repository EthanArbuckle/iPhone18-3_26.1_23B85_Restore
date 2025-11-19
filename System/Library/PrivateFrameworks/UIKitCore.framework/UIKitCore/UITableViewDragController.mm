@interface UITableViewDragController
@end

@implementation UITableViewDragController

void __60___UITableViewDragController_canProvideItemsForDragAtPoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathForRowAtPoint:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __60___UITableViewDragController_canProvideItemsForDragAtPoint___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForRowAtIndexPath:*(*(*(a1 + 48) + 8) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __76___UITableViewDragController_dragInteraction_previewForLiftingItem_session___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __83___UITableViewDragController_dragInteraction_previewForCancellingItem_withDefault___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __81___UITableViewDragController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) _endAnimatingDropOfCell:*(a1 + 40)];
  v2 = [WeakRetained cellsAnimatingCancel];
  [v2 removeObjectForKey:*(a1 + 48)];

  [*(a1 + 32) _updateAppearanceOfVisibleRowsForDragState];
}

@end