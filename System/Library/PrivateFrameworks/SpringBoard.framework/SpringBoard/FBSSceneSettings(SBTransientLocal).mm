@interface FBSSceneSettings(SBTransientLocal)
- (id)sb_displayConfigurationForSceneManagers;
- (id)sb_displayIdentityForSceneManagers;
@end

@implementation FBSSceneSettings(SBTransientLocal)

- (id)sb_displayIdentityForSceneManagers
{
  sb_displayConfigurationForSceneManagers = [self sb_displayConfigurationForSceneManagers];
  identity = [sb_displayConfigurationForSceneManagers identity];

  return identity;
}

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

@end