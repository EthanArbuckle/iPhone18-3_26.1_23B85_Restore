@interface ShortcutSpotlightCoordinator
- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6;
- (void)domainCleanerDidClearDomains:(id)a3;
- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)a3;
@end

@implementation ShortcutSpotlightCoordinator

- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6
{
  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  sub_231159178();
  sub_231159178();
  sub_231159178();
  v8 = a3;
  v9 = self;
  sub_2310AC734();
}

- (void)domainCleanerDidClearDomains:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2310ACA8C();
}

- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2310AD36C(v4);
}

@end