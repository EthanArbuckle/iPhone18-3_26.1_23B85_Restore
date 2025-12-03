@interface WBSLPLinkMetadataProvider
+ (id)linkMetadataForURL:(id)l webView:(id)view iconCache:(id)cache;
- (BOOL)_isImageInMetadata:(id)metadata;
- (BOOL)_shouldStartFetchOperationForRequestIgnoringRequestFetchingPreference:(id)preference withMetadataInfo:(id)info;
- (BOOL)_shouldUseWebViewToUpdateMetadataWithInfo:(id)info request:(id)request existingOperation:(id)operation;
- (BOOL)cacheData:(id)data forRequest:(id)request usingToken:(id)token;
- (BOOL)canHandleRequest:(id)request;
- (WBSLPLinkMetadataProvider)initWithCacheDirectoryURL:(id)l;
- (WBSSiteMetadataProviderDelegate)providerDelegate;
- (id)_preparedResponseForRequest:(id)request;
- (void)_cacheMetadata:(id)metadata forRequest:(id)request completionHandler:(id)handler;
- (void)_didReceiveNewMetadata:(id)metadata forRequest:(id)request;
- (void)_discardPreparedResponseForRequest:(id)request;
- (void)_fetchMetadataForWebView:(id)view url:(id)url completionHandler:(id)handler;
- (void)_getCachedMetadataInfoForRequest:(id)request completionHandler:(id)handler;
- (void)_getCachedMetadataWithInfo:(id)info completionHandler:(id)handler;
- (void)_notifyResponse:(id)response ofType:(int64_t)type didReceiveNewData:(BOOL)data forRequest:(id)request;
- (void)_prepareCachedResponseForRequest:(id)request;
- (void)_provideCachedResponseIfAvailableForRequest:(id)request withMetadataInfo:(id)info;
- (void)_replacePreparedResponseWithData:(id)data forRequest:(id)request;
- (void)_serveAllPendingRequests;
- (void)_setUpCache;
- (void)_setUpCachedResponsePolicy;
- (void)_storeAndNotifySuccessfulResponseForRequest:(id)request withMetadata:(id)metadata info:(id)info didReceiveNewData:(BOOL)data;
- (void)_storePreparedResponse:(id)response forRequest:(id)request;
- (void)_updateMetadataIfNeededUsingWebView:(id)view url:(id)url;
- (void)emptyCaches;
- (void)prepareResponseForRequest:(id)request allowDelayedResponse:(BOOL)response;
- (void)releaseResponseForURLString:(id)string;
- (void)retainResponseForURLString:(id)string;
- (void)reuseMetadataOfURLString:(id)string forURLString:(id)lString completionHandler:(id)handler;
- (void)savePendingChangesBeforeTermination;
- (void)stopWatchingUpdatesForRequest:(id)request;
- (void)updateMetadataIfNeededUsingWebView:(id)view;
@end

@implementation WBSLPLinkMetadataProvider

