@interface PlayableStorage
- (_TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage)init;
- (void)fireTimerWithTimer:(id)timer;
@end

@implementation PlayableStorage

- (void)fireTimerWithTimer:(id)timer
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_action);
  swift_beginAccess();
  timerCopy = timer;
  selfCopy = self;

  v5(v8);

  [timerCopy invalidate];

  v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer) = 0;
}

- (_TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end