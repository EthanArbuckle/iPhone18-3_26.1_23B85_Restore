@interface _LTDMAAssetModel
+ (id)modelFromAsset:(id)asset;
+ (id)splitANECapabilityFromIdentifier:(id)identifier;
- (BOOL)_localFileExists;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstalled;
- (BOOL)isPremiumTextLID;
- (BOOL)supportsLocale:(id)locale;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)assetBuild;
- (NSString)assetLanguage;
- (NSString)assetName;
- (NSString)assetTypeName;
- (NSString)coreAssetName;
- (NSString)debugDescription;
- (NSString)managedAssetType;
- (_LTDMAAssetModel)initWithProvider:(id)provider;
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

- (_LTDMAAssetModel)initWithProvider:(id)provider
{
  providerCopy = provider;
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

  [(_LTDMAAssetModel *)v5 setProvider:providerCopy];
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
  identifier = [(_LTDMAAssetModel *)v6 identifier];
  v9 = [v7 discreteProgressWithIdentifier:identifier totalUnitCount:{-[_LTDMAAssetModel downloadSize](v6, "downloadSize")}];
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

- (NSString)assetName
{
  p_assetName = &self->_assetName;
  assetName = self->_assetName;
  if (!assetName)
  {
    attributes = [(MAAsset *)self->_provider attributes];
    v6 = [attributes objectForKeyedSubscript:@"AssetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      attributes2 = [(MAAsset *)self->_provider attributes];
      v8 = [attributes2 objectForKeyedSubscript:@"AssetName"];
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

    assetType = [(_LTDMAAssetModel *)self assetType];
    switch(assetType)
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
        assetLanguage = [(_LTDMAAssetModel *)self assetLanguage];
        v11 = [@"ASR-" stringByAppendingString:assetLanguage];
        v12 = self->_assetName;
        self->_assetName = v11;

        goto LABEL_18;
      default:
        v15 = _LTOSLogAssets();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(_LTDMAAssetModel *)self assetName:v15];
        }

        assetId = [(_LTDMAAssetModel *)self assetId];
        v13 = self->_assetName;
        self->_assetName = assetId;
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
  assetName = [(_LTDMAAssetModel *)self assetName];
  if (-[_LTDMAAssetModel assetType](self, "assetType") == 8 && ([assetName containsString:@"-partial"] & 1) != 0)
  {
    v4 = [assetName componentsSeparatedByString:@"-"];
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

      v8 = assetName;
    }

    v9 = v8;
  }

  else
  {
    v9 = assetName;
  }

  return v9;
}

- (NSString)assetTypeName
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = [attributes objectForKeyedSubscript:@"Type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"Type"];
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
      identifier = [(_LTDMAAssetModel *)self identifier];
      v5 = [identifier containsString:@"-partial-"];
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
  selfCopy = self;
  v25 = *MEMORY[0x277D85DE8];
  assetTypeName = [(_LTDMAAssetModel *)self assetTypeName];
  if ([assetTypeName length])
  {
    v4 = [assetTypeName characterAtIndex:0];
    if (v4 > 76)
    {
      switch(v4)
      {
        case 'M':
          v5 = [assetTypeName hasPrefix:@"MT"] == 0;
          v6 = 8;
          break;
        case 'P':
          v5 = [assetTypeName hasPrefix:@"PB"] == 0;
          v6 = 10;
          break;
        case 'e':
          v5 = [assetTypeName hasPrefix:@"endpointer"] == 0;
          v6 = 6;
          break;
        default:
LABEL_21:
          v16 = _LTOSLogAssets();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v23 = 138543362;
            v24 = assetTypeName;
            _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "No matching MA asset model type for %{public}@", &v23, 0xCu);
          }

          _attributes = [selfCopy _attributes];
          v18 = [_attributes objectForKeyedSubscript:@"__Empty"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _attributes2 = [selfCopy _attributes];
            v20 = [_attributes2 objectForKeyedSubscript:@"__Empty"];
            LODWORD(selfCopy) = [v20 isEqualToString:@"Empty"];
          }

          else
          {
            LODWORD(selfCopy) = [0 isEqualToString:@"Empty"];
          }

          selfCopy = selfCopy;
          goto LABEL_30;
      }
    }

    else
    {
      switch(v4)
      {
        case 'A':
          v5 = [assetTypeName hasPrefix:@"ASR"] == 0;
          v6 = 2;
          break;
        case 'C':
          v5 = [assetTypeName hasPrefix:@"Config"] == 0;
          v6 = 5;
          break;
        case 'L':
          v5 = [assetTypeName hasPrefix:@"LID"] == 0;
          v6 = 7;
          break;
        default:
          goto LABEL_21;
      }
    }

    if (v5)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = v6;
    }

    goto LABEL_30;
  }

  provider = [selfCopy provider];
  assetType = [provider assetType];

  if ([assetType hasPrefix:@"com.apple.MobileAsset.SpeechEndpointAssets"])
  {
    selfCopy = 6;
  }

  else if ([assetType hasPrefix:@"com.apple.MobileAsset.LanguageDetectorAssets"])
  {
    selfCopy = 7;
  }

  else
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_LTDMAAssetModel *)selfCopy assetType:v9];
    }

    selfCopy = 0;
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (NSString)managedAssetType
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = [attributes objectForKeyedSubscript:@"AssetType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"AssetType"];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (int64_t)assetVersion
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = [attributes objectForKeyedSubscript:@"AssetVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"AssetVersion"];
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = [0 integerValue];
  }

  return integerValue;
}

- (NSString)assetBuild
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = [attributes objectForKeyedSubscript:@"Build"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"Build"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)formatVersion
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = [attributes objectForKeyedSubscript:@"FormatVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"FormatVersion"];
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = [0 integerValue];
  }

  return integerValue;
}

