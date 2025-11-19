@interface UIActivityApplicationExtensionsCache
@end

@implementation UIActivityApplicationExtensionsCache

void __62___UIActivityApplicationExtensionsCache_sharedExtensionsCache__block_invoke()
{
  v0 = objc_alloc_init(_UIActivityApplicationExtensionsCache);
  v1 = sharedExtensionsCache_extensionsCache;
  sharedExtensionsCache_extensionsCache = v0;
}

uint64_t __85___UIActivityApplicationExtensionsCache__startPrecachingContinuousExtensionDiscovery__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v2 = getDMPerformMigrationIfNeededSymbolLoc_ptr;
  v17 = getDMPerformMigrationIfNeededSymbolLoc_ptr;
  if (!getDMPerformMigrationIfNeededSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v20 = __getDMPerformMigrationIfNeededSymbolLoc_block_invoke;
    v21 = &unk_1E71F91F0;
    v22 = &v14;
    __getDMPerformMigrationIfNeededSymbolLoc_block_invoke(&buf);
    v2 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v2)
  {
    [SHSheetRemoteSceneViewController reloadMetadata:];
    __break(1u);
  }

  v2();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [&unk_1EFEC8F50 countByEnumeratingWithState:&v10 objects:v18 count:16];
  v4 = result;
  if (result)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1EFEC8F50);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = _cacheKeyWithMatchingAttributes(v7);
        [*(a1 + 32) _startContinuousExtensionDiscoveryForAttributes:v7 cacheKey:v8];
        v9 = share_sheet_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: registered for cache key = [%@]", &buf, 0xCu);
        }

        ++v6;
      }

      while (v4 != v6);
      result = [&unk_1EFEC8F50 countByEnumeratingWithState:&v10 objects:v18 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void __98___UIActivityApplicationExtensionsCache__startContinuousExtensionDiscoveryForAttributes_cacheKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = share_sheet_log();
  WeakRetained = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98___UIActivityApplicationExtensionsCache__startContinuousExtensionDiscoveryForAttributes_cacheKey___block_invoke_cold_1(a1, v6, WeakRetained);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 count];
      v10 = *(a1 + 32);
      v11 = 134218242;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_18B359000, WeakRetained, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: %lu new extensions from NSExtension for cache key = [%@]", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _cacheMatchingExtensions:v5 cacheKey:*(a1 + 32) error:0];
  }
}

void __85___UIActivityApplicationExtensionsCache_primeExtensionsResultWithMatchingAttributes___block_invoke(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _matchingExtensionsCachedResultForKey:a1[4]];
    if (!v4)
    {
      v5 = [v3 discoveryQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85___UIActivityApplicationExtensionsCache_primeExtensionsResultWithMatchingAttributes___block_invoke_2;
      block[3] = &unk_1E71F9638;
      block[4] = v3;
      v9 = a1[5];
      v10 = a1[4];
      dispatch_async(v5, block);

      v4 = _syncGetExtensionsResultWithMatchingAttributes(a1[5], 1, v3);
      v6 = share_sheet_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: priming done for cache key = [%@]", buf, 0xCu);
      }

      [v3 _cacheMatchingExtensionsResult:v4 cacheKey:a1[4]];
    }
  }
}

void __80___UIActivityApplicationExtensionsCache_extensionsResultWithMatchingAttributes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _matchingExtensionsCachedResultForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __98___UIActivityApplicationExtensionsCache__startContinuousExtensionDiscoveryForAttributes_cacheKey___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "ExtensionsCache: continuous extension discovery failed for cacheKey = [%@], error = %@", &v4, 0x16u);
}

@end