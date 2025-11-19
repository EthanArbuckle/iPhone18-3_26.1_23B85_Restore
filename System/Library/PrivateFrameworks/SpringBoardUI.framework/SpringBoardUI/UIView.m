@interface UIView
@end

@implementation UIView

void __41__UIView_SBUIAdditions__sbui_drawEagerly__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 displayIfNeeded];

  v3 = *(a1 + 32);

  objc_setAssociatedObject(v3, "hasDrawn", 0, 0);
}

@end