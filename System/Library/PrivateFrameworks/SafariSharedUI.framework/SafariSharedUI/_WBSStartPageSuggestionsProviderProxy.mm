@interface _WBSStartPageSuggestionsProviderProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (NSArray)suggestions;
- (NSString)providerSectionIdentifier;
- (WBSStartPageSuggestionsProviderBroadcaster)owner;
- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate;
- (id)attributionViewForSuggestion:(id)suggestion;
- (id)fetchMetadataForSuggestion:(id)suggestion completionHandler:(id)handler;
@end

@implementation _WBSStartPageSuggestionsProviderProxy

- (NSString)providerSectionIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  suggestionsProvider = [WeakRetained suggestionsProvider];
  providerSectionIdentifier = [suggestionsProvider providerSectionIdentifier];

  return providerSectionIdentifier;
}

- (NSArray)suggestions
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  suggestionsProvider = [WeakRetained suggestionsProvider];
  suggestions = [suggestionsProvider suggestions];

  return suggestions;
}

- (id)fetchMetadataForSuggestion:(id)suggestion completionHandler:(id)handler
{
  handlerCopy = handler;
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  suggestionsProvider = [WeakRetained suggestionsProvider];
  v10 = [suggestionsProvider fetchMetadataForSuggestion:suggestionCopy completionHandler:handlerCopy];

  return v10;
}

- (id)attributionViewForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  if ([WeakRetained providerSupportsAttributionViews])
  {
    suggestionsProvider = [WeakRetained suggestionsProvider];
    v7 = [suggestionsProvider attributionViewForSuggestion:suggestionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_attributionViewForSuggestion_ == selector)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    providerSupportsAttributionViews = [WeakRetained providerSupportsAttributionViews];

    return providerSupportsAttributionViews;
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