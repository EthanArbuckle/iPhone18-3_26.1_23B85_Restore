@interface PlayableStorage
- (_TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage)init;
- (void)fireTimerWithTimer:(id)a3;
@end

@implementation PlayableStorage

- (void)fireTimerWithTimer:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_action);
  swift_beginAccess();
  v6 = a3;
  v7 = self;

  v5(v8);

  [v6 invalidate];

  v9 = *(&v7->super.isa + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer);
  *(&v7->super.isa + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer) = 0;
}

- (_TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end