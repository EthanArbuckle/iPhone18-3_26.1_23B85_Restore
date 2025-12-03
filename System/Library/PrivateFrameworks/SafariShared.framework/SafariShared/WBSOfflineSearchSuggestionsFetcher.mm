@interface WBSOfflineSearchSuggestionsFetcher
- (WBSOfflineSearchSuggestionsFetcher)initWithMaximumSuggestionsToFetch:(unint64_t)fetch;
- (WBSOfflineSearchSuggestionsFetcherDelegate)delegate;
- (id)_searchHelperProxy;
- (void)_checkForRemoteDisablement:(id)disablement;
- (void)_logOfflineSuggestionStatus;
- (void)dealloc;
- (void)setCurrentQuery:(id)query;
- (void)updateAvailability;
@end

@implementation WBSOfflineSearchSuggestionsFetcher

void __56__WBSOfflineSearchSuggestionsFetcher_updateAvailability__block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v3[1] = 2;
    v4 = *(a1 + 32);

    [v4 _logOfflineSuggestionStatus];
  }

  else
  {
    v5 = [v3 _searchHelperProxy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__WBSOfflineSearchSuggestionsFetcher_updateAvailability__block_invoke_2;
    v6[3] = &unk_1E7FC8820;
    v6[4] = *(a1 + 32);
    [v5 fetchOfflineSearchSuggestionsStatus:v6];
  }
}

- (id)_searchHelperProxy
{
  v3 = +[WBSSearchHelperConnectionManager sharedManager];
  v4 = [v3 searchHelperConnectionRequestedByClient:self];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WBSOfflineSearchSuggestionsFetcher__searchHelperProxy__block_invoke;
  v7[3] = &unk_1E7FB8278;
  v7[4] = self;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v7];

  return v5;
}

void __56__WBSOfflineSearchSuggestionsFetcher_updateAvailability__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__WBSOfflineSearchSuggestionsFetcher_updateAvailability__block_invoke_3;
  v2[3] = &unk_1E7FB74E0;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (WBSOfflineSearchSuggestionsFetcher)initWithMaximumSuggestionsToFetch:(unint64_t)fetch
{
  v9.receiver = self;
  v9.super_class = WBSOfflineSearchSuggestionsFetcher;
  v4 = [(WBSOfflineSearchSuggestionsFetcher *)&v9 init];
  v5 = v4;
  if (v4)
  {
    _searchHelperProxy = [(WBSOfflineSearchSuggestionsFetcher *)v4 _searchHelperProxy];
    [_searchHelperProxy setMaximumNumberOfOfflineSuggestionsToFetch:fetch];

    [(WBSOfflineSearchSuggestionsFetcher *)v5 updateAvailability];
    v7 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[WBSSearchHelperConnectionManager sharedManager];
  [v3 removeClient:self];

  v4.receiver = self;
  v4.super_class = WBSOfflineSearchSuggestionsFetcher;
  [(WBSOfflineSearchSuggestionsFetcher *)&v4 dealloc];
}

- (void)updateAvailability
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__WBSOfflineSearchSuggestionsFetcher_updateAvailability__block_invoke;
  v2[3] = &unk_1E7FC8848;
  v2[4] = self;
  [(WBSOfflineSearchSuggestionsFetcher *)self _checkForRemoteDisablement:v2];
}

uint64_t __56__WBSOfflineSearchSuggestionsFetcher_updateAvailability__block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2[1] == 3)
  {
    v3 = +[WBSSearchHelperConnectionManager sharedManager];
    [v3 removeClient:*(a1 + 32)];

    v2 = *(a1 + 32);
  }

  return [v2 _logOfflineSuggestionStatus];
}

- (void)_checkForRemoteDisablement:(id)disablement
{
  disablementCopy = disablement;
  v4 = +[WBSOfflineSearchRemoteDisablementManager sharedManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__WBSOfflineSearchSuggestionsFetcher__checkForRemoteDisablement___block_invoke;
  v6[3] = &unk_1E7FC8870;
  v7 = disablementCopy;
  v5 = disablementCopy;
  [v4 areOfflineSearchSuggestionsDisabled:v6];
}

void __65__WBSOfflineSearchSuggestionsFetcher__checkForRemoteDisablement___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__WBSOfflineSearchSuggestionsFetcher__checkForRemoteDisablement___block_invoke_2;
  v3[3] = &unk_1E7FB6DB8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_logOfflineSuggestionStatus
{
  offlineSuggestionsStatus = self->_offlineSuggestionsStatus;
  if (offlineSuggestionsStatus > 2)
  {
    switch(offlineSuggestionsStatus)
    {
      case 3:
        v3 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v8 = 0;
        v4 = "No offline search model exists for current locale";
        v5 = &v8;
        goto LABEL_20;
      case 4:
        v3 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *buf = 0;
        v4 = "Download needs to be initiated";
        v5 = buf;
        goto LABEL_20;
      case 5:
        v3 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v6 = 0;
          v4 = "Offline search suggestions are availabe";
          v5 = &v6;
          goto LABEL_20;
        }

        break;
    }
  }

  else
  {
    switch(offlineSuggestionsStatus)
    {
      case 0:
        v3 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v11 = 0;
        v4 = "Unable to determine status of offline search suggestions";
        v5 = &v11;
        goto LABEL_20;
      case 1:
        v3 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v10 = 0;
        v4 = "Unable to communicate with com.apple.Safari.SearchHelper";
        v5 = &v10;
        goto LABEL_20;
      case 2:
        v3 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v9 = 0;
          v4 = "Offline search suggestions have been disabled remotely";
          v5 = &v9;
LABEL_20:
          _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
        }

        break;
    }
  }
}

void __56__WBSOfflineSearchSuggestionsFetcher__searchHelperProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__WBSOfflineSearchSuggestionsFetcher__searchHelperProxy__block_invoke_cold_1(v4, v3);
  }

  *(*(a1 + 32) + 8) = 1;
}

- (void)setCurrentQuery:(id)query
{
  queryCopy = query;
  if (self->_offlineSuggestionsStatus == 5)
  {
    objc_storeStrong(&self->_currentQuery, query);
    _searchHelperProxy = [(WBSOfflineSearchSuggestionsFetcher *)self _searchHelperProxy];
    queryString = [queryCopy queryString];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__WBSOfflineSearchSuggestionsFetcher_setCurrentQuery___block_invoke;
    v8[3] = &unk_1E7FC8898;
    v8[4] = self;
    v9 = queryCopy;
    [_searchHelperProxy fetchOfflineSuggestionsForQueryString:queryString completionHandler:v8];
  }
}

void __54__WBSOfflineSearchSuggestionsFetcher_setCurrentQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSOfflineSearchSuggestionsFetcher_setCurrentQuery___block_invoke_2;
  block[3] = &unk_1E7FB7258;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__WBSOfflineSearchSuggestionsFetcher_setCurrentQuery___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained offlineSearchSuggestionsFetcher:a1[4] didFindSuggestions:a1[5] forQuery:a1[6]];
}

- (WBSOfflineSearchSuggestionsFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __56__WBSOfflineSearchSuggestionsFetcher__searchHelperProxy__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "WBSOfflineSearchFetcher received an error: %{public}@", &v5, 0xCu);
}

@end