@interface WBSSearchEnginePreferenceObserver
+ (WBSSearchEnginePreferenceObserver)sharedObserver;
+ (void)setUpSharedObserverWithSearchProviderContext:(id)a3;
+ (void)sharedObserver;
- (BOOL)defaultSearchEngineMatchesExperiment;
- (NSString)defaultSearchEngineShortName;
- (WBSSearchEnginePreferenceObserver)initWithSearchProviderContext:(id)a3;
- (WBSSearchEnginePreferenceObserverDelegate)delegate;
- (void)_suppressSearchSuggestionsSettingDidChange:(id)a3;
- (void)_updateSearchEnginePreference:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation WBSSearchEnginePreferenceObserver

- (BOOL)defaultSearchEngineMatchesExperiment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained isGoogleABEnabledForSearchEnginePreferenceObserver:self])
  {
    v4 = 17;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![WeakRetained isDuckDuckGoABEnabledForSearchEnginePreferenceObserver:self])
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = 16;
  }

  v5 = *(&self->super.isa + v4);
LABEL_9:

  return v5 & 1;
}

+ (WBSSearchEnginePreferenceObserver)sharedObserver
{
  v3 = sharedSearchEngineObserver;
  if (!sharedSearchEngineObserver)
  {
    +[WBSSearchEnginePreferenceObserver sharedObserver];
  }

  return v3;
}

- (NSString)defaultSearchEngineShortName
{
  v2 = [(WBSSearchProviderContext *)self->_searchProviderContext defaultSearchProvider];
  v3 = [v2 shortName];

  return v3;
}

+ (void)setUpSharedObserverWithSearchProviderContext:(id)a3
{
  v3 = a3;
  v4 = [[WBSSearchEnginePreferenceObserver alloc] initWithSearchProviderContext:v3];

  v5 = sharedSearchEngineObserver;
  sharedSearchEngineObserver = v4;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"WBSTrialGroupManagerDidChangeGroupIdentifier" object:0];
}

- (WBSSearchEnginePreferenceObserver)initWithSearchProviderContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBSSearchEnginePreferenceObserver;
  v6 = [(WBSSearchEnginePreferenceObserver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchProviderContext, a3);
    v8 = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
    [v8 addObserver:v7 forKeyPath:@"SearchEngineStringSetting" options:3 context:userDefaultsObserverContext];

    v9 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v9 addObserver:v7 forKeyPath:@"SuppressSearchSuggestions" options:3 context:userDefaultsObserverContext];

    [(WBSSearchEnginePreferenceObserver *)v7 _updateSearchEnginePreference:0];
    v10 = v7;
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (userDefaultsObserverContext == a6)
  {
    v12 = *MEMORY[0x1E696A500];
    v13 = a5;
    v11 = [v13 objectForKeyedSubscript:v12];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    if (v11 | v14 && ([v11 isEqual:v14] & 1) == 0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __84__WBSSearchEnginePreferenceObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v15[3] = &unk_1E7CF1708;
      v16 = v10;
      v17 = self;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WBSSearchEnginePreferenceObserver;
    v11 = a5;
    [(WBSSearchEnginePreferenceObserver *)&v18 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

uint64_t __84__WBSSearchEnginePreferenceObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"SearchEngineStringSetting"])
  {
    [*(a1 + 40) _updateSearchEnginePreference:0];
  }

  result = [*(a1 + 32) isEqualToString:@"SuppressSearchSuggestions"];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _suppressSearchSuggestionsSettingDidChange:0];
  }

  return result;
}

- (void)_updateSearchEnginePreference:(id)a3
{
  v4 = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
  v15 = [v4 objectForKey:@"SearchEngineStringSetting"];

  if (!v15)
  {
    v5 = [(WBSSearchProviderContext *)self->_searchProviderContext defaultSearchProvider];
    v15 = [v5 shortName];
  }

  v6 = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
  v7 = [v6 objectForKey:@"PrivateSearchEngineStringSetting"];

  if (!v7)
  {
    v8 = [(WBSSearchProviderContext *)self->_searchProviderContext defaultSeachProviderForPrivateBrowsing];
    v7 = [v8 shortName];
  }

  self->_duckDuckGoDefaultSearchEngine = [@"DuckDuckGo" safari_isCaseInsensitiveEqualToString:v15];
  isGoogleEnabledSearchEngine = self->_isGoogleEnabledSearchEngine;
  v10 = [@"Google" safari_isCaseInsensitiveEqualToString:v15];
  self->_googleIsDefaultSearchEngine = v10;
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = [@"Google" safari_isCaseInsensitiveEqualToString:v7];
  }

  self->_isGoogleEnabledSearchEngine = v11;
  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:@"WBSDefaultSearchEngineChanged" object:0];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 postNotificationName:@"WBSTrialGroupManagerDidChangeGroupIdentifier" object:self];

  if (self->_isGoogleEnabledSearchEngine || isGoogleEnabledSearchEngine)
  {
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"DidChangeSearchProviderToFromGoogle" object:0];
  }
}

- (void)_suppressSearchSuggestionsSettingDidChange:(id)a3
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SuppressSearchSuggestions" object:0];
}

- (WBSSearchEnginePreferenceObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)sharedObserver
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3064D08];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariCore/Preferences/WBSSearchEnginePreferenceObserver.m"];
  v3 = [v2 lastPathComponent];
  if ([v0 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v0];
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "sharedSearchEngineObserver", "+[WBSSearchEnginePreferenceObserver sharedObserver]", v3, 60, v5];
  }

  else
  {
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "sharedSearchEngineObserver", "+[WBSSearchEnginePreferenceObserver sharedObserver]", v3, 60, &stru_1F3064D08];
  }

  v6 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&stru_1F3069F08.isa, v4, v6);

  abort();
}

@end