@interface SSVURLCache
- (SSVURLCache)init;
- (SSVURLCache)initWithConfiguration:(id)a3;
- (id)cachedConnectionResponseForRequestProperties:(id)a3 cachedResponse:(id *)a4;
- (id)cachedResponseForRequest:(id)a3;
- (void)configureRequest:(id)a3;
- (void)dealloc;
- (void)loadMemoryCacheFromDisk;
- (void)removeAllCachedResponses;
- (void)saveMemoryCacheToDisk;
- (void)storeCachedResponse:(id)a3 forRequest:(id)a4;
- (void)storeConnectionResponse:(id)a3 forRequestProperties:(id)a4 userInfo:(id)a5;
@end

@implementation SSVURLCache

- (SSVURLCache)init
{
  v6.receiver = self;
  v6.super_class = SSVURLCache;
  v2 = [(SSVURLCache *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVURLCache.accessQueue", 0);
    accessSerialQueue = v2->_accessSerialQueue;
    v2->_accessSerialQueue = v3;
  }

  return v2;
}

- (SSVURLCache)initWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = [(SSVURLCache *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [(SSVURLCacheConfiguration *)v7->_configuration sessionIdentifier];
    if (v8)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if ([(SSVURLCacheConfiguration *)v7->_configuration supportsProcessSharing])
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E695AD70], *MEMORY[0x1E695E4D0]);
      }

      v7->_cacheStorageSession = _CFURLStorageSessionCreate();
      CFRelease(Mutable);
    }

    if (v7->_cacheStorageSession)
    {
      v10 = _CFURLStorageSessionCopyCache();
      if (v10)
      {
        v11 = v10;
        CFURLCacheSetMemoryCapacity();
        v7->_urlCache = v11;
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  cacheStorageSession = self->_cacheStorageSession;
  if (cacheStorageSession)
  {
    CFRelease(cacheStorageSession);
  }

  urlCache = self->_urlCache;
  if (urlCache)
  {
    CFRelease(urlCache);
  }

  v5.receiver = self;
  v5.super_class = SSVURLCache;
  [(SSVURLCache *)&v5 dealloc];
}

- (id)cachedResponseForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 _CFURLRequest];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSVURLCache_cachedResponseForRequest___block_invoke;
  block[3] = &unk_1E84AD6B8;
  block[5] = &v19;
  block[6] = v5;
  block[4] = self;
  dispatch_sync(accessSerialQueue, block);
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"_SSVURLCPEB" length:11 freeWhenDone:0];
  v8 = [v20[5] data];
  v9 = [v8 isEqualToData:v7];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAF8]);
    v11 = [v20[5] response];
    v12 = [MEMORY[0x1E695DEF0] data];
    v13 = [v20[5] userInfo];
    v14 = [v10 initWithResponse:v11 data:v12 userInfo:v13 storagePolicy:{objc_msgSend(v20[5], "storagePolicy")}];
    v15 = v20[5];
    v20[5] = v14;
  }

  v16 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v16;
}

void __40__SSVURLCache_cachedResponseForRequest___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = CFURLCacheCopyResponseForRequest();
    if (v2)
    {
      v3 = v2;
      v4 = [objc_alloc(MEMORY[0x1E696AAF8]) _initWithCFCachedURLResponse:v2];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      CFRelease(v3);
    }
  }
}

- (id)cachedConnectionResponseForRequestProperties:(id)a3 cachedResponse:(id *)a4
{
  v6 = [a3 copyURLRequest];
  if (!v6)
  {
    v8 = 0;
LABEL_10:
    v12 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v16 = v8;
    *a4 = v8;
    goto LABEL_12;
  }

  v7 = [(SSVURLCache *)self cachedResponseForRequest:v6];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = [v7 response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [SSURLConnectionResponse alloc];
    v11 = [v8 data];
    v12 = [(SSURLConnectionResponse *)v10 initWithURLResponse:v9 bodyData:v11];

    v13 = [v8 userInfo];
    v14 = [v13 objectForKey:@"metrics-page-event-body-dictionary"];
    if (v14)
    {
      v15 = [(SSMetricsMutableEvent *)[SSMetricsPageEvent alloc] initWithBodyDictionary:v14];
      if (v15)
      {
        [(SSURLConnectionResponse *)v12 setMetricsPageEvent:v15];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    goto LABEL_11;
  }

LABEL_12:
  v17 = v12;

  return v12;
}

- (void)configureRequest:(id)a3
{
  v5 = a3;
  v6 = [a3 _CFURLRequest];
  if (self->_cacheStorageSession)
  {

    MEMORY[0x1EEDB4B08](v6);
  }
}

- (void)loadMemoryCacheFromDisk
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SSVURLCache_loadMemoryCacheFromDisk__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessSerialQueue, block);
}

