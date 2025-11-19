@interface _LTDASRAssetModel
+ (id)modelFromAsset:(id)a3;
- (BOOL)isAvailable;
- (BOOL)isDownloading;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (BOOL)supportsLocale:(id)a3;
- (BOOL)supportsTaskHint:(int64_t)a3;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)debugDescription;
- (NSString)managedAssetType;
- (NSURL)getLocalFileUrl;
- (_LTDASRAssetModel)initWithAssetIdentifier:(id)a3 provider:(id)a4;
- (unint64_t)assetSubtype;
- (unint64_t)hash;
- (unint64_t)state;
@end

@implementation _LTDASRAssetModel

- (_LTDASRAssetModel)initWithAssetIdentifier:(id)a3 provider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = _LTDASRAssetModel;
  v9 = [(_LTDASRAssetModel *)&v21 init];
  if (!v9)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if (([v7 hasPrefix:@"ASR-"] & 1) == 0)
  {
    v19 = _LTOSLogAssets();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_LTDASRAssetModel initWithAssetIdentifier:v7 provider:v19];
    }

    goto LABEL_10;
  }

  objc_storeStrong(&v9->_assetName, a3);
  v10 = [v7 substringFromIndex:{objc_msgSend(@"ASR-", "length")}];
  v11 = [v10 lt_localeIdentifier];
  ltIdentifier = v9->_ltIdentifier;
  v9->_ltIdentifier = v11;

  objc_storeStrong(&v9->_provider, a4);
  v13 = [v8 assetType];
  v14 = 3;
  if (v13 == 7)
  {
    v14 = 4;
  }

  v9->_assetSubtype = v14;
  v15 = [_LTDASRAssetService assetSpecifierForSFConfig:v8];
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

+ (id)modelFromAsset:(id)a3
{
  v3 = [a3 provider];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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
    v4 = [(SFEntitledAssetConfig *)self->_provider assetType];
    v5 = 2;
    if (v4 == 3)
    {
      v5 = 3;
    }

    if (v4 == 7)
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
  v2 = [(_LTDASRAssetModel *)self provider];
  v3 = [_LTDASRAssetService pathToSFAsset:v2];

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
  v2 = [(_LTDASRAssetModel *)self assetSubtype];
  v3 = kLTDASRAssetTypeNGASR;
  v4 = &kLTDASRAssetTypeGASR;
  if (v2 != 4)
  {
    v4 = kLTAssetTypeMT_MA;
  }

  if (v2 != 3)
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

  v4 = [(_LTAssetProgress *)self->_progress offlineState];
  v5 = 2;
  if (v4 != 1)
  {
    v5 = 3;
  }

  if (v4 == 2)
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
  v2 = [(_LTDASRAssetModel *)self assetLanguage];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isAvailable
{
  v2 = [(_LTDASRAssetModel *)self progress];
  v3 = [v2 offlineState] == 0;

  return v3;
}

- (BOOL)isDownloading
{
  v2 = [(_LTDASRAssetModel *)self progress];
  v3 = [v2 offlineState] == 1;

  return v3;
}

- (BOOL)isInstalled
{
  v2 = [(_LTDASRAssetModel *)self getLocalFileUrl];
  v3 = [v2 path];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (BOOL)supportsLocale:(id)a3
{
  v4 = a3;
  v5 = [(_LTDASRAssetModel *)self assetLanguage];
  v6 = [v4 _ltLocaleIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)supportsTaskHint:(int64_t)a3
{
  v4 = a3 - 9;
  v5 = [(_LTDASRAssetModel *)self assetSubtype];
  if (v4 > 1)
  {
    if (v5 == 2)
    {
      return 1;
    }

    return [(_LTDASRAssetModel *)self assetSubtype]== 3;
  }

  else
  {
    return v5 == 4;
  }
}

- (NSArray)localeIdentifiers
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(_LTDASRAssetModel *)self identifier];
  v3 = [v2 componentsSeparatedByString:@"-"];

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
  v2 = [(_LTDASRAssetModel *)self assetName];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    if (v4)
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
    v9 = [(_LTDASRAssetModel *)self assetName];
    v10 = [(_LTDASRAssetModel *)v8 assetName];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [(_LTDASRAssetModel *)self getLocalFileUrl];
      v13 = [(_LTDASRAssetModel *)v8 getLocalFileUrl];
      if (v12 | v13)
      {
        v7 = [v12 isEqual:v13];
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
  v6 = [(_LTDASRAssetModel *)self assetName];
  v7 = [(_LTDASRAssetModel *)self provider];
  v8 = [v7 debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %@, %@>", v5, v6, v8];

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