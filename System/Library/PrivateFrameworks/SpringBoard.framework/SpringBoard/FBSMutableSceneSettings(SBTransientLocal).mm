@interface FBSMutableSceneSettings(SBTransientLocal)
- (id)sb_displayConfigurationForSceneManagers;
- (id)sb_displayIdentityForSceneManagers;
- (void)sb_setDisplayConfigurationForSceneManagers:()SBTransientLocal;
@end

@implementation FBSMutableSceneSettings(SBTransientLocal)

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

- (id)sb_displayIdentityForSceneManagers
{
  v1 = [a1 sb_displayConfigurationForSceneManagers];
  v2 = [v1 identity];

  return v2;
}

- (void)sb_setDisplayConfigurationForSceneManagers:()SBTransientLocal
{
  v4 = a3;
  v5 = [a1 transientLocalSettings];
  [v5 setObject:v4 forSetting:5796];
}

@end