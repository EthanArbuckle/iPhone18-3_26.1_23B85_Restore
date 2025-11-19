@interface QLExtensionManager
+ (BOOL)extension:(id)a3 supportsExactType:(id)a4;
+ (id)sharedManager;
+ (void)_resetSharedManager;
- (BOOL)existsExtensionForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtension:(BOOL)a5 applicationBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9;
- (id)_applicationPathForBundleId:(id)a3;
- (id)_cachesForExtensionType:(unint64_t)a3 shouldUseRestrictedExtension:(BOOL)a4;
- (id)_extensionPointNameForExtensionType:(unint64_t)a3;
- (id)extensionForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtension:(BOOL)a5 applicationBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9 shouldUseRestrictedExtension:(BOOL)a10;
- (id)qlExtensionForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtension:(BOOL)a5 applicationBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9 shouldUseRestrictedExtension:(BOOL)a10;
- (void)_addQueryAttributesToExtensionQuery:(id)a3 withContentType:(id)a4 appBundleIdentifier:(id)a5 extensionType:(unint64_t)a6 generationType:(unint64_t)a7;
- (void)_setupCache;
- (void)extensionContextForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtensionOnly:(BOOL)a5 appBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9 withCompletionHandler:(id)a10;
@end

@implementation QLExtensionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[QLExtensionManager sharedManager];
  }

  v3 = _sharedManager;

  return v3;
}

uint64_t __35__QLExtensionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(QLExtensionManager);
  v1 = _sharedManager;
  _sharedManager = v0;

  v2 = _sharedManager;

  return [v2 _setupCache];
}

+ (void)_resetSharedManager
{
  v2 = objc_alloc_init(QLExtensionManager);
  v3 = _sharedManager;
  _sharedManager = v2;

  v4 = _sharedManager;

  [v4 _setupCache];
}

+ (BOOL)extension:(id)a3 supportsExactType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [v5 attributes];
  v8 = [v7 objectForKeyedSubscript:@"QLSupportedContentTypes"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__QLExtensionManager_extension_supportsExactType___block_invoke;
  v11[3] = &unk_279ADB550;
  v13 = &v14;
  v9 = v6;
  v12 = v9;
  [v8 enumerateObjectsUsingBlock:v11];
  LOBYTE(v7) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __50__QLExtensionManager_extension_supportsExactType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 caseInsensitiveCompare:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (void)_setupCache
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [QLExtensionManagerCache alloc];
  v32 = *MEMORY[0x277CCA0F8];
  v4 = v32;
  v33[0] = @"com.apple.quicklook.preview";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v6 = [(QLExtensionManagerCache *)v3 initWithMatchingAttributes:v5];
  previewExtensionCache = self->_previewExtensionCache;
  self->_previewExtensionCache = v6;

  v8 = [QLExtensionManagerCache alloc];
  v30 = v4;
  v31 = @"com.apple.quicklook.thumbnail";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v10 = [(QLExtensionManagerCache *)v8 initWithMatchingAttributes:v9];
  thumbnailExtensionCache = self->_thumbnailExtensionCache;
  self->_thumbnailExtensionCache = v10;

  v12 = [QLExtensionManagerCache alloc];
  v28 = v4;
  v29 = @"com.apple.quicklook.preview.highmemory";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v14 = [(QLExtensionManagerCache *)v12 initWithMatchingAttributes:v13];
  previewHighMemoryExtensionCache = self->_previewHighMemoryExtensionCache;
  self->_previewHighMemoryExtensionCache = v14;

  v16 = [QLExtensionManagerCache alloc];
  v26 = v4;
  v27 = @"com.apple.quicklook.thumbnail.highmemory";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v18 = [(QLExtensionManagerCache *)v16 initWithMatchingAttributes:v17];
  thumbnailHighMemoryExtensionCache = self->_thumbnailHighMemoryExtensionCache;
  self->_thumbnailHighMemoryExtensionCache = v18;

  v20 = [QLExtensionManagerCache alloc];
  v24 = v4;
  v25 = @"com.apple.quicklook.thumbnail.secure";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v22 = [(QLExtensionManagerCache *)v20 initWithMatchingAttributes:v21];
  thumbnailSecureExtensionCache = self->_thumbnailSecureExtensionCache;
  self->_thumbnailSecureExtensionCache = v22;

  [(QLExtensionManagerCache *)self->_previewExtensionCache beginMatchingExtensions];
  [(QLExtensionManagerCache *)self->_thumbnailExtensionCache beginMatchingExtensions];
  [(QLExtensionManagerCache *)self->_previewHighMemoryExtensionCache beginMatchingExtensions];
  [(QLExtensionManagerCache *)self->_thumbnailHighMemoryExtensionCache beginMatchingExtensions];
  [(QLExtensionManagerCache *)self->_thumbnailSecureExtensionCache beginMatchingExtensions];
}

