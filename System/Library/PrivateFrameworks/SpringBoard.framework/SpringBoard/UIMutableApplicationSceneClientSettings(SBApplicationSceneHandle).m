@interface UIMutableApplicationSceneClientSettings(SBApplicationSceneHandle)
- (uint64_t)sb_effectiveInterfaceOrientation;
@end

@implementation UIMutableApplicationSceneClientSettings(SBApplicationSceneHandle)

- (uint64_t)sb_effectiveInterfaceOrientation
{
  result = [a1 interfaceOrientation];
  if ((result - 1) >= 4)
  {
    return 1;
  }

  return result;
}

@end