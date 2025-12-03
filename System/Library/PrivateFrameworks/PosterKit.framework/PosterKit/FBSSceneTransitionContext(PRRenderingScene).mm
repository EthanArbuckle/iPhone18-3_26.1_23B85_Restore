@interface FBSSceneTransitionContext(PRRenderingScene)
- (BOOL)pr_finishUnlockingWithParameters:()PRRenderingScene;
- (double)pr_finishUnlockParameters;
- (uint64_t)pr_updateSnapshot;
- (void)pr_setFinishUnlockParameters:()PRRenderingScene;
- (void)pr_setUpdateSnapshot:()PRRenderingScene;
@end

@implementation FBSSceneTransitionContext(PRRenderingScene)

- (uint64_t)pr_updateSnapshot
{
  otherSettings = [self otherSettings];
  [otherSettings flagForSetting:20563];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)pr_setUpdateSnapshot:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:20563];
}

- (BOOL)pr_finishUnlockingWithParameters:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  v5 = [otherSettings objectForSetting:20564];

  if (a3 && v5)
  {
    [v5 bs_CGSizeValue];
    *a3 = v6;
    a3[1] = v7;
  }

  return v5 != 0;
}

- (double)pr_finishUnlockParameters
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20564];

  if (v2)
  {
    [v2 bs_CGSizeValue];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
  }

  return v4;
}

- (void)pr_setFinishUnlockParameters:()PRRenderingScene
{
  otherSettings = [self otherSettings];
  *v7 = a2;
  *&v7[1] = a3;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [otherSettings setObject:v6 forSetting:20564];
}

@end