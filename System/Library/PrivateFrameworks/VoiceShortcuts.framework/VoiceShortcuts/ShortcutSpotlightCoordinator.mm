@interface ShortcutSpotlightCoordinator
- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed;
- (void)domainCleanerDidClearDomains:(id)domains;
- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)notification;
@end

@implementation ShortcutSpotlightCoordinator

- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed
{
  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  sub_231159178();
  sub_231159178();
  sub_231159178();
  changeCopy = change;
  selfCopy = self;
  sub_2310AC734();
}

- (void)domainCleanerDidClearDomains:(id)domains
{
  domainsCopy = domains;
  selfCopy = self;
  sub_2310ACA8C();
}

- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_2310AD36C(notificationCopy);
}

@end