- (id)_cachesForExtensionType:(unint64_t)a3 shouldUseRestrictedExtension:(BOOL)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__QLExtensionManager__cachesForExtensionType_shouldUseRestrictedExtension___block_invoke;
  block[3] = &unk_279ADB330;
  block[4] = self;
  if (_cachesForExtensionType_shouldUseRestrictedExtension__onceToken != -1)
  {
    dispatch_once(&_cachesForExtensionType_shouldUseRestrictedExtension__onceToken, block);
  }

  v6 = _os_feature_enabled_impl();
  v7 = _os_feature_enabled_impl();
  if (a3)
  {
    if ((v7 | v6 & a4))
    {
      v8 = &_cachesForExtensionType_shouldUseRestrictedExtension__restrictedThumbnailExtensionCaches;
    }

    else
    {
      v8 = &_cachesForExtensionType_shouldUseRestrictedExtension__thumbnailExtensionCaches;
    }

    v9 = *v8;
  }

  else
  {
    v9 = _cachesForExtensionType_shouldUseRestrictedExtension__previewExtensionCaches;
  }

  return v9;
}

void __75__QLExtensionManager__cachesForExtensionType_shouldUseRestrictedExtension___block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) previewExtensionCache];
  v18[0] = v2;
  v3 = [*(a1 + 32) previewHighMemoryExtensionCache];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v5 = _cachesForExtensionType_shouldUseRestrictedExtension__previewExtensionCaches;
  _cachesForExtensionType_shouldUseRestrictedExtension__previewExtensionCaches = v4;

  v6 = [*(a1 + 32) thumbnailSecureExtensionCache];
  v17[0] = v6;
  v7 = [*(a1 + 32) thumbnailExtensionCache];
  v17[1] = v7;
  v8 = [*(a1 + 32) thumbnailHighMemoryExtensionCache];
  v17[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v10 = _cachesForExtensionType_shouldUseRestrictedExtension__restrictedThumbnailExtensionCaches;
  _cachesForExtensionType_shouldUseRestrictedExtension__restrictedThumbnailExtensionCaches = v9;

  v11 = [*(a1 + 32) thumbnailExtensionCache];
  v16[0] = v11;
  v12 = [*(a1 + 32) thumbnailHighMemoryExtensionCache];
  v16[1] = v12;
  v13 = [*(a1 + 32) thumbnailSecureExtensionCache];
  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v15 = _cachesForExtensionType_shouldUseRestrictedExtension__thumbnailExtensionCaches;
  _cachesForExtensionType_shouldUseRestrictedExtension__thumbnailExtensionCaches = v14;
}

- (BOOL)existsExtensionForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtension:(BOOL)a5 applicationBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9
{
  LOBYTE(v12) = 0;
  v9 = [(QLExtensionManager *)self extensionForContentType:a3 allowExtensionsForParentTypes:a4 firstPartyExtension:a5 applicationBundleIdentifier:a6 extensionPath:a7 extensionType:a8 generationType:a9 shouldUseRestrictedExtension:v12];
  v10 = v9 != 0;

  return v10;
}

- (void)extensionContextForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtensionOnly:(BOOL)a5 appBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9 withCompletionHandler:(id)a10
{
  v13 = a5;
  v14 = a4;
  v17 = a10;
  LOBYTE(v21) = 0;
  v18 = [(QLExtensionManager *)self extensionForContentType:a3 allowExtensionsForParentTypes:v14 firstPartyExtension:v13 applicationBundleIdentifier:a6 extensionPath:a7 extensionType:a8 generationType:a9 shouldUseRestrictedExtension:v21];
  v19 = v18;
  if (!v18)
  {
LABEL_9:
    (*(v17 + 2))(v17, 0, 0, 0);
    goto LABEL_10;
  }

  if (a8 != 1 && ([v18 isGenerationPreview] & 1) == 0)
  {
    v20 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v20 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2615AE000, v20, OS_LOG_TYPE_ERROR, "Extension contexts can be provided for non-UI extensions only. #Remote", buf, 2u);
    }

    goto LABEL_9;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __192__QLExtensionManager_extensionContextForContentType_allowExtensionsForParentTypes_firstPartyExtensionOnly_appBundleIdentifier_extensionPath_extensionType_generationType_withCompletionHandler___block_invoke;
  v22[3] = &unk_279ADB578;
  v23 = v19;
  v24 = v17;
  [v23 beginExtensionRequestWithInputItems:0 completion:v22];

LABEL_10:
}

void __192__QLExtensionManager_extensionContextForContentType_allowExtensionsForParentTypes_firstPartyExtensionOnly_appBundleIdentifier_extensionPath_extensionType_generationType_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v7 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_2615AE000, v7, OS_LOG_TYPE_FAULT, "Error while instantiating extension's object: %@ #Remote", &v9, 0xCu);
    }
  }

  v8 = [*(a1 + 32) _extensionContextForUUID:v5];
  (*(*(a1 + 40) + 16))();
}

