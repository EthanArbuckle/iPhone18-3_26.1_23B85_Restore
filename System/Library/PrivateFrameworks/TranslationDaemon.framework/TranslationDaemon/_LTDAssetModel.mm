@interface _LTDAssetModel
+ (id)descriptionForAssetState:(unint64_t)a3;
+ (id)localeIdentifiersForLanguageName:(id)a3;
+ (int64_t)_offlineStateForAssetState:(unint64_t)a3;
+ (unint64_t)_assetStateForOfflineState:(int64_t)a3;
- (BOOL)_isCompatibleWithThisDevice;
- (BOOL)addComponentAsset:(id)a3;
- (BOOL)canBePurged;
- (BOOL)isASRModelSupportingTaskHint:(int64_t)a3;
- (BOOL)isAvailable;
- (BOOL)isDownloading;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (BOOL)isMultiLocaleAsset;
- (BOOL)isNewerCompatibleVersionThan:(id)a3;
- (BOOL)isNewerVersionThan:(id)a3;
- (BOOL)isPremiumTextLID;
- (BOOL)refreshState;
- (BOOL)shouldPurgeWithLocale;
- (BOOL)supportsLocale:(id)a3;
- (BOOL)supportsTaskHint:(int64_t)a3;
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
- (_LTDAssetModel)initWithProvider:(id)a3;
- (_LTDAssetModelProtocol)provider;
- (id)firstComponentAssetWithAssetSubtype:(unint64_t)a3;
- (id)getLocalFileUrlForTaskHint:(int64_t)a3;
- (id)stateDescription;
- (id)status;
- (int64_t)assetVersion;
- (int64_t)compareAssetVersionReversed:(id)a3;
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
- (void)_addComponentAsset:(id)a3;
- (void)setAssetSubtype:(unint64_t)a3;
@end

@implementation _LTDAssetModel

- (_LTDAssetModel)initWithProvider:(id)a3
{
  v4 = a3;
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

  if (!v4)
  {
    v17 = _LTOSLogAssets();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTDAssetModel initWithProvider:];
    }

    goto LABEL_6;
  }

  v5->_lock._os_unfair_lock_opaque = 0;
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
  components = v6->_components;
  v6->_components = v7;

  v9 = [objc_opt_class() _offlineStateForAssetState:{objc_msgSend(v4, "state")}];
  v10 = MEMORY[0x277CE1AC0];
  v11 = [v4 identifier];
  v12 = [v10 discreteProgressWithIdentifier:v11 offlineState:v9];
  progress = v6->_progress;
  v6->_progress = v12;

  v14 = v6->_progress;
  v15 = [v4 progress];
  [(_LTAssetProgress *)v14 addComponent:v15];

  v16 = v6;
LABEL_7:

  return v16;
}

- (_LTDAssetModelProtocol)provider
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_LTDAssetModel *)self components];
  v4 = [v3 firstObject];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)_addComponentAsset:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_components addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [(_LTDAssetModel *)self progress];
  v5 = [v4 progress];

  [v6 addComponent:v5];
}

- (BOOL)addComponentAsset:(id)a3
{
  v4 = a3;
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

  v6 = [(_LTDAssetModel *)self assetType];
  if (v6 != [v4 assetType])
  {
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTDAssetModel addComponentAsset:];
    }

    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(_LTDAssetModel *)self components];
  v8 = [v7 count];

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = [(_LTDAssetModel *)self components];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36___LTDAssetModel_addComponentAsset___block_invoke;
    v16[3] = &unk_2789B5A08;
    v10 = v4;
    v17 = v10;
    v11 = [v9 lt_hasObjectPassingTest:v16];

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
    [(_LTDAssetModel *)self _addComponentAsset:v4];
    v14 = 1;
  }

LABEL_12:

  return v14;
}

- (id)firstComponentAssetWithAssetSubtype:(unint64_t)a3
{
  v4 = [(_LTDAssetModel *)self components];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___LTDAssetModel_firstComponentAssetWithAssetSubtype___block_invoke;
  v7[3] = &__block_descriptor_40_e34_B16__0____LTDAssetModelProtocol__8l;
  v7[4] = a3;
  v5 = [v4 lt_firstObjectPassingTest:v7];

  return v5;
}

+ (unint64_t)_assetStateForOfflineState:(int64_t)a3
{
  v3 = 2;
  if (a3 != 1)
  {
    v3 = 3;
  }

  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_offlineStateForAssetState:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_233005B18[a3 - 1];
  }
}

+ (id)descriptionForAssetState:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"Undefined";
  }

  else
  {
    return off_2789B5A68[a3];
  }
}

- (NSString)identifier
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)assetId
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetId];

  return v3;
}

- (NSString)assetLanguage
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetLanguage];

  return v3;
}

- (NSString)assetName
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetName];

  return v3;
}

- (NSString)coreAssetName
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 coreAssetName];

  return v3;
}

- (NSString)assetTypeName
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetTypeName];

  return v3;
}

- (int64_t)assetVersion
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetVersion];

  return v3;
}