- (void)_setUpCachedResponsePolicy
{
  objc_initWeak(&location, self);
  v3 = [WBSCacheRetainReleasePolicy alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__WBSLPLinkMetadataProvider__setUpCachedResponsePolicy__block_invoke;
  v6[3] = &unk_1E8285FE8;
  objc_copyWeak(&v7, &location);
  v4 = [(WBSCacheRetainReleasePolicy *)v3 initWithPurgeBlock:v6];
  cachedResponsePolicy = self->_cachedResponsePolicy;
  self->_cachedResponsePolicy = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_setUpCache
{
  objc_initWeak(&location, self);
  v3 = [[WBSLPLinkMetadataCache alloc] initWithCacheDirectoryURL:self->_cacheDirectoryURL expirationInterval:2592000.0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__WBSLPLinkMetadataProvider__setUpCache__block_invoke;
  v5[3] = &unk_1E8285FC0;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  [(WBSLPLinkMetadataCache *)v4 openWithCompletionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __40__WBSLPLinkMetadataProvider__setUpCache__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = WeakRetained[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__WBSLPLinkMetadataProvider__setUpCache__block_invoke_2;
      block[3] = &unk_1E8283080;
      block[4] = v5;
      dispatch_async(v6, block);
    }

    else
    {
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__WBSLPLinkMetadataProvider__setUpCache__block_invoke_3;
      v8[3] = &unk_1E8283C90;
      objc_copyWeak(&v10, (a1 + 40));
      v9 = *(a1 + 32);
      [v7 prewarmInMemoryStoreWithCompletionHandler:v8];

      objc_destroyWeak(&v10);
    }
  }
}

void __40__WBSLPLinkMetadataProvider__setUpCache__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__WBSLPLinkMetadataProvider__setUpCache__block_invoke_4;
    v5[3] = &unk_1E82834A0;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

uint64_t __40__WBSLPLinkMetadataProvider__setUpCache__block_invoke_4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  *(*(a1 + 32) + 48) = 0;
  v2 = *(a1 + 32);

  return [v2 _serveAllPendingRequests];
}

- (void)_serveAllPendingRequests
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_pendingUpdatesUsingWebViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        webView = [v8 webView];
        if (webView)
        {
          v10 = [v8 url];
          [(WBSLPLinkMetadataProvider *)self _updateMetadataIfNeededUsingWebView:webView url:v10];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_pendingRequests;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        request = [v16 request];
        -[WBSLPLinkMetadataProvider prepareResponseForRequest:allowDelayedResponse:](self, "prepareResponseForRequest:allowDelayedResponse:", request, [v16 allowDelayedResponse]);
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  pendingUpdatesUsingWebViews = self->_pendingUpdatesUsingWebViews;
  self->_pendingUpdatesUsingWebViews = 0;

  pendingRequests = self->_pendingRequests;
  self->_pendingRequests = 0;
}

+ (id)linkMetadataForURL:(id)l webView:(id)view iconCache:(id)cache
{
  lCopy = l;
  viewCopy = view;
  cacheCopy = cache;
  host = [lCopy host];
  if (!host)
  {
    goto LABEL_7;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v11 = getLPMetadataProviderClass_softClass;
  v44 = getLPMetadataProviderClass_softClass;
  if (!getLPMetadataProviderClass_softClass)
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __getLPMetadataProviderClass_block_invoke;
    v38 = &unk_1E8283D08;
    v39 = &v41;
    LinkPresentationLibraryCore();
    *(v42 + 24) = objc_getClass("LPMetadataProvider");
    getLPMetadataProviderClass_softClass = *(*(v39 + 1) + 24);
    v11 = *(v42 + 24);
  }

  v12 = v11;
  _Block_object_dispose(&v41, 8);
  if (v11)
  {
    v13 = objc_alloc_init(v11);
    v14 = [cacheCopy imageForHost:host];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__14;
    v39 = __Block_byref_object_dispose__14;
    v40 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__WBSLPLinkMetadataProvider_linkMetadataForURL_webView_iconCache___block_invoke;
    aBlock[3] = &unk_1E8285F20;
    v34 = &v35;
    v15 = v14;
    v31 = v15;
    v32 = cacheCopy;
    v33 = host;
    v16 = _Block_copy(aBlock);
    v17 = [viewCopy URL];
    v18 = [lCopy isEqual:v17];

    if (v18)
    {
      v19 = [v13 _startFetchingMetadataForWebView:viewCopy isNonAppInitiated:1 completionHandler:v16];
      title = *(v36 + 40);
      *(v36 + 40) = v19;
    }

    else
    {
      v22 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:lCopy];
      v23 = [v13 _startFetchingMetadataForRequest:v22 completionHandler:v16];
      v24 = *(v36 + 40);
      *(v36 + 40) = v23;

      title = [viewCopy title];
      [*(v36 + 40) setTitle:title];
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x2050000000;
    v25 = getLPImageClass_softClass;
    v49 = getLPImageClass_softClass;
    if (!getLPImageClass_softClass)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getLPImageClass_block_invoke;
      v44 = &unk_1E8283D08;
      v45 = &v46;
      LinkPresentationLibraryCore();
      Class = objc_getClass("LPImage");
      *(v45[1] + 24) = Class;
      getLPImageClass_softClass = *(v45[1] + 24);
      v25 = v47[3];
    }

    v27 = v25;
    _Block_object_dispose(&v46, 8);
    v28 = [[v25 alloc] initWithPlatformImage:v15];
    [*(v36 + 40) setIcon:v28];

    v21 = *(v36 + 40);
    _Block_object_dispose(&v35, 8);
  }

  else
  {
LABEL_7:
    v21 = 0;
  }

  return v21;
}

void __66__WBSLPLinkMetadataProvider_linkMetadataForURL_webView_iconCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__WBSLPLinkMetadataProvider_linkMetadataForURL_webView_iconCache___block_invoke_cold_1(v4, v3);
    }
  }

  else
  {
    v5 = [*(*(*(a1 + 56) + 8) + 40) icon];
    v6 = [v5 platformImage];

    if (!*(a1 + 32) && v6)
    {
      [*(a1 + 40) saveImage:v6 forHost:*(a1 + 48)];
    }
  }
}

- (WBSLPLinkMetadataProvider)initWithCacheDirectoryURL:(id)l
{
  lCopy = l;
  v27.receiver = self;
  v27.super_class = WBSLPLinkMetadataProvider;
  v5 = [(WBSLPLinkMetadataProvider *)&v27 init];
  if (v5)
  {
    v6 = [lCopy copy];
    cacheDirectoryURL = v5->_cacheDirectoryURL;
    v5->_cacheDirectoryURL = v6;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    requestsToResponses = v5->_requestsToResponses;
    v5->_requestsToResponses = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    requestsToOperations = v5->_requestsToOperations;
    v5->_requestsToOperations = dictionary2;

    v12 = [MEMORY[0x1E695DFA8] set];
    urlsWithActiveWebViewFetches = v5->_urlsWithActiveWebViewFetches;
    v5->_urlsWithActiveWebViewFetches = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v14;

    [(NSOperationQueue *)v5->_operationQueue setQualityOfService:17];
    [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:5];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSLPLinkMetadataProvider.%@.%p._operationQueue", objc_opt_class(), v5];
    [(NSOperationQueue *)v5->_operationQueue setName:v16];

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSLPLinkMetadataProvider.%@.%p._internalQueue", objc_opt_class(), v5];
    v19 = dispatch_queue_create([v18 UTF8String], v17);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v19;

    v21 = v5->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__WBSLPLinkMetadataProvider_initWithCacheDirectoryURL___block_invoke;
    block[3] = &unk_1E8283080;
    v22 = v5;
    v26 = v22;
    dispatch_async(v21, block);
    v23 = v22;
  }

  return v5;
}

