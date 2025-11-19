@interface WBSWebViewPoolManager
- (WBSWebViewPoolManager)init;
- (id)_popReusableWebView;
- (id)_processPool;
- (unint64_t)_numberOfConcurrentRequests;
- (void)_discardWebViewSoon:(id)a3;
- (void)didFinishUsingWebView:(id)a3;
- (void)getWebViewOfSize:(CGSize)a3 withConfiguration:(id)a4 completionHandler:(id)a5;
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

- (void)getWebViewOfSize:(CGSize)a3 withConfiguration:(id)a4 completionHandler:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSWebViewPoolManager *)self _processPool];
  [v9 setProcessPool:v11];

  v12 = [(WBSWebViewPoolManager *)self _popReusableWebView];
  if (v12)
  {
    [v9 _setRelatedWebView:v12];
    v13 = [v12 configuration];
    v14 = [v13 websiteDataStore];

    [v9 setWebsiteDataStore:v14];
    v15 = [v12 configuration];
    v16 = [v15 processPool];
    [v9 setProcessPool:v16];

LABEL_6:
    goto LABEL_7;
  }

  v17 = [v9 _websiteDataStoreIfExists];
  if (!v17 || (v18 = v17, [v9 websiteDataStore], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "_configuration"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isPersistent"), v20, v19, v18, v21))
  {
    v15 = [MEMORY[0x1E69853B8] safari_nonPersistentDataStore];
    [v9 setWebsiteDataStore:v15];
    v14 = 0;
    goto LABEL_6;
  }

  v14 = 0;
LABEL_7:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__WBSWebViewPoolManager_getWebViewOfSize_withConfiguration_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8287558;
  v34 = width;
  v35 = height;
  v22 = v9;
  v31 = v22;
  v32 = self;
  v23 = v10;
  v33 = v23;
  v24 = _Block_copy(aBlock);
  v25 = v24;
  if (v14)
  {
    v26 = [MEMORY[0x1E69853B8] allWebsiteDataTypes];
    v27 = [MEMORY[0x1E695DF00] distantPast];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __78__WBSWebViewPoolManager_getWebViewOfSize_withConfiguration_completionHandler___block_invoke_2;
    v28[3] = &unk_1E8283C40;
    v29 = v25;
    [v14 removeDataOfTypes:v26 modifiedSince:v27 completionHandler:v28];
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

- (void)didFinishUsingWebView:(id)a3
{
  reusableWebViews = self->_reusableWebViews;
  v5 = a3;
  [(NSMutableSet *)reusableWebViews addObject:v5];
  [(NSMutableSet *)self->_usedWebViews removeObject:v5];
  [(WBSWebViewPoolManager *)self _discardWebViewSoon:v5];
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
    v5 = [(NSMutableSet *)self->_reusableWebViews anyObject];
    if (v5)
    {
      [(NSMutableSet *)self->_reusableWebViews removeObject:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfConcurrentRequests
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  if ([v2 processorCount] == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_discardWebViewSoon:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__WBSWebViewPoolManager__discardWebViewSoon___block_invoke;
  v7[3] = &unk_1E82834A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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