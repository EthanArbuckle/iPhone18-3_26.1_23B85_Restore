@interface UITouch(SBIconViewUtilities)
- (uint64_t)sbh_didExitIconView;
- (void)sbh_setDidExitIconView:()SBIconViewUtilities;
@end

@implementation UITouch(SBIconViewUtilities)

- (uint64_t)sbh_didExitIconView
{
  v1 = objc_getAssociatedObject(a1, &SBHIconViewTouchDidExitKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)sbh_setDidExitIconView:()SBIconViewUtilities
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, &SBHIconViewTouchDidExitKey, v2, 3);
}

@end