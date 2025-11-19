@interface PXContentSyndicationPhotoKitSocialLayerHighlightProvider
+ (PXContentSyndicationPhotoKitSocialLayerHighlightProvider)sharedInstance;
- (BOOL)isSocialLayerHighlightCachedForAsset:(id)a3;
- (PXContentSyndicationPhotoKitSocialLayerHighlightProvider)init;
- (PXContentSyndicationPhotoKitSocialLayerHighlightProvider)initWithHighlightFetchBlock:(id)a3;
- (id)_serialQueue_fetchSocialLayerHighlightForAsset:(id)a3 usingHighlightResultBlock:(id)a4;
- (id)cachedSocialLayerHighlightForAsset:(id)a3;
- (id)socialLayerHighlightForAsset:(id)a3;
- (void)_didChangeHighlight:(id)a3 forAsset:(id)a4 withChangeObservers:(id)a5;
- (void)_serialQueue_registerChangeObserver:(id)a3 forAsset:(id)a4;
- (void)_serialQueue_unregisterChangeObserver:(id)a3 forAsset:(id)a4;
- (void)fetchSocialLayerHighlightForAsset:(id)a3 completion:(id)a4;
- (void)registerChangeObserver:(id)a3 forAsset:(id)a4;
- (void)unregisterChangeObserver:(id)a3 forAsset:(id)a4;
@end

@implementation PXContentSyndicationPhotoKitSocialLayerHighlightProvider

- (void)_didChangeHighlight:(id)a3 forAsset:(id)a4 withChangeObservers:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = PLSocialLayerHighlightProviderGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 componentsJoinedByString:{@", "}];
    *buf = 138413314;
    v21 = v12;
    v22 = 2048;
    v23 = v8;
    v24 = 2112;
    v25 = v13;
    v26 = 2048;
    v27 = v9;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "Did change SLHighlight: <%@:%p> for asset: <%@:%p> with change observers: (%@)", buf, 0x34u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__PXContentSyndicationPhotoKitSocialLayerHighlightProvider__didChangeHighlight_forAsset_withChangeObservers___block_invoke;
  v17[3] = &unk_1E7741D78;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [v10 enumerateObjectsUsingBlock:v17];
}

- (void)_serialQueue_unregisterChangeObserver:(id)a3 forAsset:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  serialQueue = self->_serialQueue;
  v8 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v9 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:v6];
  [v9 removeObject:v8];

  if (![v9 count])
  {
    v10 = PLSocialLayerHighlightProviderGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "No observers for asset: <%@:%p>", &v11, 0x16u);
    }

    [(PXLRUMemoryCache *)self->_highlightsCache removeObjectForKey:v6];
  }
}

- (void)_serialQueue_registerChangeObserver:(id)a3 forAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_observers setObject:v8 forKeyedSubscript:v7];
  }

  [v8 addObject:v6];
  objc_initWeak(&location, self);
  v9 = [(PXContentSyndicationPhotoKitSocialLayerHighlightProvider *)self _serialQueue_fetchSocialLayerHighlightForAsset:v7 usingHighlightResultBlock:self->_highlightFetchBlock];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__PXContentSyndicationPhotoKitSocialLayerHighlightProvider__serialQueue_registerChangeObserver_forAsset___block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v17, &location);
  v14 = v9;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __105__PXContentSyndicationPhotoKitSocialLayerHighlightProvider__serialQueue_registerChangeObserver_forAsset___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = *(a1 + 48);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [WeakRetained _didChangeHighlight:v3 forAsset:v4 withChangeObservers:v5];
}

- (id)_serialQueue_fetchSocialLayerHighlightForAsset:(id)a3 usingHighlightResultBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"highlightFetchBlock"}];

