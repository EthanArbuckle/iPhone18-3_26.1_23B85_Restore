@interface PPSEntryKey
+ (BOOL)PPSEnabled:(id)a3;
+ (BOOL)filterEntryLoggingForEntryKey:(id)a3;
+ (BOOL)hasAppIdentiferKeys:(id)a3;
+ (BOOL)hasArrayKeys:(id)a3;
+ (BOOL)hasDMAKeys:(id)a3;
+ (BOOL)hasDynamicKeys:(id)a3;
+ (id)allAppIdentiferKeysForEntryKey:(id)a3;
+ (id)allArrayKeysForEntryKey:(id)a3;
+ (id)allBaseKeysForEntryKey:(id)a3;
+ (id)allDMAKeysForEntryKey:(id)a3;
+ (id)allDynamicKeysForEntryKey:(id)a3;
+ (id)allEntryKeys;
+ (id)allEntryKeysForStorage:(int)a3;
+ (id)allKeysForEntryKey:(id)a3;
+ (id)allMetricsForEntryKey:(id)a3;
+ (id)anyMetricsForEntryKey:(id)a3;
+ (id)arrayMetricsForEntryKey:(id)a3;
+ (id)baseMetricsForEntryKey:(id)a3;
+ (id)categoryForEntryKey:(id)a3;
+ (id)dynamicMetricsForEntryKey:(id)a3;
+ (id)entryKeyForMetric:(id)a3;
+ (id)entrySelectorForMetric:(id)a3;
+ (id)metricsForEntryKey:(id)a3;
+ (id)subsystemForEntryKey:(id)a3;
+ (int)directionalityForEntryKey:(id)a3;
+ (int)storageForEntryKey:(id)a3;
+ (int64_t)timeToLiveForEntryKey:(id)a3;
+ (void)addAuxiliaryType:(id)a3 withEntryKey:(id)a4;
+ (void)resetMetricsForEntryKey:(id)a3;
+ (void)setupEntryKeyForMetric:(id)a3;
@end

@implementation PPSEntryKey

+ (void)setupEntryKeyForMetric:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (setupEntryKeyForMetric__onceToken == -1)
  {
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = v4;
    +[PPSEntryKey setupEntryKeyForMetric:];
    v5 = v15;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  v14 = v5;
  if ([PPSCoreUtilities shouldSetupMetric:v5])
  {
    v6 = [PPSEntryKey entrySelectorForMetric:v14];
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v7 = [_entryKeyByMetadata objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = [PPSEntryKey entryKeyFromSelector:v6];
      [_entryKeyByMetadata setObject:v8 forKeyedSubscript:v6];
    }

    v9 = [_entryKeyByMetadata objectForKeyedSubscript:v6];
    v10 = [_metricsByEntryKey objectForKeyedSubscript:v9];

    if (!v10)
    {
      v11 = objc_opt_new();
      [_metricsByEntryKey setObject:v11 forKeyedSubscript:v9];
    }

    if ([v14 auxiliaryType] == 1)
    {
      v12 = [_metricsByEntryKey objectForKeyedSubscript:v9];
      v13 = [v14 name];
      [v12 setObject:v14 forKeyedSubscript:v13];
    }

    else
    {
      [a1 addAuxiliaryType:v14 withEntryKey:v9];
    }

    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

LABEL_12:

  MEMORY[0x1EEE66BB8]();
}

uint64_t __38__PPSEntryKey_setupEntryKeyForMetric___block_invoke()
{
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v0 = objc_opt_new();
  v1 = _entryKeyByMetadata;
  _entryKeyByMetadata = v0;

  v2 = objc_opt_new();
  v3 = _metricsByEntryKey;
  _metricsByEntryKey = v2;

  return objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (void)addAuxiliaryType:(id)a3 withEntryKey:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [v16 auxiliaryType];
  if (v6 == 3)
  {
    v7 = [_metricsByEntryKey objectForKeyedSubscript:v5];
    v8 = v7;
    v9 = @"__PPSArray__";
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v7 = [_metricsByEntryKey objectForKeyedSubscript:v5];
    v8 = v7;
    v9 = @"__PPSDynamic__";
  }

  v10 = [v7 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = [_metricsByEntryKey objectForKeyedSubscript:v5];
    [v12 setObject:v11 forKeyedSubscript:v9];
  }

  v13 = [_metricsByEntryKey objectForKeyedSubscript:v5];
  v14 = [v13 objectForKeyedSubscript:v9];
  v15 = [v16 name];
  [v14 setObject:v16 forKeyedSubscript:v15];

LABEL_8:
}

+ (BOOL)PPSEnabled:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  return v4 != 0;
}

+ (id)allEntryKeys
{
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v2 = [_entryKeyByMetadata allValues];
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v2;
}

+ (id)allEntryKeysForStorage:(int)a3
{
  v4 = objc_opt_new();
  v5 = [&unk_1F540B710 indexOfObject:@"storage"];
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v6 = _entryKeyByMetadata;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__PPSEntryKey_allEntryKeysForStorage___block_invoke;
  v9[3] = &unk_1E8519368;
  v11 = v5;
  v12 = a3;
  v7 = v4;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v7;
}

void __38__PPSEntryKey_allEntryKeysForStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 objectAtIndexedSubscript:*(a1 + 40)];
  v6 = [v5 intValue];
  v7 = *(a1 + 48);

  if (v6 == v7)
  {
    [*(a1 + 32) addObject:v8];
  }
}

