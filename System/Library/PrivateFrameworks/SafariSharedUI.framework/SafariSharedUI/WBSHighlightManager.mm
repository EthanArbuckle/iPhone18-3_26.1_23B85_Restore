@interface WBSHighlightManager
+ (void)initialize;
- (WBSHighlightManager)init;
- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate;
- (id)attributionViewForHighlight:(id)a3;
- (void)_didFetchHighlights;
- (void)_enableNewSLAttributionViewAppereance;
- (void)_setHighlights:(id)a3;
- (void)_showBannerIfNeededForPresenter:(id)a3;
- (void)_updateAttributionViews;
- (void)_updateHighlights;
- (void)fetchMetadataForHighlight:(id)a3 completionHandler:(id)a4;
- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4;
- (void)highlightCenterDidAddHighlights:(id)a3;
- (void)sendFeedbackForHighlight:(id)a3 withType:(unint64_t)a4 inPrivateBrowsing:(BOOL)a5;
- (void)updateHighlightForAttributionPresenter:(id)a3;
@end

@implementation WBSHighlightManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = NSClassFromString(&cfstr_Slhighlight.isa);
    if (v2)
    {
      v3 = v2;
      v4 = imp_implementationWithBlock(&__block_literal_global_18);

      class_addMethod(v3, sel_suggestionIdentifier, v4, "@@:");
    }
  }
}

- (WBSHighlightManager)init
{
  v13.receiver = self;
  v13.super_class = WBSHighlightManager;
  v2 = [(WBSHighlightManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Safari.HighlightManager", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = v2->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__WBSHighlightManager_init__block_invoke;
    block[3] = &unk_1E8283080;
    v6 = v2;
    v12 = v6;
    dispatch_async(v5, block);
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    linkDataCache = v6->_linkDataCache;
    v6->_linkDataCache = v7;

    [(WBSHighlightManager *)v6 _updateHighlights];
    [(WBSHighlightManager *)v6 _enableNewSLAttributionViewAppereance];
    v9 = v6;
  }

  return v2;
}

- (void)_updateHighlights
{
  self->_isFetchingHighlights = 1;
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__WBSHighlightManager__updateHighlights__block_invoke;
  block[3] = &unk_1E8283C90;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(internalQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_enableNewSLAttributionViewAppereance
{
  if (_enableNewSLAttributionViewAppereance_once != -1)
  {
    [WBSHighlightManager _enableNewSLAttributionViewAppereance];
  }
}

uint64_t __60__WBSHighlightManager__enableNewSLAttributionViewAppereance__block_invoke()
{
  SLAttributionViewClass = getSLAttributionViewClass();
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [SLAttributionViewClass useNewDefaultBackgroundStyle];
  }

  return result;
}

uint64_t __27__WBSHighlightManager_init__block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getSLHighlightCenterClass_softClass;
  v12 = getSLHighlightCenterClass_softClass;
  if (!getSLHighlightCenterClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getSLHighlightCenterClass_block_invoke;
    v8[3] = &unk_1E8283D08;
    v8[4] = &v9;
    __getSLHighlightCenterClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  return [*(*(a1 + 32) + 8) setDelegate:?];
}

void __40__WBSHighlightManager__updateHighlights__block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__WBSHighlightManager__updateHighlights__block_invoke_2;
  aBlock[3] = &unk_1E82856E8;
  objc_copyWeak(&v4, (a1 + 40));
  v2 = _Block_copy(aBlock);
  [*(*(a1 + 32) + 8) fetchHighlights:v2];

  objc_destroyWeak(&v4);
}

- (void)fetchMetadataForHighlight:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(NSCache *)self->_linkDataCache objectForKey:v8];
  if (v9)
  {
    v7[2](v7, v9);
  }

  else
  {
    v10 = [v6 attributions];
    v11 = [v10 firstObject];
    v12 = [v11 uniqueIdentifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke;
    v13[3] = &unk_1E8285678;
    v14 = v6;
    v15 = self;
    v16 = v8;
    v17 = v7;
    [(WBSHighlightManager *)self loadLinkMetadataForMessageWithGUID:v12 completionHandler:v13];
  }
}

