@interface CEMPolicyWebSiteDeclaration(ScreenTime)
- (uint64_t)st_containsWebDomain:()ScreenTime;
@end

@implementation CEMPolicyWebSiteDeclaration(ScreenTime)

- (uint64_t)st_containsWebDomain:()ScreenTime
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [a1 payloadHostnames];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end