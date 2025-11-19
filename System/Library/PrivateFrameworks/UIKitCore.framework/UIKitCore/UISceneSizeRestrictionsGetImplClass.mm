@interface UISceneSizeRestrictionsGetImplClass
@end

@implementation UISceneSizeRestrictionsGetImplClass

uint64_t ___UISceneSizeRestrictionsGetImplClass_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scenePredicate];
  v4 = [v3 evaluateWithObject:*(a1 + 32)];

  return v4;
}

@end