@interface SharedFlowPluginService
- (void)endTurnWithReply:(id)reply;
- (void)loadFlowPluginWithBundleId:(id)id bundlePath:(id)path rcId:(id)rcId hypothesisId:(id)hypothesisId reply:(id)reply;
- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply;
@end

@implementation SharedFlowPluginService

- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = one-time initialization token for executor;
  dataCopy = data;
  swift_unknownObjectRetain();

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  Logger.debugF(file:function:)();
  v18 = swift_allocObject();
  v18[2] = self;
  v18[3] = dataCopy;
  v18[4] = bridge;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)partial apply;
  v20[5] = v18;
  v20[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
  v20[7] = v14;
  v21 = dataCopy;
  swift_unknownObjectRetain();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)partial apply, v20);

  swift_unknownObjectRelease();
}

- (void)loadFlowPluginWithBundleId:(id)id bundlePath:(id)path rcId:(id)rcId hypothesisId:(id)hypothesisId reply:(id)reply
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = _Block_copy(reply);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (!rcId)
  {
    v21 = 0;
    if (hypothesisId)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    goto LABEL_6;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  rcId = v22;
  if (!hypothesisId)
  {
    goto LABEL_5;
  }

LABEL_3:
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
LABEL_6:
  v25 = swift_allocObject();
  *(v25 + 16) = v14;

  SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(v15, v17, v18, v20, v21, rcId, v13, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationCanHandleResult) -> (), v25);

  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

- (void)endTurnWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = one-time initialization token for executor;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  Logger.debugF(file:function:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v16 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = self;
  v17[5] = _sIeyBh_Iegh_TRTA_0;
  v17[6] = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in SharedFlowPluginService.endTurn(reply:)partial apply, v17);
}

@end