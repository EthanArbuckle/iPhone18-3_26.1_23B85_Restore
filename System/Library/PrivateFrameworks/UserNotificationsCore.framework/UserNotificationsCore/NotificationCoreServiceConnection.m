@interface NotificationCoreServiceConnection
- (_TtC21UserNotificationsCore33NotificationCoreServiceConnection)init;
- (id)badgeNumberForBundleIdentifier:(id)a3;
- (id)categoryForIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)a3;
- (void)dealloc;
- (void)notificationRepositoryDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4;
- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4;
- (void)saveNotificationRecord:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(id)a5 forBundleIdentifier:(id)a6 completionHandler:(id)a7;
- (void)saveNotificationRequest:(id)a3 shouldRepost:(id)a4 apsMessageTimestamp:(id)a5 forBundleIdentifier:(id)a6;
- (void)setBadgeCount:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation NotificationCoreServiceConnection

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for NotificationCoreServiceConnection();
  [(NotificationCoreServiceConnection *)&v4 dealloc];
}

- (_TtC21UserNotificationsCore33NotificationCoreServiceConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)notificationRepositoryDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {

    [v7 notifyDidPerformUpdates:a3 forBundleIdentifier:a4];
  }
}

- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v4 = [*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository) notificationRecordForIdentifier:a3 bundleIdentifier:a4];

  return v4;
}

- (void)saveNotificationRecord:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(id)a5 forBundleIdentifier:(id)a6 completionHandler:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = sub_1DA940A14();
  v14 = v13;
  if (v11)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    v11 = sub_1DA8D268C;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = self;
  sub_1DA91A814(v16, a4, v18, v12, v14, v11, v15);
  sub_1DA7B5220(v11);
}

- (void)saveNotificationRequest:(id)a3 shouldRepost:(id)a4 apsMessageTimestamp:(id)a5 forBundleIdentifier:(id)a6
{
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93FAB4();
  v15 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = self;
  v20 = [v17 BOOLValue];
  v21 = sub_1DA93FA44();
  [v15 saveNotificationRequest:v16 shouldRepost:v20 apsMessageTimestamp:v21 forBundleIdentifier:v18];

  (*(v11 + 8))(v14, v10);
}

- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4
{
  v6 = sub_1DA940BE4();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v10 = a4;
  v8 = self;
  sub_1DA8AD06C(v6);

  v9 = sub_1DA940E84();

  [v7 removeNotificationRecordsForIdentifiers:v9 bundleIdentifier:v10];
}

- (id)badgeNumberForBundleIdentifier:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository) badgeNumberForBundleIdentifier_];

  return v3;
}

- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1DA940A14();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_1DA7B1C6C;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v13 = self;
  sub_1DA91AE94(a3, v8, v10, v7, v11);
  sub_1DA7B5220(v7);
}

- (void)setBadgeCount:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1DA940A14();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_1DA7B1C6C;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v13 = self;
  sub_1DA91B070(v12, v8, v10, v7, v11);
  sub_1DA7B5220(v7);
}

- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (a3)
  {
    v8 = sub_1DA940A14();
    a3 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = sub_1DA940A14();
  v12 = v11;
  if (v7)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v7 = sub_1DA7B1BCC;
  }

  else
  {
    v13 = 0;
  }

  v14 = self;
  sub_1DA91B25C(v8, a3, v10, v12, v7, v13);
  sub_1DA7B5220(v7);
}

- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_categoryRepository);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {

    [v5 notifyDidChangeCategoriesForBundleIdentifier_];
  }
}

- (id)categoryForIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v4 = [*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_categoryRepository) categoryWithIdentifier:a3 bundleIdentifier:a4];

  return v4;
}

@end