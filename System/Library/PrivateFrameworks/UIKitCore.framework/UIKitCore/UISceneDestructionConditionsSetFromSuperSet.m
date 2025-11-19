@interface UISceneDestructionConditionsSetFromSuperSet
@end

@implementation UISceneDestructionConditionsSetFromSuperSet

void ___UISceneDestructionConditionsSetFromSuperSet_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [_UISceneDestructionCondition conditionFromSuper:a2];
  [v2 addObject:v3];
}

@end