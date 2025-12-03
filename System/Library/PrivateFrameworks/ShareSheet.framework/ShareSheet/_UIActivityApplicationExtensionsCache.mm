@interface _UIActivityApplicationExtensionsCache
+ (id)sharedExtensionsCache;
- (_UIActivityApplicationExtensionsCache)init;
- (id)_matchingExtensionsCachedResultForKey:(id)key;
- (id)extensionsResultWithMatchingAttributes:(id)attributes;
- (id)reportExtensionsCacheResult;
- (void)_cacheMatchingExtensions:(id)extensions cacheKey:(id)key error:(id)error;
- (void)_cacheMatchingExtensionsResult:(id)result cacheKey:(id)key;
- (void)_startContinuousExtensionDiscoveryForAttributes:(id)attributes cacheKey:(id)key;
- (void)_startPrecachingContinuousExtensionDiscovery;
- (void)primeExtensionsResultWithMatchingAttributes:(id)attributes;
@end

@implementation _UIActivityApplicationExtensionsCache

+ (id)sharedExtensionsCache
{
  if (sharedExtensionsCache_onceToken != -1)
  {
    +[_UIActivityApplicationExtensionsCache sharedExtensionsCache];
  }

  v3 = sharedExtensionsCache_extensionsCache;

  return v3;
}

- (_UIActivityApplicationExtensionsCache)init
{
  v10.receiver = self;
  v10.super_class = _UIActivityApplicationExtensionsCache;
  v2 = [(_UIActivityApplicationExtensionsCache *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(_UIActivityApplicationExtensionsCache *)v2 setCachedResults:v3];

    v4 = objc_opt_new();
    [(_UIActivityApplicationExtensionsCache *)v2 setExtensionMatchTokens:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.SharingUI.ShareSheet.primedExtensions", v5);
    [(_UIActivityApplicationExtensionsCache *)v2 setPrimedExtensionsQueue:v6];

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.SharingUI.ShareSheet.discoveryExtensions", v7);
    [(_UIActivityApplicationExtensionsCache *)v2 setDiscoveryQueue:v8];

    v2->_cacheLock._os_unfair_lock_opaque = 0;
    [(_UIActivityApplicationExtensionsCache *)v2 _startPrecachingContinuousExtensionDiscovery];
  }

  return v2;
}

- (void)_startPrecachingContinuousExtensionDiscovery
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = [&unk_1EFEC8F50 count];
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: processing %lu registrations for continuous discovery precaching", buf, 0xCu);
  }

  discoveryQueue = [(_UIActivityApplicationExtensionsCache *)self discoveryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85___UIActivityApplicationExtensionsCache__startPrecachingContinuousExtensionDiscovery__block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(discoveryQueue, block);
}

- (id)_matchingExtensionsCachedResultForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_cacheLock);
  cachedResults = [(_UIActivityApplicationExtensionsCache *)self cachedResults];
  v6 = [cachedResults objectForKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (void)_cacheMatchingExtensionsResult:(id)result cacheKey:(id)key
{
  keyCopy = key;
  resultCopy = result;
  os_unfair_lock_lock(&self->_cacheLock);
  cachedResults = [(_UIActivityApplicationExtensionsCache *)self cachedResults];
  [cachedResults setObject:resultCopy forKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)_cacheMatchingExtensions:(id)extensions cacheKey:(id)key error:(id)error
{
  errorCopy = error;
  keyCopy = key;
  extensionsCopy = extensions;
  v13 = objc_opt_new();
  v11 = [extensionsCopy copy];

  [v13 setExtensions:v11];
  v12 = [errorCopy copy];

  [v13 setError:v12];
  [(_UIActivityApplicationExtensionsCache *)self _cacheMatchingExtensionsResult:v13 cacheKey:keyCopy];
}

- (void)_startContinuousExtensionDiscoveryForAttributes:(id)attributes cacheKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  keyCopy = key;
  discoveryQueue = [(_UIActivityApplicationExtensionsCache *)self discoveryQueue];
  dispatch_assert_queue_V2(discoveryQueue);

  extensionMatchTokens = [(_UIActivityApplicationExtensionsCache *)self extensionMatchTokens];
  v10 = [extensionMatchTokens objectForKeyedSubscript:keyCopy];

  v11 = share_sheet_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v24 = keyCopy;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: continuous discovery is already running for cache key = [%@]", buf, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v24 = keyCopy;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: start continuous discovery for cache key = [%@]", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v13 = MEMORY[0x1E696ABD0];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __98___UIActivityApplicationExtensionsCache__startContinuousExtensionDiscoveryForAttributes_cacheKey___block_invoke;
    v20 = &unk_1E71F9610;
    v14 = keyCopy;
    v21 = v14;
    objc_copyWeak(&v22, buf);
    v15 = [v13 beginMatchingExtensionsWithAttributes:attributesCopy completion:&v17];
    v16 = [(_UIActivityApplicationExtensionsCache *)self extensionMatchTokens:v17];
    [v16 setObject:v15 forKeyedSubscript:v14];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

- (void)primeExtensionsResultWithMatchingAttributes:(id)attributes
{
  v15 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = _cacheKeyWithMatchingAttributes(attributesCopy);
  v6 = [(_UIActivityApplicationExtensionsCache *)self _matchingExtensionsCachedResultForKey:v5];

  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: found cached result. no priming needed for cache key = [%@]", buf, 0xCu);
    }
  }

  else
  {
    self->_primed = 1;
    objc_initWeak(buf, self);
    primedExtensionsQueue = [(_UIActivityApplicationExtensionsCache *)self primedExtensionsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85___UIActivityApplicationExtensionsCache_primeExtensionsResultWithMatchingAttributes___block_invoke;
    block[3] = &unk_1E71F9660;
    objc_copyWeak(&v12, buf);
    v10 = v5;
    v11 = attributesCopy;
    dispatch_async(primedExtensionsQueue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (id)extensionsResultWithMatchingAttributes:(id)attributes
{
  v46 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = _cacheKeyWithMatchingAttributes(attributesCopy);
  v6 = [(_UIActivityApplicationExtensionsCache *)self _matchingExtensionsCachedResultForKey:v5];
  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      extensions = [v6 extensions];
      v9 = [extensions count];
      error = [v6 error];
      *buf = 134218498;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      *&buf[22] = 2112;
      v43 = error;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: found %lu cached extensions for cache key = [%@], error = %@", buf, 0x20u);
    }

    if (self->_primed)
    {
      ++self->_cacheMisses;
    }

    else
    {
      ++self->_cacheHits;
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__0;
    v44 = __Block_byref_object_dispose__0;
    v45 = 0;
    primedExtensionsQueue = [(_UIActivityApplicationExtensionsCache *)self primedExtensionsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80___UIActivityApplicationExtensionsCache_extensionsResultWithMatchingAttributes___block_invoke;
    block[3] = &unk_1E71F9688;
    v35 = buf;
    block[4] = self;
    v12 = v5;
    v34 = v12;
    dispatch_sync(primedExtensionsQueue, block);

    v13 = *(*&buf[8] + 40);
    if (v13)
    {
      v6 = v13;
      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        extensions2 = [v6 extensions];
        v16 = [extensions2 count];
        error2 = [v6 error];
        *v36 = 134218498;
        v37 = v16;
        v38 = 2112;
        v39 = v12;
        v40 = 2112;
        v41 = error2;
        _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: no cache found but primed %lu extensions ready for cache key = [%@], error = %@", v36, 0x20u);
      }
    }

    else
    {
      discoveryQueue = [(_UIActivityApplicationExtensionsCache *)self discoveryQueue];
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __80___UIActivityApplicationExtensionsCache_extensionsResultWithMatchingAttributes___block_invoke_401;
      v29 = &unk_1E71F9638;
      selfCopy = self;
      v19 = attributesCopy;
      v31 = v19;
      v20 = v12;
      v32 = v20;
      dispatch_async(discoveryQueue, &v26);

      v6 = _syncGetExtensionsResultWithMatchingAttributes(v19, 0, 0);
      v21 = share_sheet_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        extensions3 = [v6 extensions];
        v23 = [extensions3 count];
        error3 = [v6 error];
        *v36 = 134218498;
        v37 = v23;
        v38 = 2112;
        v39 = v20;
        v40 = 2112;
        v41 = error3;
        _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "ExtensionsCache: no cache found. got %lu new extensions for cache key = [%@], error = %@", v36, 0x20u);
      }
    }

    ++self->_cacheMisses;

    _Block_object_dispose(buf, 8);
  }

  self->_primed = 0;

  return v6;
}

- (id)reportExtensionsCacheResult
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"extensionsCacheMisses";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cacheMisses];
  v7[1] = @"extensionsCacheHits";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cacheHits];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  self->_cacheMisses = 0;
  self->_cacheHits = 0;

  return v5;
}

@end