- (int64_t)contentVersion
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = *MEMORY[0x277D28900];
  v5 = [attributes objectForKeyedSubscript:*MEMORY[0x277D28900]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v7 = [attributes2 objectForKeyedSubscript:v4];
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = [0 integerValue];
  }

  return integerValue;
}

- (int64_t)downloadSize
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = *MEMORY[0x277D28908];
  v5 = [attributes objectForKeyedSubscript:*MEMORY[0x277D28908]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v7 = [attributes2 objectForKeyedSubscript:v4];
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = [0 integerValue];
  }

  return integerValue;
}

- (int64_t)unarchivedSize
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = *MEMORY[0x277D28920];
  v5 = [attributes objectForKeyedSubscript:*MEMORY[0x277D28920]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v7 = [attributes2 objectForKeyedSubscript:v4];
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = [0 integerValue];
  }

  return integerValue;
}

- (BOOL)isPremiumTextLID
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = [attributes objectForKeyedSubscript:@"Footprint"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"Footprint"];
    v7 = [v6 isEqualToString:@"Premium"];
  }

  else
  {
    v7 = [0 isEqualToString:@"Premium"];
  }

  return v7;
}

+ (id)splitANECapabilityFromIdentifier:(id)identifier
{
  v12[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = [identifierCopy componentsSeparatedByString:@"-"];
  v5 = [v4 mutableCopy];

  lastObject = [v5 lastObject];
  if (([lastObject isEqualToString:@"0"] & 1) != 0 || objc_msgSend(lastObject, "integerValue") >= 1)
  {
    [v5 removeLastObject];
    v7 = [v5 componentsJoinedByString:@"-"];
    v12[0] = v7;
    v12[1] = lastObject;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  }

  else
  {
    v11[0] = identifierCopy;
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
  assetName = [(_LTDMAAssetModel *)self assetName];
  v5 = [v3 splitANECapabilityFromIdentifier:assetName];
  lastObject = [v5 lastObject];
  integerValue = [lastObject integerValue];

  return integerValue;
}

- (NSString)assetLanguage
{
  attributes = [(MAAsset *)self->_provider attributes];
  v4 = [attributes objectForKeyedSubscript:@"Language"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes2 = [(MAAsset *)self->_provider attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"Language"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)supportedLanguages
{
  attributes = [(MAAsset *)self->_provider attributes];
  v3 = [attributes objectForKeyedSubscript:@"Languages"];

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

- (BOOL)supportsLocale:(id)locale
{
  localeCopy = locale;
  assetLanguage = [(_LTDMAAssetModel *)self assetLanguage];
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];

  LOBYTE(localeCopy) = [assetLanguage isEqualToString:_ltLocaleIdentifier];
  return localeCopy;
}

- (NSArray)localeIdentifiers
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifier = [(_LTDMAAssetModel *)self identifier];
  v4 = [identifier componentsSeparatedByString:@"-"];

  assetType = [(_LTDMAAssetModel *)self assetType];
  v6 = MEMORY[0x277CBEBF8];
  if (assetType > 7)
  {
    if (assetType == 8)
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
            decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
            v22 = [v20 rangeOfCharacterFromSet:decimalDigitCharacterSet];

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

    if (assetType == 10 && [v4 count] == 2)
    {
      v17 = [v4 objectAtIndexedSubscript:1];
      v6 = [_LTDAssetModel localeIdentifiersForLanguageName:v17];
    }
  }

  else
  {
    if ((assetType - 6) < 2)
    {
      v7 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      supportedLanguages = [(_LTDMAAssetModel *)self supportedLanguages];
      v9 = [supportedLanguages countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(supportedLanguages);
            }

            v13 = [*(*(&v28 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
            [v7 addObject:v13];
          }

          v10 = [supportedLanguages countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v10);
      }

LABEL_11:
      v14 = [v7 copy];
LABEL_12:
      v6 = v14;

      goto LABEL_13;
    }

    if (assetType == 2 && [v4 count] == 2)
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

  progress = [(_LTDMAAssetModel *)self progress];
  offlineState = [progress offlineState];

  if (offlineState < 4)
  {
    return 3 - offlineState;
  }

  return 2;
}

- (BOOL)_localFileExists
{
  getLocalFileUrl = [(_LTDMAAssetModel *)self getLocalFileUrl];
  path = [getLocalFileUrl path];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:path];

  return v5;
}

- (BOOL)isInstalled
{
  state = [(_LTDMAAssetModel *)self state];
  if (state - 4 >= 3)
  {
    if (state)
    {
      if (state == 1)
      {
        goto LABEL_4;
      }

      return 0;
    }

    else
    {
      progress = [(_LTDMAAssetModel *)self progress];
      if ([progress isFinished])
      {
        _localFileExists = [(_LTDMAAssetModel *)self _localFileExists];
      }

      else
      {
        _localFileExists = 0;
      }
    }

    return _localFileExists;
  }

LABEL_4:

  return [(_LTDMAAssetModel *)self _localFileExists];
}

- (unint64_t)hash
{
  assetName = [(_LTDMAAssetModel *)self assetName];
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
    assetName = [(_LTDMAAssetModel *)self assetName];
    assetName2 = [(_LTDMAAssetModel *)v8 assetName];
    v11 = [assetName isEqualToString:assetName2];

    if (v11)
    {
      getLocalFileUrl = [(_LTDMAAssetModel *)self getLocalFileUrl];
      getLocalFileUrl2 = [(_LTDMAAssetModel *)v8 getLocalFileUrl];
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
  assetName = [(_LTDMAAssetModel *)self assetName];
  provider = [(_LTDMAAssetModel *)self provider];
  v8 = [provider debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %@, %@>", v5, assetName, v8];

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