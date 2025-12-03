@interface UAFAssetSetConfiguration
+ (BOOL)isValid:(id)valid fileURL:(id)l error:(id *)error;
+ (id)fromContentsOfURL:(id)l error:(id *)error;
+ (id)supportedFileVersions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUsageLimitExceeded:(id)exceeded;
- (UAFAssetSetConfiguration)initWithDictionary:(id)dictionary;
- (id)getAssets:(id)assets;
- (id)getAutoAssets:(id)assets;
- (id)getFilteredUsages:(id)usages;
- (int)_usageCountForUsageType:(id)type usingUsages:(id)usages;
- (unint64_t)hash;
@end

@implementation UAFAssetSetConfiguration

+ (id)supportedFileVersions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (unint64_t)hash
{
  name = [(UAFAssetSetConfiguration *)self name];
  v3 = [name hash];

  return v3;
}

+ (BOOL)isValid:(id)valid fileURL:(id)l error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  lCopy = l;
  v9 = +[UAFAssetSetConfiguration supportedFileVersions];
  v10 = [UAFConfiguration isValid:validCopy fileType:@"AssetSetConfiguration" fileVersions:v9 error:error];

  if (!v10 || ![UAFConfiguration isValidValue:validCopy key:@"AssetSetName" kind:objc_opt_class() required:1 error:error])
  {
    goto LABEL_15;
  }

  if (lCopy)
  {
    v11 = [UAFConfigurationManager getAssetNameFromPath:lCopy];
    v12 = [validCopy objectForKeyedSubscript:@"AssetSetName"];
    v13 = [(__CFString *)v11 isEqualToString:v12];

    if ((v13 & 1) == 0)
    {
      v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [validCopy objectForKeyedSubscript:@"AssetSetName"];
        *buf = 136315650;
        v52 = "+[UAFAssetSetConfiguration isValid:fileURL:error:]";
        v53 = 2112;
        v54 = v16;
        v55 = 2112;
        v56 = v11;
        _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s AssetSetName (%@) must match filename (%@)", buf, 0x20u);
      }

      goto LABEL_15;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"UsageTypes" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"EnableCellular" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"SubjectToAppleIntelligenceWaitlist" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"UsageValues" kind:objc_opt_class() required:0 error:error])
  {
LABEL_15:
    LOBYTE(v17) = 0;
    goto LABEL_16;
  }

  v14 = [validCopy objectForKeyedSubscript:@"TrialProject"];
  if (v14)
  {

    goto LABEL_18;
  }

  v20 = [validCopy objectForKeyedSubscript:@"AutoAssetType"];

  if (!v20)
  {
    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v49[0] = *MEMORY[0x1E696A578];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of keys %@ and %@ must have a value", @"TrialProject", @"AutoAssetType"];
        v49[1] = *MEMORY[0x1E696AA08];
        v50[0] = v29;
        v50[1] = *error;
        v30 = MEMORY[0x1E695DF20];
        v31 = v50;
        v32 = v49;
        v33 = 2;
      }

      else
      {
        v47 = *MEMORY[0x1E696A578];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of keys %@ and %@ must have a value", @"TrialProject", @"AutoAssetType"];
        v48 = v29;
        v30 = MEMORY[0x1E695DF20];
        v31 = &v48;
        v32 = &v47;
        v33 = 1;
      }

      v34 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      *error = [v27 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v34];
    }

    v35 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v52 = "+[UAFAssetSetConfiguration isValid:fileURL:error:]";
      v53 = 2112;
      v54 = @"TrialProject";
      v55 = 2112;
      v56 = @"AutoAssetType";
      _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEFAULT, "%s One of keys %@ and %@ must have a value", buf, 0x20u);
    }

    goto LABEL_15;
  }

LABEL_18:
  if (![UAFConfiguration isValidValue:validCopy key:@"TrialProject" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"AutoAssetType" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"MetadataAsset" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"Assets" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_15;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [validCopy objectForKeyedSubscript:@"Assets"];
  v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v41)
  {
    v40 = *v43;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v36 = UAFGetLogCategory(&UAFLogContextConfiguration);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = objc_opt_class();
            *buf = 136315394;
            v52 = "+[UAFAssetSetConfiguration isValid:fileURL:error:]";
            v53 = 2112;
            v54 = v37;
            v38 = v37;
            _os_log_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_DEFAULT, "%s Asset is not expected kind %@", buf, 0x16u);
          }

