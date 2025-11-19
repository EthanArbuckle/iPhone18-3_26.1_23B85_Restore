@interface Application
- (_TtC10prototyped11Application)init;
@end

@implementation Application

- (_TtC10prototyped11Application)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(Application *)&v6 init];

  return v4;
}

@end