@interface _LTDTTSAssetModel
+ (id)modelFromAsset:(id)a3;
- (BOOL)canBePurged;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsLocale:(id)a3;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)debugDescription;
- (_LTDTTSAssetModel)initWithAssetIdentifier:(id)a3;
- (_LTDTTSAssetModel)initWithProvider:(id)a3;
- (int64_t)unarchivedSize;
- (unint64_t)assetSubtype;
- (unint64_t)hash;
- (unint64_t)state;
@end

@implementation _LTDTTSAssetModel

- (_LTDTTSAssetModel)initWithAssetIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 hasPrefix:@"TTS-"])
  {
    objc_storeStrong(&self->_assetName, a3);
    v6 = [v5 substringFromIndex:{objc_msgSend(@"TTS-", "length")}];
    v7 = [_LTDTTSAssetService ttsAssetForLocaleIdentifier:v6 onDeviceOnly:0];
    v8 = v7;
    if (v7)
    {
      [(_LTDTTSAssetModel *)v7 setAssetName:v5];
      v9 = v8;
    }

    else
    {
      v11 = _LTOSLogAssets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_LTDTTSAssetModel *)v5 initWithAssetIdentifier:v11];
      }
    }
  }

  else
  {
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_LTDTTSAssetModel *)v5 initWithAssetIdentifier:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (_LTDTTSAssetModel)initWithProvider:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = _LTDTTSAssetModel;
  v6 = [(_LTDTTSAssetModel *)&v24 init];
  if (v6)
  {
    v7 = [v5 primaryLanguage];
    language = v6->_language;
    v6->_language = v7;

    v9 = [(NSString *)v6->_language stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    ltIdentifier = v6->_ltIdentifier;
    v6->_ltIdentifier = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS-%@", v6->_ltIdentifier];
    assetName = v6->_assetName;
    v6->_assetName = v11;

    objc_storeStrong(&v6->_provider, a3);
    v13 = MEMORY[0x277CE1AC0];
    v14 = v6->_assetName;
    v15 = [(TTSAsset *)v6->_provider downloadSize];
    v16 = [v15 integerValue];

    if (v16 <= 314572800)
    {
      v17 = 314572800;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v13 discreteProgressWithIdentifier:v14 totalUnitCount:v17];
    progress = v6->_progress;
    v6->_progress = v18;

    v20 = [(_LTDTTSAssetModel *)v6 state];
    if (v20 == 1)
    {
      v21 = 2;
    }

    else
    {
      if (v20 != 2)
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
  v2 = [(_LTDTTSAssetModel *)self provider];
  v3 = [v2 diskSize];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)canBePurged
{
  v2 = [(_LTDTTSAssetModel *)self provider];
  v3 = [v2 purgeable];

  return v3;
}

- (BOOL)supportsLocale:(id)a3
{
  v4 = a3;
  v5 = [(_LTDTTSAssetModel *)self assetLanguage];
  v6 = [v4 _ltLocaleIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (NSArray)localeIdentifiers
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(_LTDTTSAssetModel *)self identifier];
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
  v2 = [(_LTDTTSAssetModel *)self assetName];
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
    v9 = [(_LTDTTSAssetModel *)self assetName];
    v10 = [(_LTDTTSAssetModel *)v8 assetName];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [(_LTDTTSAssetModel *)self getLocalFileUrl];
      v13 = [(_LTDTTSAssetModel *)v8 getLocalFileUrl];
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
  v6 = [(_LTDTTSAssetModel *)self assetName];
  v7 = [(_LTDTTSAssetModel *)self provider];
  v8 = [v7 debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %@, %@>", v5, v6, v8];

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