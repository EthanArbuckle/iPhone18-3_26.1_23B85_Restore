@interface WFLocationQueryGeocodeCacheManager
+ (WFLocationQueryGeocodeCacheManager)sharedManager;
- (WFLocationQueryGeocodeCacheManager)init;
- (id)_persistedInfoFromDisk;
- (id)_persistedInfoURL;
- (id)cachedLocationForKey:(id)key;
- (void)_discardExpiredLocations;
- (void)_persistInfoToDisk;
- (void)_persistedInfoFromDisk;
- (void)updateCacheForKey:(id)key withLocation:(id)location;
@end

@implementation WFLocationQueryGeocodeCacheManager

+ (WFLocationQueryGeocodeCacheManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[WFLocationQueryGeocodeCacheManager sharedManager];
  }

  v3 = sharedManager_geocodeCacheManager;

  return v3;
}

uint64_t __51__WFLocationQueryGeocodeCacheManager_sharedManager__block_invoke()
{
  sharedManager_geocodeCacheManager = objc_alloc_init(WFLocationQueryGeocodeCacheManager);

  return MEMORY[0x2821F96F8]();
}

- (WFLocationQueryGeocodeCacheManager)init
{
  v14.receiver = self;
  v14.super_class = WFLocationQueryGeocodeCacheManager;
  v2 = [(WFLocationQueryGeocodeCacheManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_dataSynchronizationLock._os_unfair_lock_opaque = 0;
    _persistedInfoFromDisk = [(WFLocationQueryGeocodeCacheManager *)v2 _persistedInfoFromDisk];
    v5 = [_persistedInfoFromDisk mutableCopy];
    geocodeCache = v3->_geocodeCache;
    v3->_geocodeCache = v5;

    v7 = +[WFSettingsManager sharedInstance];
    settings = [v7 settings];
    [settings cachedGeocodeLocationExpirationTimeInterval];
    v3->_expirationTime = v9;

    if (v3->_geocodeCache)
    {
      [(WFLocationQueryGeocodeCacheManager *)v3 _discardExpiredLocations];
    }

    else
    {
      v10 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(WFLocationQueryGeocodeCacheManager *)v10 init];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v12 = v3->_geocodeCache;
      v3->_geocodeCache = dictionary;
    }
  }

  return v3;
}

- (void)updateCacheForKey:(id)key withLocation:(id)location
{
  keyCopy = key;
  locationCopy = location;
  if (locationCopy)
  {
    os_unfair_lock_lock_with_options();
    v8 = [locationCopy copy];
    geocodeCache = [(WFLocationQueryGeocodeCacheManager *)self geocodeCache];
    [geocodeCache setObject:v8 forKeyedSubscript:keyCopy];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
    [(WFLocationQueryGeocodeCacheManager *)self _persistInfoToDisk];
  }

  else
  {
    v10 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [WFLocationQueryGeocodeCacheManager updateCacheForKey:v10 withLocation:?];
    }
  }
}

- (id)cachedLocationForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  geocodeCache = [(WFLocationQueryGeocodeCacheManager *)self geocodeCache];
  v6 = [geocodeCache objectForKeyedSubscript:keyCopy];
  v7 = [v6 copy];

  date = [MEMORY[0x277CBEAA8] date];
  creationDate = [v7 creationDate];
  [date timeIntervalSinceDate:creationDate];
  v11 = v10;
  [(WFLocationQueryGeocodeCacheManager *)self expirationTime];
  v13 = v12;

  if (v11 >= v13)
  {

    geocodeCache2 = [(WFLocationQueryGeocodeCacheManager *)self geocodeCache];
    [geocodeCache2 removeObjectForKey:keyCopy];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
    [(WFLocationQueryGeocodeCacheManager *)self _persistInfoToDisk];
    v7 = 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  return v7;
}

- (void)_discardExpiredLocations
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_geocodeCache count];
  date = [MEMORY[0x277CBEAA8] date];
  geocodeCache = self->_geocodeCache;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __62__WFLocationQueryGeocodeCacheManager__discardExpiredLocations__block_invoke;
  v15 = &unk_279E6EC80;
  v6 = date;
  v16 = v6;
  selfCopy = self;
  v7 = [(NSMutableDictionary *)geocodeCache wf_filter:&v12];
  v8 = [v7 mutableCopy];
  v9 = self->_geocodeCache;
  self->_geocodeCache = v8;

  v10 = [(NSMutableDictionary *)self->_geocodeCache count];
  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  v11 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v3 - v10;
    _os_log_impl(&dword_272B94000, v11, OS_LOG_TYPE_DEFAULT, "Purged %ld expired locations from the cache", buf, 0xCu);
  }

  [(WFLocationQueryGeocodeCacheManager *)self _persistInfoToDisk];
}

BOOL __62__WFLocationQueryGeocodeCacheManager__discardExpiredLocations__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 creationDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6 < *(*(a1 + 40) + 24);

  return v7;
}

- (void)_persistInfoToDisk
{
  os_unfair_lock_lock_with_options();
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  geocodeCache = [(WFLocationQueryGeocodeCacheManager *)self geocodeCache];
  v8 = [v3 initWithDictionary:geocodeCache copyItems:1];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v5 encodeObject:v8 forKey:@"geocodeCache"];
  [v5 finishEncoding];
  encodedData = [v5 encodedData];
  _persistedInfoURL = [(WFLocationQueryGeocodeCacheManager *)self _persistedInfoURL];
  [encodedData writeToURL:_persistedInfoURL atomically:1];
}

- (id)_persistedInfoURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];

  v4 = [v3 URLByAppendingPathComponent:@"locationQueryGeocodeCacheFolder" isDirectory:0];

  return v4;
}

- (id)_persistedInfoFromDisk
{
  v3 = MEMORY[0x277CBEA90];
  _persistedInfoURL = [(WFLocationQueryGeocodeCacheManager *)self _persistedInfoURL];
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
      v12 = [v6 decodeTopLevelObjectOfClasses:v11 forKey:@"geocodeCache" error:&v16];
      v13 = v16;

      if (!v12)
      {
        v14 = WFLogForCategory(5uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(WFLocationQueryGeocodeCacheManager *)self _persistedInfoFromDisk];
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
  _os_log_fault_impl(&dword_272B94000, a3, OS_LOG_TYPE_FAULT, "Failed to read: %{public}@ -- %{public}@", v5, 0x16u);
}

@end