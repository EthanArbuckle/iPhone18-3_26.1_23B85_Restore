@interface PSSceneSettings
- (PSSceneSettings)initWithSettings:(id)settings;
@end

@implementation PSSceneSettings

- (PSSceneSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = PSSceneSettings;
  v6 = [(PSSceneSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

@end