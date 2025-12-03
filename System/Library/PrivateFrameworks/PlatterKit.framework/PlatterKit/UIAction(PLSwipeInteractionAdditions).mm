@interface UIAction(PLSwipeInteractionAdditions)
- (uint64_t)pl_isDefaultAction;
- (void)setPl_defaultAction:()PLSwipeInteractionAdditions;
@end

@implementation UIAction(PLSwipeInteractionAdditions)

- (void)setPl_defaultAction:()PLSwipeInteractionAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, "UIView.PLSwipeInteractionAdditions.pl_defaultAction", v2, 0x303);
}

- (uint64_t)pl_isDefaultAction
{
  v1 = objc_getAssociatedObject(self, "UIView.PLSwipeInteractionAdditions.pl_defaultAction");
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end