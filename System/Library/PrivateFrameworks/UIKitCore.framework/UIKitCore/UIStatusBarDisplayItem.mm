@interface UIStatusBarDisplayItem
@end

@implementation UIStatusBarDisplayItem

void __39___UIStatusBarDisplayItem_setFloating___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setFloatingTimer:0];
    v3 = [v4 floating];
    v2 = v4;
    if (v3)
    {
      [v4 _detectedErrorInFloatingState];
      v2 = v4;
    }
  }
}

@end