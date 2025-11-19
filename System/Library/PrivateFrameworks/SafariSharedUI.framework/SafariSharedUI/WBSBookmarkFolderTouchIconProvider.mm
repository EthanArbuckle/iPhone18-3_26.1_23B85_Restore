@interface WBSBookmarkFolderTouchIconProvider
+ (BOOL)_appUsesLeftToRightLayout;
- (NSArray)allFolderUUIDs;
- (WBSBookmarkFolderTouchIconProvider)init;
- (WBSSiteMetadataProviderDelegate)providerDelegate;
- (id)_arrayByPaddingArray:(id)a3 toMaximumNumberOfThumbnailsWithObject:(id)a4 targetCount:(unint64_t)a5;
- (id)_drawTouchIconForRequest:(id)a3;
- (id)backgroundColorForRequest:(id)a3;
- (id)cachedImageForFolderUUID:(id)a3;
- (id)configurationForRequest:(id)a3;
- (id)responseForRequest:(id)a3 willProvideUpdates:(BOOL *)a4;
- (void)_coalesceResponseDispatchForRequest:(id)a3;
- (void)_dispatchResponseForRequest:(id)a3;
- (void)_dispatchResponseForRequest:(id)a3 touchIcon:(id)a4;
- (void)_prepareResponseForRequest:(id)a3 allowDelayedResponse:(BOOL)a4;
- (void)_registerInfo:(id)a3 forRequest:(id)a4;
- (void)_stopWatchingUpdatesForRequests:(id)a3;
- (void)contentOfFolderDidUpdateWithUUID:(id)a3;
- (void)prepareResponseForRequest:(id)a3 allowDelayedResponse:(BOOL)a4;
- (void)requestsWithFolderUUIDsDidBecomeInvalid:(id)a3;
- (void)stopWatchingUpdatesForRequest:(id)a3;
@end

@implementation WBSBookmarkFolderTouchIconProvider

- (WBSBookmarkFolderTouchIconProvider)init
{
  v16.receiver = self;
  v16.super_class = WBSBookmarkFolderTouchIconProvider;
  v2 = [(WBSBookmarkFolderTouchIconProvider *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.WBSBookmarkFolderTouchIconProvider.%@.%p._internalQueue", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    bookmarkFolderIdentifiersToRequestSets = v2->_bookmarkFolderIdentifiersToRequestSets;
    v2->_bookmarkFolderIdentifiersToRequestSets = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    requestsToRequestInfos = v2->_requestsToRequestInfos;
    v2->_requestsToRequestInfos = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    folderUUIDsToTouchIconInfo = v2->_folderUUIDsToTouchIconInfo;
    v2->_folderUUIDsToTouchIconInfo = v12;

    v14 = v2;
  }

  return v2;
}

- (id)configurationForRequest:(id)a3
{
  if (defaultConfiguration_onceToken != -1)
  {
    [WBSBookmarkFolderTouchIconProvider configurationForRequest:];
  }

  v4 = defaultConfiguration_configuration;

  return v4;
}

- (NSArray)allFolderUUIDs
{
  v3 = self->_folderUUIDsToTouchIconInfo;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_folderUUIDsToTouchIconInfo allKeys];
  objc_sync_exit(v3);

  return v4;
}

- (id)cachedImageForFolderUUID:(id)a3
{
  v4 = a3;
  v5 = self->_folderUUIDsToTouchIconInfo;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_folderUUIDsToTouchIconInfo objectForKeyedSubscript:v4];
  v7 = [v6 touchIcon];

  objc_sync_exit(v5);

  return v7;
}