uint64_t __55__WBSLPLinkMetadataProvider_initWithCacheDirectoryURL___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setUpCachedResponsePolicy];
  v3 = *(a1 + 32);
  if (*(v3 + 104))
  {
    *(v3 + 48) = 1;
    v4 = *(a1 + 32);

    return [v4 _setUpCache];
  }

  return result;
}

- (void)reuseMetadataOfURLString:(id)string forURLString:(id)lString completionHandler:(id)handler
{
  stringCopy = string;
  lStringCopy = lString;
  handlerCopy = handler;
  if ([stringCopy length] && objc_msgSend(lStringCopy, "length"))
  {
    internalQueue = self->_internalQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__WBSLPLinkMetadataProvider_reuseMetadataOfURLString_forURLString_completionHandler___block_invoke;
    v13[3] = &unk_1E8284AB0;
    v13[4] = self;
    v16 = handlerCopy;
    v14 = stringCopy;
    v15 = lStringCopy;
    dispatch_async(internalQueue, v13);
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataProvider reuseMetadataOfURLString:forURLString:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __85__WBSLPLinkMetadataProvider_reuseMetadataOfURLString_forURLString_completionHandler___block_invoke(void *a1)
{
  if (*(a1[4] + 40))
  {
    return [*(a1[4] + 40) reuseMetadataOfURLString:a1[5] forURLString:a1[6] completionHandler:a1[7]];
  }

  else
  {
    return (*(a1[7] + 16))();
  }
}

- (void)retainResponseForURLString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__WBSLPLinkMetadataProvider_retainResponseForURLString___block_invoke;
    v7[3] = &unk_1E82834A0;
    v7[4] = self;
    v8 = stringCopy;
    dispatch_async(internalQueue, v7);
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataProvider retainResponseForURLString:];
    }
  }
}

- (void)releaseResponseForURLString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__WBSLPLinkMetadataProvider_releaseResponseForURLString___block_invoke;
    v7[3] = &unk_1E82834A0;
    v7[4] = self;
    v8 = stringCopy;
    dispatch_async(internalQueue, v7);
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataProvider releaseResponseForURLString:];
    }
  }
}

- (void)updateMetadataIfNeededUsingWebView:(id)view
{
  viewCopy = view;
  v5 = [viewCopy URL];
  host = [v5 host];

  if (host)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__WBSLPLinkMetadataProvider_updateMetadataIfNeededUsingWebView___block_invoke;
    block[3] = &unk_1E8285F48;
    block[4] = self;
    v9 = viewCopy;
    v10 = v5;
    dispatch_async(internalQueue, block);
  }
}

void __64__WBSLPLinkMetadataProvider_updateMetadataIfNeededUsingWebView___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 48) == 1)
  {
    v3 = *(v2 + 88);
    if (!v3)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = a1[4];
      v6 = *(v5 + 88);
      *(v5 + 88) = v4;

      v3 = *(a1[4] + 88);
    }

    v9 = [[_WBSPendingMetadataUpdateUsingWebView alloc] initWithWebView:a1[5] url:a1[6]];
    [v3 addObject:v9];
  }

  else
  {
    v7 = a1[5];
    v8 = a1[6];

    [v2 _updateMetadataIfNeededUsingWebView:v7 url:v8];
  }
}

- (BOOL)canHandleRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)prepareResponseForRequest:(id)request allowDelayedResponse:(BOOL)response
{
  requestCopy = request;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSLPLinkMetadataProvider_prepareResponseForRequest_allowDelayedResponse___block_invoke;
  block[3] = &unk_1E82834C8;
  block[4] = self;
  v10 = requestCopy;
  responseCopy = response;
  v8 = requestCopy;
  dispatch_async(internalQueue, block);
}

void __76__WBSLPLinkMetadataProvider_prepareResponseForRequest_allowDelayedResponse___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    v3 = *(v2 + 56);
    if (!v3)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = *(a1 + 32);
      v6 = *(v5 + 56);
      *(v5 + 56) = v4;

      v3 = *(*(a1 + 32) + 56);
    }

    v11 = [[_WBSPendingLPLinkMetadataRequest alloc] initWithRequest:*(a1 + 40) allowDelayedResponse:*(a1 + 48)];
    [v3 addObject:v11];
  }

  else
  {
    v11 = *(a1 + 40);
    v7 = [*(a1 + 32) _operationForRequest:?];

    if (!v7)
    {
      v8 = [[WBSLPLinkMetadataFetchOperation alloc] initWithRequest:v11 operationCompletionHandler:0];
      [*(a1 + 32) _setOperation:v8 forRequest:v11];
      v9 = *(*(a1 + 32) + 80);
      v10 = [(_WBSPendingLPLinkMetadataRequest *)v11 url];
      LOBYTE(v9) = [v9 containsObject:v10];

      if ((v9 & 1) == 0)
      {
        [*(a1 + 32) _prepareCachedResponseForRequest:v11];
      }
    }
  }
}

