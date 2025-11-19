@interface PGRemoteConfiguration
- (BOOL)_isValidFilePath:(id)a3;
- (PGRemoteConfiguration)init;
- (PGRemoteConfiguration)initWithConfigurationSources:(id)a3;
- (double)doubleValueForKey:(id)a3 withFallbackValue:(double)a4;
- (id)_configValueForKey:(id)a3 withFallbackValue:(id)a4;
- (id)arrayValueForKey:(id)a3 withFallbackValue:(id)a4;
- (id)dictionaryValueForKey:(id)a3 withFallbackValue:(id)a4;
- (id)fileValueForKey:(id)a3 withFallbackValue:(id)a4;
- (id)onDiskConfigurationPathForResourceFileName:(id)a3;
- (id)stringValueForKey:(id)a3 withFallbackValue:(id)a4;
- (int64_t)longValueForKey:(id)a3 withFallbackValue:(int64_t)a4;
- (void)_cacheFallbackValueForKey:(id)a3 withValue:(id)a4;
@end

@implementation PGRemoteConfiguration

- (void)_cacheFallbackValueForKey:(id)a3 withValue:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_remoteConfigurationCache objectForKey:v6];
  if (([v8 isEqual:v7] & 1) == 0)
  {
    if (v8)
    {
      v9 = +[PGLogging sharedLogging];
      v10 = [v9 loggingConnection];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412802;
        v13 = v6;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = v7;
        _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGRemoteConfiguration] fallback value for Key: %@ is given multiple unequal values: %@, %@", &v12, 0x20u);
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_remoteConfigurationCache setObject:v7 forKeyedSubscript:v6];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_configValueForKey:(id)a3 withFallbackValue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(PGRemoteConfiguration *)self _cacheFallbackValueForKey:v6 withValue:a4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_configurationSources;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) objectForKey:{v6, v16}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fileValueForKey:(id)a3 withFallbackValue:(id)a4
{
  v6 = a4;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:a3 withFallbackValue:v6];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:0];
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  return v11;
}

- (BOOL)_isValidFilePath:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6;
}

- (id)dictionaryValueForKey:(id)a3 withFallbackValue:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:a3 withFallbackValue:v6];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(PGRemoteConfiguration *)self _isValidFilePath:v7])
  {
LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    v8 = v11;
    goto LABEL_11;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v7];
  if (!v8)
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "[RemoteConfiguration] failed to load dictionary from Trial at filepath %@", &v14, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)arrayValueForKey:(id)a3 withFallbackValue:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:a3 withFallbackValue:v6];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(PGRemoteConfiguration *)self _isValidFilePath:v7])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfFile:v7];
    v9 = v8;
    if (!v8)
    {
      v10 = +[PGLogging sharedLogging];
      v11 = [v10 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "[RemoteConfiguration] failed to load array from Trial at filepath %@", &v16, 0xCu);
      }

      v9 = v6;
    }

    v12 = v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v7;
    }

    else
    {
      v13 = v6;
    }

    v12 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (double)doubleValueForKey:(id)a3 withFallbackValue:(double)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v9 = [(PGRemoteConfiguration *)self _configValueForKey:v7 withFallbackValue:v8];

  if (v9)
  {
    [v9 doubleValue];
    a4 = v10;
  }

  return a4;
}

- (int64_t)longValueForKey:(id)a3 withFallbackValue:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithLongLong:a4];
  v9 = [(PGRemoteConfiguration *)self _configValueForKey:v7 withFallbackValue:v8];

  if (v9)
  {
    a4 = [v9 longValue];
  }

  return a4;
}

- (id)stringValueForKey:(id)a3 withFallbackValue:(id)a4
{
  v6 = a4;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:a3 withFallbackValue:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (id)onDiskConfigurationPathForResourceFileName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:v3 ofType:@"remoteconfig.plist"];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGRemoteConfiguration] Failed to find resourceFilePath:%@ for resourceFileName:%@", &v13, 0x16u);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (PGRemoteConfiguration)initWithConfigurationSources:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PGRemoteConfiguration;
  v6 = [(PGRemoteConfiguration *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    remoteConfigurationCache = v6->_remoteConfigurationCache;
    v6->_remoteConfigurationCache = v7;

    objc_storeStrong(&v6->_configurationSources, a3);
  }

  return v6;
}

- (PGRemoteConfiguration)init
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = +[PGTrialSession newTrialSession];
  v4 = [[PGTrialConfigurationSource alloc] initWithTrialSession:v3 namespaceType:1];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(PGRemoteConfiguration *)self initWithConfigurationSources:v5];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end