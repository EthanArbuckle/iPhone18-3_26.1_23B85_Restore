@interface _LTDUAFAssetModel
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (BOOL)supportsLocale:(id)a3;
- (NSArray)localeIdentifiers;
- (NSArray)supportedLanguages;
- (NSString)assetBuild;
- (NSString)assetId;
- (NSString)assetLanguage;
- (NSString)assetTypeName;
- (NSString)coreAssetName;
- (NSString)debugDescription;
- (NSString)identifier;
- (_LTDUAFAssetModel)initWithAssetIdentifier:(id)a3;
- (_LTDUAFAssetModel)initWithAssetSpecifier:(id)a3;
- (_LTDUAFAssetModel)initWithProvider:(id)a3;
- (int64_t)assetVersion;
- (int64_t)compare:(id)a3;
- (int64_t)contentVersion;
- (int64_t)downloadSize;
- (int64_t)requiredCapabilityIdentifier;
- (int64_t)unarchivedSize;
- (unint64_t)assetSubtype;
- (unint64_t)hash;
- (unint64_t)state;
- (void)setProvider:(id)a3;
@end

@implementation _LTDUAFAssetModel

- (_LTDUAFAssetModel)initWithProvider:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _LTDUAFAssetModel;
  v5 = [(_LTDUAFAssetModel *)&v13 init];
  if (v5)
  {
    v6 = [v4 metadata];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D77A20]];
    assetName = v5->_assetName;
    v5->_assetName = v7;

    v9 = [_LTDUAFBridge assetIdentifierForAssetSpecifier:v5->_assetName];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    [(_LTDUAFAssetModel *)v5 setProvider:v4];
    v11 = v5;
  }

  return v5;
}

- (_LTDUAFAssetModel)initWithAssetIdentifier:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = _LTDUAFAssetModel;
  v6 = [(_LTDUAFAssetModel *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = [_LTDUAFBridge assetSpecifierForAssetIdentifier:v5];
    assetName = v7->_assetName;
    v7->_assetName = v8;

    v10 = MEMORY[0x277CE1AC0];
    v11 = [(_LTDUAFAssetModel *)v7 identifier];
    v12 = [v10 discreteProgressWithIdentifier:v11 totalUnitCount:{-[_LTDUAFAssetModel downloadSize](v7, "downloadSize")}];
    progress = v7->_progress;
    v7->_progress = v12;

    v14 = v7;
  }

  return v7;
}

- (_LTDUAFAssetModel)initWithAssetSpecifier:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _LTDUAFAssetModel;
  v6 = [(_LTDUAFAssetModel *)&v15 init];
  if (v6)
  {
    v7 = [_LTDUAFBridge assetIdentifierForAssetSpecifier:v5];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    objc_storeStrong(&v6->_assetName, a3);
    v9 = MEMORY[0x277CE1AC0];
    v10 = [(_LTDUAFAssetModel *)v6 identifier];
    v11 = [v9 discreteProgressWithIdentifier:v10 totalUnitCount:{-[_LTDUAFAssetModel downloadSize](v6, "downloadSize")}];
    progress = v6->_progress;
    v6->_progress = v11;

    v13 = v6;
  }

  return v6;
}

- (void)setProvider:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_provider, a3);
    v6 = [(_LTDUAFAssetModel *)self downloadSize];
    progress = self->_progress;
    if (progress)
    {
      v8 = [(_LTAssetProgress *)progress offlineState];
      v9 = self->_progress;
      if (v8 == 2)
      {
        v10 = v6;
        v11 = v6;
      }

      else
      {
        v11 = [(_LTAssetProgress *)v9 completedUnitCount];
        v9 = self->_progress;
        v10 = v6;
      }

      [(_LTAssetProgress *)v9 updateTotalUnitCount:v10 completedUnitCount:v11];
    }

    else
    {
      v12 = MEMORY[0x277CE1AC0];
      v13 = [(_LTDUAFAssetModel *)self identifier];
      v14 = [v12 discreteProgressWithIdentifier:v13 totalUnitCount:v6];
      v15 = self->_progress;
      self->_progress = v14;
    }

    v16 = [v18 location];
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [(_LTAssetProgress *)self->_progress setOfflineState:v17];

    v5 = v18;
  }
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = [(_LTDUAFAssetModel *)self assetName];
    v5 = [_LTDUAFBridge assetIdentifierForAssetSpecifier:v4];
    v6 = self->_identifier;
    self->_identifier = v5;

    identifier = self->_identifier;
  }

  v7 = identifier;

  return v7;
}

