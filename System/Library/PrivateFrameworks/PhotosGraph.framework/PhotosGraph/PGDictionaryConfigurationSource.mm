@interface PGDictionaryConfigurationSource
- (PGDictionaryConfigurationSource)initWithDictionary:(id)dictionary;
@end

@implementation PGDictionaryConfigurationSource

- (PGDictionaryConfigurationSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PGDictionaryConfigurationSource;
  v6 = [(PGDictionaryConfigurationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationData, dictionary);
  }

  return v7;
}

@end