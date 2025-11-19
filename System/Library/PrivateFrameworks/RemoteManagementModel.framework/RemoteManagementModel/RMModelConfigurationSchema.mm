@interface RMModelConfigurationSchema
+ (id)_processManagedSettingsSchemas;
+ (void)_loadDynamicSchemaFromDictionary:(id)a3 into:(id)a4 fileURL:(id)a5;
+ (void)_loadDynamicSchemaFromDirectory:(id)a3 into:(id)a4;
+ (void)_loadDynamicSchemaFromFile:(id)a3 into:(id)a4;
+ (void)loadDynamicSchemaFromDirectory:(id)a3;
+ (void)loadDynamicSchemaFromFiles:(id)a3;
- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4;
- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5;
- (id)_parseAssetReferences:(id)a3;
- (id)_parseManagedSettings:(id)a3;
- (id)initFromDictionary:(id)a3;
@end

@implementation RMModelConfigurationSchema

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = RMModelConfigurationSchema;
  v5 = [(RMModelConfigurationSchema *)&v20 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v4 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 intValue] != 1)
  {
LABEL_9:

    v18 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v5->_version, v6);
  v7 = [v4 objectForKeyedSubscript:@"configuration-type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_storeStrong(&v5->_configurationType, v7), [v4 objectForKeyedSubscript:@"supported-os"], v8 = objc_claimAutoreleasedReturnValue(), +[RMModelSchemaParser loadSupportedOSFromDictionary:](RMModelSchemaParser, "loadSupportedOSFromDictionary:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {

    goto LABEL_9;
  }

  supportedOS = v5->_supportedOS;
  v5->_supportedOS = v9;
  v11 = v9;

  v12 = [v4 objectForKeyedSubscript:@"asset-references"];
  v13 = [(RMModelConfigurationSchema *)v5 _parseAssetReferences:v12];
  assetReferences = v5->_assetReferences;
  v5->_assetReferences = v13;

  v15 = [v4 objectForKeyedSubscript:@"managed-settings"];
  v16 = [(RMModelConfigurationSchema *)v5 _parseManagedSettings:v15];
  managedSettings = v5->_managedSettings;
  v5->_managedSettings = v16;

LABEL_7:
  v18 = v5;
LABEL_10:

  return v18;
}

- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4
{
  v6 = [(RMModelConfigurationSchema *)self supportedOS];
  LOBYTE(a4) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 supportedOS:v6];

  return a4;
}

- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5
{
  v8 = [(RMModelConfigurationSchema *)self supportedOS];
  LOBYTE(a5) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 enrollmentType:a5 supportedOS:v8];

  return a5;
}

+ (void)loadDynamicSchemaFromDirectory:(id)a3
{
  v4 = a3;
  v9 = objc_opt_new();
  [a1 _loadDynamicSchemaFromDirectory:v4 into:v9];

  v5 = [v9 copy];
  v6 = _schemas;
  _schemas = v5;

  v7 = [a1 _processManagedSettingsSchemas];
  v8 = _managedSettingsSchemas;
  _managedSettingsSchemas = v7;
}

+ (void)loadDynamicSchemaFromFiles:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [a1 _loadDynamicSchemaFromFile:*(*(&v16 + 1) + 8 * v10++) into:{v5, v16}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];
  v12 = _schemas;
  _schemas = v11;

  v13 = [a1 _processManagedSettingsSchemas];
  v14 = _managedSettingsSchemas;
  _managedSettingsSchemas = v13;

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromDirectory:(id)a3 into:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v5;
  v9 = [v5 path];
  v10 = [v7 contentsOfDirectoryAtPath:v9 error:0];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 pathExtension];
        v18 = [v17 isEqualToString:@"json"];

        if (v18)
        {
          v19 = [v8 URLByAppendingPathComponent:v16];
          [a1 _loadDynamicSchemaFromFile:v19 into:v6];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromFile:(id)a3 into:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    v12 = v9;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v12];
    v11 = v12;

    if (v10)
    {
      [a1 _loadDynamicSchemaFromDictionary:v10 into:v7 fileURL:v6];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelConfigurationSchema _loadDynamicSchemaFromFile:into:];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelConfigurationSchema _loadDynamicSchemaFromFile:into:];
    }

    v11 = v9;
  }
}

+ (void)_loadDynamicSchemaFromDictionary:(id)a3 into:(id)a4 fileURL:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[RMModelConfigurationSchema alloc] initFromDictionary:v9];

  if (v10)
  {
    v11 = [v10 configurationType];
    v12 = [v7 objectForKeyedSubscript:v11];

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RMModelConfigurationSchema _loadDynamicSchemaFromDictionary:v10 into:? fileURL:?];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 configurationType];
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loaded configuration schema: %{public}@", &v16, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [RMModelConfigurationSchema _loadDynamicSchemaFromDictionary:v10 into:v8 fileURL:?];
      }

      v14 = [v10 configurationType];
      [v7 setObject:v10 forKeyedSubscript:v14];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[RMModelConfigurationSchema _loadDynamicSchemaFromDictionary:into:fileURL:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)_processManagedSettingsSchemas
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(_schemas, "count")}];
  v3 = _schemas;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__RMModelConfigurationSchema__processManagedSettingsSchemas__block_invoke;
  v6[3] = &unk_279AFE080;
  v4 = v2;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __60__RMModelConfigurationSchema__processManagedSettingsSchemas__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v5 managedSettings];

  if (v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (id)_parseAssetReferences:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [RMModelConfigurationSchemaAssetReference parseJSON:*(*(&v15 + 1) + 8 * i), v15];
          if (!v10)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [RMModelConfigurationSchema _parseAssetReferences:];
            }

            v12 = MEMORY[0x277CBEBF8];
            goto LABEL_17;
          }

          v11 = v10;
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = [v4 copy];
LABEL_17:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RMModelConfigurationSchema _parseAssetReferences:];
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_parseManagedSettings:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
LABEL_14:
    v13 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RMModelConfigurationSchema _parseManagedSettings:];
    }

    goto LABEL_14;
  }

  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [RMModelConfigurationSchemaManagedSetting parseJSON:*(*(&v16 + 1) + 8 * i) parentSchema:self, v16];
        if (!v11)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [RMModelConfigurationSchema _parseManagedSettings:];
          }

          v13 = 0;
          goto LABEL_18;
        }

        v12 = v11;
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v5 copy];
LABEL_18:

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)_loadDynamicSchemaFromFile:into:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromFile:into:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromDictionary:(void *)a1 into:fileURL:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 configurationType];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromDictionary:(void *)a1 into:(uint64_t)a2 fileURL:.cold.2(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 configurationType];
  OUTLINED_FUNCTION_0_0();
  v6 = a2;
  _os_log_debug_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read schema for '%{public}@' from JSON data file: %{public}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromDictionary:into:fileURL:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end