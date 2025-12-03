@interface WBSTouchIconCache
- (id)_imageCacheSettingsDatabaseURL;
- (void)_ensureCacheDirectory;
- (void)_openCacheSettingsDatabaseIfNeeded;
- (void)_setUpImageCacheSettingsSQLiteStore;
@end

@implementation WBSTouchIconCache

- (id)_imageCacheSettingsDatabaseURL
{
  cacheDirectoryURL = [(WBSTouchIconCache *)self cacheDirectoryURL];
  if (cacheDirectoryURL)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_DEFAULT, "Using on-disk database for Icon Fetching.", v8, 2u);
    }

    inMemoryDatabaseURL = [cacheDirectoryURL URLByAppendingPathComponent:@"TouchIconCacheSettings.db" isDirectory:0];
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_DEFAULT, "Using in-memory database for Icon Fetching.", buf, 2u);
    }

    inMemoryDatabaseURL = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
  }

  v6 = inMemoryDatabaseURL;

  return v6;
}

- (void)_setUpImageCacheSettingsSQLiteStore
{
  v42 = *MEMORY[0x1E69E9840];
  [(WBSTouchIconCache *)self _ensureCacheDirectory];
  [(WBSTouchIconCache *)self _openCacheSettingsDatabaseIfNeeded];
  allEntries = [(WBSSiteMetadataImageCacheSettingsSQLiteStore *)self->_cacheSettingsStore allEntries];
  v4 = allEntries;
  if (self->_cacheSettingsStore && ![allEntries count])
  {
    [(WBSSiteMetadataImageCache *)self->_imageCache removeAllImages];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        host = [v10 host];
        [dictionary setObject:v10 forKeyedSubscript:host];
      }

      v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  os_unfair_lock_lock(&self->_touchIconsDataForHostsAccessLock);
  objc_storeStrong(&self->_touchIconsDataForHosts, dictionary);
  os_unfair_lock_unlock(&self->_touchIconsDataForHostsAccessLock);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_pendingSaveTouchIconToDiskBlocks;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = *v32;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v31 + 1) + 8 * j) + 16))();
      }

      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v13);
  }

  pendingSaveTouchIconToDiskBlocks = self->_pendingSaveTouchIconToDiskBlocks;
  self->_pendingSaveTouchIconToDiskBlocks = 0;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = self->_pendingTouchIconRequestHosts;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v18)
  {
    v19 = *v28;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v27 + 1) + 8 * k);
        os_unfair_lock_lock(&self->_touchIconsDataForHostsAccessLock);
        v22 = [(NSMutableDictionary *)self->_touchIconsDataForHosts objectForKeyedSubscript:v21, v27];
        os_unfair_lock_unlock(&self->_touchIconsDataForHostsAccessLock);
        isIconInCache = [v22 isIconInCache];
        imageCache = self->_imageCache;
        if (isIconInCache)
        {
          v25 = [(WBSSiteMetadataImageCache *)imageCache imageForKeyString:v21 getImageState:0];
        }

        else
        {
          [(WBSSiteMetadataImageCache *)imageCache setImageState:1 forKeyString:v21];
          [(WBSTouchIconCache *)self _notifyImageWasLoaded:0 forHost:v21];
        }
      }

      v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v18);
  }

  pendingTouchIconRequestHosts = self->_pendingTouchIconRequestHosts;
  self->_pendingTouchIconRequestHosts = 0;

  atomic_store(1u, &self->_didLoadSettings);
}

- (void)_ensureCacheDirectory
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Error %{public}@ trying to create image cache folder.", buf, 0xCu);
}

- (void)_openCacheSettingsDatabaseIfNeeded
{
  if (!self->_cacheSettingsStore)
  {
    v3 = [WBSTouchIconCacheSettingsSQLiteStore alloc];
    _imageCacheSettingsDatabaseURL = [(WBSTouchIconCache *)self _imageCacheSettingsDatabaseURL];
    v4 = [WBSSiteMetadataImageCacheSettingsSQLiteStore initWithDatabaseURL:v3 protectionType:"initWithDatabaseURL:protectionType:"];
    cacheSettingsStore = self->_cacheSettingsStore;
    self->_cacheSettingsStore = v4;
  }
}

- (void)_didLoadTouchIcon:(uint64_t)a1 withCacheSettingsEntry:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Unexpected value passed to transparencyAnalysisResultFromInteger: %zd", &v2, 0xCu);
}

@end