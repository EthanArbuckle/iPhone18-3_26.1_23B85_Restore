@interface _LTDASRAssetModel
+ (id)modelFromAsset:(id)asset;
- (BOOL)isAvailable;
- (BOOL)isDownloading;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstalled;
- (BOOL)supportsLocale:(id)locale;
- (BOOL)supportsTaskHint:(int64_t)hint;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)debugDescription;
- (NSString)managedAssetType;
- (NSURL)getLocalFileUrl;
- (_LTDASRAssetModel)initWithAssetIdentifier:(id)identifier provider:(id)provider;
- (unint64_t)assetSubtype;
- (unint64_t)hash;
- (unint64_t)state;
@end

@implementation _LTDASRAssetModel

- (_LTDASRAssetModel)initWithAssetIdentifier:(id)identifier provider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = _LTDASRAssetModel;
  v9 = [(_LTDASRAssetModel *)&v21 init];
  if (!v9)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if (([identifierCopy hasPrefix:@"ASR-"] & 1) == 0)
  {
    v19 = _LTOSLogAssets();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_LTDASRAssetModel initWithAssetIdentifier:identifierCopy provider:v19];
    }

    goto LABEL_10;
  }

  objc_storeStrong(&v9->_assetName, identifier);
  v10 = [identifierCopy substringFromIndex:{objc_msgSend(@"ASR-", "length")}];
  lt_localeIdentifier = [v10 lt_localeIdentifier];
  ltIdentifier = v9->_ltIdentifier;
  v9->_ltIdentifier = lt_localeIdentifier;

  objc_storeStrong(&v9->_provider, provider);
  assetType = [providerCopy assetType];
  v14 = 3;
  if (assetType == 7)
  {
    v14 = 4;
  }

  v9->_assetSubtype = v14;
  v15 = [_LTDASRAssetService assetSpecifierForSFConfig:providerCopy];
  v16 = [MEMORY[0x277CE1AC0] discreteProgressWithIdentifier:v15 totalUnitCount:157286400];
  progress = v9->_progress;
  v9->_progress = v16;

  if ([(_LTDASRAssetModel *)v9 isInstalled])
  {
    [(_LTAssetProgress *)v9->_progress setOfflineState:2];
  }

  v18 = v9;

LABEL_11:
  return v18;
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
    assetType = [(SFEntitledAssetConfig *)self->_provider assetType];
    v5 = 2;
    if (assetType == 3)
    {
      v5 = 3;
    }

    if (assetType == 7)
    {
      result = 4;
    }

    else
    {
      result = v5;
    }

    self->_assetSubtype = result;
  }

  return result;
}

- (NSURL)getLocalFileUrl
{
  provider = [(_LTDASRAssetModel *)self provider];
  v3 = [_LTDASRAssetService pathToSFAsset:provider];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)managedAssetType
{
  assetSubtype = [(_LTDASRAssetModel *)self assetSubtype];
  v3 = kLTDASRAssetTypeNGASR;
  v4 = &kLTDASRAssetTypeGASR;
  if (assetSubtype != 4)
  {
    v4 = kLTAssetTypeMT_MA;
  }

  if (assetSubtype != 3)
  {
    v3 = v4;
  }

  v5 = *v3;

  return v5;
}

- (unint64_t)state
{
  if ([(_LTDASRAssetModel *)self isInstalled])
  {
    return 1;
  }

  offlineState = [(_LTAssetProgress *)self->_progress offlineState];
  v5 = 2;
  if (offlineState != 1)
  {
    v5 = 3;
  }

  if (offlineState == 2)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSArray)supportedLanguages
{
  v6[1] = *MEMORY[0x277D85DE8];
  assetLanguage = [(_LTDASRAssetModel *)self assetLanguage];
  v6[0] = assetLanguage;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isAvailable
{
  progress = [(_LTDASRAssetModel *)self progress];
  v3 = [progress offlineState] == 0;

  return v3;
}

- (BOOL)isDownloading
{
  progress = [(_LTDASRAssetModel *)self progress];
  v3 = [progress offlineState] == 1;

  return v3;
}

- (BOOL)isInstalled
{
  getLocalFileUrl = [(_LTDASRAssetModel *)self getLocalFileUrl];
  path = [getLocalFileUrl path];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:path];

  return v5;
}

- (BOOL)supportsLocale:(id)locale
{
  localeCopy = locale;
  assetLanguage = [(_LTDASRAssetModel *)self assetLanguage];
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];

  LOBYTE(localeCopy) = [assetLanguage isEqualToString:_ltLocaleIdentifier];
  return localeCopy;
}

- (BOOL)supportsTaskHint:(int64_t)hint
{
  v4 = hint - 9;
  assetSubtype = [(_LTDASRAssetModel *)self assetSubtype];
  if (v4 > 1)
  {
    if (assetSubtype == 2)
    {
      return 1;
    }

    return [(_LTDASRAssetModel *)self assetSubtype]== 3;
  }

  else
  {
    return assetSubtype == 4;
  }
}

- (NSArray)localeIdentifiers
{
  v8[1] = *MEMORY[0x277D85DE8];
  identifier = [(_LTDASRAssetModel *)self identifier];
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
  assetName = [(_LTDASRAssetModel *)self assetName];
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
    assetName = [(_LTDASRAssetModel *)self assetName];
    assetName2 = [(_LTDASRAssetModel *)v8 assetName];
    v11 = [assetName isEqualToString:assetName2];

    if (v11)
    {
      getLocalFileUrl = [(_LTDASRAssetModel *)self getLocalFileUrl];
      getLocalFileUrl2 = [(_LTDASRAssetModel *)v8 getLocalFileUrl];
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
  assetName = [(_LTDASRAssetModel *)self assetName];
  provider = [(_LTDASRAssetModel *)self provider];
  v8 = [provider debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %@, %@>", v5, assetName, v8];

  return v9;
}

- (void)initWithAssetIdentifier:(uint64_t)a1 provider:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Cannot initialize a LTDASRAssetModel using a non-ASR identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end