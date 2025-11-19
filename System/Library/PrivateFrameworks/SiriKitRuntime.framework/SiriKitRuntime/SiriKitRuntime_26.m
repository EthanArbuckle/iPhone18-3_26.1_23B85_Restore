uint64_t closure #1 in EncoreConversation.commit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a1;
  v6[26] = a4;
  v7 = type metadata accessor for EncoreConversation.State(0);
  v6[29] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v9 = type metadata accessor for ConversationCommitResult();
  v6[31] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v11 = *(type metadata accessor for RequestContinuation(0) - 8);
  v6[34] = v11;
  v6[35] = *(v11 + 64);
  v6[36] = swift_task_alloc();
  v12 = type metadata accessor for ExecutionContext();
  v6[37] = v12;
  v13 = *(v12 - 8);
  v6[38] = v13;
  v14 = *(v13 + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v15 = type metadata accessor for ConversationContext();
  v6[41] = v15;
  v16 = *(v15 - 8);
  v6[42] = v16;
  v6[43] = *(v16 + 64);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static ConversationActor.shared;
  v6[46] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v17, 0);
}

uint64_t closure #1 in EncoreConversation.commit()()
{
  v1 = v0[45];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[26];
  v7 = v0[27];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static AceService.currentAsync.getter();
  outlined init with copy of ReferenceResolutionClientProtocol((v0 + 2), (v0 + 12));
  outlined init with copy of ReferenceResolutionClientProtocol((v0 + 7), (v0 + 17));
  ExecutionContext.init(outputPublisher:aceServiceInvoker:)();
  (*(v5 + 16))(v3, v2, v4);
  ConversationContext.init(executionContext:)();
  (*(v5 + 8))(v2, v4);
  outlined destroy of SiriRequestContext(v0 + 2);
  v8 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_taskObserver;
  v0[47] = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_taskObserver;
  v9 = (v6 + v8);
  v0[48] = *v9;
  v10 = v9[1];
  ObjectType = swift_getObjectType();
  v12 = *(v6 + 56);
  v13 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks;
  v0[49] = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks;
  v14 = *(v6 + v13);
  v0[50] = v14;
  v15 = *v7;
  v16 = v7[1];
  v17 = *(v10 + 8);
  swift_unknownObjectRetain();

  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[51] = v19;
  *v19 = v0;
  v19[1] = closure #1 in EncoreConversation.commit();

  return v21(v12, v14, v15, v16, ObjectType, v10);
}

{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 384);
  v4 = *(*v0 + 368);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v4, 0);
}

{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[34];
  v9 = v0[26];
  outlined init with copy of EncoreEngineEvent(v0[28], v6, type metadata accessor for RequestContinuation);
  (*(v3 + 16))(v1, v2, v5);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = (v7 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[52] = v12;
  *(v12 + 16) = v9;
  outlined init with take of RequestContinuation(v6, v12 + v10, type metadata accessor for RequestContinuation);
  (*(v3 + 32))(v12 + v11, v1, v5);

  v13 = swift_task_alloc();
  v0[53] = v13;
  *v13 = v0;
  v13[1] = closure #1 in EncoreConversation.commit();
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];

  return EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)(v16, v14, &async function pointer to partial apply for closure #1 in closure #1 in EncoreConversation.commit(), v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 432) = v0;

  v6 = *(v2 + 368);
  if (v0)
  {
    v7 = closure #1 in EncoreConversation.commit();
  }

  else
  {
    v7 = closure #1 in EncoreConversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[31];
  outlined init with copy of EncoreEngineEvent(v0[25], v0[33], type metadata accessor for ConversationCommitResult);
  if (swift_getEnumCaseMultiPayload())
  {
    v2 = v0[33];
    (*(v0[42] + 8))(v0[45], v0[41]);
    outlined destroy of EncoreConversation.State(v2, type metadata accessor for ConversationCommitResult);
    v4 = v0[44];
    v3 = v0[45];
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[36];
    v8 = v0[33];
    v17 = v0[32];
    v9 = v0[29];
    v10 = v0[30];
    v11 = v0[26];
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    swift_storeEnumTagMultiPayload();
    v12 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v10, v11 + v12);
    swift_endAccess();

    v13 = v0[1];

    return v13();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[33], type metadata accessor for ConversationCommitResult);
    v15 = swift_task_alloc();
    v0[55] = v15;
    *v15 = v0;
    v15[1] = closure #1 in EncoreConversation.commit();
    v16 = v0[26];

    return EncoreConversation.isEmpty()();
  }
}

{
  v1 = *(v0 + 392);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if (*(v0 + 464) == 1)
  {
    outlined destroy of EncoreConversation.State(*(v0 + 200), type metadata accessor for ConversationCommitResult);
    v4 = *(v3 + v1);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = *(v3 + v1);

    outlined destroy of EncoreConversation.State(v2, type metadata accessor for ConversationCommitResult);
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 200);
  v10 = (*(v0 + 208) + *(v0 + 376));
  *v8 = v6;
  v8[1] = v5;
  swift_storeEnumTagMultiPayload();
  outlined init with take of RequestContinuation(v8, v9, type metadata accessor for ConversationCommitResult);
  *(v0 + 448) = *v10;
  v11 = v10[1];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  swift_unknownObjectRetain();
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 456) = v15;
  *v15 = v0;
  v15[1] = closure #1 in EncoreConversation.commit();

  return v17(ObjectType, v11);
}

{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 368);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v3, 0);
}

{
  (*(v0[42] + 8))(v0[45], v0[41]);
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[36];
  v6 = v0[33];
  v13 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[26];
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined assign with take of EncoreConversation.State(v8, v9 + v10);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[44];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  (*(v0[42] + 8))(v0[45], v0[41]);

  v8 = v0[1];
  v9 = v0[54];

  return v8();
}

uint64_t closure #1 in EncoreConversation.commit()(char a1)
{
  v2 = *(*v1 + 440);
  v3 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v3, 0);
}

uint64_t closure #1 in closure #1 in EncoreConversation.commit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreConversation.commit(), v5, 0);
}

uint64_t closure #1 in closure #1 in EncoreConversation.commit()()
{
  *(v0 + 48) = *(*(v0 + 24) + 24);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreConversation.commit(), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = type metadata accessor for ConversationCommitResult();
  *v5 = v0;
  v5[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000027, 0x80000001DCA82780, closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)partial apply, v2, v6);
}

uint64_t EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncCommitEvent(continuation:context:), 0, 0);
}

uint64_t EncoreEngine.asyncCommitEvent(continuation:context:)()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for ConversationCommitResult();
  *v5 = v0;
  v5[1] = static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000027, 0x80000001DCA82780, partial apply for closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:), v2, v6);
}

uint64_t EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for ConversationCommitResult();
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;
  v5[13] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:), v12, 0);
}

uint64_t EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[3];
  v0[14] = *v3;
  v0[15] = v3[1];
  v4 = v3 + *(type metadata accessor for SiriRequest(0) + 20);
  Input.identifier.getter();
  v0[16] = *(v2 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:), v5, 0);
}

{
  v1 = v0[13];
  v0[17] = (*(**(v0[16] + 24) + 160))();

  return MEMORY[0x1EEE6DFA0](EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:), v1, 0);
}

{
  v18 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[6];
  v8 = v0[4];
  v0[18] = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v9 = *(v4 + 16);
  v0[19] = v9;
  v0[20] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v3, v6);
  v10 = *(v4 + 56);
  v0[21] = v10;
  v0[22] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v5, 0, 1, v6);
  v11 = *(v7 + 32);
  v12 = *(v7 + 40);
  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextStarted(rcId:hypothesisId:fromPlugin:stackDepth:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = (v8 + *v8);
  v13 = v8[1];
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:);
  v15 = v0[5];
  v16 = v0[2];

  return v19(v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:);
  }

  else
  {
    v6 = EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v22 = v0[21];
  v23 = v0[22];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  outlined init with copy of EncoreEngineEvent(v0[2], v0[8], type metadata accessor for ConversationCommitResult);
  LODWORD(v8) = swift_getEnumCaseMultiPayload();
  static ConversationSELFHelper.shared.getter();
  v1(v7, v4, v6);
  v22(v7, 0, 1, v6);
  v9 = (v5 + 8);
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  if (v8 == 1)
  {
    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*v9)(v12, v13);
    v16 = type metadata accessor for FlowUnhandledReason();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  else
  {
    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*v9)(v12, v13);
    outlined destroy of EncoreConversation.State(v15, type metadata accessor for ConversationCommitResult);
  }

  v17 = v0[12];
  v18 = v0[8];
  v19 = v0[9];

  v20 = v0[1];

  return v20();
}

{
  v14 = v0[22];
  v15 = v0[24];
  v13 = v0[21];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v16 = v0[8];
  static ConversationSELFHelper.shared.getter();
  v1(v9, v6, v8);
  v13(v9, 0, 1, v8);
  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_willThrow();
  (*(v7 + 8))(v6, v8);

  v10 = v0[1];
  v11 = v0[24];

  return v10();
}

uint64_t EncoreConversation.stackCount.getter()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.stackCount.getter, v2, 0);
}

{
  *(v0 + 24) = *(*(v0 + 16) + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.stackCount.getter, v1, 0);
}

{
  v1 = (*(**(*(v0 + 24) + 24) + 160))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t EncoreConversation.isCorrectable()()
{
  *(v1 + 56) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isCorrectable(), v2, 0);
}

{
  outlined init with copy of ReferenceResolutionClientProtocol(v0[7] + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t closure #1 in EncoreConversation.attemptCorrection(on:)(void *a1, uint64_t a2)
{
  v3 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = a2 + *(type metadata accessor for SiriRequest(0) + 20);
  return dispatch thunk of InputAccepting.accept(input:)();
}

uint64_t EncoreConversation.paraphrase()(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.paraphrase(), v2, 0);
}

uint64_t EncoreConversation.paraphrase()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Paraphrase", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "[EncoreConversation] Paraphrasing not implemented yet, will return an empty paraphrase.", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v8 = *(v0 + 16);

  static ActionParaphrase.noParaphrase()();
  type metadata accessor for ConversationParaphraseResult(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t EncoreConversation.flexibleExecutionSupport()(uint64_t a1)
{
  *(v1 + 24) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.flexibleExecutionSupport(), v2, 0);
}

uint64_t EncoreConversation.flexibleExecutionSupport()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] flexibleExecutionSupport unimplemented", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[3];

  type metadata accessor for FlexibleExecutionSupportOptions();
  v0[2] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, MEMORY[0x1E69D00C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = v0[1];

  return v6();
}

uint64_t protocol witness for Conversational.cancel() in conformance EncoreConversation()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.cancel()();
}

uint64_t protocol witness for Conversational.ensureReady(timeout:) in conformance EncoreConversation(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.ensureReady(timeout:)(a1);
}

uint64_t protocol witness for Conversational.accept(request:) in conformance EncoreConversation(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.accept(request:)(a1, a2);
}

uint64_t protocol witness for Conversational.paraphrase() in conformance EncoreConversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.paraphrase()(a1);
}

uint64_t protocol witness for Conversational.prepare() in conformance EncoreConversation()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.prepare()();
}

uint64_t protocol witness for Conversational.commit() in conformance EncoreConversation(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.commit()(a1);
}

uint64_t protocol witness for Conversational.isEmpty() in conformance EncoreConversation()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return EncoreConversation.isEmpty()();
}

uint64_t protocol witness for Conversational.isCorrectable() in conformance EncoreConversation()
{
  *(v1 + 56) = *v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isCorrectable(), v2, 0);
}

uint64_t protocol witness for Conversational.flexibleExecutionSupport() in conformance EncoreConversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.flexibleExecutionSupport()(a1);
}

uint64_t closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  outlined init with copy of ReferenceResolutionClientProtocol(a2, v20);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  outlined init with take of ReferenceResolutionClientProtocol(v20, v17 + 32);
  (*(v7 + 32))(v17 + v16, v10, v6);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), v17);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v6[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v6[11] = v12;
  v13 = *(v12 - 8);
  v6[12] = v13;
  v6[13] = *(v13 + 64);
  v6[14] = swift_task_alloc();
  v14 = type metadata accessor for EncoreEngineEvent(0);
  v6[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[3];
  outlined init with copy of ReferenceResolutionClientProtocol(v0[2], v1);
  (*(v5 + 16))(v2, v6, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, v2, v4);
  *(v1 + 40) = partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:);
  *(v1 + 48) = v8;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), v9, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0[4] + 16);
  outlined init with copy of EncoreEngineEvent(v0[16], v1, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  v8 = *(*v7 + 96);
  outlined init with copy of EncoreEngineEvent(v1, v2, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v6 + 8))(v4, v5);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for EncoreEngine.EngineEvent);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), 0, 0);
}

{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  outlined destroy of EncoreConversation.State(v0[16], type metadata accessor for EncoreEngineEvent);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1)
{
  v2 = type metadata accessor for RequestContinuation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v14 - v11);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v14 - v11, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14[1] = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with take of RequestContinuation(v12, v8, type metadata accessor for RequestContinuation);
    outlined init with copy of EncoreEngineEvent(v8, v5, type metadata accessor for RequestContinuation);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return outlined destroy of EncoreConversation.State(v8, type metadata accessor for RequestContinuation);
  }
}

uint64_t closure #1 in EncoreEngine.asyncEnsureReadyEvent()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent(), v15);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v5[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5[10] = v11;
  v12 = *(v11 - 8);
  v5[11] = v12;
  v5[12] = *(v12 + 64);
  v5[13] = swift_task_alloc();
  v13 = type metadata accessor for EncoreEngineEvent(0);
  v5[14] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent(), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  (*(v5 + 16))(v3, v0[3], v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_allocObject();
  (*(v5 + 32))(v7 + v6, v3, v4);
  *v2 = partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  v2[1] = v7;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent(), v8, 0);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v0[2] + 16);
  outlined init with copy of EncoreEngineEvent(v1, v4, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  v10 = *(*v9 + 96);
  outlined init with copy of EncoreEngineEvent(v4, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v8 + 8))(v5, v7);
  outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for EncoreEngineEvent);

  v11 = v0[1];

  return v11();
}

uint64_t Parse.DirectInvocation.toSnippetEvent.getter()
{
  v0 = Parse.DirectInvocation.identifier.getter();
  v2 = v1;
  type metadata accessor for SnippetService();
  if (v0 == static SnippetService.DirectInvocationIdentifier.getter() && v2 == v3)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  result = Parse.DirectInvocation.userData.getter();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = static SnippetService.EventDataKey.getter();
  if (!*(v6 + 16))
  {

    goto LABEL_11;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v9, v19);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "[EncoreConversation] DirectInvocation failed to find Snippet Event Key", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
  type metadata accessor for EncoreEvent();
  v16 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  outlined consume of Data._Representation(v17, v18);
  result = v16;
  if (!v16)
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v30 = a4;
  v31 = a2;
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v29 = &v27 - v8;
  v10 = type metadata accessor for ConversationContext();
  v28 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v13, v30, v10);
  v19 = a1;
  v20 = v5;
  (*(v6 + 16))(v9, v19, v5);
  v21 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v22 = (v12 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v32;
  *(v23 + 4) = v31;
  *(v23 + 5) = v24;
  (*(v11 + 32))(&v23[v21], v13, v28);
  (*(v6 + 32))(&v23[v22], v29, v20);

  v25 = v24;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), v23);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[9] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v7[12] = v13;
  v14 = *(v13 - 8);
  v7[13] = v14;
  v7[14] = *(v14 + 64);
  v7[15] = swift_task_alloc();
  v15 = type metadata accessor for EncoreEngineEvent(0);
  v7[16] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)()
{
  v1 = v0[17];
  v2 = v0[15];
  v18 = v0[14];
  v19 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
  v9 = *(v8 + 48);
  v10 = &v1[*(v8 + 64)];
  *v1 = v7;
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 16))(&v1[v9], v6, v11);
  (*(v4 + 16))(v2, v5, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v2, v3);
  *v10 = partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:);
  *(v10 + 1) = v13;
  swift_storeEnumTagMultiPayload();
  v14 = one-time initialization token for shared;
  v15 = v7;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), v16, 0);
}

uint64_t closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v26 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v28 = &v25 - v7;
  v30 = type metadata accessor for ConversationContext();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SiriRequest(0);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of EncoreEngineEvent(v31, v13, type metadata accessor for SiriRequest);
  v19 = v30;
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v30);
  (*(v5 + 16))(v8, v33, v4);
  v20 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v21 = (v12 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = (v10 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v34;
  outlined init with take of RequestContinuation(v13, &v23[v20], type metadata accessor for SiriRequest);
  (*(v9 + 32))(&v23[v21], v27, v19);
  (*(v5 + 32))(&v23[v22], v28, v26);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:), v23);
}

uint64_t closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[9] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v7[12] = v13;
  v14 = *(v13 - 8);
  v7[13] = v14;
  v7[14] = *(v14 + 64);
  v7[15] = swift_task_alloc();
  v15 = type metadata accessor for EncoreEngineEvent(0);
  v7[16] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

uint64_t closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)()
{
  v1 = v0[17];
  v2 = v0[15];
  v16 = v0[14];
  v17 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
  v9 = *(v8 + 48);
  v10 = (v1 + *(v8 + 64));
  outlined init with copy of EncoreEngineEvent(v7, v1, type metadata accessor for SiriRequest);
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 16))(v1 + v9, v6, v11);
  (*(v4 + 16))(v2, v5, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v2, v3);
  *v10 = partial apply for closure #1 in closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:);
  v10[1] = v13;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:), v14, 0);
}

{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0[2] + 16);
  outlined init with copy of EncoreEngineEvent(v1, v4, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  v10 = *(*v9 + 96);
  outlined init with copy of EncoreEngineEvent(v4, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v8 + 8))(v5, v7);
  outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for EncoreEngineEvent);

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1)
{
  v2 = type metadata accessor for RequestContinuation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of EncoreEngineEvent(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RequestContinuation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v26 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v28 = &v25 - v7;
  v30 = type metadata accessor for ConversationContext();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestContinuation(0);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of EncoreEngineEvent(v31, v13, type metadata accessor for RequestContinuation);
  v19 = v30;
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v30);
  (*(v5 + 16))(v8, v33, v4);
  v20 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v21 = (v12 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = (v10 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v34;
  outlined init with take of RequestContinuation(v13, &v23[v20], type metadata accessor for RequestContinuation);
  (*(v9 + 32))(&v23[v21], v27, v19);
  (*(v5 + 32))(&v23[v22], v28, v26);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:), v23);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[9] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v7[12] = v13;
  v14 = *(v13 - 8);
  v7[13] = v14;
  v7[14] = *(v14 + 64);
  v7[15] = swift_task_alloc();
  v15 = type metadata accessor for EncoreEngineEvent(0);
  v7[16] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)()
{
  v1 = v0[17];
  v2 = v0[15];
  v16 = v0[14];
  v17 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
  v9 = *(v8 + 48);
  v10 = (v1 + *(v8 + 64));
  outlined init with copy of EncoreEngineEvent(v7, v1, type metadata accessor for RequestContinuation);
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 16))(v1 + v9, v6, v11);
  (*(v4 + 16))(v2, v5, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v2, v3);
  *v10 = partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:);
  v10[1] = v13;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), v14, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1)
{
  v2 = type metadata accessor for ConversationCommitResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v14 - v11);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v14 - v11, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14[1] = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with take of RequestContinuation(v12, v8, type metadata accessor for ConversationCommitResult);
    outlined init with copy of EncoreEngineEvent(v8, v5, type metadata accessor for ConversationCommitResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return outlined destroy of EncoreConversation.State(v8, type metadata accessor for ConversationCommitResult);
  }
}

