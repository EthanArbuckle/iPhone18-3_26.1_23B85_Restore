@interface WBSStartPageSuggestionsProviderBroadcaster
- (WBSStartPageSuggestionsProvider)suggestionsProvider;
- (WBSStartPageSuggestionsProviderBroadcaster)initWithSuggestionsProvider:(id)a3;
- (id)createSuggestionProviderProxy;
- (void)startPageSuggestionsProvider:(id)a3 didUpdateSuggestions:(id)a4;
- (void)startPageSuggestionsProvider:(id)a3 forceReloadSuggestions:(id)a4;
@end

@implementation WBSStartPageSuggestionsProviderBroadcaster

- (id)createSuggestionProviderProxy
{
  v3 = objc_alloc_init(_WBSStartPageSuggestionsProviderProxy);
  [(_WBSStartPageSuggestionsProviderProxy *)v3 setOwner:self];
  [(NSHashTable *)self->_proxies addObject:v3];

  return v3;
}

- (WBSStartPageSuggestionsProvider)suggestionsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsProvider);

  return WeakRetained;
}

- (WBSStartPageSuggestionsProviderBroadcaster)initWithSuggestionsProvider:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WBSStartPageSuggestionsProviderBroadcaster;
  v5 = [(WBSStartPageSuggestionsProviderBroadcaster *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_suggestionsProvider, v4);
    v6->_providerSupportsAttributionViews = objc_opt_respondsToSelector() & 1;
    [v4 setSuggestionsProviderDelegate:v6];
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    proxies = v6->_proxies;
    v6->_proxies = v7;

    v9 = v6;
  }

  return v6;
}

- (void)startPageSuggestionsProvider:(id)a3 didUpdateSuggestions:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_proxies;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 suggestionsProviderDelegate];
        [v12 startPageSuggestionsProvider:v11 didUpdateSuggestions:v5];
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)startPageSuggestionsProvider:(id)a3 forceReloadSuggestions:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_proxies;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 suggestionsProviderDelegate];
        [v12 startPageSuggestionsProvider:v11 forceReloadSuggestions:v5];
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

@end