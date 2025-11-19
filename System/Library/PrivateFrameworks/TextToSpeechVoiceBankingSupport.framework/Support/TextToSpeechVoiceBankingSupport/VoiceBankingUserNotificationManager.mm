@interface VoiceBankingUserNotificationManager
- (_TtC13voicebankingd35VoiceBankingUserNotificationManager)init;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
@end

@implementation VoiceBankingUserNotificationManager

- (_TtC13voicebankingd35VoiceBankingUserNotificationManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___userNotificationCenter) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager_modelIDsQueuedToSkipNotifications) = &_swiftEmptySetSingleton;
  *(&self->super.isa + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___voicebankingUserNotificationBundle) = 1;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(VoiceBankingUserNotificationManager *)&v5 init];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5
{
  v9 = (*(*(sub_100001EE8(&qword_100035098, &qword_100027BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100027C18;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100027C20;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_100004538(0, 0, v11, &unk_100027C28, v16);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5
{
  v9 = (*(*(sub_100001EE8(&qword_100035098, &qword_100027BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100027BD0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100027BE0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_100004538(0, 0, v11, &unk_100027BF0, v16);
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100005580(a4);
}

@end