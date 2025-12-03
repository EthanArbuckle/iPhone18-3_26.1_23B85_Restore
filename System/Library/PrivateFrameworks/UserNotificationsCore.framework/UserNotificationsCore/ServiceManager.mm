@interface ServiceManager
- (NSString)description;
- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock;
- (void)notificationRepository:(id)repository didPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
@end

@implementation ServiceManager

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock
{
  selfCopy = self;
  ServiceManager.contentProtectionStateChanged(forFirstUnlock:)(unlock);
}

- (void)notificationRepository:(id)repository didPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
  v7 = sub_1DA940BE4();
  v8 = sub_1DA940A14();
  v10 = v9;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1DA8B1E6C(repository, v7, v8, v10);
  swift_unknownObjectRelease();
}

- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier
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
    selfCopy = self;
    v10 = v8;
    sub_1DA935578(v5, v7);
    swift_unknownObjectRelease();
  }
}

- (NSString)description
{
  selfCopy = self;
  ServiceManager.description.getter();

  v3 = sub_1DA940A04();

  return v3;
}

@end