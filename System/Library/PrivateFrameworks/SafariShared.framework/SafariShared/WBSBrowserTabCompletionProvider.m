@interface WBSBrowserTabCompletionProvider
- (BOOL)_isOperationValidForQuery:(id)a3 tabInfos:(id)a4 selectedTabInfo:(id)a5;
- (NSArray)tabInfos;
- (WBSBrowserTabCompletionProvider)init;
- (WBSBrowserTabCompletionProviderDelegate)delegate;
- (WBSBrowserTabCompletionProviderSource)dataSource;
- (id)_matchesForQuery:(id)a3 tabInfos:(id)a4 selectedTabInfo:(id)a5 forQueryID:(int64_t)a6;
- (id)bestTabCompletionMatchFromMatches:(id)a3 withTopHitURL:(id)a4;
- (id)bestTabCompletionMatchWithTopHitURL:(id)a3;
- (id)selectedTabInfo;
- (int64_t)_compareTabMatch:(id)a3 otherTabMatch:(id)a4;
- (unint64_t)_distanceFromSelectedTabForTabMatch:(id)a3;
- (void)_prepareQueue;
- (void)invalidate;
- (void)setCurrentQuery:(id)a3 forQueryID:(int64_t)a4;
- (void)tabCompletionMatchesForQuery:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSBrowserTabCompletionProvider

- (WBSBrowserTabCompletionProvider)init
{
  v5.receiver = self;
  v5.super_class = WBSBrowserTabCompletionProvider;
  v2 = [(WBSBrowserTabCompletionProvider *)&v5 init];
  if (v2)
  {
    if ([WBSBrowserTabCompletionProvider init]::onceToken != -1)
    {
      [WBSBrowserTabCompletionProvider init];
    }

    v3 = v2;
  }

  return v2;
}

- (void)_prepareQueue
{
  queue = self->_queue;
  if (queue)
  {

    [(NSOperationQueue *)queue cancelAllOperations];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v5 = self->_queue;
    self->_queue = v4;

    [(NSOperationQueue *)self->_queue setQualityOfService:17];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.%@.%p.operationQueue", objc_opt_class(), self];
    [(NSOperationQueue *)self->_queue setName:?];
  }
}

- (NSArray)tabInfos
{
  tabInfos = self->_tabInfos;
  if (!tabInfos)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained tabInfosForBrowserTabCompletionProvider:self];
    v6 = self->_tabInfos;
    self->_tabInfos = v5;

    tabInfos = self->_tabInfos;
  }

  return tabInfos;
}

- (id)selectedTabInfo
{
  selectedTabInfo = self->_selectedTabInfo;
  if (!selectedTabInfo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained selectedTabInfoForBrowserTabCompletionProvider:self];
    v6 = self->_selectedTabInfo;
    self->_selectedTabInfo = v5;

    selectedTabInfo = self->_selectedTabInfo;
  }

  return selectedTabInfo;
}

- (void)setCurrentQuery:(id)a3 forQueryID:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v6 length];
  currentQuery = self->_currentQuery;
  if (v8)
  {
    if (![v6 isEqualToString:currentQuery])
    {
      [(WBSBrowserTabCompletionProvider *)self _prepareQueue];
      currentTabCompletionMatches = self->_currentTabCompletionMatches;
      self->_currentTabCompletionMatches = 0;

      v12 = [v6 copy];
      v13 = self->_currentQuery;
      self->_currentQuery = v12;

      v14 = [(WBSBrowserTabCompletionProvider *)self tabInfos];
      v15 = [v14 copy];

      v16 = [(WBSBrowserTabCompletionProvider *)self selectedTabInfo];
      objc_initWeak(&location, self);
      queue = self->_queue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__WBSBrowserTabCompletionProvider_setCurrentQuery_forQueryID___block_invoke;
      v20[3] = &unk_1E7FB6FD0;
      objc_copyWeak(v24, &location);
      v21 = v6;
      v18 = v15;
      v22 = v18;
      v23 = v16;
      v24[1] = a4;
      v19 = v16;
      [(NSOperationQueue *)queue addOperationWithBlock:v20];

      objc_destroyWeak(v24);
      objc_destroyWeak(&location);

      goto LABEL_8;
    }

    if (!self->_currentTabCompletionMatches)
    {
      goto LABEL_8;
    }
  }

  else
  {
    self->_currentQuery = 0;

    v10 = self->_currentTabCompletionMatches;
    self->_currentTabCompletionMatches = MEMORY[0x1E695E0F0];
  }

  [WeakRetained didFindMatchesForCurrentQueryInBrowserTabCompletionProvider:self];