- (void)contentOfFolderDidUpdateWithUUID:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__WBSBookmarkFolderTouchIconProvider_contentOfFolderDidUpdateWithUUID___block_invoke;
  v7[3] = &unk_1E82834A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __71__WBSBookmarkFolderTouchIconProvider_contentOfFolderDidUpdateWithUUID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _prepareResponseForRequest:*(*(&v7 + 1) + 8 * v6++) allowDelayedResponse:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)requestsWithFolderUUIDsDidBecomeInvalid:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSBookmarkFolderTouchIconProvider_requestsWithFolderUUIDsDidBecomeInvalid___block_invoke;
  v7[3] = &unk_1E82834A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __78__WBSBookmarkFolderTouchIconProvider_requestsWithFolderUUIDsDidBecomeInvalid___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 32) removeObjectsForKeys:*(a1 + 40)];
  objc_sync_exit(v2);

  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v7), v9}];
        if (v8)
        {
          [v3 unionSet:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) _stopWatchingUpdatesForRequests:v3];
}

- (id)responseForRequest:(id)a3 willProvideUpdates:(BOOL *)a4
{
  v6 = a3;
  *a4 = [(WBSBookmarkFolderTouchIconProvider *)self canProvideUpdatesForRequest:v6];
  v7 = [(WBSBookmarkFolderTouchIconProvider *)self folderUUIDForRequest:v6];
  v8 = self->_folderUUIDsToTouchIconInfo;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_folderUUIDsToTouchIconInfo objectForKey:v7];
  v10 = [v9 touchIcon];

  objc_sync_exit(v8);
  if (v10 || ([(WBSBookmarkFolderTouchIconProvider *)self defaultFolderIconForRequest:v6], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [(WBSBookmarkFolderTouchIconProvider *)self backgroundColorForRequest:v6];
    v12 = [WBSTouchIconResponse responseWithURL:0 touchIcon:v10 generated:1 extractedBackgroundColor:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)prepareResponseForRequest:(id)a3 allowDelayedResponse:(BOOL)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__WBSBookmarkFolderTouchIconProvider_prepareResponseForRequest_allowDelayedResponse___block_invoke;
  block[3] = &unk_1E82834C8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)stopWatchingUpdatesForRequest:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSBookmarkFolderTouchIconProvider_stopWatchingUpdatesForRequest___block_invoke;
  v7[3] = &unk_1E82834A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __68__WBSBookmarkFolderTouchIconProvider_stopWatchingUpdatesForRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
  [v1 _stopWatchingUpdatesForRequests:v2];
}

- (void)_stopWatchingUpdatesForRequests:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_requestsToRequestInfos objectForKeyedSubscript:v11, v20];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 subrequestTokens];
          [v5 unionSet:v14];

          [(NSMutableDictionary *)self->_requestsToRequestInfos removeObjectForKey:v11];
          v15 = [(WBSBookmarkFolderTouchIconProvider *)self folderUUIDForRequest:v11];
          v16 = [(NSMutableDictionary *)self->_bookmarkFolderIdentifiersToRequestSets objectForKeyedSubscript:v15];
          [v16 removeObject:v11];
          v17 = [v16 count];
          if (v15)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            [(NSMutableDictionary *)self->_bookmarkFolderIdentifiersToRequestSets setObject:0 forKeyedSubscript:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
    [WeakRetained siteMetadataProvider:self cancelRequestsWithTokens:v5];
  }
}

+ (BOOL)_appUsesLeftToRightLayout
{
  if (_appUsesLeftToRightLayout_onceToken != -1)
  {
    +[WBSBookmarkFolderTouchIconProvider _appUsesLeftToRightLayout];
  }

  return _appUsesLeftToRightLayout_usesLeftToRight;
}

void __63__WBSBookmarkFolderTouchIconProvider__appUsesLeftToRightLayout__block_invoke_2()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  _appUsesLeftToRightLayout_usesLeftToRight = [v0 userInterfaceLayoutDirection] == 0;
}

- (id)backgroundColorForRequest:(id)a3
{
  v4 = a3;
  v5 = [(WBSBookmarkFolderTouchIconProvider *)v4 backgroundColor];
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = self;
  }

  v7 = [(WBSBookmarkFolderTouchIconProvider *)v6 backgroundColor];

  return v7;
}

