@interface NotificationServiceConnection
- (_TtC21UserNotificationsCore29NotificationServiceConnection)init;
- (void)addNotificationRequest:(id)request forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier;
- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removePendingNotificationRequestsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeSimilarNotificationRequests:(id)requests forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)replaceContentForRequestWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier replacementContent:(id)content completionHandler:(id)handler;
- (void)requestAuthorizationWithOptions:(unint64_t)options forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setNotificationCategories:(id)categories forBundleIdentifier:(id)identifier;
- (void)setNotificationRequests:(id)requests forBundleIdentifier:(id)identifier;
- (void)setNotificationTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setObservingUserNotifications:(BOOL)notifications forBundleIdentifier:(id)identifier;
@end

@implementation NotificationServiceConnection

- (void)requestAuthorizationWithOptions:(unint64_t)options forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_1DA7AFA04(options, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)setNotificationCategories:(id)categories forBundleIdentifier:(id)identifier
{
  sub_1DA7AF3EC(0, &unk_1EE114DB8, 0x1E6983278);
  sub_1DA7B0D88(&qword_1EE114DB0, &unk_1EE114DB8, 0x1E6983278);
  sub_1DA940E94();
  v5 = sub_1DA940A14();
  v7 = v6;
  sub_1DA940A94();
  selfCopy = self;
  os_transaction_create();

  sub_1DA7B0DD8(selfCopy, v5, v7);
  swift_unknownObjectRelease();
}

- (void)setNotificationTopics:(id)topics forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_1DA7AF3EC(0, &qword_1EE110BA8, 0x1E69832C8);
  sub_1DA7B0D88(&qword_1EE110BA0, &qword_1EE110BA8, 0x1E69832C8);
  v7 = sub_1DA940E94();
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v6);
  selfCopy = self;
  sub_1DA7B47B0(v7, v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)removePendingNotificationRequestsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1DA940BE4();
  v8 = sub_1DA940A14();
  v10 = v9;
  if (v6)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v6 = sub_1DA7B4464;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  sub_1DA7B535C(v7, v8, v10, v6, v11);
  sub_1DA7B5220(v6);
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1DA940BE4();
  v8 = sub_1DA940A14();
  v10 = v9;
  if (v6)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v6 = sub_1DA7B4464;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  sub_1DA7B5AFC(v7, v8, v10, v6, v11);
  sub_1DA7B5220(v6);
}

- (_TtC21UserNotificationsCore29NotificationServiceConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setObservingUserNotifications:(BOOL)notifications forBundleIdentifier:(id)identifier
{
  v6 = sub_1DA940A14();
  v8 = v7;
  sub_1DA940A94();
  selfCopy = self;
  os_transaction_create();

  sub_1DA893690(selfCopy, v6, v8, notifications);
  swift_unknownObjectRelease();
}

- (void)addNotificationRequest:(id)request forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v7);
  requestCopy = request;
  selfCopy = self;
  sub_1DA8966EC(requestCopy, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)replaceContentForRequestWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier replacementContent:(id)content completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_1DA940A14();
  v11 = v10;
  v12 = sub_1DA940A14();
  v14 = v13;
  if (v8)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    v8 = sub_1DA7B1C6C;
  }

  else
  {
    v15 = 0;
  }

  contentCopy = content;
  selfCopy = self;
  sub_1DA893C24(v9, v11, v12, v14, contentCopy, v8, v15);
  sub_1DA7B5220(v8);
}

- (void)setNotificationRequests:(id)requests forBundleIdentifier:(id)identifier
{
  sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
  sub_1DA940BE4();
  v5 = sub_1DA940A14();
  v7 = v6;
  sub_1DA940A94();
  selfCopy = self;
  os_transaction_create();

  sub_1DA8942A8(selfCopy, v5, v7);
  swift_unknownObjectRelease();
}

- (void)removeSimilarNotificationRequests:(id)requests forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
  v7 = sub_1DA940BE4();
  v8 = sub_1DA940A14();
  v10 = v9;
  if (v6)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v6 = sub_1DA7B4464;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  sub_1DA8947CC(v7, v8, v10, v6, v11);
  sub_1DA7B5220(v6);
}

- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1DA940A14();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_1DA7B4464;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_1DA894E50(v6, v8, v5, v9);
  sub_1DA7B5220(v5);
}

- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1DA940A14();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_1DA7B4464;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_1DA895460(v6, v8, v5, v9);
  sub_1DA7B5220(v5);
}

- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
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
  _Block_copy(v7);
  selfCopy = self;
  sub_1DA8971F8(v8, string, v10, v12, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1DA940A14();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_1DA895B88(v6, v8, sub_1DA8965E4, v9);
}

- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  selfCopy = self;
  v8 = sub_1DA93F9A4();
  v10 = v9;

  sub_1DA940A14();
  sub_1DA896318();

  sub_1DA828324(v8, v10);
}

@end