LABEL_3:
  v9 = [(PXLRUMemoryCache *)self->_highlightsCache objectForKey:v7];
  if (v9)
  {
    goto LABEL_13;
  }

  if (![(NSHashTable *)self->_assetsWithNilHighlightsCache containsObject:v7])
  {
    v10 = PLSocialLayerHighlightProviderGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v18 = objc_opt_class();
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Fetching highlight for asset: <%@:%p>", buf, 0x16u);
    }

    v11 = v8[2](v8, v7);
    if (v11)
    {
      v9 = v11;
      [(PXLRUMemoryCache *)self->_highlightsCache setObject:v11 forKey:v7];
      [(NSHashTable *)self->_assetsWithNilHighlightsCache removeObject:v7];
      goto LABEL_13;
    }

    if ([(NSHashTable *)self->_assetsWithNilHighlightsCache count]== 128)
    {
      assetsWithNilHighlightsCache = self->_assetsWithNilHighlightsCache;
      v13 = [(NSHashTable *)assetsWithNilHighlightsCache anyObject];
      [(NSHashTable *)assetsWithNilHighlightsCache removeObject:v13];
    }

    [(NSHashTable *)self->_assetsWithNilHighlightsCache addObject:v7];
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)socialLayerHighlightForAsset:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    v21 = [v7 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v19, v21}];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:126 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v19}];
  }

LABEL_3:
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__191560;
  v29 = __Block_byref_object_dispose__191561;
  v30 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_socialLayerHighlightForAsset___block_invoke;
  block[3] = &unk_1E7746448;
  v24 = &v25;
  block[4] = self;
  v9 = v6;
  v23 = v9;
  dispatch_sync(serialQueue, block);
  v10 = PLSocialLayerHighlightProviderGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v26[5];
    v13 = objc_opt_class();
    *buf = 138413058;
    v32 = v11;
    v33 = 2048;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2048;
    v38 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Get highlight: <%@:%p> for asset: <%@:%p>", buf, 0x2Au);
  }

  v14 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v14;
}

void __89__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_socialLayerHighlightForAsset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _serialQueue_fetchSocialLayerHighlightForAsset:*(a1 + 40) usingHighlightResultBlock:*(*(a1 + 32) + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)cachedSocialLayerHighlightForAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = [(PXLRUMemoryCache *)self->_highlightsCache objectForKey:v5];

  return v6;
}

- (BOOL)isSocialLayerHighlightCachedForAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = [(PXLRUMemoryCache *)self->_highlightsCache allKeys];
  v7 = [v6 containsObject:v5];

  v8 = (v7 & 1) != 0 || [(NSHashTable *)self->_assetsWithNilHighlightsCache containsObject:v5];
  return v8;
}

- (void)fetchSocialLayerHighlightForAsset:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:95 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v16}];
LABEL_6:

    goto LABEL_3;
  }

  v9 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v9 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:95 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v16, v18}];

    goto LABEL_6;
  }

LABEL_3:
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_fetchSocialLayerHighlightForAsset_completion___block_invoke;
  block[3] = &unk_1E774A0E0;
  block[4] = self;
  v20 = v7;
  v21 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(serialQueue, block);
}

void __105__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_fetchSocialLayerHighlightForAsset_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _serialQueue_fetchSocialLayerHighlightForAsset:a1[5] usingHighlightResultBlock:*(a1[4] + 5)];
  v3 = v2;
  if (a1[6])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_fetchSocialLayerHighlightForAsset_completion___block_invoke_2;
    block[3] = &unk_1E774A0E0;
    v5 = v2;
    v6 = a1[5];
    v7 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __105__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_fetchSocialLayerHighlightForAsset_completion___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = PLSocialLayerHighlightProviderGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = a1[4];
    v5 = objc_opt_class();
    v6 = a1[5];
    v8 = 138413058;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEBUG, "Get highlight: <%@:%p> for asset: <%@:%p>", &v8, 0x2Au);
  }

  return (*(a1[6] + 16))();
}

