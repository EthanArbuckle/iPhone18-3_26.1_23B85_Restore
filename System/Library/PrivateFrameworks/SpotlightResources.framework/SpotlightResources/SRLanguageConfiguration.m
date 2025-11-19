@interface SRLanguageConfiguration
+ (id)configuration;
- (BOOL)isSupportedLanguage:(id)a3 deliveryType:(id)a4;
- (SRLanguageConfiguration)init;
- (void)loadSupportedLanguages:(id)a3;
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

- (void)loadSupportedLanguages:(id)a3
{
  v17 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v17];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17];
    v8 = [v6 dictionaryWithContentsOfURL:v7 error:0];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:@"Version"];
      v11 = [v10 unsignedIntValue];
    }

    else
    {
      v11 = 0;
    }

    pthread_rwlock_wrlock(&sLanguagesLock);
    supportedLanguageMap = self->_supportedLanguageMap;
    p_supportedLanguageMap = &self->_supportedLanguageMap;
    v12 = supportedLanguageMap;
    if (supportedLanguageMap)
    {
      v15 = [(NSDictionary *)v12 objectForKeyedSubscript:@"Version"];
      v16 = [v15 unsignedIntValue];
    }

    else
    {
      v16 = 0;
    }

    if (v11 > v16)
    {
      objc_storeStrong(p_supportedLanguageMap, v9);
    }

    pthread_rwlock_unlock(&sLanguagesLock);
  }

  MEMORY[0x1EEE66BE0]();
}

- (BOOL)isSupportedLanguage:(id)a3 deliveryType:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_rwlock_rdlock(&sLanguagesLock);
  supportedLanguageMap = self->_supportedLanguageMap;
  if (supportedLanguageMap)
  {
    v9 = [(NSDictionary *)supportedLanguageMap objectForKeyedSubscript:v7];
    if (v9)
    {
      v10 = [(NSDictionary *)self->_supportedLanguageMap objectForKeyedSubscript:v7];
      v11 = [v10 containsObject:v6];
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