@interface PGRemoteConfiguration
- (BOOL)_isValidFilePath:(id)path;
- (PGRemoteConfiguration)init;
- (PGRemoteConfiguration)initWithConfigurationSources:(id)sources;
- (double)doubleValueForKey:(id)key withFallbackValue:(double)value;
- (id)_configValueForKey:(id)key withFallbackValue:(id)value;
- (id)arrayValueForKey:(id)key withFallbackValue:(id)value;
- (id)dictionaryValueForKey:(id)key withFallbackValue:(id)value;
- (id)fileValueForKey:(id)key withFallbackValue:(id)value;
- (id)onDiskConfigurationPathForResourceFileName:(id)name;
- (id)stringValueForKey:(id)key withFallbackValue:(id)value;
- (int64_t)longValueForKey:(id)key withFallbackValue:(int64_t)value;
- (void)_cacheFallbackValueForKey:(id)key withValue:(id)value;
@end

@implementation PGRemoteConfiguration

- (void)_cacheFallbackValueForKey:(id)key withValue:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v8 = [(NSMutableDictionary *)self->_remoteConfigurationCache objectForKey:keyCopy];
  if (([v8 isEqual:valueCopy] & 1) == 0)
  {
    if (v8)
    {
      v9 = +[PGLogging sharedLogging];
      loggingConnection = [v9 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412802;
        v13 = keyCopy;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = valueCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGRemoteConfiguration] fallback value for Key: %@ is given multiple unequal values: %@, %@", &v12, 0x20u);
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_remoteConfigurationCache setObject:valueCopy forKeyedSubscript:keyCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_configValueForKey:(id)key withFallbackValue:(id)value
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  [(PGRemoteConfiguration *)self _cacheFallbackValueForKey:keyCopy withValue:value];
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

        v12 = [*(*(&v16 + 1) + 8 * i) objectForKey:{keyCopy, v16}];
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

- (id)fileValueForKey:(id)key withFallbackValue:(id)value
{
  valueCopy = value;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:key withFallbackValue:valueCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v7];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:0];
  }

  else
  {
    v10 = valueCopy;
  }

  v11 = v10;

  return v11;
}

- (BOOL)_isValidFilePath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

- (id)dictionaryValueForKey:(id)key withFallbackValue:(id)value
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:key withFallbackValue:valueCopy];
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
      v11 = valueCopy;
    }

    v8 = v11;
    goto LABEL_11;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v7];
  if (!v8)
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[RemoteConfiguration] failed to load dictionary from Trial at filepath %@", &v14, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)arrayValueForKey:(id)key withFallbackValue:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:key withFallbackValue:valueCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(PGRemoteConfiguration *)self _isValidFilePath:v7])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfFile:v7];
    v9 = v8;
    if (!v8)
    {
      v10 = +[PGLogging sharedLogging];
      loggingConnection = [v10 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[RemoteConfiguration] failed to load array from Trial at filepath %@", &v16, 0xCu);
      }

      v9 = valueCopy;
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
      v13 = valueCopy;
    }

    v12 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (double)doubleValueForKey:(id)key withFallbackValue:(double)value
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithDouble:value];
  v9 = [(PGRemoteConfiguration *)self _configValueForKey:keyCopy withFallbackValue:v8];

  if (v9)
  {
    [v9 doubleValue];
    value = v10;
  }

  return value;
}

- (int64_t)longValueForKey:(id)key withFallbackValue:(int64_t)value
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:value];
  v9 = [(PGRemoteConfiguration *)self _configValueForKey:keyCopy withFallbackValue:v8];

  if (v9)
  {
    value = [v9 longValue];
  }

  return value;
}

- (id)stringValueForKey:(id)key withFallbackValue:(id)value
{
  valueCopy = value;
  v7 = [(PGRemoteConfiguration *)self _configValueForKey:key withFallbackValue:valueCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (id)onDiskConfigurationPathForResourceFileName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:nameCopy ofType:@"remoteconfig.plist"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = nameCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGRemoteConfiguration] Failed to find resourceFilePath:%@ for resourceFileName:%@", &v13, 0x16u);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (PGRemoteConfiguration)initWithConfigurationSources:(id)sources
{
  sourcesCopy = sources;
  v10.receiver = self;
  v10.super_class = PGRemoteConfiguration;
  v6 = [(PGRemoteConfiguration *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    remoteConfigurationCache = v6->_remoteConfigurationCache;
    v6->_remoteConfigurationCache = v7;

    objc_storeStrong(&v6->_configurationSources, sources);
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