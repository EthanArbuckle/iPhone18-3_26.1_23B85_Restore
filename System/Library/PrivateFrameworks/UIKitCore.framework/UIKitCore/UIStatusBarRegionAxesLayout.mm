@interface UIStatusBarRegionAxesLayout
@end

@implementation UIStatusBarRegionAxesLayout

void __50___UIStatusBarRegionAxesLayout__updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layoutItem];
  [v3 set_ui_usesManualLayout:0];
  [*(a1 + 32) _ui_addSubLayoutItem:v3];
}

@end