+ (void)resetMetricsForEntryKey:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  [_metricsByEntryKey setObject:0 forKeyedSubscript:v3];
  objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (id)metricsForEntryKey:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)anyMetricsForEntryKey:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v4 = [v5 mutableCopy];

    v6 = [v4 objectForKey:@"__PPSDynamic__"];

    if (v6)
    {
      v7 = @"__PPSDynamic__";
    }

    else
    {
      v8 = [v4 objectForKey:@"__PPSArray__"];

      if (!v8)
      {
        goto LABEL_7;
      }

      v7 = @"__PPSArray__";
    }

    v9 = [v4 objectForKeyedSubscript:v7];

    v4 = v9;
  }

LABEL_7:
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)allMetricsForEntryKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v5 = [PPSEntryKey baseMetricsForEntryKey:v3];
  [v4 addEntriesFromDictionary:v5];

  v6 = [PPSEntryKey dynamicMetricsForEntryKey:v3];
  [v4 addEntriesFromDictionary:v6];

  v7 = [PPSEntryKey arrayMetricsForEntryKey:v3];
  [v4 addEntriesFromDictionary:v7];

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)baseMetricsForEntryKey:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v4 = [v5 mutableCopy];

    [v4 removeObjectForKey:@"__PPSDynamic__"];
    [v4 removeObjectForKey:@"__PPSArray__"];
  }

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)allKeysForEntryKey:(id)a3
{
  v3 = [a1 allMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allKeys];
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_29];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)allBaseKeysForEntryKey:(id)a3
{
  v3 = [a1 baseMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allKeys];
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_31];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)hasDynamicKeys:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v5 = [v4 objectForKeyedSubscript:@"__PPSDynamic__"];
    v6 = v5 != 0;

    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dynamicMetricsForEntryKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v5 = [v4 objectForKeyedSubscript:@"__PPSDynamic__"];

    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)allDynamicKeysForEntryKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v5 = [v4 objectForKeyedSubscript:@"__PPSDynamic__"];
    v6 = [v5 allKeys];

    objc_sync_exit(@"++entryKeyObjectsSync++");
    if (v6)
    {
      v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_33];
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

  return v7;
}

+ (BOOL)hasArrayKeys:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v5 = [v4 objectForKeyedSubscript:@"__PPSArray__"];
    v6 = v5 != 0;

    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)hasDMAKeys:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:v3];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__PPSEntryKey_hasDMAKeys___block_invoke;
    v7[3] = &unk_1E85193B0;
    v7[4] = &v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __26__PPSEntryKey_hasDMAKeys___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = v7;
  if (v7 && [v7 DMACompliant])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (BOOL)hasAppIdentiferKeys:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:v3];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__PPSEntryKey_hasAppIdentiferKeys___block_invoke;
    v7[3] = &unk_1E85193B0;
    v7[4] = &v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __35__PPSEntryKey_hasAppIdentiferKeys___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = v7;
  if (v7 && [v7 appIdentifier])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)arrayMetricsForEntryKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v5 = [v4 objectForKeyedSubscript:@"__PPSArray__"];

    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)allArrayKeysForEntryKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:v3];
    v5 = [v4 objectForKeyedSubscript:@"__PPSArray__"];
    v6 = [v5 allKeys];

    objc_sync_exit(@"++entryKeyObjectsSync++");
    if (v6)
    {
      v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_40];
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

  return v7;
}

+ (id)allDMAKeysForEntryKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:v3];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__2;
    v12 = __Block_byref_object_dispose__2;
    v13 = [MEMORY[0x1E695DF70] array];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__PPSEntryKey_allDMAKeysForEntryKey___block_invoke;
    v7[3] = &unk_1E85193B0;
    v7[4] = &v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v9[5] sortedArrayUsingComparator:&__block_literal_global_42];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __37__PPSEntryKey_allDMAKeysForEntryKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 DMACompliant])
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v6 name];
    [v7 addObject:v8];
  }
}

+ (id)allAppIdentiferKeysForEntryKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:v3];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__2;
    v12 = __Block_byref_object_dispose__2;
    v13 = [MEMORY[0x1E695DF70] array];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PPSEntryKey_allAppIdentiferKeysForEntryKey___block_invoke;
    v7[3] = &unk_1E85193B0;
    v7[4] = &v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v9[5] sortedArrayUsingComparator:&__block_literal_global_44];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __46__PPSEntryKey_allAppIdentiferKeysForEntryKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 appIdentifier])
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v6 name];
    [v7 addObject:v8];
  }
}

+ (id)entryKeyForMetric:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [PPSEntryKey entrySelectorForMetric:v3];
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v5 = [_entryKeyByMetadata objectForKeyedSubscript:v4];
    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)subsystemForEntryKey:(id)a3
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allValues];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [v6 subsystem];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)categoryForEntryKey:(id)a3
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allValues];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [v6 category];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int64_t)timeToLiveForEntryKey:(id)a3
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allValues];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [v6 timeToLive];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)storageForEntryKey:(id)a3
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allValues];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [v6 storage];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)directionalityForEntryKey:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [PPSEntryKey anyMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 allValues];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v14 + 1) + 8 * i) directionality] == 3)
          {
            v11 = 3;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = [v4 allValues];
    v5 = [v10 objectAtIndexedSubscript:0];

    v11 = [v5 directionality];
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)filterEntryLoggingForEntryKey:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [PPSEntryKey baseMetricsForEntryKey:a3];
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 allValues];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) filterEntryLogging])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)entrySelectorForMetric:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__PPSEntryKey_entrySelectorForMetric___block_invoke;
  v10[3] = &unk_1E85193D8;
  v11 = v3;
  v5 = v4;
  v12 = v5;
  v6 = v3;
  [&unk_1F540B710 enumerateObjectsUsingBlock:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

void __38__PPSEntryKey_entrySelectorForMetric___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  [*(a1 + 40) addObject:v3];
}

@end