@interface QuickWorkoutSwitchProvider
- (BOOL)quickWorkoutSwitch;
- (_TtC11WorkoutCore26QuickWorkoutSwitchProvider)init;
- (void)setQuickWorkoutSwitch:(BOOL)a3;
@end

@implementation QuickWorkoutSwitchProvider

- (BOOL)quickWorkoutSwitch
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(self) = *(&v3->super.isa + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);

  return self;
}

- (void)setQuickWorkoutSwitch:(BOOL)a3
{
  v4 = self;
  QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter(a3);
}

- (_TtC11WorkoutCore26QuickWorkoutSwitchProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end