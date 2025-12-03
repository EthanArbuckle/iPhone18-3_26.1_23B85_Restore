@interface ServiceBridgeDelegateXPCWrapper
- (void)closeServerRequestForExecutionRequestId:(id)id;
- (void)closeWithExecutionOutput:(id)output errorString:(id)string;
- (void)closeWithExecutionOutput:(id)output needsUserInput:(BOOL)input;
- (void)fetchContextsFor:(id)for includesNearByDevices:(BOOL)devices completion:(id)completion;
- (void)postToMessageBusWithMessage:(id)message completion:(id)completion;
- (void)retriggerOriginalRequestWithExecutionRequestId:(id)id forUserId:(id)userId givenCurrentExecutionRequestId:(id)requestId reply:(id)reply;
@end

@implementation ServiceBridgeDelegateXPCWrapper

- (void)fetchContextsFor:(id)for includesNearByDevices:(BOOL)devices completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = one-time initialization token for shared;
  swift_retain_n();

  if (v16 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static MessageBusActor.shared;
  v18 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  *(v19 + 32) = self;
  *(v19 + 40) = v13;
  *(v19 + 48) = devices;
  *(v19 + 56) = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ();
  *(v19 + 64) = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)partial apply, v19);
}

- (void)closeServerRequestForExecutionRequestId:(id)id
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = one-time initialization token for shared;
  swift_retain_n();
  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MessageBusActor.shared;
  v14 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = self;
  v15[5] = v8;
  v15[6] = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)partial apply, v15);
}

- (void)closeWithExecutionOutput:(id)output errorString:(id)string
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = one-time initialization token for shared;
  outputCopy = output;
  swift_retain_n();
  v16 = outputCopy;
  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static MessageBusActor.shared;
  v18 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = self;
  v19[5] = v16;
  v19[6] = v10;
  v19[7] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)partial apply, v19);
}

- (void)closeWithExecutionOutput:(id)output needsUserInput:(BOOL)input
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = one-time initialization token for shared;
  outputCopy = output;
  swift_retain_n();
  v14 = outputCopy;
  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  *(v17 + 32) = self;
  *(v17 + 40) = v14;
  *(v17 + 48) = input;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)partial apply, v17);
}

- (void)retriggerOriginalRequestWithExecutionRequestId:(id)id forUserId:(id)userId givenCurrentExecutionRequestId:(id)requestId reply:(id)reply
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = _Block_copy(reply);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v14;
  v31 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = one-time initialization token for shared;
  swift_retain_n();

  if (v23 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = static MessageBusActor.shared;
  v25 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v25;
  v27 = v30;
  v28 = v31;
  v26[4] = self;
  v26[5] = v28;
  v26[6] = v27;
  v26[7] = v15;
  v26[8] = v17;
  v26[9] = v18;
  v26[10] = v20;
  v26[11] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
  v26[12] = v21;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)partial apply, v26);
}

- (void)postToMessageBusWithMessage:(id)message completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = _Block_copy(completion);
  messageCopy = message;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);

  outlined copy of Data._Representation(v13, v15);
  v18 = one-time initialization token for shared;

  if (v18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = static MessageBusActor.shared;
  v20 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = self;
  v21[5] = v13;
  v21[6] = v15;
  v21[7] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ();
  v21[8] = v16;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)partial apply, v21);

  outlined consume of Data._Representation(v13, v15);
}

@end