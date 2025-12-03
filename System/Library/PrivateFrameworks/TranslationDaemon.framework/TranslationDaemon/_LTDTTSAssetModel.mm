@interface _LTDTTSAssetModel
+ (id)modelFromAsset:(id)asset;
- (BOOL)canBePurged;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsLocale:(id)locale;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)debugDescription;
- (_LTDTTSAssetModel)initWithAssetIdentifier:(id)identifier;
- (_LTDTTSAssetModel)initWithProvider:(id)provider;
- (int64_t)unarchivedSize;
- (unint64_t)assetSubtype;
- (unint64_t)hash;
- (unint64_t)state;
@end

@implementation _LTDTTSAssetModel

- (_LTDTTSAssetModel)initWithAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"TTS-"])
  {
    objc_storeStrong(&self->_assetName, identifier);
    v6 = [identifierCopy substringFromIndex:{objc_msgSend(@"TTS-", "length")}];
    v7 = [_LTDTTSAssetService ttsAssetForLocaleIdentifier:v6 onDeviceOnly:0];
    v8 = v7;
    if (v7)
    {
      [(_LTDTTSAssetModel *)v7 setAssetName:identifierCopy];
      v9 = v8;
    }

    else
    {
      v11 = _LTOSLogAssets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_LTDTTSAssetModel *)identifierCopy initWithAssetIdentifier:v11];
      }
    }
  }

  else
  {
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_LTDTTSAssetModel *)identifierCopy initWithAssetIdentifier:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (_LTDTTSAssetModel)initWithProvider:(id)provider
{
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = _LTDTTSAssetModel;
  v6 = [(_LTDTTSAssetModel *)&v24 init];
  if (v6)
  {
    primaryLanguage = [providerCopy primaryLanguage];
    language = v6->_language;
    v6->_language = primaryLanguage;

    v9 = [(NSString *)v6->_language stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    ltIdentifier = v6->_ltIdentifier;
    v6->_ltIdentifier = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS-%@", v6->_ltIdentifier];
    assetName = v6->_assetName;
    v6->_assetName = v11;

    objc_storeStrong(&v6->_provider, provider);
    v13 = MEMORY[0x277CE1AC0];
    v14 = v6->_assetName;
    downloadSize = [(TTSAsset *)v6->_provider downloadSize];
    integerValue = [downloadSize integerValue];

    if (integerValue <= 314572800)
    {
      v17 = 314572800;
    }

    else
    {
      v17 = integerValue;
    }

    v18 = [v13 discreteProgressWithIdentifier:v14 totalUnitCount:v17];
    progress = v6->_progress;
    v6->_progress = v18;

    state = [(_LTDTTSAssetModel *)v6 state];
    if (state == 1)
    {
      v21 = 2;
    }

    else
    {
      if (state != 2)
      {
LABEL_10:
        v22 = v6;
        goto LABEL_11;
      }

      v21 = 1;
    }

    [(_LTAssetProgress *)v6->_progress setOfflineState:v21];
    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

+ (id)modelFromAsset:(id)asset
{
  provider = [asset provider];
  if (provider)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = provider;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)assetSubtype
{
  result = self->_assetSubtype;
  if (!result)
  {
    result = [(_LTDTTSAssetModel *)self assetType];
    self->_assetSubtype = result;
  }

  return result;
}

- (unint64_t)state
{
  if (([(TTSAsset *)self->_provider locallyAvailable]& 1) != 0)
  {
    return 1;
  }

  if ([(TTSAsset *)self->_provider downloading])
  {
    return 2;
  }

  return 3;
}

- (NSArray)supportedLanguages
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self->_language;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (int64_t)unarchivedSize
{
  provider = [(_LTDTTSAssetModel *)self provider];
  diskSize = [provider diskSize];
  integerValue = [diskSize integerValue];

  return integerValue;
}

- (BOOL)canBePurged
{
  provider = [(_LTDTTSAssetModel *)self provider];
  purgeable = [provider purgeable];

  return purgeable;
}

- (BOOL)supportsLocale:(id)locale
{
  localeCopy = locale;
  assetLanguage = [(_LTDTTSAssetModel *)self assetLanguage];
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];

  LOBYTE(localeCopy) = [assetLanguage isEqualToString:_ltLocaleIdentifier];
  return localeCopy;
}

- (NSArray)localeIdentifiers
{
  v8[1] = *MEMORY[0x277D85DE8];
  identifier = [(_LTDTTSAssetModel *)self identifier];
  v3 = [identifier componentsSeparatedByString:@"-"];

  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)hash
{
  assetName = [(_LTDTTSAssetModel *)self assetName];
  v3 = [assetName hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;
    assetName = [(_LTDTTSAssetModel *)self assetName];
    assetName2 = [(_LTDTTSAssetModel *)v8 assetName];
    v11 = [assetName isEqualToString:assetName2];

    if (v11)
    {
      getLocalFileUrl = [(_LTDTTSAssetModel *)self getLocalFileUrl];
      getLocalFileUrl2 = [(_LTDTTSAssetModel *)v8 getLocalFileUrl];
      if (getLocalFileUrl | getLocalFileUrl2)
      {
        v7 = [getLocalFileUrl isEqual:getLocalFileUrl2];
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  assetName = [(_LTDTTSAssetModel *)self assetName];
  provider = [(_LTDTTSAssetModel *)self provider];
  v8 = [provider debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %@, %@>", v5, assetName, v8];

  return v9;
}

- (void)initWithAssetIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Cannot initialize a LTDTTSAssetModel using a non-TTS identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithAssetIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Cannot locate a TTSAsset for identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end