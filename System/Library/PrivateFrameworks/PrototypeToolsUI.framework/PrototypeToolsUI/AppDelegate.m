@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC10prototyped11AppDelegate)init;
- (void)killSpringBoard;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000B4E8(&qword_10001F9C0, type metadata accessor for LaunchOptionsKey);
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_10000A800(a4);

  return v9 & 1;
}

- (_TtC10prototyped11AppDelegate)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController) = 0;
  v4 = OBJC_IVAR____TtC10prototyped11AppDelegate_listener;
  *(&self->super.isa + v4) = [objc_allocWithZone(type metadata accessor for Listener()) init];
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(AppDelegate *)&v7 init];

  return v5;
}

- (void)killSpringBoard
{
  v3 = (*(*(sub_10000AA2C(&qword_10001F6F8, &qword_1000139A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100008460(0, 0, v5, &unk_100013A68, v9);
}

@end