- (void)savePendingChangesBeforeTermination
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSLPLinkMetadataProvider_savePendingChangesBeforeTermination__block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

uint64_t __64__WBSLPLinkMetadataProvider_savePendingChangesBeforeTermination__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeAllOperations];
  [*(*(a1 + 32) + 24) cancelAllOperations];
  v2 = *(*(a1 + 32) + 40);

  return [v2 savePendingChangesBeforeTermination];
}

- (void)stopWatchingUpdatesForRequest:(id)request
{
  requestCopy = request;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__WBSLPLinkMetadataProvider_stopWatchingUpdatesForRequest___block_invoke;
  v7[3] = &unk_1E82834A0;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(internalQueue, v7);
}

void __59__WBSLPLinkMetadataProvider_stopWatchingUpdatesForRequest___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) url];
  v3 = [v2 absoluteString];

  if ([*(*(a1 + 40) + 64) isEntryRetainedForKeyString:v3])
  {
    [*(*(a1 + 40) + 72) addObject:*(a1 + 32)];
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 141558275;
      v8 = 1752392040;
      v9 = 2117;
      v10 = v3;
      _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Discarding LP metadata response/operation for request with URL: %{sensitive, mask.hash}@", &v7, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) _operationForRequest:v5];
    if (v6)
    {
      [*(a1 + 40) _removeOperationForRequest:v5];
      [v6 cancel];
    }

    [*(a1 + 40) _discardPreparedResponseForRequest:v5];
  }
}

- (void)emptyCaches
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__WBSLPLinkMetadataProvider_emptyCaches__block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (BOOL)cacheData:(id)data forRequest:(id)request usingToken:(id)token
{
  dataCopy = data;
  requestCopy = request;
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = dataCopy;
      first = [v11 first];
      second = [v11 second];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!second || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          urlString = [first urlString];
          v15 = [urlString length];

          if (v15)
          {
            internalQueue = self->_internalQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __61__WBSLPLinkMetadataProvider_cacheData_forRequest_usingToken___block_invoke;
            block[3] = &unk_1E8285F98;
            block[4] = self;
            v21 = tokenCopy;
            v22 = first;
            v23 = second;
            v24 = requestCopy;
            dispatch_async(internalQueue, block);

            v17 = 1;
LABEL_12:

            goto LABEL_13;
          }

          v18 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [WBSLPLinkMetadataProvider cacheData:forRequest:usingToken:];
          }
        }
      }

      v17 = 0;
      goto LABEL_12;
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

void __61__WBSLPLinkMetadataProvider_cacheData_forRequest_usingToken___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2[5])
  {
    v3 = [a1[6] urlString];
    v4 = [a1[6] lastFetchDate];
    v5 = [a1[6] lastFetchDidSucceed];
    v6 = [a1[6] metadataHasImage];
    objc_initWeak(&location, a1[4]);
    v7 = *(a1[4] + 5);
    v8 = a1[7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__WBSLPLinkMetadataProvider_cacheData_forRequest_usingToken___block_invoke_2;
    v10[3] = &unk_1E8285F70;
    objc_copyWeak(&v14, &location);
    v11 = a1[7];
    v12 = a1[8];
    v13 = a1[5];
    [v7 setMetadata:v8 forURLString:v3 lastFetchDate:v4 lastFetchDidSucceed:v5 metadataHasImage:v6 completionHandler:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v2 + 12);
    [WeakRetained siteMetadataProvider:a1[4] didFinishCachingDataWithToken:a1[5]];
  }
}

void __61__WBSLPLinkMetadataProvider_cacheData_forRequest_usingToken___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _replacePreparedResponseWithData:*(a1 + 32) forRequest:*(a1 + 40)];
    v3 = objc_loadWeakRetained(v4 + 12);
    [v3 siteMetadataProvider:v4 didFinishCachingDataWithToken:*(a1 + 48)];

    WeakRetained = v4;
  }
}

void __55__WBSLPLinkMetadataProvider__setUpCachedResponsePolicy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__WBSLPLinkMetadataProvider__setUpCachedResponsePolicy__block_invoke_2;
    v7[3] = &unk_1E82834A0;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __55__WBSLPLinkMetadataProvider__setUpCachedResponsePolicy__block_invoke_2(uint64_t a1)
{
  v2 = [WBSLPLinkMetadataRequest alloc];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v4 = [(WBSLPLinkMetadataRequest *)v2 initWithURL:v3];

  if ([*(*(a1 + 40) + 72) containsObject:v4])
  {
    [*(*(a1 + 40) + 72) removeObject:v4];
    [*(a1 + 40) stopWatchingUpdatesForRequest:v4];
  }
}