- (void)_prepareResponseForRequest:(id)a3 allowDelayedResponse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WBSBookmarkFolderTouchIconProvider *)self configurationForRequest:v6];
  v8 = -[WBSBookmarkFolderTouchIconProvider subrequestsForRequest:maximumNumberOfSubrequests:](self, "subrequestsForRequest:maximumNumberOfSubrequests:", v6, [v7 maximumNumberOfThumbnailIcons]);
  v9 = [(NSMutableDictionary *)self->_requestsToRequestInfos objectForKeyedSubscript:v6];
  v10 = [v9 subrequests];
  v11 = [v10 isEqualToArray:v8];

  if ((v11 & 1) == 0)
  {
    v12 = [v8 count];
    v13 = [(WBSBookmarkFolderTouchIconProvider *)self defaultFolderIconForRequest:v6];
    v14 = [(WBSBookmarkFolderTouchIconProvider *)self backgroundColorForRequest:v6];
    v15 = [WBSTouchIconResponse responseWithURL:0 touchIcon:v13 generated:1 extractedBackgroundColor:v14];
    WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
    if (v12)
    {
      v29 = WeakRetained;
      v27 = v14;
      v28 = v13;
      if (v4)
      {
        [WeakRetained siteMetadataProvider:self didReceiveResponse:v15 ofType:1 didReceiveNewData:0 forRequest:v6];
      }

      v17 = objc_alloc_init(_WBSBookmarkFolderTouchIconProviderRequestInfo);
      [(_WBSBookmarkFolderTouchIconProviderRequestInfo *)v17 setSubrequests:v8];
      [(WBSBookmarkFolderTouchIconProvider *)self _registerInfo:v17 forRequest:v6];
      v18 = [MEMORY[0x1E695DFA8] set];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __86__WBSBookmarkFolderTouchIconProvider__prepareResponseForRequest_allowDelayedResponse___block_invoke;
      v31[3] = &unk_1E8283518;
      v32 = v7;
      v33 = self;
      v19 = v29;
      v34 = v19;
      v35 = v6;
      v36 = v18;
      v20 = v18;
      [v8 enumerateObjectsUsingBlock:v31];
      [(_WBSBookmarkFolderTouchIconProviderRequestInfo *)v17 setSubrequestTokens:v20];
      v21 = [v9 subrequestTokens];
      [v19 siteMetadataProvider:self cancelRequestsWithTokens:v21];

      v22 = v29;
      v14 = v27;
      v13 = v28;
    }

    else
    {
      v22 = WeakRetained;
      [WeakRetained siteMetadataProvider:self didReceiveResponse:v15 ofType:0 didReceiveNewData:1 forRequest:v6];
      v23 = [v7 backgroundColorForEmptySlots];

      if (v23)
      {
        v24 = objc_alloc_init(_WBSBookmarkFolderTouchIconProviderRequestInfo);
        [MEMORY[0x1E695DFD8] set];
        v30 = v15;
        v26 = v25 = v22;
        [(_WBSBookmarkFolderTouchIconProviderRequestInfo *)v24 setSubrequestTokens:v26];

        v22 = v25;
        v15 = v30;
        [(WBSBookmarkFolderTouchIconProvider *)self _registerInfo:v24 forRequest:v6];
        [(WBSBookmarkFolderTouchIconProvider *)self _dispatchResponseForRequest:v6];
      }
    }
  }
}

