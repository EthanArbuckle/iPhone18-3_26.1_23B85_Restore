@interface PGUserDefaultsConfigurationSource
- (PGUserDefaultsConfigurationSource)initWithUserDefaults:(id)a3;
@end

@implementation PGUserDefaultsConfigurationSource

- (PGUserDefaultsConfigurationSource)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGUserDefaultsConfigurationSource;
  v6 = [(PGUserDefaultsConfigurationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
  }

  return v7;
}

@end