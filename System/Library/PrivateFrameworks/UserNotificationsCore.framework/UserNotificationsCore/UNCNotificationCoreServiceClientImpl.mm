@interface UNCNotificationCoreServiceClientImpl
- (UNCNotificationCoreServiceClientDelegate)delegate;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
- (id)categoriesForBundleIdentifier:(id)identifier;
- (id)notificationRecordsForBundleIdentifier:(id)identifier;
- (void)performAction:(id)action forNotification:(id)notification inApp:(id)app withUserText:(id)text;
- (void)removeNotificationRecordsForIdentifiersWithIdentifiers:(id)identifiers bundleIdentifier:(id)identifier;
- (void)save:(id)save shouldRepost:(BOOL)repost apsMessageTimestamp:(id)timestamp forBundleIdentifier:(id)identifier;
- (void)save:(id)save targetRevisionNumber:(id)number shouldRepost:(BOOL)repost forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeCount:(int64_t)count forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation UNCNotificationCoreServiceClientImpl

- (UNCNotificationCoreServiceClientDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)notificationRecordsForBundleIdentifier:(id)identifier
{
  sub_1DA940A14();
  v4 = *(self + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6798, &qword_1DA960058);
  sub_1DA940FE4();

  sub_1DA7AF3EC(0, &qword_1ECBD4C00, off_1E85D5D68);
  v6 = sub_1DA940BD4();

  return v6;
}

- (void)save:(id)save targetRevisionNumber:(id)number shouldRepost:(BOOL)repost forBundleIdentifier:(id)identifier completionHandler:(id)handler
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

  saveCopy = save;
  numberCopy = number;
  selfCopy = self;
  sub_1DA8CD6F0(saveCopy, number, repost, v12, v14, v11, v15);
  sub_1DA7B5220(v11);
}

- (void)save:(id)save shouldRepost:(BOOL)repost apsMessageTimestamp:(id)timestamp forBundleIdentifier:(id)identifier
{
  repostCopy = repost;
  v9 = sub_1DA93FAF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93FAB4();
  v14 = sub_1DA940A14();
  v16 = v15;
  saveCopy = save;
  selfCopy = self;
  sub_1DA8CDE94(saveCopy, repostCopy, v13, v14, v16);

  (*(v10 + 8))(v13, v9);
}

- (void)removeNotificationRecordsForIdentifiersWithIdentifiers:(id)identifiers bundleIdentifier:(id)identifier
{
  v5 = sub_1DA940BE4();
  v6 = sub_1DA940A14();
  v8 = v7;
  selfCopy = self;
  sub_1DA8CE534(v5, v6, v8);
}

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  sub_1DA940A14();
  v4 = *(self + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7740, &unk_1DA964EA0);
  sub_1DA940FE4();

  return v7;
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
  sub_1DA8CF3A4(number, v8, v10, v7, v11);
  sub_1DA7B5220(v7);
}

- (void)setBadgeCount:(int64_t)count forBundleIdentifier:(id)identifier completionHandler:(id)handler
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

  selfCopy = self;
  sub_1DA8CF90C(count, v8, v10, v7, v11);
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
  sub_1DA8CFE98(v8, string, v10, v12, v7, v13);
  sub_1DA7B5220(v7);
}

- (id)categoriesForBundleIdentifier:(id)identifier
{
  sub_1DA940A14();
  v4 = *(self + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7900, qword_1DA960078);
  sub_1DA940FE4();

  sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v6 = sub_1DA940BD4();

  return v6;
}

- (void)performAction:(id)action forNotification:(id)notification inApp:(id)app withUserText:(id)text
{
  v8 = sub_1DA940A14();
  v10 = v9;
  v11 = sub_1DA940A14();
  v13 = v12;
  v14 = sub_1DA940A14();
  v16 = v15;
  if (text)
  {
    v17 = sub_1DA940A14();
    text = v18;
  }

  else
  {
    v17 = 0;
  }

  selfCopy = self;
  sub_1DA8D0F64(v8, v10, v11, v13, v14, v16, v17, text);
}

@end