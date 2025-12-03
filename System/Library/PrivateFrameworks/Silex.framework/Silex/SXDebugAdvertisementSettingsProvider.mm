@interface SXDebugAdvertisementSettingsProvider
- (SXDebugAdvertisementSettingsProvider)initWithDebugSettings:(id)settings;
@end

@implementation SXDebugAdvertisementSettingsProvider

- (SXDebugAdvertisementSettingsProvider)initWithDebugSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = SXDebugAdvertisementSettingsProvider;
  v6 = [(SXDebugAdvertisementSettingsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugSettings, settings);
  }

  return v7;
}

@end