- (NSString)assetBuild
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetBuild];

  return v3;
}

- (int64_t)contentVersion
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 contentVersion];

  return v3;
}

- (int64_t)downloadSize
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 downloadSize];

  return v3;
}

- (int64_t)formatVersion
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 formatVersion];

  return v3;
}

- (NSURL)getLocalFileUrl
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 getLocalFileUrl];

  return v3;
}

- (id)getLocalFileUrlForTaskHint:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_LTDAssetModel *)self components];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45___LTDAssetModel_getLocalFileUrlForTaskHint___block_invoke;
  v9[3] = &__block_descriptor_40_e34_B16__0____LTDAssetModelProtocol__8l;
  v9[4] = a3;
  v6 = [v5 lt_firstObjectPassingTest:v9];

  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 getLocalFileUrl];

  return v7;
}

- (BOOL)isPremiumTextLID
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 isPremiumTextLID];

  return v3;
}

- (unint64_t)managedAssetProvider
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 managedAssetProvider];

  return v3;
}

- (NSString)managedAssetType
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 managedAssetType];

  return v3;
}

- (int64_t)requiredCapabilityIdentifier
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 requiredCapabilityIdentifier];

  return v3;
}

- (unint64_t)state
{
  v3 = objc_opt_class();
  v4 = [(_LTDAssetModel *)self progress];
  v5 = [v3 _assetStateForOfflineState:{objc_msgSend(v4, "offlineState")}];

  return v5;
}

- (NSArray)supportedLanguages
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 supportedLanguages];

  return v3;
}

- (int64_t)unarchivedSize
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 unarchivedSize];

  return v3;
}

- (unint64_t)assetSubtype
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetSubtype];

  return v3;
}

- (void)setAssetSubtype:(unint64_t)a3
{
  v4 = [(_LTDAssetModel *)self provider];
  [v4 setAssetSubtype:a3];
}

- (unint64_t)assetType
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 assetType];

  return v3;
}

- (BOOL)shouldPurgeWithLocale
{
  v3 = [(_LTDAssetModel *)self assetType];
  if (v3 > 0xB || ((1 << v3) & 0xD04) == 0)
  {
    return 0;
  }

  return [(_LTDAssetModel *)self canBePurged];
}

- (BOOL)isMultiLocaleAsset
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 isMultiLocaleAsset];

  return v3;
}

- (BOOL)isASRModelSupportingTaskHint:(int64_t)a3
{
  v5 = [(_LTDAssetModel *)self isASRModel];
  if (v5)
  {

    LOBYTE(v5) = [(_LTDAssetModel *)self supportsTaskHint:a3];
  }

  return v5;
}

- (id)stateDescription
{
  v3 = objc_opt_class();
  v4 = [(_LTDAssetModel *)self provider];
  v5 = [v3 descriptionForAssetState:{objc_msgSend(v4, "state")}];

  return v5;
}

- (id)status
{
  v3 = objc_alloc(MEMORY[0x277CE1B10]);
  v4 = [(_LTDAssetModel *)self identifier];
  v5 = [(_LTDAssetModel *)self progress];
  v6 = [v3 initWithLocaleIdentifier:v4 progress:v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(_LTDAssetModel *)self assetName];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
      v9 = [(_LTDAssetModel *)self components];
      v10 = [v9 copy];

      v11 = [(_LTDAssetModel *)v8 components];
      v12 = [v11 copy];

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
  v3 = [(_LTDAssetModel *)self provider];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(_LTDAssetModel *)self provider];
  v6 = [v5 refreshState];

  return v6;
}

- (BOOL)isAvailable
{
  v2 = [(_LTDAssetModel *)self progress];
  v3 = [v2 offlineState] == 0;

  return v3;
}

- (BOOL)isDownloading
{
  v2 = [(_LTDAssetModel *)self progress];
  v3 = [v2 offlineState] == 1;

  return v3;
}

- (BOOL)isInstalled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_LTDAssetModel *)self components];
  v4 = [v3 lt_hasObjectPassingTest:&__block_literal_global_4];

  os_unfair_lock_unlock(&self->_lock);
  return v4 ^ 1;
}

- (BOOL)canBePurged
{
  v2 = [(_LTDAssetModel *)self provider];
  v3 = [v2 canBePurged];

  return v3;
}

- (BOOL)supportsTaskHint:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_LTDAssetModel *)self components];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35___LTDAssetModel_supportsTaskHint___block_invoke;
  v7[3] = &__block_descriptor_40_e34_B16__0____LTDAssetModelProtocol__8l;
  v7[4] = a3;
  LOBYTE(a3) = [v5 lt_hasObjectPassingTest:v7];

  os_unfair_lock_unlock(&self->_lock);
  return a3;
}

