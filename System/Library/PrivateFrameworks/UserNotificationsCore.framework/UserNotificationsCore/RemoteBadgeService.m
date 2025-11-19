@interface RemoteBadgeService
- (BOOL)setBadgeValue:(id)a3 forBundleIdentifier:(id)a4;
- (_TtC21UserNotificationsCore18RemoteBadgeService)init;
- (id)badgeNumberForBundleIdentifier:(id)a3;
@end

@implementation RemoteBadgeService

- (_TtC21UserNotificationsCore18RemoteBadgeService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)badgeNumberForBundleIdentifier:(id)a3
{
  sub_1DA940A14();
  v4 = *(*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore18RemoteBadgeService_systemServiceClient) + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
  v5 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7740, &unk_1DA964EA0);
  sub_1DA940FE4();

  return v7;
}

- (BOOL)setBadgeValue:(id)a3 forBundleIdentifier:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1DA941154();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v8 = a4;
    v9 = self;
  }

  sub_1DA940A14();

  v10 = sub_1DA921AC0(v12);

  sub_1DA896614(v12);
  return v10 & 1;
}

@end