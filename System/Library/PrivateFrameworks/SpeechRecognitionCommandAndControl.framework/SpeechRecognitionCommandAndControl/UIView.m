@interface UIView
@end

@implementation UIView

uint64_t __38__UIView_CACUIAdditions__cac_snapshot__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

@end