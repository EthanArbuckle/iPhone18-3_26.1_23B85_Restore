@interface CEMPolicyCategoryDeclaration(ScreenTime)
- (uint64_t)st_containsCategoryIdentifer:()ScreenTime;
@end

@implementation CEMPolicyCategoryDeclaration(ScreenTime)

- (uint64_t)st_containsCategoryIdentifer:()ScreenTime
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  payloadCategories = [self payloadCategories];
  v6 = [payloadCategories containsObject:v4];

  return v6;
}

@end