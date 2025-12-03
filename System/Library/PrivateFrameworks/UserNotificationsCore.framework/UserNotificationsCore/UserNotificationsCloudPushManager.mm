@interface UserNotificationsCloudPushManager
- (_TtC21UserNotificationsCore33UserNotificationsCloudPushManager)init;
- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier;
@end

@implementation UserNotificationsCloudPushManager

- (_TtC21UserNotificationsCore33UserNotificationsCloudPushManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier
{
  v6 = sub_1DA940A14();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v12.super.isa = repository;
  v12._repository = v6;
  v12._observable = v8;
  UserNotificationsCloudPushManager.categoryRepository(_:didChangeCategoriesForBundleIdentifier:)(v12, v10);
  swift_unknownObjectRelease();
}

@end