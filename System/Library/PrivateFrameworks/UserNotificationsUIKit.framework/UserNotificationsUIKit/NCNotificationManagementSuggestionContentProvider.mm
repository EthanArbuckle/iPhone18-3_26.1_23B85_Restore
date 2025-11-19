@interface NCNotificationManagementSuggestionContentProvider
- (NCNotificationManagementSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6;
- (NCNotificationManagementSuggestionDelegate)suggestionDelegate;
@end

@implementation NCNotificationManagementSuggestionContentProvider

- (NCNotificationManagementSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6
{
  v9 = a6;
  v13.receiver = self;
  v13.super_class = NCNotificationManagementSuggestionContentProvider;
  v10 = [(NCNotificationManagementContentProvider *)&v13 initWithNotificationRequest:a3 managementDelegate:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_suggestionDelegate, v9);
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