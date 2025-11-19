@interface _LTDOfflineConfigurationModel
+ (BOOL)isPassthroughLocalePairIdentifier:(id)a3;
+ (id)passthroughConfiguration;
- (NSArray)languageIdentifiers;
- (_LTDOfflineConfigurationModel)initWithDictionary:(id)a3;
- (id)_offlinePairConfigurationWithIdentifier:(id)a3 capability:(int64_t)a4;
- (id)offlinePairConfigurationWithIdentifier:(id)a3;
@end

@implementation _LTDOfflineConfigurationModel

- (_LTDOfflineConfigurationModel)initWithDictionary:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = _LTDOfflineConfigurationModel;
  v6 = [(_LTDOfflineConfigurationModel *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_root, a3);
    v8 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"LanguagePairs"];
    v9 = objc_opt_class();
    v10 = v8;
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = [(NSDictionary *)v10 lt_ensureTypesForKeys:v9 values:0], v12 = v10, (v11 & 1) == 0))
    {

      v12 = 0;
    }

    languagePairConfigs = v7->_languagePairConfigs;
    v7->_languagePairConfigs = v12;

    v14 = [(NSDictionary *)v7->_languagePairConfigs allValues];
    v15 = [v14 firstObject];
    objc_opt_class();
    v7->_hasCapabilityIdentifiers = objc_opt_isKindOfClass() & 1;

    if (!v7->_languagePairConfigs)
    {
      v16 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"config"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"config"];
      }

      else
      {
        v17 = 0;
      }

      pairAssetConfigFile = v7->_pairAssetConfigFile;
      v7->_pairAssetConfigFile = v17;

      v19 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"asset_list"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v19 lt_ensureElementType:objc_opt_class()])
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {

        v19 = 0;
        v20 = 0;
      }

      v21 = v20;

      pairAssetList = v7->_pairAssetList;
      v7->_pairAssetList = v21;

      v23 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];
      }

      else
      {
        v24 = objc_opt_new();
      }

      v25 = v24;
      v7->_pairAssetRequiredANECapability = [v24 integerValue];
    }

    v26 = v7;
  }

  return v7;
}

+ (id)passthroughConfiguration
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [_LTDOfflineConfigurationModel alloc];
  v7[0] = @"config";
  v7[1] = @"asset_list";
  v8[0] = &stru_284834138;
  v8[1] = MEMORY[0x277CBEBF8];
  v7[2] = @"RequiredCapabilityIdentifier";
  v8[2] = &unk_284868008;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = [(_LTDOfflineConfigurationModel *)v2 initWithDictionary:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)isPassthroughLocalePairIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 9)
  {
    v5 = v4 >> 1;
    if ([v3 characterAtIndex:v4 >> 1] == 45)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = [v3 characterAtIndex:v6];
        if (v8 != [v3 characterAtIndex:v5 + v6 + 1])
        {
          break;
        }

        v7 |= v8 == 95;
        if (v5 == ++v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v7 = 0;
LABEL_8:

  return v7 & 1;
}

- (NSArray)languageIdentifiers
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [(_LTDOfflineConfigurationModel *)self languagePairs];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138543362;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 componentsSeparatedByString:{@"-", v18, v19}];
        if ([v11 count] > 1)
        {
          v13 = [v11 objectAtIndexedSubscript:0];
          [v3 addObject:v13];
          v14 = [v11 objectAtIndexedSubscript:1];
          [v3 addObject:v14];
        }

        else
        {
          v12 = _LTOSLogAssets();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = v10;
            _os_log_error_impl(&dword_232E53000, v12, OS_LOG_TYPE_ERROR, "Offline configuration locale pair with nil source and/or target: %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [v3 allObjects];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)offlinePairConfigurationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_LTDOfflineConfigurationModel *)self _offlinePairConfigurationWithIdentifier:v4 capability:+[_LTDANEService capability]];

  return v5;
}

- (id)_offlinePairConfigurationWithIdentifier:(id)a3 capability:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([objc_opt_class() isPassthroughLocalePairIdentifier:v6])
  {
    v7 = [objc_opt_class() passthroughConfiguration];
  }

  else
  {
    hasCapabilityIdentifiers = self->_hasCapabilityIdentifiers;
    v9 = [(NSDictionary *)self->_languagePairConfigs objectForKeyedSubscript:v6];
    if (hasCapabilityIdentifiers)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(NSDictionary *)self->_languagePairConfigs objectForKeyedSubscript:v6];
      }

      else
      {
        v10 = objc_opt_new();
      }

      v12 = v10;

      v13 = [v12 firstObject];
      v14 = 0x277CBE000uLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v12 firstObject];
      }

      else
      {
        v15 = objc_opt_new();
      }

      v16 = v15;

      if ([v12 count])
      {
        v17 = 0;
        while (1)
        {
          v18 = [v12 objectAtIndexedSubscript:v17];
          v19 = [v18 objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 objectAtIndexedSubscript:v17];
            v21 = v20 = v14;
            v22 = [v21 objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];

            v14 = v20;
          }

          else
          {
            v22 = objc_opt_new();
          }

          if ([v22 integerValue] > a4)
          {
            break;
          }

          v23 = [v12 objectAtIndexedSubscript:v17];
          v24 = *(v14 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [v12 objectAtIndexedSubscript:v17];
          }

          else
          {
            v26 = *(v14 + 2752);
            v25 = objc_opt_new();
          }

          v27 = v25;

          ++v17;
          v16 = v27;
          if (v17 >= [v12 count])
          {
            v16 = v27;
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [(NSDictionary *)self->_languagePairConfigs objectForKeyedSubscript:v6];
      }

      else
      {
        v11 = objc_opt_new();
      }

      v16 = v11;
      v12 = v9;
    }

LABEL_26:

    if ([v16 count])
    {
      v7 = [[_LTDOfflineConfigurationModel alloc] initWithDictionary:v16];
    }

    else
    {
      v28 = _LTOSLogAssets();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v32 = v6;
        _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "No offline configuration available for language identifier: %{public}@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

@end