- (void)unregisterChangeObserver:(id)a3 forAsset:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"changeObserver"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v10 = PLSocialLayerHighlightProviderGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v27 = objc_opt_class();
    v28 = 2048;
    v29 = v7;
    v30 = 2112;
    v31 = objc_opt_class();
    v32 = 2048;
    v33 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Un-register change observer: <%@:%p> for asset: <%@:%p>", buf, 0x2Au);
  }

  v11 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:84 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v19}];
LABEL_12:

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    v21 = [v11 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:84 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v19, v21}];

    goto LABEL_12;
  }

LABEL_7:
  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_unregisterChangeObserver_forAsset___block_invoke;
  block[3] = &unk_1E774B708;
  objc_copyWeak(&v25, buf);
  v23 = v7;
  v24 = v11;
  v13 = v11;
  v14 = v7;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __94__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_unregisterChangeObserver_forAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _serialQueue_unregisterChangeObserver:*(a1 + 32) forAsset:*(a1 + 40)];
}

- (void)registerChangeObserver:(id)a3 forAsset:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"changeObserver"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v10 = PLSocialLayerHighlightProviderGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v27 = objc_opt_class();
    v28 = 2048;
    v29 = v7;
    v30 = 2112;
    v31 = objc_opt_class();
    v32 = 2048;
    v33 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Register change observer: <%@:%p> for asset: <%@:%p>", buf, 0x2Au);
  }

  v11 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:70 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v19}];
LABEL_12:

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    v21 = [v11 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:70 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v19, v21}];

    goto LABEL_12;
  }

LABEL_7:
  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_registerChangeObserver_forAsset___block_invoke;
  block[3] = &unk_1E774B708;
  objc_copyWeak(&v25, buf);
  v23 = v7;
  v24 = v11;
  v13 = v11;
  v14 = v7;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __92__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_registerChangeObserver_forAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _serialQueue_registerChangeObserver:*(a1 + 32) forAsset:*(a1 + 40)];
}

- (PXContentSyndicationPhotoKitSocialLayerHighlightProvider)initWithHighlightFetchBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"highlightFetchBlock"}];
  }

  v20.receiver = self;
  v20.super_class = PXContentSyndicationPhotoKitSocialLayerHighlightProvider;
  v6 = [(PXContentSyndicationPhotoKitSocialLayerHighlightProvider *)&v20 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.PXContentSyndicationPhotoKitSocialLayerHighlightProvider", v7);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observers = v6->_observers;
    v6->_observers = v10;

    v12 = objc_alloc_init(PXLRUMemoryCache);
    highlightsCache = v6->_highlightsCache;
    v6->_highlightsCache = v12;

    v14 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:128];
    assetsWithNilHighlightsCache = v6->_assetsWithNilHighlightsCache;
    v6->_assetsWithNilHighlightsCache = v14;

    v16 = [v5 copy];
    highlightFetchBlock = v6->_highlightFetchBlock;
    v6->_highlightFetchBlock = v16;
  }

  return v6;
}

- (PXContentSyndicationPhotoKitSocialLayerHighlightProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitSocialLayerHighlightProvider.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXContentSyndicationPhotoKitSocialLayerHighlightProvider init]"}];

  abort();
}

+ (PXContentSyndicationPhotoKitSocialLayerHighlightProvider)sharedInstance
{
  if (sharedInstance_onceToken_191584 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_191584, &__block_literal_global_206_191585);
  }

  v3 = sharedInstance_sharedInstance_191586;

  return v3;
}

void __74__PXContentSyndicationPhotoKitSocialLayerHighlightProvider_sharedInstance__block_invoke()
{
  v0 = [[PXContentSyndicationPhotoKitSocialLayerHighlightProvider alloc] initWithHighlightFetchBlock:&__block_literal_global_210];
  v1 = sharedInstance_sharedInstance_191586;
  sharedInstance_sharedInstance_191586 = v0;
}

@end