- (void)_prepareCachedResponseForRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__WBSLPLinkMetadataProvider__prepareCachedResponseForRequest___block_invoke;
  v6[3] = &unk_1E8286060;
  objc_copyWeak(&v8, &location);
  v5 = requestCopy;
  v7 = v5;
  [(WBSLPLinkMetadataProvider *)self _getCachedMetadataInfoForRequest:v5 completionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__WBSLPLinkMetadataProvider__prepareCachedResponseForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__WBSLPLinkMetadataProvider__prepareCachedResponseForRequest___block_invoke_2;
    v7[3] = &unk_1E8286038;
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    v9 = v3;
    objc_copyWeak(&v10, (a1 + 40));
    dispatch_async(v6, v7);
    objc_destroyWeak(&v10);
  }
}

void __62__WBSLPLinkMetadataProvider__prepareCachedResponseForRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _operationForRequest:*(a1 + 40)];
  v3 = v2;
  if (v2 && ([v2 isCancelled] & 1) == 0)
  {
    if ([*(a1 + 32) _shouldStartFetchOperationForRequestIgnoringRequestFetchingPreference:*(a1 + 40) withMetadataInfo:*(a1 + 48)] && (objc_msgSend(*(a1 + 40), "allowFetching") & 1) != 0)
    {
      v4 = [WBSLPLinkMetadataFetchOperation alloc];
      v5 = *(a1 + 40);
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __62__WBSLPLinkMetadataProvider__prepareCachedResponseForRequest___block_invoke_3;
      v10 = &unk_1E8286010;
      objc_copyWeak(&v12, (a1 + 56));
      v11 = *(a1 + 40);
      v6 = [(WBSLPLinkMetadataFetchOperation *)v4 initWithRequest:v5 operationCompletionHandler:&v7];
      [*(*(a1 + 32) + 24) addOperation:{v6, v7, v8, v9, v10}];
      [*(a1 + 32) _setOperation:v6 forRequest:*(a1 + 40)];

      objc_destroyWeak(&v12);
    }

    else
    {
      [*(a1 + 32) _provideCachedResponseIfAvailableForRequest:*(a1 + 40) withMetadataInfo:*(a1 + 48)];
    }
  }
}

void __62__WBSLPLinkMetadataProvider__prepareCachedResponseForRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__WBSLPLinkMetadataProvider__prepareCachedResponseForRequest___block_invoke_4;
    block[3] = &unk_1E8285F48;
    block[4] = WeakRetained;
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

- (void)_didReceiveNewMetadata:(id)metadata forRequest:(id)request
{
  metadataCopy = metadata;
  requestCopy = request;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__WBSLPLinkMetadataProvider__didReceiveNewMetadata_forRequest___block_invoke;
  v10[3] = &unk_1E8286088;
  objc_copyWeak(&v13, &location);
  v8 = requestCopy;
  v11 = v8;
  v9 = metadataCopy;
  v12 = v9;
  [(WBSLPLinkMetadataProvider *)self _cacheMetadata:v9 forRequest:v8 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __63__WBSLPLinkMetadataProvider__didReceiveNewMetadata_forRequest___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSLPLinkMetadataProvider__didReceiveNewMetadata_forRequest___block_invoke_2;
    v7[3] = &unk_1E82839E8;
    v7[4] = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    v10 = v3;
    dispatch_async(v6, v7);
  }
}

void __63__WBSLPLinkMetadataProvider__didReceiveNewMetadata_forRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _operationForRequest:*(a1 + 40)];
  if (v2)
  {
  }

  else
  {
    v3 = [*(a1 + 32) _preparedResponseForRequest:*(a1 + 40)];

    if (!v3)
    {
      return;
    }
  }

  v4 = [*(a1 + 32) _isImageInMetadata:*(a1 + 48)];
  v5 = *(a1 + 48);
  if (!v5)
  {
    goto LABEL_7;
  }

  if ((v4 & 1) == 0)
  {
    if ([*(a1 + 56) metadataHasImage])
    {
LABEL_7:
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 56);

      [v6 _provideCachedResponseIfAvailableForRequest:v7 withMetadataInfo:v8];
      return;
    }

    v5 = *(a1 + 48);
  }

  [*(a1 + 32) _storeAndNotifySuccessfulResponseForRequest:*(a1 + 40) withMetadata:v5 info:*(a1 + 56) didReceiveNewData:1];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  [v9 _removeOperationForRequest:v10];
}

