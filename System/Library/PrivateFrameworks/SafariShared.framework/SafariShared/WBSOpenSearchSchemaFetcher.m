@interface WBSOpenSearchSchemaFetcher
+ (id)sharedFetcher;
- (void)_didFinishFetchingOpenSearchDescriptionDocumentWithURL:(id)a3;
- (void)fetchOpenSearchDescriptionWithURL:(id)a3;
@end

@implementation WBSOpenSearchSchemaFetcher

+ (id)sharedFetcher
{
  {
    v3 = +[WBSOpenSearchSchemaFetcher sharedFetcher]::fetcher;
  }

  else
  {
    v3 = objc_alloc_init(WBSOpenSearchSchemaFetcher);
    +[WBSOpenSearchSchemaFetcher sharedFetcher]::fetcher = v3;
  }

  return v3;
}

- (void)fetchOpenSearchDescriptionWithURL:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_openSearchDescriptionURLs containsObject:v4]& 1) == 0)
  {
    openSearchDescriptionURLs = self->_openSearchDescriptionURLs;
    if (openSearchDescriptionURLs)
    {
      [(NSMutableSet *)openSearchDescriptionURLs addObject:v4];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA8] setWithObject:v4];
      v7 = self->_openSearchDescriptionURLs;
      self->_openSearchDescriptionURLs = v6;
    }

    v8 = +[WBSSearchHelperConnectionManager sharedManager];
    v9 = [v8 searchHelperConnectionRequestedByClient:self];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke;
    v15[3] = &unk_1E7FC7AA8;
    v10 = v4;
    v16 = v10;
    v17 = self;
    v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_8;
    v12[3] = &unk_1E7FC78D0;
    v13 = v10;
    v14 = self;
    [v11 fetchOpenSearchDescriptionWithURL:v13 completionHandler:v12];
  }
}

void __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_2;
  block[3] = &unk_1E7FB7DD0;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_2_cold_1();
    }
  }

  return [*(a1 + 48) _didFinishFetchingOpenSearchDescriptionDocumentWithURL:*(a1 + 40)];
}

void __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_2_9;
  v11[3] = &unk_1E7FC5D00;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_2_9(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_2_cold_1();
    }

    [*(a1 + 48) _didFinishFetchingOpenSearchDescriptionDocumentWithURL:*(a1 + 40)];
  }

  else
  {
    v11 = [*(a1 + 56) objectForKey:@"OpenSearchDescriptionDocumentURL"];
    v3 = [*(a1 + 56) objectForKeyedSubscript:@"OpenSearchDescriptionSearchURLTemplate"];
    v4 = [*(a1 + 56) objectForKeyedSubscript:@"OpenSearchDescriptionURLTemplateForSuggestionsInJSON"];
    v5 = [*(a1 + 56) objectForKeyedSubscript:@"OpenSearchDescriptionURLTemplateForSuggestionsInXML"];
    v6 = [WBSOpenSearchDescription alloc];
    v7 = [v11 absoluteString];
    v8 = [(WBSOpenSearchDescription *)v6 initWithDescriptionDocumentURLString:v7 searchURLTemplate:v3 urlTemplateForSuggestionsInJSON:v4 urlTemplateForSuggestionsInXML:v5];

    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"WBSOpenSearchDescription"];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"WBSOpenSearchSchemaFetcherDidCollectDescriptionNotification" object:*(a1 + 48) userInfo:v9];

    [*(a1 + 48) _didFinishFetchingOpenSearchDescriptionDocumentWithURL:v11];
  }
}

- (void)_didFinishFetchingOpenSearchDescriptionDocumentWithURL:(id)a3
{
  v5 = a3;
  [(NSMutableSet *)self->_openSearchDescriptionURLs removeObject:?];
  if (![(NSMutableSet *)self->_openSearchDescriptionURLs count])
  {
    v4 = +[WBSSearchHelperConnectionManager sharedManager];
    [v4 removeClient:self];
  }
}

void __64__WBSOpenSearchSchemaFetcher_fetchOpenSearchDescriptionWithURL___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_15();
  _os_log_error_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_ERROR, "Fetch OpenSource description from %{sensitive, mask.hash}@ failed.", v1, 0x16u);
}

@end