@interface _LTDAssetModel
+ (id)descriptionForAssetState:(unint64_t)state;
+ (id)localeIdentifiersForLanguageName:(id)name;
+ (int64_t)_offlineStateForAssetState:(unint64_t)state;
+ (unint64_t)_assetStateForOfflineState:(int64_t)state;
- (BOOL)_isCompatibleWithThisDevice;
- (BOOL)addComponentAsset:(id)asset;
- (BOOL)canBePurged;
- (BOOL)isASRModelSupportingTaskHint:(int64_t)hint;
- (BOOL)isAvailable;
- (BOOL)isDownloading;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstalled;
- (BOOL)isMultiLocaleAsset;
- (BOOL)isNewerCompatibleVersionThan:(id)than;
- (BOOL)isNewerVersionThan:(id)than;
- (BOOL)isPremiumTextLID;
- (BOOL)refreshState;
- (BOOL)shouldPurgeWithLocale;
- (BOOL)supportsLocale:(id)locale;
- (BOOL)supportsTaskHint:(int64_t)hint;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)assetBuild;
- (NSString)assetId;
- (NSString)assetLanguage;
- (NSString)assetName;
- (NSString)assetTypeName;
- (NSString)coreAssetName;
- (NSString)debugDescription;
- (NSString)identifier;
- (NSString)managedAssetType;
- (NSURL)getLocalFileUrl;
- (_LTDAssetModel)initWithProvider:(id)provider;
- (_LTDAssetModelProtocol)provider;
- (id)firstComponentAssetWithAssetSubtype:(unint64_t)subtype;
- (id)getLocalFileUrlForTaskHint:(int64_t)hint;
- (id)stateDescription;
- (id)status;
- (int64_t)assetVersion;
- (int64_t)compareAssetVersionReversed:(id)reversed;
- (int64_t)contentVersion;
- (int64_t)downloadSize;
- (int64_t)formatVersion;
- (int64_t)requiredCapabilityIdentifier;
- (int64_t)unarchivedSize;
- (unint64_t)assetSubtype;
- (unint64_t)assetType;
- (unint64_t)hash;
- (unint64_t)managedAssetProvider;
- (unint64_t)state;
- (void)_addComponentAsset:(id)asset;
- (void)setAssetSubtype:(unint64_t)subtype;
@end

@implementation _LTDAssetModel

- (_LTDAssetModel)initWithProvider:(id)provider
{
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = _LTDAssetModel;
  v5 = [(_LTDAssetModel *)&v19 init];
  v6 = v5;
  if (!v5)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  if (!providerCopy)
  {
    v17 = _LTOSLogAssets();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTDAssetModel initWithProvider:];
    }

    goto LABEL_6;
  }

  v5->_lock._os_unfair_lock_opaque = 0;
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:providerCopy];
  components = v6->_components;
  v6->_components = v7;

  v9 = [objc_opt_class() _offlineStateForAssetState:{objc_msgSend(providerCopy, "state")}];
  v10 = MEMORY[0x277CE1AC0];
  identifier = [providerCopy identifier];
  v12 = [v10 discreteProgressWithIdentifier:identifier offlineState:v9];
  progress = v6->_progress;
  v6->_progress = v12;

  v14 = v6->_progress;
  progress = [providerCopy progress];
  [(_LTAssetProgress *)v14 addComponent:progress];

  v16 = v6;
LABEL_7:

  return v16;
}

- (_LTDAssetModelProtocol)provider
{
  os_unfair_lock_lock(&self->_lock);
  components = [(_LTDAssetModel *)self components];
  firstObject = [components firstObject];

  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (void)_addComponentAsset:(id)asset
{
  assetCopy = asset;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_components addObject:assetCopy];
  os_unfair_lock_unlock(&self->_lock);
  progress = [(_LTDAssetModel *)self progress];
  progress2 = [assetCopy progress];

  [progress addComponent:progress2];
}