- (id)qlExtensionForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtension:(BOOL)a5 applicationBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9 shouldUseRestrictedExtension:(BOOL)a10
{
  v13 = a5;
  v14 = a4;
  v50 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = v18;
  v20 = v16 != 0;
  v21 = a9 == 1 && v16 != 0;
  if (a8 != 1)
  {
    v20 = 0;
  }

  if (!v20 && !v18 && !v17 && !v21)
  {
    v22 = 0;
    goto LABEL_35;
  }

  v23 = objc_opt_new();
  v36 = v17;
  v37 = v16;
  [(QLExtensionManager *)self _addQueryAttributesToExtensionQuery:v23 withContentType:v16 appBundleIdentifier:v17 extensionType:a8 generationType:a9];
  v38 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = [(QLExtensionManager *)self _cachesForExtensionType:a8 shouldUseRestrictedExtension:a10];
  v25 = [v24 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v22 = [*(*(&v39 + 1) + 8 * i) extensionWithMatchingAttributes:v23 allowExtensionsForParentTypes:v14 extensionPath:v19 firstPartyExtension:v13];
        if (v22)
        {
          if (!a10)
          {

            goto LABEL_28;
          }

          [v38 addObject:v22];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  if (a10)
  {
    v29 = [v23 objectForKeyedSubscript:@"QLSupportedContentTypes"];
    v22 = [QLExtensionManagerCache bestMatchingExtensionsFromSupportingExtensions:v38 includingExtensionsWithSupportingParentTypes:v14 byContentType:v29];

    if (v22)
    {
LABEL_28:
      v31 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v31 = _qlsLogHandle;
      }

      v17 = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = v31;
        v33 = [v22 extension];
        v34 = [v33 identifier];
        *buf = 138412802;
        v44 = v34;
        v45 = 2112;
        v16 = v37;
        v46 = v37;
        v47 = 2112;
        v48 = v36;
        _os_log_impl(&dword_2615AE000, v32, OS_LOG_TYPE_DEBUG, "Found extension: %@ for content type: %@, bundle identifier: %@. #Remote", buf, 0x20u);

        goto LABEL_34;
      }

LABEL_33:
      v16 = v37;
      goto LABEL_34;
    }
  }

  v30 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v30 = _qlsLogHandle;
  }

  v17 = v36;
  if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v22 = 0;
    goto LABEL_33;
  }

  *buf = 138412802;
  v16 = v37;
  v44 = v37;
  v45 = 2112;
  v46 = v36;
  v47 = 2112;
  v48 = v19;
  _os_log_impl(&dword_2615AE000, v30, OS_LOG_TYPE_DEBUG, "Did not find any extension matching content type: %@ and application bundle identifier: %@. with specified path %@ #Remote", buf, 0x20u);
  v22 = 0;
LABEL_34:

LABEL_35:

  return v22;
}

- (id)extensionForContentType:(id)a3 allowExtensionsForParentTypes:(BOOL)a4 firstPartyExtension:(BOOL)a5 applicationBundleIdentifier:(id)a6 extensionPath:(id)a7 extensionType:(unint64_t)a8 generationType:(unint64_t)a9 shouldUseRestrictedExtension:(BOOL)a10
{
  LOBYTE(v13) = a10;
  v10 = [(QLExtensionManager *)self qlExtensionForContentType:a3 allowExtensionsForParentTypes:a4 firstPartyExtension:a5 applicationBundleIdentifier:a6 extensionPath:a7 extensionType:a8 generationType:a9 shouldUseRestrictedExtension:v13];
  v11 = [v10 extension];

  return v11;
}

- (id)_extensionPointNameForExtensionType:(unint64_t)a3
{
  if (a3)
  {
    return @"com.apple.quicklook.thumbnail";
  }

  else
  {
    return @"com.apple.quicklook.preview";
  }
}

- (void)_addQueryAttributesToExtensionQuery:(id)a3 withContentType:(id)a4 appBundleIdentifier:(id)a5 extensionType:(unint64_t)a6 generationType:(unint64_t)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:@"QLSupportedContentTypes"];
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = [(QLExtensionManager *)self _applicationPathForBundleId:v13];
  if (v14)
  {
    [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA0B8]];
LABEL_8:

LABEL_9:
    if (a7 == 2)
    {
      [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"QLSupportsSearchableItems"];
    }

    goto LABEL_11;
  }

  v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v13];
  v16 = [v15 bundlePath];

  if (v16)
  {
    v17 = [v15 bundlePath];
    [v11 setObject:v17 forKeyedSubscript:@"kQLExtensionFrameworkPath"];

    goto LABEL_8;
  }

  v18 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v18 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = v13;
    _os_log_impl(&dword_2615AE000, v18, OS_LOG_TYPE_ERROR, "Could not retrieve application extension because Quick Look could not figure out the path from the bundle identifier: %@. #Remote", &v19, 0xCu);
  }

LABEL_11:
}

- (id)_applicationPathForBundleId:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v11];
  v5 = v11;
  if (!v4)
  {
    v6 = MEMORY[0x277CDAB78];
    v7 = *(MEMORY[0x277CDAB78] + 128);
    if (!v7)
    {
      QLTInitLogging();
      v7 = *(v6 + 128);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(QLExtensionManager *)v3 _applicationPathForBundleId:v5, v7];
    }
  }

  v8 = [v4 URL];
  v9 = [v8 path];

  return v9;
}

- (void)_applicationPathForBundleId:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2615AE000, log, OS_LOG_TYPE_ERROR, "No application record for %@: %@", &v3, 0x16u);
}

@end