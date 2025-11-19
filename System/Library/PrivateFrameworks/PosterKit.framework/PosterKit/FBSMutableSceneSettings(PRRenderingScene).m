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
  v4 = [a1 otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [v4 setObject:v3 forSetting:20664];
}

- (void)pr_setWakeSourceIsSwipeToUnlock:()PRRenderingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20663];
}

- (void)pr_setTitleAlignment:()PRRenderingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20662];
}

- (void)pr_setAdjustedLuminance:()PRRenderingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:20668];
}

- (void)pr_setAppliesCountertransformForRotation:()PRRenderingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20669];
}

@end