@interface NCNotificationRequestCarPlayContentProvider
- (id)primarySubtitleText;
- (id)primaryText;
- (id)secondaryText;
@end

@implementation NCNotificationRequestCarPlayContentProvider

- (id)primaryText
{
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v4 = [v3 content];
  v5 = [v4 title];

  if (![v5 length])
  {
    v6 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v7 = [v6 content];
    v8 = [v7 customHeader];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      v12 = [v11 content];
      v10 = [v12 defaultHeader];

      v5 = v11;
    }

    v5 = v10;
  }

  return v5;
}

- (id)primarySubtitleText
{
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v4 = [v3 content];
  v5 = [v4 subtitle];

  if (![v5 length])
  {
    v6 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v7 = [v6 content];
    v8 = [v7 title];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
      v11 = [v10 content];
      v12 = [v11 customHeader];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v15 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
        v16 = [v15 content];
        v14 = [v16 defaultHeader];

        v5 = v15;
      }

      v5 = v14;
    }
  }

  return v5;
}

- (id)secondaryText
{
  v2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v3 = [v2 content];
  v4 = [v3 attributedMessage];

  return v4;
}

@end