@interface DebugGestureHandler
- (_TtC15RemindersUICoreP33_C3D5BA548D44065B85FB6ED8321D992119DebugGestureHandler)init;
- (void)tapGestureAction:(id)a3;
@end

@implementation DebugGestureHandler

- (void)tapGestureAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_21D8778B0(v6);

  sub_21D1A8418(v6);
}

- (_TtC15RemindersUICoreP33_C3D5BA548D44065B85FB6ED8321D992119DebugGestureHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end