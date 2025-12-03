@interface PBCFUserNotificationPasteNotifier
- (PBCFUserNotificationPasteNotifier)init;
- (void)_notificationDismissed:(__CFUserNotification *)dismissed;
- (void)_notifyWithAnnouncement:(id)announcement;
- (void)_withNotifications:(id)notifications;
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

- (void)_withNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock(&self->_notificationLock);
  notificationsCopy[2](notificationsCopy, self->_notifications);

  os_unfair_lock_unlock(&self->_notificationLock);
}

- (void)_notificationDismissed:(__CFUserNotification *)dismissed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100017CC4;
  v3[3] = &unk_100031C68;
  v3[4] = dismissed;
  [(PBCFUserNotificationPasteNotifier *)self _withNotifications:v3];
}

- (void)_notifyWithAnnouncement:(id)announcement
{
  if (announcement)
  {
    localizedAnnouncementText = [announcement localizedAnnouncementText];
    v4 = &stru_100032D58;
  }

  else
  {
    v5 = +[PBEnterpriseInfo sharedInstance];
    orgName = [v5 orgName];

    v7 = sub_100017E1C();
    v4 = [v7 localizedStringForKey:@"PASTE_ANNOUNCEMENT_NOT_ALLOWED" value:@"Pasting this content is restricted" table:@"Localizable"];

    if (orgName)
    {
      v8 = sub_100017E1C();
      v9 = [v8 localizedStringForKey:@"PASTE_ANNOUNCEMENT_MANAGED_BY" value:@"Managed by ”%@”" table:@"Localizable"];

      v10 = 0;
      localizedAnnouncementText = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:&v10, orgName];
    }

    else
    {
      localizedAnnouncementText = &stru_100032D58;
    }
  }

  CFUserNotificationDisplayNotice(PBAuthorizationTimeoutInterval, 3uLL, 0, 0, 0, v4, localizedAnnouncementText, 0);
}

@end