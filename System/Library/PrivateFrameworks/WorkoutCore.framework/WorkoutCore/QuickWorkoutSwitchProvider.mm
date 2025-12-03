@interface QuickWorkoutSwitchProvider
- (BOOL)quickWorkoutSwitch;
- (_TtC11WorkoutCore26QuickWorkoutSwitchProvider)init;
- (void)setQuickWorkoutSwitch:(BOOL)switch;
@end

@implementation QuickWorkoutSwitchProvider

- (BOOL)quickWorkoutSwitch
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(self) = *(&selfCopy->super.isa + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);

  return self;
}

- (void)setQuickWorkoutSwitch:(BOOL)switch
{
  selfCopy = self;
  QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter(switch);
}

- (_TtC11WorkoutCore26QuickWorkoutSwitchProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end