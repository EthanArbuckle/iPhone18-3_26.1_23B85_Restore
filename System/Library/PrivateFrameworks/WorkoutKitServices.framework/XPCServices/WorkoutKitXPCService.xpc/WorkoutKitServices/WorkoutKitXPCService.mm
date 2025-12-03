@interface WorkoutKitXPCService
- (_TtC20WorkoutKitXPCService20WorkoutKitXPCService)init;
- (void)endActiveWorkoutPlanWithIdentifier:(id)identifier completion:(id)completion;
- (void)handleUninstalledAppIds:(id)ids completion:(id)completion;
- (void)iconForBundleId:(id)id completion:(id)completion;
- (void)openWorkoutAppWithActivityType:(int64_t)type autostart:(BOOL)autostart completion:(id)completion;
- (void)openWorkoutAppWithWorkoutPlanData:(id)data autostartWorkoutPlan:(BOOL)plan completion:(id)completion;
- (void)openWorkoutAppWithWorkoutPlanData:(id)data completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)retrieveWorkoutCompositionFromWorkoutUUID:(id)d completion:(id)completion;
- (void)setAuthorizationState:(id)state forBundleId:(id)id completion:(id)completion;
- (void)storeScheduledWorkoutCompositions:(id)compositions sourceBundleId:(id)id completion:(id)completion;
@end

@implementation WorkoutKitXPCService

- (_TtC20WorkoutKitXPCService20WorkoutKitXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)openWorkoutAppWithWorkoutPlanData:(id)data completion:(id)completion
{
  v6 = _Block_copy(completion);
  dataCopy = data;
  selfCopy = self;
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

  [(WorkoutKitXPCService *)selfCopy openWorkoutAppWithWorkoutPlanData:isa autostartWorkoutPlan:0 completion:v14];

  outlined consume of Data._Representation(v9, v11);
  _Block_release(v14);
}

- (void)openWorkoutAppWithWorkoutPlanData:(id)data autostartWorkoutPlan:(BOOL)plan completion:(id)completion
{
  v7 = _Block_copy(completion);
  dataCopy = data;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  _Block_copy(v7);
  specialized WorkoutKitXPCService.openWorkoutApp(withWorkoutPlan:autostartWorkoutPlan:completion:)(v9, v11, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
  outlined consume of Data._Representation(v9, v11);
}

- (void)openWorkoutAppWithActivityType:(int64_t)type autostart:(BOOL)autostart completion:(id)completion
{
  autostartCopy = autostart;
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  selfCopy = self;
  specialized WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(type, autostartCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)endActiveWorkoutPlanWithIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  specialized WorkoutKitXPCService.endActiveWorkoutPlan(withIdentifier:completion:)(v10, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)storeScheduledWorkoutCompositions:(id)compositions sourceBundleId:(id)id completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v6);
  selfCopy = self;
  specialized WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(v7, v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)iconForBundleId:(id)id completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  specialized static AppIconRetrieval.icon(forBundleId:completion:)(v5, v7, thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> ()partial apply, v8);
}

- (void)retrieveWorkoutCompositionFromWorkoutUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(v10, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> (), v12);

  (*(v7 + 8))(v10, v6);
}

- (void)setAuthorizationState:(id)state forBundleId:(id)id completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  stateCopy = state;
  selfCopy = self;
  specialized WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(stateCopy, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)handleUninstalledAppIds:(id)ids completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  specialized WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  specialized WorkoutKitXPCService.remoteAlertHandle(_:didInvalidateWithError:)(error);
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  specialized WorkoutKitXPCService.remoteAlertHandleDidActivate(_:)();
}

@end