char *specialized EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v80 = a3;
  v81 = a7;
  v83 = a5;
  v84 = a6;
  v79 = a2;
  v82 = a1;
  v16 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v77 - v19;
  v21 = type metadata accessor for DispatchTimeInterval();
  v86 = *(v21 - 8);
  v87 = v21;
  v22 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest;
  v25 = type metadata accessor for SiriRequest(0);
  (*(*(v25 - 8) + 56))(&v13[v24], 1, 1, v25);
  *&v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks] = MEMORY[0x1E69E7CC0];
  *&v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreEventsHandled] = 0;
  v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered] = 0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v78 = a12;
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.executor);
  v27 = a4;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v77 = a8;
    v31 = v30;
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v27;
    v33 = v27;
    _os_log_impl(&dword_1DC659000, v28, v29, "[EncoreConversation] init %@", v31, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v32, -1, -1);
    v34 = v31;
    v16 = a10;
    a8 = v77;
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  v35 = v80;
  *(v13 + 4) = v79;
  *(v13 + 5) = v35;
  v36 = v84;
  *(v13 + 6) = v83;
  *(v13 + 7) = v27;
  v37 = &v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_taskObserver];
  v38 = v81;
  *v37 = v36;
  *(v37 + 1) = v38;
  v39 = &v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state];
  v40 = v78;
  v39[3] = a11;
  v39[4] = v40;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  (*(*(a11 - 8) + 16))(boxed_opaque_existential_0, v82, a11);
  type metadata accessor for EncoreConversation.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ReferenceResolutionClientProtocol(v16, &v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine]);
  if (a9)
  {
    v42 = v27;

    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    v43 = v27;

    swift_unknownObjectRetain();
    static SiriEnvironment.default.getter();
  }

  v44 = type metadata accessor for SiriEnvironment();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();

  *(v13 + 8) = SiriEnvironment.init(parent:)();
  v47 = type metadata accessor for SiriCorrectionsClientProvider();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  v50 = *(v13 + 8);

  SiriEnvironment.correctionsClientProvider.getter();

  v51 = v16[3];
  v52 = v16[4];
  v53 = __swift_project_boxed_opaque_existential_1(v16, v51);
  v88[3] = v51;
  v88[4] = *(v52 + 8);
  v54 = __swift_allocate_boxed_opaque_existential_0(v88);
  (*(*(v51 - 8) + 16))(v54, v53, v51);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  v55 = *(v13 + 8);
  type metadata accessor for UserIdentityProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v56 = *(v13 + 8);
  type metadata accessor for FlowTaskProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v57 = *(v13 + 8);
  type metadata accessor for CallStateEnvironmentProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v58 = *(v13 + 8);
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v59 = *(v13 + 8);
  type metadata accessor for MetricsEnvironmentProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type MetricsEnvironmentProvider and conformance MetricsEnvironmentProvider, MEMORY[0x1E69D0078]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v60 = *(v13 + 8);
  type metadata accessor for AceServiceContextProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  *(v13 + 9) = a8;
  v61 = one-time initialization token for defaultTimeout;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = v87;
  v63 = __swift_project_value_buffer(v87, static JetsamHelper.defaultTimeout);
  v65 = v85;
  v64 = v86;
  (*(v86 + 16))(v85, v63, v62);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v66 = static OS_dispatch_queue.main.getter();
  v67 = type metadata accessor for JetsamHelper();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  v71 = (v70 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v71 = 0;
  v71[1] = 0;
  v70[2] = 0xD00000000000002ALL;
  v70[3] = 0x80000001DCA82860;
  v70[4] = dispatch_semaphore_create(1);
  v70[5] = v66;
  (*(v64 + 32))(v70 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v65, v62);
  *(v13 + 2) = v70;
  v72 = *(v13 + 8);
  type metadata accessor for EncoreEngine();
  swift_allocObject();

  *(v13 + 3) = EncoreEngine.init(rootEnvironment:snippetManager:)(v73, a8);
  v74 = type metadata accessor for TaskPriority();
  (*(*(v74 - 8) + 56))(v20, 1, 1, v74);
  v75 = swift_allocObject();
  v75[2] = 0;
  v75[3] = 0;
  v75[4] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:), v75);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

char *specialized EncoreConversation.__allocating_init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v20 = *(v12 + 48);
  v21 = *(v12 + 52);
  swift_allocObject();
  return specialized EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t partial apply for closure #1 in EncoreConversation.deinit()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.deinit();
}

uint64_t outlined init with copy of EncoreEngineEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of EncoreConversation.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in EncoreConversation.handleEncoreEvent(event:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.handleEncoreEvent(event:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in EncoreConversation.ensureReady(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in Conversation.ensureReady(timeout:)(a1, v1);
}

uint64_t partial apply for closure #1 in EncoreConversation.ensureReady(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.ensureReady(timeout:)(a1, v1);
}

uint64_t outlined assign with take of SiriRequest?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *outlined destroy of SiriRequestContext(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
  return a1;
}

uint64_t outlined assign with take of EncoreConversation.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncoreConversation.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in EncoreConversation.commit()(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RequestContinuation(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.commit()(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t *assignWithCopy for SiriRequestContext(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for SiriRequestContext(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void type metadata completion function for EncoreConversation()
{
  type metadata accessor for SiriRequest?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for EncoreConversation.State(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for SiriRequest?()
{
  if (!lazy cache variable for type metadata for SiriRequest?)
  {
    type metadata accessor for SiriRequest(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SiriRequest?);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for EncoreConversation.State(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v17 = a2[3];
        if (v17)
        {
          v18 = a2[4];
          *(a1 + 24) = v17;
          *(a1 + 32) = v18;
          (**(v17 - 8))(a1, a2);
        }

        else
        {
          v74 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v74;
          *(a1 + 32) = a2[4];
        }

        goto LABEL_57;
      }

      v28 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v28;
      v29 = type metadata accessor for SiriRequest(0);
      v30 = v29[5];
      v31 = type metadata accessor for Input();
      v32 = *(*(v31 - 8) + 16);

      v107 = v32;
      v109 = v31;
      v32((a1 + v30), a2 + v30, v31);
      *(a1 + v29[6]) = *(a2 + v29[6]);
      *(a1 + v29[7]) = *(a2 + v29[7]);
      v33 = v29[8];
      v34 = a1 + v33;
      v35 = (a2 + v33);
      v36 = *(a2 + v33 + 8);

      if (v36 >> 60 == 15)
      {
        *v34 = *v35;
      }

      else
      {
        v53 = *v35;
        outlined copy of Data._Representation(*v35, v36);
        *v34 = v53;
        *(v34 + 8) = v36;
      }

      *(a1 + v29[9]) = *(a2 + v29[9]);
      *(a1 + v29[10]) = *(a2 + v29[10]);
      *(a1 + v29[11]) = *(a2 + v29[11]);
      v54 = v29[12];
      __dstb = (a1 + v54);
      v55 = a2 + v54;
      v56 = type metadata accessor for SiriRequestIdentities(0);
      v104 = *(v56 - 8);
      v57 = *(v104 + 48);

      v58 = v55;
      if (v57(v55, 1, v56))
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dstb, v55, *(*(v59 - 8) + 64));
      }

      else
      {
        v75 = type metadata accessor for IdentifiedUser();
        v76 = *(v75 - 8);
        v77 = v58;
        v78 = v58;
        v79 = *(v76 + 48);
        v103 = v76;
        if (v79(v78, 1, v75))
        {
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dstb, v77, *(*(v80 - 8) + 64));
        }

        else
        {
          (*(v76 + 16))(__dstb, v77, v75);
          (*(v76 + 56))(__dstb, 0, 1, v75);
        }

        v97 = *(v56 + 20);
        if (v79(&v77[v97], 1, v75))
        {
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dstb[v97], &v77[v97], *(*(v98 - 8) + 64));
        }

        else
        {
          (*(v103 + 16))(&__dstb[v97], &v77[v97], v75);
          (*(v103 + 56))(&__dstb[v97], 0, 1, v75);
        }

        *&__dstb[*(v56 + 24)] = *&v77[*(v56 + 24)];
        v99 = *(v104 + 56);

        v99(__dstb, 0, 1, v56);
      }

      v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v94 = (a1 + v100);
      v95 = a2 + v100;
      v96 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_55:
        memcpy(v94, v95, *(*(v96 - 8) + 64));
        goto LABEL_56;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v19;
        v20 = type metadata accessor for SiriRequest(0);
        v21 = v20[5];
        v22 = type metadata accessor for Input();
        v23 = *(*(v22 - 8) + 16);

        v108 = v23;
        v110 = v22;
        v23((a1 + v21), a2 + v21, v22);
        *(a1 + v20[6]) = *(a2 + v20[6]);
        *(a1 + v20[7]) = *(a2 + v20[7]);
        v24 = v20[8];
        v25 = a1 + v24;
        v26 = (a2 + v24);
        v27 = *(a2 + v24 + 8);

        if (v27 >> 60 == 15)
        {
          *v25 = *v26;
        }

        else
        {
          v37 = *v26;
          outlined copy of Data._Representation(*v26, v27);
          *v25 = v37;
          *(v25 + 8) = v27;
        }

        *(a1 + v20[9]) = *(a2 + v20[9]);
        *(a1 + v20[10]) = *(a2 + v20[10]);
        *(a1 + v20[11]) = *(a2 + v20[11]);
        v38 = v20[12];
        __dst = (a1 + v38);
        v39 = a2 + v38;
        v40 = type metadata accessor for SiriRequestIdentities(0);
        v41 = *(v40 - 8);
        v42 = *(v41 + 48);

        v43 = v39;
        if (v42(v39, 1, v40))
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v39, *(*(v44 - 8) + 64));
        }

        else
        {
          v105 = v41;
          v60 = type metadata accessor for IdentifiedUser();
          v61 = *(v60 - 8);
          v62 = v43;
          v63 = v43;
          v64 = *(v61 + 48);
          if (v64(v63, 1, v60))
          {
            v65 = v61;
            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v62, *(*(v66 - 8) + 64));
          }

          else
          {
            (*(v61 + 16))(__dst, v62, v60);
            v65 = v61;
            (*(v61 + 56))(__dst, 0, 1, v60);
          }

          v81 = *(v40 + 20);
          if (v64(&v62[v81], 1, v60))
          {
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v81], &v62[v81], *(*(v82 - 8) + 64));
          }

          else
          {
            (*(v65 + 16))(&__dst[v81], &v62[v81], v60);
            (*(v65 + 56))(&__dst[v81], 0, 1, v60);
          }

          *&__dst[*(v40 + 24)] = *&v62[*(v40 + 24)];
          v83 = *(v105 + 56);

          v83(__dst, 0, 1, v40);
        }

        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
        v85 = *(v84 + 48);
        v86 = (a1 + v85);
        v87 = a2 + v85;
        v88 = type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v108(v86, v87, v110);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v86, v87, *(*(v88 - 8) + 64));
        }

        v89 = type metadata accessor for RequestContinuation(0);
        *&v86[*(v89 + 20)] = *&v87[*(v89 + 20)];
        *(a1 + *(v84 + 64)) = *(a2 + *(v84 + 64));

        goto LABEL_57;
      }

      if (EnumCaseMultiPayload != 3)
      {
        *a1 = *a2;

LABEL_57:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v7;
      v8 = type metadata accessor for SiriRequest(0);
      v9 = v8[5];
      v10 = type metadata accessor for Input();
      v11 = *(*(v10 - 8) + 16);

      v107 = v11;
      v109 = v10;
      v11((a1 + v9), a2 + v9, v10);
      *(a1 + v8[6]) = *(a2 + v8[6]);
      *(a1 + v8[7]) = *(a2 + v8[7]);
      v12 = v8[8];
      v13 = a1 + v12;
      v14 = (a2 + v12);
      v15 = *(a2 + v12 + 8);

      if (v15 >> 60 == 15)
      {
        *v13 = *v14;
      }

      else
      {
        v45 = *v14;
        outlined copy of Data._Representation(*v14, v15);
        *v13 = v45;
        *(v13 + 8) = v15;
      }

      *(a1 + v8[9]) = *(a2 + v8[9]);
      *(a1 + v8[10]) = *(a2 + v8[10]);
      *(a1 + v8[11]) = *(a2 + v8[11]);
      v46 = v8[12];
      __dsta = (a1 + v46);
      v47 = a2 + v46;
      v48 = type metadata accessor for SiriRequestIdentities(0);
      v49 = *(v48 - 8);
      v50 = *(v49 + 48);

      v51 = v47;
      if (v50(v47, 1, v48))
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dsta, v47, *(*(v52 - 8) + 64));
      }

      else
      {
        v106 = v49;
        v67 = type metadata accessor for IdentifiedUser();
        v68 = *(v67 - 8);
        v69 = v51;
        v70 = v51;
        v71 = *(v68 + 48);
        if (v71(v70, 1, v67))
        {
          v72 = v68;
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dsta, v69, *(*(v73 - 8) + 64));
        }

        else
        {
          (*(v68 + 16))(__dsta, v69, v67);
          v72 = v68;
          (*(v68 + 56))(__dsta, 0, 1, v67);
        }

        v90 = *(v48 + 20);
        if (v71(&v69[v90], 1, v67))
        {
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dsta[v90], &v69[v90], *(*(v91 - 8) + 64));
        }

        else
        {
          (*(v72 + 16))(&__dsta[v90], &v69[v90], v67);
          (*(v72 + 56))(&__dsta[v90], 0, 1, v67);
        }

        *&__dsta[*(v48 + 24)] = *&v69[*(v48 + 24)];
        v92 = *(v106 + 56);

        v92(__dsta, 0, 1, v48);
      }

      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v94 = (a1 + v93);
      v95 = a2 + v93;
      v96 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_55;
      }
    }

    v107(v94, v95, v109);
    swift_storeEnumTagMultiPayload();
LABEL_56:
    v101 = type metadata accessor for RequestContinuation(0);
    *&v94[*(v101 + 20)] = *&v95[*(v101 + 20)];

    goto LABEL_57;
  }

  v16 = *a2;
  *a1 = *a2;
  a1 = v16 + ((v5 + 16) & ~v5);

  return a1;
}

uint64_t destroy for EncoreConversation.State(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v24 = a1[1];

      v25 = type metadata accessor for SiriRequest(0);
      v26 = v25[5];
      v27 = type metadata accessor for Input();
      v28 = *(*(v27 - 8) + 8);
      v28(a1 + v26, v27);
      v29 = *(a1 + v25[6]);

      v30 = *(a1 + v25[7]);

      v31 = (a1 + v25[8]);
      v32 = v31[1];
      if (v32 >> 60 != 15)
      {
        outlined consume of Data._Representation(*v31, v32);
      }

      v33 = *(a1 + v25[9]);

      v34 = *(a1 + v25[10]);

      v35 = *(a1 + v25[11]);

      v36 = a1 + v25[12];
      v37 = type metadata accessor for SiriRequestIdentities(0);
      if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
      {
        v48 = v28;
        v38 = type metadata accessor for IdentifiedUser();
        v39 = *(v38 - 8);
        v40 = *(v39 + 48);
        if (!v40(v36, 1, v38))
        {
          (*(v39 + 8))(v36, v38);
        }

        v41 = *(v37 + 20);
        if (!v40(&v36[v41], 1, v38))
        {
          (*(v39 + 8))(&v36[v41], v38);
        }

        v42 = *&v36[*(v37 + 24)];

        v28 = v48;
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v44 = a1 + *(v43 + 48);
      type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28(v44, v27);
      }

      v45 = *&v44[*(type metadata accessor for RequestContinuation(0) + 20)];

      v23 = *(v43 + 64);
      goto LABEL_30;
    }

    if (result != 3)
    {
      if (result != 4)
      {
        return result;
      }

      v3 = *a1;
      goto LABEL_31;
    }

LABEL_8:
    v4 = a1[1];

    v5 = type metadata accessor for SiriRequest(0);
    v6 = v5[5];
    v7 = type metadata accessor for Input();
    v8 = *(*(v7 - 8) + 8);
    v8(a1 + v6, v7);
    v9 = *(a1 + v5[6]);

    v10 = *(a1 + v5[7]);

    v11 = (a1 + v5[8]);
    v12 = v11[1];
    if (v12 >> 60 != 15)
    {
      outlined consume of Data._Representation(*v11, v12);
    }

    v13 = *(a1 + v5[9]);

    v14 = *(a1 + v5[10]);

    v15 = *(a1 + v5[11]);

    v16 = a1 + v5[12];
    v17 = type metadata accessor for SiriRequestIdentities(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v47 = v8;
      v18 = type metadata accessor for IdentifiedUser();
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);
      if (!v20(v16, 1, v18))
      {
        (*(v19 + 8))(v16, v18);
      }

      v21 = *(v17 + 20);
      if (!v20(&v16[v21], 1, v18))
      {
        (*(v19 + 8))(&v16[v21], v18);
      }

      v22 = *&v16[*(v17 + 24)];

      v8 = v47;
    }

    a1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48));
    type metadata accessor for UserInputResult();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8(a1, v7);
    }

    v23 = *(type metadata accessor for RequestContinuation(0) + 20);
LABEL_30:
    v46 = *(a1 + v23);
LABEL_31:
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (a1[3])
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t initializeWithCopy for EncoreConversation.State(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v16;
      v17 = type metadata accessor for SiriRequest(0);
      v18 = v17[5];
      v19 = type metadata accessor for Input();
      v20 = *(*(v19 - 8) + 16);

      v101 = v20;
      v103 = v19;
      v20((a1 + v18), (a2 + v18), v19);
      *(a1 + v17[6]) = *(a2 + v17[6]);
      *(a1 + v17[7]) = *(a2 + v17[7]);
      v21 = v17[8];
      v22 = a1 + v21;
      v23 = (a2 + v21);
      v24 = *(a2 + v21 + 8);

      if (v24 >> 60 == 15)
      {
        *v22 = *v23;
      }

      else
      {
        v34 = *v23;
        outlined copy of Data._Representation(*v23, v24);
        *v22 = v34;
        *(v22 + 8) = v24;
      }

      *(a1 + v17[9]) = *(a2 + v17[9]);
      *(a1 + v17[10]) = *(a2 + v17[10]);
      *(a1 + v17[11]) = *(a2 + v17[11]);
      v35 = v17[12];
      __dst = (a1 + v35);
      v36 = (a2 + v35);
      v37 = type metadata accessor for SiriRequestIdentities(0);
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);

      v40 = v36;
      if (v39(v36, 1, v37))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v36, *(*(v41 - 8) + 64));
      }

      else
      {
        v97 = v38;
        v58 = v37;
        v59 = type metadata accessor for IdentifiedUser();
        v60 = *(v59 - 8);
        v61 = v40;
        v62 = *(v60 + 48);
        if (v62(v40, 1, v59))
        {
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v40, *(*(v63 - 8) + 64));
        }

        else
        {
          (*(v60 + 16))(__dst, v40, v59);
          (*(v60 + 56))(__dst, 0, 1, v59);
        }

        v75 = *(v58 + 20);
        if (v62(&v61[v75], 1, v59))
        {
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v75], &v61[v75], *(*(v76 - 8) + 64));
        }

        else
        {
          (*(v60 + 16))(&__dst[v75], &v61[v75], v59);
          (*(v60 + 56))(&__dst[v75], 0, 1, v59);
        }

        *&__dst[*(v58 + 24)] = *&v61[*(v58 + 24)];
        v77 = *(v97 + 56);

        v77(__dst, 0, 1, v58);
      }

      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v79 = *(v78 + 48);
      v80 = (a1 + v79);
      v81 = (a2 + v79);
      v82 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v101(v80, v81, v103);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v80, v81, *(*(v82 - 8) + 64));
      }

      v83 = type metadata accessor for RequestContinuation(0);
      *&v80[*(v83 + 20)] = *&v81[*(v83 + 20)];
      *(a1 + *(v78 + 64)) = *(a2 + *(v78 + 64));

      goto LABEL_54;
    }

    if (EnumCaseMultiPayload != 3)
    {
      *a1 = *a2;
LABEL_54:

      goto LABEL_55;
    }

    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    v6 = type metadata accessor for SiriRequest(0);
    v7 = v6[5];
    v8 = type metadata accessor for Input();
    v9 = *(*(v8 - 8) + 16);

    v100 = v9;
    v102 = v8;
    v9((a1 + v7), (a2 + v7), v8);
    *(a1 + v6[6]) = *(a2 + v6[6]);
    *(a1 + v6[7]) = *(a2 + v6[7]);
    v10 = v6[8];
    v11 = a1 + v10;
    v12 = (a2 + v10);
    v13 = *(a2 + v10 + 8);

    if (v13 >> 60 == 15)
    {
      *v11 = *v12;
    }

    else
    {
      v42 = *v12;
      outlined copy of Data._Representation(*v12, v13);
      *v11 = v42;
      *(v11 + 8) = v13;
    }

    *(a1 + v6[9]) = *(a2 + v6[9]);
    *(a1 + v6[10]) = *(a2 + v6[10]);
    *(a1 + v6[11]) = *(a2 + v6[11]);
    v43 = v6[12];
    __dsta = (a1 + v43);
    v44 = (a2 + v43);
    v45 = type metadata accessor for SiriRequestIdentities(0);
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);

    v48 = v44;
    if (v47(v44, 1, v45))
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dsta, v44, *(*(v49 - 8) + 64));
    }

    else
    {
      v98 = v46;
      v64 = type metadata accessor for IdentifiedUser();
      v65 = *(v64 - 8);
      v66 = v48;
      v67 = *(v65 + 48);
      if (v67(v48, 1, v64))
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(__dsta, v48, *(*(v68 - 8) + 64));
      }

      else
      {
        (*(v65 + 16))(__dsta, v48, v64);
        (*(v65 + 56))(__dsta, 0, 1, v64);
      }

      v84 = *(v45 + 20);
      if (v67(&v66[v84], 1, v64))
      {
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dsta[v84], &v66[v84], *(*(v85 - 8) + 64));
      }

      else
      {
        (*(v65 + 16))(&__dsta[v84], &v66[v84], v64);
        (*(v65 + 56))(&__dsta[v84], 0, 1, v64);
      }

      *&__dsta[*(v45 + 24)] = *&v66[*(v45 + 24)];
      v86 = *(v98 + 56);

      v86(__dsta, 0, 1, v45);
    }

    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    v88 = (a1 + v87);
    v89 = (a2 + v87);
    v90 = type metadata accessor for UserInputResult();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  if (EnumCaseMultiPayload)
  {
    v25 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v25;
    v26 = type metadata accessor for SiriRequest(0);
    v27 = v26[5];
    v28 = type metadata accessor for Input();
    v29 = *(*(v28 - 8) + 16);

    v100 = v29;
    v102 = v28;
    v29((a1 + v27), (a2 + v27), v28);
    *(a1 + v26[6]) = *(a2 + v26[6]);
    *(a1 + v26[7]) = *(a2 + v26[7]);
    v30 = v26[8];
    v31 = a1 + v30;
    v32 = (a2 + v30);
    v33 = *(a2 + v30 + 8);

    if (v33 >> 60 == 15)
    {
      *v31 = *v32;
    }

    else
    {
      v50 = *v32;
      outlined copy of Data._Representation(*v32, v33);
      *v31 = v50;
      *(v31 + 8) = v33;
    }

    *(a1 + v26[9]) = *(a2 + v26[9]);
    *(a1 + v26[10]) = *(a2 + v26[10]);
    *(a1 + v26[11]) = *(a2 + v26[11]);
    v51 = v26[12];
    __dstb = (a1 + v51);
    v52 = (a2 + v51);
    v53 = type metadata accessor for SiriRequestIdentities(0);
    v54 = *(v53 - 8);
    v55 = *(v54 + 48);

    v56 = v52;
    if (v55(v52, 1, v53))
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dstb, v52, *(*(v57 - 8) + 64));
    }

    else
    {
      v99 = v54;
      v70 = type metadata accessor for IdentifiedUser();
      v71 = *(v70 - 8);
      v72 = v56;
      v73 = *(v71 + 48);
      if (v73(v56, 1, v70))
      {
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(__dstb, v56, *(*(v74 - 8) + 64));
      }

      else
      {
        (*(v71 + 16))(__dstb, v56, v70);
        (*(v71 + 56))(__dstb, 0, 1, v70);
      }

      v91 = *(v53 + 20);
      if (v73(&v72[v91], 1, v70))
      {
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dstb[v91], &v72[v91], *(*(v92 - 8) + 64));
      }

      else
      {
        (*(v71 + 16))(&__dstb[v91], &v72[v91], v70);
        (*(v71 + 56))(&__dstb[v91], 0, 1, v70);
      }

      *&__dstb[*(v53 + 24)] = *&v72[*(v53 + 24)];
      v93 = *(v99 + 56);

      v93(__dstb, 0, 1, v53);
    }

    v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    v88 = (a1 + v94);
    v89 = (a2 + v94);
    v90 = type metadata accessor for UserInputResult();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_45:
      v100(v88, v89, v102);
      swift_storeEnumTagMultiPayload();