- (BOOL)addComponentAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _LTOSLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_LTDAssetModel addComponentAsset:];
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  assetType = [(_LTDAssetModel *)self assetType];
  if (assetType != [assetCopy assetType])
  {
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTDAssetModel addComponentAsset:];
    }

    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_lock);
  components = [(_LTDAssetModel *)self components];
  v8 = [components count];

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    os_unfair_lock_lock(&self->_lock);
    components2 = [(_LTDAssetModel *)self components];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36___LTDAssetModel_addComponentAsset___block_invoke;
    v16[3] = &unk_2789B5A08;
    v10 = assetCopy;
    v17 = v10;
    v11 = [components2 lt_hasObjectPassingTest:v16];

    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      v12 = _LTOSLogAssets();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_LTDAssetModel addComponentAsset:];
      }
    }

    else
    {
      [(_LTDAssetModel *)self _addComponentAsset:v10];
    }

    v14 = v11 ^ 1;
  }

  else
  {
    [(_LTDAssetModel *)self _addComponentAsset:assetCopy];
    v14 = 1;
  }

LABEL_12:

  return v14;
}

- (id)firstComponentAssetWithAssetSubtype:(unint64_t)subtype
{
  components = [(_LTDAssetModel *)self components];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___LTDAssetModel_firstComponentAssetWithAssetSubtype___block_invoke;
  v7[3] = &__block_descriptor_40_e34_B16__0____LTDAssetModelProtocol__8l;
  v7[4] = subtype;
  v5 = [components lt_firstObjectPassingTest:v7];

  return v5;
}

