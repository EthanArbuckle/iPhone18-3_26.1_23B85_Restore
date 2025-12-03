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
  payloadApps = [self payloadApps];
  v6 = [payloadApps containsObject:v4];

  return v6;
}

@end