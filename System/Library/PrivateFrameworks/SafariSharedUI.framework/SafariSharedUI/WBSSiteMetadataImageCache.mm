@interface WBSSiteMetadataImageCache
- (id)_diskAccessQueueName;
- (id)_internalQueueName;
- (void)_internalRemoveAllImages;
- (void)_internalSetUpImageCache;
- (void)_notifyDidFinishLoadingSettings;
- (void)removeAllImages;
- (void)setUpImageCache;
@end

@implementation WBSSiteMetadataImageCache

- (id)_internalQueueName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"com.apple.Safari.%@.%p.internalQueue", v5, self];

  return v6;
}

- (void)setUpImageCache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__WBSSiteMetadataImageCache_setUpImageCache__block_invoke;
  block[3] = &unk_1E8282FD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_internalSetUpImageCache
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  keyStringRequestsToCompletionHandlers = self->_keyStringRequestsToCompletionHandlers;
  self->_keyStringRequestsToCompletionHandlers = dictionary;

  if (self->_imageDirectoryURL)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    _diskAccessQueueName = [(WBSSiteMetadataImageCache *)self _diskAccessQueueName];
    v7 = dispatch_queue_create([_diskAccessQueueName UTF8String], v5);
    diskAccessQueue = self->_diskAccessQueue;
    self->_diskAccessQueue = v7;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    diskReadBlocks = self->_diskReadBlocks;
    self->_diskReadBlocks = weakObjectsHashTable;

    objc_initWeak(&location, self);
    v11 = objc_alloc(MEMORY[0x1E69C8840]);
    _cacheSettingsFileURL = [(WBSSiteMetadataImageCache *)self _cacheSettingsFileURL];
    internalQueue = self->_internalQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__WBSSiteMetadataImageCache__internalSetUpImageCache__block_invoke;
    v19[3] = &unk_1E8286418;
    objc_copyWeak(&v20, &location);
    v14 = [v11 initWithName:@"SiteMetadataImageCacheSetting" fileURL:_cacheSettingsFileURL dataSourceQueue:internalQueue dataSourceBlock:v19];
    cacheSettingsWriter = self->_cacheSettingsWriter;
    self->_cacheSettingsWriter = v14;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__WBSSiteMetadataImageCache__internalSetUpImageCache__block_invoke_22;
    v18[3] = &unk_1E8282FD8;
    v18[4] = self;
    [(WBSSiteMetadataImageCache *)self _dispatchDiskReadBlock:v18];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_lock(&self->_cacheAccessLock);
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    cacheSettings = self->_cacheSettings;
    self->_cacheSettings = dictionary2;

    os_unfair_lock_unlock(&self->_cacheAccessLock);

    [(WBSSiteMetadataImageCache *)self _notifyDidFinishLoadingSettings];
  }
}

- (id)_diskAccessQueueName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"com.apple.Safari.%@.%p.diskAccessQueue", v5, self];

  return v6;
}

void __53__WBSSiteMetadataImageCache__internalSetUpImageCache__block_invoke_22(uint64_t a1)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = [*(a1 + 32) _cacheSettingsFileURL];
  v4 = [v2 dataWithContentsOfURL:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];

    v6 = v7;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__WBSSiteMetadataImageCache__internalSetUpImageCache__block_invoke_2;
  v11[3] = &unk_1E8282EA0;
  v11[4] = v8;
  v12 = v6;
  v10 = v6;
  dispatch_async(v9, v11);
}

uint64_t __53__WBSSiteMetadataImageCache__internalSetUpImageCache__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v2 = *(a1 + 32);

  return [v2 _notifyDidFinishLoadingSettings];
}

- (void)_notifyDidFinishLoadingSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained siteMetadataImageCacheDidFinishLoadingSettings:self];
  }
}

- (void)removeAllImages
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__WBSSiteMetadataImageCache_removeAllImages__block_invoke;
  block[3] = &unk_1E8282FD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_internalRemoveAllImages
{
  os_unfair_lock_lock(&self->_cacheAccessLock);
  missingImageKeyStrings = self->_missingImageKeyStrings;
  allKeys = [(NSMutableDictionary *)self->_imagesForKeyStrings allKeys];
  [(NSMutableSet *)missingImageKeyStrings addObjectsFromArray:allKeys];

  [(NSMutableDictionary *)self->_imagesForKeyStrings removeAllObjects];
  os_unfair_lock_unlock(&self->_cacheAccessLock);

  [(WBSSiteMetadataImageCache *)self _removeImagesPassingTest:&__block_literal_global_41];
}

void __49__WBSSiteMetadataImageCache__emptyCacheDirectory__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Error %{public}@ trying to delete image cache folder.", v5);
}

void __49__WBSSiteMetadataImageCache__emptyCacheDirectory__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Error %{public}@ trying to create image cache folder.", v5);
}

void __85__WBSSiteMetadataImageCache__internalSaveImageToDisk_forKeyString_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Saving image failed with error: %{public}@", v5);
}

@end