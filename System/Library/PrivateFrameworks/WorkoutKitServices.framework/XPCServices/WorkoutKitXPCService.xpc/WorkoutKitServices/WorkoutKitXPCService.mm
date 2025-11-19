@interface WorkoutKitXPCService
- (_TtC20WorkoutKitXPCService20WorkoutKitXPCService)init;
- (void)endActiveWorkoutPlanWithIdentifier:(id)a3 completion:(id)a4;
- (void)handleUninstalledAppIds:(id)a3 completion:(id)a4;
- (void)iconForBundleId:(id)a3 completion:(id)a4;
- (void)openWorkoutAppWithActivityType:(int64_t)a3 autostart:(BOOL)a4 completion:(id)a5;
- (void)openWorkoutAppWithWorkoutPlanData:(id)a3 autostartWorkoutPlan:(BOOL)a4 completion:(id)a5;
- (void)openWorkoutAppWithWorkoutPlanData:(id)a3 completion:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)retrieveWorkoutCompositionFromWorkoutUUID:(id)a3 completion:(id)a4;
- (void)setAuthorizationState:(id)a3 forBundleId:(id)a4 completion:(id)a5;
- (void)storeScheduledWorkoutCompositions:(id)a3 sourceBundleId:(id)a4 completion:(id)a5;
@end

@implementation WorkoutKitXPCService

- (_TtC20WorkoutKitXPCService20WorkoutKitXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)openWorkoutAppWithWorkoutPlanData:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  v15[3] = &block_descriptor_232;
  v14 = _Block_copy(v15);

  [(WorkoutKitXPCService *)v8 openWorkoutAppWithWorkoutPlanData:isa autostartWorkoutPlan:0 completion:v14];

  outlined consume of Data._Representation(v9, v11);
  _Block_release(v14);
}

- (void)openWorkoutAppWithWorkoutPlanData:(id)a3 autostartWorkoutPlan:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;
  v12 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  _Block_copy(v7);
  specialized WorkoutKitXPCService.openWorkoutApp(withWorkoutPlan:autostartWorkoutPlan:completion:)(v9, v11, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
  outlined consume of Data._Representation(v9, v11);
}

- (void)openWorkoutAppWithActivityType:(int64_t)a3 autostart:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  specialized WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(a3, v5, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)endActiveWorkoutPlanWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  specialized WorkoutKitXPCService.endActiveWorkoutPlan(withIdentifier:completion:)(v10, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)storeScheduledWorkoutCompositions:(id)a3 sourceBundleId:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v6);
  v11 = self;
  specialized WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(v7, v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)iconForBundleId:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  specialized static AppIconRetrieval.icon(forBundleId:completion:)(v5, v7, thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> ()partial apply, v8);
}

- (void)retrieveWorkoutCompositionFromWorkoutUUID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(v10, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> (), v12);

  (*(v7 + 8))(v10, v6);
}

- (void)setAuthorizationState:(id)a3 forBundleId:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  specialized WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(v11, v8, v10, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)handleUninstalledAppIds:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  specialized WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  specialized WorkoutKitXPCService.remoteAlertHandle(_:didInvalidateWithError:)(a4);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized WorkoutKitXPCService.remoteAlertHandleDidActivate(_:)();
}

@end