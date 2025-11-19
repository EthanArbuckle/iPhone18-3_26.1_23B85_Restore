@interface NCRemoteSuggestionContentProvider
- (NCRemoteSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 uuid:(id)a7;
@end

@implementation NCRemoteSuggestionContentProvider

- (NCRemoteSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 uuid:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = NCRemoteSuggestionContentProvider;
  v14 = [(NCNotificationManagementSuggestionContentProvider *)&v17 initWithNotificationRequest:a3 bundleDisplayName:a4 managementDelegate:a5 suggestionDelegate:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, a7);
  }

  return v15;
}

@end