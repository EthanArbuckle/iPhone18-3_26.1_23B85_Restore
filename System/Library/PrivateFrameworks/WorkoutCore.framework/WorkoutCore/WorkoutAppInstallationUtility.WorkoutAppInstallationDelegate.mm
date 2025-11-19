@interface WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate
- (_TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate)init;
- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4;
@end

@implementation WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ACXRemoteApplication();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(v10, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
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