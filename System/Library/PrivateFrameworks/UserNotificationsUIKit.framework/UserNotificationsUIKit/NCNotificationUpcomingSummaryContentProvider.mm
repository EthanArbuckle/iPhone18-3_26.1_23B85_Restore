@interface NCNotificationUpcomingSummaryContentProvider
- (id)_summaryStringForNotificationRequest:(id)request;
@end

@implementation NCNotificationUpcomingSummaryContentProvider

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