void __86__WBSBookmarkFolderTouchIconProvider__prepareResponseForRequest_allowDelayedResponse___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) maximumNumberOfThumbnailIcons] <= a3)
  {
    *a4 = 1;
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 56)];
    v11 = *(*(a1 + 40) + 8);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __86__WBSBookmarkFolderTouchIconProvider__prepareResponseForRequest_allowDelayedResponse___block_invoke_2;
    v16 = &unk_1E82834F0;
    objc_copyWeak(v18, &location);
    v17 = *(a1 + 56);
    v18[1] = a3;
    v12 = [v8 siteMetadataProvider:v9 registerSubrequest:v7 forRequests:v10 queue:v11 responseHandler:&v13];

    if (v12)
    {
      [*(a1 + 64) addObject:{v12, v13, v14, v15, v16}];
    }

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __86__WBSBookmarkFolderTouchIconProvider__prepareResponseForRequest_allowDelayedResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = v8;
    v5 = [WeakRetained[3] objectForKeyedSubscript:*(a1 + 32)];
    v6 = [v4 icon];
    [v5 setThumbnailImage:v6 atIndex:*(a1 + 48)];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isGenerated])
    {
      v7 = [v4 extractedBackgroundColor];
    }

    else
    {
      v7 = 0;
    }

    [v5 setBackgroundColor:v7 atIndex:*(a1 + 48)];
    [WeakRetained _coalesceResponseDispatchForRequest:*(a1 + 32)];
  }
}

- (void)_registerInfo:(id)a3 forRequest:(id)a4
{
  v8 = a4;
  [(NSMutableDictionary *)self->_requestsToRequestInfos setObject:a3 forKeyedSubscript:v8];
  v6 = [(WBSBookmarkFolderTouchIconProvider *)self folderUUIDForRequest:v8];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_bookmarkFolderIdentifiersToRequestSets objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      [(NSMutableDictionary *)self->_bookmarkFolderIdentifiersToRequestSets setObject:v7 forKeyedSubscript:v6];
    }

    [v7 addObject:v8];
  }
}

- (void)_coalesceResponseDispatchForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_requestsToRequestInfos objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5 && ([v5 hasScheduledCoalescedUpdate] & 1) == 0)
  {
    [v6 setHasScheduledCoalescedUpdate:1];
    objc_initWeak(&location, self);
    v7 = dispatch_time(0, 10000000);
    internalQueue = self->_internalQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__WBSBookmarkFolderTouchIconProvider__coalesceResponseDispatchForRequest___block_invoke;
    v9[3] = &unk_1E8283540;
    objc_copyWeak(&v12, &location);
    v10 = v4;
    v11 = v6;
    dispatch_after(v7, internalQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

uint64_t __74__WBSBookmarkFolderTouchIconProvider__coalesceResponseDispatchForRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dispatchResponseForRequest:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 setHasScheduledCoalescedUpdate:0];
}

- (void)_dispatchResponseForRequest:(id)a3
{
  v23 = a3;
  v4 = [(NSMutableDictionary *)self->_requestsToRequestInfos objectForKeyedSubscript:?];
  if (v4)
  {
    [v23 sizeForDrawing];
    v6 = v5;
    v8 = v7;
    v9 = [(WBSBookmarkFolderTouchIconProvider *)self folderUUIDForRequest:v23];
    v10 = self->_folderUUIDsToTouchIconInfo;
    objc_sync_enter(v10);
    v11 = [(NSMutableDictionary *)self->_folderUUIDsToTouchIconInfo objectForKey:v9];
    objc_sync_exit(v10);

    v12 = [v4 thumbnailImages];
    v13 = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 containsObject:v13];

    if (v14)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = [v4 backgroundColors];
    v16 = [v11 backgroundColors];
    if ([v16 isEqual:v15])
    {
      v17 = [v11 thumbnailImages];
      v18 = [v17 isEqualToArray:v12];

      if (!v18)
      {
LABEL_10:
        v16 = [(WBSBookmarkFolderTouchIconProvider *)self _drawTouchIconForRequest:v23];
        v21 = [[_WBSBookmarkFolderTouchIconProviderInfo alloc] initWithThumbnailImages:v12 backgroundColors:v15 touchIcon:v16];
        if (v9)
        {
          v22 = self->_folderUUIDsToTouchIconInfo;
          objc_sync_enter(v22);
          [(NSMutableDictionary *)self->_folderUUIDsToTouchIconInfo setObject:v21 forKeyedSubscript:v9];
          objc_sync_exit(v22);
        }

        [(WBSBookmarkFolderTouchIconProvider *)self _dispatchResponseForRequest:v23 touchIcon:v16];

        goto LABEL_13;
      }

      v16 = [v11 touchIcon];
      [v16 size];
      if (v16 && v19 >= v6 && v20 >= v8)
      {
        [(WBSBookmarkFolderTouchIconProvider *)self _dispatchResponseForRequest:v23 touchIcon:v16];
LABEL_13:

        goto LABEL_14;
      }
    }

    goto LABEL_10;
  }

