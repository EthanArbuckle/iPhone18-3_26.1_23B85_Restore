@interface SBSceneHandle(DeviceApplicationSceneHandle)
- (uint64_t)isEffectivelyForeground;
@end

@implementation SBSceneHandle(DeviceApplicationSceneHandle)

- (uint64_t)isEffectivelyForeground
{
  v1 = [a1 sceneIfExists];
  v2 = [v1 settings];
  v3 = [v2 isForeground];

  return v3;
}

@end