LABEL_53:
      v95 = type metadata accessor for RequestContinuation(0);
      *&v88[*(v95 + 20)] = *&v89[*(v95 + 20)];
      goto LABEL_54;
    }

LABEL_52:
    memcpy(v88, v89, *(*(v90 - 8) + 64));
    goto LABEL_53;
  }

  v14 = *(a2 + 24);
  if (v14)
  {
    v15 = *(a2 + 32);
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    (**(v14 - 8))(a1, a2);
  }

  else
  {
    v69 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v69;
    *(a1 + 32) = *(a2 + 32);
  }

LABEL_55:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for EncoreConversation.State(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreConversation.State(a1, type metadata accessor for EncoreConversation.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v13 = *(a2 + 3);
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = *(a2 + 4);
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v66 = *a2;
          v67 = a2[1];
          *(a1 + 32) = *(a2 + 4);
          *a1 = v66;
          *(a1 + 16) = v67;
        }

        goto LABEL_56;
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v22 = type metadata accessor for SiriRequest(0);
      v23 = v22[5];
      v24 = type metadata accessor for Input();
      v25 = *(*(v24 - 8) + 16);

      v99 = v25;
      v101 = v24;
      v25((a1 + v23), a2 + v23, v24);
      *(a1 + v22[6]) = *(a2 + v22[6]);
      *(a1 + v22[7]) = *(a2 + v22[7]);
      v26 = v22[8];
      v27 = a1 + v26;
      v28 = (a2 + v26);
      v29 = *(a2 + v26 + 8);

      if (v29 >> 60 == 15)
      {
        *v27 = *v28;
      }

      else
      {
        v46 = *v28;
        outlined copy of Data._Representation(*v28, v29);
        *v27 = v46;
        *(v27 + 8) = v29;
      }

      *(a1 + v22[9]) = *(a2 + v22[9]);
      *(a1 + v22[10]) = *(a2 + v22[10]);
      *(a1 + v22[11]) = *(a2 + v22[11]);
      v47 = v22[12];
      __dstb = (a1 + v47);
      v48 = a2 + v47;
      v49 = type metadata accessor for SiriRequestIdentities(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);

      v52 = v48;
      if (v51(v48, 1, v49))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dstb, v48, *(*(v53 - 8) + 64));
      }

      else
      {
        v68 = type metadata accessor for IdentifiedUser();
        v69 = *(v68 - 8);
        v70 = v52;
        v71 = v52;
        v72 = *(v69 + 48);
        v98 = v69;
        if (v72(v71, 1, v68))
        {
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dstb, v70, *(*(v73 - 8) + 64));
        }

        else
        {
          (*(v69 + 16))(__dstb, v70, v68);
          (*(v69 + 56))(__dstb, 0, 1, v68);
        }

        v90 = *(v49 + 20);
        if (v72(&v70[v90], 1, v68))
        {
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dstb[v90], &v70[v90], *(*(v91 - 8) + 64));
        }

        else
        {
          (*(v98 + 16))(&__dstb[v90], &v70[v90], v68);
          (*(v98 + 56))(&__dstb[v90], 0, 1, v68);
        }

        *&__dstb[*(v49 + 24)] = *&v70[*(v49 + 24)];
        v92 = *(v50 + 56);

        v92(__dstb, 0, 1, v49);
      }

      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v87 = (a1 + v93);
      v88 = a2 + v93;
      v89 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_54:
        memcpy(v87, v88, *(*(v89 - 8) + 64));
        goto LABEL_55;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v14 = type metadata accessor for SiriRequest(0);
        v15 = v14[5];
        v16 = type metadata accessor for Input();
        v17 = *(*(v16 - 8) + 16);

        v100 = v17;
        v102 = v16;
        v17((a1 + v15), a2 + v15, v16);
        *(a1 + v14[6]) = *(a2 + v14[6]);
        *(a1 + v14[7]) = *(a2 + v14[7]);
        v18 = v14[8];
        v19 = a1 + v18;
        v20 = (a2 + v18);
        v21 = *(a2 + v18 + 8);

        if (v21 >> 60 == 15)
        {
          *v19 = *v20;
        }

        else
        {
          v30 = *v20;
          outlined copy of Data._Representation(*v20, v21);
          *v19 = v30;
          *(v19 + 8) = v21;
        }

        *(a1 + v14[9]) = *(a2 + v14[9]);
        *(a1 + v14[10]) = *(a2 + v14[10]);
        *(a1 + v14[11]) = *(a2 + v14[11]);
        v31 = v14[12];
        __dst = (a1 + v31);
        v32 = a2 + v31;
        v33 = type metadata accessor for SiriRequestIdentities(0);
        v34 = *(v33 - 8);
        v35 = *(v34 + 48);

        v36 = v32;
        if (v35(v32, 1, v33))
        {
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v32, *(*(v37 - 8) + 64));
        }

        else
        {
          v54 = type metadata accessor for IdentifiedUser();
          v55 = *(v54 - 8);
          v56 = v36;
          v57 = v36;
          v58 = *(v55 + 48);
          v96 = v55;
          if (v58(v57, 1, v54))
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v56, *(*(v59 - 8) + 64));
          }

          else
          {
            (*(v55 + 16))(__dst, v56, v54);
            (*(v55 + 56))(__dst, 0, 1, v54);
          }

          v74 = *(v33 + 20);
          if (v58(&v56[v74], 1, v54))
          {
            v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v74], &v56[v74], *(*(v75 - 8) + 64));
          }

          else
          {
            (*(v96 + 16))(&__dst[v74], &v56[v74], v54);
            (*(v96 + 56))(&__dst[v74], 0, 1, v54);
          }

          *&__dst[*(v33 + 24)] = *&v56[*(v33 + 24)];
          v76 = *(v34 + 56);

          v76(__dst, 0, 1, v33);
        }

        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
        v78 = *(v77 + 48);
        v79 = (a1 + v78);
        v80 = a2 + v78;
        v81 = type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v100(v79, v80, v102);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v79, v80, *(*(v81 - 8) + 64));
        }

        v82 = type metadata accessor for RequestContinuation(0);
        *&v79[*(v82 + 20)] = *&v80[*(v82 + 20)];
        *(a1 + *(v77 + 64)) = *(a2 + *(v77 + 64));

        goto LABEL_56;
      }

      if (EnumCaseMultiPayload != 3)
      {
        *a1 = *a2;

LABEL_56:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v5 = type metadata accessor for SiriRequest(0);
      v6 = v5[5];
      v7 = type metadata accessor for Input();
      v8 = *(*(v7 - 8) + 16);

      v99 = v8;
      v101 = v7;
      v8((a1 + v6), a2 + v6, v7);
      *(a1 + v5[6]) = *(a2 + v5[6]);
      *(a1 + v5[7]) = *(a2 + v5[7]);
      v9 = v5[8];
      v10 = a1 + v9;
      v11 = (a2 + v9);
      v12 = *(a2 + v9 + 8);

      if (v12 >> 60 == 15)
      {
        *v10 = *v11;
      }

      else
      {
        v38 = *v11;
        outlined copy of Data._Representation(*v11, v12);
        *v10 = v38;
        *(v10 + 8) = v12;
      }

      *(a1 + v5[9]) = *(a2 + v5[9]);
      *(a1 + v5[10]) = *(a2 + v5[10]);
      *(a1 + v5[11]) = *(a2 + v5[11]);
      v39 = v5[12];
      __dsta = (a1 + v39);
      v40 = a2 + v39;
      v41 = type metadata accessor for SiriRequestIdentities(0);
      v42 = *(v41 - 8);
      v43 = *(v42 + 48);

      v44 = v40;
      if (v43(v40, 1, v41))
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dsta, v40, *(*(v45 - 8) + 64));
      }

      else
      {
        v60 = type metadata accessor for IdentifiedUser();
        v61 = *(v60 - 8);
        v62 = v44;
        v63 = v44;
        v64 = *(v61 + 48);
        v97 = v61;
        if (v64(v63, 1, v60))
        {
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dsta, v62, *(*(v65 - 8) + 64));
        }

        else
        {
          (*(v61 + 16))(__dsta, v62, v60);
          (*(v61 + 56))(__dsta, 0, 1, v60);
        }

        v83 = *(v41 + 20);
        if (v64(&v62[v83], 1, v60))
        {
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dsta[v83], &v62[v83], *(*(v84 - 8) + 64));
        }

        else
        {
          (*(v97 + 16))(&__dsta[v83], &v62[v83], v60);
          (*(v97 + 56))(&__dsta[v83], 0, 1, v60);
        }

        *&__dsta[*(v41 + 24)] = *&v62[*(v41 + 24)];
        v85 = *(v42 + 56);

        v85(__dsta, 0, 1, v41);
      }

      v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v87 = (a1 + v86);
      v88 = a2 + v86;
      v89 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_54;
      }
    }

    v99(v87, v88, v101);
    swift_storeEnumTagMultiPayload();
LABEL_55:
    v94 = type metadata accessor for RequestContinuation(0);
    *&v87[*(v94 + 20)] = *&v88[*(v94 + 20)];

    goto LABEL_56;
  }

  return a1;
}

char *initializeWithTake for EncoreConversation.State(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *a1 = *a2;
      v26 = type metadata accessor for SiriRequest(0);
      v27 = v26[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v27], &a2[v27], v9);
      *&a1[v26[6]] = *&a2[v26[6]];
      *&a1[v26[7]] = *&a2[v26[7]];
      *&a1[v26[8]] = *&a2[v26[8]];
      *&a1[v26[9]] = *&a2[v26[9]];
      *&a1[v26[10]] = *&a2[v26[10]];
      *&a1[v26[11]] = *&a2[v26[11]];
      v28 = v26[12];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v31 = type metadata accessor for SiriRequestIdentities(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v29, v30, *(*(v33 - 8) + 64));
      }

      else
      {
        v69 = v9;
        v39 = type metadata accessor for IdentifiedUser();
        v40 = *(v39 - 8);
        v64 = *(v40 + 48);
        v67 = v10;
        if (v64(v30, 1, v39))
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v29, v30, *(*(v41 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v29, v30, v39);
          (*(v40 + 56))(v29, 0, 1, v39);
        }

        v53 = *(v31 + 20);
        if (v64(&v30[v53], 1, v39))
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v29[v53], &v30[v53], *(*(v54 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(&v29[v53], &v30[v53], v39);
          (*(v40 + 56))(&v29[v53], 0, 1, v39);
        }

        v9 = v69;
        *&v29[*(v31 + 24)] = *&v30[*(v31 + 24)];
        (*(v32 + 56))(v29, 0, 1, v31);
        v10 = v67;
      }

      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v55];
      v57 = &a2[v55];
      v58 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    case 2:
      *a1 = *a2;
      v17 = type metadata accessor for SiriRequest(0);
      v18 = v17[5];
      v19 = type metadata accessor for Input();
      v71 = *(*(v19 - 8) + 32);
      v71(&a1[v18], &a2[v18], v19);
      *&a1[v17[6]] = *&a2[v17[6]];
      *&a1[v17[7]] = *&a2[v17[7]];
      *&a1[v17[8]] = *&a2[v17[8]];
      *&a1[v17[9]] = *&a2[v17[9]];
      *&a1[v17[10]] = *&a2[v17[10]];
      *&a1[v17[11]] = *&a2[v17[11]];
      v20 = v17[12];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v23 = type metadata accessor for SiriRequestIdentities(0);
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v22, 1, v23))
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v21, v22, *(*(v25 - 8) + 64));
      }

      else
      {
        v36 = type metadata accessor for IdentifiedUser();
        v37 = *(v36 - 8);
        v63 = *(v37 + 48);
        v66 = v19;
        if (v63(v22, 1, v36))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v21, v22, *(*(v38 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(v21, v22, v36);
          (*(v37 + 56))(v21, 0, 1, v36);
        }

        v45 = *(v23 + 20);
        if (v63(&v22[v45], 1, v36))
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v21[v45], &v22[v45], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(&v21[v45], &v22[v45], v36);
          (*(v37 + 56))(&v21[v45], 0, 1, v36);
        }

        *&v21[*(v23 + 24)] = *&v22[*(v23 + 24)];
        (*(v24 + 56))(v21, 0, 1, v23);
        v19 = v66;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v48 = *(v47 + 48);
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71(v49, v50, v19);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v49, v50, *(*(v51 - 8) + 64));
      }

      v52 = type metadata accessor for RequestContinuation(0);
      *&v49[*(v52 + 20)] = *&v50[*(v52 + 20)];
      *&a1[*(v47 + 64)] = *&a2[*(v47 + 64)];
      goto LABEL_44;
    case 1:
      *a1 = *a2;
      v7 = type metadata accessor for SiriRequest(0);
      v8 = v7[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v8], &a2[v8], v9);
      *&a1[v7[6]] = *&a2[v7[6]];
      *&a1[v7[7]] = *&a2[v7[7]];
      *&a1[v7[8]] = *&a2[v7[8]];
      *&a1[v7[9]] = *&a2[v7[9]];
      *&a1[v7[10]] = *&a2[v7[10]];
      *&a1[v7[11]] = *&a2[v7[11]];
      v11 = v7[12];
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = type metadata accessor for SiriRequestIdentities(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v13, 1, v14))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v12, v13, *(*(v16 - 8) + 64));
      }

      else
      {
        v70 = v9;
        v42 = type metadata accessor for IdentifiedUser();
        v43 = *(v42 - 8);
        v65 = *(v43 + 48);
        v68 = v10;
        if (v65(v13, 1, v42))
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v12, v13, *(*(v44 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(v12, v13, v42);
          (*(v43 + 56))(v12, 0, 1, v42);
        }

        v59 = *(v14 + 20);
        if (v65(&v13[v59], 1, v42))
        {
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v12[v59], &v13[v59], *(*(v60 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(&v12[v59], &v13[v59], v42);
          (*(v43 + 56))(&v12[v59], 0, 1, v42);
        }

        v9 = v70;
        *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
        (*(v15 + 56))(v12, 0, 1, v14);
        v10 = v68;
      }

      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v61];
      v57 = &a2[v61];
      v58 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_41:
        v10(v56, v57, v9);
        swift_storeEnumTagMultiPayload();
LABEL_43:
        v62 = type metadata accessor for RequestContinuation(0);
        *&v56[*(v62 + 20)] = *&v57[*(v62 + 20)];
LABEL_44:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

LABEL_42:
      memcpy(v56, v57, *(*(v58 - 8) + 64));
      goto LABEL_43;
  }

  v34 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v34);
}

char *assignWithTake for EncoreConversation.State(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreConversation.State(a1, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *a1 = *a2;
      v26 = type metadata accessor for SiriRequest(0);
      v27 = v26[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v27], &a2[v27], v9);
      *&a1[v26[6]] = *&a2[v26[6]];
      *&a1[v26[7]] = *&a2[v26[7]];
      *&a1[v26[8]] = *&a2[v26[8]];
      *&a1[v26[9]] = *&a2[v26[9]];
      *&a1[v26[10]] = *&a2[v26[10]];
      *&a1[v26[11]] = *&a2[v26[11]];
      v28 = v26[12];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v31 = type metadata accessor for SiriRequestIdentities(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v29, v30, *(*(v33 - 8) + 64));
      }

      else
      {
        v69 = v9;
        v39 = type metadata accessor for IdentifiedUser();
        v40 = *(v39 - 8);
        v64 = *(v40 + 48);
        v67 = v10;
        if (v64(v30, 1, v39))
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v29, v30, *(*(v41 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v29, v30, v39);
          (*(v40 + 56))(v29, 0, 1, v39);
        }

        v53 = *(v31 + 20);
        if (v64(&v30[v53], 1, v39))
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v29[v53], &v30[v53], *(*(v54 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(&v29[v53], &v30[v53], v39);
          (*(v40 + 56))(&v29[v53], 0, 1, v39);
        }

        v9 = v69;
        *&v29[*(v31 + 24)] = *&v30[*(v31 + 24)];
        (*(v32 + 56))(v29, 0, 1, v31);
        v10 = v67;
      }

      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v55];
      v57 = &a2[v55];
      v58 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 2:
      *a1 = *a2;
      v17 = type metadata accessor for SiriRequest(0);
      v18 = v17[5];
      v19 = type metadata accessor for Input();
      v71 = *(*(v19 - 8) + 32);
      v71(&a1[v18], &a2[v18], v19);
      *&a1[v17[6]] = *&a2[v17[6]];
      *&a1[v17[7]] = *&a2[v17[7]];
      *&a1[v17[8]] = *&a2[v17[8]];
      *&a1[v17[9]] = *&a2[v17[9]];
      *&a1[v17[10]] = *&a2[v17[10]];
      *&a1[v17[11]] = *&a2[v17[11]];
      v20 = v17[12];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v23 = type metadata accessor for SiriRequestIdentities(0);
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v22, 1, v23))
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v21, v22, *(*(v25 - 8) + 64));
      }

      else
      {
        v36 = type metadata accessor for IdentifiedUser();
        v37 = *(v36 - 8);
        v63 = *(v37 + 48);
        v66 = v19;
        if (v63(v22, 1, v36))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v21, v22, *(*(v38 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(v21, v22, v36);
          (*(v37 + 56))(v21, 0, 1, v36);
        }

        v45 = *(v23 + 20);
        if (v63(&v22[v45], 1, v36))
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v21[v45], &v22[v45], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(&v21[v45], &v22[v45], v36);
          (*(v37 + 56))(&v21[v45], 0, 1, v36);
        }

        *&v21[*(v23 + 24)] = *&v22[*(v23 + 24)];
        (*(v24 + 56))(v21, 0, 1, v23);
        v19 = v66;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v48 = *(v47 + 48);
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71(v49, v50, v19);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v49, v50, *(*(v51 - 8) + 64));
      }

      v52 = type metadata accessor for RequestContinuation(0);
      *&v49[*(v52 + 20)] = *&v50[*(v52 + 20)];
      *&a1[*(v47 + 64)] = *&a2[*(v47 + 64)];
      goto LABEL_45;
    case 1:
      *a1 = *a2;
      v7 = type metadata accessor for SiriRequest(0);
      v8 = v7[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v8], &a2[v8], v9);
      *&a1[v7[6]] = *&a2[v7[6]];
      *&a1[v7[7]] = *&a2[v7[7]];
      *&a1[v7[8]] = *&a2[v7[8]];
      *&a1[v7[9]] = *&a2[v7[9]];
      *&a1[v7[10]] = *&a2[v7[10]];
      *&a1[v7[11]] = *&a2[v7[11]];
      v11 = v7[12];
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = type metadata accessor for SiriRequestIdentities(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v13, 1, v14))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v12, v13, *(*(v16 - 8) + 64));
      }

      else
      {
        v70 = v9;
        v42 = type metadata accessor for IdentifiedUser();
        v43 = *(v42 - 8);
        v65 = *(v43 + 48);
        v68 = v10;
        if (v65(v13, 1, v42))
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v12, v13, *(*(v44 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(v12, v13, v42);
          (*(v43 + 56))(v12, 0, 1, v42);
        }

        v59 = *(v14 + 20);
        if (v65(&v13[v59], 1, v42))
        {
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v12[v59], &v13[v59], *(*(v60 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(&v12[v59], &v13[v59], v42);
          (*(v43 + 56))(&v12[v59], 0, 1, v42);
        }

        v9 = v70;
        *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
        (*(v15 + 56))(v12, 0, 1, v14);
        v10 = v68;
      }

      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v61];
      v57 = &a2[v61];
      v58 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_42:
        v10(v56, v57, v9);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        v62 = type metadata accessor for RequestContinuation(0);
        *&v56[*(v62 + 20)] = *&v57[*(v62 + 20)];
LABEL_45:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

LABEL_43:
      memcpy(v56, v57, *(*(v58 - 8) + 64));
      goto LABEL_44;
  }

  v34 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v34);
}

