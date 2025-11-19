@interface _LTDConfigurationService
+ (id)_queue;
+ (id)aneConfigurationWithError:(id *)a3;
+ (id)asrConfigurationWithError:(id *)a3;
+ (id)assetConfigurationWithError:(id *)a3;
+ (id)cache;
+ (id)configurationForType:(int64_t)a3 error:(id *)a4;
+ (id)deserializedPlistContentsOf:(id)a3 error:(id *)a4;
+ (id)fileNameForType:(int64_t)a3;
+ (id)offlineConfigurationWithError:(id *)a3;
+ (id)overlay:(id)a3 with:(id)a4;
+ (id)preferenceOverridesFor:(int64_t)a3;
+ (id)siriConfigurationWithError:(id *)a3;
+ (id)supportedLocalePairsForTask:(int64_t)a3 error:(id *)a4;
+ (id)textStreamingConfigurationWithError:(id *)a3;
+ (id)urlForType:(int64_t)a3 source:(int64_t)a4;
+ (void)aneConfigurationWithCompletion:(id)a3;
+ (void)asrConfigurationWithCompletion:(id)a3;
+ (void)assetConfigurationWithCompletion:(id)a3;
+ (void)configurationForType:(int64_t)a3 completion:(id)a4;
+ (void)flushCache;
+ (void)offlineConfigurationWithCompletion:(id)a3;
+ (void)siriConfigurationWithCompletion:(id)a3;
+ (void)supportedIdentifiersForTask:(int64_t)a3 completion:(id)a4;
+ (void)supportedLocalePairsForTask:(int64_t)a3 completion:(id)a4;
+ (void)textStreamingConfigurationWithCompletion:(id)a3;
@end

@implementation _LTDConfigurationService

+ (id)fileNameForType:(int64_t)a3
{
  if (a3 > 9)
  {
    return &stru_284834138;
  }

  else
  {
    return off_2789B5EC0[a3];
  }
}

+ (id)cache
{
  if (cache_onceToken != -1)
  {
    +[_LTDConfigurationService cache];
  }

  v3 = cache_cache;

  return v3;
}

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[_LTDConfigurationService _queue];
  }

  v3 = _queue__queue;

  return v3;
}

+ (void)configurationForType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___LTDConfigurationService_configurationForType_completion___block_invoke;
  block[3] = &unk_2789B5E50;
  v11 = a1;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (id)configurationForType:(int64_t)a3 error:(id *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = [a1 cache];
  v8 = [v7 objectForType:a3 error:0];
  v9 = objc_opt_class();
  v10 = v8;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = [v10 lt_ensureTypesForKeys:v9 values:0], v12 = v10, (v11 & 1) == 0))
  {

    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
    v14 = v13;
    goto LABEL_61;
  }

  v15 = 0;
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v18 = a1;
      v19 = 7;
LABEL_18:
      v16 = [v18 urlForType:v19 source:0];
      v15 = 0;
      v17 = 0;
      goto LABEL_23;
    }

    if (a3 == 9)
    {
      v20 = _LTOSLogAssets();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [_LTDConfigurationService configurationForType:v20 error:?];
      }

      v16 = [a1 cache];
      [v16 removeObjectForType:9];
      v13 = 0;
      v14 = 0;
      goto LABEL_60;
    }

    v17 = 0;
    v16 = 0;
    if (a3 == 8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((a3 - 2) < 5)
    {
LABEL_9:
      v16 = [a1 urlForType:a3 source:0];
      v17 = [a1 urlForType:a3 source:1];
      v15 = 0;
      goto LABEL_23;
    }

    if (a3)
    {
      v17 = 0;
      v16 = 0;
      if (a3 != 1)
      {
        goto LABEL_23;
      }

      v18 = a1;
      v19 = 1;
      goto LABEL_18;
    }

    v16 = [a1 urlForType:1 source:0];
    v15 = [a1 urlForType:0 source:0];
    v17 = [a1 urlForType:0 source:1];
  }

