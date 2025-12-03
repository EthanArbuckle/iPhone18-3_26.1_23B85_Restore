@interface VFXMotionTracker
- (_TtC3VFX16VFXMotionTracker)init;
- (_TtC3VFX16VFXMotionTracker)initWithWorld:(id)world;
- (void)start;
- (void)stop;
@end

@implementation VFXMotionTracker

- (_TtC3VFX16VFXMotionTracker)initWithWorld:(id)world
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionManager;
  v6 = objc_allocWithZone(MEMORY[0x1E69634D0]);
  worldCopy = world;
  *(&self->super.isa + v5) = [v6 init];
  *(&self->super.isa + OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionUpdateTimer) = 0;
  swift_unknownObjectWeakAssign();
  v10.receiver = self;
  v10.super_class = type metadata accessor for VFXMotionTracker();
  v8 = [(VFXMotionTracker *)&v10 init];

  return v8;
}

- (void)start
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1AFBF8498();
}

- (void)stop
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionManager;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionManager);
  selfCopy = self;
  [v4 stopDeviceMotionUpdates];
  [*(&self->super.isa + v3) stopMagnetometerUpdates];
  v6 = OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionUpdateTimer;
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC3VFX16VFXMotionTracker_motionUpdateTimer) invalidate];
  v7 = *(&selfCopy->super.isa + v6);
  *(&selfCopy->super.isa + v6) = 0;
}

- (_TtC3VFX16VFXMotionTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end