void __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = [*(a1 + 32) identifier];
    v8 = WBS_LOG_CHANNEL_PREFIXInterstellar();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_cold_1(v7, v9, v6);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v29 = v7;
      _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "Highlight <%{public}@> has no metadata", buf, 0xCu);
    }

    v5 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  }

  v10 = [v5 URL];

  if (!v10)
  {
    v11 = [*(a1 + 32) resourceURL];
    [v5 setURL:v11];

    v12 = [v5 URL];
    [v5 setOriginalURL:v12];
  }

  v13 = [v5 title];

  if (!v13)
  {
    v14 = [v5 URL];
    v15 = [v14 safari_canonicalURL];
    v16 = [v15 safari_originalDataAsString];
    v17 = [v16 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];
    [v5 setTitle:v17];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_22;
  block[3] = &unk_1E8284E18;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v23 = v6;
  v24 = v18;
  v25 = v5;
  v26 = v19;
  v27 = *(a1 + 56);
  v20 = v5;
  v21 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_22(void *a1)
{
  if (!a1[4])
  {
    [*(a1[5] + 24) setObject:a1[6] forKey:a1[7]];
  }

  v2 = *(a1[8] + 16);

  return v2();
}

- (void)updateHighlightForAttributionPresenter:(id)a3
{
  v4 = a3;
  if (self->_isFetchingHighlights)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXInterstellar();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Defer checking for Highlight until the Highlight Center finishes fetching.", v10, 2u);
    }

    v6 = WBS_LOG_CHANNEL_PREFIXInterstellar();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(WBSHighlightManager *)v6 updateHighlightForAttributionPresenter:v4];
    }

    deferredAttributionPresenters = self->_deferredAttributionPresenters;
    if (!deferredAttributionPresenters)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = self->_deferredAttributionPresenters;
      self->_deferredAttributionPresenters = v8;

      deferredAttributionPresenters = self->_deferredAttributionPresenters;
    }

    [(NSMutableArray *)deferredAttributionPresenters addObject:v4];
  }

  else
  {
    [(WBSHighlightManager *)self _showBannerIfNeededForPresenter:v4];
  }
}

- (void)_showBannerIfNeededForPresenter:(id)a3
{
  v4 = a3;
  highlights = self->_highlights;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__WBSHighlightManager__showBannerIfNeededForPresenter___block_invoke;
  v11[3] = &unk_1E82856A0;
  v6 = v4;
  v12 = v6;
  v7 = [(NSArray *)highlights safari_firstObjectPassingTest:v11];
  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXInterstellar();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C6968000, v8, OS_LOG_TYPE_INFO, "Found a matching Highlight", v10, 2u);
    }

    v9 = WBS_LOG_CHANNEL_PREFIXInterstellar();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(WBSHighlightManager *)v9 _showBannerIfNeededForPresenter:v6];
    }
  }

  [v6 displayAttributionBannerForHighlightIfNeeded:v7];
}

uint64_t __55__WBSHighlightManager__showBannerIfNeededForPresenter___block_invoke(uint64_t a1, void *a2)
{
  v3 = WBSURLForHighlight(a2);
  v4 = [v3 safari_canonicalURL];
  v5 = [v4 safari_userVisibleString];
  v6 = [*(a1 + 32) attributionPresenterURL];
  v7 = [v6 safari_canonicalURL];
  v8 = [v7 safari_userVisibleString];
  v9 = [v5 isEqualToString:v8];

  return v9;
}

- (void)sendFeedbackForHighlight:(id)a3 withType:(unint64_t)a4 inPrivateBrowsing:(BOOL)a5
{
  v8 = a3;
  if (!a5)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXInterstellar();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WBSHighlightManager sendFeedbackForHighlight:v9 withType:v8 inPrivateBrowsing:a4];
    }

    [(SLHighlightCenter *)self->_highlightCenter feedbackForHighlight:v8 withType:a4 completionBlock:0];
  }
}

- (void)_updateAttributionViews
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(WBSHighlightManager *)self highlights];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [(NSMutableDictionary *)self->_highlightToAttributionViewMap objectForKeyedSubscript:v10];
        if (v11)
        {
          [(NSMutableDictionary *)v3 setObject:v11 forKeyedSubscript:v10];
        }

        else
        {
          v12 = [objc_alloc(getSLAttributionViewClass()) initWithHighlight:v9];
          [(NSMutableDictionary *)v3 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  highlightToAttributionViewMap = self->_highlightToAttributionViewMap;
  self->_highlightToAttributionViewMap = v3;
}

- (id)attributionViewForHighlight:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(NSMutableDictionary *)self->_highlightToAttributionViewMap objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [objc_alloc(getSLAttributionViewClass()) initWithHighlight:v4];
    [(NSMutableDictionary *)self->_highlightToAttributionViewMap setObject:v6 forKeyedSubscript:v5];
  }

  v7 = v6;

  return v7;
}