LABEL_8:
}

void __62__WBSBrowserTabCompletionProvider_setCurrentQuery_forQueryID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _matchesForQuery:*(a1 + 32) tabInfos:*(a1 + 40) selectedTabInfo:*(a1 + 48) forQueryID:*(a1 + 64)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__WBSBrowserTabCompletionProvider_setCurrentQuery_forQueryID___block_invoke_2;
    block[3] = &unk_1E7FB6FA8;
    objc_copyWeak(&v11, (a1 + 56));
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v11);
  }
}

void __62__WBSBrowserTabCompletionProvider_setCurrentQuery_forQueryID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained _isOperationValidForQuery:*(a1 + 32) tabInfos:*(a1 + 40) selectedTabInfo:*(a1 + 48)];
    v3 = v8;
    if (v4)
    {
      v5 = [*(a1 + 56) copy];
      v6 = v8[7];
      v8[7] = v5;

      v7 = objc_loadWeakRetained(v8 + 5);
      [v7 didFindMatchesForCurrentQueryInBrowserTabCompletionProvider:v8];

      v3 = v8;
    }
  }
}

- (void)tabCompletionMatchesForQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:self->_currentQuery])
  {
    if (self->_currentTabCompletionMatches)
    {
      currentTabCompletionMatches = self->_currentTabCompletionMatches;
    }

    else
    {
      currentTabCompletionMatches = MEMORY[0x1E695E0F0];
    }

    v7[2](v7, currentTabCompletionMatches);
  }

  else
  {
    [(WBSBrowserTabCompletionProvider *)self _prepareQueue];
    v9 = self->_currentTabCompletionMatches;
    self->_currentTabCompletionMatches = 0;

    v10 = [v6 copy];
    currentQuery = self->_currentQuery;
    self->_currentQuery = v10;

    v12 = [(WBSBrowserTabCompletionProvider *)self tabInfos];
    v13 = [v12 copy];

    objc_initWeak(&location, self);
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__WBSBrowserTabCompletionProvider_tabCompletionMatchesForQuery_completionHandler___block_invoke;
    v16[3] = &unk_1E7FB7020;
    objc_copyWeak(&v20, &location);
    v19 = v7;
    v17 = v6;
    v18 = v13;
    v15 = v13;
    [(NSOperationQueue *)queue addOperationWithBlock:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __82__WBSBrowserTabCompletionProvider_tabCompletionMatchesForQuery_completionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _matchesForQuery:a1[4] tabInfos:a1[5] selectedTabInfo:0 forQueryID:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__WBSBrowserTabCompletionProvider_tabCompletionMatchesForQuery_completionHandler___block_invoke_2;
    block[3] = &unk_1E7FB6FF8;
    objc_copyWeak(&v11, a1 + 7);
    v10 = a1[6];
    v7 = a1[4];
    v8 = a1[5];
    v9 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v11);
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __82__WBSBrowserTabCompletionProvider_tabCompletionMatchesForQuery_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && ([WeakRetained _isOperationValidForQuery:*(a1 + 32) tabInfos:*(a1 + 40) selectedTabInfo:0] & 1) != 0)
  {
    v2 = [*(a1 + 48) copy];
    v3 = WeakRetained[7];
    WeakRetained[7] = v2;

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)invalidate
{
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  tabInfos = self->_tabInfos;
  self->_tabInfos = 0;

  selectedTabInfo = self->_selectedTabInfo;
  self->_selectedTabInfo = 0;

  currentTabCompletionMatches = self->_currentTabCompletionMatches;
  self->_currentTabCompletionMatches = 0;

  currentQuery = self->_currentQuery;
  self->_currentQuery = 0;
}

