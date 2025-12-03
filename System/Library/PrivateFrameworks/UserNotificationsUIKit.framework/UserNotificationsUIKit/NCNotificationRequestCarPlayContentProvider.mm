@interface NCNotificationRequestCarPlayContentProvider
- (id)primarySubtitleText;
- (id)primaryText;
- (id)secondaryText;
@end

@implementation NCNotificationRequestCarPlayContentProvider

- (id)primaryText
{
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  title = [content title];

  if (![title length])
  {
    notificationRequest2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    content2 = [notificationRequest2 content];
    customHeader = [content2 customHeader];
    v9 = customHeader;
    if (customHeader)
    {
      defaultHeader = customHeader;
    }

    else
    {
      notificationRequest3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      content3 = [notificationRequest3 content];
      defaultHeader = [content3 defaultHeader];

      title = notificationRequest3;
    }

    title = defaultHeader;
  }

  return title;
}

- (id)primarySubtitleText
{
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  subtitle = [content subtitle];

  if (![subtitle length])
  {
    notificationRequest2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    content2 = [notificationRequest2 content];
    title = [content2 title];
    v9 = [title length];

    if (v9)
    {
      notificationRequest3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      content3 = [notificationRequest3 content];
      customHeader = [content3 customHeader];
      v13 = customHeader;
      if (customHeader)
      {
        defaultHeader = customHeader;
      }

      else
      {
        notificationRequest4 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
        content4 = [notificationRequest4 content];
        defaultHeader = [content4 defaultHeader];

        subtitle = notificationRequest4;
      }

      subtitle = defaultHeader;
    }
  }

  return subtitle;
}

- (id)secondaryText
{
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  attributedMessage = [content attributedMessage];

  return attributedMessage;
}

@end