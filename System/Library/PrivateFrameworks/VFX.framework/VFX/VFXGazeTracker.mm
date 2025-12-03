@interface VFXGazeTracker
+ (void)start:(id)start;
+ (void)stop:(id)stop;
- (_TtC3VFX14VFXGazeTracker)init;
@end

@implementation VFXGazeTracker

- (_TtC3VFX14VFXGazeTracker)init
{
  *(&self->super.isa + OBJC_IVAR____TtC3VFX14VFXGazeTracker_eyeAnchorUpdateInterval) = 0x3FA1111111111111;
  *(&self->super.isa + OBJC_IVAR____TtC3VFX14VFXGazeTracker_anchorUpdateTimer) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC3VFX14VFXGazeTracker_worlds) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC3VFX14VFXGazeTracker_arGazeTracker;
  *(&self->super.isa + v3) = [objc_allocWithZone(VFXARKitGazeTracker) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for VFXGazeTracker();
  return [(VFXGazeTracker *)&v5 init];
}

+ (void)start:(id)start
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = qword_1EB6C3608;
  if (qword_1EB6C3608)
  {
    startCopy = start;
LABEL_6:
    v9 = v3;
    sub_1AFBF5AE8(start);

    goto LABEL_7;
  }

  v5 = objc_allocWithZone(type metadata accessor for VFXGazeTracker());
  startCopy2 = start;
  v7 = [v5 init];
  v8 = qword_1EB6C3608;
  qword_1EB6C3608 = v7;

  v3 = qword_1EB6C3608;
  if (qword_1EB6C3608)
  {
    goto LABEL_6;
  }

LABEL_7:
}

+ (void)stop:(id)stop
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  stopCopy = stop;
  sub_1AFBF6118(stopCopy);
}

@end