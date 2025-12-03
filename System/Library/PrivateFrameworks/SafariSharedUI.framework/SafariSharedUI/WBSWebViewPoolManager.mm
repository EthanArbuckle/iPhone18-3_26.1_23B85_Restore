@interface WBSWebViewPoolManager
- (WBSWebViewPoolManager)init;
- (id)_popReusableWebView;
- (id)_processPool;
- (unint64_t)_numberOfConcurrentRequests;
- (void)_discardWebViewSoon:(id)soon;
- (void)didFinishUsingWebView:(id)view;
- (void)getWebViewOfSize:(CGSize)size withConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation WBSWebViewPoolManager

- (WBSWebViewPoolManager)init
{
  v9.receiver = self;
  v9.super_class = WBSWebViewPoolManager;
  v2 = [(WBSWebViewPoolManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    usedWebViews = v2->_usedWebViews;
    v2->_usedWebViews = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    reusableWebViews = v2->_reusableWebViews;
    v2->_reusableWebViews = v5;

    v7 = v2;
  }

  return v2;
}

- (void)getWebViewOfSize:(CGSize)size withConfiguration:(id)configuration completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  handlerCopy = handler;
  _processPool = [(WBSWebViewPoolManager *)self _processPool];
  [configurationCopy setProcessPool:_processPool];

  _popReusableWebView = [(WBSWebViewPoolManager *)self _popReusableWebView];
  if (_popReusableWebView)
  {
    [configurationCopy _setRelatedWebView:_popReusableWebView];
    configuration = [_popReusableWebView configuration];
    websiteDataStore = [configuration websiteDataStore];

    [configurationCopy setWebsiteDataStore:websiteDataStore];
    configuration2 = [_popReusableWebView configuration];
    processPool = [configuration2 processPool];
    [configurationCopy setProcessPool:processPool];

LABEL_6:
    goto LABEL_7;
  }

  _websiteDataStoreIfExists = [configurationCopy _websiteDataStoreIfExists];
  if (!_websiteDataStoreIfExists || (v18 = _websiteDataStoreIfExists, [configurationCopy websiteDataStore], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "_configuration"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isPersistent"), v20, v19, v18, v21))
  {
    configuration2 = [MEMORY[0x1E69853B8] safari_nonPersistentDataStore];
    [configurationCopy setWebsiteDataStore:configuration2];
    websiteDataStore = 0;
    goto LABEL_6;
  }

  websiteDataStore = 0;
LABEL_7:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__WBSWebViewPoolManager_getWebViewOfSize_withConfiguration_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8287558;
  v34 = width;
  v35 = height;
  v22 = configurationCopy;
  v31 = v22;
  selfCopy = self;
  v23 = handlerCopy;
  v33 = v23;
  v24 = _Block_copy(aBlock);
  v25 = v24;
  if (websiteDataStore)
  {
    allWebsiteDataTypes = [MEMORY[0x1E69853B8] allWebsiteDataTypes];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __78__WBSWebViewPoolManager_getWebViewOfSize_withConfiguration_completionHandler___block_invoke_2;
    v28[3] = &unk_1E8283C40;
    v29 = v25;
    [websiteDataStore removeDataOfTypes:allWebsiteDataTypes modifiedSince:distantPast completionHandler:v28];
  }

  else
  {
    (*(v24 + 2))(v24);
  }
}

void __78__WBSWebViewPoolManager_getWebViewOfSize_withConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:*(a1 + 32) configuration:{0.0, 0.0, *(a1 + 56), *(a1 + 64)}];
  [v2 setInspectable:0];
  [*(*(a1 + 40) + 16) addObject:v2];
  (*(*(a1 + 48) + 16))();
}

- (void)didFinishUsingWebView:(id)view
{
  reusableWebViews = self->_reusableWebViews;
  viewCopy = view;
  [(NSMutableSet *)reusableWebViews addObject:viewCopy];
  [(NSMutableSet *)self->_usedWebViews removeObject:viewCopy];
  [(WBSWebViewPoolManager *)self _discardWebViewSoon:viewCopy];
}

- (id)_processPool
{
  v3 = self->_processPool;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69853F0]);
    v7 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v6];
    processPool = self->_processPool;
    self->_processPool = v7;

    v5 = self->_processPool;
  }

  return v5;
}

- (id)_popReusableWebView
{
  v3 = [(NSMutableSet *)self->_usedWebViews count];
  v4 = [(NSMutableSet *)self->_reusableWebViews count]+ v3;
  if (v4 >= [(WBSWebViewPoolManager *)self _numberOfConcurrentRequests])
  {
    anyObject = [(NSMutableSet *)self->_reusableWebViews anyObject];
    if (anyObject)
    {
      [(NSMutableSet *)self->_reusableWebViews removeObject:anyObject];
    }
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (unint64_t)_numberOfConcurrentRequests
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  if ([processInfo processorCount] == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_discardWebViewSoon:(id)soon
{
  soonCopy = soon;
  v5 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__WBSWebViewPoolManager__discardWebViewSoon___block_invoke;
  v7[3] = &unk_1E82834A0;
  v7[4] = self;
  v8 = soonCopy;
  v6 = soonCopy;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

void __45__WBSWebViewPoolManager__discardWebViewSoon___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 16) count] && !objc_msgSend(*(*(a1 + 32) + 24), "count"))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }
}

@end