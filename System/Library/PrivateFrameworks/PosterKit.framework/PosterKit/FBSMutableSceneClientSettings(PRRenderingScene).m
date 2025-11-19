@interface FBSMutableSceneClientSettings(PRRenderingScene)
- (id)pr_desiredLegibilitySettings;
- (void)pr_setAverageColor:()PRRenderingScene;
- (void)pr_setContentSize:()PRRenderingScene;
- (void)pr_setDesiredLegibilitySettings:()PRRenderingScene;
- (void)pr_setHandlesWakeAnimation:()PRRenderingScene;
- (void)pr_setHideChrome:()PRRenderingScene;
- (void)pr_setHideDimmingLayer:()PRRenderingScene;
- (void)pr_setPreferredProminentColor:()PRRenderingScene;
- (void)pr_setRequestedRenderingEventTypes:()PRRenderingScene;
- (void)pr_setRequestedRenderingTransitionTypes:()PRRenderingScene;
@end

@implementation FBSMutableSceneClientSettings(PRRenderingScene)

- (void)pr_setPreferredProminentColor:()PRRenderingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20719];
}

- (void)pr_setAverageColor:()PRRenderingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20714];
}

- (id)pr_desiredLegibilitySettings
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20717];

  return v2;
}

- (void)pr_setDesiredLegibilitySettings:()PRRenderingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20717];
}

- (void)pr_setHandlesWakeAnimation:()PRRenderingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v5 setObject:v4 forSetting:20713];
}

- (void)pr_setContentSize:()PRRenderingScene
{
  if (a2 == *MEMORY[0x1E695F060] && a3 == *(MEMORY[0x1E695F060] + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696B098] bs_valueWithCGSize:?];
  }

  v5 = [a1 otherSettings];
  [v5 setObject:v6 forSetting:20715];
}

- (void)pr_setHideChrome:()PRRenderingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v5 setObject:v4 forSetting:20716];
}

- (void)pr_setHideDimmingLayer:()PRRenderingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v5 setObject:v4 forSetting:20718];
}

- (void)pr_setRequestedRenderingEventTypes:()PRRenderingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20720];
}

- (void)pr_setRequestedRenderingTransitionTypes:()PRRenderingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20721];
}

@end