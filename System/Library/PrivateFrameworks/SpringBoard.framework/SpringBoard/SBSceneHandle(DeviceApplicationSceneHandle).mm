@interface SBSceneHandle(DeviceApplicationSceneHandle)
- (uint64_t)isEffectivelyForeground;
@end

@implementation SBSceneHandle(DeviceApplicationSceneHandle)

- (uint64_t)isEffectivelyForeground
{
  sceneIfExists = [self sceneIfExists];
  settings = [sceneIfExists settings];
  isForeground = [settings isForeground];

  return isForeground;
}

@end