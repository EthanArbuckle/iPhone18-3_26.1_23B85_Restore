@interface SXDebugAdvertisementSettingsProvider
- (SXDebugAdvertisementSettingsProvider)initWithDebugSettings:(id)a3;
@end

@implementation SXDebugAdvertisementSettingsProvider

- (SXDebugAdvertisementSettingsProvider)initWithDebugSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXDebugAdvertisementSettingsProvider;
  v6 = [(SXDebugAdvertisementSettingsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugSettings, a3);
  }

  return v7;
}

@end