@interface NotificationSourceMonitorLSObserver
- (_TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver)init;
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation NotificationSourceMonitorLSObserver

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1DA941154();
  swift_unknownObjectRelease();
  sub_1DA8C0530(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (_TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end