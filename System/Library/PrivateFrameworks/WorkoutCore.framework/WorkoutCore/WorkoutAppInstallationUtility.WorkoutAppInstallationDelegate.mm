@interface WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate
- (_TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate)init;
- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
@end

@implementation WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate

- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ACXRemoteApplication();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(v10, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(v10, v9);

  (*(v6 + 8))(v9, v5);
}

- (_TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end