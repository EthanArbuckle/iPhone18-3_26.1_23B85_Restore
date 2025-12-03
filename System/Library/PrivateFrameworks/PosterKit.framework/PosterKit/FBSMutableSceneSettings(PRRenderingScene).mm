@interface FBSMutableSceneSettings(PRRenderingScene)
- (void)pr_setAdjustedLuminance:()PRRenderingScene;
- (void)pr_setAppliesCountertransformForRotation:()PRRenderingScene;
- (void)pr_setTitleAlignment:()PRRenderingScene;
- (void)pr_setUnlockProgress:()PRRenderingScene;
- (void)pr_setWakeSourceIsSwipeToUnlock:()PRRenderingScene;
@end

@implementation FBSMutableSceneSettings(PRRenderingScene)

- (void)pr_setUnlockProgress:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [otherSettings setObject:v3 forSetting:20664];
}

- (void)pr_setWakeSourceIsSwipeToUnlock:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20663];
}

- (void)pr_setTitleAlignment:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20662];
}

- (void)pr_setAdjustedLuminance:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20668];
}

- (void)pr_setAppliesCountertransformForRotation:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20669];
}

@end