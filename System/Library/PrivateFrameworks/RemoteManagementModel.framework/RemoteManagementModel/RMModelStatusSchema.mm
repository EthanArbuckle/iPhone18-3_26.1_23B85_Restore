@interface RMModelStatusSchema
+ (id)_processManagedSettingsSchemas;
+ (void)_loadDynamicSchemaFromDictionary:(id)a3 into:(id)a4 fileURL:(id)a5;
+ (void)_loadDynamicSchemaFromDirectory:(id)a3 into:(id)a4;
+ (void)_loadDynamicSchemaFromFile:(id)a3 into:(id)a4;
+ (void)loadDynamicSchemaFromDirectory:(id)a3;
+ (void)loadDynamicSchemaFromFiles:(id)a3;
- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4;
- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5;
- (id)initFromDictionary:(id)a3;
@end

@implementation RMModelStatusSchema

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RMModelStatusSchema;
  v5 = [(RMModelStatusSchema *)&v17 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 intValue] != 1)
  {
LABEL_11:

    v15 = 0;
    goto LABEL_12;
  }

  objc_storeStrong(&v5->_version, v6);
  v7 = [v4 objectForKeyedSubscript:@"status-type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  objc_storeStrong(&v5->_statusType, v7);
  v8 = [v4 objectForKeyedSubscript:@"managed-setting"];
  v9 = [RMModelStatusSchemaManagedSetting parseJSON:v8];
  managedSetting = v5->_managedSetting;
  v5->_managedSetting = v9;

  v11 = [v4 objectForKeyedSubscript:@"array-value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5->_isArrayValue = [v11 BOOLValue], objc_msgSend(v4, "objectForKeyedSubscript:", @"supported-os"), v12 = objc_claimAutoreleasedReturnValue(), +[RMModelSchemaParser loadSupportedOSFromDictionary:](RMModelSchemaParser, "loadSupportedOSFromDictionary:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {

    goto LABEL_10;
  }

  supportedOS = v5->_supportedOS;
  v5->_supportedOS = v13;

LABEL_8:
  v15 = v5;
LABEL_12:

  return v15;
}

- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4
{
  v6 = [(RMModelStatusSchema *)self supportedOS];
  LOBYTE(a4) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 supportedOS:v6];

  return a4;
}

- (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5
{
  v8 = [(RMModelStatusSchema *)self supportedOS];
  LOBYTE(a5) = [RMModelPayloadUtilities isSupportedForPlatform:a3 scope:a4 enrollmentType:a5 supportedOS:v8];

  return a5;
}

+ (void)loadDynamicSchemaFromDirectory:(id)a3
{
  v4 = a3;
  v9 = objc_opt_new();
  [a1 _loadDynamicSchemaFromDirectory:v4 into:v9];

  v5 = [v9 copy];
  v6 = _schemas_0;
  _schemas_0 = v5;

  v7 = [a1 _processManagedSettingsSchemas];
  v8 = _managedSettingsSchemas_0;
  _managedSettingsSchemas_0 = v7;
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
  v12 = _schemas_0;
  _schemas_0 = v11;

  v13 = [a1 _processManagedSettingsSchemas];
  v14 = _managedSettingsSchemas_0;
  _managedSettingsSchemas_0 = v13;

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
      +[RMModelStatusSchema _loadDynamicSchemaFromFile:into:];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelStatusSchema _loadDynamicSchemaFromFile:into:];
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
  v10 = [[RMModelStatusSchema alloc] initFromDictionary:v9];

  if (v10)
  {
    v11 = [v10 statusType];
    v12 = [v7 objectForKeyedSubscript:v11];

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RMModelStatusSchema _loadDynamicSchemaFromDictionary:v10 into:? fileURL:?];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 statusType];
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loaded status item schema: %{public}@", &v16, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [RMModelStatusSchema _loadDynamicSchemaFromDictionary:v10 into:v8 fileURL:?];
      }

      v14 = [v10 statusType];
      [v7 setObject:v10 forKeyedSubscript:v14];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RMModelStatusSchema _loadDynamicSchemaFromDictionary:v8 into:? fileURL:?];
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)_processManagedSettingsSchemas
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(_schemas_0, "count")}];
  v3 = _schemas_0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__RMModelStatusSchema__processManagedSettingsSchemas__block_invoke;
  v6[3] = &unk_279AFE650;
  v4 = v2;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __53__RMModelStatusSchema__processManagedSettingsSchemas__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v5 managedSetting];

  if (v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

+ (void)_loadDynamicSchemaFromFile:into:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_261DAE000, MEMORY[0x277D86220], v0, "Could not parse JSON data file: %{public}@ %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromFile:into:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_261DAE000, MEMORY[0x277D86220], v0, "Could not read JSON data file: %{public}@ %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromDictionary:(void *)a1 into:fileURL:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 statusType];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_261DAE000, MEMORY[0x277D86220], v2, "Ignoring duplicate schema for '%{public}@' from JSON data file: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromDictionary:(void *)a1 into:(uint64_t)a2 fileURL:.cold.2(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 statusType];
  OUTLINED_FUNCTION_0_0();
  v6 = a2;
  _os_log_debug_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read schema for '%{public}@' from JSON data file: %{public}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_loadDynamicSchemaFromDictionary:(uint64_t)a1 into:fileURL:.cold.3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not read schema from JSON data file: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end