LABEL_23:
  v21 = [a1 fileNameForType:a3];
  if (!v16)
  {
    v13 = 0;
    goto LABEL_33;
  }

  v22 = _LTOSLogAssets();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDConfigurationService configurationForType:error:];
  }

  v55 = 0;
  v13 = [a1 deserializedPlistContentsOf:v16 error:&v55];
  v23 = v55;
  if (!v23)
  {
LABEL_33:
    if (!v15)
    {
      goto LABEL_42;
    }

    v49 = v17;
    v28 = _LTOSLogAssets();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      +[_LTDConfigurationService configurationForType:error:];
    }

    v29 = v21;
    v54 = 0;
    v30 = [a1 deserializedPlistContentsOf:v15 error:{&v54, v49}];
    v31 = v54;
    if (!v31)
    {
      v34 = [a1 overlay:v13 with:v30];

      v13 = v34;
      goto LABEL_41;
    }

    v32 = _LTOSLogAssets();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[_LTDConfigurationService configurationForType:error:];
      if (!a4)
      {
        goto LABEL_41;
      }
    }

    else if (!a4)
    {
LABEL_41:

      v21 = v29;
      v17 = v50;
LABEL_42:
      if (!v17)
      {
LABEL_56:
        v24 = [a1 preferenceOverridesFor:a3];
        v44 = [a1 overlay:v13 with:v24];

        v45 = _LTOSLogAssets();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          +[_LTDConfigurationService configurationForType:error:];
        }

        v46 = [a1 cache];
        [v46 setObject:v44 forType:a3];

        v13 = v44;
        v14 = v13;
        goto LABEL_59;
      }

      v35 = _LTOSLogAssets();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        +[_LTDConfigurationService configurationForType:error:];
      }

      v53 = 0;
      v36 = [a1 deserializedPlistContentsOf:v17 error:&v53];
      v37 = v53;
      if (!v37)
      {
        v40 = [a1 overlay:v13 with:v36];

        v13 = v40;
LABEL_55:

        goto LABEL_56;
      }

      v51 = v21;
      v38 = _LTOSLogAssets();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = v37;
        _os_log_impl(&dword_232E53000, v38, OS_LOG_TYPE_INFO, "Failed to retrieve managed configuration %@", buf, 0xCu);
      }

      v39 = [v37 domain];
      if (v39 == *MEMORY[0x277CCA050])
      {
        v41 = [v37 code];

        if (v41 != 260)
        {
          goto LABEL_54;
        }

        v42 = _LTOSLogAssets();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          goto LABEL_54;
        }

        v43 = v42;
        v39 = [v17 path];
        *buf = 138543362;
        v57 = v39;
        _os_log_impl(&dword_232E53000, v43, OS_LOG_TYPE_INFO, "File not installed at: %{public}@", buf, 0xCu);
      }

LABEL_54:
      v21 = v52;
      goto LABEL_55;
    }

    v33 = v31;
    *a4 = v31;
    goto LABEL_41;
  }

  v24 = v23;
  v25 = _LTOSLogAssets();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    +[_LTDConfigurationService configurationForType:error:];
  }

  if (a4)
  {
    v26 = v24;
    *a4 = v24;
  }

  v27 = [a1 cache];
  [v27 removeObjectForType:a3];

  v14 = 0;
LABEL_59:

LABEL_60:
LABEL_61:

  v47 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)urlForType:(int64_t)a3 source:(int64_t)a4
{
  v5 = [a1 fileNameForType:a3];
  if (a4 == 2)
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_LTDConfigurationService urlForType:v12 source:?];
    }

    goto LABEL_11;
  }

  if (a4 == 1)
  {
    v9 = +[_LTDUAFAssetService _configBundleURL];
    v6 = v9;
    if (v9)
    {
      v10 = [v9 URLByAppendingPathComponent:v5];
      v7 = [v10 URLByAppendingPathExtension:@"plist"];

      v11 = _LTOSLogAssets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        +[_LTDConfigurationService urlForType:source:];
      }
    }

    else
    {
      v13 = _LTOSLogAssets();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_LTDConfigurationService urlForType:v13 source:?];
      }

      v7 = 0;
    }

    goto LABEL_15;
  }

  if (a4)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_16;
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:v5 withExtension:@"plist"];
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDConfigurationService urlForType:source:];
  }

LABEL_15:

LABEL_16:

  return v7;
}

+ (id)preferenceOverridesFor:(int64_t)a3
{
  v3 = [a1 fileNameForType:a3];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  v6 = objc_opt_class();
  v7 = v5;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v8 = [v7 lt_ensureTypesForKeys:v6 values:0], v9 = v7, (v8 & 1) == 0))
  {

    v9 = 0;
  }

  return v9;
}

+ (id)overlay:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [v5 mutableCopy];
    [v7 addEntriesFromDictionary:v6];
    v8 = [v7 copy];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

+ (id)deserializedPlistContentsOf:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid configuration URL: %@", 0];
    *a4 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:12 description:v8 userInfo:0];
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_LTDConfigurationService deserializedPlistContentsOf:a4 error:?];
    }

    goto LABEL_9;
  }

  v6 = _LTOSLogAssets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDConfigurationService deserializedPlistContentsOf:error:];
  }

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:a4];
  v8 = v7;
  if (*a4)
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTDConfigurationService deserializedPlistContentsOf:a4 error:?];
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (![v7 length])
  {
    *a4 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:10 description:@"Failed to read configuration file" userInfo:MEMORY[0x277CBEC10]];
    v16 = _LTOSLogAssets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_LTDConfigurationService deserializedPlistContentsOf:a4 error:?];
    }

    goto LABEL_9;
  }

  v13 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:a4];
  v14 = v13;
  if (*a4)
  {
    v15 = _LTOSLogAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_LTDConfigurationService deserializedPlistContentsOf:a4 error:?];
    }

    v11 = 0;
  }

  else
  {
    v11 = v13;
  }

