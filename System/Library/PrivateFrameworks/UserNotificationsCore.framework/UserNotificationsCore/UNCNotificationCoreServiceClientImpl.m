@interface UNCNotificationCoreServiceClientImpl
- (UNCNotificationCoreServiceClientDelegate)delegate;
- (id)badgeNumberForBundleIdentifier:(id)a3;
- (id)categoriesForBundleIdentifier:(id)a3;
- (id)notificationRecordsForBundleIdentifier:(id)a3;
- (void)performAction:(id)a3 forNotification:(id)a4 inApp:(id)a5 withUserText:(id)a6;
- (void)removeNotificationRecordsForIdentifiersWithIdentifiers:(id)a3 bundleIdentifier:(id)a4;
- (void)save:(id)a3 shouldRepost:(BOOL)a4 apsMessageTimestamp:(id)a5 forBundleIdentifier:(id)a6;
- (void)save:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(BOOL)a5 forBundleIdentifier:(id)a6 completionHandler:(id)a7;
- (void)setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation UNCNotificationCoreServiceClientImpl

- (UNCNotificationCoreServiceClientDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)notificationRecordsForBundleIdentifier:(id)a3
{
  sub_1DA940A14();
  v4 = *(self + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  v5 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6798, &qword_1DA960058);
  sub_1DA940FE4();

  sub_1DA7AF3EC(0, &qword_1ECBD4C00, off_1E85D5D68);
  v6 = sub_1DA940BD4();

  return v6;
}

- (void)save:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(BOOL)a5 forBundleIdentifier:(id)a6 completionHandler:(id)a7
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
  v18 = self;
  sub_1DA8CD6F0(v16, a4, a5, v12, v14, v11, v15);
  sub_1DA7B5220(v11);
}

- (void)save:(id)a3 shouldRepost:(BOOL)a4 apsMessageTimestamp:(id)a5 forBundleIdentifier:(id)a6
{
  v6 = a4;
  v9 = sub_1DA93FAF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93FAB4();
  v14 = sub_1DA940A14();
  v16 = v15;
  v17 = a3;
  v18 = self;
  sub_1DA8CDE94(v17, v6, v13, v14, v16);

  (*(v10 + 8))(v13, v9);
}

- (void)removeNotificationRecordsForIdentifiersWithIdentifiers:(id)a3 bundleIdentifier:(id)a4
{
  v5 = sub_1DA940BE4();
  v6 = sub_1DA940A14();
  v8 = v7;
  v9 = self;
  sub_1DA8CE534(v5, v6, v8);
}

- (id)badgeNumberForBundleIdentifier:(id)a3
{
  sub_1DA940A14();
  v4 = *(self + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  v5 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7740, &unk_1DA964EA0);
  sub_1DA940FE4();

  return v7;
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
  sub_1DA8CF3A4(a3, v8, v10, v7, v11);
  sub_1DA7B5220(v7);
}

- (void)setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
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

  v12 = self;
  sub_1DA8CF90C(a3, v8, v10, v7, v11);
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
  sub_1DA8CFE98(v8, a3, v10, v12, v7, v13);
  sub_1DA7B5220(v7);
}

- (id)categoriesForBundleIdentifier:(id)a3
{
  sub_1DA940A14();
  v4 = *(self + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  v5 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7900, qword_1DA960078);
  sub_1DA940FE4();

  sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v6 = sub_1DA940BD4();

  return v6;
}

- (void)performAction:(id)a3 forNotification:(id)a4 inApp:(id)a5 withUserText:(id)a6
{
  v8 = sub_1DA940A14();
  v10 = v9;
  v11 = sub_1DA940A14();
  v13 = v12;
  v14 = sub_1DA940A14();
  v16 = v15;
  if (a6)
  {
    v17 = sub_1DA940A14();
    a6 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = self;
  sub_1DA8D0F64(v8, v10, v11, v13, v14, v16, v17, a6);
}

@end