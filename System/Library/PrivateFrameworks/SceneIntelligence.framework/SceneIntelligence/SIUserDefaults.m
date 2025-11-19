@interface SIUserDefaults
+ (BOOL)BOOLForKey:(id)a3;
+ (BOOL)shouldUseCache;
+ (double)doubleForKey:(id)a3;
+ (float)floatForKey:(id)a3;
+ (id)_numberForObject:(id)a3;
+ (id)cachedObjectForKey:(id)a3;
+ (id)defaultValues;
+ (id)listForKey:(id)a3;
+ (id)numberForKey:(id)a3;
+ (id)objectForKey:(id)a3;
+ (id)objectForKey:(id)a3 useCache:(BOOL)a4;
+ (id)objectForKeySlow:(id)a3;
+ (id)resolutionDictionaryForKey:(id)a3;
+ (id)stringForKey:(id)a3;
+ (id)userDefaultsCache;
+ (int64_t)integerForKey:(id)a3;
+ (void)cacheObject:(id)a3 forKey:(id)a4;
+ (void)clearUserDefaultsCache;
+ (void)removeAllKeys;
+ (void)removeCachedObjectForKey:(id)a3;
+ (void)removeObjectForKey:(id)a3;
+ (void)setObject:(id)a3 forKey:(id)a4;
+ (void)synchronize;
@end

@implementation SIUserDefaults

+ (id)defaultValues
{
  if (defaultValues_onceToken != -1)
  {
    +[SIUserDefaults defaultValues];
  }

  v3 = defaultValues_defaultValues;

  return v3;
}

void __31__SIUserDefaults_defaultValues__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.sceneintelligence.useCacheForUserDefaults";
  v3[1] = @"com.apple.sceneintelligence.test.default";
  v4[0] = MEMORY[0x277CBEC38];
  v4[1] = @"test";
  v3[2] = @"com.apple.sceneintelligence.polaris.mcam.metadata.size";
  v4[2] = &unk_282F34DD8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = defaultValues_defaultValues;
  defaultValues_defaultValues = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)userDefaultsCache
{
  if (userDefaultsCache_onceToken != -1)
  {
    +[SIUserDefaults userDefaultsCache];
  }

  v3 = userDefaultsCache_defaultsCache;

  return v3;
}

uint64_t __35__SIUserDefaults_userDefaultsCache__block_invoke()
{
  userDefaultsCache_defaultsCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)shouldUseCache
{
  if (shouldUseCache_onceToken != -1)
  {
    +[SIUserDefaults shouldUseCache];
  }

  v3 = shouldUseCache_shouldUseCache;

  return [v3 BOOLValue];
}

uint64_t __32__SIUserDefaults_shouldUseCache__block_invoke()
{
  shouldUseCache_shouldUseCache = [SIUserDefaults objectForKeySlow:@"com.apple.sceneintelligence.useCacheForUserDefaults"];

  return MEMORY[0x2821F96F8]();
}

+ (id)cachedObjectForKey:(id)a3
{
  v3 = a3;
  v4 = +[SIUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  v5 = [v4 objectForKeyedSubscript:v3];

  os_unfair_lock_unlock(&gDefaultsCacheLock);

  return v5;
}

+ (void)removeCachedObjectForKey:(id)a3
{
  v3 = a3;
  v4 = +[SIUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  [v4 removeObjectForKey:v3];

  os_unfair_lock_unlock(&gDefaultsCacheLock);
}

+ (void)cacheObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = +[SIUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:v7 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&gDefaultsCacheLock);
}

+ (void)clearUserDefaultsCache
{
  v2 = +[SIUserDefaults userDefaultsCache];
  os_unfair_lock_lock(&gDefaultsCacheLock);
  [v2 removeAllObjects];
  os_unfair_lock_unlock(&gDefaultsCacheLock);
}

+ (void)removeAllKeys
{
  v15 = *MEMORY[0x277D85DE8];
  +[SIUserDefaults clearUserDefaultsCache];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [MEMORY[0x277CBEBD0] appleGlobalDomainSIKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CBEBD0] appleGlobalDomain];
        [v8 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)removeObjectForKey:(id)a3
{
  v3 = a3;
  [SIUserDefaults removeCachedObjectForKey:v3];
  v4 = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  [v4 removeObjectForKey:v3];
}

+ (id)objectForKeySlow:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [a1 defaultValues];
    v6 = [v7 objectForKeyedSubscript:v4];
  }

  return v6;
}

