@interface _LTDMAAssetModel
+ (id)modelFromAsset:(id)a3;
+ (id)splitANECapabilityFromIdentifier:(id)a3;
- (BOOL)_localFileExists;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (BOOL)isPremiumTextLID;
- (BOOL)supportsLocale:(id)a3;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)assetBuild;
- (NSString)assetLanguage;
- (NSString)assetName;
- (NSString)assetTypeName;
- (NSString)coreAssetName;
- (NSString)debugDescription;
- (NSString)managedAssetType;
- (_LTDMAAssetModel)initWithProvider:(id)a3;
- (int64_t)assetVersion;
- (int64_t)contentVersion;
- (int64_t)downloadSize;
- (int64_t)formatVersion;
- (int64_t)requiredCapabilityIdentifier;
- (int64_t)unarchivedSize;
- (unint64_t)assetSubtype;
- (unint64_t)assetType;
- (unint64_t)hash;
- (unint64_t)state;
- (void)assetName;
- (void)assetType;
- (void)coreAssetName;
@end

@implementation _LTDMAAssetModel

- (_LTDMAAssetModel)initWithProvider:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTDMAAssetModel;
  v5 = [(_LTDMAAssetModel *)&v14 init];
  v6 = v5;
  if (!v5)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  [(_LTDMAAssetModel *)v5 setProvider:v4];
  if (!v6->_provider)
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTDMAAssetModel initWithProvider:v12];
    }

    goto LABEL_8;
  }

  v7 = MEMORY[0x277CE1AC0];
  v8 = [(_LTDMAAssetModel *)v6 identifier];
  v9 = [v7 discreteProgressWithIdentifier:v8 totalUnitCount:{-[_LTDMAAssetModel downloadSize](v6, "downloadSize")}];
  progress = v6->_progress;
  v6->_progress = v9;

  if ([(_LTDMAAssetModel *)v6 isInstalled])
  {
    [(_LTAssetProgress *)v6->_progress setOfflineState:2];
  }

  v11 = v6;
LABEL_9:

  return v11;
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

- (NSString)assetName
{
  p_assetName = &self->_assetName;
  assetName = self->_assetName;
  if (!assetName)
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"AssetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(MAAsset *)self->_provider attributes];
      v8 = [v7 objectForKeyedSubscript:@"AssetName"];
    }

    else
    {
      v8 = 0;
    }

    if ([v8 length])
    {
      objc_storeStrong(p_assetName, v8);
LABEL_18:

      assetName = *p_assetName;
      goto LABEL_19;
    }

    v9 = [(_LTDMAAssetModel *)self assetType];
    switch(v9)
    {
      case 7uLL:
        v13 = *p_assetName;
        v14 = @"LanguageDetectorAssets-en-US";
        break;
      case 6uLL:
        v13 = *p_assetName;
        v14 = @"SpeechEndpoint-en-US";
        break;
      case 2uLL:
        v10 = [(_LTDMAAssetModel *)self assetLanguage];
        v11 = [@"ASR-" stringByAppendingString:v10];
        v12 = self->_assetName;
        self->_assetName = v11;

        goto LABEL_18;
      default:
        v15 = _LTOSLogAssets();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(_LTDMAAssetModel *)self assetName:v15];
        }

        v22 = [(_LTDMAAssetModel *)self assetId];
        v13 = self->_assetName;
        self->_assetName = v22;
LABEL_17:

        goto LABEL_18;
    }

    *p_assetName = &v14->isa;
    goto LABEL_17;
  }

LABEL_19:

  return assetName;
}

