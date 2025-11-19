@interface UIAction(PLSwipeInteractionAdditions)
- (uint64_t)pl_isDefaultAction;
- (void)setPl_defaultAction:()PLSwipeInteractionAdditions;
@end

@implementation UIAction(PLSwipeInteractionAdditions)

- (void)setPl_defaultAction:()PLSwipeInteractionAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, "UIView.PLSwipeInteractionAdditions.pl_defaultAction", v2, 0x303);
}

- (uint64_t)pl_isDefaultAction
{
  v1 = objc_getAssociatedObject(a1, "UIView.PLSwipeInteractionAdditions.pl_defaultAction");
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end