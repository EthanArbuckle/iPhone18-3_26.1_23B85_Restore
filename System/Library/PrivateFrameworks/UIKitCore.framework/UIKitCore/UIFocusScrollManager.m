@interface UIFocusScrollManager
@end

@implementation UIFocusScrollManager

BOOL __105___UIFocusScrollManager_animateOffsetOfScrollableContainersInParentEnvironmentContainer_toShowFocusItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scrollableContainer];
  v4 = [*(a1 + 32) scrollableContainer];
  v5 = v3 == v4;

  return v5;
}

void __66___UIFocusScrollManager__scrollWithScrollRequest_onlyIfNecessary___block_invoke(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v5 = objc_loadWeakRetained(a1 + 7);
  v6 = v5;
  if (a2 && v5)
  {
    [v4 _scrollViewDidEndDeceleratingForDelegate];
    [a1[4] reloadFocusItemInfo];
    [WeakRetained _ensureFocusItemIsOnscreenForScrollRequest:a1[4]];
  }
}

@end