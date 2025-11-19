@interface UNNotificationContent(UserNotificationsCore)
- (BOOL)unc_willAlertUser;
- (uint64_t)unc_willNotifyUser;
@end

@implementation UNNotificationContent(UserNotificationsCore)

- (uint64_t)unc_willNotifyUser
{
  if ([a1 unc_willAlertUser])
  {
    return 1;
  }

  v3 = [a1 badge];
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    v4 = [a1 sound];
    v2 = v4 != 0;
  }

  return v2;
}

- (BOOL)unc_willAlertUser
{
  v2 = [a1 body];
  if ([v2 length])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 subtitle];
    if ([v4 length])
    {
      v3 = 1;
    }

    else
    {
      v5 = [a1 title];
      v3 = [v5 length] != 0;
    }
  }

  return v3;
}

@end