uint64_t type metadata completion function for EncoreConversation.State()
{
  v9 = "(";
  result = type metadata accessor for SiriRequest(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    result = type metadata accessor for RequestContinuation(319);
    if (v3 <= 0x3F)
    {
      v4 = *(result - 8);
      swift_getTupleTypeLayout2();
      v10 = &v8;
      v5 = MEMORY[0x1E69E5D20] + 64;
      swift_getTupleTypeLayout3();
      v11 = &v7;
      swift_getTupleTypeLayout2();
      v12 = &v6;
      v13 = v5;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RequestContinuation(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ConversationContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t outlined init with take of RequestContinuation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in EncoreConversation.commit()(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RequestContinuation(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ConversationContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreConversation.commit()(a1, v10, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ConversationContext() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ConversationContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t EncoreEngine.__allocating_init(rootEnvironment:snippetManager:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EncoreEngine.init(rootEnvironment:snippetManager:)(a1, a2);
  return v4;
}

uint64_t EncoreEngine.send(event:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v15 = *(v1 + 16);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(a1, &v18 - v13, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  v16 = *(*v15 + 96);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v14, v11, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v7, v3);
  return outlined destroy of EncoreEngine.EngineEvent(v14, type metadata accessor for EncoreEngine.EngineEvent);
}

uint64_t *FlowActor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static FlowActor.shared;
}

uint64_t EncoreEngine.isEmpty()()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.isEmpty(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    v8 = *(v6 + 24);
    *(v7 + 4) = (*(*v8 + 184))() & 1;
    *(v7 + 8) = 2048;
    *(v7 + 10) = (*(*v8 + 160))();

    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] Is empty: %{BOOL}d count: %ld.", v7, 0x12u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
    v9 = *(v0 + 16);
  }

  v10 = (*(**(*(v0 + 16) + 24) + 184))();
  v11 = *(v0 + 8);
  v12 = v10 & 1;

  return v11(v12);
}

uint64_t FlowActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static FlowActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t FlowActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance FlowActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance FlowActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FlowActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t RequestContinuation.agent.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContinuation(0) + 20));
}

uint64_t RequestContinuation.init(userInputResult:agent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of UserInputResult(a1, a3, type metadata accessor for UserInputResult);
  result = type metadata accessor for RequestContinuation(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t ActingFlowAgent.snippetEventHandling.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  return swift_unknownObjectRetain();
}

uint64_t ActingFlowAgent.environment.getter()
{
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pMd, &_s13SiriUtilities0A19EnvironmentLocating_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v4, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v1 = dispatch thunk of SiriEnvironmentLocating.siriEnvironment.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s13SiriUtilities0A19EnvironmentLocating_pSgMd, &_s13SiriUtilities0A19EnvironmentLocating_pSgMR);
    v1 = *(v0 + 232);
    if (v1)
    {
      v2 = *(v0 + 232);
    }

    else
    {
      type metadata accessor for SiriEnvironment();
      return static SiriEnvironment.default.getter();
    }
  }

  return v1;
}

uint64_t ActingFlowAgent.environment.setter(uint64_t a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(v1 + 56, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pMd, &_s13SiriUtilities0A19EnvironmentLocating_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    dispatch thunk of SiriEnvironmentLocating.siriEnvironment.setter();
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s13SiriUtilities0A19EnvironmentLocating_pSgMd, &_s13SiriUtilities0A19EnvironmentLocating_pSgMR);
    v4 = *(v1 + 232);
    *(v1 + 232) = a1;
  }
}

uint64_t (*ActingFlowAgent.environment.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ActingFlowAgent.environment.getter();
  return ActingFlowAgent.environment.modify;
}

uint64_t ActingFlowAgent.environment.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return ActingFlowAgent.environment.setter(*a1);
  }

  v4 = *a1;

  ActingFlowAgent.environment.setter(v5);
}

uint64_t ActingFlowAgent.__allocating_init(flow:environment:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ActingFlowAgent.init(flow:environment:)(a1, a2);
  return v4;
}

uint64_t ActingFlowAgent.init(flow:environment:)(uint64_t *a1, uint64_t a2)
{
  *(v2 + 232) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v2 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  ActingFlow.unwrap.getter();
  outlined init with take of ReferenceResolutionClientProtocol(v13, v2 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LifeCycleModifier_pMd, &_s11SiriKitFlow17LifeCycleModifier_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  *(v2 + 96) = v10;
  *(v2 + 112) = v11;
  *(v2 + 128) = v12;
  outlined init with copy of ReferenceResolutionClientProtocol(v2 + 56, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14InputAccepting_pMd, &_s11SiriKitFlow14InputAccepting_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  *(v2 + 136) = v10;
  *(v2 + 152) = v11;
  *(v2 + 168) = v12;
  outlined init with copy of ReferenceResolutionClientProtocol(v2 + 56, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  *(v2 + 176) = v10;
  *(v2 + 192) = v11;
  *(v2 + 208) = v12;
  outlined init with copy of ReferenceResolutionClientProtocol(v2 + 56, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20SnippetEventHandling_pMd, &_s11SiriKitFlow20SnippetEventHandling_pMR);
  v6 = swift_dynamicCast();
  v8 = *(&v10 + 1);
  v7 = v10;
  if (!v6)
  {
    v7 = 0;
    v8 = 0;
  }

  *(v2 + 216) = v7;
  *(v2 + 224) = v8;
  ActingFlowAgent.environment.setter(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t ActingFlowAgent.snippetIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 216))
  {
    v3 = *(v1 + 224);
    swift_getObjectType();
    v4 = *(v3 + 8);
    dispatch thunk of Identifiable.id.getter();
    v5 = type metadata accessor for UUID();
    return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

uint64_t *ActingFlowAgent.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 17), &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 22), &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
  v1 = v0[27];
  swift_unknownObjectRelease();
  v2 = v0[29];

  return v0;
}

uint64_t ActingFlowAgent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 17), &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 22), &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
  v1 = v0[27];
  swift_unknownObjectRelease();
  v2 = v0[29];

  return swift_deallocClassInstance();
}

uint64_t closure #1 in OrderedForest<A>.debugDescription()(void *a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(*a1 + 56, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  return String.init<A>(describing:)();
}

uint64_t ExecutableTask.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v4 = type metadata accessor for ConversationContext();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for ExecutableTask.actionCompletion : ExecutableTask@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EncoreEngine.ActionOutcome) -> ();
  a2[1] = v6;
}

uint64_t key path setter for ExecutableTask.actionCompletion : ExecutableTask(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EncoreEngine.ActionOutcome) -> (@out ());
  v6[1] = v5;
}

uint64_t ExecutableTask.actionCompletion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t ExecutableTask.actionCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ExecutableTask.__allocating_init(executingNode:context:runningTask:actionCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v15 = type metadata accessor for ConversationContext();
  (*(*(v15 - 8) + 32))(v13 + v14, a2, v15);
  *(v13 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = a3;
  v16 = (v13 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  *v16 = a4;
  v16[1] = a5;
  return v13;
}

uint64_t ExecutableTask.init(executingNode:context:runningTask:actionCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 32))(v5 + v10, a2, v11);
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = a3;
  v12 = (v5 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  *v12 = a4;
  v12[1] = a5;
  return v5;
}

uint64_t ExecutableTask.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v3 = type metadata accessor for ConversationContext();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion + 8);

  return v0;
}

uint64_t ExecutableTask.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v3 = type metadata accessor for ConversationContext();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask];

  v5 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t OrderedForest<A>.find(value:)(uint64_t a1)
{
  v3 = (*(*v1 + 192))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  while (1)
  {
    Strong = swift_weakLoadStrong();
    if (*(v4 + 16) == a1)
    {
      break;
    }

    v4 = Strong;
    if (!Strong)
    {
      return Strong;
    }
  }

  return v4;
}

uint64_t one-time initialization function for TaskPriority()
{
  v0 = type metadata accessor for TaskPriority();
  __swift_allocate_value_buffer(v0, static EncoreEngine.TaskPriority);
  __swift_project_value_buffer(v0, static EncoreEngine.TaskPriority);
  return static TaskPriority.userInitiated.getter();
}

uint64_t EncoreEngine.TaskPriority.unsafeMutableAddressor()
{
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TaskPriority();

  return __swift_project_value_buffer(v0, static EncoreEngine.TaskPriority);
}

uint64_t static EncoreEngine.TaskPriority.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TaskPriority();
  v3 = __swift_project_value_buffer(v2, static EncoreEngine.TaskPriority);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *EncoreEngine.init(rootEnvironment:snippetManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v2[7] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime10EventQueueCyAA12EncoreEngineC0gD0OGMd, &_s14SiriKitRuntime10EventQueueCyAA12EncoreEngineC0gD0OGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v2[2] = specialized EventQueue.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13OrderedForestCyAA15ActingFlowAgentCGMd, &_s14SiriKitRuntime13OrderedForestCyAA15ActingFlowAgentCGMR);
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = 0;
  v2[3] = v13;
  v2[4] = a1;
  v14 = MEMORY[0x1E69E7CC0];
  v2[5] = a2;
  v2[6] = v14;

  dispatch thunk of SnippetManager.positionLookup.setter();
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TaskPriority();
  v16 = __swift_project_value_buffer(v15, static EncoreEngine.TaskPriority);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v9, v16, v15);
  (*(v17 + 56))(v9, 0, 1, v15);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;
  v20 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:), v19);

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScPSgMd, &_sScPSgMR);
  v21 = v3[7];
  v3[7] = v20;

  return v3;
}

uint64_t _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t EventQueue.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  EventQueue.init()();
  return v3;
}

uint64_t closure #1 in EncoreEngine.init(rootEnvironment:snippetManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  swift_getObjectType();
  v33 = v16;
  v34 = a1;
  v17 = *(a2 + 8);
  v18 = dispatch thunk of Identifiable.id.getter();
  v19 = (*(**(a3 + 24) + 192))(v18);
  v20 = 0;
  v21 = (v7 + 32);
  v22 = (v7 + 8);
  do
  {
    if (!v19)
    {
      (*v22)(v33, v6);
      return 0;
    }

    Strong = swift_weakLoadStrong();
    v26 = *(v19 + 16);
    v27 = *(v26 + 216);
    if (v27)
    {
      v28 = *(v26 + 224);
      v29 = *(v26 + 216);
      swift_getObjectType();
      v34 = v27;
      v30 = *(v28 + 8);
      dispatch thunk of Identifiable.id.getter();
      (*v21)(v13, v10, v6);
      v31 = static UUID.== infix(_:_:)();

      v32 = *v22;
      result = (*v22)(v13, v6);
      if (v31)
      {
        v32(v33, v6);

        return v20;
      }
    }

    else
    {
    }

    v19 = Strong;
  }

  while (!__OFADD__(v20++, 1));
  __break(1u);
  return result;
}

uint64_t EncoreEngine.position(of:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  swift_getObjectType();
  v33 = v16;
  v34 = a1;
  v17 = *(a2 + 8);
  v18 = dispatch thunk of Identifiable.id.getter();
  v19 = (*(**(v3 + 24) + 192))(v18);
  v20 = 0;
  v21 = (v7 + 32);
  v22 = (v7 + 8);
  do
  {
    if (!v19)
    {
      (*v22)(v33, v6);
      return 0;
    }

    Strong = swift_weakLoadStrong();
    v26 = *(v19 + 16);
    v27 = *(v26 + 216);
    if (v27)
    {
      v28 = *(v26 + 224);
      v29 = *(v26 + 216);
      swift_getObjectType();
      v34 = v27;
      v30 = *(v28 + 8);
      dispatch thunk of Identifiable.id.getter();
      (*v21)(v13, v10, v6);
      v31 = static UUID.== infix(_:_:)();

      v32 = *v22;
      result = (*v22)(v13, v6);
      if (v31)
      {

        v32(v33, v6);
        return v20;
      }
    }

    else
    {
    }

    v19 = Strong;
  }

  while (!__OFADD__(v20++, 1));
  __break(1u);
  return result;
}

uint64_t closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:)()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:);

    return EncoreEngine.startEventLoop()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t EncoreEngine.startEventLoop()()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for EncoreEngineEvent(0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime12EncoreEngineC0E5EventOSgMd, &_s14SiriKitRuntime12EncoreEngineC0E5EventOSgMR) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMd, &_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMR);
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS8IteratorVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  v1[11] = v10;
  v11 = *(v10 - 8);
  v1[12] = v11;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static FlowActor.shared;
  v1[14] = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.startEventLoop(), v13, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreEngine] Event process loop started.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[2];

  (*(v7 + 16))(v6, *(v9 + 16) + *(**(v9 + 16) + 88), v8);
  AsyncStream.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  v11 = lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowActor and conformance FlowActor, v10, type metadata accessor for FlowActor);
  v0[15] = v11;
  v12 = v0[14];
  v13 = *(MEMORY[0x1E69E8678] + 4);
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = EncoreEngine.startEventLoop();
  v15 = v0[13];
  v16 = v0[11];
  v17 = v0[7];

  return MEMORY[0x1EEE6D9C8](v17, v12, v11, v16);
}

{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.startEventLoop(), v2, 0);
}

{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[10];
    v3 = v0[6];
    v5 = v0[2];
    v4 = v0[3];
    (*(v0[12] + 8))(v0[13], v0[11]);
    $defer #1 () in EncoreEngine.startEventLoop()(v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    outlined init with take of UserInputResult(v1, v0[6], type metadata accessor for EncoreEngine.EngineEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v0[6];
    v10 = v0[2];
    if (EnumCaseMultiPayload == 1)
    {
      EncoreEngine.handleInternal(event:)(*v9);
    }

    else
    {
      v11 = v0[3];
      outlined init with take of UserInputResult(v9, v11, type metadata accessor for EncoreEngineEvent);
      EncoreEngine.handleExternal(event:)(v11);
      outlined destroy of EncoreEngine.EngineEvent(v11, type metadata accessor for EncoreEngineEvent);
    }

    v12 = v0[14];
    v13 = v0[15];
    v14 = *(MEMORY[0x1E69E8678] + 4);
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = EncoreEngine.startEventLoop();
    v16 = v0[13];
    v17 = v0[11];
    v18 = v0[7];

    return MEMORY[0x1EEE6D9C8](v18, v12, v13, v17);
  }
}

void *EncoreEngine.deinit()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] deinit.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  v10 = v1[6];

  v11 = v1[7];

  return v1;
}

uint64_t EncoreEngine.__deallocating_deinit()
{
  EncoreEngine.deinit();

  return swift_deallocClassInstance();
}

uint64_t EventQueue.send(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v15 = *(v3 + 96);
  (*(v5 + 16))(v8, a1, v4, v12);
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.yield(_:)();
  return (*(v10 + 8))(v14, v9);
}

void $defer #1 () in EncoreEngine.startEventLoop()(uint64_t a1)
{
  v1 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v3, "[EncoreEngine] Event process loop ends.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }
}

void EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v250 = 0;
  v254 = type metadata accessor for ConversationContext();
  v255 = *(v254 - 8);
  v2 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v247 = &v233 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for SiriRequest(0);
  v241 = *(v234 - 8);
  v4 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v243 = &v233 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v245 = &v233 - v7;
  v242 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v257 = &v233 - v10;
  v252 = type metadata accessor for UserInputResult();
  v11 = *(*(v252 - 8) + 64);
  MEMORY[0x1EEE9AC00](v252);
  v244 = &v233 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v235 = &v233 - v14;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v238 = *(v237 - 8);
  v15 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v239 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v236 = &v233 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v253 = (&v233 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v256 = &v233 - v22;
  v248 = type metadata accessor for RequestContinuation(0);
  v251 = *(v248 - 8);
  v23 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v246 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v240 = &v233 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v233 - v28;
  v249 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v258 = &v233 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v233 - v35;
  v37 = type metadata accessor for SystemEvents();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v233 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v233 - v43;
  v45 = type metadata accessor for EncoreEngineEvent(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = a1;
  v49 = &v233 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v48, v49, type metadata accessor for EncoreEngineEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v245 = v41;
    v63 = v36;
    v246 = v44;
    v257 = v15;
    v64 = v38;
    v247 = v37;
    v65 = v253;
    if (EnumCaseMultiPayload)
    {
      v66 = v259;
      if (EnumCaseMultiPayload == 1)
      {
        v67 = *v49;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v257 = *(v68 + 48);
        v69 = &v49[*(v68 + 64)];
        v71 = *v69;
        v70 = *(v69 + 1);
        v72 = v49;
        EncoreEngine.ensureReady()();
        v73 = v258;
        EncoreEngine.continuation(for:)(v67, v258);
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for TaskPriority();
        v75 = __swift_project_value_buffer(v74, static EncoreEngine.TaskPriority);
        v76 = *(v74 - 8);
        v77 = v256;
        (*(v76 + 16))(v256, v75, v74);
        (*(v76 + 56))(v77, 0, 1, v74);
        _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v73, v29, type metadata accessor for RequestContinuation);
        v78 = (*(v251 + 80) + 56) & ~*(v251 + 80);
        v79 = swift_allocObject();
        v79[2] = 0;
        v79[3] = 0;
        v79[4] = v67;
        v79[5] = v71;
        v79[6] = v70;
        outlined init with take of UserInputResult(v29, v79 + v78, type metadata accessor for RequestContinuation);
        v80 = v67;

        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v77, &async function pointer to partial apply for closure #1 in EncoreEngine.handleExternal(event:), v79);

        outlined destroy of ReferenceResolutionClientProtocol?(v77, &_sScPSgMd, &_sScPSgMR);
        outlined destroy of EncoreEngine.EngineEvent(v73, type metadata accessor for RequestContinuation);
        (*(v255 + 8))(&v72[v257], v254);
      }

      else
      {
        v117 = *(v49 + 5);
        v116 = *(v49 + 6);
        outlined init with take of ReferenceResolutionClientProtocol(v49, &v265);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v118 = type metadata accessor for Logger();
        __swift_project_value_buffer(v118, static Logger.executor);
        outlined init with copy of ReferenceResolutionClientProtocol(&v265, &v263);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.debug.getter();
        v121 = os_log_type_enabled(v119, v120);
        v258 = v117;
        if (v121)
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          *&v260[0] = v123;
          *v122 = 136315138;
          outlined init with copy of ReferenceResolutionClientProtocol(&v263, v262);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
          v124 = String.init<A>(describing:)();
          v125 = v66;
          v127 = v126;
          __swift_destroy_boxed_opaque_existential_1Tm(&v263);
          v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v127, v260);
          v66 = v125;

          *(v122 + 4) = v128;
          _os_log_impl(&dword_1DC659000, v119, v120, "[EncoreEngine] Handling push event flow: %s.", v122, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          MEMORY[0x1E12A2F50](v123, -1, -1);
          MEMORY[0x1E12A2F50](v122, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v263);
        }

        v154 = v238;
        v155 = v235;
        v156 = v236;
        EncoreEngine.ensureReady()();
        if ((*(**(v66 + 24) + 184))())
        {
          outlined init with copy of ReferenceResolutionClientProtocol(&v265, &v263);
          v157 = EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(0, &v263, 0);
          outlined destroy of ReferenceResolutionClientProtocol?(&v263, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
          swift_storeEnumTagMultiPayload();
          if (v157)
          {
            v158 = *(v157 + 16);
          }

          else
          {
            v158 = 0;
          }

          v223 = v248;
          v161 = v65;
          outlined init with take of UserInputResult(v155, v156, type metadata accessor for UserInputResult);
          *(v156 + *(v223 + 20)) = v158;
          swift_storeEnumTagMultiPayload();
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v156, v65, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
        }

        else
        {
          lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
          v159 = swift_allocError();
          *v160 = 0xD000000000000046;
          v160[1] = 0x80000001DCA82AB0;
          v161 = v65;
          *v65 = v159;
          swift_storeEnumTagMultiPayload();
        }

        v224 = v239;
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v225 = type metadata accessor for TaskPriority();
        v226 = __swift_project_value_buffer(v225, static EncoreEngine.TaskPriority);
        v227 = *(v225 - 8);
        v228 = v256;
        (*(v227 + 16))(v256, v226, v225);
        (*(v227 + 56))(v228, 0, 1, v225);
        outlined init with copy of ReferenceResolutionClientProtocol(&v265, &v263);
        outlined init with copy of ReferenceResolutionClientProtocol?(v161, v224, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
        v229 = (*(v154 + 80) + 88) & ~*(v154 + 80);
        v230 = swift_allocObject();
        v230[2] = 0;
        v230[3] = 0;
        outlined init with take of ReferenceResolutionClientProtocol(&v263, (v230 + 4));
        v230[9] = v258;
        v230[10] = v116;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v224, v230 + v229, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);

        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v228, &async function pointer to partial apply for closure #2 in EncoreEngine.handleExternal(event:), v230);

        outlined destroy of ReferenceResolutionClientProtocol?(v228, &_sScPSgMd, &_sScPSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v161, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
        __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      }

      return;
    }

    v103 = *v49;
    v104 = v259;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    v106 = __swift_project_value_buffer(v105, static Logger.executor);
    v107 = v103;
    v258 = v106;
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = v104;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      *(v111 + 4) = v107;
      *v112 = v107;
      v113 = v107;
      _os_log_impl(&dword_1DC659000, v108, v109, "[EncoreEngine] Handling snippet event request: %@.", v111, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v112, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v112, -1, -1);
      v104 = v110;
      MEMORY[0x1E12A2F50](v111, -1, -1);
    }

    lazy protocol witness table accessor for type SystemEvents? and conformance <A> A?();
    v114 = v63;
    v115 = v250;
    dispatch thunk of EncoreEvent.getValue<A>()();
    if (v115)
    {

      (*(v64 + 56))(v63, 1, 1, v247);
      goto LABEL_81;
    }

    v194 = v247;
    if ((*(v64 + 48))(v63, 1, v247) == 1)
    {
LABEL_81:
      outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
      if (EncoreEngine.discover(event:)(v107))
      {
        v196 = v195;

        v197 = v107;
        v198 = Logger.logObject.getter();
        v199 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v198, v199))
        {
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *v200 = 138412290;
          *(v200 + 4) = v197;
          *v201 = v197;
          v202 = v197;
          _os_log_impl(&dword_1DC659000, v198, v199, "[EncoreEngine] Invoking event handler for event: %@", v200, 0xCu);
          outlined destroy of ReferenceResolutionClientProtocol?(v201, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v201, -1, -1);
          MEMORY[0x1E12A2F50](v200, -1, -1);
        }

        v203 = *(v104 + 40);
        dispatch thunk of SnippetManager.canSendXPCUpdates.setter();
        v196(v197);
        dispatch thunk of SnippetManager.canSendXPCUpdates.setter();
        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&dword_1DC659000, v204, v205, "Finished handling encore XPC event.", v206, 2u);
          MEMORY[0x1E12A2F50](v206, -1, -1);
        }
      }

      else
      {
        v207 = v107;
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          *v210 = 138412290;
          *(v210 + 4) = v207;
          *v211 = v207;
          v212 = v207;
          _os_log_impl(&dword_1DC659000, v208, v209, "[EncoreEngine] None of flow registers to handle snippet event: %@.", v210, 0xCu);
          outlined destroy of ReferenceResolutionClientProtocol?(v211, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v211, -1, -1);
          MEMORY[0x1E12A2F50](v210, -1, -1);
        }

        else
        {
        }
      }

      return;
    }

    v213 = v246;
    (*(v64 + 32))(v246, v114, v194);
    v214 = v245;
    (*(v64 + 16))(v245, v213, v194);
    v215 = (*(v64 + 88))(v214, v194);
    if (v215 == *MEMORY[0x1E699BB20])
    {
      v216 = v107;
      v217 = Logger.logObject.getter();
      v218 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        *v219 = 138412290;
        *(v219 + 4) = v216;
        *v220 = v216;
        v221 = v216;
        _os_log_impl(&dword_1DC659000, v217, v218, "[EncoreEngine] Snippet Disappeared: Remove it?: %@.", v219, 0xCu);
        outlined destroy of ReferenceResolutionClientProtocol?(v220, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v220, -1, -1);
        MEMORY[0x1E12A2F50](v219, -1, -1);
      }

      v222 = *(v104 + 40);
      dispatch thunk of SnippetManager.snippetDisappeared()();
    }

    else
    {
      if (v215 != *MEMORY[0x1E699BB28])
      {
LABEL_107:
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000027, 0x80000001DCA82890, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 239);
        __break(1u);
        return;
      }

      v216 = Logger.logObject.getter();
      v231 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v216, v231))
      {

        goto LABEL_105;
      }

      v232 = swift_slowAlloc();
      *v232 = 0;
      _os_log_impl(&dword_1DC659000, v216, v231, "Ignoring .returnedToVoiceMode event since it was sent over XPC. This is not supported.", v232, 2u);
      MEMORY[0x1E12A2F50](v232, -1, -1);
    }

