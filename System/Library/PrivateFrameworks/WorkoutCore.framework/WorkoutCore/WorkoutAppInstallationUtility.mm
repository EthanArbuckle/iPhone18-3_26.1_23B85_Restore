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
  selfCopy = self;
  sharedDeviceConnection = [v3 sharedDeviceConnection];
  if (sharedDeviceConnection)
  {
    v6 = sharedDeviceConnection;
    [sharedDeviceConnection removeObserver_];

    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for WorkoutAppInstallationUtility();
    [(WorkoutAppInstallationUtility *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end