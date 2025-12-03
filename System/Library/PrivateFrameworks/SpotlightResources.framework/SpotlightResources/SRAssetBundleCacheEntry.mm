@interface SRAssetBundleCacheEntry
- (BOOL)makeResultWithBundleVersion:(id)version path:(id)path loaded:(BOOL)loaded;
- (BOOL)onDevice;
- (SRAssetBundleCacheEntry)initWithAssetType:(int64_t)type language:(id)language deliveryType:(int64_t)deliveryType;
- (void)makeResultNone;
- (void)onDevice;
@end

@implementation SRAssetBundleCacheEntry

- (void)makeResultNone
{
  v11 = *MEMORY[0x1E69E9840];
  [self assetTypeString];
  objc_claimAutoreleasedReturnValue();
  deliveryTypeString = [OUTLINED_FUNCTION_5() deliveryTypeString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE58E000, v3, v4, "No assets for (%@, %@, %@)", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (SRAssetBundleCacheEntry)initWithAssetType:(int64_t)type language:(id)language deliveryType:(int64_t)deliveryType
{
  languageCopy = language;
  v15.receiver = self;
  v15.super_class = SRAssetBundleCacheEntry;
  v10 = [(SRAssetBundleCacheEntry *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_assetType = type;
    objc_storeStrong(&v10->_language, language);
    v11->_isResult = 0;
    bundleVersion = v11->_bundleVersion;
    v11->_deliveryType = deliveryType;
    v11->_bundleVersion = 0;

    path = v11->_path;
    v11->_path = 0;

    v11->_loaded = 0;
  }

  return v11;
}

- (BOOL)makeResultWithBundleVersion:(id)version path:(id)path loaded:(BOOL)loaded
{
  v37 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  pathCopy = path;
  v11 = pathCopy;
  self->_isResult = 1;
  if (!versionCopy)
  {
    v14 = SRLogCategoryAssets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SRAssetBundleCacheEntry makeResultWithBundleVersion:? path:? loaded:?];
    }

    goto LABEL_10;
  }

  if (!pathCopy)
  {
    v14 = SRLogCategoryAssets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SRAssetBundleCacheEntry makeResultWithBundleVersion:? path:? loaded:?];
    }

LABEL_10:

    bundleVersion = self->_bundleVersion;
    self->_bundleVersion = 0;

    path = self->_path;
    self->_path = 0;

    v13 = 0;
    self->_loaded = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&self->_bundleVersion, version);
  objc_storeStrong(&self->_path, path);
  self->_loaded = loaded;
  v12 = SRLogCategoryAssets();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    version = [(SRAssetBundleVersion *)self->_bundleVersion version];
    v20 = self->_path;
    loaded = self->_loaded;
    assetTypeString = [(SRAssetBundleCacheEntry *)self assetTypeString];
    language = self->_language;
    deliveryTypeString = [(SRAssetBundleCacheEntry *)self deliveryTypeString];
    v25 = 138413570;
    v26 = version;
    v27 = 2112;
    v28 = v20;
    v29 = 1024;
    loadedCopy = loaded;
    v31 = 2112;
    v32 = assetTypeString;
    v33 = 2112;
    v34 = language;
    v35 = 2112;
    v36 = deliveryTypeString;
    _os_log_debug_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEBUG, "(%@, %@, %d) for asset (%@, %@, %@)", &v25, 0x3Au);
  }

  v13 = 1;
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)onDevice
{
  v9 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:self->_path isDirectory:&v9];

  if ((v4 & 1) == 0)
  {
    v5 = SRLogCategoryAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SRAssetBundleCacheEntry *)self onDevice];
    }
  }

  if (v9)
  {
    v6 = 1;
  }

  else
  {
    v7 = SRLogCategoryAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SRAssetBundleCacheEntry *)self onDevice];
    }

    v6 = v9;
  }

  return v4 & v6;
}

- (void)makeResultWithBundleVersion:(void *)a1 path:loaded:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 assetTypeString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() deliveryTypeString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)makeResultWithBundleVersion:(void *)a1 path:loaded:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 assetTypeString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() deliveryTypeString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)onDevice
{
  v14 = *MEMORY[0x1E69E9840];
  assetTypeString = [self assetTypeString];
  v5 = self[3];
  deliveryTypeString = [self deliveryTypeString];
  v7 = *a2;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x2Au);

  v13 = *MEMORY[0x1E69E9840];
}

@end