@interface RemoteBadgeService
- (BOOL)setBadgeValue:(id)value forBundleIdentifier:(id)identifier;
- (_TtC21UserNotificationsCore18RemoteBadgeService)init;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
@end

@implementation RemoteBadgeService

- (_TtC21UserNotificationsCore18RemoteBadgeService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  sub_1DA940A14();
  v4 = *(*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore18RemoteBadgeService_systemServiceClient) + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7740, &unk_1DA964EA0);
  sub_1DA940FE4();

  return v7;
}

- (BOOL)setBadgeValue:(id)value forBundleIdentifier:(id)identifier
{
  if (value)
  {
    identifierCopy = identifier;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1DA941154();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    identifierCopy2 = identifier;
    selfCopy2 = self;
  }

  sub_1DA940A14();

  v10 = sub_1DA921AC0(v12);

  sub_1DA896614(v12);
  return v10 & 1;
}

@end