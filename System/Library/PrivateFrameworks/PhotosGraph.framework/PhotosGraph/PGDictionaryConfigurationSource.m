@interface PGDictionaryConfigurationSource
- (PGDictionaryConfigurationSource)initWithDictionary:(id)a3;
@end

@implementation PGDictionaryConfigurationSource

- (PGDictionaryConfigurationSource)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGDictionaryConfigurationSource;
  v6 = [(PGDictionaryConfigurationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationData, a3);
  }

  return v7;
}

@end