LABEL_105:
    (*(v64 + 8))(v213, v194);
    return;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v147 = type metadata accessor for Logger();
      __swift_project_value_buffer(v147, static Logger.executor);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.debug.getter();
      v150 = os_log_type_enabled(v148, v149);
      v151 = v259;
      if (v150)
      {
        v152 = swift_slowAlloc();
        *v152 = 0;
        _os_log_impl(&dword_1DC659000, v148, v149, "[EncoreEngine] Handling stop event.", v152, 2u);
        MEMORY[0x1E12A2F50](v152, -1, -1);
      }

      EncoreEngine.ensureReady()();
      v153 = *(**(v151 + 16) + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
      AsyncStream.Continuation.finish()();
      return;
    }

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
    v82 = v49;
    v83 = *(v81 + 48);
    v84 = (v82 + *(v81 + 64));
    v86 = *v84;
    v85 = v84[1];
    v87 = v246;
    outlined init with take of UserInputResult(v82, v246, type metadata accessor for RequestContinuation);
    v88 = v247;
    v89 = v254;
    (*(v255 + 32))(v247, v82 + v83, v254);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.executor);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1DC659000, v91, v92, "[EncoreEngine] Handling commit event.", v93, 2u);
      MEMORY[0x1E12A2F50](v93, -1, -1);
    }

    v94 = *(v259 + 40);
    dispatch thunk of SnippetManager.canSendAddViews.setter();
    EncoreEngine.ensureReady()();
    v95 = v244;
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v87, v244, type metadata accessor for UserInputResult);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v96 = *(v87 + *(v248 + 20));
      if (v96)
      {
        v97 = v259;
        v98 = *(**(v259 + 24) + 192);

        v100 = v98(v99);
        v89 = v254;
        if (v100)
        {
          v101 = v100;
          while (1)
          {
            Strong = swift_weakLoadStrong();
            if (*(v101 + 16) == v96)
            {
              break;
            }

            v101 = Strong;
            if (!Strong)
            {
              goto LABEL_27;
            }
          }

          specialized EncoreEngine.action(mode:starting:context:completion:)(0, v101, v88, v97, v97, v86, v85);

          goto LABEL_56;
        }

LABEL_27:
      }
    }

    else
    {
      outlined destroy of EncoreEngine.EngineEvent(v95, type metadata accessor for UserInputResult);
    }

    dispatch thunk of SnippetManager.canSendAddViews.setter();
    if (one-time initialization token for TaskPriority != -1)
    {
      swift_once();
    }

    v162 = type metadata accessor for TaskPriority();
    v163 = __swift_project_value_buffer(v162, static EncoreEngine.TaskPriority);
    v164 = *(v162 - 8);
    v165 = v256;
    (*(v164 + 16))(v256, v163, v162);
    (*(v164 + 56))(v165, 0, 1, v162);
    v166 = swift_allocObject();
    v166[2] = 0;
    v166[3] = 0;
    v166[4] = v86;
    v166[5] = v85;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v165, &async function pointer to partial apply for closure #6 in EncoreEngine.handleExternal(event:), v166);

    outlined destroy of ReferenceResolutionClientProtocol?(v165, &_sScPSgMd, &_sScPSgMR);
LABEL_56:
    (*(v255 + 8))(v88, v89);
    outlined destroy of EncoreEngine.EngineEvent(v87, type metadata accessor for RequestContinuation);
    return;
  }

  v51 = v259;
  if (EnumCaseMultiPayload == 3)
  {
    v53 = *v49;
    v52 = *(v49 + 1);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.executor);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DC659000, v55, v56, "[EncoreEngine] Handling ensureReady event.", v57, 2u);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    EncoreEngine.ensureReady()();
    if (one-time initialization token for TaskPriority != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for TaskPriority();
    v59 = __swift_project_value_buffer(v58, static EncoreEngine.TaskPriority);
    v60 = *(v58 - 8);
    v61 = v256;
    (*(v60 + 16))(v256, v59, v58);
    (*(v60 + 56))(v61, 0, 1, v58);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v53;
    v62[5] = v52;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #3 in EncoreEngine.handleExternal(event:), v62);

    outlined destroy of ReferenceResolutionClientProtocol?(v61, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
    v130 = &v49[*(v129 + 64)];
    v132 = *v130;
    v131 = v130[1];
    v247 = v49;
    v133 = v257;
    outlined init with take of UserInputResult(v49, v257, type metadata accessor for SiriRequest);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for Logger();
    __swift_project_value_buffer(v134, static Logger.executor);
    v135 = v245;
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v133, v245, type metadata accessor for SiriRequest);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    v138 = os_log_type_enabled(v136, v137);
    v139 = v258;
    v246 = v131;
    v244 = v132;
    v239 = v129;
    if (v138)
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v265 = v141;
      *v140 = 136315138;
      v142 = *(v234 + 20);
      type metadata accessor for Input();
      lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v144;
      outlined destroy of EncoreEngine.EngineEvent(v135, type metadata accessor for SiriRequest);
      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, &v265);

      *(v140 + 4) = v146;
      _os_log_impl(&dword_1DC659000, v136, v137, "[EncoreEngine] Handling accept event request: %s.", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      MEMORY[0x1E12A2F50](v141, -1, -1);
      MEMORY[0x1E12A2F50](v140, -1, -1);
    }

    else
    {

      outlined destroy of EncoreEngine.EngineEvent(v135, type metadata accessor for SiriRequest);
    }

    v167 = v250;
    EncoreEngine.ensureReady()();
    v266 = 0;
    v168 = (*(**(v51 + 24) + 192))();
    if (v168)
    {
      v169 = v168;
      do
      {
        while (1)
        {
          while (1)
          {
            v170 = swift_weakLoadStrong();
            if (!v266)
            {
              break;
            }

            v169 = v170;
            if (!v170)
            {
              goto LABEL_74;
            }
          }

          v171 = *(v169 + 16);
          outlined init with copy of ReferenceResolutionClientProtocol?(v171 + 136, &v263, &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
          if (v264)
          {
            break;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(&v263, &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
          v169 = v170;
          if (!v170)
          {
            goto LABEL_74;
          }
        }

        v172 = outlined init with take of ReferenceResolutionClientProtocol(&v263, &v265);
        MEMORY[0x1EEE9AC00](v172);
        *(&v233 - 6) = &v265;
        *(&v233 - 5) = v257;
        *(&v233 - 4) = &v266;
        *(&v233 - 3) = v169;
        *(&v233 - 2) = v173;
        v174 = one-time initialization token for $conversationContext;
        swift_retain_n();
        if (v174 != -1)
        {
          swift_once();
        }

        *&v263 = v171;
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
        swift_task_localValuePush();
        v175 = type metadata accessor for SiriEnvironment();
        outlined init with copy of ReferenceResolutionClientProtocol(v171 + 56, v262);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pMd, &_s13SiriUtilities0A19EnvironmentLocating_pMR);
        if (swift_dynamicCast())
        {
          outlined init with take of ReferenceResolutionClientProtocol(v260, &v263);
          v253 = v175;
          __swift_project_boxed_opaque_existential_1(&v263, v264);
          dispatch thunk of SiriEnvironmentLocating.siriEnvironment.getter();
          __swift_destroy_boxed_opaque_existential_1Tm(&v263);
        }

        else
        {
          v261 = 0;
          memset(v260, 0, sizeof(v260));
          outlined destroy of ReferenceResolutionClientProtocol?(v260, &_s13SiriUtilities0A19EnvironmentLocating_pSgMd, &_s13SiriUtilities0A19EnvironmentLocating_pSgMR);
          if (*(v171 + 232))
          {
            v176 = *(v171 + 232);
          }

          else
          {
            static SiriEnvironment.default.getter();
          }
        }

        static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

        if (v167)
        {

          swift_task_localValuePop();
          __break(1u);
          goto LABEL_107;
        }

        swift_task_localValuePop();

        __swift_destroy_boxed_opaque_existential_1Tm(&v265);
        v169 = v170;
        v139 = v258;
      }

      while (v170);
LABEL_74:
      v177 = v266;
      v133 = v257;
      if (!v266)
      {
        goto LABEL_76;
      }

      v178 = v240;
      swift_storeEnumTagMultiPayload();
      v179 = *(v177 + 16);
    }

    else
    {
LABEL_76:
      v178 = v240;
      *v240 = 0;
      swift_storeEnumTagMultiPayload();
      v179 = 0;
    }

    v180 = v243;
    v181 = v242;
    v182 = v241;
    *&v178[*(v248 + 20)] = v179;
    v259 = *(v239 + 12);
    v183 = v178;
    if (one-time initialization token for TaskPriority != -1)
    {
      swift_once();
    }

    v184 = type metadata accessor for TaskPriority();
    v185 = __swift_project_value_buffer(v184, static EncoreEngine.TaskPriority);
    v186 = *(v184 - 8);
    v187 = v256;
    (*(v186 + 16))(v256, v185, v184);
    (*(v186 + 56))(v187, 0, 1, v184);
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v133, v180, type metadata accessor for SiriRequest);
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v183, v139, type metadata accessor for RequestContinuation);
    v188 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v189 = (v181 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
    v190 = (*(v251 + 80) + v189 + 16) & ~*(v251 + 80);
    v191 = swift_allocObject();
    *(v191 + 16) = 0;
    *(v191 + 24) = 0;
    outlined init with take of UserInputResult(v180, v191 + v188, type metadata accessor for SiriRequest);
    v192 = (v191 + v189);
    v193 = v246;
    *v192 = v244;
    v192[1] = v193;
    outlined init with take of UserInputResult(v139, v191 + v190, type metadata accessor for RequestContinuation);

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v187, &async function pointer to partial apply for closure #4 in EncoreEngine.handleExternal(event:), v191);

    outlined destroy of ReferenceResolutionClientProtocol?(v187, &_sScPSgMd, &_sScPSgMR);
    outlined destroy of EncoreEngine.EngineEvent(v183, type metadata accessor for RequestContinuation);
    outlined destroy of EncoreEngine.EngineEvent(v133, type metadata accessor for SiriRequest);
    (*(v255 + 8))(&v247[v259], v254);
  }
}

void EncoreEngine.handleInternal(event:)(uint64_t a1)
{
  v2 = v1;
  v64 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for executor != -1)
  {
LABEL_33:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67 = v11;
    *v10 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(a1 + 56, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v67);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v8, v9, "[EncoreEngine] Handling executable flow %s completion event.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v2 + 48);
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v59 = *(v2 + 48);
    }

    v16 = __CocoaSet.count.getter();
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_15:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "[EncoreEngine] Expired execution task.", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    return;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_6:
  v63 = v6;
  v6 = (v15 & 0xC000000000000001);

  v17 = 0;
  while (1)
  {
    if (v6)
    {
      v18 = MEMORY[0x1E12A1FE0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = *(*(v18 + 16) + 16);

    if (v20 == a1)
    {
      break;
    }

    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    ++v17;
    if (v21 == v16)
    {

      goto LABEL_15;
    }
  }

  swift_beginAccess();
  v25 = specialized Array.remove(at:)(v17, specialized _ArrayBuffer._consumeAndCreateNew());
  v26 = swift_endAccess();
  v27 = *(v25 + 16);
  Strong = (*(**(v2 + 24) + 192))(v26);
  while (1)
  {
    v29 = Strong;
    if (!Strong)
    {
      break;
    }

    Strong = swift_weakLoadStrong();

    if (v27 == v29)
    {

      break;
    }
  }

  swift_retain_n();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v62 = v29 == 0;
    v32 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v66 = v61;
    *v32 = 136315650;
    outlined init with copy of ReferenceResolutionClientProtocol(a1 + 56, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v33 = String.init<A>(describing:)();
    HIDWORD(v60) = v31;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v66);

    *(v32 + 4) = v35;
    *(v32 + 12) = 1024;
    v36 = *(v25 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask);
    isCancelled = swift_task_isCancelled();

    *(v32 + 14) = isCancelled & 1;

    *(v32 + 18) = 1024;
    *(v32 + 20) = v62;
    _os_log_impl(&dword_1DC659000, v30, BYTE4(v60), "[EncoreEngine] Found executable task %s cancelled: %{BOOL}d detached: %{BOOL}d.", v32, 0x18u);
    v38 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);

    if (!v29)
    {
      goto LABEL_27;
    }

LABEL_26:
    v39 = *(v25 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask);

    v40 = swift_task_isCancelled();

    if ((v40 & 1) == 0)
    {
      v54 = *(v25 + 16);
      v55 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
      v56 = v25 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
      swift_beginAccess();
      v57 = *v56;
      v58 = *(v56 + 8);

      EncoreEngine.action(mode:starting:context:completion:)(1, v54, v25 + v55, v57, v58);

      return;
    }

    goto LABEL_27;
  }

  if (v29)
  {
    goto LABEL_26;
  }

LABEL_27:

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v66 = v44;
    *v43 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(a1 + 56, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v45 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v66);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_1DC659000, v41, v42, "[EncoreEngine] Expired execution agent %s.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v43, -1, -1);
  }

  v48 = v25 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
  swift_beginAccess();
  v50 = *v48;
  v49 = *(v48 + 8);
  lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
  v51 = swift_allocError();
  *v52 = 0xD000000000000025;
  v52[1] = 0x80000001DCA82C90;
  v53 = v63;
  *v63 = v51;
  swift_storeEnumTagMultiPayload();

  v50(v53);

  outlined destroy of EncoreEngine.EngineEvent(v53, type metadata accessor for EncoreEngine.ActionOutcome);
}

uint64_t EncoreEngine.discover(event:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService11ServiceNameVSgMd, &_s16EncoreXPCService11ServiceNameVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v56 - v5;
  EncoreEvent.serviceName.getter();
  v7 = type metadata accessor for ServiceName();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16EncoreXPCService11ServiceNameVSgMd, &_s16EncoreXPCService11ServiceNameVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1DC659000, v11, v12, "[EncoreEngine] Snippet event does not have an event name. %@", v13, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    return 0;
  }

  else
  {
    MEMORY[0x1E129E5B0]();
    (*(v8 + 8))(v6, v7);

    v16 = (*(**(v1 + 24) + 192))(v17);
    if (v16)
    {
      v19 = &unk_1EE159000;
      *&v18 = 136315138;
      v56 = v18;
      *&v18 = 136315394;
      v57 = v18;
      do
      {
        Strong = swift_weakLoadStrong();
        v21 = *(v16 + 16);
        v22 = *(v21 + 216);
        if (v22)
        {
          v23 = *(v21 + 224);
          v24 = *(v21 + 216);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = SnippetEventHandling.handler(for:)();
          if (v25)
          {
            v53 = v25;
            v54 = v26;

            v55 = swift_allocObject();
            v55[2] = v16;
            v55[3] = v22;
            v55[4] = v23;
            v55[5] = v53;
            v55[6] = v54;

            return v16;
          }

          if (v19[389] != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          __swift_project_value_buffer(v27, static Logger.executor);

          v28 = a1;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v58 = v30;
            v32 = v31;
            v59 = swift_slowAlloc();
            v61 = v59;
            *v32 = v57;
            outlined init with copy of ReferenceResolutionClientProtocol(*(v16 + 16) + 56, v60);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
            v33 = String.init<A>(describing:)();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v61);

            *(v32 + 4) = v35;
            *(v32 + 12) = 2080;
            v36 = v28;
            v37 = [v36 description];
            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = a1;
            v41 = v40;

            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v41, &v61);
            a1 = v39;

            *(v32 + 14) = v42;
            v19 = &unk_1EE159000;
            _os_log_impl(&dword_1DC659000, v29, v58, "[EncoreEngine] Node (%s) implements snippetEventHandling, but doesn't handle events of type '%s'", v32, 0x16u);
            v43 = v59;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v43, -1, -1);
            MEMORY[0x1E12A2F50](v32, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          if (v19[389] != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          __swift_project_value_buffer(v44, static Logger.executor);

          v29 = Logger.logObject.getter();
          v45 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v29, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v61 = v47;
            *v46 = v56;
            outlined init with copy of ReferenceResolutionClientProtocol(*(v16 + 16) + 56, v60);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
            v48 = String.init<A>(describing:)();
            v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v61);

            *(v46 + 4) = v50;
            _os_log_impl(&dword_1DC659000, v29, v45, "[EncoreEngine] Node (%s) does not implement snippetEventHandling", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v47);
            v51 = v47;
            v19 = &unk_1EE159000;
            MEMORY[0x1E12A2F50](v51, -1, -1);
            MEMORY[0x1E12A2F50](v46, -1, -1);
          }
        }

        v16 = Strong;
      }

      while (Strong);
    }
  }

  return v16;
}