- (BOOL)supportsLocale:(id)a3
{
  v4 = a3;
  if (([(_LTDAssetModel *)self assetType]& 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v5 = [(_LTDAssetModel *)self supportedLanguages];
    v6 = [v4 _ltCsLocaleIdentifier];

    v7 = [v5 containsObject:v6];
  }

  else
  {
    v5 = [(_LTDAssetModel *)self assetLanguage];
    v6 = [v4 _ltLocaleIdentifier];

    v7 = [v5 isEqualToString:v6];
  }

  v8 = v7;

  return v8;
}

- (int64_t)compareAssetVersionReversed:(id)a3
{
  v4 = a3;
  v5 = [(_LTDAssetModel *)self assetVersion];
  if (v5 == [v4 assetVersion])
  {
    v6 = [(_LTDAssetModel *)self requiredCapabilityIdentifier];
    if (v6 == [v4 requiredCapabilityIdentifier])
    {
      v7 = 0;
      goto LABEL_9;
    }

    v8 = [(_LTDAssetModel *)self requiredCapabilityIdentifier];
    v9 = [v4 requiredCapabilityIdentifier];
  }

  else
  {
    v8 = [(_LTDAssetModel *)self assetVersion];
    v9 = [v4 assetVersion];
  }

  if (v8 > v9)
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

- (BOOL)isNewerVersionThan:(id)a3
{
  v4 = a3;
  if ([(_LTDAssetModel *)self isEqual:v4])
  {
    v5 = [(_LTDAssetModel *)self assetVersion];
    v6 = v5 > [v4 assetVersion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isNewerCompatibleVersionThan:(id)a3
{
  v4 = a3;
  if ([(_LTDAssetModel *)self _isCompatibleWithThisDevice])
  {
    v5 = [(_LTDAssetModel *)self isNewerVersionThan:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isCompatibleWithThisDevice
{
  v3 = [(_LTDAssetModel *)self requiredCapabilityIdentifier];
  if (v3 > +[_LTDANEService capability])
  {
    return 0;
  }

  v5 = [(_LTDAssetModel *)self formatVersion];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [MEMORY[0x277D07278] minimumSupportedConfigurationVersion];
  v8 = [v7 integerValue];

  v9 = [MEMORY[0x277D07278] maximumSupportedConfigurationVersion];
  v10 = [v9 integerValue];

  return v6 >= v8 && v6 <= v10;
}

+ (id)localeIdentifiersForLanguageName:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _LTPreferencesSupportedLocales(1);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v3 componentsSeparatedByString:@"_"];
  if ([v6 count] == 2)
  {
    v7 = [v6 objectAtIndexedSubscript:1];
    v8 = [v7 isEqualToString:@"Var"];

    if (!v8)
    {
      v30[0] = v3;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      goto LABEL_16;
    }

    v24 = v5;
    v22 = v6;
    v9 = [v6 objectAtIndexedSubscript:0];

    v3 = v9;
  }

  else
  {
    v22 = v6;
    v24 = v5;
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

        v15 = [*(*(&v25 + 1) + 8 * i) _ltLocaleIdentifier];
        v16 = [v15 componentsSeparatedByString:@"_"];
        v17 = [v16 objectAtIndexedSubscript:0];
        v18 = [v3 isEqualToString:v17];

        if (v18)
        {
          [v24 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v5 = v24;
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

  v5 = self;
  objc_sync_enter(v5);
  v6 = self->_localeIdentifiers;
  if (!v6)
  {
    v9 = [(_LTDAssetModel *)v5 identifier];
    v47 = [v9 componentsSeparatedByString:@"-"];

    v10 = [(_LTDAssetModel *)v5 assetType];
    if (v10 > 7)
    {
      if (v10 == 8)
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
            v28 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
            v29 = [v27 rangeOfCharacterFromSet:v28];

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

      if (v10 == 10)
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

      if (v10 != 11)
      {
LABEL_36:
        v37 = self->_localeIdentifiers;
        self->_localeIdentifiers = MEMORY[0x277CBEBF8];

        goto LABEL_44;
      }
    }

    else
    {
      if ((v10 - 6) < 2)
      {
        v11 = objc_opt_new();
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v12 = [(_LTDAssetModel *)v5 supportedLanguages];
        v13 = [v12 countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v13)
        {
          v14 = *v49;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = [*(*(&v48 + 1) + 8 * j) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
              [v11 addObject:v16];
            }

            v13 = [v12 countByEnumeratingWithState:&v48 objects:v52 count:16];
          }

          while (v13);
        }

        v17 = [v11 copy];
        v18 = self->_localeIdentifiers;
        self->_localeIdentifiers = v17;

        goto LABEL_44;
      }

      if (v10 != 2)
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
      objc_sync_exit(v5);

      localeIdentifiers = self->_localeIdentifiers;
LABEL_2:
      v3 = localeIdentifiers;
      goto LABEL_5;
    }

    goto LABEL_36;
  }

  v3 = v6;
  objc_sync_exit(v5);

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_LTDAssetModel *)self identifier];
  v7 = [(_LTDAssetModel *)self assetTypeName];
  v8 = [(_LTDAssetModel *)self stateDescription];
  v9 = [(_LTDAssetModel *)self progress];
  v10 = [v3 stringWithFormat:@"<%@: %p %@ (%@) %@ %@>", v5, self, v6, v7, v8, v9];;

  return v10;
}

@end