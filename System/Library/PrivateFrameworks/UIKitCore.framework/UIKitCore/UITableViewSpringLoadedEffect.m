@interface UITableViewSpringLoadedEffect
@end

@implementation UITableViewSpringLoadedEffect

void __67___UITableViewSpringLoadedEffect_interaction_didChangeWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isHighlighted];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v2)
  {
    [WeakRetained _unhighlightSpringLoadedRow];
  }

  else
  {
    [WeakRetained _highlightSpringLoadedRowAtIndexPath:*(a1 + 40)];
  }
}

@end