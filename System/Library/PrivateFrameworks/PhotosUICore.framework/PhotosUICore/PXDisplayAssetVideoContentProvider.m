@interface PXDisplayAssetVideoContentProvider
- (BOOL)_loadingQueue_needsNewRequestForPriority:(int64_t)a3;
- (NSString)description;
- (PXDisplayAsset)asset;
- (PXDisplayAssetVideoContentProvider)init;
- (PXDisplayAssetVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7;
- (PXDisplayAssetVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7 resourceReclamationController:(id)a8;
- (id)analyticsPayload;
- (void)_handlePostprocessedPlayerItem:(id)a3 priority:(int64_t)a4 description:(id)a5;
- (void)_loadingQueueBeginLoadingWithPriority:(int64_t)a3;
- (void)_loadingQueue_beginRequestForPriorityIfNeeded:(int64_t)a3;
- (void)_loadingQueue_cancelAllRequests;
- (void)_loadingQueue_reloadContent;
- (void)_loadingQueue_setAsset:(id)a3;
- (void)_postprocessingQueue_performPostprocessingOfItem:(id)a3 info:(id)a4 priority:(int64_t)a5;
- (void)_reloadAVObjects;
- (void)beginLoadingWithPriority:(int64_t)a3;
- (void)cancelLoading;
- (void)makeUniqueContentIdentifier;
- (void)reloadContent;
- (void)request:(id)a3 didFinishWithPlayerItem:(id)a4 videoURL:(id)a5 downloadedTimeRange:(id *)a6 info:(id)a7;
- (void)requestLoadingProgressDidChange:(id)a3;
- (void)setAsset:(id)a3;
@end

@implementation PXDisplayAssetVideoContentProvider

- (void)request:(id)a3 didFinishWithPlayerItem:(id)a4 videoURL:(id)a5 downloadedTimeRange:(id *)a6 info:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  loadingQueue = self->_loadingQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke;
  v23[3] = &unk_1E772C6C0;
  v24 = v16;
  v25 = self;
  v26 = v13;
  v27 = v14;
  v18 = *&a6->var0.var3;
  v30 = *&a6->var0.var0;
  v31 = v18;
  v32 = *&a6->var1.var1;
  v28 = v15;
  v29 = a2;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v16;
  dispatch_async(loadingQueue, v23);
}

void __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 160);
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "priority")}];
    [v4 removeObjectForKey:v5];
  }

  if (*(a1 + 56) || *(a1 + 64))
  {
    if ([*(a1 + 40) needsPostprocessing])
    {
      if ((*(a1 + 92) & 1) != 0 && (*(a1 + 116) & 1) != 0 && !*(a1 + 120) && (*(a1 + 104) & 0x8000000000000000) == 0)
      {
        PXAssertGetLog();
      }

      v6 = *(a1 + 40);
      if (v6[200])
      {
        PXAssertGetLog();
      }

      objc_initWeak(location, v6);
      v7 = *(*(a1 + 40) + 152);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke_228;
      block[3] = &unk_1E7748228;
      objc_copyWeak(&v32, location);
      v29 = *(a1 + 56);
      v30 = *(a1 + 32);
      v31 = *(a1 + 48);
      dispatch_async(v7, block);

      objc_destroyWeak(&v32);
      objc_destroyWeak(location);
      if (v3)
      {
        return;
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke_2;
      v20[3] = &unk_1E772C698;
      v20[4] = v8;
      v21 = *(a1 + 56);
      v22 = *(a1 + 64);
      v9 = *(a1 + 96);
      v25 = *(a1 + 80);
      v26 = v9;
      v27 = *(a1 + 112);
      v23 = *(a1 + 32);
      v24 = *(a1 + 48);
      [v8 performChanges:v20];

      if (v3)
      {
        return;
      }
    }

    [*(a1 + 40) cancelLoading];
    return;
  }

  if (![*(*(a1 + 40) + 160) count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:@"Video Player Item loading failed." forKeyedSubscript:*MEMORY[0x1E696A278]];
    v11 = *MEMORY[0x1E6978DF0];
    v12 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];

    if (v12)
    {
      v13 = [*(a1 + 32) objectForKeyedSubscript:v11];
      [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXVideoContentProviderErrorDomain" code:1 userInfo:v10];
    v15 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke_3;
    v17[3] = &unk_1E774A448;
    v17[4] = v15;
    v18 = v14;
    v19 = *(a1 + 48);
    v16 = v14;
    [v15 performChanges:v17];
  }
}

void __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke_228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _postprocessingQueue_performPostprocessingOfItem:*(a1 + 32) info:*(a1 + 40) priority:{objc_msgSend(*(a1 + 48), "priority")}];
}

