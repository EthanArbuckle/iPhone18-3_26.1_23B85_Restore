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
  payloadHostnames = [self payloadHostnames];
  v6 = [payloadHostnames containsObject:v4];

  return v6;
}

@end