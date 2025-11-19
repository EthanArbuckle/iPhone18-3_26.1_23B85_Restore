@interface WorkoutAppInstallationUtility
- (_TtC11WorkoutCore29WorkoutAppInstallationUtility)init;
- (void)dealloc;
@end

@implementation WorkoutAppInstallationUtility

- (_TtC11WorkoutCore29WorkoutAppInstallationUtility)init
{
  v3 = *MEMORY[0x277D09580];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility());
  v8 = specialized WorkoutAppInstallationUtility.init(dependencies:)(v4, v6, v7);
  swift_getObjectType();
  v9 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v10 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedDeviceConnection];
  if (v5)
  {
    v6 = v5;
    [v5 removeObserver_];

    v7.receiver = v4;
    v7.super_class = type metadata accessor for WorkoutAppInstallationUtility();
    [(WorkoutAppInstallationUtility *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end