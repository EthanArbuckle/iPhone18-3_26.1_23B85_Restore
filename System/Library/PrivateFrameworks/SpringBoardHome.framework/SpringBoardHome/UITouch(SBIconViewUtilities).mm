@interface UITouch(SBIconViewUtilities)
- (uint64_t)sbh_didExitIconView;
- (void)sbh_setDidExitIconView:()SBIconViewUtilities;
@end

@implementation UITouch(SBIconViewUtilities)

- (uint64_t)sbh_didExitIconView
{
  v1 = objc_getAssociatedObject(self, &SBHIconViewTouchDidExitKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)sbh_setDidExitIconView:()SBIconViewUtilities
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, &SBHIconViewTouchDidExitKey, v2, 3);
}

@end