@interface UIStatusBarIndicatorItem
@end

@implementation UIStatusBarIndicatorItem

void __55___UIStatusBarIndicatorItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55___UIStatusBarIndicatorItem_applyUpdate_toDisplayItem___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [UIView animateWithDuration:0 delay:v6 options:a4 animations:0.333 completion:0.0];
}

@end