+ (unint64_t)_assetStateForOfflineState:(int64_t)state
{
  v3 = 2;
  if (state != 1)
  {
    v3 = 3;
  }

  if (state == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_offlineStateForAssetState:(unint64_t)state
{
  if (state - 1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_233005B18[state - 1];
  }
}

+ (id)descriptionForAssetState:(unint64_t)state
{
  if (state > 6)
  {
    return @"Undefined";
  }

  else
  {
    return off_2789B5A68[state];
  }
}

- (NSString)identifier
{
  provider = [(_LTDAssetModel *)self provider];
  identifier = [provider identifier];

  return identifier;
}

- (NSString)assetId
{
  provider = [(_LTDAssetModel *)self provider];
  assetId = [provider assetId];

  return assetId;
}

- (NSString)assetLanguage
{
  provider = [(_LTDAssetModel *)self provider];
  assetLanguage = [provider assetLanguage];

  return assetLanguage;
}

- (NSString)assetName
{
  provider = [(_LTDAssetModel *)self provider];
  assetName = [provider assetName];

  return assetName;
}

- (NSString)coreAssetName
{
  provider = [(_LTDAssetModel *)self provider];
  coreAssetName = [provider coreAssetName];

  return coreAssetName;
}

- (NSString)assetTypeName
{
  provider = [(_LTDAssetModel *)self provider];
  assetTypeName = [provider assetTypeName];

  return assetTypeName;
}

- (int64_t)assetVersion
{
  provider = [(_LTDAssetModel *)self provider];
  assetVersion = [provider assetVersion];

  return assetVersion;
}

- (NSString)assetBuild
{
  provider = [(_LTDAssetModel *)self provider];
  assetBuild = [provider assetBuild];

  return assetBuild;
}

- (int64_t)contentVersion
{
  provider = [(_LTDAssetModel *)self provider];
  contentVersion = [provider contentVersion];

  return contentVersion;
}

- (int64_t)downloadSize
{
  provider = [(_LTDAssetModel *)self provider];
  downloadSize = [provider downloadSize];

  return downloadSize;
}

- (int64_t)formatVersion
{
  provider = [(_LTDAssetModel *)self provider];
  formatVersion = [provider formatVersion];

  return formatVersion;
}

- (NSURL)getLocalFileUrl
{
  provider = [(_LTDAssetModel *)self provider];
  getLocalFileUrl = [provider getLocalFileUrl];

  return getLocalFileUrl;
}

- (id)getLocalFileUrlForTaskHint:(int64_t)hint
{
  os_unfair_lock_lock(&self->_lock);
  components = [(_LTDAssetModel *)self components];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45___LTDAssetModel_getLocalFileUrlForTaskHint___block_invoke;
  v9[3] = &__block_descriptor_40_e34_B16__0____LTDAssetModelProtocol__8l;
  v9[4] = hint;
  v6 = [components lt_firstObjectPassingTest:v9];

  os_unfair_lock_unlock(&self->_lock);
  getLocalFileUrl = [v6 getLocalFileUrl];

  return getLocalFileUrl;
}

- (BOOL)isPremiumTextLID
{
  provider = [(_LTDAssetModel *)self provider];
  isPremiumTextLID = [provider isPremiumTextLID];

  return isPremiumTextLID;
}

- (unint64_t)managedAssetProvider
{
  provider = [(_LTDAssetModel *)self provider];
  managedAssetProvider = [provider managedAssetProvider];

  return managedAssetProvider;
}

- (NSString)managedAssetType
{
  provider = [(_LTDAssetModel *)self provider];
  managedAssetType = [provider managedAssetType];

  return managedAssetType;
}

- (int64_t)requiredCapabilityIdentifier
{
  provider = [(_LTDAssetModel *)self provider];
  requiredCapabilityIdentifier = [provider requiredCapabilityIdentifier];

  return requiredCapabilityIdentifier;
}

- (unint64_t)state
{
  v3 = objc_opt_class();
  progress = [(_LTDAssetModel *)self progress];
  v5 = [v3 _assetStateForOfflineState:{objc_msgSend(progress, "offlineState")}];

  return v5;
}

- (NSArray)supportedLanguages
{
  provider = [(_LTDAssetModel *)self provider];
  supportedLanguages = [provider supportedLanguages];

  return supportedLanguages;
}

- (int64_t)unarchivedSize
{
  provider = [(_LTDAssetModel *)self provider];
  unarchivedSize = [provider unarchivedSize];

  return unarchivedSize;
}

- (unint64_t)assetSubtype
{
  provider = [(_LTDAssetModel *)self provider];
  assetSubtype = [provider assetSubtype];

  return assetSubtype;
}

- (void)setAssetSubtype:(unint64_t)subtype
{
  provider = [(_LTDAssetModel *)self provider];
  [provider setAssetSubtype:subtype];
}

- (unint64_t)assetType
{
  provider = [(_LTDAssetModel *)self provider];
  assetType = [provider assetType];

  return assetType;
}

- (BOOL)shouldPurgeWithLocale
{
  assetType = [(_LTDAssetModel *)self assetType];
  if (assetType > 0xB || ((1 << assetType) & 0xD04) == 0)
  {
    return 0;
  }

  return [(_LTDAssetModel *)self canBePurged];
}

- (BOOL)isMultiLocaleAsset
{
  provider = [(_LTDAssetModel *)self provider];
  isMultiLocaleAsset = [provider isMultiLocaleAsset];

  return isMultiLocaleAsset;
}

- (BOOL)isASRModelSupportingTaskHint:(int64_t)hint
{
  isASRModel = [(_LTDAssetModel *)self isASRModel];
  if (isASRModel)
  {

    LOBYTE(isASRModel) = [(_LTDAssetModel *)self supportsTaskHint:hint];
  }

  return isASRModel;
}

- (id)stateDescription
{
  v3 = objc_opt_class();
  provider = [(_LTDAssetModel *)self provider];
  v5 = [v3 descriptionForAssetState:{objc_msgSend(provider, "state")}];

  return v5;
}

- (id)status
{
  v3 = objc_alloc(MEMORY[0x277CE1B10]);
  identifier = [(_LTDAssetModel *)self identifier];
  progress = [(_LTDAssetModel *)self progress];
  v6 = [v3 initWithLocaleIdentifier:identifier progress:progress];

  return v6;
}

- (unint64_t)hash
{
  assetName = [(_LTDAssetModel *)self assetName];
  v3 = [assetName hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (v5)
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

      os_unfair_lock_lock(&self->_lock);
      components = [(_LTDAssetModel *)self components];
      v10 = [components copy];

      components2 = [(_LTDAssetModel *)v8 components];
      v12 = [components2 copy];

      os_unfair_lock_unlock(&self->_lock);
      v13 = [v10 count];
      if (v13 == [v12 count])
      {
        if ([v10 count])
        {
          v14 = 0;
          do
          {
            v15 = [v10 objectAtIndexedSubscript:v14];
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __26___LTDAssetModel_isEqual___block_invoke;
            v18[3] = &unk_2789B5A08;
            v19 = v15;
            v16 = v15;
            v7 = [v12 lt_hasObjectPassingTest:v18];

            if ((v7 & 1) == 0)
            {
              break;
            }

            ++v14;
          }

          while (v14 < [v10 count]);
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

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)refreshState
{
  provider = [(_LTDAssetModel *)self provider];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  provider2 = [(_LTDAssetModel *)self provider];
  refreshState = [provider2 refreshState];

  return refreshState;
}

- (BOOL)isAvailable
{
  progress = [(_LTDAssetModel *)self progress];
  v3 = [progress offlineState] == 0;

  return v3;
}

- (BOOL)isDownloading
{
  progress = [(_LTDAssetModel *)self progress];
  v3 = [progress offlineState] == 1;

  return v3;
}

- (BOOL)isInstalled
{
  os_unfair_lock_lock(&self->_lock);
  components = [(_LTDAssetModel *)self components];
  v4 = [components lt_hasObjectPassingTest:&__block_literal_global_4];

  os_unfair_lock_unlock(&self->_lock);
  return v4 ^ 1;
}

- (BOOL)canBePurged
{
  provider = [(_LTDAssetModel *)self provider];
  canBePurged = [provider canBePurged];

  return canBePurged;
}

- (BOOL)supportsTaskHint:(int64_t)hint
{
  os_unfair_lock_lock(&self->_lock);
  components = [(_LTDAssetModel *)self components];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35___LTDAssetModel_supportsTaskHint___block_invoke;
  v7[3] = &__block_descriptor_40_e34_B16__0____LTDAssetModelProtocol__8l;
  v7[4] = hint;
  LOBYTE(hint) = [components lt_hasObjectPassingTest:v7];

  os_unfair_lock_unlock(&self->_lock);
  return hint;
}

- (BOOL)supportsLocale:(id)locale
{
  localeCopy = locale;
  if (([(_LTDAssetModel *)self assetType]& 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    supportedLanguages = [(_LTDAssetModel *)self supportedLanguages];
    _ltCsLocaleIdentifier = [localeCopy _ltCsLocaleIdentifier];

    v7 = [supportedLanguages containsObject:_ltCsLocaleIdentifier];
  }

  else
  {
    supportedLanguages = [(_LTDAssetModel *)self assetLanguage];
    _ltCsLocaleIdentifier = [localeCopy _ltLocaleIdentifier];

    v7 = [supportedLanguages isEqualToString:_ltCsLocaleIdentifier];
  }

  v8 = v7;

  return v8;
}

- (int64_t)compareAssetVersionReversed:(id)reversed
{
  reversedCopy = reversed;
  assetVersion = [(_LTDAssetModel *)self assetVersion];
  if (assetVersion == [reversedCopy assetVersion])
  {
    requiredCapabilityIdentifier = [(_LTDAssetModel *)self requiredCapabilityIdentifier];
    if (requiredCapabilityIdentifier == [reversedCopy requiredCapabilityIdentifier])
    {
      v7 = 0;
      goto LABEL_9;
    }

    requiredCapabilityIdentifier2 = [(_LTDAssetModel *)self requiredCapabilityIdentifier];
    requiredCapabilityIdentifier3 = [reversedCopy requiredCapabilityIdentifier];
  }

  else
  {
    requiredCapabilityIdentifier2 = [(_LTDAssetModel *)self assetVersion];
    requiredCapabilityIdentifier3 = [reversedCopy assetVersion];
  }

  if (requiredCapabilityIdentifier2 > requiredCapabilityIdentifier3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (BOOL)isNewerVersionThan:(id)than
{
  thanCopy = than;
  if ([(_LTDAssetModel *)self isEqual:thanCopy])
  {
    assetVersion = [(_LTDAssetModel *)self assetVersion];
    v6 = assetVersion > [thanCopy assetVersion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isNewerCompatibleVersionThan:(id)than
{
  thanCopy = than;
  if ([(_LTDAssetModel *)self _isCompatibleWithThisDevice])
  {
    v5 = [(_LTDAssetModel *)self isNewerVersionThan:thanCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isCompatibleWithThisDevice
{
  requiredCapabilityIdentifier = [(_LTDAssetModel *)self requiredCapabilityIdentifier];
  if (requiredCapabilityIdentifier > +[_LTDANEService capability])
  {
    return 0;
  }

  formatVersion = [(_LTDAssetModel *)self formatVersion];
  if (!formatVersion)
  {
    return 1;
  }

  v6 = formatVersion;
  minimumSupportedConfigurationVersion = [MEMORY[0x277D07278] minimumSupportedConfigurationVersion];
  integerValue = [minimumSupportedConfigurationVersion integerValue];

  maximumSupportedConfigurationVersion = [MEMORY[0x277D07278] maximumSupportedConfigurationVersion];
  integerValue2 = [maximumSupportedConfigurationVersion integerValue];

  return v6 >= integerValue && v6 <= integerValue2;
}

+ (id)localeIdentifiersForLanguageName:(id)name
{
  v30[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = _LTPreferencesSupportedLocales(1);
  array = [MEMORY[0x277CBEB18] array];
  v6 = [nameCopy componentsSeparatedByString:@"_"];
  if ([v6 count] == 2)
  {
    v7 = [v6 objectAtIndexedSubscript:1];
    v8 = [v7 isEqualToString:@"Var"];

    if (!v8)
    {
      v30[0] = nameCopy;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      goto LABEL_16;
    }

    v24 = array;
    v22 = v6;
    v9 = [v6 objectAtIndexedSubscript:0];

    nameCopy = v9;
  }

  else
  {
    v22 = v6;
    v24 = array;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = v4;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        _ltLocaleIdentifier = [*(*(&v25 + 1) + 8 * i) _ltLocaleIdentifier];
        v16 = [_ltLocaleIdentifier componentsSeparatedByString:@"_"];
        v17 = [v16 objectAtIndexedSubscript:0];
        v18 = [nameCopy isEqualToString:v17];

        if (v18)
        {
          [v24 addObject:_ltLocaleIdentifier];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  array = v24;
  v19 = [v24 copy];
  v6 = v22;
  v4 = v23;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSArray)localeIdentifiers
{
  v53[1] = *MEMORY[0x277D85DE8];
  localeIdentifiers = self->_localeIdentifiers;
  if (localeIdentifiers)
  {
    goto LABEL_2;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = self->_localeIdentifiers;
  if (!v6)
  {
    identifier = [(_LTDAssetModel *)selfCopy identifier];
    v47 = [identifier componentsSeparatedByString:@"-"];

    assetType = [(_LTDAssetModel *)selfCopy assetType];
    if (assetType > 7)
    {
      if (assetType == 8)
      {
        v22 = objc_opt_new();
        v23 = [v47 indexOfObject:@"partial"];
        if (v23 == 0x7FFFFFFFFFFFFFFFLL || (v38 = v23 + 1, v23 + 1 < [v47 count]) && (objc_msgSend(v47, "objectAtIndexedSubscript:", v23 + 1), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", @"en"), v39, v40))
        {
          for (i = 2; i < [v47 count]; ++i)
          {
            if (v23 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v25 = [v47 objectAtIndexedSubscript:i];
              v26 = [v25 isEqualToString:@"partial"];

              if (v26)
              {
                break;
              }
            }

            v27 = [v47 objectAtIndexedSubscript:i];
            decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
            v29 = [v27 rangeOfCharacterFromSet:decimalDigitCharacterSet];

            if (v29 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v30 = objc_opt_class();
              v31 = [v47 objectAtIndexedSubscript:i];
              v32 = [v30 localeIdentifiersForLanguageName:v31];

              [v22 addObjectsFromArray:v32];
            }
          }
        }

        else if (v38 < [v47 count])
        {
          v41 = objc_opt_class();
          v42 = [v47 objectAtIndexedSubscript:v38];
          v43 = [v41 localeIdentifiersForLanguageName:v42];

          [v22 addObjectsFromArray:v43];
        }

        v44 = [v22 copy];
        v45 = self->_localeIdentifiers;
        self->_localeIdentifiers = v44;

        goto LABEL_44;
      }

      if (assetType == 10)
      {
        if ([v47 count] == 2)
        {
          v33 = [v47 objectAtIndexedSubscript:1];
          if ([v33 isEqualToString:@"en"])
          {
            v34 = _LTPreferencesSupportedLocales(1);
            v35 = [v34 _ltCompactMap:&__block_literal_global_45];
            v36 = self->_localeIdentifiers;
            self->_localeIdentifiers = v35;
          }

          else
          {
            v46 = [objc_opt_class() localeIdentifiersForLanguageName:v33];
            v34 = self->_localeIdentifiers;
            self->_localeIdentifiers = v46;
          }

          goto LABEL_44;
        }

        goto LABEL_36;
      }

      if (assetType != 11)
      {
LABEL_36:
        v37 = self->_localeIdentifiers;
        self->_localeIdentifiers = MEMORY[0x277CBEBF8];

        goto LABEL_44;
      }
    }

    else
    {
      if ((assetType - 6) < 2)
      {
        v11 = objc_opt_new();
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        supportedLanguages = [(_LTDAssetModel *)selfCopy supportedLanguages];
        v13 = [supportedLanguages countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v13)
        {
          v14 = *v49;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(supportedLanguages);
              }

              v16 = [*(*(&v48 + 1) + 8 * j) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
              [v11 addObject:v16];
            }

            v13 = [supportedLanguages countByEnumeratingWithState:&v48 objects:v52 count:16];
          }

          while (v13);
        }

        v17 = [v11 copy];
        v18 = self->_localeIdentifiers;
        self->_localeIdentifiers = v17;

        goto LABEL_44;
      }

      if (assetType != 2)
      {
        goto LABEL_36;
      }
    }

    if ([v47 count] == 2)
    {
      v19 = [v47 objectAtIndexedSubscript:1];
      v53[0] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
      v21 = self->_localeIdentifiers;
      self->_localeIdentifiers = v20;

LABEL_44:
      objc_sync_exit(selfCopy);

      localeIdentifiers = self->_localeIdentifiers;
LABEL_2:
      v3 = localeIdentifiers;
      goto LABEL_5;
    }

    goto LABEL_36;
  }

  v3 = v6;
  objc_sync_exit(selfCopy);

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(_LTDAssetModel *)self identifier];
  assetTypeName = [(_LTDAssetModel *)self assetTypeName];
  stateDescription = [(_LTDAssetModel *)self stateDescription];
  progress = [(_LTDAssetModel *)self progress];
  v10 = [v3 stringWithFormat:@"<%@: %p %@ (%@) %@ %@>", v5, self, identifier, assetTypeName, stateDescription, progress];;

  return v10;
}

@end