void __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke_2(uint64_t a1)
{
  v2 = [PXVideoContentProviderLoadingResult alloc];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) objectForKeyedSubscript:*MEMORY[0x1E6978E78]];
  v6 = [*(a1 + 64) priority];
  v7 = *(a1 + 88);
  v9[0] = *(a1 + 72);
  v9[1] = v7;
  v9[2] = *(a1 + 104);
  v8 = [(PXVideoContentProviderLoadingResult *)v2 initWithPlayerItem:v3 url:v4 timeRange:v9 timeRangeMapper:v5 error:0 priority:v6 description:@"Loaded from Media Provider"];
  [*(a1 + 32) setLoadingResult:v8];
}

void __104__PXDisplayAssetVideoContentProvider_request_didFinishWithPlayerItem_videoURL_downloadedTimeRange_info___block_invoke_3(uint64_t a1)
{
  v2 = [PXVideoContentProviderLoadingResult alloc];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) priority];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v7[0] = *MEMORY[0x1E6960C98];
  v7[1] = v5;
  v7[2] = *(MEMORY[0x1E6960C98] + 32);
  v6 = [(PXVideoContentProviderLoadingResult *)v2 initWithPlayerItem:0 url:0 timeRange:v7 timeRangeMapper:0 error:v3 priority:v4 description:@"Loading Failed"];
  [*(a1 + 32) setLoadingResult:v6];
}

- (void)requestLoadingProgressDidChange:(id)a3
{
  loadingQueue = self->_loadingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PXDisplayAssetVideoContentProvider_requestLoadingProgressDidChange___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(loadingQueue, block);
}

void __70__PXDisplayAssetVideoContentProvider_requestLoadingProgressDidChange___block_invoke(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v2 = *(*(a1 + 32) + 160);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PXDisplayAssetVideoContentProvider_requestLoadingProgressDidChange___block_invoke_2;
  v5[3] = &unk_1E772C670;
  v5[4] = v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__PXDisplayAssetVideoContentProvider_requestLoadingProgressDidChange___block_invoke_3;
  v4[3] = &unk_1E7746628;
  v4[4] = v3;
  v4[5] = v6;
  [v3 performChanges:v4];
  _Block_object_dispose(v6, 8);
}

uint64_t __70__PXDisplayAssetVideoContentProvider_requestLoadingProgressDidChange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = [a3 loadingProgress];
  if (v4 >= v6)
  {
    v6 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

- (void)_reloadAVObjects
{
  loadingQueue = self->_loadingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PXDisplayAssetVideoContentProvider__reloadAVObjects__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(loadingQueue, block);
}

- (void)_loadingQueue_reloadContent
{
  [(PXDisplayAssetVideoContentProvider *)self _loadingQueue_cancelAllRequests];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PXDisplayAssetVideoContentProvider__loadingQueue_reloadContent__block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXDisplayAssetVideoContentProvider *)self performChanges:v3];
}

uint64_t __65__PXDisplayAssetVideoContentProvider__loadingQueue_reloadContent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLoadingResult:0];
  v2 = *(a1 + 32);
  v3 = v2[21];

  return [v2 _loadingQueue_beginRequestForPriorityIfNeeded:v3];
}

- (void)_handlePostprocessedPlayerItem:(id)a3 priority:(int64_t)a4 description:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v23[0] = @"Unable to produce a post-processed player item for this video.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v11 errorWithDomain:@"PXVideoContentProviderErrorDomain" code:2 userInfo:v12];
  }

  loadingQueue = self->_loadingQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PXDisplayAssetVideoContentProvider__handlePostprocessedPlayerItem_priority_description___block_invoke;
  v17[3] = &unk_1E7747928;
  v17[4] = self;
  v18 = v8;
  v20 = v9;
  v21 = a4;
  v19 = v10;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  dispatch_async(loadingQueue, v17);
}

void __90__PXDisplayAssetVideoContentProvider__handlePostprocessedPlayerItem_priority_description___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PXDisplayAssetVideoContentProvider__handlePostprocessedPlayerItem_priority_description___block_invoke_2;
  v8[3] = &unk_1E772C648;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v11 = *(a1 + 64);
  v5 = v4;
  *&v6 = v3;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 performChanges:v8];
}

