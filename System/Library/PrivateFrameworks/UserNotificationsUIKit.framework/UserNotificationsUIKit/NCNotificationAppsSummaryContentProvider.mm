@interface NCNotificationAppsSummaryContentProvider
- (id)_summaryStringForNotificationRequest:(id)request;
- (id)summaryTitle;
@end

@implementation NCNotificationAppsSummaryContentProvider

- (id)summaryTitle
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_SUMMARY_APP_TITLE" value:&stru_282FE84F8 table:0];

  return v3;
}

- (id)_summaryStringForNotificationRequest:(id)request
{
  content = [request content];
  defaultHeader = [content defaultHeader];

  return defaultHeader;
}

@end