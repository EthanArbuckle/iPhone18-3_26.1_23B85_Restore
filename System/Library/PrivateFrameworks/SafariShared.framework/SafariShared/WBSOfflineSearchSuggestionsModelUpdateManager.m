@interface WBSOfflineSearchSuggestionsModelUpdateManager
- (BOOL)_shouldCheckForModelUpdates;
- (WBSOfflineSearchSuggestionsModelUpdateManager)init;
- (double)_timeIntervalSinceLastUpdate;
- (id)_searchHelperProxy;
- (void)_checkForModelUpdates;
- (void)_clearModels;
- (void)_disconnectFromSearchHelper;
- (void)_doUpdates;
- (void)_recordUpdateResultWithError:(id)a3;
- (void)_searchEngineChangedToOrFromGoogle:(id)a3;
- (void)_updateDefaultSearchEnginePreferencesState;
- (void)checkForModelUpdatesOrRemoteDisablementIfNeeded;
- (void)dealloc;
@end

@implementation WBSOfflineSearchSuggestionsModelUpdateManager

- (WBSOfflineSearchSuggestionsModelUpdateManager)init
{
  v13.receiver = self;
  v13.super_class = WBSOfflineSearchSuggestionsModelUpdateManager;
  v2 = [(WBSOfflineSearchSuggestionsModelUpdateManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;

    [(NSDateFormatter *)v2->_dateFormatter setDateFormat:@"yyyy-MM-dd-HHmm"];
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [v5 stringForKey:@"WBSOfflineSearchSuggestionsModelLastUsedLocaleIdentifierKey"];
    lastUsedLocaleIdentifier = v2->_lastUsedLocaleIdentifier;
    v2->_lastUsedLocaleIdentifier = v6;

    [(WBSOfflineSearchSuggestionsModelUpdateManager *)v2 _updateDefaultSearchEnginePreferencesState];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__searchEngineChangedToOrFromGoogle_ name:*MEMORY[0x1E69C8B60] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel__suppressSearchSuggestionsSettingDidChange_ name:*MEMORY[0x1E69C8D78] object:0];

    v11 = v2;
  }

  return v2;
}

- (void)_updateDefaultSearchEnginePreferencesState
{
  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  self->_googleWasADefaultSearchProvider = [v4 BOOLForKey:@"WBSOfflineSearchSuggestionsModelGoogleWasDefaultSearchEngineKey"];
  v3 = [MEMORY[0x1E69C8A48] sharedObserver];
  self->_googleIsADefaultSearchProvider = [v3 isGoogleEnabledSearchEngine];

  [v4 setBool:self->_googleIsADefaultSearchProvider forKey:@"WBSOfflineSearchSuggestionsModelGoogleWasDefaultSearchEngineKey"];
}

- (void)checkForModelUpdatesOrRemoteDisablementIfNeeded
{
  v3 = +[WBSOfflineSearchRemoteDisablementManager sharedManager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__WBSOfflineSearchSuggestionsModelUpdateManager_checkForModelUpdatesOrRemoteDisablementIfNeeded__block_invoke;
  v4[3] = &unk_1E7FC8848;
  v4[4] = self;
  [v3 areOfflineSearchSuggestionsDisabled:v4];
}

void __96__WBSOfflineSearchSuggestionsModelUpdateManager_checkForModelUpdatesOrRemoteDisablementIfNeeded__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __96__WBSOfflineSearchSuggestionsModelUpdateManager_checkForModelUpdatesOrRemoteDisablementIfNeeded__block_invoke_2;
  v2[3] = &unk_1E7FB74B8;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (BOOL)_shouldCheckForModelUpdates
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:*MEMORY[0x1E69C8A80]];

  if (v4)
  {
    goto LABEL_11;
  }

  if (self->_googleIsADefaultSearchProvider)
  {
    if (!self->_googleWasADefaultSearchProvider || ([MEMORY[0x1E695DF58] currentLocale], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localeIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", self->_lastUsedLocaleIdentifier), v6, v5, !v7) || (-[WBSOfflineSearchSuggestionsModelUpdateManager _timeIntervalSinceLastUpdate](self, "_timeIntervalSinceLastUpdate"), v8 >= 604800.0))
    {
      LOBYTE(v10) = 1;
      return v10;
    }

    v9 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v14 = 0;
      v11 = "Deferring check for offline model updates. Last check was within a week";
      v12 = &v14;
LABEL_10:
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
LABEL_11:
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      *buf = 0;
      v11 = "Search Provider does not offer offline search suggestions";
      v12 = buf;
      goto LABEL_10;
    }
  }

  return v10;
}