- (NSString)assetBuild
{
  v3 = [(UAFAsset *)self->_provider metadata];
  v4 = [v3 objectForKeyedSubscript:@"Build"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UAFAsset *)self->_provider metadata];
    v6 = [v5 objectForKeyedSubscript:@"Build"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)assetId
{
  v3 = [(UAFAsset *)self->_provider metadata];
  v4 = *MEMORY[0x277D77A18];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D77A18]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(UAFAsset *)self->_provider metadata];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = objc_opt_new();
  }

  return v7;
}

- (NSString)assetLanguage
{
  if ([(_LTDUAFAssetModel *)self assetType]== 2)
  {
    assetLanguage = self->_assetLanguage;
    if (!assetLanguage)
    {
      v4 = [(_LTDUAFAssetModel *)self identifier];
      v5 = [v4 substringFromIndex:{objc_msgSend(@"ASR-", "length")}];
      v6 = [v5 lt_localeIdentifier];
      v7 = self->_assetLanguage;
      self->_assetLanguage = v6;

      assetLanguage = self->_assetLanguage;
    }

    v8 = assetLanguage;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)coreAssetName
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(_LTDUAFAssetModel *)self assetType]== 8 && [(NSString *)self->_identifier containsString:@"-partial-"])
  {
    v3 = [(NSString *)self->_identifier componentsSeparatedByString:@"-"];
    v4 = [v3 mutableCopy];

    if ([v4 count] > 5)
    {
      [v4 removeObjectsInRange:{objc_msgSend(v4, "count") - 3, 2}];
      v8 = [v4 componentsJoinedByString:@"-"];
    }

    else
    {
      v5 = _LTOSLogAssets();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        identifier = self->_identifier;
        v7 = v5;
        v12 = 138412546;
        v13 = identifier;
        v14 = 2048;
        v15 = [v4 count];
        _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Asset identifier does not contain sufficient components: %@ has %zu components", &v12, 0x16u);
      }

      v8 = self->_identifier;
    }

    v9 = v8;
  }

  else
  {
    v9 = self->_identifier;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)assetSubtype
{
  result = self->_assetSubtype;
  if (!result)
  {
    result = [_LTDUAFBridge assetSubtypeForAssetSpecifier:self->_assetName];
    self->_assetSubtype = result;
  }

  return result;
}

- (NSString)assetTypeName
{
  v2 = [(_LTDUAFAssetModel *)self assetType];
  if (v2 - 2 > 8)
  {
    return &stru_284834138;
  }

  else
  {
    return &off_2789B6840[v2 - 2]->isa;
  }
}

- (int64_t)assetVersion
{
  v2 = [(UAFAsset *)self->_provider metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D77A28]];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)contentVersion
{
  if (([(_LTDUAFAssetModel *)self assetType]& 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return 0;
  }

  return [(_LTDUAFAssetModel *)self assetVersion];
}

- (int64_t)downloadSize
{
  v3 = [(UAFAsset *)self->_provider metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D77A30]];
  v5 = [v4 integerValue];

  if (v5 <= 0)
  {
    v6 = [(_LTDUAFAssetModel *)self assetSubtype];
    if (v6 - 2 > 8)
    {
      v7 = MEMORY[0x277CE1C60];
    }

    else
    {
      v7 = (&off_2789B6888)[v6 - 2];
    }

    return *v7;
  }

  return v5;
}

