@interface RadioImageCache
+ (_CFURLCache)_sharedCFURLCache;
+ (__CFURLStorageSession)_newSharedCacheStorageSession;
+ (id)sharedCache;
- (RadioImageCache)init;
- (id)_cachedResponseForRequest:(id)request;
- (id)_init;
- (id)_requestForRadioArtwork:(id)artwork;
- (id)cachedImageDataForRadioArtwork:(id)artwork MIMEType:(id *)type;
- (id)cachedImageDataForStation:(id)station withExactSize:(CGSize)size MIMEType:(id *)type;
- (void)_removeAllCachedImages;
- (void)dealloc;
- (void)loadImageForRadioArtwork:(id)artwork withCompletionHandler:(id)handler;
- (void)loadImageForStation:(id)station withSize:(CGSize)size completionHandler:(id)handler;
@end

@implementation RadioImageCache

- (id)_requestForRadioArtwork:(id)artwork
{
  v3 = [artwork URL];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v3];
    _newSharedCacheStorageSession = [objc_opt_class() _newSharedCacheStorageSession];
    if (_newSharedCacheStorageSession)
    {
      v6 = _newSharedCacheStorageSession;
      [v4 _CFURLRequest];
      _CFURLRequestSetStorageSession();
      CFRelease(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_cachedResponseForRequest:(id)request
{
  requestCopy = request;
  [request _CFURLRequest];
  if ([objc_opt_class() _sharedCFURLCache] && (v5 = CFURLCacheCopyResponseForRequest()) != 0)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CBAB28]) _initWithCFCachedURLResponse:v5];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removeAllCachedImages
{
  if ([objc_opt_class() _sharedCFURLCache])
  {

    MEMORY[0x28210CFB0]();
  }
}

- (void)loadImageForStation:(id)station withSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  artworkCollection = [station artworkCollection];
  v11 = [artworkCollection bestArtworkForPointSize:{width, height}];

  [(RadioImageCache *)self loadImageForRadioArtwork:v11 withCompletionHandler:handlerCopy];
}

- (void)loadImageForRadioArtwork:(id)artwork withCompletionHandler:(id)handler
{
  artworkCopy = artwork;
  handlerCopy = handler;
  v8 = [(RadioImageCache *)self _requestForRadioArtwork:artworkCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA8C8]);
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_279AEA7C8;
    objc_copyWeak(&v14, &location);
    v13 = handlerCopy;
    v12 = v8;
    [v9 addExecutionBlock:v11];
    [(NSOperationQueue *)self->_imageRequestQueue addOperation:v9];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke;
    block[3] = &unk_279AEA750;
    v17 = handlerCopy;
    dispatch_async(v10, block);

    v9 = v17;
    goto LABEL_5;
  }

LABEL_6:
}

void __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ![WeakRetained isCancelled])
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy_;
    v46 = __Block_byref_object_dispose_;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy_;
    v34[4] = __Block_byref_object_dispose_;
    v35 = 0;
    v7 = dispatch_semaphore_create(0);
    v8 = [MEMORY[0x277CBABB8] sharedSession];
    v9 = *(a1 + 32);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke_15;
    v29[3] = &unk_279AEA778;
    v31 = &v36;
    v32 = &v42;
    v33 = v34;
    v10 = v7;
    v30 = v10;
    v11 = [v8 dataTaskWithRequest:v9 completionHandler:v29];

    if (v11)
    {
      [v11 resume];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (!v37[5])
    {
      v12 = v43[5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v43[5];
        v14 = [v13 statusCode];
        v15 = v14;
        if (v14 > 399 || !v14)
        {
          v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
          [v16 setObject:v17 forKey:@"statusCode"];

          v18 = [MEMORY[0x277CBAB48] localizedStringForStatusCode:v15];
          if (v18)
          {
            [v16 setObject:v18 forKey:*MEMORY[0x277CCA450]];
          }

          v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1 userInfo:v16];
          v20 = v37[5];
          v37[5] = v19;
        }
      }
    }

    if (v37[5])
    {
      v21 = 0;
    }

    else
    {
      v21 = [v43[5] MIMEType];
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = dispatch_get_global_queue(0, 0);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke_2_23;
      v24[3] = &unk_279AEA7A0;
      v26 = v22;
      v27 = v34;
      v25 = v21;
      v28 = &v36;
      dispatch_async(v23, v24);
    }

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&v42, 8);
    v6 = v47;
    goto LABEL_21;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke_3;
    block[3] = &unk_279AEA750;
    v49 = v4;
    dispatch_async(v5, block);

    v6 = v49;
