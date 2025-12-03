@interface NCRemoteSuggestionContentProvider
- (NCRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid;
@end

@implementation NCRemoteSuggestionContentProvider

- (NCRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid
{
  uuidCopy = uuid;
  v17.receiver = self;
  v17.super_class = NCRemoteSuggestionContentProvider;
  v14 = [(NCNotificationManagementSuggestionContentProvider *)&v17 initWithNotificationRequest:request bundleDisplayName:name managementDelegate:delegate suggestionDelegate:suggestionDelegate];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, uuid);
  }

  return v15;
}

@end