uint64_t __38__SSVURLCache_loadMemoryCacheFromDisk__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return MEMORY[0x1EEDB4AD8]();
  }

  return result;
}

- (void)removeAllCachedResponses
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SSVURLCache_removeAllCachedResponses__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessSerialQueue, block);
}

uint64_t __39__SSVURLCache_removeAllCachedResponses__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return MEMORY[0x1EEDB4820]();
  }

  return result;
}

- (void)saveMemoryCacheToDisk
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SSVURLCache_saveMemoryCacheToDisk__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessSerialQueue, block);
}

uint64_t __36__SSVURLCache_saveMemoryCacheToDisk__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return MEMORY[0x1EEDB4AE0]();
  }

  return result;
}

- (void)storeCachedResponse:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 data];
  v9 = [v8 length];

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAF8]);
    v11 = [v6 response];
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"_SSVURLCPEB" length:11 freeWhenDone:0];
    v13 = [v6 userInfo];
    v14 = [v10 initWithResponse:v11 data:v12 userInfo:v13 storagePolicy:{objc_msgSend(v6, "storagePolicy")}];

    v6 = v14;
  }

  if (self->_urlCache)
  {
    v15 = [v7 _CFURLRequest];
    [v6 _CFCachedURLResponse];
    CFURLCacheAddCachedResponseForRequest();
    accessSerialQueue = self->_accessSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SSVURLCache_storeCachedResponse_forRequest___block_invoke;
    block[3] = &unk_1E84AD6E0;
    v18 = v6;
    v19 = self;
    v20 = v15;
    dispatch_async(accessSerialQueue, block);
  }
}

void __46__SSVURLCache_storeCachedResponse_forRequest___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v13 = [*(a1 + 32) userInfo];
  v3 = [*(a1 + 32) data];
  while (CFAbsoluteTimeGetCurrent() - Current < 3.0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = CFURLCacheCopyResponseForRequest();
    if (v5)
    {
      v6 = v5;
      v7 = [objc_alloc(MEMORY[0x1E696AAF8]) _initWithCFCachedURLResponse:v5];
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 userInfo];
    v9 = v8;
    if (v8 == v13 || [v8 isEqualToDictionary:?])
    {
      v10 = [v7 data];
      v11 = v10;
      if (v10 == v3)
      {

        objc_autoreleasePoolPop(v4);
        break;
      }

      v12 = [v10 isEqualToData:v3];

      objc_autoreleasePoolPop(v4);
      if (v12)
      {
        break;
      }
    }

    else
    {

      objc_autoreleasePoolPop(v4);
    }
  }
}

- (void)storeConnectionResponse:(id)a3 forRequestProperties:(id)a4 userInfo:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v20 URLResponse];
  v11 = [v9 copyURLRequest];

  if (v11 && v10)
  {
    v12 = [v20 metricsPageEvent];
    v13 = [v12 bodyDictionary];
    v14 = v13;
    if (v8)
    {
      v15 = [v8 mutableCopy];
      v16 = v15;
      if (!v14)
      {
LABEL_10:
        v17 = objc_alloc(MEMORY[0x1E696AAF8]);
        v18 = [v20 bodyData];
        v19 = [v17 initWithResponse:v10 data:v18 userInfo:v16 storagePolicy:0];

        [(SSVURLCache *)self storeCachedResponse:v19 forRequest:v11];
        goto LABEL_11;
      }

      if (v15)
      {
LABEL_9:
        [v16 setObject:v14 forKey:@"metrics-page-event-body-dictionary"];
        goto LABEL_10;
      }
    }

    else if (!v13)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    goto LABEL_9;
  }

LABEL_11:
}

@end