LABEL_21:
  }
}

void __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __66__RadioImageCache_loadImageForRadioArtwork_withCompletionHandler___block_invoke_15(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  v15 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)cachedImageDataForStation:(id)station withExactSize:(CGSize)size MIMEType:(id *)type
{
  height = size.height;
  width = size.width;
  artworkCollection = [station artworkCollection];
  v10 = [artworkCollection bestArtworkForPointSize:{width, height}];

  [v10 pointSize];
  if (width == v12 && height == v11)
  {
    v14 = [(RadioImageCache *)self cachedImageDataForRadioArtwork:v10 MIMEType:type];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)cachedImageDataForRadioArtwork:(id)artwork MIMEType:(id *)type
{
  v6 = [(RadioImageCache *)self _requestForRadioArtwork:artwork];
  if (v6)
  {
    v7 = [(RadioImageCache *)self _cachedResponseForRequest:v6];
    v8 = v7;
    if (type)
    {
      response = [v7 response];
      *type = [response MIMEType];
    }

    data = [v8 data];
  }

  else
  {
    data = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  return data;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_imageRequestQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = RadioImageCache;
  [(RadioImageCache *)&v3 dealloc];
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RadioImageCache;
  v2 = [(RadioImageCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    imageRequestQueue = v2->_imageRequestQueue;
    v2->_imageRequestQueue = v3;

    [(NSOperationQueue *)v2->_imageRequestQueue setMaxConcurrentOperationCount:5];
    [(NSOperationQueue *)v2->_imageRequestQueue setName:@"com.apple.Radio.RadioImageCache.imageRequestQueue"];
  }

  return v2;
}

- (RadioImageCache)init
{
  [MEMORY[0x277CBEAD8] raise:@"RadioImageCacheInitializationException" format:@"Do not use -init. Use +sharedCache instead."];

  return 0;
}

+ (__CFURLStorageSession)_newSharedCacheStorageSession
{
  if (_newSharedCacheStorageSession_sOnce != -1)
  {
    dispatch_once(&_newSharedCacheStorageSession_sOnce, &__block_literal_global_103);
  }

  result = _newSharedCacheStorageSession_storageSession;
  if (_newSharedCacheStorageSession_storageSession)
  {
    result = CFRetain(_newSharedCacheStorageSession_storageSession);
    _newSharedCacheStorageSession_storageSession = result;
  }

  return result;
}

void __48__RadioImageCache__newSharedCacheStorageSession__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBACE0], *MEMORY[0x277CBED28]);
  _newSharedCacheStorageSession_storageSession = _CFURLStorageSessionCreate();
  CFRelease(Mutable);

  objc_autoreleasePoolPop(v0);
}

+ (_CFURLCache)_sharedCFURLCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__RadioImageCache__sharedCFURLCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedCFURLCache_sOnce != -1)
  {
    dispatch_once(&_sharedCFURLCache_sOnce, block);
  }

  return _sharedCFURLCache__shared;
}

void __36__RadioImageCache__sharedCFURLCache__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() _newSharedCacheStorageSession];
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x277CBECE8];
    v5 = _CFURLStorageSessionCopyCache();
    if (v5)
    {
      v6 = v5;
      CFURLCacheSetMemoryCapacity();
      _sharedCFURLCache__shared = v6;
    }

    CFRelease(v3);
  }
}

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__RadioImageCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, block);
  }

  v2 = sharedCache___imageCache;

  return v2;
}

uint64_t __30__RadioImageCache_sharedCache__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedCache___imageCache = [objc_alloc(objc_opt_class()) _init];

  return MEMORY[0x2821F96F8]();
}

@end