- (NSString)coreAssetName
{
  v3 = [(_LTDMAAssetModel *)self assetName];
  if (-[_LTDMAAssetModel assetType](self, "assetType") == 8 && ([v3 containsString:@"-partial"] & 1) != 0)
  {
    v4 = [v3 componentsSeparatedByString:@"-"];
    v5 = [v4 mutableCopy];

    if ([v5 count] >= 4 && (objc_msgSend(v5, "objectAtIndexedSubscript:", objc_msgSend(v5, "count") - 3), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"partial"), v6, v7))
    {
      [v5 removeObjectAtIndex:{objc_msgSend(v5, "count") - 2}];
      [v5 removeObjectAtIndex:{objc_msgSend(v5, "count") - 2}];
      v8 = [v5 componentsJoinedByString:@"-"];
    }

    else
    {
      v10 = _LTOSLogAssets();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_LTDMAAssetModel *)self coreAssetName:v10];
      }

      v8 = v3;
    }

    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (NSString)assetTypeName
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = [v3 objectForKeyedSubscript:@"Type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"Type"];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (unint64_t)assetSubtype
{
  result = self->_assetSubtype;
  if (!result)
  {
    result = [(_LTDMAAssetModel *)self assetType];
    if (result == 8)
    {
      v4 = [(_LTDMAAssetModel *)self identifier];
      v5 = [v4 containsString:@"-partial-"];
      v6 = 8;
      if (v5)
      {
        v6 = 9;
      }

      self->_assetSubtype = v6;

      return self->_assetSubtype;
    }

    else
    {
      self->_assetSubtype = result;
    }
  }

  return result;
}

- (unint64_t)assetType
{
  v2 = self;
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(_LTDMAAssetModel *)self assetTypeName];
  if ([v3 length])
  {
    v4 = [v3 characterAtIndex:0];
    if (v4 > 76)
    {
      switch(v4)
      {
        case 'M':
          v5 = [v3 hasPrefix:@"MT"] == 0;
          v6 = 8;
          break;
        case 'P':
          v5 = [v3 hasPrefix:@"PB"] == 0;
          v6 = 10;
          break;
        case 'e':
          v5 = [v3 hasPrefix:@"endpointer"] == 0;
          v6 = 6;
          break;
        default:
LABEL_21:
          v16 = _LTOSLogAssets();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v23 = 138543362;
            v24 = v3;
            _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "No matching MA asset model type for %{public}@", &v23, 0xCu);
          }

          v17 = [v2 _attributes];
          v18 = [v17 objectForKeyedSubscript:@"__Empty"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v2 _attributes];
            v20 = [v19 objectForKeyedSubscript:@"__Empty"];
            LODWORD(v2) = [v20 isEqualToString:@"Empty"];
          }

          else
          {
            LODWORD(v2) = [0 isEqualToString:@"Empty"];
          }

          v2 = v2;
          goto LABEL_30;
      }
    }

    else
    {
      switch(v4)
      {
        case 'A':
          v5 = [v3 hasPrefix:@"ASR"] == 0;
          v6 = 2;
          break;
        case 'C':
          v5 = [v3 hasPrefix:@"Config"] == 0;
          v6 = 5;
          break;
        case 'L':
          v5 = [v3 hasPrefix:@"LID"] == 0;
          v6 = 7;
          break;
        default:
          goto LABEL_21;
      }
    }

    if (v5)
    {
      v2 = 0;
    }

    else
    {
      v2 = v6;
    }

    goto LABEL_30;
  }

  v7 = [v2 provider];
  v8 = [v7 assetType];

  if ([v8 hasPrefix:@"com.apple.MobileAsset.SpeechEndpointAssets"])
  {
    v2 = 6;
  }

  else if ([v8 hasPrefix:@"com.apple.MobileAsset.LanguageDetectorAssets"])
  {
    v2 = 7;
  }

  else
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_LTDMAAssetModel *)v2 assetType:v9];
    }

    v2 = 0;
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

- (NSString)managedAssetType
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = [v3 objectForKeyedSubscript:@"AssetType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"AssetType"];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (int64_t)assetVersion
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = [v3 objectForKeyedSubscript:@"AssetVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"AssetVersion"];
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = [0 integerValue];
  }

  return v7;
}

- (NSString)assetBuild
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = [v3 objectForKeyedSubscript:@"Build"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"Build"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)formatVersion
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = [v3 objectForKeyedSubscript:@"FormatVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"FormatVersion"];
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = [0 integerValue];
  }

  return v7;
}

- (int64_t)contentVersion
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = *MEMORY[0x277D28900];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D28900]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MAAsset *)self->_provider attributes];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = [0 integerValue];
  }

  return v8;
}

- (int64_t)downloadSize
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = *MEMORY[0x277D28908];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D28908]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MAAsset *)self->_provider attributes];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = [0 integerValue];
  }

  return v8;
}

- (int64_t)unarchivedSize
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = *MEMORY[0x277D28920];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D28920]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MAAsset *)self->_provider attributes];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = [0 integerValue];
  }

  return v8;
}

- (BOOL)isPremiumTextLID
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = [v3 objectForKeyedSubscript:@"Footprint"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"Footprint"];
    v7 = [v6 isEqualToString:@"Premium"];
  }

  else
  {
    v7 = [0 isEqualToString:@"Premium"];
  }

  return v7;
}