LABEL_15:
}

- (void)_dispatchResponseForRequest:(id)a3 touchIcon:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_requestsToRequestInfos objectForKeyedSubscript:v11];

  if (v7)
  {
    v8 = [(WBSBookmarkFolderTouchIconProvider *)self backgroundColorForRequest:v11];
    v9 = [WBSTouchIconResponse responseWithURL:0 touchIcon:v6 generated:1 extractedBackgroundColor:v8];
    WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
    [WeakRetained siteMetadataProvider:self didReceiveResponse:v9 ofType:0 didReceiveNewData:1 forRequest:v11];
  }
}

- (id)_drawTouchIconForRequest:(id)a3
{
  v4 = a3;
  v5 = [(WBSBookmarkFolderTouchIconProvider *)self configurationForRequest:v4];
  v6 = [(NSMutableDictionary *)self->_requestsToRequestInfos objectForKeyedSubscript:v4];
  [v4 sizeForDrawing];
  v8 = v7;
  v10 = v9;
  v38 = [(WBSBookmarkFolderTouchIconProvider *)self backgroundColorForRequest:v4];
  [v38 safari_luminance];
  v12 = v11;
  v13 = [MEMORY[0x1E69DC888] safari_colorWithRGBColorComponents:&unk_1F466CFE0];
  v14 = [v6 thumbnailImages];
  v15 = [v6 backgroundColors];
  v16 = [v5 backgroundColorForEmptySlots];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
    v18 = -[WBSBookmarkFolderTouchIconProvider _arrayByPaddingArray:toMaximumNumberOfThumbnailsWithObject:targetCount:](self, "_arrayByPaddingArray:toMaximumNumberOfThumbnailsWithObject:targetCount:", v14, v17, [v5 maximumNumberOfThumbnailIcons]);

    v19 = [v5 backgroundColorForEmptySlots];
    v20 = -[WBSBookmarkFolderTouchIconProvider _arrayByPaddingArray:toMaximumNumberOfThumbnailsWithObject:targetCount:](self, "_arrayByPaddingArray:toMaximumNumberOfThumbnailsWithObject:targetCount:", v15, v19, [v5 maximumNumberOfThumbnailIcons]);

    v15 = v20;
    v14 = v18;
  }

  v21 = +[WBSBookmarkFolderTouchIconProvider _appUsesLeftToRightLayout];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke;
  aBlock[3] = &unk_1E82835D0;
  v46 = v8;
  v47 = v10;
  v22 = v5;
  v40 = v22;
  v41 = self;
  v37 = v4;
  v42 = v37;
  v23 = v14;
  v43 = v23;
  v24 = v15;
  v44 = v24;
  v49 = v21;
  v48 = v12;
  v25 = v13;
  v45 = v25;
  v26 = _Block_copy(aBlock);
  v27 = [MEMORY[0x1E69DCAB8] safari_imageWithSize:v26 actions:{v8, v10}];
  if ([v24 indexOfObjectPassingTest:&__block_literal_global_29] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v28 = v35 = v25;
    [MEMORY[0x1E69DD1B8] _currentTraitCollection];
    v29 = v36 = v6;
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v28];
    [v27 imageAsset];
    v30 = v23;
    v32 = v31 = v22;
    v33 = [MEMORY[0x1E69DCAB8] safari_imageWithSize:v26 actions:{v8, v10}];
    [v32 registerImage:v33 withTraitCollection:v28];

    v22 = v31;
    v23 = v30;
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v29];

    v6 = v36;
    v25 = v35;
  }

  [(WBSBookmarkFolderTouchIconProvider *)self didCreateTouchIcon:v27];

  return v27;
}

