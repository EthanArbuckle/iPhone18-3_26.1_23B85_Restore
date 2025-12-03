@interface GCDTimer
- (_TtC11WorkoutCore8GCDTimer)init;
- (void)dealloc;
@end

@implementation GCDTimer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
  if (*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source))
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source);
    swift_getObjectType();
    selfCopy = self;
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v6 = *(&self->super.isa + v3);
    *(&self->super.isa + v3) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for GCDTimer();
  [(GCDTimer *)&v8 dealloc];
}

- (_TtC11WorkoutCore8GCDTimer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end