@interface PGConfiguration
+ (id)_persistedConfigurationPath;
+ (id)persistedConfiguration;
- (PGConfiguration)initWithSources:(id)sources version:(double)version;
- (id)_configurationDictionary;
- (id)description;
- (id)propertyKeys;
- (id)propertyNamesForProperties:(objc_property *)properties propertyCount:(unsigned int)count;
- (void)_configureWithSource:(id)source propertyKeys:(id)keys;
- (void)deletePersistedConfiguration;
- (void)persistConfiguration;
@end

@implementation PGConfiguration

- (void)deletePersistedConfiguration
{
  v12 = *MEMORY[0x277D85DE8];
  _persistedConfigurationPath = [objc_opt_class() _persistedConfigurationPath];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if ([v3 fileExistsAtPath:_persistedConfigurationPath isDirectory:0])
  {
    v9 = 0;
    v4 = [v3 removeItemAtPath:_persistedConfigurationPath error:&v9];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = +[PGLogging sharedLogging];
      loggingConnection = [v6 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGConfiguration] Failed to delete persisted configuration dictionary (%@)", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_configurationDictionary
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  propertyKeys = [(PGConfiguration *)self propertyKeys];
  v5 = [propertyKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(propertyKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(PGConfiguration *)self valueForKey:v9];
        [dictionary setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [propertyKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)persistConfiguration
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v4 = 0;
  if ([v3 fileExistsAtPath:@"/var/mobile/Media/PhotoData/Configuration" isDirectory:0] & 1) != 0 || (v15 = 0, v5 = objc_msgSend(v3, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", @"/var/mobile/Media/PhotoData/Configuration", 1, 0, &v15), v4 = v15, (v5))
  {
    _persistedConfigurationPath = [objc_opt_class() _persistedConfigurationPath];
    _configurationDictionary = [(PGConfiguration *)self _configurationDictionary];
    v8 = [_configurationDictionary writeToFile:_persistedConfigurationPath atomically:1];

    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGConfiguration] Failed to create Configuration directory (%@)", buf, 0xCu);
    }
  }

  v11 = +[PGLogging sharedLogging];
  loggingConnection2 = [v11 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
  {
    name = [objc_opt_class() name];
    *buf = 138412290;
    v17 = name;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGConfiguration] Failed to persist configuration dictionary for class %@", buf, 0xCu);
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  name = [objc_opt_class() name];
  [(PGConfiguration *)self version];
  v6 = [v3 stringWithFormat:@"%@ (version: %.2f):", name, v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  propertyKeys = [(PGConfiguration *)self propertyKeys];
  v8 = [propertyKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(propertyKeys);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(PGConfiguration *)self valueForKey:v12];
        [v6 appendFormat:@"\n\t%@: %@", v12, v13];
      }

      v9 = [propertyKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_configureWithSource:(id)source propertyKeys:(id)keys
{
  v20 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  keysCopy = keys;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [keysCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [sourceCopy objectForKey:v12];
        if (v13)
        {
          [(PGConfiguration *)self setValue:v13 forKey:v12];
        }
      }

      v9 = [keysCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)propertyNamesForProperties:(objc_property *)properties propertyCount:(unsigned int)count
{
  array = [MEMORY[0x277CBEB18] array];
  if (count)
  {
    countCopy = count;
    do
    {
      v8 = *properties++;
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v8)];
      [array addObject:v9];

      --countCopy;
    }

    while (countCopy);
  }

  return array;
}

- (id)propertyKeys
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_opt_class();
  while ([(objc_class *)v4 isSubclassOfClass:objc_opt_class()])
  {
    outCount = 0;
    v5 = class_copyPropertyList(v4, &outCount);
    v6 = [(PGConfiguration *)self propertyNamesForProperties:v5 propertyCount:outCount];
    [v3 addObjectsFromArray:v6];
    free(v5);
    v4 = [(objc_class *)v4 superclass];
  }

  return v3;
}

- (PGConfiguration)initWithSources:(id)sources version:(double)version
{
  v23 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v21.receiver = self;
  v21.super_class = PGConfiguration;
  v7 = [(PGConfiguration *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v7->_version = version;
    propertyKeys = [(PGConfiguration *)v7 propertyKeys];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = sourcesCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(PGConfiguration *)v8 _configureWithSource:*(*(&v17 + 1) + 8 * v14++) propertyKeys:propertyKeys, v17];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_persistedConfigurationPath
{
  v2 = MEMORY[0x277CCACA8];
  name = [self name];
  v4 = [v2 stringWithFormat:@"%@/%@", @"/var/mobile/Media/PhotoData/Configuration", name];

  return v4;
}

+ (id)persistedConfiguration
{
  v16[1] = *MEMORY[0x277D85DE8];
  _persistedConfigurationPath = [objc_opt_class() _persistedConfigurationPath];
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:_persistedConfigurationPath];
  if (v3)
  {
    loggingConnection = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v3];
    v5 = [v3 objectForKeyedSubscript:@"version"];
    [v5 doubleValue];
    v7 = v6;

    v8 = [PGConfiguration alloc];
    v16[0] = loggingConnection;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v10 = [(PGConfiguration *)v8 initWithSources:v9 version:v7];
  }

  else
  {
    v11 = +[PGLogging sharedLogging];
    loggingConnection = [v11 loggingConnection];

    if (os_log_type_enabled(&loggingConnection->super, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = _persistedConfigurationPath;
      _os_log_error_impl(&dword_22F0FC000, &loggingConnection->super, OS_LOG_TYPE_ERROR, "[PGConfiguration] No persisted configuration found at path %@", &v14, 0xCu);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end