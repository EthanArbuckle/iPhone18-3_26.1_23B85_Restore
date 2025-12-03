@interface PGUserDefaultsConfigurationSource
- (PGUserDefaultsConfigurationSource)initWithUserDefaults:(id)defaults;
@end

@implementation PGUserDefaultsConfigurationSource

- (PGUserDefaultsConfigurationSource)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = PGUserDefaultsConfigurationSource;
  v6 = [(PGUserDefaultsConfigurationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
  }

  return v7;
}

@end