void __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke(uint64_t a1, CGContextRef c)
{
  v2 = c;
  v53[2] = *MEMORY[0x1E69E9840];
  v54 = *(a1 + 80);
  v4 = (a1 + 80);
  v5 = CGContextConvertSizeToDeviceSpace(c, v54).width / v54.width;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&aBlock[4] = v5;
  v6 = _Block_copy(aBlock);
  if ([*(v4 - 6) fillIconWithBackgroundColor])
  {
    v7 = [*(a1 + 40) backgroundColorForRequest:*(a1 + 48)];
    [v7 setFill];
    v55.size.width = *(a1 + 80);
    v55.size.height = *(a1 + 88);
    v55.origin.x = 0.0;
    v55.origin.y = 0.0;
    v8 = CGPathCreateWithRect(v55, 0);
    CGContextAddPath(v2, v8);
    CGContextFillPath(v2);
    CGPathRelease(v8);
  }

  v9 = *(a1 + 80);
  [*(a1 + 32) thumbnailIconInnerMarginScaleFactor];
  v51 = v6[2](v6, v9 * v10);
  v11 = *(a1 + 88);
  [*(a1 + 32) thumbnailIconInnerMarginScaleFactor];
  v50 = v6[2](v6, v11 * v12);
  v13 = *(a1 + 80);
  [*(a1 + 32) thumbnailIconOuterMarginScaleFactor];
  v49 = v6[2](v6, v13 * v14);
  v15 = *(a1 + 88);
  [*(a1 + 32) thumbnailIconOuterMarginScaleFactor];
  v48 = v6[2](v6, v15 * v16);
  v17 = *(a1 + 80);
  [*(a1 + 32) thumbnailIconScaleFactor];
  v19 = v6[2](v6, v17 * v18);
  *&v46[4] = v5;
  v47 = v19;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke_3;
  v46[3] = &__block_descriptor_40_e23_v48__0d8Q16_d24_d32_d40l;
  v20 = _Block_copy(v46);
  v20[2](v20, [*(a1 + 32) maximumNumberOfThumbnailsPerRow], &v48, &v50, &v47, *(a1 + 88));
  v20[2](v20, [*(a1 + 32) maximumNumberOfThumbnailsPerRow], &v49, &v51, &v47, *(a1 + 80));
  v21 = 0x1E69DD000uLL;
  v22 = [MEMORY[0x1E69DD1B8] _traitCollectionWithBackgroundLevel:1];
  v23 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v24 = v23;
  v25 = MEMORY[0x1E69DD1B8];
  if (v23)
  {
    v53[0] = v23;
    v53[1] = v22;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v27 = v26 = v2;
    v28 = [v25 traitCollectionWithTraitsFromCollections:v27];
    [v25 _setCurrentTraitCollection:v28];

    v2 = v26;
    v21 = 0x1E69DD000;
  }

  else
  {
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v22];
  }

  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke_4;
  v33 = &unk_1E82835A8;
  v37 = v2;
  v29 = *(a1 + 56);
  v34 = *(a1 + 64);
  v35 = *(a1 + 32);
  v45 = *(a1 + 104);
  v38 = v49;
  v39 = v51;
  v40 = v47;
  v41 = *v4;
  v42 = v48;
  v43 = v50;
  v44 = *(a1 + 96);
  v36 = *(a1 + 72);
  [v29 enumerateObjectsUsingBlock:&v30];
  [*(v21 + 440) _setCurrentTraitCollection:{v24, v30, v31, v32, v33}];
}

