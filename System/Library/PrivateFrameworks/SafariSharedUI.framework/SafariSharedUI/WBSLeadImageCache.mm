@interface WBSLeadImageCache
- (BOOL)canHandleRequest:(id)request;
- (WBSLeadImageCache)initWithImageDirectoryURL:(id)l;
- (WBSSiteMetadataProviderDelegate)providerDelegate;
- (id)responseForRequest:(id)request willProvideUpdates:(BOOL *)updates;
- (void)_addRequest:(id)request;
- (void)prepareResponseForRequest:(id)request allowDelayedResponse:(BOOL)response;
- (void)saveImage:(id)image forURL:(id)l completionHandler:(id)handler;
- (void)siteMetadataImageCacheDidEmptyCache:(id)cache;
- (void)stopWatchingUpdatesForRequest:(id)request;
@end

@implementation WBSLeadImageCache

- (WBSLeadImageCache)initWithImageDirectoryURL:(id)l
{
  lCopy = l;
  v19.receiver = self;
  v19.super_class = WBSLeadImageCache;
  v5 = [(WBSLeadImageCache *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"com.apple.Safari.%@.%p.internalQueue", v8, v5];
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_create(uTF8String, MEMORY[0x1E69E96A8]);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v11;

    v13 = [[WBSSiteMetadataImageCache alloc] initWithImageDirectoryURL:lCopy imageType:1];
    imageCache = v5->_imageCache;
    v5->_imageCache = v13;

    [(WBSSiteMetadataImageCache *)v5->_imageCache setDelegate:v5];
    [(WBSSiteMetadataImageCache *)v5->_imageCache setUpImageCache];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    urlStringToRequestSets = v5->_urlStringToRequestSets;
    v5->_urlStringToRequestSets = dictionary;

    v17 = v5;
  }

  return v5;
}

- (void)saveImage:(id)image forURL:(id)l completionHandler:(id)handler
{
  imageCache = self->_imageCache;
  handlerCopy = handler;
  imageCopy = image;
  absoluteString = [l absoluteString];
  [(WBSSiteMetadataImageCache *)imageCache saveImageToDisk:imageCopy forKeyString:absoluteString completionHandler:handlerCopy];
}

- (void)prepareResponseForRequest:(id)request allowDelayedResponse:(BOOL)response
{
  requestCopy = request;
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke;
  v8[3] = &unk_1E8285DC0;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  objc_copyWeak(&v10, &location);
  dispatch_barrier_async(internalQueue, v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke(id *a1)
{
  [a1[4] _addRequest:a1[5]];
  v2 = [a1[5] url];
  v3 = *(a1[4] + 1);
  v4 = [v2 absoluteString];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke_2;
  v8[3] = &unk_1E8285D98;
  v5 = v2;
  v6 = a1[4];
  v7 = a1[5];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  objc_copyWeak(&v12, a1 + 6);
  [v3 getImageForKeyString:v4 completionHandler:v8];

  objc_destroyWeak(&v12);
}

void __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [WBSLeadImageCacheResponse responseWithURL:*(a1 + 32) thumbnail:v3];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
    [WeakRetained siteMetadataProvider:*(a1 + 40) didReceiveResponse:v4 ofType:0 didReceiveNewData:1 forRequest:*(a1 + 48)];
  }

  else
  {
    v6 = +[WBSImageFetchingURLSessionTaskManager sharedManager];
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke_3;
    v8[3] = &unk_1E8285D70;
    objc_copyWeak(&v11, (a1 + 56));
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    [v6 downloadImageWithURL:v7 options:1 completionHandler:v8];

    objc_destroyWeak(&v11);
  }
}

void __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke_4;
    v7[3] = &unk_1E82839E8;
    v7[4] = WeakRetained;
    v8 = v3;
    v9 = a1[4];
    v10 = a1[5];
    dispatch_async(v6, v7);
  }
}

void __68__WBSLeadImageCache_prepareResponseForRequest_allowDelayedResponse___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  if (*(a1 + 40))
  {
    v2 = [WBSImageUtilities squareThumbnailImageFromImage:*&thumbnailWidthInPixels thumbnailWidthInPixels:?];
    [*(a1 + 32) saveImage:v2 forURL:*(a1 + 48) completionHandler:0];
    v3 = [WBSLeadImageCacheResponse responseWithURL:*(a1 + 48) thumbnail:v2];
    [WeakRetained siteMetadataProvider:*(a1 + 32) didReceiveResponse:v3 ofType:0 didReceiveNewData:1 forRequest:*(a1 + 56)];
  }

  else
  {
    v2 = [WBSLeadImageCacheResponse responseWithURL:*(a1 + 48) thumbnail:0];
    [WeakRetained siteMetadataProvider:*(a1 + 32) didReceiveResponse:v2 ofType:0 didReceiveNewData:1 forRequest:*(a1 + 56)];
  }
}

- (id)responseForRequest:(id)request willProvideUpdates:(BOOL *)updates
{
  v5 = [request url];
  if (v5)
  {
    v6 = 0;
    *updates = 1;
  }

  else
  {
    *updates = 0;
    v6 = [WBSLeadImageCacheResponse responseWithURL:0 thumbnail:0];
  }

  return v6;
}

- (BOOL)canHandleRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)stopWatchingUpdatesForRequest:(id)request
{
  requestCopy = request;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WBSLeadImageCache_stopWatchingUpdatesForRequest___block_invoke;
  v7[3] = &unk_1E82834A0;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_barrier_async(internalQueue, v7);
}

void __51__WBSLeadImageCache_stopWatchingUpdatesForRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  v4 = [v2 absoluteString];

  v3 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:v4];
  [v3 removeObject:*(a1 + 32)];
  if (![v3 count])
  {
    [*(*(a1 + 40) + 24) removeObjectForKey:v4];
  }
}

- (void)_addRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy url];
  absoluteString = [v4 absoluteString];

  v6 = [(NSMutableDictionary *)self->_urlStringToRequestSets objectForKeyedSubscript:absoluteString];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    [(NSMutableDictionary *)self->_urlStringToRequestSets setObject:v6 forKeyedSubscript:absoluteString];
  }

  [v6 addObject:requestCopy];
}

- (void)siteMetadataImageCacheDidEmptyCache:(id)cache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__WBSLeadImageCache_siteMetadataImageCacheDidEmptyCache___block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __57__WBSLeadImageCache_siteMetadataImageCacheDidEmptyCache___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__WBSLeadImageCache_siteMetadataImageCacheDidEmptyCache___block_invoke_2;
  v4[3] = &unk_1E8285DE8;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __57__WBSLeadImageCache_siteMetadataImageCacheDidEmptyCache___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(*(a1 + 32) + 8) setImageState:1 forKeyString:a2];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
        v12 = *(a1 + 32);
        v13 = [v10 url];
        v14 = [WBSLeadImageCacheResponse responseWithURL:v13 thumbnail:0];
        [WeakRetained siteMetadataProvider:v12 didReceiveResponse:v14 ofType:0 didReceiveNewData:0 forRequest:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (WBSSiteMetadataProviderDelegate)providerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);

  return WeakRetained;
}

@end