+ (id)objectForKey:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() shouldUseCache] && (+[SIUserDefaults cachedObjectForKey:](SIUserDefaults, "cachedObjectForKey:", v3), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBEB68] null];

    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v5 = v5;
      v7 = v5;
    }
  }

  else
  {
    v7 = [SIUserDefaults objectForKeySlow:v3];
    [SIUserDefaults cacheObject:v7 forKey:v3];
    v5 = 0;
  }

  return v7;
}

+ (id)objectForKey:(id)a3 useCache:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_class();
  if (v4)
  {
    [v6 objectForKey:v5];
  }

  else
  {
    [v6 objectForKeySlow:v5];
  }
  v7 = ;

  return v7;
}

+ (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  [SIUserDefaults removeCachedObjectForKey:v6];
  [a1 cacheObject:v7 forKey:v6];
  v8 = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  [v8 setObject:v7 forKey:v6];
}

+ (BOOL)BOOLForKey:(id)a3
{
  v3 = [SIUserDefaults objectForKey:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringForKey:(id)a3
{
  v3 = [SIUserDefaults objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 stringValue];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)numberForKey:(id)a3
{
  v3 = [SIUserDefaults objectForKey:a3];
  v4 = [SIUserDefaults _numberForObject:v3];

  return v4;
}

+ (id)_numberForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277CCAB50];
      v6 = v3;
      v7 = [v5 decimalDigitCharacterSet];
      [v7 addCharactersInString:@"-."];
      v8 = [v7 invertedSet];
      v9 = [v6 componentsSeparatedByCharactersInSet:v8];

      v10 = [v9 firstObject];

      v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v11 setDecimalSeparator:@"."];
      [v11 setNumberStyle:1];
      v4 = [v11 numberFromString:v10];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (int64_t)integerForKey:(id)a3
{
  v3 = [SIUserDefaults numberForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

+ (float)floatForKey:(id)a3
{
  v3 = [SIUserDefaults numberForKey:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

+ (double)doubleForKey:(id)a3
{
  v3 = [SIUserDefaults numberForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

+ (id)listForKey:(id)a3
{
  v3 = [SIUserDefaults objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)resolutionDictionaryForKey:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [SIUserDefaults objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 componentsSeparatedByString:@"x"];
    if ([v4 count] != 2)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v19[0] = @"width";
    v5 = MEMORY[0x277CCABB0];
    v6 = [v4 objectAtIndexedSubscript:0];
    [v6 floatValue];
    v7 = [v5 numberWithFloat:?];
    v19[1] = @"height";
    v20[0] = v7;
    v8 = MEMORY[0x277CCABB0];
    v9 = [v4 objectAtIndexedSubscript:1];
    [v9 floatValue];
    v10 = [v8 numberWithFloat:?];
    v20[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

LABEL_6:
LABEL_8:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17[0] = @"width";
    v12 = MEMORY[0x277CCABB0];
    v13 = v3;
    v4 = [v13 objectForKeyedSubscript:@"width"];
    [v4 floatValue];
    v6 = [v12 numberWithFloat:?];
    v17[1] = @"height";
    v18[0] = v6;
    v14 = MEMORY[0x277CCABB0];
    v7 = [v13 objectForKeyedSubscript:?];

    [v7 floatValue];
    v9 = [v14 numberWithFloat:?];
    v18[1] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)synchronize
{
  v2 = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  [v2 synchronize];
}

@end