double __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke_3(uint64_t a1, unint64_t a2, double *a3, double *a4, double *a5, double a6)
{
  v6 = *a3;
  v7 = *a4 * (a2 - 1) + *a3 * 2.0 + *a5 * a2 - a6;
  v8 = *(a1 + 32);
  v9 = llround(v7 / v8);
  if (v9 < 0)
  {
    v9 = -v9;
  }

  v10 = v7 < 0.0;
  v11 = 1.0;
  if (v10)
  {
    v11 = -1.0;
  }

  result = v11 / v8;
  if (v9 >= 2)
  {
    do
    {
      v6 = v6 - result;
      v9 -= 2;
    }

    while (v9 > 1);
    *a3 = v6;
  }

  if (v9 == 1)
  {
    *a4 = result + *a4;
    result = *a5 - result;
    *a5 = result;
  }

  return result;
}

void __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke_4(uint64_t a1, void *a2, unint64_t a3)
{
  v23 = a2;
  CGContextSaveGState(*(a1 + 56));
  v5 = [MEMORY[0x1E695DFB0] null];
  if (v5 == v23)
  {
    v6 = 0;
  }

  else
  {
    v6 = v23;
  }

  v7 = v6;

  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [MEMORY[0x1E695DFB0] null];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = a3 / [*(a1 + 40) maximumNumberOfThumbnailsPerRow];
  v13 = a3 % [*(a1 + 40) maximumNumberOfThumbnailsPerRow];
  v14 = *(a1 + 80);
  if (*(a1 + 128) == 1)
  {
    v15 = *(a1 + 64) + (*(a1 + 72) + v14) * v13;
  }

  else
  {
    v15 = *(a1 + 88) - (v14 + *(a1 + 64) + (*(a1 + 72) + v14) * v13);
  }

  v16 = *(a1 + 104) + (*(a1 + 112) + v14) * v12;
  if (v14 <= 60.0)
  {
    v17 = 3.0;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v15 cornerRadius:{*(a1 + 104) + (*(a1 + 112) + v14) * v12, v14, v14, v17}];
  [v18 addClip];
  if (v11)
  {
    [v11 setFill];
    v25.origin.x = v15;
    v25.origin.y = v16;
    v25.size.width = v14;
    v25.size.height = v14;
    v19 = CGPathCreateWithRect(v25, 0);
    CGContextAddPath(*(a1 + 56), v19);
    CGContextFillPath(*(a1 + 56));
    CGPathRelease(v19);
  }

  if (v7)
  {
    [v7 drawInRect:{v15, v16, v14, v14}];
    [v7 safari_computeAverageLuminance];
    if (vabdd_f64(v20, *(a1 + 120)) < 0.1)
    {
      v21 = [*(a1 + 40) colorForDarkeningThumbnailBackground];

      if (v21)
      {
        CGContextSetBlendMode(*(a1 + 56), kCGBlendModeDarken);
        CGContextSetAlpha(*(a1 + 56), 0.1);
        v22 = [*(a1 + 40) colorForDarkeningThumbnailBackground];
        [v22 setFill];

        v26.origin.x = v15;
        v26.origin.y = v16;
        v26.size.width = v14;
        v26.size.height = v14;
        CGContextFillRect(*(a1 + 56), v26);
      }

      else
      {
        [*(a1 + 48) setStroke];
        [v18 stroke];
      }
    }
  }

  CGContextRestoreGState(*(a1 + 56));
}

uint64_t __63__WBSBookmarkFolderTouchIconProvider__drawTouchIconForRequest___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFB0];
  v3 = a2;
  v4 = [v2 null];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

- (id)_arrayByPaddingArray:(id)a3 toMaximumNumberOfThumbnailsWithObject:(id)a4 targetCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 count] >= a5)
  {
    v13 = v7;
  }

  else
  {
    v9 = [v7 mutableCopy];
    v10 = [v7 count];
    v11 = a5 > v10;
    v12 = a5 - v10;
    if (v11)
    {
      do
      {
        [v9 addObject:v8];
        --v12;
      }

      while (v12);
    }

    v13 = [v9 copy];
  }

  return v13;
}

- (WBSSiteMetadataProviderDelegate)providerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);

  return WeakRetained;
}

@end