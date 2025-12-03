@interface PSMutableSceneSettings
- (PSMutableSceneSettings)initWithSettings:(id)settings;
@end

@implementation PSMutableSceneSettings

- (PSMutableSceneSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = PSMutableSceneSettings;
  v6 = [(PSMutableSceneSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

@end