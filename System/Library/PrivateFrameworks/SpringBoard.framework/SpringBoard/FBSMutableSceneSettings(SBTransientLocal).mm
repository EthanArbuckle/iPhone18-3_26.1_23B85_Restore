@interface FBSMutableSceneSettings(SBTransientLocal)
- (id)sb_displayConfigurationForSceneManagers;
- (id)sb_displayIdentityForSceneManagers;
- (void)sb_setDisplayConfigurationForSceneManagers:()SBTransientLocal;
@end

@implementation FBSMutableSceneSettings(SBTransientLocal)

- (id)sb_displayConfigurationForSceneManagers
{
  transientLocalSettings = [self transientLocalSettings];
  v3 = [transientLocalSettings objectForSetting:5796];
  v4 = v3;
  if (v3)
  {
    displayConfiguration = v3;
  }

  else
  {
    displayConfiguration = [self displayConfiguration];
  }

  v6 = displayConfiguration;

  return v6;
}

- (id)sb_displayIdentityForSceneManagers
{
  sb_displayConfigurationForSceneManagers = [self sb_displayConfigurationForSceneManagers];
  identity = [sb_displayConfigurationForSceneManagers identity];

  return identity;
}

- (void)sb_setDisplayConfigurationForSceneManagers:()SBTransientLocal
{
  v4 = a3;
  transientLocalSettings = [self transientLocalSettings];
  [transientLocalSettings setObject:v4 forSetting:5796];
}

@end