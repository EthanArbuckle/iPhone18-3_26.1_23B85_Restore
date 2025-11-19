@interface _WBSStartPageSuggestionsProviderProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (NSArray)suggestions;
- (NSString)providerSectionIdentifier;
- (WBSStartPageSuggestionsProviderBroadcaster)owner;
- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate;
- (id)attributionViewForSuggestion:(id)a3;
- (id)fetchMetadataForSuggestion:(id)a3 completionHandler:(id)a4;
@end

@implementation _WBSStartPageSuggestionsProviderProxy

- (NSString)providerSectionIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v3 = [WeakRetained suggestionsProvider];
  v4 = [v3 providerSectionIdentifier];

  return v4;
}

- (NSArray)suggestions
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v3 = [WeakRetained suggestionsProvider];
  v4 = [v3 suggestions];

  return v4;
}

- (id)fetchMetadataForSuggestion:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v9 = [WeakRetained suggestionsProvider];
  v10 = [v9 fetchMetadataForSuggestion:v7 completionHandler:v6];

  return v10;
}

- (id)attributionViewForSuggestion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  if ([WeakRetained providerSupportsAttributionViews])
  {
    v6 = [WeakRetained suggestionsProvider];
    v7 = [v6 attributionViewForSuggestion:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_attributionViewForSuggestion_ == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    v5 = [WeakRetained providerSupportsAttributionViews];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _WBSStartPageSuggestionsProviderProxy;
    return [(_WBSStartPageSuggestionsProviderProxy *)&v6 respondsToSelector:?];
  }
}

- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsProviderDelegate);

  return WeakRetained;
}

- (WBSStartPageSuggestionsProviderBroadcaster)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end