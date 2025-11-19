@interface FBSSceneSettings(SBTransientLocal)
- (id)sb_displayConfigurationForSceneManagers;
- (id)sb_displayIdentityForSceneManagers;
@end

@implementation FBSSceneSettings(SBTransientLocal)

- (id)sb_displayIdentityForSceneManagers
{
  v1 = [a1 sb_displayConfigurationForSceneManagers];
  v2 = [v1 identity];

  return v2;
}

- (id)sb_displayConfigurationForSceneManagers
{
  v2 = [a1 transientLocalSettings];
  v3 = [v2 objectForSetting:5796];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 displayConfiguration];
  }

  v6 = v5;

  return v6;
}

@end