void __90__PXDisplayAssetVideoContentProvider__handlePostprocessedPlayerItem_priority_description___block_invoke_2(uint64_t a1)
{
  v2 = [PXVideoContentProviderLoadingResult alloc];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(MEMORY[0x1E6960C98] + 16);
  v9[0] = *MEMORY[0x1E6960C98];
  v9[1] = v7;
  v9[2] = *(MEMORY[0x1E6960C98] + 32);
  v8 = [(PXVideoContentProviderLoadingResult *)v2 initWithPlayerItem:v3 url:0 timeRange:v9 timeRangeMapper:0 error:v4 priority:v5 description:v6];
  [*(a1 + 32) setLoadingResult:v8];
}

- (void)_postprocessingQueue_performPostprocessingOfItem:(id)a3 info:(id)a4 priority:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__PXDisplayAssetVideoContentProvider__postprocessingQueue_performPostprocessingOfItem_info_priority___block_invoke;
  v10[3] = &unk_1E772C620;
  objc_copyWeak(v11, &location);
  v11[1] = a5;
  [(PXDisplayAssetVideoContentProvider *)self postprocessPlayerItem:v8 completionHandler:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __101__PXDisplayAssetVideoContentProvider__postprocessingQueue_performPostprocessingOfItem_info_priority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePostprocessedPlayerItem:v6 priority:*(a1 + 40) description:v5];
}

- (BOOL)_loadingQueue_needsNewRequestForPriority:(int64_t)a3
{
  v5 = [(PXVideoContentProvider *)self loadingResult];
  v6 = [v5 playerItem];
  if (v6)
  {
  }

  else
  {
    loadingQueue_requestsByPriority = self->_loadingQueue_requestsByPriority;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(NSMutableDictionary *)loadingQueue_requestsByPriority objectForKeyedSubscript:v8];

    if (!v9)
    {
      PXExists();
    }
  }

  return 0;
}

- (void)_loadingQueue_beginRequestForPriorityIfNeeded:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = self->_loadingQueue_asset;
  if ([(PXDisplayAsset *)v5 playbackStyle]<= 2)
  {
    v10 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      PXDisplayAssetPlaybackStyleDescription();
    }
  }

  else if (v5 && [(PXDisplayAssetVideoContentProvider *)self _loadingQueue_needsNewRequestForPriority:a3])
  {
    self->_loadingQueue_lastRequestedPriority = a3;
    v6 = [(PXDisplayAssetVideoContentProvider *)self mediaProvider];
    v7 = [PXDisplayAssetVideoContentProviderRequest startRequestWithAsset:v5 mediaProvider:v6 strategies:self->_strategies priority:a3 requestURLOnly:self->_requestURLOnly delegate:self loadingQueue:self->_loadingQueue];

    loadingQueue_requestsByPriority = self->_loadingQueue_requestsByPriority;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)loadingQueue_requestsByPriority setObject:v7 forKeyedSubscript:v9];
  }
}

- (void)_loadingQueue_cancelAllRequests
{
  [(NSMutableDictionary *)self->_loadingQueue_requestsByPriority enumerateKeysAndObjectsUsingBlock:&__block_literal_global_219];
  loadingQueue_requestsByPriority = self->_loadingQueue_requestsByPriority;

  [(NSMutableDictionary *)loadingQueue_requestsByPriority removeAllObjects];
}

- (void)_loadingQueueBeginLoadingWithPriority:(int64_t)a3
{
  v5 = [(PXVideoContentProvider *)self loadingResult];
  if ([v5 priority] < a3)
  {
    v6 = [v5 playerItem];

    if (!v6)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __76__PXDisplayAssetVideoContentProvider__loadingQueueBeginLoadingWithPriority___block_invoke;
      v10[3] = &unk_1E774C5F8;
      v10[4] = self;
      [(PXDisplayAssetVideoContentProvider *)self performChanges:v10];
    }
  }

  loadingQueue_asset = self->_loadingQueue_asset;
  if (loadingQueue_asset)
  {
    v8 = loadingQueue_asset;
    [(PXDisplayAssetVideoContentProvider *)self _loadingQueue_beginRequestForPriorityIfNeeded:a3];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__PXDisplayAssetVideoContentProvider__loadingQueueBeginLoadingWithPriority___block_invoke_2;
    v9[3] = &unk_1E774C5F8;
    v9[4] = self;
    [(PXDisplayAssetVideoContentProvider *)self performChanges:v9];
  }
}

