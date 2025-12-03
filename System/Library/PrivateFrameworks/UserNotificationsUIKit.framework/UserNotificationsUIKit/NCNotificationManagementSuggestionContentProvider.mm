@interface NCNotificationManagementSuggestionContentProvider
- (NCNotificationManagementSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate;
- (NCNotificationManagementSuggestionDelegate)suggestionDelegate;
@end

@implementation NCNotificationManagementSuggestionContentProvider

- (NCNotificationManagementSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate
{
  suggestionDelegateCopy = suggestionDelegate;
  v13.receiver = self;
  v13.super_class = NCNotificationManagementSuggestionContentProvider;
  v10 = [(NCNotificationManagementContentProvider *)&v13 initWithNotificationRequest:request managementDelegate:delegate];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_suggestionDelegate, suggestionDelegateCopy);
    v11->_auxiliaryOptionsVisible = 1;
  }

  return v11;
}

- (NCNotificationManagementSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionDelegate);

  return WeakRetained;
}

@end