+ (id)splitANECapabilityFromIdentifier:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"-"];
  v5 = [v4 mutableCopy];

  v6 = [v5 lastObject];
  if (([v6 isEqualToString:@"0"] & 1) != 0 || objc_msgSend(v6, "integerValue") >= 1)
  {
    [v5 removeLastObject];
    v7 = [v5 componentsJoinedByString:@"-"];
    v12[0] = v7;
    v12[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  }

  else
  {
    v11[0] = v3;
    v11[1] = @"0";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)requiredCapabilityIdentifier
{
  if ([(_LTDMAAssetModel *)self assetType]!= 8)
  {
    return 0;
  }

  v3 = objc_opt_class();
  v4 = [(_LTDMAAssetModel *)self assetName];
  v5 = [v3 splitANECapabilityFromIdentifier:v4];
  v6 = [v5 lastObject];
  v7 = [v6 integerValue];

  return v7;
}

- (NSString)assetLanguage
{
  v3 = [(MAAsset *)self->_provider attributes];
  v4 = [v3 objectForKeyedSubscript:@"Language"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self->_provider attributes];
    v6 = [v5 objectForKeyedSubscript:@"Language"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)supportedLanguages
{
  v2 = [(MAAsset *)self->_provider attributes];
  v3 = [v2 objectForKeyedSubscript:@"Languages"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([(NSArray *)v3 lt_ensureElementType:objc_opt_class()])
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

    v3 = 0;
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)supportsLocale:(id)a3
{
  v4 = a3;
  v5 = [(_LTDMAAssetModel *)self assetLanguage];
  v6 = [v4 _ltLocaleIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (NSArray)localeIdentifiers
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [(_LTDMAAssetModel *)self identifier];
  v4 = [v3 componentsSeparatedByString:@"-"];

  v5 = [(_LTDMAAssetModel *)self assetType];
  v6 = MEMORY[0x277CBEBF8];
  if (v5 > 7)
  {
    if (v5 == 8)
    {
      v7 = objc_opt_new();
      v18 = [v4 indexOfObject:@"partial"];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v4 count] >= 3)
        {
          v19 = 2;
          do
          {
            v20 = [v4 objectAtIndexedSubscript:v19];
            v21 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
            v22 = [v20 rangeOfCharacterFromSet:v21];

            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = [v4 objectAtIndexedSubscript:v19];
              v24 = [_LTDAssetModel localeIdentifiersForLanguageName:v23];

              [v7 addObjectsFromArray:v24];
            }

            ++v19;
          }

          while (v19 < [v4 count]);
        }
      }

      else
      {
        v25 = v18 + 1;
        if (v18 + 1 < [v4 count])
        {
          v26 = [v4 objectAtIndexedSubscript:v25];
          v27 = [_LTDAssetModel localeIdentifiersForLanguageName:v26];

          [v7 addObjectsFromArray:v27];
        }
      }

      goto LABEL_11;
    }

    if (v5 == 10 && [v4 count] == 2)
    {
      v17 = [v4 objectAtIndexedSubscript:1];
      v6 = [_LTDAssetModel localeIdentifiersForLanguageName:v17];
    }
  }

  else
  {
    if ((v5 - 6) < 2)
    {
      v7 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = [(_LTDMAAssetModel *)self supportedLanguages];
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v28 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
            [v7 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v10);
      }

LABEL_11:
      v14 = [v7 copy];
LABEL_12:
      v6 = v14;

      goto LABEL_13;
    }

    if (v5 == 2 && [v4 count] == 2)
    {
      v7 = [v4 objectAtIndexedSubscript:1];
      v33[0] = v7;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      goto LABEL_12;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unint64_t)state
{
  if (![(MAAsset *)self->_provider state])
  {
    [(MAAsset *)self->_provider refreshState];
  }

  result = [(MAAsset *)self->_provider state];
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        return 5;
      }

      return 2;
    }

    if (result == 5)
    {
      return 4;
    }

    if (result == 6)
    {
      return result;
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    return result == 2;
  }

  v4 = [(_LTDMAAssetModel *)self progress];
  v5 = [v4 offlineState];

  if (v5 < 4)
  {
    return 3 - v5;
  }

  return 2;
}

- (BOOL)_localFileExists
{
  v2 = [(_LTDMAAssetModel *)self getLocalFileUrl];
  v3 = [v2 path];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (BOOL)isInstalled
{
  v3 = [(_LTDMAAssetModel *)self state];
  if (v3 - 4 >= 3)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_4;
      }

      return 0;
    }

    else
    {
      v5 = [(_LTDMAAssetModel *)self progress];
      if ([v5 isFinished])
      {
        v6 = [(_LTDMAAssetModel *)self _localFileExists];
      }

      else
      {
        v6 = 0;
      }
    }

    return v6;
  }

LABEL_4:

  return [(_LTDMAAssetModel *)self _localFileExists];
}

- (unint64_t)hash
{
  v2 = [(_LTDMAAssetModel *)self assetName];
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
    v9 = [(_LTDMAAssetModel *)self assetName];
    v10 = [(_LTDMAAssetModel *)v8 assetName];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [(_LTDMAAssetModel *)self getLocalFileUrl];
      v13 = [(_LTDMAAssetModel *)v8 getLocalFileUrl];
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
  v6 = [(_LTDMAAssetModel *)self assetName];
  v7 = [(_LTDMAAssetModel *)self provider];
  v8 = [v7 debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %@, %@>", v5, v6, v8];

  return v9;
}

- (void)assetName
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Failed to derive an asset identifier for %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)coreAssetName
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Failed to derive core asset name for %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)assetType
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Failed to derive an asset type for %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end