@interface NotificationCoreServiceConnection
- (_TtC21UserNotificationsCore33NotificationCoreServiceConnection)init;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)notificationRecordForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)notificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier;
- (void)saveNotificationRecord:(id)record targetRevisionNumber:(id)number shouldRepost:(id)repost forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)saveNotificationRequest:(id)request shouldRepost:(id)repost apsMessageTimestamp:(id)timestamp forBundleIdentifier:(id)identifier;
- (void)setBadgeCount:(id)count forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation NotificationCoreServiceConnection

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for NotificationCoreServiceConnection();
  [(NotificationCoreServiceConnection *)&v4 dealloc];
}

- (_TtC21UserNotificationsCore33NotificationCoreServiceConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)notificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {

    [v7 notifyDidPerformUpdates:updates forBundleIdentifier:identifier];
  }
}

- (id)notificationRecordForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v4 = [*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository) notificationRecordForIdentifier:identifier bundleIdentifier:bundleIdentifier];

  return v4;
}

- (void)saveNotificationRecord:(id)record targetRevisionNumber:(id)number shouldRepost:(id)repost forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v11 = _Block_copy(handler);
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

  recordCopy = record;
  numberCopy = number;
  repostCopy = repost;
  selfCopy = self;
  sub_1DA91A814(recordCopy, number, repostCopy, v12, v14, v11, v15);
  sub_1DA7B5220(v11);
}

- (void)saveNotificationRequest:(id)request shouldRepost:(id)repost apsMessageTimestamp:(id)timestamp forBundleIdentifier:(id)identifier
{
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93FAB4();
  v15 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  requestCopy = request;
  repostCopy = repost;
  identifierCopy = identifier;
  selfCopy = self;
  bOOLValue = [repostCopy BOOLValue];
  v21 = sub_1DA93FA44();
  [v15 saveNotificationRequest:requestCopy shouldRepost:bOOLValue apsMessageTimestamp:v21 forBundleIdentifier:identifierCopy];

  (*(v11 + 8))(v14, v10);
}

- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier
{
  v6 = sub_1DA940BE4();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  identifierCopy = identifier;
  selfCopy = self;
  sub_1DA8AD06C(v6);

  v9 = sub_1DA940E84();

  [v7 removeNotificationRecordsForIdentifiers:v9 bundleIdentifier:identifierCopy];
}

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  badgeNumberForBundleIdentifier_ = [*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository) badgeNumberForBundleIdentifier_];

  return badgeNumberForBundleIdentifier_;
}

- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  numberCopy = number;
  selfCopy = self;
  sub_1DA91AE94(number, v8, v10, v7, v11);
  sub_1DA7B5220(v7);
}

- (void)setBadgeCount:(id)count forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  countCopy = count;
  selfCopy = self;
  sub_1DA91B070(countCopy, v8, v10, v7, v11);
  sub_1DA7B5220(v7);
}

- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (string)
  {
    v8 = sub_1DA940A14();
    string = v9;
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

  selfCopy = self;
  sub_1DA91B25C(v8, string, v10, v12, v7, v13);
  sub_1DA7B5220(v7);
}

- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_categoryRepository);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {

    [v5 notifyDidChangeCategoriesForBundleIdentifier_];
  }
}

- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v4 = [*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_categoryRepository) categoryWithIdentifier:identifier bundleIdentifier:bundleIdentifier];

  return v4;
}

@end