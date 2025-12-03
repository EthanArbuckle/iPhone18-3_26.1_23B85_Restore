@interface UNNotificationContent(UserNotificationsCore)
- (BOOL)unc_willAlertUser;
- (uint64_t)unc_willNotifyUser;
@end

@implementation UNNotificationContent(UserNotificationsCore)

- (uint64_t)unc_willNotifyUser
{
  if ([self unc_willAlertUser])
  {
    return 1;
  }

  badge = [self badge];
  if (badge)
  {
    v2 = 1;
  }

  else
  {
    sound = [self sound];
    v2 = sound != 0;
  }

  return v2;
}

- (BOOL)unc_willAlertUser
{
  body = [self body];
  if ([body length])
  {
    v3 = 1;
  }

  else
  {
    subtitle = [self subtitle];
    if ([subtitle length])
    {
      v3 = 1;
    }

    else
    {
      title = [self title];
      v3 = [title length] != 0;
    }
  }

  return v3;
}

@end