void EncoreEngine.ensureReady()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] Ensuring engine is ready.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();

  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + 48), v1);
  v7 = *(v1 + 48);
  if (v7 >> 62)
  {
    v12 = v6;
    v8 = __CocoaSet.count.getter();
    v6 = v12;
    if (v8 >= v12)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    swift_endAccess();
    __break(1u);
    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 < v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  specialized Array.replaceSubrange<A>(_:with:)(v6, v8);
  swift_endAccess();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, v9, v10, "[EncoreEngine] Engine is ready.", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }
}

uint64_t EncoreEngine.continuation(for:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v134 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v3 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v113 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v126 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v113 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v113 - v13;
  v129 = type metadata accessor for UUID();
  v124 = *(v129 - 8);
  v14 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v113 - v22;
  v24 = type metadata accessor for SystemEvents();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v113 - v30;
  lazy protocol witness table accessor for type SystemEvents? and conformance <A> A?();
  v32 = a1;
  dispatch thunk of EncoreEvent.getValue<A>()();
  v118 = v16;
  v122 = v31;
  v123 = v19;
  v34 = v129;
  v33 = v130;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
    v35 = EncoreEngine.discover(event:)(v32);
    if (v35)
    {
      v37 = v35;
      v38 = v36;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.executor);
      v40 = v32;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&dword_1DC659000, v41, v42, "[EncoreEngine] Invoking event handler for event: %@", v43, 0xCu);
        outlined destroy of ReferenceResolutionClientProtocol?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v44, -1, -1);
        MEMORY[0x1E12A2F50](v43, -1, -1);
      }

      v38(v40);

      type metadata accessor for UserInputResult();
      v46 = v134;
      swift_storeEnumTagMultiPayload();
      v47 = *(v37 + 16);

      goto LABEL_8;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.executor);
    v49 = v32;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&dword_1DC659000, v50, v51, "[EncoreEngine] None of flow registers to handle snippet event: %@.", v52, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v53, -1, -1);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    v46 = v134;
    goto LABEL_45;
  }

  v55 = v24;
  v56 = v122;
  (*(v25 + 32))(v122, v23, v24);
  (*(v25 + 16))(v28, v56, v24);
  v57 = (*(v25 + 88))(v28, v24);
  if (v57 == *MEMORY[0x1E699BB20])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.executor);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v46 = v134;
    if (v61)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1DC659000, v59, v60, "Rejecting .snippetDisappeared event since it was sent over DI. This is not supported and will likely cause a user facing error.", v62, 2u);
      MEMORY[0x1E12A2F50](v62, -1, -1);
    }

    (*(v25 + 8))(v122, v24);
LABEL_45:
    *v46 = 0;
    type metadata accessor for UserInputResult();
    swift_storeEnumTagMultiPayload();
    v47 = 0;
    goto LABEL_46;
  }

  v116 = v25;
  if (v57 != *MEMORY[0x1E699BB28])
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000027, 0x80000001DCA82890, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 363);
    __break(1u);
    return result;
  }

  v63 = Strong;
  v64 = *(Strong + 40);
  dispatch thunk of SnippetManager.flowIdentifierOfCurrentSnippet.getter();
  v65 = v124;
  v66 = *(v124 + 48);
  v67 = v34;
  v125 = v124 + 48;
  v68 = v66(v33, 1, v34);
  v69 = v132;
  v71 = v127;
  v70 = v128;
  if (v68 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.executor);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v75 = os_log_type_enabled(v73, v74);
    v46 = v134;
    if (v75)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DC659000, v73, v74, "Got a .returnedToVoiceMode event but SnippetManager isn't aware of any snippets on screen. Rejecting input which will likely cause a user facing error.", v76, 2u);
      MEMORY[0x1E12A2F50](v76, -1, -1);
    }

    (*(v116 + 8))(v122, v55);
    goto LABEL_45;
  }

  v121 = v66;
  v113 = v55;
  v77 = *(v65 + 32);
  v115 = v65 + 32;
  v114 = v77;
  v78 = (v77)(v123, v33, v67);
  v79 = (*(**(v63 + 24) + 192))(v78);
  if (!v79)
  {
LABEL_40:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, static Logger.executor);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    v101 = os_log_type_enabled(v99, v100);
    v46 = v134;
    if (v101)
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1DC659000, v99, v100, "Failed to find flow agent to handle .returnToVoiceMode event. Rejecting input which will likely cause a user facing error.", v102, 2u);
      MEMORY[0x1E12A2F50](v102, -1, -1);
    }

    (*(v124 + 8))(v123, v67);
    (*(v116 + 8))(v122, v113);
    goto LABEL_45;
  }

  v80 = v79;
  v117 = (v65 + 8);
  v130 = (v65 + 56);
  v119 = (v65 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v120 = (v65 + 16);
  while (1)
  {
    Strong = swift_weakLoadStrong();
    v82 = *(v80 + 16);
    v83 = *(v82 + 216);
    if (v83)
    {
      v84 = *(v82 + 224);
      v85 = *(v82 + 216);
      swift_getObjectType();
      v136[0] = v83;
      v86 = *(v84 + 8);
      v69 = v132;
      dispatch thunk of Identifiable.id.getter();
      v87 = *v130;
      (*v130)(v71, 0, 1, v67);
    }

    else
    {
      v87 = *v130;
      (*v130)(v71, 1, 1, v67);
    }

    v88 = v131;
    (*v120)(v70, v123, v67);
    v87(v70, 0, 1, v67);
    v89 = v69;
    v90 = *(v69 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v71, v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v70, v88 + v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v91 = v121;
    if (v121(v88, 1, v67) == 1)
    {
      break;
    }

    v92 = v126;
    outlined init with copy of ReferenceResolutionClientProtocol?(v88, v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v91(v88 + v90, 1, v67) == 1)
    {
      v70 = v128;
      outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v93 = v127;
      outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v117)(v92, v67);
      v71 = v93;
      goto LABEL_30;
    }

    v94 = v118;
    v114(v118, v88 + v90, v67);
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v95 = dispatch thunk of static Equatable.== infix(_:_:)();
    v96 = *v117;
    (*v117)(v94, v67);
    v70 = v128;
    outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v97 = v127;
    outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v96(v92, v67);
    v69 = v132;
    outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v71 = v97;
    v81 = Strong;
    if (v95)
    {
      goto LABEL_48;
    }

LABEL_31:

    v80 = v81;
    if (!v81)
    {
      goto LABEL_40;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v91(v88 + v90, 1, v67) != 1)
  {
LABEL_30:
    outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v81 = Strong;
    v69 = v89;
    goto LABEL_31;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_48:

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, static Logger.executor);

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = v67;
    v109 = swift_slowAlloc();
    *v107 = 136315138;
    v135 = *(v80 + 16);
    v136[0] = v109;
    type metadata accessor for ActingFlowAgent();

    v110 = String.init<A>(describing:)();
    v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v136);

    *(v107 + 4) = v112;
    _os_log_impl(&dword_1DC659000, v105, v106, "Found flow agent to handle .returnToVoiceMode event: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    MEMORY[0x1E12A2F50](v109, -1, -1);
    MEMORY[0x1E12A2F50](v107, -1, -1);

    (*v117)(v123, v108);
  }

  else
  {

    (*v117)(v123, v67);
  }

  (*(v116 + 8))(v122, v113);
  v46 = v134;
  type metadata accessor for UserInputResult();
  swift_storeEnumTagMultiPayload();
  v47 = *(v80 + 16);

LABEL_8:

LABEL_46:
  result = type metadata accessor for RequestContinuation(0);
  *&v46[*(result + 20)] = v47;
  return result;
}

uint64_t closure #1 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #1 in EncoreEngine.handleExternal(event:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1DC659000, v4, v5, "[EncoreEngine] SnippetEvent: %@ completed.", v7, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  v12(v10);
  v13 = v0[1];

  return v13();
}

uint64_t EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(unint64_t a1, uint64_t a2, char a3)
{
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, &v16, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  if (v17)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v16, v18);
    if (a1)
    {
      v6 = *(a1 + 16);
      ActingFlowAgent.environment.getter();
    }

    else
    {
      v8 = *(v3 + 32);
    }

    v9 = type metadata accessor for SiriEnvironment();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();

    v12 = SiriEnvironment.init(parent:)();
    outlined init with copy of ReferenceResolutionClientProtocol(v18, &v16);
    type metadata accessor for ActingFlowAgent();
    v13 = swift_allocObject();

    ActingFlowAgent.init(flow:environment:)(&v16, v12);
    if (a3)
    {
      v14 = EncoreEngine.push(parentNode:flowAgent:)(a1, v13);

      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return v14;
    }

    else
    {
      v15 = ActingFlowAgent.environment.getter();
      MEMORY[0x1EEE9AC00](v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA15ActingFlowAgentCGSgMd, &_s14SiriKitRuntime4NodeCyAA15ActingFlowAgentCGSgMR);
      static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return v16;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v16, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    return 0;
  }
}

uint64_t closure #2 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  return MEMORY[0x1EEE6DFA0](closure #2 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #2 in EncoreEngine.handleExternal(event:)()
{
  v15 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] Push flow: %s completed.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v11 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 120));
  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #3 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #3 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #3 in EncoreEngine.handleExternal(event:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreEngine] EnsureReady completed.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[2];
  v6 = v0[3];

  v5();
  v7 = v0[1];

  return v7();
}

uint64_t closure #4 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for SiriRequest(0);
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #4 in EncoreEngine.handleExternal(event:)()
{
  v21 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v2, v1, type metadata accessor for SiriRequest);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for Input();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for SiriRequest);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v20);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v4, v5, "[EncoreEngine] Accept request: %s completed.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {

    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for SiriRequest);
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 40));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #5 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v39 - v19);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(a1, v14, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v24 = type metadata accessor for FlowUnhandledReason();
      (*(*(v24 - 8) + 32))(v20, v14, v24);
      type metadata accessor for ConversationCommitResult();
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v22 = type metadata accessor for PluginAction();
      (*(*(v22 - 8) + 32))(v20, v14, v22);
      type metadata accessor for ConversationCommitResult();
LABEL_11:
      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_8:
    v23 = MEMORY[0x1E69E7CC0];
    *v20 = MEMORY[0x1E69E7CC0];
    v20[1] = v23;
    type metadata accessor for ConversationCommitResult();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    outlined destroy of EncoreEngine.EngineEvent(v14, type metadata accessor for EncoreEngine.ActionOutcome);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v25 = *(v14 + 2);
    v26 = *(v14 + 3);
    *v20 = *v14;
    v20[2] = v25;
    v20[3] = v26;
    type metadata accessor for ConversationCommitResult();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_8;
  }

  *v20 = *v14;
LABEL_12:
  swift_storeEnumTagMultiPayload();
LABEL_13:
  v27 = *(v40 + 40);
  dispatch thunk of SnippetManager.canSendAddViews.setter();
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for TaskPriority();
  v29 = __swift_project_value_buffer(v28, static EncoreEngine.TaskPriority);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v8, v29, v28);
  (*(v30 + 56))(v8, 0, 1, v28);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(a1, v11, type metadata accessor for EncoreEngine.ActionOutcome);
  outlined init with copy of ReferenceResolutionClientProtocol?(v20, v17, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  v31 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v11;
  v34 = (*(v41 + 80) + v32 + 16) & ~*(v41 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  outlined init with take of UserInputResult(v33, v35 + v31, type metadata accessor for EncoreEngine.ActionOutcome);
  v36 = (v35 + v32);
  v37 = v44;
  *v36 = v43;
  v36[1] = v37;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v17, v35 + v34, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #5 in EncoreEngine.handleExternal(event:), v35);

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScPSgMd, &_sScPSgMR);
  return outlined destroy of ReferenceResolutionClientProtocol?(v20, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
}

uint64_t closure #1 in closure #5 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(type metadata accessor for EncoreEngine.ActionOutcome(0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #5 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #1 in closure #5 in EncoreEngine.handleExternal(event:)()
{
  v19 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v2, v1, type metadata accessor for EncoreEngine.ActionOutcome);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = EncoreEngine.ActionOutcome.description.getter();
    v12 = v11;
    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for EncoreEngine.ActionOutcome);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v4, v5, "[EncoreEngine] Commit completed. outcome: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {

    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for EncoreEngine.ActionOutcome);
  }

  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 40));

  v16 = *(v0 + 8);

  return v16();
}

void EncoreEngine.action(mode:starting:context:completion:)(int a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v146 = a5;
  v145 = a4;
  v136 = a3;
  v147 = a1;
  v137 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v8 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for InterruptionPolicy();
  v140 = *(v141 - 8);
  v10 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v130 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v129 - v13;
  v144 = type metadata accessor for FlowTraceEvent();
  v143 = *(v144 - 8);
  v14 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for ConversationContext();
  v133 = *(v134 - 8);
  v16 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v131 = v17;
  v135 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v132 = &v129 - v20;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.executor);

  v148 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v154 = v26;
    *v25 = 136315394;
    if (a2)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v156);
    }

    else
    {
      v158 = 0;
      v156 = 0u;
      v157 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v154);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *&v156 = 0;
    *(&v156 + 1) = 0xE000000000000000;
    v30 = 0xE600000000000000;
    v31 = 0x7075727265746E69;
    if (v147 == 2)
    {
      v30 = 0xE900000000000074;
    }

    else
    {
      v31 = 0x705570617277;
    }

    v32 = 0x6C616D726F6ELL;
    if (v147)
    {
      v32 = 0x656D75736572;
    }

    if (v147 <= 1u)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    if (v147 <= 1u)
    {
      v34 = 0xE600000000000000;
    }

    else
    {
      v34 = v30;
    }

    MEMORY[0x1E12A1580](v33, v34);

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, *(&v156 + 1), &v154);

    *(v25 + 14) = v35;
    _os_log_impl(&dword_1DC659000, v23, v24, "[EncoreEngine] Starting node %s mode: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  v36 = v147;
  v150 = v6;
  if (!a2)
  {
    goto LABEL_21;
  }

  while (1)
  {

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v154 = v41;
      *v40 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v156);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v42 = String.init<A>(describing:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v154);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      *&v156 = 0;
      *(&v156 + 1) = 0xE000000000000000;
      v45 = 0xE600000000000000;
      v46 = 0x7075727265746E69;
      if (v36 == 2)
      {
        v45 = 0xE900000000000074;
      }

      else
      {
        v46 = 0x705570617277;
      }

      v47 = 0x6C616D726F6ELL;
      if (v36)
      {
        v47 = 0x656D75736572;
      }

      if (v36 <= 1u)
      {
        v48 = v47;
      }

      else
      {
        v48 = v46;
      }

      if (v36 <= 1u)
      {
        v49 = 0xE600000000000000;
      }

      else
      {
        v49 = v45;
      }

      MEMORY[0x1E12A1580](v48, v49);

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, *(&v156 + 1), &v154);

      *(v40 + 14) = v50;
      _os_log_impl(&dword_1DC659000, v38, v39, "[EncoreEngine] ActiveFlow %s mode: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v41, -1, -1);
      MEMORY[0x1E12A2F50](v40, -1, -1);

      v51 = v36;
    }

    else
    {

      v51 = v147;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(a2 + 16) + 176, &v154, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    if (!v155)
    {
      v147 = v51;
      LODWORD(v151) = v36;
      outlined destroy of ReferenceResolutionClientProtocol?(&v154, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      goto LABEL_58;
    }

    outlined init with take of ReferenceResolutionClientProtocol(&v154, &v156);
    if (v51 <= 1u)
    {
      if (v51 != 1)
      {
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v97 = type metadata accessor for TaskPriority();
        v98 = __swift_project_value_buffer(v97, static EncoreEngine.TaskPriority);
        v99 = *(v97 - 8);
        v100 = v132;
        (*(v99 + 16))(v132, v98, v97);
        (*(v99 + 56))(v100, 0, 1, v97);
        outlined init with copy of ReferenceResolutionClientProtocol(&v156, &v154);
        v101 = v133;
        v151 = *(v133 + 16);
        v102 = v134;
        v151(v135, v136, v134);
        v103 = (*(v101 + 80) + 80) & ~*(v101 + 80);
        v104 = (v131 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
        v105 = swift_allocObject();
        v105[2] = 0;
        v105[3] = 0;
        outlined init with take of ReferenceResolutionClientProtocol(&v154, (v105 + 4));
        v105[9] = a2;
        v106 = *(v101 + 32);
        v107 = v105 + v103;
        v108 = v135;
        v106(v107, v135, v102);
        *(v105 + v104) = v6;

        v109 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v100, &closure #1 in EncoreEngine.action(mode:starting:context:completion:)partial apply, v105);
        outlined destroy of ReferenceResolutionClientProtocol?(v100, &_sScPSgMd, &_sScPSgMR);
        v151(v108, v136, v102);
        v110 = type metadata accessor for ExecutableTask(0);
        v111 = *(v110 + 48);
        v112 = *(v110 + 52);
        v113 = swift_allocObject();
        *(v113 + 16) = a2;
        v106((v113 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context), v108, v102);
        *(v113 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = v109;
        v114 = (v113 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
        v115 = v146;
        *v114 = v145;
        v114[1] = v115;
        swift_beginAccess();

        MEMORY[0x1E12A1680](v116);
        if (*((*(v6 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v126 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        goto LABEL_72;
      }

      outlined init with copy of ReferenceResolutionClientProtocol(&v156, &v154);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v153 = v63;
        *v62 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol(&v154, v152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
        v64 = String.init<A>(describing:)();
        v66 = v65;
        __swift_destroy_boxed_opaque_existential_1Tm(&v154);
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v153);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_1DC659000, v60, v61, "[EncoreEngine] Executing flow: %s resumes.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x1E12A2F50](v63, -1, -1);
        MEMORY[0x1E12A2F50](v62, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v154);
      }

      v82 = 0;
      v83 = 0;
      goto LABEL_57;
    }

    if (v51 != 2)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol(&v156, &v154);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v153 = v55;
      *v54 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v154, v152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v56 = String.init<A>(describing:)();
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_1Tm(&v154);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v153);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1DC659000, v52, v53, "[EncoreEngine] Executing flow: %s interrupted.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1E12A2F50](v55, -1, -1);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v154);
    }

    __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
    v78 = swift_allocError();
    BargeInError.init(rawError:)();
    dispatch thunk of Executable.cancel(error:)();

    v79 = v142;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v142);
    v80 = v143;
    v81 = v144;
    (*(v143 + 104))(v79, *MEMORY[0x1E69CFAE8], v144);
    static FlowTrace.trace(event:)();
    (*(v80 + 8))(v79, v81);
    v82 = 3;
    v83 = 3;
LABEL_57:
    v147 = v82;
    LODWORD(v151) = v83;
    __swift_destroy_boxed_opaque_existential_1Tm(&v156);
LABEL_58:
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v89 = swift_allocObject();
    v149 = &v129;
    v90 = v145;
    v89[2] = v88;
    v89[3] = v90;
    v89[4] = v146;
    v91 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v89);
    v92 = v150;
    *(&v129 - 4) = a2;
    *(&v129 - 3) = v92;
    *(&v129 - 2) = closure #2 in EncoreEngine.action(mode:starting:context:completion:)partial apply;
    *(&v129 - 1) = v93;
    v94 = one-time initialization token for $conversationContext;
    swift_retain_n();

    if (v94 != -1)
    {
      swift_once();
    }

    *&v156 = v91;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
    swift_task_localValuePush();
    type metadata accessor for SiriEnvironment();
    ActingFlowAgent.environment.getter();
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    swift_task_localValuePop();

    swift_beginAccess();
    v95 = *(v88 + 16);

    v6 = v150;
    v36 = v151;
    if (v95)
    {
      goto LABEL_73;
    }

LABEL_21:
    v37 = (*(**(v6 + 24) + 216))();
    if (!v37)
    {
      v96 = v138;
      swift_storeEnumTagMultiPayload();
      v145(v96);
      outlined destroy of EncoreEngine.EngineEvent(v96, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_73:
      flushProcessWideSiriEnvironmentCache()();
      return;
    }

    a2 = v37;
  }

  LODWORD(v151) = v36;
  __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
  v68 = v139;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v69 = (*(v140 + 88))(v68, v141);
  if (v69 == *MEMORY[0x1E69CFF50] || v69 == *MEMORY[0x1E69CFF48])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v156, &v154);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v153 = v120;
      *v119 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v154, v152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v121 = String.init<A>(describing:)();
      v123 = v122;
      __swift_destroy_boxed_opaque_existential_1Tm(&v154);
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &v153);

      *(v119 + 4) = v124;
      _os_log_impl(&dword_1DC659000, v117, v118, "[EncoreEngine] Wrapping up. Yield executable flow: %s.", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v120);
      MEMORY[0x1E12A2F50](v120, -1, -1);
      MEMORY[0x1E12A2F50](v119, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v154);
    }

    v125 = v138;
    swift_storeEnumTagMultiPayload();
    v145(v125);

    outlined destroy of EncoreEngine.EngineEvent(v125, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_72:
    __swift_destroy_boxed_opaque_existential_1Tm(&v156);
    goto LABEL_73;
  }

  if (v69 == *MEMORY[0x1E69CFF58])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v156, &v154);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v153 = v73;
      *v72 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v154, v152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v74 = String.init<A>(describing:)();
      v76 = v75;
      __swift_destroy_boxed_opaque_existential_1Tm(&v154);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v153);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_1DC659000, v70, v71, "[EncoreEngine] Wrapping up. Notify executable flow: %s with FlowOperationIgnored.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x1E12A2F50](v73, -1, -1);
      MEMORY[0x1E12A2F50](v72, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v154);
    }

    __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
    type metadata accessor for FlowOperationIgnored();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowOperationIgnored and conformance FlowOperationIgnored, 255, MEMORY[0x1E69CFB80]);
    v84 = swift_allocError();
    MEMORY[0x1E129A900](0xD000000000000054, 0x80000001DCA82B90);
    dispatch thunk of Executable.cancel(error:)();

    v85 = v142;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v142);
    v86 = v143;
    v87 = v144;
    (*(v143 + 104))(v85, *MEMORY[0x1E69CFAE8], v144);
    static FlowTrace.trace(event:)();
    (*(v86 + 8))(v85, v87);
    v82 = 3;
    v83 = v151;
    goto LABEL_57;
  }

  *&v154 = 0;
  *(&v154 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA82B60);
  __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
  v127 = v130;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v128 = v141;
  _print_unlocked<A, B>(_:_:)();
  (*(v140 + 8))(v127, v128);
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v154, *(&v154 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 551);
  __break(1u);
}

