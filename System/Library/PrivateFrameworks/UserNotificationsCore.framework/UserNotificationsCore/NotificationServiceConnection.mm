@interface NotificationServiceConnection
- (_TtC21UserNotificationsCore29NotificationServiceConnection)init;
- (void)addNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4;
- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removePendingNotificationRequestsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeSimilarNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)replaceContentForRequestWithIdentifier:(id)a3 bundleIdentifier:(id)a4 replacementContent:(id)a5 completionHandler:(id)a6;
- (void)requestAuthorizationWithOptions:(unint64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setNotificationCategories:(id)a3 forBundleIdentifier:(id)a4;
- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4;
- (void)setNotificationTopics:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)setObservingUserNotifications:(BOOL)a3 forBundleIdentifier:(id)a4;
@end

@implementation NotificationServiceConnection

- (void)requestAuthorizationWithOptions:(unint64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_1DA7AFA04(a3, v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)setNotificationCategories:(id)a3 forBundleIdentifier:(id)a4
{
  sub_1DA7AF3EC(0, &unk_1EE114DB8, 0x1E6983278);
  sub_1DA7B0D88(&qword_1EE114DB0, &unk_1EE114DB8, 0x1E6983278);
  sub_1DA940E94();
  v5 = sub_1DA940A14();
  v7 = v6;
  sub_1DA940A94();
  v8 = self;
  os_transaction_create();

  sub_1DA7B0DD8(v8, v5, v7);
  swift_unknownObjectRelease();
}

- (void)setNotificationTopics:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1DA7AF3EC(0, &qword_1EE110BA8, 0x1E69832C8);
  sub_1DA7B0D88(&qword_1EE110BA0, &qword_1EE110BA8, 0x1E69832C8);
  v7 = sub_1DA940E94();
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v6);
  v11 = self;
  sub_1DA7B47B0(v7, v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)removePendingNotificationRequestsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
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

  v12 = self;
  sub_1DA7B535C(v7, v8, v10, v6, v11);
  sub_1DA7B5220(v6);
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
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

  v12 = self;
  sub_1DA7B5AFC(v7, v8, v10, v6, v11);
  sub_1DA7B5220(v6);
}

- (_TtC21UserNotificationsCore29NotificationServiceConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setObservingUserNotifications:(BOOL)a3 forBundleIdentifier:(id)a4
{
  v6 = sub_1DA940A14();
  v8 = v7;
  sub_1DA940A94();
  v9 = self;
  os_transaction_create();

  sub_1DA893690(v9, v6, v8, a3);
  swift_unknownObjectRelease();
}

- (void)addNotificationRequest:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  sub_1DA8966EC(v11, v8, v10, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)replaceContentForRequestWithIdentifier:(id)a3 bundleIdentifier:(id)a4 replacementContent:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
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

  v16 = a5;
  v17 = self;
  sub_1DA893C24(v9, v11, v12, v14, v16, v8, v15);
  sub_1DA7B5220(v8);
}

- (void)setNotificationRequests:(id)a3 forBundleIdentifier:(id)a4
{
  sub_1DA7AF3EC(0, &unk_1EE110BE0, 0x1E6983298);
  sub_1DA940BE4();
  v5 = sub_1DA940A14();
  v7 = v6;
  sub_1DA940A94();
  v8 = self;
  os_transaction_create();

  sub_1DA8942A8(v8, v5, v7);
  swift_unknownObjectRelease();
}

- (void)removeSimilarNotificationRequests:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
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

  v12 = self;
  sub_1DA8947CC(v7, v8, v10, v6, v11);
  sub_1DA7B5220(v6);
}

- (void)removeAllPendingNotificationRequestsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
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

  v10 = self;
  sub_1DA894E50(v6, v8, v5, v9);
  sub_1DA7B5220(v5);
}

- (void)removeAllDeliveredNotificationsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
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

  v10 = self;
  sub_1DA895460(v6, v8, v5, v9);
  sub_1DA7B5220(v5);
}

- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
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
  _Block_copy(v7);
  v13 = self;
  sub_1DA8971F8(v8, a3, v10, v12, v13, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)getClearedInfoForDataProviderMigrationWithBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1DA940A14();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_1DA895B88(v6, v8, sub_1DA8965E4, v9);
}

- (void)didReceiveDeviceToken:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = sub_1DA93F9A4();
  v10 = v9;

  sub_1DA940A14();
  sub_1DA896318();

  sub_1DA828324(v8, v10);
}

@end