- (void)_getCachedMetadataWithInfo:(id)info completionHandler:(id)handler
{
  cache = self->_cache;
  if (cache)
  {
    [(WBSLPLinkMetadataCache *)cache getMetadataWithInfo:info completionHandler:handler];
  }

  else
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)_cacheMetadata:(id)metadata forRequest:(id)request completionHandler:(id)handler
{
  metadataCopy = metadata;
  requestCopy = request;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (self->_cache)
  {
    v12 = [requestCopy url];
    absoluteString = [v12 absoluteString];

    if ([absoluteString length])
    {
      objc_initWeak(&location, self);
      dataRepresentation = [metadataCopy dataRepresentation];
      v15 = [metadataCopy URL];
      absoluteString2 = [v15 absoluteString];

      v22 = [(WBSLPLinkMetadataProvider *)self _isImageInMetadata:metadataCopy];
      cache = self->_cache;
      date = [MEMORY[0x1E695DF00] date];
      v18 = [dataRepresentation length] != 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __73__WBSLPLinkMetadataProvider__cacheMetadata_forRequest_completionHandler___block_invoke;
      v23[3] = &unk_1E82860B0;
      v19 = absoluteString2;
      v24 = v19;
      v25 = absoluteString;
      v26 = v11;
      objc_copyWeak(&v27, &location);
      [(WBSLPLinkMetadataCache *)cache setMetadata:dataRepresentation forURLString:v25 lastFetchDate:date lastFetchDidSucceed:v18 metadataHasImage:v22 completionHandler:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [WBSLPLinkMetadataProvider _cacheMetadata:forRequest:completionHandler:];
      }

      v11[2](v11, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __73__WBSLPLinkMetadataProvider__cacheMetadata_forRequest_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3 && [a1[4] length] && !objc_msgSend(a1[5], "isEqualToString:", a1[4]))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 5);
      v8 = a1[4];
      v7 = a1[5];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73__WBSLPLinkMetadataProvider__cacheMetadata_forRequest_completionHandler___block_invoke_2;
      v9[3] = &unk_1E82838A8;
      v11 = a1[6];
      v10 = v3;
      [v6 reuseMetadataOfURLString:v7 forURLString:v8 completionHandler:v9];
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

- (BOOL)_isImageInMetadata:(id)metadata
{
  metadataCopy = metadata;
  image = [metadataCopy image];
  if (image)
  {
    v5 = 1;
  }

  else
  {
    icon = [metadataCopy icon];
    v5 = icon != 0;
  }

  return v5;
}

- (void)_getCachedMetadataInfoForRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [request url];
  absoluteString = [v6 absoluteString];

  if (self->_cache && [absoluteString length])
  {
    [(WBSLPLinkMetadataCache *)self->_cache getMetadataInfoForURLString:absoluteString completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (BOOL)_shouldStartFetchOperationForRequestIgnoringRequestFetchingPreference:(id)preference withMetadataInfo:(id)info
{
  preferenceCopy = preference;
  infoCopy = info;
  v8 = [preferenceCopy url];
  absoluteString = [v8 absoluteString];
  v10 = [absoluteString length];

  if (v10)
  {
    if (infoCopy)
    {
      if ([(WBSLPLinkMetadataCache *)self->_cache storesMetadataOnDisk])
      {
        if ([infoCopy lastFetchDidSucceed])
        {
          metadataHasImage = [infoCopy metadataHasImage];
          lastFetchDate = [infoCopy lastFetchDate];
          [lastFetchDate timeIntervalSinceNow];
          v14 = v13;

          if (metadataHasImage)
          {
            v15 = -345600.0;
          }

          else
          {
            v15 = -172800.0;
          }

          v16 = v14 < v15;
        }

        else
        {
          lastFetchDate2 = [infoCopy lastFetchDate];
          [lastFetchDate2 timeIntervalSinceNow];
          v16 = v19 < -604800.0;
        }
      }

      else
      {
        v17 = [(WBSLPLinkMetadataProvider *)self _preparedResponseForRequest:preferenceCopy];
        v16 = v17 == 0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_provideCachedResponseIfAvailableForRequest:(id)request withMetadataInfo:(id)info
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  v8 = [(WBSLPLinkMetadataProvider *)self _preparedResponseForRequest:requestCopy];
  if (v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [requestCopy url];
      absoluteString = [v11 absoluteString];
      *buf = 141558275;
      v26 = 1752392040;
      v27 = 2117;
      v28 = absoluteString;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Providing retained LP metadata response for URL: %{sensitive, mask.hash}@", buf, 0x16u);
    }

    [(WBSLPLinkMetadataProvider *)self _notifyResponse:v8 ofType:0 didReceiveNewData:1 forRequest:requestCopy];
    [(WBSLPLinkMetadataProvider *)self _removeOperationForRequest:requestCopy];
  }

  else if ([(WBSLPLinkMetadataCache *)self->_cache isMetadataCachedWithInfo:infoCopy])
  {
    objc_initWeak(&location, self);
    v13 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [requestCopy url];
      absoluteString2 = [v14 absoluteString];
      *buf = 141558275;
      v26 = 1752392040;
      v27 = 2117;
      v28 = absoluteString2;
      _os_log_impl(&dword_1C6968000, v13, OS_LOG_TYPE_INFO, "Providing cached LP metadata for URL: %{sensitive, mask.hash}@", buf, 0x16u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__WBSLPLinkMetadataProvider__provideCachedResponseIfAvailableForRequest_withMetadataInfo___block_invoke;
    v20[3] = &unk_1E82860D8;
    objc_copyWeak(&v23, &location);
    v21 = requestCopy;
    v22 = infoCopy;
    [(WBSLPLinkMetadataProvider *)self _getCachedMetadataWithInfo:v22 completionHandler:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = [requestCopy url];
      absoluteString3 = [v18 absoluteString];
      *buf = 141558275;
      v26 = 1752392040;
      v27 = 2117;
      v28 = absoluteString3;
      _os_log_impl(&dword_1C6968000, v17, OS_LOG_TYPE_INFO, "No cached LP metadata found for URL: %{sensitive, mask.hash}@", buf, 0x16u);
    }

    [(WBSLPLinkMetadataProvider *)self _storeAndNotifySuccessfulResponseForRequest:requestCopy withMetadata:0 info:infoCopy didReceiveNewData:0];
    [(WBSLPLinkMetadataProvider *)self _removeOperationForRequest:requestCopy];
  }
}

void __90__WBSLPLinkMetadataProvider__provideCachedResponseIfAvailableForRequest_withMetadataInfo___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__WBSLPLinkMetadataProvider__provideCachedResponseIfAvailableForRequest_withMetadataInfo___block_invoke_2;
    v7[3] = &unk_1E82839E8;
    v8 = v3;
    v9 = v5;
    v10 = a1[4];
    v11 = a1[5];
    dispatch_async(v6, v7);
  }
}

void __90__WBSLPLinkMetadataProvider__provideCachedResponseIfAvailableForRequest_withMetadataInfo___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E696ECA0] metadataWithDataRepresentation:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 40) _storeAndNotifySuccessfulResponseForRequest:*(a1 + 48) withMetadata:v2 info:*(a1 + 56) didReceiveNewData:1];
  [*(a1 + 40) _removeOperationForRequest:*(a1 + 48)];
}

- (void)_updateMetadataIfNeededUsingWebView:(id)view url:(id)url
{
  viewCopy = view;
  urlCopy = url;
  if (([(NSMutableSet *)self->_urlsWithActiveWebViewFetches containsObject:urlCopy]& 1) == 0)
  {
    v8 = [[WBSLPLinkMetadataRequest alloc] initWithURL:urlCopy];
    v9 = [(WBSLPLinkMetadataProvider *)self _operationForRequest:v8];
    if (![v9 _status])
    {
      objc_initWeak(&location, self);
      [v9 cancel];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke;
      v10[3] = &unk_1E8286150;
      objc_copyWeak(&v15, &location);
      v11 = v8;
      v12 = v9;
      v13 = urlCopy;
      v14 = viewCopy;
      [(WBSLPLinkMetadataProvider *)self _getCachedMetadataInfoForRequest:v11 completionHandler:v10];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke_2;
    block[3] = &unk_1E8286128;
    block[4] = WeakRetained;
    v14 = v3;
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v15 = v12;
    v16 = v11;
    objc_copyWeak(&v17, a1 + 8);
    dispatch_async(v6, block);
    objc_destroyWeak(&v17);
  }
}

void __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _shouldUseWebViewToUpdateMetadataWithInfo:*(a1 + 40) request:*(a1 + 48) existingOperation:*(a1 + 56)])
  {
    [*(*(a1 + 32) + 80) addObject:*(a1 + 64)];
    v2 = *(a1 + 32);
    v4 = *(a1 + 64);
    v3 = *(a1 + 72);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke_3;
    v5[3] = &unk_1E8286100;
    objc_copyWeak(&v8, (a1 + 80));
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    [v2 _fetchMetadataForWebView:v3 url:v4 completionHandler:v5];

    objc_destroyWeak(&v8);
  }
}

