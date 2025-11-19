@interface PBCFUserNotificationPasteNotifier
- (PBCFUserNotificationPasteNotifier)init;
- (void)_notificationDismissed:(__CFUserNotification *)a3;
- (void)_notifyWithAnnouncement:(id)a3;
- (void)_withNotifications:(id)a3;
@end

@implementation PBCFUserNotificationPasteNotifier

- (PBCFUserNotificationPasteNotifier)init
{
  v7.receiver = self;
  v7.super_class = PBCFUserNotificationPasteNotifier;
  v2 = [(PBCFUserNotificationPasteNotifier *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_notificationLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableOrderedSet);
    notifications = v3->_notifications;
    v3->_notifications = v4;
  }

  return v3;
}

- (void)_withNotifications:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_notificationLock);
  v4[2](v4, self->_notifications);

  os_unfair_lock_unlock(&self->_notificationLock);
}

- (void)_notificationDismissed:(__CFUserNotification *)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100017CC4;
  v3[3] = &unk_100031C68;
  v3[4] = a3;
  [(PBCFUserNotificationPasteNotifier *)self _withNotifications:v3];
}

- (void)_notifyWithAnnouncement:(id)a3
{
  if (a3)
  {
    v3 = [a3 localizedAnnouncementText];
    v4 = &stru_100032D58;
  }

  else
  {
    v5 = +[PBEnterpriseInfo sharedInstance];
    v6 = [v5 orgName];

    v7 = sub_100017E1C();
    v4 = [v7 localizedStringForKey:@"PASTE_ANNOUNCEMENT_NOT_ALLOWED" value:@"Pasting this content is restricted" table:@"Localizable"];

    if (v6)
    {
      v8 = sub_100017E1C();
      v9 = [v8 localizedStringForKey:@"PASTE_ANNOUNCEMENT_MANAGED_BY" value:@"Managed by ”%@”" table:@"Localizable"];

      v10 = 0;
      v3 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:&v10, v6];
    }

    else
    {
      v3 = &stru_100032D58;
    }
  }

  CFUserNotificationDisplayNotice(PBAuthorizationTimeoutInterval, 3uLL, 0, 0, 0, v4, v3, 0);
}

@end