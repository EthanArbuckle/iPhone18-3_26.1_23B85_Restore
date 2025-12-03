@interface _LTDAssetConfigurationModel
- (_LTDAssetConfigurationModel)initWithDictionary:(id)dictionary;
- (id)currentAssetDirectoryName;
- (id)currentEndpointAssetType;
- (id)currentSpeechTranslationAssetType;
- (void)currentSpeechTranslationAssetType;
@end

@implementation _LTDAssetConfigurationModel

- (_LTDAssetConfigurationModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = _LTDAssetConfigurationModel;
  v5 = [(_LTDAssetConfigurationModel *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ManagedAssetTypes"];
    root = v5->_root;
    v5->_root = v6;

    v8 = [(NSDictionary *)v5->_root objectForKeyedSubscript:@"SpeechTranslation"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v8 lt_ensureElementType:objc_opt_class()];
      v10 = MEMORY[0x277CBEBF8];
      if (v9)
      {
        v10 = v8;
      }
    }

    else
    {

      v8 = 0;
      v10 = MEMORY[0x277CBEBF8];
    }

    v11 = v10;

    speechTranslationAssetTypes = v5->_speechTranslationAssetTypes;
    v5->_speechTranslationAssetTypes = v11;

    v13 = [(NSDictionary *)v5->_root objectForKeyedSubscript:@"SpeechEndpoint"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v13 lt_ensureElementType:objc_opt_class()];
      v15 = MEMORY[0x277CBEBF8];
      if (v14)
      {
        v15 = v13;
      }
    }

    else
    {

      v13 = 0;
      v15 = MEMORY[0x277CBEBF8];
    }

    v16 = v15;

    speechEndpointAssetTypes = v5->_speechEndpointAssetTypes;
    v5->_speechEndpointAssetTypes = v16;

    v18 = [(NSDictionary *)v5->_root objectForKeyedSubscript:@"AssetDirectory"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v18 lt_ensureElementType:objc_opt_class()];
      v20 = MEMORY[0x277CBEBF8];
      if (v19)
      {
        v20 = v18;
      }
    }

    else
    {

      v18 = 0;
      v20 = MEMORY[0x277CBEBF8];
    }

    v21 = v20;

    assetDirectoryNames = v5->_assetDirectoryNames;
    v5->_assetDirectoryNames = v21;

    v23 = v5;
  }

  return v5;
}

- (id)currentSpeechTranslationAssetType
{
  v3 = _LTPreferencesOverrideDefaultCatalog();
  if (v3)
  {
    lastObject = v3;
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDAssetConfigurationModel *)lastObject currentSpeechTranslationAssetType];
    }
  }

  else
  {
    speechTranslationAssetTypes = [(_LTDAssetConfigurationModel *)self speechTranslationAssetTypes];
    lastObject = [speechTranslationAssetTypes lastObject];

    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDAssetConfigurationModel *)lastObject currentSpeechTranslationAssetType];
    }
  }

  v8 = lastObject;

  return v8;
}

- (id)currentEndpointAssetType
{
  speechEndpointAssetTypes = [(_LTDAssetConfigurationModel *)self speechEndpointAssetTypes];
  lastObject = [speechEndpointAssetTypes lastObject];

  return lastObject;
}

- (id)currentAssetDirectoryName
{
  assetDirectoryNames = [(_LTDAssetConfigurationModel *)self assetDirectoryNames];
  lastObject = [assetDirectoryNames lastObject];

  return lastObject;
}

- (void)currentSpeechTranslationAssetType
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Current translation asset catalog is %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end