- (BOOL)isInstalled
{
  v2 = [(_LTDUAFAssetModel *)self getLocalFileUrl];
  v3 = [v2 path];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (int64_t)requiredCapabilityIdentifier
{
  if ([(_LTDUAFAssetModel *)self assetType]!= 8)
  {
    return 0;
  }

  v3 = [(NSString *)self->_identifier componentsSeparatedByString:@"-"];
  v4 = [v3 lastObject];
  v5 = [v4 integerValue];

  return v5;
}

- (unint64_t)state
{
  if ([(_LTDUAFAssetModel *)self isInstalled])
  {
    return 1;
  }

  v4 = [(_LTDUAFAssetModel *)self progress];
  v5 = [v4 offlineState];

  switch(v5)
  {
    case 0:
      return 3;
    case 3:

      return [_LTDUAFAssetService stateForAsset:self];
    case 1:
      return 2;
    default:
      return 1;
  }
}

- (NSArray)supportedLanguages
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(_LTDUAFAssetModel *)self assetLanguage];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)supportsLocale:(id)a3
{
  v4 = a3;
  v5 = [(_LTDUAFAssetModel *)self assetLanguage];
  v6 = [v4 _ltLocaleIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (int64_t)unarchivedSize
{
  v3 = [(UAFAsset *)self->_provider metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D77A38]];
  v5 = [v4 intValue];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2 * [(_LTDUAFAssetModel *)self downloadSize];
  }

  if (v6 <= *MEMORY[0x277CE1C60])
  {
    return *MEMORY[0x277CE1C60];
  }

  else
  {
    return v6;
  }
}

- (NSArray)localeIdentifiers
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = [(_LTDUAFAssetModel *)self identifier];
  v4 = [v3 componentsSeparatedByString:@"-"];
  v5 = [v4 mutableCopy];

  v6 = [(_LTDUAFAssetModel *)self assetType];
  v7 = MEMORY[0x277CBEBF8];
  if (v6 > 7)
  {
    if (v6 == 8)
    {
      v8 = objc_opt_new();
      v19 = [v5 indexOfObject:@"partial"];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = v19 + 1;
        if (v19 + 1 < [v5 count])
        {
          v26 = [v5 objectAtIndexedSubscript:v25];
          v27 = [_LTDAssetModel localeIdentifiersForLanguageName:v26];

          [v8 addObjectsFromArray:v27];
        }

        goto LABEL_11;
      }

      v9 = [v5 subarrayWithRange:{2, objc_msgSend(v5, "count") - 5}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v9);
            }

            v24 = [_LTDAssetModel localeIdentifiersForLanguageName:*(*(&v32 + 1) + 8 * i)];
            [v8 addObjectsFromArray:v24];
          }

          v21 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v21);
      }

LABEL_10:

LABEL_11:
      v15 = [v8 copy];
LABEL_12:
      v7 = v15;

      goto LABEL_13;
    }

    if (v6 == 10 && [v5 count] == 2)
    {
      v18 = [v5 objectAtIndexedSubscript:1];
      v7 = [_LTDAssetModel localeIdentifiersForLanguageName:v18];
    }
  }

  else
  {
    if ((v6 - 6) < 2)
    {
      v8 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = [(_LTDUAFAssetModel *)self supportedLanguages];
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v28 + 1) + 8 * j) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v11);
      }

      goto LABEL_10;
    }

    if (v6 == 2 && [v5 count] == 2)
    {
      v8 = [v5 objectAtIndexedSubscript:1];
      v38[0] = v8;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      goto LABEL_12;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = [(_LTDUAFAssetModel *)self assetType];
  v5 = [(_LTDUAFAssetModel *)self assetType];
  if (v4 == v5)
  {
    return 0;
  }

  if (v4 == 5)
  {
    return -1;
  }

  if (v5 == 5)
  {
    return 1;
  }

  v7 = 1;
  v8 = -1;
  v9 = 1;
  v10 = -1;
  v11 = 1;
  if (v5 != 2)
  {
    v11 = -1;
  }

  if (v4 != 2)
  {
    v10 = v11;
  }

  if (v5 != 10)
  {
    v9 = v10;
  }

  if (v4 != 10)
  {
    v8 = v9;
  }

  if (v5 != 8)
  {
    v7 = v8;
  }

  if (v4 == 8)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (unint64_t)hash
{
  v2 = [(_LTDUAFAssetModel *)self assetName];
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
    v9 = [(_LTDUAFAssetModel *)self assetName];
    v10 = [(_LTDUAFAssetModel *)v8 assetName];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [(_LTDUAFAssetModel *)self getLocalFileUrl];
      v13 = [(_LTDUAFAssetModel *)v8 getLocalFileUrl];
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
  assetName = self->_assetName;
  v7 = [(UAFAsset *)self->_provider debugDescription];
  v8 = [v3 stringWithFormat:@"<%@ %@, %@>", v5, assetName, v7];

  return v8;
}

@end