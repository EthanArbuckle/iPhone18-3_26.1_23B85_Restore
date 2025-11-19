@interface ATXSuggestionReceiverPendingRefreshTracker
- (ATXSuggestionReceiverPendingRefreshTracker)init;
@end

@implementation ATXSuggestionReceiverPendingRefreshTracker

- (ATXSuggestionReceiverPendingRefreshTracker)init
{
  v10.receiver = self;
  v10.super_class = ATXSuggestionReceiverPendingRefreshTracker;
  v2 = [(ATXSuggestionReceiverPendingRefreshTracker *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    clientModelsThatUpdatedSuggestions = v2->_clientModelsThatUpdatedSuggestions;
    v2->_clientModelsThatUpdatedSuggestions = v3;

    v2->_shouldForceRefreshForAllUIs = 0;
    v5 = objc_opt_new();
    registeredDelegatesForClientModels = v2->_registeredDelegatesForClientModels;
    v2->_registeredDelegatesForClientModels = v5;

    v7 = objc_opt_new();
    requestUUIDToClientModelCaches = v2->_requestUUIDToClientModelCaches;
    v2->_requestUUIDToClientModelCaches = v7;
  }

  return v2;
}

@end