uint64_t closure #6 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #6 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #6 in EncoreEngine.handleExternal(event:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v5 = swift_allocError();
  *v6 = 0xD00000000000001DLL;
  v6[1] = 0x80000001DCA82C50;
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v4(v1);
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);

  v7 = v0[1];

  return v7();
}

Swift::Void __swiftcall EventQueue.finish()()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
}

uint64_t closure #1 in EncoreEngine.ensureReady()(uint64_t *a1, uint64_t a2)
{
  v89 = a2;
  v84 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v3 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v85 = (&v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for InterruptionPolicy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - v10;
  v12 = *a1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.executor);

  v86 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v88 = v11;
    v19 = v18;
    *&v91 = v18;
    *v17 = 136315138;
    v20 = *(*(v12 + 16) + 16);
    v83 = v12;
    outlined init with copy of ReferenceResolutionClientProtocol?(v20 + 176, v93, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v91);

    *(v17 + 4) = v23;
    v12 = v83;
    _os_log_impl(&dword_1DC659000, v15, v16, "[EncoreEngine] Checking executable %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v24 = v19;
    v11 = v88;
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  v25 = *(v12 + 16);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v25 + 16) + 176, &v91, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
  if (!v92)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v91, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    return 1;
  }

  v26 = outlined init with take of ReferenceResolutionClientProtocol(&v91, v93);
  v27 = *(v89 + 24);
  v28 = (*(*v27 + 192))(v26);
  do
  {
    if (!v28)
    {
      goto LABEL_22;
    }

    Strong = swift_weakLoadStrong();

    v30 = v25 == v28;
    v28 = Strong;
  }

  while (!v30);

  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  dispatch thunk of Executable.interruptionPolicy.getter();
  v31 = v87;
  (*(v6 + 2))(v87, v11, v5);
  v32 = (*(v6 + 11))(v31, v5);
  if (v32 == *MEMORY[0x1E69CFF50])
  {
    v87 = v6;
    v88 = v11;

    v33 = v12;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136315138;
      v38 = *(*(v33 + 16) + 16);
      v89 = v5;
      v90[0] = v37;
      outlined init with copy of ReferenceResolutionClientProtocol?(v38 + 176, &v91, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v90);

      *(v36 + 4) = v41;
      v5 = v89;
      _os_log_impl(&dword_1DC659000, v34, v35, "[EncoreEngine] Interruption: %s interrupted with .clear policy.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    MEMORY[0x1E12A1950](*(v33 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    (*(*v27 + 248))(*(v33 + 16));

    v42 = v33 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
    v43 = 1;
    swift_beginAccess();
    v44 = *v42;
    v45 = *(v42 + 8);
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(33);
    outlined init with copy of ReferenceResolutionClientProtocol(*(*(v33 + 16) + 16) + 56, &v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v46 = String.init<A>(describing:)();
    v48 = v47;

    *&v91 = v46;
    *(&v91 + 1) = v48;
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA82C70);
    v49 = v91;
    type metadata accessor for FlowAbort();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowAbort and conformance FlowAbort, 255, MEMORY[0x1E69CFB98]);
    v50 = swift_allocError();
    MEMORY[0x1E129A9E0](v49, *(&v49 + 1));
    v51 = v85;
    *v85 = v50;
    swift_storeEnumTagMultiPayload();
    v44(v51);

    outlined destroy of EncoreEngine.EngineEvent(v51, type metadata accessor for EncoreEngine.ActionOutcome);
    (*(v87 + 1))(v88, v5);
    v52 = *(v42 + 8);
    *v42 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    *(v42 + 8) = 0;

    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    return v43;
  }

  if (v32 == *MEMORY[0x1E69CFF48])
  {
    v53 = v12;
    v54 = v12 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
    swift_beginAccess();
    v56 = *v54;
    v55 = *(v54 + 8);
    v57 = v85;
    swift_storeEnumTagMultiPayload();

    v56(v57);

    outlined destroy of EncoreEngine.EngineEvent(v57, type metadata accessor for EncoreEngine.ActionOutcome);
    v58 = *(v54 + 8);
    *v54 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    *(v54 + 8) = 0;

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v94 = v62;
      *v61 = 136315138;
      v63 = *(*(v53 + 16) + 16);
      v87 = v6;
      outlined init with copy of ReferenceResolutionClientProtocol?(v63 + 176, &v91, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      v64 = String.init<A>(describing:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v94);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1DC659000, v59, v60, "[EncoreEngine] Interruption: %s continues to run.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1E12A2F50](v62, -1, -1);
      MEMORY[0x1E12A2F50](v61, -1, -1);

      (*(v87 + 1))(v11, v5);
    }

    else
    {

      (*(v6 + 1))(v11, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    return 0;
  }

  if (v32 == *MEMORY[0x1E69CFF58])
  {

    v67 = v12;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90[0] = v71;
      *v70 = 136315138;
      v72 = *(*(v67 + 16) + 16);
      v83 = v67;
      v87 = v6;
      outlined init with copy of ReferenceResolutionClientProtocol?(v72 + 176, &v91, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      v73 = String.init<A>(describing:)();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v90);
      v67 = v83;

      *(v70 + 4) = v75;
      v6 = v87;
      _os_log_impl(&dword_1DC659000, v68, v69, "[EncoreEngine] Interruption: %s interrupted with .notify policy.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1E12A2F50](v71, -1, -1);
      MEMORY[0x1E12A2F50](v70, -1, -1);
    }

    v76 = *(v67 + 16);
    v77 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
    v78 = v67 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
    swift_beginAccess();
    v79 = *v78;
    v80 = *(v78 + 8);

    EncoreEngine.action(mode:starting:context:completion:)(2, v76, v67 + v77, v79, v80);

    MEMORY[0x1E12A1950](*(v67 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    (*(v6 + 1))(v11, v5);
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    return 1;
  }

  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA82B60);
  _print_unlocked<A, B>(_:_:)();
  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v91, *(&v91 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 435);
  __break(1u);
  return result;
}

uint64_t closure #1 in EncoreEngine.discover(request:)(void *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v51 = a3;
  v48 = type metadata accessor for AcceptanceType();
  v45 = *(v48 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for FlowTraceEvent();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Acceptance();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = *(type metadata accessor for SiriRequest(0) + 20);
  v19 = v45;
  dispatch thunk of InputAccepting.accept(input:)();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14InputAccepting_p4flow_AA0D0V5inputAA10AcceptanceV6resulttMd, &_s11SiriKitFlow14InputAccepting_p4flow_AA0D0V5inputAA10AcceptanceV6resulttMR);
  v21 = *(v20 + 48);
  v22 = *(v20 + 64);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v12);
  v23 = type metadata accessor for Input();
  v24 = a2 + v18;
  v25 = v43;
  (*(*(v23 - 8) + 16))(&v12[v21], v24, v23);
  v26 = &v12[v22];
  v27 = v44;
  v28 = v46;
  (*(v25 + 16))(v26, v16, v44);
  v29 = v47;
  (*(v9 + 104))(v12, *MEMORY[0x1E69CFAC0], v47);
  static FlowTrace.trace(event:)();
  v30 = v12;
  v31 = v48;
  (*(v9 + 8))(v30, v29);
  Acceptance.type.getter();
  v32 = (*(v19 + 88))(v28, v31);
  if (v32 == *MEMORY[0x1E69CFE38])
  {
    (*(v19 + 96))(v28, v31);
    outlined init with take of ReferenceResolutionClientProtocol(v28, &v53);
    v33 = v49;
    (*(**(v50 + 24) + 232))(v49);

    outlined init with copy of ReferenceResolutionClientProtocol(&v53, v52);
    v34 = EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(v33, v52, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    (*(v25 + 8))(v16, v27);
    v35 = *v51;
    *v51 = v34;
  }

  v36 = v49;
  v37 = v51;
  if (v32 == *MEMORY[0x1E69CFE40])
  {
    (*(v19 + 96))(v28, v31);
    outlined init with take of ReferenceResolutionClientProtocol(v28, &v53);
    outlined init with copy of ReferenceResolutionClientProtocol(&v53, v52);
    v38 = EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(v36, v52, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    (*(v25 + 8))(v16, v27);
    v39 = *v37;
    *v37 = v38;
  }

  if (v32 == *MEMORY[0x1E69CFE30])
  {
    (*(v25 + 8))(v16, v27);
    v40 = *v37;
    *v37 = v36;
  }

  if (v32 == *MEMORY[0x1E69CFE28])
  {
    return (*(v25 + 8))(v16, v27);
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  MEMORY[0x1E12A1580](0xD000000000000028, 0x80000001DCA82B30);
  _print_unlocked<A, B>(_:_:)();
  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v53, v54, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 463);
  __break(1u);
  return result;
}

uint64_t closure #1 in EncoreEngine.discover(event:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = one-time initialization token for $conversationContext;

  if (v3 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
  swift_task_localValuePush();
  type metadata accessor for SiriEnvironment();
  ActingFlowAgent.environment.getter();
  static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

  swift_task_localValuePop();
}

uint64_t closure #1 in closure #1 in EncoreEngine.discover(event:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  swift_unknownObjectRetain();
  v7 = a3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20SnippetEventHandling_pMd, &_s11SiriKitFlow20SnippetEventHandling_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v16 = v7;
    _os_log_impl(&dword_1DC659000, v8, v9, "[EncoreEngine] Passing snippet event to %s. event: %@", v10, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  return a4();
}

uint64_t closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v10 = *(v9 + 64) + 15;
  v7[29] = swift_task_alloc();
  v11 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[30] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v13 = type metadata accessor for FlowTraceEvent();
  v7[33] = v13;
  v14 = *(v13 - 8);
  v7[34] = v14;
  v15 = *(v14 + 64) + 15;
  v7[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreEngine.action(mode:starting:context:completion:), 0, 0);
}

uint64_t closure #1 in EncoreEngine.action(mode:starting:context:completion:)()
{
  v21 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  v0[36] = __swift_project_value_buffer(v2, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol((v0 + 2), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v20);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] Executing flow: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v11 = v0[25];
  v12 = v0[23];
  v13 = *(v0[24] + 16);
  v0[37] = v13;
  v14 = swift_task_alloc();
  v0[38] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v15 = one-time initialization token for $conversationContext;

  if (v15 != -1)
  {
    swift_once();
  }

  v0[22] = v13;
  v16 = swift_task_alloc();
  v0[39] = v16;
  v16[2] = v13;
  v16[3] = &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  v16[4] = v14;
  v17 = *(MEMORY[0x1E69E8950] + 4);

  v18 = swift_task_alloc();
  v0[40] = v18;
  *v18 = v0;
  v18[1] = closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  v23 = 32;
  v24 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE98]();
}

{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v5 = closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  }

  else
  {
    v5 = closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v23 = v0;
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  outlined init with copy of ReferenceResolutionClientProtocol(v1 + 56, v3);
  (*(v4 + 104))(v3, *MEMORY[0x1E69CFAE0], v5);
  static FlowTrace.trace(event:)();
  (*(v4 + 8))(v3, v5);
  if (static Task<>.isCancelled.getter())
  {
    v6 = v0[35];
    v7 = v0[31];
    v8 = v0[32];
    v9 = v0[29];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[36];
    outlined init with copy of ReferenceResolutionClientProtocol(v0[23], (v0 + 7));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DC659000, v13, v14, "[EncoreEngine] Executing flow: %s completed.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = static FlowActor.shared;

    return MEMORY[0x1EEE6DFA0](closure #1 in EncoreEngine.action(mode:starting:context:completion:), v21, 0);
  }
}

{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = *(v0[26] + 16);
  *v1 = v0[37];
  swift_storeEnumTagMultiPayload();
  v8 = *(*v7 + 96);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v1, v2, type metadata accessor for EncoreEngine.EngineEvent);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v6 + 8))(v4, v5);
  outlined destroy of EncoreEngine.EngineEvent(v1, type metadata accessor for EncoreEngine.EngineEvent);
  v9 = v0[35];
  v10 = v0[31];
  v11 = v0[32];
  v12 = v0[29];

  v13 = v0[1];

  return v13();
}

void closure #1 in EncoreEngine.action(mode:starting:context:completion:)()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
}

uint64_t closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for ExecutionContext();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  ConversationContext.executionContext.getter();
  v6 = *(MEMORY[0x1E69CFD38] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  v8 = v0[6];

  return MEMORY[0x1EEE39458](v8, v4, v5);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t closure #3 in EncoreEngine.action(mode:starting:context:completion:)(NSObject *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v182 = a4;
  v183 = a3;
  v6 = type metadata accessor for PluginAction();
  v175 = *(v6 - 8);
  v7 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v174 = &v169 - v11;
  v173 = type metadata accessor for FlowUnhandledReason();
  v12 = *(v173 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v177 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v15 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v181 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = type metadata accessor for FlowActionType();
  v186 = *(v185 - 8);
  v17 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v170 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v169 - v20;
  v22 = type metadata accessor for FlowTraceEvent();
  v192 = *(v22 - 8);
  v23 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v188 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.executor);

  v190 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v191 = a1;
  v189 = a2;
  v172 = v12;
  v171 = v9;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v197 = v31;
    *v30 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(a1[2].isa + 56, &v200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v197);

    *(v30 + 4) = v34;
    a2 = v189;
    _os_log_impl(&dword_1DC659000, v27, v28, "[EncoreEngine] Calling action on node %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  v176 = v6;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = v22;
  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v200 = v39;
    *v38 = 136315138;
    v40 = (*(**(a2 + 24) + 304))(closure #1 in OrderedForest<A>.debugDescription(), 0);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v200);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1DC659000, v35, v36, "[EncoreEngine] Current Flow Tree:\n%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  v43 = v191;
  v44 = *(v191->isa + 16);
  v187 = v44();
  isa = v43[2].isa;
  outlined init with copy of ReferenceResolutionClientProtocol(isa + 56, &v197);
  __swift_project_boxed_opaque_existential_1(&v197, *(&v198 + 1));
  dispatch thunk of ActingFlow.action.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v197);
  v184 = isa;
  v46 = v188;
  outlined init with copy of ReferenceResolutionClientProtocol(isa + 56, v188);
  outlined init with copy of ReferenceResolutionClientProtocol(&v200, v46 + 40);
  v47 = *MEMORY[0x1E69CFAC8];
  v48 = v192;
  v49 = *(v192 + 104);
  v50 = v37;
  v179 = v192 + 104;
  v178 = v49;
  v49(v46, v47, v37);
  static FlowTrace.trace(event:)();
  v51 = *(v48 + 8);
  v192 = v48 + 8;
  v51(v46, v50);
  __swift_project_boxed_opaque_existential_1(&v200, v201);
  dispatch thunk of FlowAction.type.getter();
  v52 = v186;
  v53 = v185;
  v54 = (*(v186 + 88))(v21, v185);
  if (v54 == *MEMORY[0x1E69CFAA0])
  {
    (*(v52 + 96))(v21, v53);
    outlined init with take of ReferenceResolutionClientProtocol(v21, &v197);
    outlined init with copy of ReferenceResolutionClientProtocol(&v197, &v194);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v202 = v58;
      *v57 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(v184 + 56, v193);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v59 = String.init<A>(describing:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v202);

      *(v57 + 4) = v61;
      v43 = v191;
      *(v57 + 12) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol(&v194, v193);
      v62 = String.init<A>(describing:)();
      v64 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(&v194);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v202);

      *(v57 + 14) = v65;
      _os_log_impl(&dword_1DC659000, v55, v56, "[EncoreEngine] Delegate to %s child: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v58, -1, -1);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v194);
    }

    outlined init with copy of ReferenceResolutionClientProtocol(&v197, &v194);
    EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(v43, &v194, 1);

    outlined destroy of ReferenceResolutionClientProtocol?(&v194, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v76 = &v197;
LABEL_44:
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v200);
  }

  if (v54 == *MEMORY[0x1E69CFA98])
  {
    v177 = v51;
    (*(v52 + 96))(v21, v53);
    LODWORD(v186) = v21[72];
    outlined init with take of Any(v21, v193);
    v66 = *(v21 + 3);
    v197 = *(v21 + 2);
    v198 = v66;
    v199 = *(v21 + 8);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v202 = v185;
      *v69 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(v184 + 56, &v194);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v70 = String.init<A>(describing:)();
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v202);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2080;
      v74 = (v44)(v73);
      if (v74)
      {
        v75 = *(v74 + 16);

        outlined init with copy of ReferenceResolutionClientProtocol(v75 + 56, &v194);
      }

      else
      {
        v196 = 0;
        v194 = 0u;
        v195 = 0u;
      }

      v92 = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
      v113 = String.init<A>(describing:)();
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, &v202);

      *(v69 + 14) = v115;
      _os_log_impl(&dword_1DC659000, v67, v68, "[EncoreEngine] Conclude %s parent: %s", v69, 0x16u);
      v116 = v185;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v116, -1, -1);
      MEMORY[0x1E12A2F50](v69, -1, -1);
    }

    else
    {

      v92 = v187;
    }

    (*(**(v189 + 24) + 240))(v191);

    v117 = v184;
    outlined init with copy of ReferenceResolutionClientProtocol?(v184 + 96, &v194, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    if (*(&v195 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
      if (v92)
      {
        v118 = *(v92 + 16);
      }

      else
      {
        v118 = 0;
      }

      LifeCycleModifier.onDetached(value:parentFlowContext:)(v193, v118);

      __swift_destroy_boxed_opaque_existential_1Tm(&v194);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v194, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    }

    v119 = v188;
    outlined init with copy of ReferenceResolutionClientProtocol(v117 + 56, v188);
    outlined init with copy of Any(v193, v119 + 40);
    v178(v119, *MEMORY[0x1E69CFAD8], v50);
    static FlowTrace.trace(event:)();
    (v177)(v119, v50);
    EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(0, &v197, 1);

    if (v186)
    {

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v202 = v123;
        *v122 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol(v117 + 56, &v194);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
        v124 = String.init<A>(describing:)();
        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v202);

        *(v122 + 4) = v126;
        _os_log_impl(&dword_1DC659000, v120, v121, "[EncoreEngine] Conclude and yield %s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v123);
        MEMORY[0x1E12A2F50](v123, -1, -1);
        MEMORY[0x1E12A2F50](v122, -1, -1);
      }

      v127 = v181;
      swift_storeEnumTagMultiPayload();
      v183(v127);

      outlined destroy of EncoreEngine.EngineEvent(v127, type metadata accessor for EncoreEngine.ActionOutcome);
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(&v197, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v76 = v193;
    goto LABEL_44;
  }

  if (v54 == *MEMORY[0x1E69CFA80])
  {
    (*(v52 + 96))(v21, v53);
    v77 = *v21;
    v78 = v191;

    v79 = v77;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v194 = v84;
      *v82 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(v184 + 56, &v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v85 = String.init<A>(describing:)();
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v194);
      v78 = v191;

      *(v82 + 4) = v87;
      *(v82 + 12) = 2112;
      v88 = v77;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v89;
      *v83 = v89;
      _os_log_impl(&dword_1DC659000, v80, v81, "[EncoreEngine] Abort flow: %s reason: %@", v82, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v83, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1E12A2F50](v84, -1, -1);
      MEMORY[0x1E12A2F50](v82, -1, -1);
    }

    (*(**(v189 + 24) + 248))(v78);

    v90 = v181;
    *v181 = v77;
    swift_storeEnumTagMultiPayload();
    v91 = v77;
    v183(v90);

    goto LABEL_25;
  }

  if (v54 == *MEMORY[0x1E69CFA88])
  {
    (*(v52 + 96))(v21, v53);
    v94 = *v21;
    v93 = *(v21 + 1);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v194 = v98;
      *v97 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(v184 + 56, &v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v99 = String.init<A>(describing:)();
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v194);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_1DC659000, v95, v96, "[EncoreEngine] Yield %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x1E12A2F50](v98, -1, -1);
      MEMORY[0x1E12A2F50](v97, -1, -1);
    }

    v94();
    v90 = v181;
    swift_storeEnumTagMultiPayload();
    v183(v90);

    goto LABEL_25;
  }

  if (v54 == *MEMORY[0x1E69CFAB0])
  {
    (*(v52 + 96))(v21, v53);
    v102 = v172;
    v103 = v173;
    (*(v172 + 32))(v177, v21, v173);

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v194 = v107;
      *v106 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(v184 + 56, &v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v108 = String.init<A>(describing:)();
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &v194);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_1DC659000, v104, v105, "[EncoreEngine] Unhandled flow: %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x1E12A2F50](v107, -1, -1);
      MEMORY[0x1E12A2F50](v106, -1, -1);
    }

    v111 = v181;
    v112 = v177;
    (*(v102 + 16))(v181, v177, v103);
    swift_storeEnumTagMultiPayload();
    v183(v111);

    outlined destroy of EncoreEngine.EngineEvent(v111, type metadata accessor for EncoreEngine.ActionOutcome);
    (*(v102 + 8))(v112, v103);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v200);
  }

  if (v54 == *MEMORY[0x1E69CFAA8])
  {
    v177 = v51;
    (*(v52 + 96))(v21, v53);
    v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_syp9exitValue_11SiriKitFlow12PluginActionV04nextfG0tMd, &_syp9exitValue_11SiriKitFlow12PluginActionV04nextfG0tMR) + 48);
    outlined init with take of Any(v21, &v194);
    v130 = v175;
    v131 = &v21[v129];
    v132 = v174;
    v133 = v176;
    (*(v175 + 32))(v174, v131, v176);
    v134 = v171;
    v186 = *(v130 + 16);
    (v186)(v171, v132, v133);

    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v193[0] = v190;
      *v137 = 136315394;
      lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, 255, MEMORY[0x1E69CFE08]);
      v138 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v139;
      v141 = v134;
      v142 = *(v130 + 8);
      v142(v141, v176);
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, v193);

      *(v137 + 4) = v143;
      *(v137 + 12) = 2080;
      v144 = v184;
      outlined init with copy of ReferenceResolutionClientProtocol(v184 + 56, &v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v145 = String.init<A>(describing:)();
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, v193);

      *(v137 + 14) = v147;
      _os_log_impl(&dword_1DC659000, v135, v136, "[EncoreEngine] Redirect nextPluginAction: %s flow: %s", v137, 0x16u);
      v148 = v190;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v148, -1, -1);
      v149 = v137;
      v133 = v176;
      MEMORY[0x1E12A2F50](v149, -1, -1);
    }

    else
    {

      v162 = v134;
      v142 = *(v130 + 8);
      v142(v162, v133);
      v144 = v184;
    }

    (*(**(v189 + 24) + 240))(v191);

    outlined init with copy of ReferenceResolutionClientProtocol?(v144 + 96, &v197, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    v163 = v187;
    if (*(&v198 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v197, *(&v198 + 1));
      if (v163)
      {
        v164 = *(v163 + 16);
      }

      else
      {
        v164 = 0;
      }

      LifeCycleModifier.onDetached(value:parentFlowContext:)(&v194, v164);

      __swift_destroy_boxed_opaque_existential_1Tm(&v197);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v197, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    }

    v165 = v188;
    outlined init with copy of ReferenceResolutionClientProtocol(v144 + 56, v188);
    outlined init with copy of Any(&v194, v165 + 40);
    v178(v165, *MEMORY[0x1E69CFAD8], v50);
    static FlowTrace.trace(event:)();
    (v177)(v165, v50);
    v166 = v181;
    v167 = v174;
    (v186)(v181, v174, v133);
    swift_storeEnumTagMultiPayload();
    v183(v166);

    outlined destroy of EncoreEngine.EngineEvent(v166, type metadata accessor for EncoreEngine.ActionOutcome);
    v142(v167, v133);
    v76 = &v194;
    goto LABEL_44;
  }

  if (v54 == *MEMORY[0x1E69CFA90])
  {
    (*(v52 + 96))(v21, v53);
    v151 = *v21;
    v150 = *(v21 + 1);
    v153 = *(v21 + 2);
    v152 = *(v21 + 3);

    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v194 = v192;
      *v156 = 136315650;
      *(v156 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v150, &v194);
      *(v156 + 12) = 2080;
      *(v156 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v152, &v194);
      *(v156 + 22) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol(v184 + 56, &v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v157 = String.init<A>(describing:)();
      v191 = v154;
      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, &v194);

      *(v156 + 24) = v159;
      v160 = v191;
      _os_log_impl(&dword_1DC659000, v191, v155, "[EncoreEngine] Reparse requestID: %s userID: %s flow: %s", v156, 0x20u);
      v161 = v192;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v161, -1, -1);
      MEMORY[0x1E12A2F50](v156, -1, -1);
    }

    else
    {
    }

    v90 = v181;
    *v181 = v151;
    v90[1] = v150;
    v90[2] = v153;
    v90[3] = v152;
    swift_storeEnumTagMultiPayload();
    v183(v90);