- (void)_setHighlights:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 safari_filterObjectsUsingBlock:&__block_literal_global_28];
  v5 = v4;
  if (v4 != self->_highlights)
  {
    if ([(NSArray *)v4 count]> 0x18)
    {
      v6 = [(NSArray *)v5 subarrayWithRange:0, 24];
    }

    else
    {
      v6 = [(NSArray *)v5 copy];
    }

    highlights = self->_highlights;
    self->_highlights = v6;

    [(WBSHighlightManager *)self _updateAttributionViews];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"WBSHighlightsContentDidChangeNotification" object:self];

    v9 = WBS_LOG_CHANNEL_PREFIXStartPage();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_highlights;
      v11 = v9;
      v13 = 134217984;
      v14 = [(NSArray *)v10 count];
      _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Received %lu highlights for suggestions", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_suggestionsProviderDelegate);
    [WeakRetained startPageSuggestionsProvider:self didUpdateSuggestions:self->_highlights];
  }
}

uint64_t __38__WBSHighlightManager__setHighlights___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 resourceURL];
  v3 = [v2 safari_isSharedTabGroupURL];

  return v3 ^ 1u;
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXInterstellar();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__WBSHighlightManager__updateHighlights__block_invoke_2_cold_1(v8, v6);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__WBSHighlightManager__updateHighlights__block_invoke_30;
    block[3] = &unk_1E8283A38;
    v9 = &v15;
    objc_copyWeak(&v15, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
      *buf = 134217984;
      v17 = [v5 count];
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Fetched %ld Highlights.", buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__WBSHighlightManager__updateHighlights__block_invoke_31;
    v11[3] = &unk_1E8283C90;
    v9 = &v13;
    objc_copyWeak(&v13, (a1 + 32));
    v12 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  objc_destroyWeak(v9);
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didFetchHighlights];
    WeakRetained = v2;
  }
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setHighlights:*(a1 + 32)];
    [v3 _didFetchHighlights];
    WeakRetained = v3;
  }
}

- (void)_didFetchHighlights
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_deferredAttributionPresenters;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(WBSHighlightManager *)self _showBannerIfNeededForPresenter:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  deferredAttributionPresenters = self->_deferredAttributionPresenters;
  self->_deferredAttributionPresenters = 0;

  self->_isFetchingHighlights = 0;
}

- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke;
  v7[3] = &unk_1E82834A0;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXInterstellar();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 134217984;
    v17 = [v3 count];
    _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "%ld Highlight(s) removed.", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_33;
  v15[3] = &unk_1E8285710;
  v5 = *(a1 + 32);
  v15[4] = *(a1 + 40);
  v6 = [v5 safari_setByApplyingBlock:v15];
  [*(a1 + 40) _handleRemovalOfHighlights:v6];
  v7 = *(*(a1 + 40) + 64);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_2;
  v13 = &unk_1E82856A0;
  v14 = v6;
  v8 = v6;
  v9 = [v7 safari_filterObjectsUsingBlock:&v10];
  [*(a1 + 40) _setHighlights:{v9, v10, v11, v12, v13}];
}

id __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  [*(*(a1 + 32) + 24) removeObjectForKey:v3];

  return v3;
}

uint64_t __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)highlightCenterDidAddHighlights:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WBSHighlightManager_highlightCenterDidAddHighlights___block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __55__WBSHighlightManager_highlightCenterDidAddHighlights___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXInterstellar();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C6968000, v2, OS_LOG_TYPE_INFO, "Highlight Center did add Highlights.", v4, 2u);
  }

  return [*(a1 + 32) _updateHighlights];
}

- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsProviderDelegate);

  return WeakRetained;
}

void __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(&dword_1C6968000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch metadata for Highlight <%{public}@>: %{public}@", v6, 0x16u);
}

- (void)updateHighlightForAttributionPresenter:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 attributionPresenterURL];
  v5 = [v4 safari_userVisibleString];
  OUTLINED_FUNCTION_0_0(&dword_1C6968000, v6, v7, "Defer checking for Highlight for tab with URL: %{private}@", v8, v9, v10, v11, 3u);
}

- (void)_showBannerIfNeededForPresenter:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 attributionPresenterURL];
  v5 = [v4 safari_userVisibleString];
  OUTLINED_FUNCTION_0_0(&dword_1C6968000, v6, v7, "Found a matching Highlight for tab with URL: %{private}@", v8, v9, v10, v11, 3u);
}

- (void)sendFeedbackForHighlight:(void *)a1 withType:(void *)a2 inPrivateBrowsing:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 identifier];
  v7 = @"Other";
  if (a3 == 1)
  {
    v7 = @"Interacted";
  }

  if (!a3)
  {
    v7 = @"Displayed";
  }

  v8 = v7;
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(&dword_1C6968000, v5, OS_LOG_TYPE_DEBUG, "Sending feedback for highlight <%{public}@>: <%{public}@>", v9, 0x16u);
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to fetch highlights: %{public}@", &v5, 0xCu);
}

@end