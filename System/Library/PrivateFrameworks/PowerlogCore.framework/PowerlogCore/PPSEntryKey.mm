@interface PPSEntryKey
+ (BOOL)PPSEnabled:(id)enabled;
+ (BOOL)filterEntryLoggingForEntryKey:(id)key;
+ (BOOL)hasAppIdentiferKeys:(id)keys;
+ (BOOL)hasArrayKeys:(id)keys;
+ (BOOL)hasDMAKeys:(id)keys;
+ (BOOL)hasDynamicKeys:(id)keys;
+ (id)allAppIdentiferKeysForEntryKey:(id)key;
+ (id)allArrayKeysForEntryKey:(id)key;
+ (id)allBaseKeysForEntryKey:(id)key;
+ (id)allDMAKeysForEntryKey:(id)key;
+ (id)allDynamicKeysForEntryKey:(id)key;
+ (id)allEntryKeys;
+ (id)allEntryKeysForStorage:(int)storage;
+ (id)allKeysForEntryKey:(id)key;
+ (id)allMetricsForEntryKey:(id)key;
+ (id)anyMetricsForEntryKey:(id)key;
+ (id)arrayMetricsForEntryKey:(id)key;
+ (id)baseMetricsForEntryKey:(id)key;
+ (id)categoryForEntryKey:(id)key;
+ (id)dynamicMetricsForEntryKey:(id)key;
+ (id)entryKeyForMetric:(id)metric;
+ (id)entrySelectorForMetric:(id)metric;
+ (id)metricsForEntryKey:(id)key;
+ (id)subsystemForEntryKey:(id)key;
+ (int)directionalityForEntryKey:(id)key;
+ (int)storageForEntryKey:(id)key;
+ (int64_t)timeToLiveForEntryKey:(id)key;
+ (void)addAuxiliaryType:(id)type withEntryKey:(id)key;
+ (void)resetMetricsForEntryKey:(id)key;
+ (void)setupEntryKeyForMetric:(id)metric;
@end

@implementation PPSEntryKey

+ (void)setupEntryKeyForMetric:(id)metric
{
  metricCopy = metric;
  v5 = metricCopy;
  if (setupEntryKeyForMetric__onceToken == -1)
  {
    if (!metricCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = metricCopy;
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
      name = [v14 name];
      [v12 setObject:v14 forKeyedSubscript:name];
    }

    else
    {
      [self addAuxiliaryType:v14 withEntryKey:v9];
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

+ (void)addAuxiliaryType:(id)type withEntryKey:(id)key
{
  typeCopy = type;
  keyCopy = key;
  auxiliaryType = [typeCopy auxiliaryType];
  if (auxiliaryType == 3)
  {
    v7 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    v8 = v7;
    v9 = @"__PPSArray__";
  }

  else
  {
    if (auxiliaryType != 2)
    {
      goto LABEL_8;
    }

    v7 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    v8 = v7;
    v9 = @"__PPSDynamic__";
  }

  v10 = [v7 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    [v12 setObject:v11 forKeyedSubscript:v9];
  }

  v13 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
  v14 = [v13 objectForKeyedSubscript:v9];
  name = [typeCopy name];
  [v14 setObject:typeCopy forKeyedSubscript:name];

LABEL_8:
}

+ (BOOL)PPSEnabled:(id)enabled
{
  enabledCopy = enabled;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:enabledCopy];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  return v4 != 0;
}

+ (id)allEntryKeys
{
  objc_sync_enter(@"++entryKeyObjectsSync++");
  allValues = [_entryKeyByMetadata allValues];
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return allValues;
}

+ (id)allEntryKeysForStorage:(int)storage
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
  storageCopy = storage;
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

+ (void)resetMetricsForEntryKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  [_metricsByEntryKey setObject:0 forKeyedSubscript:keyCopy];
  objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (id)metricsForEntryKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)anyMetricsForEntryKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];

  if (v4)
  {
    v5 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
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

+ (id)allMetricsForEntryKey:(id)key
{
  keyCopy = key;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v5 = [PPSEntryKey baseMetricsForEntryKey:keyCopy];
  [dictionary addEntriesFromDictionary:v5];

  v6 = [PPSEntryKey dynamicMetricsForEntryKey:keyCopy];
  [dictionary addEntriesFromDictionary:v6];

  v7 = [PPSEntryKey arrayMetricsForEntryKey:keyCopy];
  [dictionary addEntriesFromDictionary:v7];

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return dictionary;
}

+ (id)baseMetricsForEntryKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];

  if (v4)
  {
    v5 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    v4 = [v5 mutableCopy];

    [v4 removeObjectForKey:@"__PPSDynamic__"];
    [v4 removeObjectForKey:@"__PPSArray__"];
  }

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)allKeysForEntryKey:(id)key
{
  v3 = [self allMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    allKeys = [v3 allKeys];
    v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_29];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)allBaseKeysForEntryKey:(id)key
{
  v3 = [self baseMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    allKeys = [v3 allKeys];
    v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_31];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)hasDynamicKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:keysCopy];
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

+ (id)dynamicMetricsForEntryKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    v5 = [v4 objectForKeyedSubscript:@"__PPSDynamic__"];

    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)allDynamicKeysForEntryKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    v5 = [v4 objectForKeyedSubscript:@"__PPSDynamic__"];
    allKeys = [v5 allKeys];

    objc_sync_exit(@"++entryKeyObjectsSync++");
    if (allKeys)
    {
      v7 = [allKeys sortedArrayUsingComparator:&__block_literal_global_33];
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

+ (BOOL)hasArrayKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:keysCopy];
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

+ (BOOL)hasDMAKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:keysCopy];
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

+ (BOOL)hasAppIdentiferKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:keysCopy];
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

+ (id)arrayMetricsForEntryKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    v5 = [v4 objectForKeyedSubscript:@"__PPSArray__"];

    objc_sync_exit(@"++entryKeyObjectsSync++");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)allArrayKeysForEntryKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    objc_sync_enter(@"++entryKeyObjectsSync++");
    v4 = [_metricsByEntryKey objectForKeyedSubscript:keyCopy];
    v5 = [v4 objectForKeyedSubscript:@"__PPSArray__"];
    allKeys = [v5 allKeys];

    objc_sync_exit(@"++entryKeyObjectsSync++");
    if (allKeys)
    {
      v7 = [allKeys sortedArrayUsingComparator:&__block_literal_global_40];
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

+ (id)allDMAKeysForEntryKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:keyCopy];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__2;
    v12 = __Block_byref_object_dispose__2;
    array = [MEMORY[0x1E695DF70] array];
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

+ (id)allAppIdentiferKeysForEntryKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v4 = [PPSEntryKey allMetricsForEntryKey:keyCopy];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__2;
    v12 = __Block_byref_object_dispose__2;
    array = [MEMORY[0x1E695DF70] array];
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

+ (id)entryKeyForMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    v4 = [PPSEntryKey entrySelectorForMetric:metricCopy];
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

+ (id)subsystemForEntryKey:(id)key
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    allValues = [v3 allValues];
    v6 = [allValues objectAtIndexedSubscript:0];

    subsystem = [v6 subsystem];
  }

  else
  {
    subsystem = 0;
  }

  return subsystem;
}

+ (id)categoryForEntryKey:(id)key
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    allValues = [v3 allValues];
    v6 = [allValues objectAtIndexedSubscript:0];

    category = [v6 category];
  }

  else
  {
    category = 0;
  }

  return category;
}

+ (int64_t)timeToLiveForEntryKey:(id)key
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    allValues = [v3 allValues];
    v6 = [allValues objectAtIndexedSubscript:0];

    timeToLive = [v6 timeToLive];
  }

  else
  {
    timeToLive = 0;
  }

  return timeToLive;
}

+ (int)storageForEntryKey:(id)key
{
  v3 = [PPSEntryKey anyMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    allValues = [v3 allValues];
    v6 = [allValues objectAtIndexedSubscript:0];

    storage = [v6 storage];
  }

  else
  {
    storage = 0;
  }

  return storage;
}

+ (int)directionalityForEntryKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [PPSEntryKey anyMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allValues = [v3 allValues];
    v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v14 + 1) + 8 * i) directionality] == 3)
          {
            directionality = 3;
            goto LABEL_12;
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    allValues2 = [v4 allValues];
    allValues = [allValues2 objectAtIndexedSubscript:0];

    directionality = [allValues directionality];
LABEL_12:
  }

  else
  {
    directionality = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return directionality;
}

+ (BOOL)filterEntryLoggingForEntryKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [PPSEntryKey baseMetricsForEntryKey:key];
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [v3 allValues];
    v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v11 + 1) + 8 * i) filterEntryLogging])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (id)entrySelectorForMetric:(id)metric
{
  metricCopy = metric;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__PPSEntryKey_entrySelectorForMetric___block_invoke;
  v10[3] = &unk_1E85193D8;
  v11 = metricCopy;
  v5 = v4;
  v12 = v5;
  v6 = metricCopy;
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