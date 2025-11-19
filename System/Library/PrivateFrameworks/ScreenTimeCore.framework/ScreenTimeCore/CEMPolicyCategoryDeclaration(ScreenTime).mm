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
  v5 = [a1 payloadCategories];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end