LABEL_25:

    outlined destroy of EncoreEngine.EngineEvent(v90, type metadata accessor for EncoreEngine.ActionOutcome);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v200);
  }

  *&v197 = 0;
  *(&v197 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  MEMORY[0x1E12A1580](0xD000000000000029, 0x80000001DCA82C20);
  __swift_project_boxed_opaque_existential_1(&v200, v201);
  v168 = v170;
  dispatch thunk of FlowAction.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v52 + 8))(v168, v53);
  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v197, *(&v197 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 608);
  __break(1u);
  return result;
}

uint64_t LifeCycleModifier.onDetached(value:parentFlowContext:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v2 = one-time initialization token for $conversationContext;
    swift_retain_n();
    if (v2 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
    swift_task_localValuePush();
    type metadata accessor for SiriEnvironment();
    ActingFlowAgent.environment.getter();
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    swift_task_localValuePop();
  }

  else
  {

    return dispatch thunk of LifeCycleModifier.onDetached(value:)();
  }
}

uint64_t EncoreEngine.push(parentNode:flowAgent:)(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowTraceEvent();
  v106 = *(v4 - 8);
  v5 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16AttachmentOptionOSgMd, &_s11SiriKitFlow16AttachmentOptionOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v98 - v9;
  v11 = type metadata accessor for AttachmentOption();
  v107 = *(v11 - 8);
  v12 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = &unk_1EE159000;
  if (!a1)
  {
    goto LABEL_67;
  }

  v104 = &v98 - v17;
  v103 = v16;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2 + 96, &v117, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  if (!*(&v118 + 1))
  {

    outlined destroy of ReferenceResolutionClientProtocol?(&v117, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    v19 = v107;
    v20 = v103;
    (*(v107 + 56))(v10, 1, 1, v103);
LABEL_6:
    v21 = v104;
    static AttachmentOption.Default.getter();
    if ((*(v19 + 48))(v10, 1, v20) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow16AttachmentOptionOSgMd, &_s11SiriKitFlow16AttachmentOptionOSgMR);
    }

    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));

  dispatch thunk of LifeCycleModifier.attachmentOption.getter();
  v19 = v107;
  v20 = v103;
  (*(v107 + 56))(v10, 0, 1, v103);
  __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  if ((*(v19 + 48))(v10, 1, v20) == 1)
  {
    goto LABEL_6;
  }

  v21 = v104;
  (*(v19 + 32))(v104, v10, v20);
LABEL_8:
  (*(v19 + 16))(v14, v21, v20);
  LODWORD(v22) = (*(v19 + 88))(v14, v20);
  if (v22 != *MEMORY[0x1E69CFEC0])
  {
    goto LABEL_35;
  }

  v102 = a2;
  (*(v19 + 96))(v14, v20);
  a2 = *v14;
  if (one-time initialization token for executor != -1)
  {
LABEL_49:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);

  v24 = v102;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v101 = v4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v113 = v29;
    *v28 = 136315650;
    v30 = Set.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v113);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol(v24 + 16, &v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v113);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v117);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v113);

    *(v28 + 24) = v38;
    _os_log_impl(&dword_1DC659000, v25, v26, "[EncoreEngine] Attachment option: detach(%s) flow: %s parent: %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  v39 = (*(*a1 + 152))();
  v116 = MEMORY[0x1E69E7CC0];
  if (v39 >> 62)
  {
    v77 = v39;
    v40 = __CocoaSet.count.getter();
    v39 = v77;
    if (v40)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
LABEL_14:
      v99 = a1;
      a1 = 0;
      v108 = v39 & 0xFFFFFFFFFFFFFF8;
      v109 = v39 & 0xC000000000000001;
      v100 = v39;
      v41 = v39 + 32;
      v42 = a2 + 56;
      v20 = &_s11SiriKitFlow17LifeCycleModifier_pSgMR;
      v4 = 40;
      while (1)
      {
        if (v109)
        {
          v22 = MEMORY[0x1E12A1FE0](a1, v100);
          v43 = v22;
          v44 = __OFADD__(a1++, 1);
          if (v44)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            if (v22 == *MEMORY[0x1E69CFEB8])
            {
              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v51 = type metadata accessor for Logger();
              __swift_project_value_buffer(v51, static Logger.executor);

              v52 = Logger.logObject.getter();
              v53 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                *&v113 = v55;
                *v54 = 136315394;
                outlined init with copy of ReferenceResolutionClientProtocol(a2 + 16, &v117);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
                v56 = String.init<A>(describing:)();
                v57 = v4;
                v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v113);

                *(v54 + 4) = v59;
                *(v54 + 12) = 2080;
                outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v117);
                v60 = String.init<A>(describing:)();
                v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v113);

                *(v54 + 14) = v62;
                v4 = v57;
                _os_log_impl(&dword_1DC659000, v52, v53, "[EncoreEngine] Attachment option: detachSiblings flow: %s parent: %s", v54, 0x16u);
                swift_arrayDestroy();
                v63 = v55;
                v20 = v103;
                MEMORY[0x1E12A2F50](v63, -1, -1);
                MEMORY[0x1E12A2F50](v54, -1, -1);
              }

              (*(**(v110 + 24) + 232))(a1);

LABEL_47:

              (*(v107 + 8))(v104, v20);
            }

            else
            {
              if (v22 != *MEMORY[0x1E69CFEB0])
              {
                *&v117 = 0;
                *(&v117 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(44);
                MEMORY[0x1E12A1580](0xD00000000000002ALL, 0x80000001DCA82B00);
                _print_unlocked<A, B>(_:_:)();
                result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v117, *(&v117 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 659);
                __break(1u);
                return result;
              }

              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v65 = type metadata accessor for Logger();
              __swift_project_value_buffer(v65, static Logger.executor);

              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.debug.getter();

              if (!os_log_type_enabled(v66, v67))
              {

                goto LABEL_47;
              }

              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *&v113 = v69;
              *v68 = 136315394;
              outlined init with copy of ReferenceResolutionClientProtocol(a2 + 16, &v117);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
              v70 = String.init<A>(describing:)();
              v71 = v4;
              v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v113);

              *(v68 + 4) = v73;
              *(v68 + 12) = 2080;
              outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v117);
              v74 = String.init<A>(describing:)();
              v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v113);

              *(v68 + 14) = v76;
              v4 = v71;
              _os_log_impl(&dword_1DC659000, v66, v67, "[EncoreEngine] Attachment option: detachNone flow: %s parent: %s", v68, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v69, -1, -1);
              MEMORY[0x1E12A2F50](v68, -1, -1);

              (*(v107 + 8))(v104, v103);
            }

LABEL_66:
            v18 = &unk_1EE159000;
LABEL_67:
            if (v18[389] != -1)
            {
              goto LABEL_79;
            }

            goto LABEL_68;
          }
        }

        else
        {
          if (a1 >= *(v108 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          v43 = *(v41 + 8 * a1);

          v44 = __OFADD__(a1++, 1);
          if (v44)
          {
            goto LABEL_34;
          }
        }

        outlined init with copy of ReferenceResolutionClientProtocol?(*(v43 + 16) + 96, v111, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
        if (!v112)
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(v111, v112);
        dispatch thunk of LifeCycleModifier.id.getter();
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        if (!*(&v114 + 1))
        {
          goto LABEL_27;
        }

        v117 = v113;
        v118 = v114;
        v119 = v115;
        if (*(a2 + 16))
        {
          v45 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
          v46 = -1 << *(a2 + 32);
          v47 = v45 & ~v46;
          if ((*(v42 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (1)
            {
              outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v47, &v113);
              v49 = MEMORY[0x1E12A1F10](&v113, &v117);
              outlined destroy of AnyHashable(&v113);
              if (v49)
              {
                break;
              }

              v47 = (v47 + 1) & v48;
              if (((*(v42 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            outlined destroy of AnyHashable(&v117);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v50 = *(v116 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_29;
          }
        }

LABEL_25:
        outlined destroy of AnyHashable(&v117);
LABEL_28:

LABEL_29:
        v20 = &_s11SiriKitFlow17LifeCycleModifier_pSgMR;
        if (a1 == v40)
        {
          v64 = v116;
          a1 = v99;
          goto LABEL_52;
        }
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
      v113 = 0u;
      v114 = 0u;
      v115 = 0;
LABEL_27:
      outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
      goto LABEL_28;
    }
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_52:

  if (v64 < 0 || (v64 & 0x4000000000000000) != 0)
  {
    v78 = __CocoaSet.count.getter();
  }

  else
  {
    v78 = *(v64 + 16);
  }

  a2 = v102;
  if (!v78)
  {
LABEL_65:

    (*(v107 + 8))(v104, v103);
    v4 = v101;
    goto LABEL_66;
  }

  v79 = 0;
  v4 = v64 & 0xC000000000000001;
  while (v4)
  {
    v80 = MEMORY[0x1E12A1FE0](v79, v64);
    v81 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_60:
    (*(**(v110 + 24) + 240))(v80);

    ++v79;
    if (v81 == v78)
    {
      goto LABEL_65;
    }
  }

  if (v79 < *(v64 + 16))
  {
    v80 = *(v64 + 8 * v79 + 32);

    v81 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_79:
  swift_once();
LABEL_68:
  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.executor);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = v4;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&v113 = v87;
    *v86 = 136315394;
    outlined init with copy of ReferenceResolutionClientProtocol(a2 + 16, &v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v88 = String.init<A>(describing:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v113);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    if (a1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v117);
    }

    else
    {
      v119 = 0;
      v117 = 0u;
      v118 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v91 = String.init<A>(describing:)();
    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v113);

    *(v86 + 14) = v93;
    _os_log_impl(&dword_1DC659000, v83, v84, "[EncoreEngine] Pushing %s parent: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v87, -1, -1);
    MEMORY[0x1E12A2F50](v86, -1, -1);

    v4 = v85;
  }

  else
  {
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a2 + 96, &v117, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  if (*(&v118 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
    dispatch thunk of LifeCycleModifier.onAttached()();
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v117, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  }

  v94 = v105;
  outlined init with copy of ReferenceResolutionClientProtocol(a2 + 56, v105);
  v95 = v106;
  (*(v106 + 104))(v94, *MEMORY[0x1E69CFAD0], v4);
  static FlowTrace.trace(event:)();
  (*(v95 + 8))(v94, v4);
  v96 = *(v110 + 24);
  *&v117 = a2;
  return (*(*v96 + 208))(&v117, a1);
}

uint64_t EncoreEngine.ActionMode.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0x6C616D726F6ELL;
  v3 = 0xE900000000000074;
  v4 = 0x7075727265746E69;
  if (a1 != 2)
  {
    v4 = 0x705570617277;
    v3 = 0xE600000000000000;
  }

  if (a1)
  {
    v2 = 0x656D75736572;
  }

  if (a1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 1)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E12A1580](v5, v6);

  return 0;
}

uint64_t EncoreEngine.ActionMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0x7075727265746E69;
  if (a1 != 2)
  {
    v2 = 0x705570617277;
  }

  if (a1)
  {
    v1 = 0x656D75736572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EncoreEngine.ActionMode(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616D726F6ELL;
  v3 = *a1;
  v4 = 0x7075727265746E69;
  v5 = 0xE900000000000074;
  if (v3 != 2)
  {
    v4 = 0x705570617277;
    v5 = 0xE600000000000000;
  }

  v6 = 0x656D75736572;
  if (!*a1)
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x7075727265746E69;
  v10 = 0xE900000000000074;
  if (*a2 != 2)
  {
    v9 = 0x705570617277;
    v10 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 0x656D75736572;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (*a2 <= 1u)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = v10;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EncoreEngine.ActionMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EncoreEngine.ActionMode()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncoreEngine.ActionMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EncoreEngine.ActionMode@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized EncoreEngine.ActionMode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance EncoreEngine.ActionMode(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6C616D726F6ELL;
  v4 = 0xE900000000000074;
  v5 = 0x7075727265746E69;
  if (*v1 != 2)
  {
    v5 = 0x705570617277;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x656D75736572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EncoreEngine.ActionMode()
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0xE900000000000074;
  v3 = 0x7075727265746E69;
  if (*v0 != 2)
  {
    v3 = 0x705570617277;
    v2 = 0xE600000000000000;
  }

  if (*v0)
  {
    v1 = 0x656D75736572;
  }

  if (*v0 <= 1u)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E12A1580](v4, v5);

  return 0;
}

uint64_t EncoreEngine.ActionOutcome.description.getter()
{
  v1 = type metadata accessor for PluginAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowUnhandledReason();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v0, v14, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      v26 = 0;
      v27 = 0xE000000000000000;
      MEMORY[0x1E12A1580](0x656C646E61686E75, 0xEA00000000002864);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1E12A1580](41, 0xE100000000000000);
      v20 = v26;
      (*(v7 + 8))(v10, v6);
      return v20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v5, v14, v1);
      v26 = 0x7463657269646572;
      v27 = 0xE900000000000028;
      lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, 255, MEMORY[0x1E69CFE08]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1E12A1580](v17);

      MEMORY[0x1E12A1580](41, 0xE100000000000000);
      v18 = v26;
      (*(v2 + 8))(v5, v1);
      return v18;
    }

    v21 = *v14;
    v22 = v14[1];
    v23 = v14[2];
    v24 = v14[3];
    v26 = 0x2865737261706572;
    v27 = 0xE800000000000000;
    MEMORY[0x1E12A1580](v21, v22);

    MEMORY[0x1E12A1580](8236, 0xE200000000000000);
    MEMORY[0x1E12A1580](v23, v24);

    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    return v26;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x7365726975716572;
    }

    else
    {
      return 0x646C656979;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v16 = *v14;
      v26 = 0;
      v27 = 0xE000000000000000;
      MEMORY[0x1E12A1580](0x2874726F6261, 0xE600000000000000);
      v25[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1E12A1580](41, 0xE100000000000000);

      return v26;
    }

    return 0x6174537974706D65;
  }
}

uint64_t EventQueue.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for AsyncStream();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t EventQueue.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for AsyncStream.Continuation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t specialized EventQueue.init()()
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v19 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMd, &_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMR);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  v21 = v15;
  type metadata accessor for EncoreEngine.EngineEvent(0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8650], v19);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v5 + 32))(v0 + *(*v0 + 88), v8, v20);
  outlined init with copy of ReferenceResolutionClientProtocol?(v15, v12, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
  result = (*(v17 + 48))(v12, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v0 + *(*v0 + 96), v12, v16);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
    return v0;
  }

  return result;
}

uint64_t EventQueue.init()()
{
  v1 = *(*v0 + 80);
  v22 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v20 = &v20 - v4;
  v23 = type metadata accessor for AsyncStream();
  v21 = *(v23 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AsyncStream.Continuation();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v18 = *(v8 - 8);
  (*(v18 + 56))(&v20 - v16, 1, 1, v8, v15);
  v24 = v1;
  v25 = v17;
  (*(v2 + 104))(v20, *MEMORY[0x1E69E8650], v22);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v21 + 32))(v0 + *(*v0 + 88), v7, v23);
  (*(v10 + 16))(v13, v17, v9);
  result = (*(v18 + 48))(v13, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v0 + *(*v0 + 96), v13, v8);
    (*(v10 + 8))(v17, v9);
    return v0;
  }

  return result;
}

uint64_t specialized closure #1 in EventQueue.init()(uint64_t a1, uint64_t a2)
{
  outlined destroy of ReferenceResolutionClientProtocol?(a2, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t closure #1 in EventQueue.init()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncStream.Continuation();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

char *EventQueue.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "[EncoreEngine] EventQueue deinit.", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v7 = *(*v1 + 88);
  v8 = *(v2 + 80);
  v9 = type metadata accessor for AsyncStream();
  (*(*(v9 - 8) + 8))(&v1[v7], v9);
  v10 = *(*v1 + 96);
  v11 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v11 - 8) + 8))(&v1[v10], v11);
  return v1;
}