void __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke_4;
    v7[3] = &unk_1E82839E8;
    v7[4] = WeakRetained;
    v8 = v3;
    v9 = a1[4];
    v10 = a1[5];
    dispatch_async(v6, v7);
  }
}

uint64_t __69__WBSLPLinkMetadataProvider__updateMetadataIfNeededUsingWebView_url___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _didReceiveNewMetadata:*(a1 + 40) forRequest:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 80);
  v3 = *(a1 + 56);

  return [v2 removeObject:v3];
}

- (BOOL)_shouldUseWebViewToUpdateMetadataWithInfo:(id)info request:(id)request existingOperation:(id)operation
{
  infoCopy = info;
  requestCopy = request;
  operationCopy = operation;
  if (operationCopy)
  {
LABEL_2:
    v11 = 1;
    goto LABEL_3;
  }

  if (infoCopy)
  {
    lastFetchDate = [infoCopy lastFetchDate];
    [lastFetchDate timeIntervalSinceNow];
    v15 = v14;

    if ([infoCopy metadataHasImage])
    {
      v16 = -345600.0;
    }

    else
    {
      v16 = -3600.0;
    }

    if (v15 >= v16)
    {
      v11 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v17 = [(WBSLPLinkMetadataProvider *)self _preparedResponseForRequest:requestCopy];
  if (v17)
  {
    v11 = 1;
  }

  else
  {
    cachedResponsePolicy = self->_cachedResponsePolicy;
    v19 = [requestCopy url];
    absoluteString = [v19 absoluteString];
    v11 = [(WBSCacheRetainReleasePolicy *)cachedResponsePolicy isEntryRetainedForKeyString:absoluteString];
  }

LABEL_3:
  return v11;
}

- (void)_fetchMetadataForWebView:(id)view url:(id)url completionHandler:(id)handler
{
  viewCopy = view;
  urlCopy = url;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke;
  block[3] = &unk_1E8283058;
  v14 = urlCopy;
  v15 = viewCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = viewCopy;
  v12 = urlCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 absoluteString];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2117;
    *&buf[14] = v5;
    _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Fetching LP metadata using web view for URL: %{sensitive, mask.hash}@.", buf, 0x16u);
  }

  v6 = +[WBSLPLinkMetadataFetchOperation configuredLPMetadataProvider];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke_65;
  v10[3] = &unk_1E82861A0;
  v13 = buf;
  v7 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v8 = [v6 _startFetchingMetadataForWebView:v7 isNonAppInitiated:1 completionHandler:v10];
  v9 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v8;

  _Block_object_dispose(buf, 8);
}

