@interface UIApplicationSceneClientSettings(SBApplicationSceneHandle)
- (uint64_t)sb_effectiveInterfaceOrientation;
@end

@implementation UIApplicationSceneClientSettings(SBApplicationSceneHandle)

- (uint64_t)sb_effectiveInterfaceOrientation
{
  result = [self interfaceOrientation];
  if ((result - 1) >= 4)
  {
    return 1;
  }

  return result;
}

@end