- (id)bestTabCompletionMatchWithTopHitURL:(id)a3
{
  v3 = [(WBSBrowserTabCompletionProvider *)self bestTabCompletionMatchFromMatches:self->_currentTabCompletionMatches withTopHitURL:a3];

  return v3;
}

- (id)bestTabCompletionMatchFromMatches:(id)a3 withTopHitURL:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = a4;
  v26 = v6;
  v7 = [v6 firstObject];
  v8 = v7;
  if (v7)
  {
    [v7 setHighlyRelevant:0];
    v9 = [v28 safari_userVisibleHostWithoutWWWSubdomain];
    if (v9)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = v6;
      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v10)
      {
        v11 = *v30;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          v14 = [v13 tabGroupUUID];
          v15 = v14 == 0;

          if (!v15)
          {
            break;
          }

          v16 = [v13 windowUUID];
          v17 = [(WBSBrowserTabCompletionInfo *)self->_selectedTabInfo windowUUID];
          v18 = [v16 isEqual:v17];

          if ((v18 & 1) == 0)
          {
            break;
          }

          v19 = [v13 url];
          v20 = [v19 safari_isTopLevelURL];

          if (v20)
          {
            v21 = [v13 url];
            v22 = [v21 safari_userVisibleHostWithoutWWWSubdomain];
            v23 = [v9 isEqualToString:v22];

            if (v23)
            {
              [v13 setHighlyRelevant:1];
              v24 = v13;

              obj = v8;
              v8 = v24;
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }
  }

  return v8;
}

- (id)_matchesForQuery:(id)a3 tabInfos:(id)a4 selectedTabInfo:(id)a5 forQueryID:(int64_t)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v8 = a4;
  v9 = a5;
  v31 = [MEMORY[0x1E695DF70] array];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v10)
  {
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v9 uuid];
        v16 = [v14 isEqual:v15];

        if ((v16 & 1) == 0)
        {
          v17 = [v13 url];
          v18 = [v9 url];
          if ([v17 isEqual:v18])
          {
            v19 = [v13 title];
            v20 = [v9 title];
            v21 = [v19 isEqual:v20];

            if (v21)
            {
              continue;
            }
          }

          else
          {
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 url], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(WeakRetained, "browserTabCompletionProvider:doesURLRepresentNativeContent:", self, v23), v23, (v24 & 1) == 0))
          {
            v47 = 0;
            v48 = &v47;
            v49 = 0x3032000000;
            v50 = __Block_byref_object_copy_;
            v51 = __Block_byref_object_dispose_;
            v52 = 0;
            v25 = [v13 url];
            v26 = [v25 safari_isSafariExtensionURL];

            if (!v26 || (v43 = 0, v44 = &v43, v45 = 0x2020000000, v46 = 0, block[0] = MEMORY[0x1E69E9820], block[1] = 3221225472, block[2] = __88__WBSBrowserTabCompletionProvider__matchesForQuery_tabInfos_selectedTabInfo_forQueryID___block_invoke, block[3] = &unk_1E7FB7048, v38 = WeakRetained, v39 = self, v40 = v13, v41 = &v43, v42 = &v47, dispatch_sync(MEMORY[0x1E69E96A0], block), v27 = *(v44 + 24), v38, _Block_object_dispose(&v43, 8), (v27 & 1) == 0))
            {
              v28 = [WBSBrowserTabCompletionMatch alloc];
              v29 = [(WBSBrowserTabCompletionMatch *)v28 initWithTabInfo:v13 userTypedString:v33 alternativeDisplayTextForURL:v48[5] forQueryID:a6];
              if (v29)
              {
                [v31 addObject:v29];
              }
            }

            _Block_object_dispose(&v47, 8);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v10);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __88__WBSBrowserTabCompletionProvider__matchesForQuery_tabInfos_selectedTabInfo_forQueryID___block_invoke_2;
  v36[3] = &unk_1E7FB7070;
  v36[4] = self;
  [v31 sortUsingComparator:v36];

  return v31;
}

