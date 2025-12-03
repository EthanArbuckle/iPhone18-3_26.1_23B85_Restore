@interface NCNotificationCommunicationsSummaryContentProvider
- (id)_summaryStringForNotificationRequest:(id)request;
- (id)summaryTitle;
@end

@implementation NCNotificationCommunicationsSummaryContentProvider

- (id)summaryTitle
{
  notificationRequests = [(NCNotificationSummaryContentProvider *)self notificationRequests];
  v4 = [notificationRequests indexOfObjectPassingTest:&__block_literal_global_35];

  notificationRequests2 = [(NCNotificationSummaryContentProvider *)self notificationRequests];
  v6 = [notificationRequests2 indexOfObjectPassingTest:&__block_literal_global_164];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = NCUserNotificationsUIKitFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"NOTIFICATION_SUMMARY_COMMUNICATION_CALLS" value:&stru_282FE84F8 table:0];
    v7 = [&stru_282FE84F8 stringByAppendingString:v9];

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"NOTIFICATION_SUMMARY_CONNECTOR_AND" value:&stru_282FE84F8 table:0];
    v12 = [(__CFString *)v7 stringByAppendingFormat:@" %@ ", v11];

    v7 = v12;
    goto LABEL_6;
  }

  v7 = &stru_282FE84F8;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v13 = NCUserNotificationsUIKitFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"NOTIFICATION_SUMMARY_COMMUNICATION_MESSAGES" value:&stru_282FE84F8 table:0];
    v15 = [(__CFString *)v7 stringByAppendingString:v14];

    v7 = v15;
  }

LABEL_7:

  return v7;
}

uint64_t __66__NCNotificationCommunicationsSummaryContentProvider_summaryTitle__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 content];
  v3 = [v2 isMessagingType];

  return v3;
}

uint64_t __66__NCNotificationCommunicationsSummaryContentProvider_summaryTitle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 content];
  v3 = [v2 isCallType];

  return v3;
}

- (id)_summaryStringForNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationSummaryContentProvider *)self _summaryStringForCommunicationNotificationRequest:requestCopy];
  if ([(NCNotificationSummaryContentProvider *)self _shouldShowContentForNotificationRequest:requestCopy]&& v5)
  {
    defaultHeader = v5;
  }

  else
  {
    content = [requestCopy content];
    defaultHeader = [content defaultHeader];
  }

  return defaultHeader;
}

@end