LABEL_48:
          goto LABEL_15;
        }

        v23 = [validCopy objectForKeyedSubscript:@"UsageTypes"];
        v24 = [UAFAssetConfiguration isValid:v22 validUsageTypes:v23 error:error];

        if (!v24)
        {
          goto LABEL_48;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"DisableAssetRemoval" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"AutoAssetType" kind:objc_opt_class() required:0 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"ExperimentalAssets" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_15;
  }

  v25 = [validCopy objectForKeyedSubscript:@"ExperimentalAssets"];

  if (!v25 || ([validCopy objectForKeyedSubscript:@"ExperimentalAssets"], v26 = objc_claimAutoreleasedReturnValue(), v17 = +[UAFExperimentalAssetsConfiguration isValid:error:](UAFExperimentalAssetsConfiguration, "isValid:error:", v26, error), v26, v17))
  {
    LOBYTE(v17) = 1;
  }

LABEL_16:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)fromContentsOfURL:(id)l error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (error)
  {
    *error = 0;
  }

  v18 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v18];
  v7 = v18;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ([UAFAssetSetConfiguration isValid:v6 fileURL:lCopy error:error])
    {
      v15 = [[UAFAssetSetConfiguration alloc] initWithDictionary:v6];
      uRLByResolvingSymlinksInPath = [lCopy URLByResolvingSymlinksInPath];
      [(UAFAssetSetConfiguration *)v15 setOriginatingURL:uRLByResolvingSymlinksInPath];
      goto LABEL_15;
    }

    uRLByResolvingSymlinksInPath = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(uRLByResolvingSymlinksInPath, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[UAFAssetSetConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = lCopy;
      v12 = "%s Failed to validate UAFAssetSetConfiguration dictionary from %@";
      v13 = uRLByResolvingSymlinksInPath;
      v14 = 22;
      goto LABEL_19;
    }
  }

  else
  {
    uRLByResolvingSymlinksInPath = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(uRLByResolvingSymlinksInPath, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "+[UAFAssetSetConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = lCopy;
      v23 = 2112;
      v24 = v8;
      v12 = "%s Failed to load UAFAssetSetConfiguration dictionary from %@: %@";
      v13 = uRLByResolvingSymlinksInPath;
      v14 = 32;
LABEL_19:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (UAFAssetSetConfiguration)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = UAFAssetSetConfiguration;
  v5 = [(UAFAssetSetConfiguration *)&v40 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AssetSetName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"UsageTypes"];
    usageTypes = v5->_usageTypes;
    v5->_usageTypes = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"UsageValues"];
    usageValues = v5->_usageValues;
    v5->_usageValues = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"AutoAssetType"];
    autoAssetType = v5->_autoAssetType;
    v5->_autoAssetType = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"MetadataAsset"];
    metadataAsset = v5->_metadataAsset;
    v5->_metadataAsset = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"UsageLimits"];
    usageLimits = v5->_usageLimits;
    v5->_usageLimits = v16;

    v35 = [dictionaryCopy objectForKeyedSubscript:@"EnableCellular"];
    v5->_enableExpensiveCellular = [v35 BOOLValue];
    v34 = [dictionaryCopy objectForKeyedSubscript:@"SubjectToAppleIntelligenceWaitlist"];
    v5->_subjectToAppleIntelligenceWaitlist = [v34 BOOLValue];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"DisableAssetRemoval"];
    v5->_disableAssetRemoval = [v18 BOOLValue];
    v19 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"Assets"];
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        v24 = 0;
        do
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[UAFAssetConfiguration alloc] initWithDictionary:*(*(&v36 + 1) + 8 * v24)];
          [v19 addObject:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v22);
    }

    objc_storeStrong(&v5->_assets, v19);
    v26 = [dictionaryCopy objectForKeyedSubscript:@"ExperimentalAssets"];

    if (v26)
    {
      v27 = [UAFExperimentalAssetsConfiguration alloc];
      v28 = [dictionaryCopy objectForKeyedSubscript:@"ExperimentalAssets"];
      v29 = [(UAFExperimentalAssetsConfiguration *)v27 initWithDictionary:v28];
      experimentalAssets = v5->_experimentalAssets;
      v5->_experimentalAssets = v29;
    }

    v31 = v5;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)getFilteredUsages:(id)usages
{
  v24 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  v5 = usagesCopy;
  if (usagesCopy && self->_usageValues)
  {
    v18 = usagesCopy;
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:usagesCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_usageValues;
    v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          if (v13)
          {
            v14 = [(NSDictionary *)self->_usageValues objectForKeyedSubscript:v12];
            v15 = [v14 containsObject:v13];

            if ((v15 & 1) == 0)
            {
              [v6 setObject:0 forKeyedSubscript:v12];
            }
          }
        }

        v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v5 = v18;
  }

  else
  {
    v6 = usagesCopy;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)getAutoAssets:(id)assets
{
  v34 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = [(UAFAssetSetConfiguration *)self getAssets:assetsCopy];
  v6 = v5;
  if (v5)
  {
    v27 = assetsCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v28 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v28)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          v13 = [v12 objectForKeyedSubscript:@"AutoAssetType"];

          if (v13)
          {
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v14 = [v9 objectForKeyedSubscript:v11];

            if (!v14)
            {
              v15 = objc_opt_new();
              [v9 setObject:v15 forKeyedSubscript:v11];
            }

            v16 = [v6 objectForKeyedSubscript:v11];
            v17 = [v16 objectForKeyedSubscript:@"AutoAssetType"];
            v18 = [v9 objectForKeyedSubscript:v11];
            [v18 setObject:v17 forKeyedSubscript:@"AutoAssetType"];

            v19 = [v6 objectForKeyedSubscript:v11];
            v20 = [v19 objectForKeyedSubscript:@"AssetSpecifier"];

            if (v20)
            {
              v21 = [v6 objectForKeyedSubscript:v11];
              v22 = [v21 objectForKeyedSubscript:@"AssetSpecifier"];
              v23 = [v9 objectForKeyedSubscript:v11];
              [v23 setObject:v22 forKeyedSubscript:@"AssetSpecifier"];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v24 = v9;
    assetsCopy = v27;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)getAssets:(id)assets
{
  v35 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = [(UAFAssetSetConfiguration *)self getFilteredUsages:?];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(UAFAssetSetConfiguration *)self assets];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v31;
    do
    {
      v9 = 0;
      v28 = v6;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        if (!v7)
        {
          v7 = objc_opt_new();
        }

        name = [v10 name];
        v12 = [v7 objectForKeyedSubscript:name];

        if (!v12)
        {
          v13 = objc_opt_new();
          name2 = [v10 name];
          [v7 setObject:v13 forKeyedSubscript:name2];
        }

        v15 = [v10 getAutoAssetSpecifier:v4];
        if (v15)
        {
          autoAssetType = [(UAFAssetSetConfiguration *)self autoAssetType];

          if (autoAssetType)
          {
            autoAssetType2 = [(UAFAssetSetConfiguration *)self autoAssetType];
            [v10 name];
            v18 = v8;
            selfCopy = self;
            v21 = v20 = v4;
            v22 = [v7 objectForKeyedSubscript:v21];
            [v22 setObject:autoAssetType2 forKeyedSubscript:@"AutoAssetType"];

            name3 = [v10 name];
            v24 = [v7 objectForKeyedSubscript:name3];
            [v24 setObject:v15 forKeyedSubscript:@"AssetSpecifier"];

            v4 = v20;
            self = selfCopy;
            v8 = v18;
            v6 = v28;
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v7;
}

- (int)_usageCountForUsageType:(id)type usingUsages:(id)usages
{
  v24 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  usagesCopy = usages;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = usagesCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{typeCopy, v19}];

        if (v14)
        {
          v15 = [v13 objectForKeyedSubscript:typeCopy];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 count];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)isUsageLimitExceeded:(id)exceeded
{
  v32 = *MEMORY[0x1E69E9840];
  exceededCopy = exceeded;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_usageLimits;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"UsageType"];
        v11 = [v9 objectForKeyedSubscript:@"MaxUsageValues"];
        intValue = [v11 intValue];

        if ([(UAFAssetSetConfiguration *)self _usageCountForUsageType:v10 usingUsages:exceededCopy]> intValue)
        {
          v14 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            name = self->_name;
            *buf = 136315906;
            v24 = "[UAFAssetSetConfiguration isUsageLimitExceeded:]";
            v25 = 2112;
            v26 = name;
            v27 = 2112;
            v28 = v10;
            v29 = 1024;
            v30 = intValue;
            _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Usage limit exceeded for asset set %@ of usage type %@ with limit of %d", buf, 0x26u);
          }

          v13 = 1;
          goto LABEL_13;
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (equalCopy == self)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      name = [(UAFAssetSetConfiguration *)self name];
      name2 = [(UAFAssetSetConfiguration *)v5 name];

      v8 = [name isEqual:name2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end