LABEL_10:

  return v11;
}

+ (void)flushCache
{
  v2 = [a1 cache];
  [v2 removeAllObjects];
}

+ (id)asrConfigurationWithError:(id *)a3
{
  v3 = [a1 configurationForType:8 error:0];
  v4 = [[_LTDASRConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)asrConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTDConfigurationService_asrConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)offlineConfigurationWithError:(id *)a3
{
  v3 = [a1 configurationForType:2 error:a3];
  v4 = [[_LTDOfflineConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)offlineConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63___LTDConfigurationService_offlineConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)siriConfigurationWithError:(id *)a3
{
  v3 = [a1 configurationForType:5 error:a3];
  v4 = [[_LTDSiriConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)siriConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___LTDConfigurationService_siriConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)textStreamingConfigurationWithError:(id *)a3
{
  v3 = [a1 configurationForType:0 error:a3];
  v4 = [[_LTDTextStreamingConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)textStreamingConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69___LTDConfigurationService_textStreamingConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)assetConfigurationWithError:(id *)a3
{
  v3 = [a1 configurationForType:1 error:a3];
  v4 = [[_LTDAssetConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)assetConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61___LTDConfigurationService_assetConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)aneConfigurationWithError:(id *)a3
{
  v3 = [_LTDConfigurationService configurationForType:7 error:a3];
  v4 = [[_LTDANEConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)aneConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTDConfigurationService_aneConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)supportedLocalePairsForTask:(int64_t)a3 error:(id *)a4
{
  v5 = 4;
  v6 = a3 - 9;
  v7 = 3;
  if (a3 == 4)
  {
    v7 = 5;
  }

  if (a3 != 2)
  {
    v5 = v7;
  }

  v8 = v6 < 2;
  if (v6 >= 2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 8;
  }

  v18 = 0;
  v10 = [_LTDConfigurationService configurationForType:v9 error:&v18];
  v11 = v10;
  if (v8)
  {
    v12 = [[_LTDASRConfigurationModel alloc] initWithDictionary:v10];
    v13 = [(_LTDASRConfigurationModel *)v12 supportedLocaleIdentifiersForTaskHint:a3];
    v14 = [MEMORY[0x277CE1B38] pairNamesForLocaleIdentifiers:v13];
  }

  else
  {
    v12 = [v10 objectForKeyedSubscript:@"LanguagePairs"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([(_LTDASRConfigurationModel *)v12 lt_ensureElementType:objc_opt_class()])
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {

      v12 = 0;
      v15 = 0;
    }

    v14 = v15;
  }

  if (v14)
  {
    v16 = [(_LTDASRConfigurationModel *)v14 _ltCompactMap:&__block_literal_global_344_0];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

+ (void)supportedLocalePairsForTask:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTDConfigurationService_supportedLocalePairsForTask_completion___block_invoke;
  block[3] = &unk_2789B5E50;
  v11 = a1;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)supportedIdentifiersForTask:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTDConfigurationService_supportedIdentifiersForTask_completion___block_invoke;
  block[3] = &unk_2789B5E50;
  v11 = a3;
  v12 = a1;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)configurationForType:(os_log_t)log error:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 9;
  _os_log_fault_impl(&dword_232E53000, log, OS_LOG_TYPE_FAULT, "Invalid configuration base type %zd", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForType:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Retrieve bundled config for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForType:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to retrieve bundled configuration %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForType:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Retrieve overlay config for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForType:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to retrieve overlay configuration %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForType:error:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Retrieve managed config for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)configurationForType:error:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Caching config for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)urlForType:source:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_0(&dword_232E53000, v0, v1, "URL for type: %{public}@ source: config result: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)urlForType:source:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_0(&dword_232E53000, v0, v1, "URL for type: %{public}@ source: bundled result: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)deserializedPlistContentsOf:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Reading configuration plist at URL: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)deserializedPlistContentsOf:(uint64_t *)a1 error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Failed to read plist %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deserializedPlistContentsOf:(uint64_t *)a1 error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Failed to deserialize plist %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deserializedPlistContentsOf:(uint64_t *)a1 error:.cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v1, v2, "Empty plist %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deserializedPlistContentsOf:(uint64_t *)a1 error:.cold.5(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_232E53000, v1, OS_LOG_TYPE_FAULT, "Failed to get asset URL for installed MobileAsset; will attempt to fall back to bundled asset %@", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end