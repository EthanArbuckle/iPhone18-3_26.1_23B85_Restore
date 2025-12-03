@interface DarwinNotificationManager
+ (_TtC15audioaccessoryd25DarwinNotificationManager)shared;
- (_TtC15audioaccessoryd25DarwinNotificationManager)init;
- (void)setUp;
@end

@implementation DarwinNotificationManager

+ (_TtC15audioaccessoryd25DarwinNotificationManager)shared
{
  if (qword_1002F79F8 != -1)
  {
    swift_once();
  }

  v3 = static DarwinNotificationManager.shared;

  return v3;
}

- (_TtC15audioaccessoryd25DarwinNotificationManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DarwinNotificationManager();
  return [(DarwinNotificationManager *)&v3 init];
}

- (void)setUp
{
  sub_100115C10();
  selfCopy = self;
  v4 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = selfCopy;
  v8[4] = sub_100116134;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100115F4C;
  v8[3] = &unk_1002BDAD0;
  v6 = _Block_copy(v8);
  v7 = selfCopy;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, v6);
  _Block_release(v6);
}

@end