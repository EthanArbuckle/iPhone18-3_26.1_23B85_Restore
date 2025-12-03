@interface SRLanguageConfiguration
+ (id)configuration;
- (BOOL)isSupportedLanguage:(id)language deliveryType:(id)type;
- (SRLanguageConfiguration)init;
- (void)loadSupportedLanguages:(id)languages;
@end

@implementation SRLanguageConfiguration

+ (id)configuration
{
  if (configuration_onceToken != -1)
  {
    +[SRLanguageConfiguration configuration];
  }

  v3 = configuration_sLanguageConfig;

  return v3;
}

- (SRLanguageConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SRLanguageConfiguration;
  v2 = [(SRLanguageConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    supportedLanguageMap = v2->_supportedLanguageMap;
    v2->_supportedLanguageMap = 0;

    v3->_hasTestAssets = 0;
  }

  return v3;
}

uint64_t __40__SRLanguageConfiguration_configuration__block_invoke()
{
  configuration_sLanguageConfig = objc_alloc_init(SRLanguageConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

- (void)loadSupportedLanguages:(id)languages
{
  languagesCopy = languages;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:languagesCopy];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:languagesCopy];
    v8 = [v6 dictionaryWithContentsOfURL:v7 error:0];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:@"Version"];
      unsignedIntValue = [v10 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    pthread_rwlock_wrlock(&sLanguagesLock);
    supportedLanguageMap = self->_supportedLanguageMap;
    p_supportedLanguageMap = &self->_supportedLanguageMap;
    v12 = supportedLanguageMap;
    if (supportedLanguageMap)
    {
      v15 = [(NSDictionary *)v12 objectForKeyedSubscript:@"Version"];
      unsignedIntValue2 = [v15 unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
    }

    if (unsignedIntValue > unsignedIntValue2)
    {
      objc_storeStrong(p_supportedLanguageMap, v9);
    }

    pthread_rwlock_unlock(&sLanguagesLock);
  }

  MEMORY[0x1EEE66BE0]();
}

- (BOOL)isSupportedLanguage:(id)language deliveryType:(id)type
{
  languageCopy = language;
  typeCopy = type;
  pthread_rwlock_rdlock(&sLanguagesLock);
  supportedLanguageMap = self->_supportedLanguageMap;
  if (supportedLanguageMap)
  {
    v9 = [(NSDictionary *)supportedLanguageMap objectForKeyedSubscript:typeCopy];
    if (v9)
    {
      v10 = [(NSDictionary *)self->_supportedLanguageMap objectForKeyedSubscript:typeCopy];
      v11 = [v10 containsObject:languageCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  pthread_rwlock_unlock(&sLanguagesLock);

  return v11;
}

@end