- (void)_loadingQueue_setAsset:(id)a3
{
  v5 = a3;
  loadingQueue_asset = self->_loadingQueue_asset;
  if (loadingQueue_asset != v5)
  {
    v13 = v5;
    v7 = loadingQueue_asset;
    objc_storeStrong(&self->_loadingQueue_asset, a3);
    if (v7)
    {
      v8 = [(PXDisplayAsset *)v7 playbackStyle];
      if (v8 == [(PXDisplayAsset *)v13 playbackStyle])
      {
        v9 = v13;
        v10 = v7;
        v11 = v10;
        if (v9)
        {
          v12 = [(PXDisplayAsset *)v9 isContentEqualTo:v10];
          if (!v12)
          {
            v12 = [(PXDisplayAsset *)v11 isContentEqualTo:v9];
          }

          if (v12 == 2)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }

        if ([(PXDisplayAsset *)v9 playbackStyle]>= 3)
        {
          [(PXDisplayAssetVideoContentProvider *)self _loadingQueue_reloadContent];
        }
      }
    }

LABEL_12:

    v5 = v13;
  }
}

- (void)makeUniqueContentIdentifier
{
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v5 UUIDString];
  contentIdentifier = self->_contentIdentifier;
  self->_contentIdentifier = v3;
}

- (void)cancelLoading
{
  loadingQueue = self->_loadingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXDisplayAssetVideoContentProvider_cancelLoading__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(loadingQueue, block);
}

- (PXDisplayAsset)asset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  loadingQueue = self->_loadingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PXDisplayAssetVideoContentProvider_asset__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(loadingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  loadingQueue = self->_loadingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PXDisplayAssetVideoContentProvider_setAsset___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(loadingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__PXDisplayAssetVideoContentProvider_setAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadingQueue_setAsset:*(a1 + 32)];
}

- (void)reloadContent
{
  objc_initWeak(&location, self);
  loadingQueue = self->_loadingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PXDisplayAssetVideoContentProvider_reloadContent__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(loadingQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__PXDisplayAssetVideoContentProvider_reloadContent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadingQueue_reloadContent];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PXDisplayAssetVideoContentProvider;
  v4 = [(PXDisplayAssetVideoContentProvider *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, Asset %@, Media Provider: %@", v4, self->_loadingQueue_asset, self->_mediaProvider];

  return v5;
}

- (void)beginLoadingWithPriority:(int64_t)a3
{
  objc_initWeak(&location, self);
  loadingQueue = self->_loadingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PXDisplayAssetVideoContentProvider_beginLoadingWithPriority___block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(loadingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __63__PXDisplayAssetVideoContentProvider_beginLoadingWithPriority___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadingQueueBeginLoadingWithPriority:*(a1 + 40)];
}

- (id)analyticsPayload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(PXDisplayAssetVideoContentProvider *)self asset];
  v3 = v2;
  if (v2)
  {
    v6 = *MEMORY[0x1E6991E18];
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (PXDisplayAssetVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7 resourceReclamationController:(id)a8
{
  v28[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v27.receiver = self;
  v27.super_class = PXDisplayAssetVideoContentProvider;
  v19 = [(PXDisplayAssetVideoContentProvider *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_audioSessionKind = a6;
    objc_storeStrong(&v19->_loadingQueue_asset, a3);
    objc_storeStrong(&v20->_mediaProvider, a4);
    v21 = [v17 copy];
    strategies = v20->_strategies;
    v20->_strategies = v21;

    v20->_requestURLOnly = a7;
    if (![(NSArray *)v20->_strategies count])
    {
      v23 = +[PXDisplayAssetVideoContentDeliveryStrategy defaultStreamingMediumQualityStrategy];
      v28[0] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v25 = v20->_strategies;
      v20->_strategies = v24;
    }

    PXExists();
  }

  return 0;
}

- (PXDisplayAssetVideoContentProvider)initWithAsset:(id)a3 mediaProvider:(id)a4 deliveryStrategies:(id)a5 audioSessionKind:(int64_t)a6 requestURLOnly:(BOOL)a7
{
  v7 = a7;
  v12 = MEMORY[0x1E69C1AC8];
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v12);
  v17 = [(PXDisplayAssetVideoContentProvider *)self initWithAsset:v15 mediaProvider:v14 deliveryStrategies:v13 audioSessionKind:a6 requestURLOnly:v7 resourceReclamationController:v16];

  return v17;
}

- (PXDisplayAssetVideoContentProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetVideoContentProvider.m" lineNumber:94 description:{@"%s is not available as initializer", "-[PXDisplayAssetVideoContentProvider init]"}];

  abort();
}

@end