void __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || (v5 = *(*(*(a1 + 48) + 8) + 40)) == 0)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke_65_cold_1(a1, v4, v3);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke_66;
    v8[3] = &unk_1E8286178;
    v9 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    [v5 _loadAsynchronousFieldsWithUpdateHandler:v8];
  }
}

uint64_t __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke_66(uint64_t result, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = result;
    v3 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(v2 + 32);
      v5 = v3;
      v6 = [v4 absoluteString];
      v7 = 141558275;
      v8 = 1752392040;
      v9 = 2117;
      v10 = v6;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Successfully fetched LP metadata using web view for URL: %{sensitive, mask.hash}@.", &v7, 0x16u);
    }

    return (*(*(v2 + 40) + 16))();
  }

  return result;
}

- (void)_storeAndNotifySuccessfulResponseForRequest:(id)request withMetadata:(id)metadata info:(id)info didReceiveNewData:(BOOL)data
{
  dataCopy = data;
  metadataCopy = metadata;
  requestCopy = request;
  v12 = [(WBSLPLinkMetadataProvider *)self _shouldStartFetchOperationForRequestIgnoringRequestFetchingPreference:requestCopy withMetadataInfo:info];
  v13 = [WBSLPLinkMetadataResponse alloc];
  v14 = [requestCopy url];
  v15 = [(WBSLPLinkMetadataResponse *)v13 initWithURL:v14 metadata:metadataCopy canAttemptFetchNow:v12];

  [(WBSLPLinkMetadataProvider *)self _storePreparedResponse:v15 forRequest:requestCopy];
  [(WBSLPLinkMetadataProvider *)self _notifyResponse:v15 ofType:0 didReceiveNewData:dataCopy forRequest:requestCopy];
}

- (void)_notifyResponse:(id)response ofType:(int64_t)type didReceiveNewData:(BOOL)data forRequest:(id)request
{
  dataCopy = data;
  requestCopy = request;
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
  [WeakRetained siteMetadataProvider:self didReceiveResponse:responseCopy ofType:type didReceiveNewData:dataCopy forRequest:requestCopy];
}

- (id)_preparedResponseForRequest:(id)request
{
  requestCopy = request;
  v5 = self->_requestsToResponses;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_requestsToResponses objectForKeyedSubscript:requestCopy];
  objc_sync_exit(v5);

  return v6;
}

- (void)_discardPreparedResponseForRequest:(id)request
{
  requestCopy = request;
  v4 = self->_requestsToResponses;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_requestsToResponses removeObjectForKey:requestCopy];
  objc_sync_exit(v4);
}

- (void)_storePreparedResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  v7 = self->_requestsToResponses;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)self->_requestsToResponses setObject:responseCopy forKeyedSubscript:requestCopy];
  objc_sync_exit(v7);
}

- (void)_replacePreparedResponseWithData:(id)data forRequest:(id)request
{
  dataCopy = data;
  requestCopy = request;
  if (dataCopy)
  {
    v7 = self->_requestsToResponses;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)self->_requestsToResponses objectForKeyedSubscript:requestCopy];
    v9 = v8;
    if (v8)
    {
      metadata = [v8 metadata];
      v11 = [MEMORY[0x1E696ECA0] metadataWithDataRepresentation:dataCopy];
      if (v11 && (![(WBSLPLinkMetadataProvider *)self _isImageInMetadata:metadata]|| [(WBSLPLinkMetadataProvider *)self _isImageInMetadata:v11]))
      {
        v12 = [WBSLPLinkMetadataResponse alloc];
        v13 = [requestCopy url];
        v14 = [(WBSLPLinkMetadataResponse *)v12 initWithURL:v13 metadata:v11 canAttemptFetchNow:0];
        [(NSMutableDictionary *)self->_requestsToResponses setObject:v14 forKeyedSubscript:requestCopy];
      }
    }

    objc_sync_exit(v7);
  }
}

- (WBSSiteMetadataProviderDelegate)providerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);

  return WeakRetained;
}

void __66__WBSLPLinkMetadataProvider_linkMetadataForURL_webView_iconCache___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Fetching Link Presentation metadata for share sheet failed: %{public}@", &v5, 0xCu);
}

void __76__WBSLPLinkMetadataProvider__fetchMetadataForWebView_url_completionHandler___block_invoke_65_cold_1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 absoluteString];
  v7 = [a3 safari_privacyPreservingDescription];
  v8 = 141558531;
  v9 = 1752392040;
  v10 = 2117;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&dword_1C6968000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch LP metadata using web view for URL: %{sensitive, mask.hash}@ with error: %{public}@.", &v8, 0x20u);
}

@end