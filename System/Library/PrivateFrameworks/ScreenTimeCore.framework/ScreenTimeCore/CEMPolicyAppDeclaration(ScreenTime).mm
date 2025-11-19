@interface CEMPolicyAppDeclaration(ScreenTime)
- (uint64_t)st_containsBundleIdentifier:()ScreenTime;
@end

@implementation CEMPolicyAppDeclaration(ScreenTime)

- (uint64_t)st_containsBundleIdentifier:()ScreenTime
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [a1 payloadApps];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end