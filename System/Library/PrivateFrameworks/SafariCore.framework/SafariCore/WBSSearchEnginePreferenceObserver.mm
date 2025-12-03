@interface WBSSearchEnginePreferenceObserver
+ (WBSSearchEnginePreferenceObserver)sharedObserver;
+ (void)setUpSharedObserverWithSearchProviderContext:(id)context;
+ (void)sharedObserver;
- (BOOL)defaultSearchEngineMatchesExperiment;
- (NSString)defaultSearchEngineShortName;
- (WBSSearchEnginePreferenceObserver)initWithSearchProviderContext:(id)context;
- (WBSSearchEnginePreferenceObserverDelegate)delegate;
- (void)_suppressSearchSuggestionsSettingDidChange:(id)change;
- (void)_updateSearchEnginePreference:(id)preference;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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
  defaultSearchProvider = [(WBSSearchProviderContext *)self->_searchProviderContext defaultSearchProvider];
  shortName = [defaultSearchProvider shortName];

  return shortName;
}

+ (void)setUpSharedObserverWithSearchProviderContext:(id)context
{
  contextCopy = context;
  v4 = [[WBSSearchEnginePreferenceObserver alloc] initWithSearchProviderContext:contextCopy];

  v5 = sharedSearchEngineObserver;
  sharedSearchEngineObserver = v4;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSTrialGroupManagerDidChangeGroupIdentifier" object:0];
}

- (WBSSearchEnginePreferenceObserver)initWithSearchProviderContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = WBSSearchEnginePreferenceObserver;
  v6 = [(WBSSearchEnginePreferenceObserver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchProviderContext, context);
    safari_browserSharedDefaults = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
    [safari_browserSharedDefaults addObserver:v7 forKeyPath:@"SearchEngineStringSetting" options:3 context:userDefaultsObserverContext];

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults addObserver:v7 forKeyPath:@"SuppressSearchSuggestions" options:3 context:userDefaultsObserverContext];

    [(WBSSearchEnginePreferenceObserver *)v7 _updateSearchEnginePreference:0];
    v10 = v7;
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (userDefaultsObserverContext == context)
  {
    v12 = *MEMORY[0x1E696A500];
    changeCopy = change;
    changeCopy2 = [changeCopy objectForKeyedSubscript:v12];
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    if (changeCopy2 | v14 && ([changeCopy2 isEqual:v14] & 1) == 0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __84__WBSSearchEnginePreferenceObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v15[3] = &unk_1E7CF1708;
      v16 = pathCopy;
      selfCopy = self;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WBSSearchEnginePreferenceObserver;
    changeCopy2 = change;
    [(WBSSearchEnginePreferenceObserver *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy2 context:context];
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

- (void)_updateSearchEnginePreference:(id)preference
{
  safari_browserSharedDefaults = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
  shortName = [safari_browserSharedDefaults objectForKey:@"SearchEngineStringSetting"];

  if (!shortName)
  {
    defaultSearchProvider = [(WBSSearchProviderContext *)self->_searchProviderContext defaultSearchProvider];
    shortName = [defaultSearchProvider shortName];
  }

  safari_browserSharedDefaults2 = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
  shortName2 = [safari_browserSharedDefaults2 objectForKey:@"PrivateSearchEngineStringSetting"];

  if (!shortName2)
  {
    defaultSeachProviderForPrivateBrowsing = [(WBSSearchProviderContext *)self->_searchProviderContext defaultSeachProviderForPrivateBrowsing];
    shortName2 = [defaultSeachProviderForPrivateBrowsing shortName];
  }

  self->_duckDuckGoDefaultSearchEngine = [@"DuckDuckGo" safari_isCaseInsensitiveEqualToString:shortName];
  isGoogleEnabledSearchEngine = self->_isGoogleEnabledSearchEngine;
  v10 = [@"Google" safari_isCaseInsensitiveEqualToString:shortName];
  self->_googleIsDefaultSearchEngine = v10;
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = [@"Google" safari_isCaseInsensitiveEqualToString:shortName2];
  }

  self->_isGoogleEnabledSearchEngine = v11;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSDefaultSearchEngineChanged" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"WBSTrialGroupManagerDidChangeGroupIdentifier" object:self];

  if (self->_isGoogleEnabledSearchEngine || isGoogleEnabledSearchEngine)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 postNotificationName:@"DidChangeSearchProviderToFromGoogle" object:0];
  }
}

- (void)_suppressSearchSuggestionsSettingDidChange:(id)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SuppressSearchSuggestions" object:0];
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
  lastPathComponent = [v2 lastPathComponent];
  if ([v0 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v0];
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "sharedSearchEngineObserver", "+[WBSSearchEnginePreferenceObserver sharedObserver]", lastPathComponent, 60, v5];
  }

  else
  {
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "sharedSearchEngineObserver", "+[WBSSearchEnginePreferenceObserver sharedObserver]", lastPathComponent, 60, &stru_1F3064D08];
  }

  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&stru_1F3069F08.isa, v4, callStackSymbols);

  abort();
}

@end