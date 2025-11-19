@interface UIScrollViewScrollingAnimator
@end

@implementation UIScrollViewScrollingAnimator

void __57___UIScrollViewScrollingAnimator__scrollToContentOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained setContentOffset:0 animated:{*(a1 + 40), *(a1 + 48)}];
}

void __71___UIScrollViewScrollingAnimator__scrollWithScrollToExtentAnimationTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setContentOffsetWithDecelerationAnimation:{*(a1 + 40), *(a1 + 48)}];
}

@end