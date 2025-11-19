@interface UIOldConstraintsSupportUpdateDependentViewsForConstraint
@end

@implementation UIOldConstraintsSupportUpdateDependentViewsForConstraint

uint64_t ___UIOldConstraintsSupportUpdateDependentViewsForConstraint_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [a2 _didAddDependentConstraint:v2];
  }

  else
  {
    return [a2 _didRemoveDependentConstraint:v2];
  }
}

@end