@interface SKRFlowExtensionContext
- (SKRFlowExtensionContext)init;
- (SKRFlowExtensionContext)initWithInputItems:(id)a3;
- (SKRFlowExtensionContext)initWithInputItems:(id)a3 contextUUID:(id)a4;
- (SKRFlowExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (void)acceptInitialInputWithInputIdentifier:(id)a3 speechData:(id)a4 reply:(id)a5;
- (void)acceptWithInputData:(id)a3 speechData:(id)a4 reply:(id)a5;
- (void)canHandleWithInputData:(id)a3 rcId:(id)a4 reply:(id)a5;
- (void)cancelWithCancellationReason:(int64_t)a3 reply:(id)a4;
- (void)commitWithBridge:(id)a3 reply:(id)a4;
- (void)drainAsyncWorkWithReply:(id)a3;
- (void)prepareWithBridge:(id)a3 reply:(id)a4;
- (void)startTurnFromCacheWithExecutionRequestId:(id)a3 bridge:(id)a4 reply:(id)a5;
- (void)startTurnWithTurnData:(id)a3 bridge:(id)a4 reply:(id)a5;
- (void)warmupWithRefId:(id)a3 reply:(id)a4;
@end

@implementation SKRFlowExtensionContext

- (SKRFlowExtensionContext)init
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = (*(ObjectType + 216))(MEMORY[0x1E69E7CC0]);
  swift_deallocPartialClassInstance();
  return v8;
}

- (SKRFlowExtensionContext)initWithInputItems:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = (*(ObjectType + 216))(v7, 0, v6, 0, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);
  swift_deallocPartialClassInstance();
  return v10;
}

- (SKRFlowExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  ObjectType = swift_getObjectType();
  outlined init with copy of UUID?(v13, v10);
  v18 = *(ObjectType + 216);
  v19 = a4;
  v20 = v18(v14, a4, v10, 0, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);
  outlined destroy of UUID?(v13);
  swift_deallocPartialClassInstance();
  return v20;
}

- (void)warmupWithRefId:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  FlowExtensionContext.warmup(refId:reply:)(v6, v8, thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply, v9);
}

- (void)canHandleWithInputData:(id)a3 rcId:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v18 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  FlowExtensionContext.canHandle(inputData:rcId:reply:)(v11, v13, v14, v16, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> (), v17);

  outlined consume of Data._Representation(v11, v13);
}

- (void)cancelWithCancellationReason:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0xE0);
  v9 = self;
  v8();
  RemoteConversationService.cancel(cancellationReason:reply:)(a3, thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply, v7);
}

- (void)startTurnWithTurnData:(id)a3 bridge:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0xE0);
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  v10();
  RemoteConversationService.startTurn(turnData:bridge:reply:)(v11, a4, thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()partial apply, v9);

  swift_unknownObjectRelease();
}

- (void)startTurnFromCacheWithExecutionRequestId:(id)a3 bridge:(id)a4 reply:(id)a5
{
  v5 = _Block_copy(a5);
  (*(v5 + 2))(v5, 0, 0);

  _Block_release(v5);
}

- (void)acceptInitialInputWithInputIdentifier:(id)a3 speechData:(id)a4 reply:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0xE0);
  v16 = a4;
  v17 = self;
  v15();
  RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(v12, v16, thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned FlowExtensionUserInputResultXPC) -> ()partial apply, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)acceptWithInputData:(id)a3 speechData:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v15 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  FlowExtensionContext.accept(inputData:speechData:reply:)(v11, v13, v10, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> (), v14);

  outlined consume of Data._Representation(v11, v13);
}

- (void)prepareWithBridge:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  v7 = self;
  FlowExtensionContext.reset(reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> (), v6, "prepare(bridge:reply:)", 22, &unk_1F5830098, &async function pointer to partial apply for closure #1 in RemoteConversationService.prepare(bridge:reply:));
  swift_unknownObjectRelease();
}

- (void)commitWithBridge:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  v7 = self;
  FlowExtensionContext.reset(reply:)(partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> (), v6, "commit(bridge:reply:)", 21, &unk_1F5830070, &async function pointer to partial apply for closure #1 in RemoteConversationService.commit(bridge:reply:));
  swift_unknownObjectRelease();
}

- (void)drainAsyncWorkWithReply:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0xE0);
  v12 = self;
  v13 = v11();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static ConversationActor.shared;
  v17 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v13;
  v18[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
  v18[6] = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in RemoteConversationService.drainAsyncWork(reply:)partial apply, v18);
}

- (SKRFlowExtensionContext)initWithInputItems:(id)a3 contextUUID:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    v11 = 0;
    v10 = (*(v9 - 8) + 56);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = (*(v9 - 8) + 56);
    v11 = 1;
  }

  (*v10)(v8, v11, 1, v9);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end