@interface UITextFloatingCursorSession
@end

@implementation UITextFloatingCursorSession

uint64_t __52___UITextFloatingCursorSession__invalidateAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained _setCursorFadedHiddenForFloatingCursor:0 animated:0];

  v5 = *(*(a1 + 32) + 32);

  return [v5 removeFromSuperview];
}

void __52___UITextFloatingCursorSession__invalidateAnimated___block_invoke_2(uint64_t a1)
{
  v11 = [*(*(a1 + 32) + 32) superview];
  [*(a1 + 40) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) superview];
  [v11 convertRect:v10 fromView:{v3, v5, v7, v9}];
  [*(*(a1 + 32) + 32) setFrame:?];
}

@end