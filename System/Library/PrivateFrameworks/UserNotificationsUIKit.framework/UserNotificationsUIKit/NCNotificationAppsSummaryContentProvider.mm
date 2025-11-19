@interface NCNotificationAppsSummaryContentProvider
- (id)_summaryStringForNotificationRequest:(id)a3;
- (id)summaryTitle;
@end

@implementation NCNotificationAppsSummaryContentProvider

- (id)summaryTitle
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_SUMMARY_APP_TITLE" value:&stru_282FE84F8 table:0];

  return v3;
}

- (id)_summaryStringForNotificationRequest:(id)a3
{
  v3 = [a3 content];
  v4 = [v3 defaultHeader];

  return v4;
}

@end