@interface SendableRemoteConversationXPCWrapper
- (void)acceptInitialInputWithInputIdentifier:(id)identifier speechData:(id)data reply:(id)reply;
- (void)acceptWithInputData:(id)data speechData:(id)speechData reply:(id)reply;
- (void)canHandleWithInputData:(id)data rcId:(id)id reply:(id)reply;
- (void)cancelWithCancellationReason:(int64_t)reason reply:(id)reply;
- (void)commitWithBridge:(id)bridge reply:(id)reply;
- (void)ensureReadyWithReply:(id)reply;
- (void)flexibleExecutionSupportOptionsWithReply:(id)reply;
- (void)paraphraseWithReply:(id)reply;
- (void)prepareWithBridge:(id)bridge reply:(id)reply;
- (void)startTurnFromCacheWithExecutionRequestId:(id)id bridge:(id)bridge reply:(id)reply;
- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply;
- (void)warmupWithRefId:(id)id reply:(id)reply;
@end

@implementation SendableRemoteConversationXPCWrapper

- (void)warmupWithRefId:(id)id reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->wrapped;
  v11[4] = thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v11[3] = &block_descriptor_152;
  v9 = _Block_copy(v11);
  idCopy = id;

  [v8 warmupWithRefId:idCopy reply:v9];

  _Block_release(v9);
}

- (void)canHandleWithInputData:(id)data rcId:(id)id reply:(id)reply
{
  v8 = _Block_copy(reply);
  dataCopy = data;
  idCopy = id;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v15 = *self->wrapped;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationCanHandleResult) -> ();
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v18[3] = &block_descriptor_145;
  v17 = _Block_copy(v18);

  [v15 canHandleWithInputData:isa rcId:idCopy reply:v17];

  outlined consume of Data._Representation(v11, v13);
  _Block_release(v17);
}

- (void)startTurnFromCacheWithExecutionRequestId:(id)id bridge:(id)bridge reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->wrapped;
  v13[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ();
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_111;
  v11 = _Block_copy(v13);
  idCopy = id;
  swift_unknownObjectRetain();

  [v10 startTurnFromCacheWithExecutionRequestId:idCopy bridge:bridge reply:v11];
  swift_unknownObjectRelease();

  _Block_release(v11);
}

- (void)commitWithBridge:(id)bridge reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->wrapped;
  v10[4] = _s14SiriKitRuntime39ConversationFlexibleExecutionSupportXPCCIeyBhy_ACIeghg_TRTA_0;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v10[3] = &block_descriptor_80;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();

  [v8 commitWithBridge:bridge reply:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)acceptInitialInputWithInputIdentifier:(id)identifier speechData:(id)data reply:(id)reply
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *self->wrapped;
  dataCopy = data;

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = _s14SiriKitRuntime39ConversationFlexibleExecutionSupportXPCCIeyBhy_ACIeghg_TRTA_0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_98_0;
  v18 = _Block_copy(aBlock);

  [v15 acceptInitialInputWithInputIdentifier:isa speechData:dataCopy reply:v18];
  _Block_release(v18);

  (*(v9 + 8))(v12, v8);
}

- (void)prepareWithBridge:(id)bridge reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->wrapped;
  v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v10[3] = &block_descriptor_92;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();

  [v8 prepareWithBridge:bridge reply:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)ensureReadyWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->wrapped;
  v8[4] = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()partial apply;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v8[3] = &block_descriptor_125;
  v7 = _Block_copy(v8);

  [v6 ensureReadyWithReply_];

  _Block_release(v7);
}

- (void)cancelWithCancellationReason:(int64_t)reason reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->wrapped;
  v10[4] = thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v10[3] = &block_descriptor_139;
  v9 = _Block_copy(v10);

  [v8 cancelWithCancellationReason:reason reply:v9];

  _Block_release(v9);
}

- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->wrapped;
  v13[4] = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()partial apply;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v13[3] = &block_descriptor_118;
  v11 = _Block_copy(v13);
  dataCopy = data;
  swift_unknownObjectRetain();

  [v10 startTurnWithTurnData:dataCopy bridge:bridge reply:v11];

  swift_unknownObjectRelease();

  _Block_release(v11);
}

- (void)acceptWithInputData:(id)data speechData:(id)speechData reply:(id)reply
{
  v8 = _Block_copy(reply);
  dataCopy = data;
  speechDataCopy = speechData;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v15 = *self->wrapped;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18[4] = _s14SiriKitRuntime39ConversationFlexibleExecutionSupportXPCCIeyBhy_ACIeghg_TRTA_0;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v18[3] = &block_descriptor_105_0;
  v17 = _Block_copy(v18);

  [v15 acceptWithInputData:isa speechData:speechDataCopy reply:v17];

  outlined consume of Data._Representation(v11, v13);
  _Block_release(v17);
}

- (void)paraphraseWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->wrapped;
  v8[4] = _s14SiriKitRuntime39ConversationFlexibleExecutionSupportXPCCIeyBhy_ACIeghg_TRTA_0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v8[3] = &block_descriptor_86;
  v7 = _Block_copy(v8);

  [v6 paraphraseWithReply_];

  _Block_release(v7);
}

- (void)flexibleExecutionSupportOptionsWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->wrapped;
  v8[4] = _s14SiriKitRuntime39ConversationFlexibleExecutionSupportXPCCIeyBhy_ACIeghg_TRTA_0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v8[3] = &block_descriptor_55;
  v7 = _Block_copy(v8);

  [v6 flexibleExecutionSupportOptionsWithReply_];

  _Block_release(v7);
}

@end