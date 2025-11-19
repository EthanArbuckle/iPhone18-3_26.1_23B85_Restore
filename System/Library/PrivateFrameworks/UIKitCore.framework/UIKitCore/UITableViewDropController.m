@interface UITableViewDropController
@end

@implementation UITableViewDropController

void __48___UITableViewDropController_beginIgnoringDrags__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endIgnoringDrags];
}

void __79___UITableViewDropController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained tableView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v3 cell];
    if (v4 && [v3 _didBeginAnimation])
    {
      [v2 _endAnimatingDropOfCell:v4];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v3 = *(a1 + 32);
    v4 = [v3 cellForTargetContainerInTableView:v2];
    if (v4 && [v3 _didBeginAnimation])
    {
      [v2 _endAnimatingDropIntoCell:v4];
    }
  }

LABEL_10:
  v5 = [WeakRetained dragItemDropAnimations];
  [v5 removeObjectForKey:*(a1 + 40)];
}

void __97___UITableViewDropController_insertPlaceholderAtIndexPath_withContext_previewParametersProvider___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end