- (double)_timeIntervalSinceLastUpdate
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [v3 stringForKey:@"WBSOfflineSearchSuggestionsModelLastUpdateDateKey"];

  v5 = [MEMORY[0x1E695DF00] distantPast];
  v6 = v5;
  if (v4)
  {
    v7 = [(NSDateFormatter *)self->_dateFormatter dateFromString:v4];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v11 = [MEMORY[0x1E695DF00] date];
  [v11 timeIntervalSinceDate:v10];
  v13 = v12;

  return v13;
}

- (void)_doUpdates
{
  if (self->_googleWasADefaultSearchProvider && !self->_googleIsADefaultSearchProvider || self->_offlineSuggestionsRemotelyDisabled || ([MEMORY[0x1E695E000] standardUserDefaults], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", *MEMORY[0x1E69C8A80]), v3, v4))
  {

    [(WBSOfflineSearchSuggestionsModelUpdateManager *)self _clearModels];
  }

  else if (!self->_offlineSuggestionsRemotelyDisabled && [(WBSOfflineSearchSuggestionsModelUpdateManager *)self _shouldCheckForModelUpdates])
  {

    [(WBSOfflineSearchSuggestionsModelUpdateManager *)self _checkForModelUpdates];
  }
}

- (void)_searchEngineChangedToOrFromGoogle:(id)a3
{
  [(WBSOfflineSearchSuggestionsModelUpdateManager *)self _updateDefaultSearchEnginePreferencesState];

  [(WBSOfflineSearchSuggestionsModelUpdateManager *)self _doUpdates];
}

- (void)_checkForModelUpdates
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 localeIdentifier];
  lastUsedLocaleIdentifier = self->_lastUsedLocaleIdentifier;
  self->_lastUsedLocaleIdentifier = v4;

  v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v6 setObject:self->_lastUsedLocaleIdentifier forKey:@"WBSOfflineSearchSuggestionsModelLastUsedLocaleIdentifierKey"];

  v7 = [(WBSOfflineSearchSuggestionsModelUpdateManager *)self _searchHelperProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__WBSOfflineSearchSuggestionsModelUpdateManager__checkForModelUpdates__block_invoke;
  v8[3] = &unk_1E7FB8278;
  v8[4] = self;
  [v7 checkForModelUpdatesIfNeededWithCompletionHandler:v8];
}

uint64_t __70__WBSOfflineSearchSuggestionsModelUpdateManager__checkForModelUpdates__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _recordUpdateResultWithError:a2];
  v3 = *(a1 + 32);

  return [v3 _disconnectFromSearchHelper];
}

- (void)_recordUpdateResultWithError:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSOfflineSearchSuggestionsModelUpdateManager *)v6 _recordUpdateResultWithError:v4];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Successfully checked for offline search model updates", v11, 2u);
    }

    dateFormatter = self->_dateFormatter;
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [(NSDateFormatter *)dateFormatter stringFromDate:v8];

    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v10 setObject:v9 forKey:@"WBSOfflineSearchSuggestionsModelLastUpdateDateKey"];
  }
}

- (void)_clearModels
{
  v3 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all offline search models", buf, 2u);
  }

  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v4 removeObjectForKey:@"WBSOfflineSearchSuggestionsModelLastUpdateDateKey"];

  v5 = [(WBSOfflineSearchSuggestionsModelUpdateManager *)self _searchHelperProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__WBSOfflineSearchSuggestionsModelUpdateManager__clearModels__block_invoke;
  v6[3] = &unk_1E7FB6D90;
  v6[4] = self;
  [v5 clearAllSearchModelsWithCompletionHandler:v6];
}

- (id)_searchHelperProxy
{
  v3 = +[WBSSearchHelperConnectionManager sharedManager];
  v4 = [v3 searchHelperConnectionRequestedByClient:self];

  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_79];

  return v5;
}

void __67__WBSOfflineSearchSuggestionsModelUpdateManager__searchHelperProxy__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __67__WBSOfflineSearchSuggestionsModelUpdateManager__searchHelperProxy__block_invoke_cold_1(v0);
  }
}

- (void)_disconnectFromSearchHelper
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSOfflineSearchSuggestionsModelUpdateManager__disconnectFromSearchHelper__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__WBSOfflineSearchSuggestionsModelUpdateManager__disconnectFromSearchHelper__block_invoke(uint64_t a1)
{
  v2 = +[WBSSearchHelperConnectionManager sharedManager];
  [v2 removeClient:*(a1 + 32)];
}

- (void)dealloc
{
  v3 = +[WBSSearchHelperConnectionManager sharedManager];
  [v3 removeClient:self];

  v4.receiver = self;
  v4.super_class = WBSOfflineSearchSuggestionsModelUpdateManager;
  [(WBSOfflineSearchSuggestionsModelUpdateManager *)&v4 dealloc];
}

- (void)_recordUpdateResultWithError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Encountered error attempting to update offline search suggestion models: %{public}@", &v5, 0xCu);
}

@end