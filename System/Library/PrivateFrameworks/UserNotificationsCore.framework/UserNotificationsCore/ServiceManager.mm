@interface ServiceManager
- (NSString)description;
- (void)categoryRepository:(id)a3 didChangeCategoriesForBundleIdentifier:(id)a4;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3;
- (void)notificationRepository:(id)a3 didPerformUpdates:(id)a4 forBundleIdentifier:(id)a5;
@end

@implementation ServiceManager

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3
{
  v4 = self;
  ServiceManager.contentProtectionStateChanged(forFirstUnlock:)(a3);
}

- (void)notificationRepository:(id)a3 didPerformUpdates:(id)a4 forBundleIdentifier:(id)a5
{
  sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
  v7 = sub_1DA940BE4();
  v8 = sub_1DA940A14();
  v10 = v9;
  swift_unknownObjectRetain();
  v11 = self;
  sub_1DA8B1E6C(a3, v7, v8, v10);
  swift_unknownObjectRelease();
}

- (void)categoryRepository:(id)a3 didChangeCategoriesForBundleIdentifier:(id)a4
{
  v5 = sub_1DA940A14();
  v7 = v6;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (v8 = *(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient)) == 0)
  {
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = self;
    v10 = v8;
    sub_1DA935578(v5, v7);
    swift_unknownObjectRelease();
  }
}

- (NSString)description
{
  v2 = self;
  ServiceManager.description.getter();

  v3 = sub_1DA940A04();

  return v3;
}

@end