void __88__WBSBrowserTabCompletionProvider__matchesForQuery_tabInfos_selectedTabInfo_forQueryID___block_invoke(uint64_t a1)
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v2 = *(a1 + 32), v3 = *(a1 + 40), [*(a1 + 48) url], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v2) = objc_msgSend(v2, "browserTabCompletionProvider:shouldExtensionURLAppearAsSwitchToTabItem:", v3), v9, (v2 & 1) == 0))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = [*(a1 + 48) url];
    v6 = [v4 browserTabCompletionProvider:v5 alternativeDisplayTextForURLForExtensionURL:?];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)_isOperationValidForQuery:(id)a3 tabInfos:(id)a4 selectedTabInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ([v8 isEqualToString:self->_currentQuery] & 1) != 0 && (self->_tabInfos == v9 || -[NSArray isEqualToArray:](v9, "isEqualToArray:")) && self->_selectedTabInfo == v10;

  return v11;
}

- (int64_t)_compareTabMatch:(id)a3 otherTabMatch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 tabGroupUUID];

  v9 = [v7 tabGroupUUID];

  if (v8 || !v9)
  {
    if (v8 && !v9)
    {
      v10 = 1;
      goto LABEL_14;
    }

    v11 = [(WBSBrowserTabCompletionInfo *)self->_selectedTabInfo windowUUID];
    v12 = [v6 windowUUID];
    v13 = [v12 isEqual:v11];

    v14 = [v7 windowUUID];
    v15 = [v14 isEqual:v11];

    if (!(v15 & 1 | ((v13 & 1) == 0)))
    {
      goto LABEL_10;
    }

    if (v13 & 1 | ((v15 & 1) == 0))
    {
      v16 = [v6 matchLocation];
      if (v16 > [v7 matchLocation])
      {
LABEL_10:
        v10 = -1;
        goto LABEL_13;
      }

      v17 = [v6 matchLocation];
      if (v17 >= [v7 matchLocation])
      {
        v19 = [v6 url];
        v20 = [v19 safari_isTopLevelURL];

        v21 = [v7 url];
        v22 = [v21 safari_isTopLevelURL];

        if (!(v22 & 1 | ((v20 & 1) == 0)))
        {
          goto LABEL_10;
        }

        if (v20 & 1 | ((v22 & 1) == 0))
        {
          v23 = [v6 tabGroupUUID];
          if (v23)
          {
          }

          else
          {
            v24 = [v7 tabGroupUUID];

            if (v24)
            {
              v25 = 0;
            }

            else
            {
              v25 = v13;
            }

            if (v25 & v15)
            {
              v26 = [(WBSBrowserTabCompletionProvider *)self _distanceFromSelectedTabForTabMatch:v6];
              v27 = [(WBSBrowserTabCompletionProvider *)self _distanceFromSelectedTabForTabMatch:v7];
              v28 = -1;
              if (v26 >= v27)
              {
                v28 = 1;
              }

              if (v26 == v27)
              {
                v10 = 0;
              }

              else
              {
                v10 = v28;
              }

              goto LABEL_13;
            }
          }

          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    v10 = 1;
    goto LABEL_13;
  }

  v10 = -1;
LABEL_14:

  return v10;
}

- (unint64_t)_distanceFromSelectedTabForTabMatch:(id)a3
{
  v4 = a3;
  v5 = [(WBSBrowserTabCompletionInfo *)self->_selectedTabInfo tabIndex];
  v6 = [v4 tabIndex];
  if ((v5 - v6) >= 0)
  {
    v7 = v5 - v6;
  }

  else
  {
    v7 = v6 - v5;
  }

  return v7;
}

- (WBSBrowserTabCompletionProviderSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (WBSBrowserTabCompletionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end