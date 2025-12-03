@interface WFAQIScaleCacheManager
+ (WFAQIScaleCacheManager)sharedManager;
- (WFAQIScaleCacheManager)init;
- (id)_persistedInfoFromDisk;
- (id)_persistedInfoURL;
- (id)cachedScaleFromIdentifier:(id)identifier;
- (void)_persistInfoToDisk;
- (void)_persistedInfoFromDisk;
- (void)clearCache;
- (void)updateCacheWithScale:(id)scale identifier:(id)identifier;
@end

@implementation WFAQIScaleCacheManager

+ (WFAQIScaleCacheManager)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[WFAQIScaleCacheManager sharedManager];
  }

  v3 = sharedManager_aqiScaleCacheManager;

  return v3;
}

uint64_t __39__WFAQIScaleCacheManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WFAQIScaleCacheManager);
  v1 = sharedManager_aqiScaleCacheManager;
  sharedManager_aqiScaleCacheManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WFAQIScaleCacheManager)init
{
  v11.receiver = self;
  v11.super_class = WFAQIScaleCacheManager;
  v2 = [(WFAQIScaleCacheManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_dataSynchronizationLock._os_unfair_lock_opaque = 0;
    _persistedInfoFromDisk = [(WFAQIScaleCacheManager *)v2 _persistedInfoFromDisk];
    v5 = [_persistedInfoFromDisk mutableCopy];
    aqiScaleCache = v3->_aqiScaleCache;
    v3->_aqiScaleCache = v5;

    if (!v3->_aqiScaleCache)
    {
      v7 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [WFAQIScaleCacheManager init];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v9 = v3->_aqiScaleCache;
      v3->_aqiScaleCache = dictionary;
    }
  }

  return v3;
}

- (void)updateCacheWithScale:(id)scale identifier:(id)identifier
{
  scaleCopy = scale;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!scaleCopy)
  {
    v10 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [WFAQIScaleCacheManager updateCacheWithScale:identifier:];
    }

    goto LABEL_8;
  }

  if (!identifierCopy)
  {
    v10 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [WFAQIScaleCacheManager updateCacheWithScale:identifier:];
    }

LABEL_8:

    goto LABEL_9;
  }

  os_unfair_lock_lock_with_options();
  aqiScaleCache = [(WFAQIScaleCacheManager *)self aqiScaleCache];
  [aqiScaleCache setObject:scaleCopy forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  [(WFAQIScaleCacheManager *)self _persistInfoToDisk];
LABEL_9:
}

- (id)cachedScaleFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock_with_options();
    aqiScaleCache = [(WFAQIScaleCacheManager *)self aqiScaleCache];
    v6 = [aqiScaleCache objectForKeyedSubscript:identifierCopy];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  else
  {
    v7 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [WFAQIScaleCacheManager updateCacheWithScale:identifier:];
    }

    v6 = 0;
  }

  return v6;
}

- (void)clearCache
{
  v3 = WeatherFoundationInternalUserDefaults();
  [v3 removeObjectForKey:@"aqiRemoteScales"];

  os_unfair_lock_lock_with_options();
  aqiScaleCache = [(WFAQIScaleCacheManager *)self aqiScaleCache];
  [aqiScaleCache removeAllObjects];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _persistedInfoURL = [(WFAQIScaleCacheManager *)self _persistedInfoURL];
  [defaultManager removeItemAtURL:_persistedInfoURL error:0];
}

- (void)_persistInfoToDisk
{
  os_unfair_lock_lock_with_options();
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  aqiScaleCache = [(WFAQIScaleCacheManager *)self aqiScaleCache];
  v8 = [v3 initWithDictionary:aqiScaleCache copyItems:1];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v5 encodeObject:v8 forKey:@"scalesCache"];
  [v5 finishEncoding];
  encodedData = [v5 encodedData];
  _persistedInfoURL = [(WFAQIScaleCacheManager *)self _persistedInfoURL];
  [encodedData writeToURL:_persistedInfoURL atomically:1];
}

- (id)_persistedInfoURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];

  v4 = [v3 URLByAppendingPathComponent:@"serverDrivenAQIScalesCacheFolder" isDirectory:0];

  return v4;
}

- (id)_persistedInfoFromDisk
{
  v3 = MEMORY[0x277CBEA90];
  _persistedInfoURL = [(WFAQIScaleCacheManager *)self _persistedInfoURL];
  v5 = [v3 dataWithContentsOfURL:_persistedInfoURL];

  if (v5)
  {
    v17 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:&v17];
    v7 = v17;
    if (v6)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
      v16 = v7;
      v12 = [v6 decodeTopLevelObjectOfClasses:v11 forKey:@"scalesCache" error:&v16];
      v13 = v16;

      if (!v12)
      {
        v14 = WFLogForCategory(5uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(WFAQIScaleCacheManager *)self _persistedInfoFromDisk];
        }
      }
    }

    else
    {
      v11 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(WFLocationQueryGeocodeCacheManager *)self _persistedInfoFromDisk];
      }

      v12 = 0;
      v13 = v7;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_persistedInfoFromDisk
{
  v6 = *MEMORY[0x277D85DE8];
  _persistedInfoURL = [self _persistedInfoURL];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_272B94000, a3, OS_LOG_TYPE_ERROR, "Failed to read: %{public}@ -- %{public}@", v5, 0x16u);
}

@end