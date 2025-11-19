uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t partial apply for closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(a1, v4, v5, v7, v6);
}

uint64_t closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:), v6, 0);
}

uint64_t closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  *v3 = dispatch thunk of MessagePublishing.postMessage(_:)() & 1;
  v5 = v0[1];

  return v5();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:), v9, 0);
}

void (*closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)())(void *, void)
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil);
  v7 = (*(*v5 + 376))();
  (*(*v6 + 160))(v7, 1, v4 != 0, v3, v2, 0, 0, v1);
  result = (*(*v5 + 392))(v0 + 2);
  if (__OFADD__(*v9, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v9;
    result(v0 + 2, 0);
    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t partial apply for closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()(a1, v4, v5, v6);
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 128) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater(), v5, 0);
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()()
{
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[15] + 96, (v0 + 7), &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v0[10])
  {
    v1 = v0[15];
    outlined init with take of NSExtensionProtocol(v0 + 7, v0 + 2);
    v2 = *(*(v1 + 48) + 16);
    v0[17] = v2;
    v3 = *(*v2 + 136);

    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater();

    return v9();
  }

  else
  {
    v7 = v0[16];

    outlined destroy of ReferenceResolutionClientProtocol?((v0 + 7), &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    v8 = v0[1];

    return v8();
  }
}

uint64_t ConcurrentTaskPool.wait()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](ConcurrentTaskPool.wait(), 0, 0);
}

{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v0[4] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in ConcurrentTaskPool.wait();
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_ScTyyts5NeverOGSg_TG5TA_0(v0 + 2);
  v0[5] = 0;
  os_unfair_lock_unlock((v0[4] + 16));
  v4 = v0[2];
  v0[6] = v4;

  if (v4)
  {
    v5 = *(MEMORY[0x1E69E86C0] + 4);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = ConcurrentTaskPool.wait();
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v6, v4, v7);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](ConcurrentTaskPool.wait(), 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  v5 = swift_task_alloc();
  *(v5 + 16) = partial apply for closure #1 in ConcurrentTaskPool.wait();
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_ScTyyts5NeverOGSg_TG5TA_0(v0 + 2);
  if (v2)
  {
    os_unfair_lock_unlock((v0[4] + 16));
  }

  else
  {
    v0[5] = 0;
    os_unfair_lock_unlock((v0[4] + 16));
    v7 = v0[2];
    v0[6] = v7;

    if (v7)
    {
      v8 = *(MEMORY[0x1E69E86C0] + 4);
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = ConcurrentTaskPool.wait();
      v10 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA40](v9, v7, v10);
    }

    else
    {
      v11 = v0[1];

      return v11();
    }
  }
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t closure #1 in ConcurrentTaskPool.wait()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    swift_beginAccess();
    swift_retain_n();
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater(), v3, 0);
}

{
  v1 = v0[16];

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 40))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4();
}

{
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 120) + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, v0 + 56, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    v2 = *(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) + 16);
    *(v0 + 136) = v2;
    v3 = *(*v2 + 136);

    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater();

    return v9();
  }

  else
  {
    v7 = *(v0 + 128);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t destroy for DecisionEngineResponse(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 24);
  v6 = type metadata accessor for Input();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(&a1[v5], 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(&a1[v5], v6);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v23 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315394;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v0 + 16) = v7;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error performing %s: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t partial apply for closure #1 in ConversationService.markNotBusyAsync()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.markNotBusyAsync()(a1, v4, v5, v6);
}

uint64_t closure #1 in ConversationService.markNotBusyAsync()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.markNotBusyAsync(), v0, 0);
}

{
  v8 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;

  v3 = *(v1 + 128);
  v4 = *(v3 + 32);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v3, &v7);
  OS_dispatch_semaphore.signal()();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in JetsamHelper.releaseJetsamTransaction()@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v14);
    _os_log_impl(&dword_1DC659000, v5, v6, "os_transaction(%s) end", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v9 = (a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  v10 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  v11 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8);
  v12 = v11 != 0;
  *v9 = 0;
  v9[1] = 0;
  result = outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(v10, v11);
  *a2 = v12;
  return result;
}

Swift::Void __swiftcall MultiUserContextUpdater.close()()
{
  v1 = v0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMR);
  v2 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v26 - v3;
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_18:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationBridge);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "Closing all ContextUpdater instances", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v9 = (*(*v1 + 184))();
  v10 = v9;
  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = *(v10 + 48);
      v21 = type metadata accessor for UserID();
      (*(*(v21 - 8) + 16))(v4, v20 + *(*(v21 - 8) + 72) * v19, v21);
      v22 = *(*(v10 + 56) + 8 * v19);
      *&v4[*(v27 + 48)] = v22;
      v23 = *(*v22 + 480);

      v23();
      outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMR);
      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  v25 = (*(*v1 + 208))(v24);
  if (v25)
  {
    (*(*v25 + 480))(v25);
  }
}

uint64_t MultiUserContextUpdater.userIdToContextUpdater.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 256);
}

Swift::Void __swiftcall ContextUpdater.close()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v69 - v7;
  v8 = type metadata accessor for ConversationSessionKey();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v69 - v15;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.conversationBridge);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "Closing ContextUpdater", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  (*(*v1 + 360))();
  v21 = type metadata accessor for UserID();
  v22 = (*(*(v21 - 8) + 48))(v16, 1, v21);
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (v22 != 1)
  {
    v28 = v9[13];
    v28(v12, *MEMORY[0x1E69D07F0], v8);
    ContextUpdater.valueFromSessionState(forKey:)(&v79);
    v74 = v9[1];
    v74(v12, v8);
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMR);
      v29 = swift_dynamicCast();
      v30 = v81;
      if (!v29)
      {
        v30 = 0;
      }

      v71 = v30;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v79, &_sypSgMd, &_sypSgMR);
      v71 = 0;
    }

    v28(v12, *MEMORY[0x1E69D07B8], v8);
    ContextUpdater.valueFromSessionState(forKey:)(&v79);
    v74(v12, v8);
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      v31 = swift_dynamicCast();
      v32 = v81;
      if (!v31)
      {
        v32 = 0;
      }

      v70 = v32;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v79, &_sypSgMd, &_sypSgMR);
      v70 = 0;
    }

    v28(v12, *MEMORY[0x1E69D07C8], v8);
    ContextUpdater.valueFromSessionState(forKey:)(&v79);
    v74(v12, v8);
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      if (swift_dynamicCast())
      {
        v33 = v81;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v79, &_sypSgMd, &_sypSgMR);
      v33 = 0;
    }

    v34 = *MEMORY[0x1E69D0818];
    v72 = v28;
    v28(v12, v34, v8);
    ContextUpdater.valueFromSessionState(forKey:)(&v79);
    v74(v12, v8);
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      if (swift_dynamicCast())
      {
        v35 = v81;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v79, &_sypSgMd, &_sypSgMR);
      v35 = 0;
    }

    v72(v12, *MEMORY[0x1E69D07E8], v8);
    ContextUpdater.valueFromSessionState(forKey:)(&v79);
    v69 = v9 + 1;
    v74(v12, v8);
    if (v80)
    {
      v36 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      v37 = v73;
      v38 = swift_dynamicCast();
      (*(*(v36 - 8) + 56))(v37, v38 ^ 1u, 1, v36);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v79, &_sypSgMd, &_sypSgMR);
      v39 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      (*(*(v39 - 8) + 56))(v73, 1, 1, v39);
    }

    v40 = swift_beginAccess();
    if (*(*(v1 + 240) + 16))
    {
      ContextUpdater.flushResponseText(legacyNLContext:)(v73);
    }

    v41 = (*(*v1 + 384))(v40);
    *&v79 = 0xD000000000000017;
    *(&v79 + 1) = 0x80000001DCA7E220;
    MEMORY[0x1EEE9AC00](v41);
    *(&v69 - 2) = &v79;
    v42 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v69 - 4), v41);

    if ((v42 & 1) == 0)
    {

LABEL_44:
      v66 = outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
      (*(**(v1 + 232) + 184))(v66);
      v67 = *(v1 + 240);
      *(v1 + 240) = MEMORY[0x1E69E7CC0];

      v27 = (v1 + 256);
      goto LABEL_45;
    }

    v43 = type metadata accessor for ConversationalContextContainer();
    v44 = objc_allocWithZone(v43);
    v45 = v70;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = v71;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = v45;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = v33;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = v35;
    v78.receiver = v44;
    v78.super_class = v43;
    v71 = objc_msgSendSuper2(&v78, sel_init);
    outlined init with copy of ReferenceResolutionClientProtocol?(v73, v5, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v46 = type metadata accessor for ServerPromptData();
    v47 = objc_allocWithZone(v46);
    outlined init with copy of ReferenceResolutionClientProtocol?(v5, v47 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v77.receiver = v47;
    v77.super_class = v46;
    v48 = objc_msgSendSuper2(&v77, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v49 = v48;
    v50 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, 1u, isUniquelyReferenced_nonNull_native, &v79);
    v52 = v79;
    v53 = v71;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v52;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, 0, v54, &v79);
    v55 = v79;
    v72(v12, *MEMORY[0x1E69D0800], v8);
    ContextUpdater.valueFromSessionState(forKey:)(&v79);
    v74(v12, v8);
    if (v80)
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
      if (swift_dynamicCast())
      {
        v56 = v75;
        [v75 copy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v57 = v75;
        }

        else
        {
          v57 = 0;
        }

        goto LABEL_43;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v79, &_sypSgMd, &_sypSgMR);
    }

    v57 = 0;
LABEL_43:
    updated = type metadata accessor for ServerBoundContextUpdateContainer();
    v59 = objc_allocWithZone(updated);
    *&v59[OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate] = v57;
    v76.receiver = v59;
    v76.super_class = updated;
    v60 = v57;
    v61 = objc_msgSendSuper2(&v76, &_OBJC_LABEL_PROTOCOL___SAAceReferable);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v55;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, 2u, v62, &v79);
    v63 = v79;
    v64 = *(v1 + 216);
    v65 = *(v1 + 224);
    __swift_project_boxed_opaque_existential_1((v1 + 192), v64);
    (*(v65 + 8))(v63, closure #1 in ContextUpdater.close(), 0, v64, v65);

    goto LABEL_44;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DC659000, v23, v24, "Closing shared instance of ContextUpdater without further operations", v25, 2u);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  (*(**(v1 + 232) + 184))();
  swift_beginAccess();
  v26 = *(v1 + 240);
  *(v1 + 240) = MEMORY[0x1E69E7CC0];

  v27 = (v1 + 256);
LABEL_45:
  swift_beginAccess();
  v68 = *v27;
  *v27 = 0;
}

Swift::Void __swiftcall SessionStateContextKeysManager.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t closure #1 in SessionStateContextKeysManager.reset()(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  *(a1 + 24) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v3 = *(a1 + 32);
  *(a1 + 32) = MEMORY[0x1E69E7CD0];
}

uint64_t type metadata accessor for UserSpecificInfo()
{
  result = type metadata singleton initialization cache for UserSpecificInfo;
  if (!type metadata singleton initialization cache for UserSpecificInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v18 = one-time initialization token for shared;

  v19 = a2;
  v33 = v15;
  v34 = v19;
  v21 = v9;
  v22 = a4;
  v23 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v5;
  if (v18 != -1)
  {
    swift_once();
  }

  v25 = static ConversationActor.shared;
  v26 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v20, type metadata accessor for ConversationActor);
  v27 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v25;
  *(v29 + 3) = v26;
  v30 = v35;
  *(v29 + 4) = v24;
  *(v29 + 5) = v30;
  *(v29 + 6) = v22;
  (*(v10 + 32))(&v29[v27], v23, v21);
  *&v29[v28] = v34;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v29);
}

uint64_t sub_1DC725E34()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t type metadata accessor for RemoteConversationSpeechData()
{
  result = type metadata singleton initialization cache for RemoteConversationSpeechData;
  if (!type metadata singleton initialization cache for RemoteConversationSpeechData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v11 = type metadata accessor for DecisionEngineResponse();
  v8[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v13 = type metadata accessor for ConversationHelperInput(0);
  v8[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v15 = type metadata accessor for RemoteConversationTurnData(0);
  v8[21] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static MessageBusActor.shared;
  v8[23] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v17, 0);
}

uint64_t ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for UserInputResult();
  v4[17] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v4[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:), v7, 0);
}

uint64_t ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 600) = a4;
  *(v5 + 280) = a3;
  *(v5 + 288) = v4;
  *(v5 + 264) = a1;
  *(v5 + 272) = a2;
  v6 = type metadata accessor for RemoteConversationOrReformedInput(0);
  *(v5 + 296) = v6;
  v7 = *(v6 - 8);
  *(v5 + 304) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR) - 8) + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  *(v5 + 352) = v10;
  v11 = *(v10 - 8);
  *(v5 + 360) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR) - 8) + 64) + 15;
  *(v5 + 432) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v5 + 440) = v14;
  v15 = *(v14 - 8);
  *(v5 + 448) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 456) = swift_task_alloc();
  v17 = type metadata accessor for Input();
  *(v5 + 464) = v17;
  v18 = *(v17 - 8);
  *(v5 + 472) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = static MessageBusActor.shared;
  *(v5 + 488) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:), v20, 0);
}

uint64_t ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[35];
  v5 = v0[33];
  v6 = type metadata accessor for Logger();
  v0[62] = __swift_project_value_buffer(v6, static Logger.executor);
  Logger.debugF(file:function:)();
  (*(v2 + 16))(v1, v5, v3);
  if (v4 > 4)
  {
    v17 = v0[61];
    v18 = v0[62];

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = 5;
      _os_log_impl(&dword_1DC659000, v19, v20, "Too many reformations encountered when finding a handler for input. (Max count = %ld).", v21, 0xCu);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v23 = v0[59];
    v22 = v0[60];
    v24 = v0[58];

    (*(v23 + 8))(v22, v24);
    v25 = v0[60];
    v26 = v0[57];
    v28 = v0[53];
    v27 = v0[54];
    v30 = v0[51];
    v29 = v0[52];
    v32 = v0[49];
    v31 = v0[50];
    v33 = v0[47];
    v34 = v0[48];
    v36 = v0[46];
    v37 = v0[43];
    v38 = v0[42];
    v39 = v0[41];
    v40 = v0[40];
    v41 = v0[39];

    v35 = v0[1];

    return v35(0);
  }

  else
  {
    v7 = v0[36];
    v0[63] = v0[35];
    v8 = v0[60];
    v9 = v0[57];
    v10 = v0[54];
    v0[30] = MEMORY[0x1E69E7CC8];
    v0[31] = MEMORY[0x1E69E7CC0];
    UUID.init()();
    Input.parse.getter();
    v11 = type metadata accessor for Parse();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    specialized SimpleOrderedDictionary.subscript.setter(v10, v9);
    v12 = *(v7 + 16);
    v13 = v0[30];
    v0[64] = v13;
    v14 = v0[31];
    v0[65] = v14;
    v15 = swift_task_alloc();
    v0[66] = v15;
    *v15 = v0;
    v15[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);

    return ConversationHandlerLocator.allHandlers(for:)(v13, v14);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v9 = *v1;
  *(v2 + 584) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  if (v0)
  {
    v4 = *(v2 + 488);
    v5 = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
  }

  else
  {
    v6 = *(v2 + 560);
    v7 = *(v2 + 488);
    (*(v2 + 552))(*(v2 + 368), *(v2 + 440));
    v5 = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v128 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 408), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  outlined init with take of RemoteConversationOrReformedInput?(v1, v2);
  outlined init with take of RemoteConversationOrReformedInput?(v2, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 328), &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    v7 = *(v0 + 568) + 1;
    if (v7 == *(v0 + 544))
    {
LABEL_3:
      v8 = *(v0 + 536);
      v10 = *(v0 + 480);
      v9 = *(v0 + 488);
      v11 = *(v0 + 464);
      v12 = *(v0 + 472);

LABEL_9:
      (*(v12 + 8))(v10, v11);
      v125 = 0;
LABEL_22:
      v66 = *(v0 + 480);
      v67 = *(v0 + 456);
      v69 = *(v0 + 424);
      v68 = *(v0 + 432);
      v71 = *(v0 + 408);
      v70 = *(v0 + 416);
      v72 = *(v0 + 392);
      v73 = *(v0 + 400);
      v75 = *(v0 + 376);
      v74 = *(v0 + 384);
      v112 = *(v0 + 368);
      v114 = *(v0 + 344);
      v116 = *(v0 + 336);
      v118 = *(v0 + 328);
      v120 = *(v0 + 320);
      v123 = *(v0 + 312);

      v76 = *(v0 + 8);

      return v76(v125);
    }

    v24 = &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR;
    while (1)
    {
      *(v0 + 568) = v7;
      v37 = *(v0 + 536);
      if (v7 >= *(v37 + 16))
      {
        __break(1u);
        return result;
      }

      v38 = *(v0 + 596);
      v39 = *(v0 + 440);
      v40 = *(v0 + 448);
      v42 = *(v0 + 408);
      v41 = *(v0 + 416);
      v43 = *(v0 + 352);
      v44 = *(v0 + 600);
      outlined init with copy of ReferenceResolutionClientProtocol?(v37 + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(*(v0 + 360) + 72) * v7, v41, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v24);
      v45 = *(v43 + 48);
      (*(v40 + 32))(v42, v41, v39);
      outlined init with take of RemoteConversationOrReformedInput(v41 + v38, v42 + v45, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      if (v44 != 1)
      {
        break;
      }

      v46 = *(v0 + 400);
      v47 = *(v0 + 352);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v46, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v24);
      v48 = v46 + *(v47 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v48 + 8, v0 + 136);
      outlined destroy of RemoteConversationOrReformedInput(v48, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v49 = *(v0 + 160);
      v50 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v49);
      v51 = (*(v50 + 16))(v49, v50);
      v53 = *(v0 + 560);
      v54 = *(v0 + 552);
      v55 = *(v0 + 440);
      v56 = *(v0 + 400);
      if (v51 == 0xD000000000000021 && 0x80000001DCA7CC80 == v52)
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v54(v56, v55);
      }

      else
      {
        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v54(v56, v55);
        if ((v57 & 1) == 0)
        {
          break;
        }
      }

      v58 = *(v0 + 496);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 392), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v24);
      v59 = v24;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v115 = *(v0 + 552);
        v117 = *(v0 + 560);
        v122 = *(v0 + 408);
        v26 = *(v0 + 384);
        v25 = *(v0 + 392);
        v111 = v25;
        v113 = *(v0 + 440);
        v27 = *(v0 + 352);
        v28 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v127 = v119;
        *v28 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol?(v25, v26, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v59);
        v29 = v26 + *(v27 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol(v29 + 8, v0 + 176);
        outlined destroy of RemoteConversationOrReformedInput(v29, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
        v31 = *(v0 + 200);
        v30 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v31);
        v32 = (*(v30 + 16))(v31, v30);
        v34 = v33;
        outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v59);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
        v115(v26, v113);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v127);

        *(v28 + 4) = v35;
        _os_log_impl(&dword_1DC659000, v60, v61, "[ConversationHelper] Skipping %s as we should not fall back to it.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        MEMORY[0x1E12A2F50](v119, -1, -1);
        MEMORY[0x1E12A2F50](v28, -1, -1);

        v36 = v122;
      }

      else
      {
        v62 = *(v0 + 408);
        v63 = *(v0 + 392);

        outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v59);
        v36 = v62;
      }

      result = outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v59);
      v24 = v59;
      v7 = *(v0 + 568) + 1;
      if (v7 == *(v0 + 544))
      {
        goto LABEL_3;
      }
    }

    v77 = *(v0 + 496);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 376), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v124 = *(v0 + 552);
      v126 = *(v0 + 560);
      v121 = *(v0 + 440);
      v81 = *(v0 + 376);
      v80 = *(v0 + 384);
      v82 = *(v0 + 352);
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v127 = v84;
      *v83 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v81, v80, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v85 = v80 + *(v82 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v85 + 8, v0 + 96);
      outlined destroy of RemoteConversationOrReformedInput(v85, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v86 = *(v0 + 120);
      v87 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v86);
      v88 = (*(v87 + 16))(v86, v87);
      v90 = v89;
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      v124(v80, v121);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v127);

      *(v83 + 4) = v91;
      _os_log_impl(&dword_1DC659000, v78, v79, "[ConversationHelper] Trying handler: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1E12A2F50](v84, -1, -1);
      MEMORY[0x1E12A2F50](v83, -1, -1);
    }

    else
    {
      v102 = *(v0 + 376);

      outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    }

    v103 = *(v0 + 368);
    v104 = *(v0 + 352);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v103, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v105 = v103 + *(v104 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v105 + 8, v0 + 56);
    outlined destroy of RemoteConversationOrReformedInput(v105, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v106 = swift_task_alloc();
    *(v0 + 576) = v106;
    *v106 = v0;
    v106[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
    v107 = *(v0 + 480);
    v108 = *(v0 + 336);
    v109 = *(v0 + 288);
    v110 = *(v0 + 272);

    return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v108, v0 + 56, v107, v110);
  }

  else
  {
    v13 = *(v0 + 536);
    v15 = *(v0 + 320);
    v14 = *(v0 + 328);
    v16 = *(v0 + 312);
    v17 = *(v0 + 296);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

    outlined init with take of RemoteConversationOrReformedInput(v14, v15, type metadata accessor for RemoteConversationOrReformedInput);
    outlined init with take of RemoteConversationOrReformedInput(v15, v16, type metadata accessor for RemoteConversationOrReformedInput);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v64 = *(v0 + 488);
      v65 = *(v0 + 312);

      v125 = *v65;
      goto LABEL_22;
    }

    v18 = *(v0 + 504);
    (*(*(v0 + 472) + 32))(*(v0 + 480), *(v0 + 312), *(v0 + 464));
    if (v18 == 4)
    {
      v19 = *(v0 + 488);
      v20 = *(v0 + 496);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = 5;
        _os_log_impl(&dword_1DC659000, v21, v22, "Too many reformations encountered when finding a handler for input. (Max count = %ld).", v23, 0xCu);
        MEMORY[0x1E12A2F50](v23, -1, -1);
      }

      v12 = *(v0 + 472);
      v10 = *(v0 + 480);
      v11 = *(v0 + 464);

      goto LABEL_9;
    }

    *(v0 + 504) = v18 + 1;
    v92 = *(v0 + 480);
    v93 = *(v0 + 456);
    v94 = *(v0 + 432);
    v95 = *(v0 + 288);
    v96 = MEMORY[0x1E69E7CC0];
    *(v0 + 240) = MEMORY[0x1E69E7CC8];
    *(v0 + 248) = v96;
    UUID.init()();
    Input.parse.getter();
    v97 = type metadata accessor for Parse();
    (*(*(v97 - 8) + 56))(v94, 0, 1, v97);
    specialized SimpleOrderedDictionary.subscript.setter(v94, v93);
    v98 = *(v95 + 16);
    v99 = *(v0 + 240);
    v100 = *(v0 + 248);
    *(v0 + 512) = v99;
    *(v0 + 520) = v100;
    v101 = swift_task_alloc();
    *(v0 + 528) = v101;
    *v101 = v0;
    v101[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);

    return ConversationHandlerLocator.allHandlers(for:)(v99, v100);
  }
}

{
  v116 = v0;
  v1 = *(v0 + 536);
  v2 = *(v1 + 16);
  *(v0 + 544) = v2;
  if (!v2)
  {
    v53 = *(v0 + 488);

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_18;
  }

  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 424);
  v6 = *(v0 + 352);
  v7 = *(*(v0 + 360) + 80);
  *(v0 + 592) = v7;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + ((v7 + 32) & ~v7), v5, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v8 = v5 + *(v6 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v8 + 8, v0 + 16);
  outlined destroy of RemoteConversationOrReformedInput(v8, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
  v9 = *(v4 + 8);
  *(v0 + 552) = v9;
  *(v0 + 560) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v3);
  if (!*(v0 + 40))
  {
    v69 = *(v0 + 536);
    v70 = *(v0 + 488);

LABEL_18:
    v71 = *(v0 + 496);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1DC659000, v72, v73, "[ConversationHelper] No conversation handler found for input, returning nil", v74, 2u);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    v76 = *(v0 + 472);
    v75 = *(v0 + 480);
    v77 = *(v0 + 464);

LABEL_21:
    (*(v76 + 8))(v75, v77);
    v78 = *(v0 + 480);
    v79 = *(v0 + 456);
    v81 = *(v0 + 424);
    v80 = *(v0 + 432);
    v83 = *(v0 + 408);
    v82 = *(v0 + 416);
    v85 = *(v0 + 392);
    v84 = *(v0 + 400);
    v86 = *(v0 + 376);
    v87 = *(v0 + 384);
    v102 = *(v0 + 368);
    v104 = *(v0 + 344);
    v106 = *(v0 + 336);
    v109 = *(v0 + 328);
    v112 = *(v0 + 320);
    v114 = *(v0 + 312);

    v88 = *(v0 + 8);

    return v88(0);
  }

  v10 = *(v0 + 352);
  result = outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
  v12 = 0;
  *(v0 + 596) = *(v10 + 48);
  v13 = &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR;
  while (1)
  {
    *(v0 + 568) = v12;
    v17 = *(v0 + 536);
    if (v12 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 596);
    v19 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v23 = *(v0 + 352);
    v24 = *(v0 + 600);
    outlined init with copy of ReferenceResolutionClientProtocol?(v17 + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(*(v0 + 360) + 72) * v12, v21, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v13);
    v25 = *(v23 + 48);
    (*(v20 + 32))(v22, v21, v19);
    outlined init with take of RemoteConversationOrReformedInput(v21 + v18, v22 + v25, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    if (v24 != 1)
    {
      break;
    }

    v26 = *(v0 + 400);
    v27 = *(v0 + 352);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v26, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v13);
    v28 = v26 + *(v27 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v28 + 8, v0 + 136);
    outlined destroy of RemoteConversationOrReformedInput(v28, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v29);
    v31 = (*(v30 + 16))(v29, v30);
    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 440);
    v36 = *(v0 + 400);
    if (v31 == 0xD000000000000021 && 0x80000001DCA7CC80 == v32)
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v34(v36, v35);
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v34(v36, v35);
      if ((v37 & 1) == 0)
      {
        break;
      }
    }

    v38 = *(v0 + 496);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 392), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v13);
    v39 = v13;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v103 = *(v0 + 552);
      v105 = *(v0 + 560);
      v110 = *(v0 + 408);
      v43 = *(v0 + 384);
      v42 = *(v0 + 392);
      v100 = v42;
      v101 = *(v0 + 440);
      v44 = *(v0 + 352);
      v45 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v115 = v107;
      *v45 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v42, v43, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v39);
      v46 = v43 + *(v44 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v46 + 8, v0 + 176);
      outlined destroy of RemoteConversationOrReformedInput(v46, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v48 = *(v0 + 200);
      v47 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v48);
      v49 = (*(v47 + 16))(v48, v47);
      v51 = v50;
      outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v39);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      v103(v43, v101);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v115);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_1DC659000, v40, v41, "[ConversationHelper] Skipping %s as we should not fall back to it.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x1E12A2F50](v107, -1, -1);
      MEMORY[0x1E12A2F50](v45, -1, -1);

      v16 = v110;
    }

    else
    {
      v14 = *(v0 + 408);
      v15 = *(v0 + 392);

      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v39);
      v16 = v14;
    }

    result = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v39);
    v13 = v39;
    v12 = *(v0 + 568) + 1;
    if (v12 == *(v0 + 544))
    {
      v89 = *(v0 + 536);
      v75 = *(v0 + 480);
      v90 = *(v0 + 488);
      v77 = *(v0 + 464);
      v76 = *(v0 + 472);

      goto LABEL_21;
    }
  }

  v54 = *(v0 + 496);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 376), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v111 = *(v0 + 552);
    v113 = *(v0 + 560);
    v108 = *(v0 + 440);
    v58 = *(v0 + 376);
    v57 = *(v0 + 384);
    v59 = *(v0 + 352);
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v115 = v61;
    *v60 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v58, v57, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v62 = v57 + *(v59 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v62 + 8, v0 + 96);
    outlined destroy of RemoteConversationOrReformedInput(v62, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v63 = *(v0 + 120);
    v64 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v63);
    v65 = (*(v64 + 16))(v63, v64);
    v67 = v66;
    outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v111(v57, v108);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v115);

    *(v60 + 4) = v68;
    _os_log_impl(&dword_1DC659000, v55, v56, "[ConversationHelper] Trying handler: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1E12A2F50](v61, -1, -1);
    MEMORY[0x1E12A2F50](v60, -1, -1);
  }

  else
  {
    v91 = *(v0 + 376);

    outlined destroy of ReferenceResolutionClientProtocol?(v91, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  }

  v92 = *(v0 + 368);
  v93 = *(v0 + 352);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v92, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v94 = v92 + *(v93 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v94 + 8, v0 + 56);
  outlined destroy of RemoteConversationOrReformedInput(v94, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
  v95 = swift_task_alloc();
  *(v0 + 576) = v95;
  *v95 = v0;
  v95[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
  v96 = *(v0 + 480);
  v97 = *(v0 + 336);
  v98 = *(v0 + 288);
  v99 = *(v0 + 272);

  return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v97, v0 + 56, v96, v99);
}

{
  v113 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  v3 = *(v0 + 496);
  (*(v0 + 552))(*(v0 + 368), *(v0 + 440));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 584);
    v8 = *(v0 + 408);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v112 = v10;
    *v9 = 136315138;
    *(v0 + 256) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v112);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v5, v6, "[ConversationHelper] Error during loadConversationAndAccept: %s. Will try the next handler", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {
    v8 = *(v0 + 408);
  }

  result = outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v16 = *(v0 + 568) + 1;
  if (v16 == *(v0 + 544))
  {
LABEL_5:
    v17 = *(v0 + 536);
    v19 = *(v0 + 480);
    v18 = *(v0 + 488);
    v20 = *(v0 + 464);
    v21 = *(v0 + 472);

    (*(v21 + 8))(v19, v20);
    v22 = *(v0 + 480);
    v23 = *(v0 + 456);
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);
    v27 = *(v0 + 408);
    v26 = *(v0 + 416);
    v29 = *(v0 + 392);
    v28 = *(v0 + 400);
    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    v98 = *(v0 + 368);
    v100 = *(v0 + 344);
    v102 = *(v0 + 336);
    v104 = *(v0 + 328);
    v107 = *(v0 + 320);
    v110 = *(v0 + 312);

    v32 = *(v0 + 8);

    return v32(0);
  }

  else
  {
    v33 = &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR;
    while (1)
    {
      *(v0 + 568) = v16;
      v46 = *(v0 + 536);
      if (v16 >= *(v46 + 16))
      {
        __break(1u);
        return result;
      }

      v47 = *(v0 + 596);
      v48 = *(v0 + 440);
      v49 = *(v0 + 448);
      v51 = *(v0 + 408);
      v50 = *(v0 + 416);
      v52 = *(v0 + 352);
      v53 = *(v0 + 600);
      outlined init with copy of ReferenceResolutionClientProtocol?(v46 + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(*(v0 + 360) + 72) * v16, v50, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v33);
      v54 = *(v52 + 48);
      (*(v49 + 32))(v51, v50, v48);
      outlined init with take of RemoteConversationOrReformedInput(v50 + v47, v51 + v54, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      if (v53 != 1)
      {
        break;
      }

      v55 = *(v0 + 400);
      v56 = *(v0 + 352);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v55, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v33);
      v57 = v55 + *(v56 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v57 + 8, v0 + 136);
      outlined destroy of RemoteConversationOrReformedInput(v57, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v58 = *(v0 + 160);
      v59 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v58);
      v60 = (*(v59 + 16))(v58, v59);
      v62 = *(v0 + 560);
      v63 = *(v0 + 552);
      v64 = *(v0 + 440);
      v65 = *(v0 + 400);
      if (v60 == 0xD000000000000021 && 0x80000001DCA7CC80 == v61)
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v63(v65, v64);
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v63(v65, v64);
        if ((v66 & 1) == 0)
        {
          break;
        }
      }

      v67 = *(v0 + 496);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 392), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v33);
      v68 = v33;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v101 = *(v0 + 552);
        v103 = *(v0 + 560);
        v108 = *(v0 + 408);
        v35 = *(v0 + 384);
        v34 = *(v0 + 392);
        v97 = v34;
        v99 = *(v0 + 440);
        v36 = *(v0 + 352);
        v37 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v112 = v105;
        *v37 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol?(v34, v35, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v68);
        v38 = v35 + *(v36 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol(v38 + 8, v0 + 176);
        outlined destroy of RemoteConversationOrReformedInput(v38, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
        v39 = *(v0 + 200);
        v40 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v39);
        v41 = (*(v40 + 16))(v39, v40);
        v43 = v42;
        outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v68);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
        v101(v35, v99);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v112);

        *(v37 + 4) = v44;
        _os_log_impl(&dword_1DC659000, v69, v70, "[ConversationHelper] Skipping %s as we should not fall back to it.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x1E12A2F50](v105, -1, -1);
        MEMORY[0x1E12A2F50](v37, -1, -1);

        v45 = v108;
      }

      else
      {
        v71 = *(v0 + 408);
        v72 = *(v0 + 392);

        outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v68);
        v45 = v71;
      }

      result = outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v68);
      v33 = v68;
      v16 = *(v0 + 568) + 1;
      if (v16 == *(v0 + 544))
      {
        goto LABEL_5;
      }
    }

    v73 = *(v0 + 496);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 376), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v109 = *(v0 + 552);
      v111 = *(v0 + 560);
      v106 = *(v0 + 440);
      v77 = *(v0 + 376);
      v76 = *(v0 + 384);
      v78 = *(v0 + 352);
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v112 = v80;
      *v79 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v77, v76, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v81 = v76 + *(v78 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v81 + 8, v0 + 96);
      outlined destroy of RemoteConversationOrReformedInput(v81, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v82 = *(v0 + 120);
      v83 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v82);
      v84 = (*(v83 + 16))(v82, v83);
      v86 = v85;
      outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      v109(v76, v106);
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v112);

      *(v79 + 4) = v87;
      _os_log_impl(&dword_1DC659000, v74, v75, "[ConversationHelper] Trying handler: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    else
    {
      v88 = *(v0 + 376);

      outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    }

    v89 = *(v0 + 368);
    v90 = *(v0 + 352);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v89, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v91 = v89 + *(v90 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v91 + 8, v0 + 56);
    outlined destroy of RemoteConversationOrReformedInput(v91, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v92 = swift_task_alloc();
    *(v0 + 576) = v92;
    *v92 = v0;
    v92[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
    v93 = *(v0 + 480);
    v94 = *(v0 + 336);
    v95 = *(v0 + 288);
    v96 = *(v0 + 272);

    return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v94, v0 + 56, v93, v96);
  }
}

uint64_t specialized SimpleOrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v34 = v2;
  v19 = *v2;
  if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v21 & 1) != 0))
  {
    v22 = v20;
    v23 = *(v19 + 56);
    v24 = type metadata accessor for Parse();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v18, v23 + *(v25 + 72) * v22, v24);
    (*(v25 + 56))(v18, 0, 1, v24);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    (*(v5 + 16))(v11, a2, v4);
    v26 = v35;
    outlined init with copy of ReferenceResolutionClientProtocol?(v35, v15, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    specialized Dictionary.subscript.setter(v15, v11);
    (*(v5 + 8))(a2, v4);
    return outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    v28 = type metadata accessor for Parse();
    (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v29 = *(v5 + 16);
    v29(v11, a2, v4);
    outlined init with copy of ReferenceResolutionClientProtocol?(v35, v15, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v30 = v34;
    specialized Dictionary.subscript.setter(v15, v11);
    v29(v8, a2, v4);
    v31 = v30[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
    }

    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v31, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
    }

    (*(v5 + 8))(a2, v4);
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v31[2] = v33 + 1;
    result = (*(v5 + 32))(v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v33, v8, v4);
    v30[1] = v31;
  }

  return result;
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v3, 0);
}

{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v3, 0);
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)()
{
  if (v0[27])
  {
    v1 = v0[23];

    v2 = v0[27];
    v3 = v0[17];
    v4 = v0[18];
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[7];
    v8 = *(v3 + 24);
    v9 = type metadata accessor for Input();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v4 + v8, v7, v9);
    (*(v10 + 56))(v4 + v8, 0, 1, v9);
    *v4 = v2;
    *(v4 + 8) = 1;
    *(v4 + *(v3 + 28)) = 0;
    v11 = *(v5 + 88);
    DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(v4, *v6, v6[1], 12589, 0xE200000000000000);
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    if (v2)
    {
      v12 = *(v2 + 120);
      v40 = *(v2 + 112);
    }

    v16 = v0[18];
    v17 = v0[15];
    v18 = *(v0[17] + 24);
    outlined init with copy of ReferenceResolutionClientProtocol?(v16 + v18, v17, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v19 = *(v10 + 48);
    v20 = v19(v17, 1, v9);
    v22 = v0[15];
    v21 = v0[16];
    if (v20 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[15], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v23 = type metadata accessor for Siri_Nlu_External_UUID();
      (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    }

    else
    {
      v24 = v0[15];
      Input.parseHypothesisId.getter(v0[16]);
      (*(v10 + 8))(v22, v9);
    }

    v25 = v0[14];
    outlined init with copy of ReferenceResolutionClientProtocol?(v16 + v18, v25, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v26 = v19(v25, 1, v9);
    v27 = v0[14];
    if (v26 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[14], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }

    else
    {
      Input.inputOrAlternativesInterpretableAsUniversalAction.getter();
      (*(v10 + 8))(v27, v9);
    }

    v28 = v0[27];
    v29 = v0[20];
    v30 = v0[18];
    v31 = v0[16];
    v32 = v0[6];
    dispatch thunk of ConversationSELFHelper.emitDecisionEngineDecision(flowHandlerId:parseHypothesisId:isInterpretableAsUniversalAction:isExistingFlowSelected:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
    outlined destroy of RemoteConversationTurnData(v29, type metadata accessor for ConversationHelperInput);
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v30, v32, type metadata accessor for DecisionEngineResponse);
    v33 = v0[22];
    v34 = v0[20];
    v35 = v0[18];
    v37 = v0[15];
    v36 = v0[16];
    v38 = v0[14];

    v39 = v0[1];

    return v39();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[28] = v13;
    *v13 = v0;
    v13[1] = DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:);
    v14 = v0[9];

    return specialized Sequence<>.containsConversationTriggeredByPeer()(v14);
  }
}

{
  v32 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[DecisionEngine] Finding conversation for unambiguous input", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 80);

  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v6, v5, type metadata accessor for RemoteConversationTurnData);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  if (v9)
  {
    v11 = *(v0 + 168);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = *(*(v10 + *(v11 + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
    *(v0 + 40) = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of RemoteConversationTurnData(v10, type metadata accessor for RemoteConversationTurnData);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v31);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1DC659000, v7, v8, "ConjunctionInfo: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  else
  {

    outlined destroy of RemoteConversationTurnData(v10, type metadata accessor for RemoteConversationTurnData);
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v0 + 104);
  v23 = *(v0 + 64);
  v30 = *(v0 + 88);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(*(v0 + 80), v21 + *(v20 + 20), type metadata accessor for RemoteConversationTurnData);
  *v21 = v23;
  *(v21 + *(v20 + 24)) = v30;
  *(v0 + 200) = *(v22 + 32);
  v24 = v23;
  swift_unknownObjectRetain();
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:);
  v26 = *(v0 + 160);
  v27 = *(v0 + 72);
  v28 = *(v0 + 56);

  return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v28, v27, v26);
}

{
  if (*(v0 + 248) == 1 && *(*(v0 + 80) + *(*(v0 + 168) + 44)) == 1)
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 192);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "[DecisionEngine] No active peer triggered conversation but invoked by peer to peer EORR. Falling back to peer", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);

    outlined destroy of RemoteConversationTurnData(v6, type metadata accessor for ConversationHelperInput);
    v10 = *(v7 + 24);
    v11 = type metadata accessor for Input();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9 + v10, v8, v11);
    (*(v12 + 56))(v9 + v10, 0, 1, v11);
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + *(v7 + 28)) = 1;
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 232) = v21;
    *v21 = v0;
    v21[1] = DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:);
    v22 = *(v0 + 200);
    v23 = *(v0 + 160);
    v24 = *(v0 + 56);

    return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v24, v23, 0, 0);
  }
}

{
  v1 = v0[23];

  v2 = v0[30];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[7];
  v8 = *(v3 + 24);
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, v7, v9);
  (*(v10 + 56))(v4 + v8, 0, 1, v9);
  *v4 = v2;
  *(v4 + 8) = 0;
  *(v4 + *(v3 + 28)) = 0;
  v11 = *(v5 + 88);
  DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(v4, *v6, v6[1], 12589, 0xE200000000000000);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  if (v2)
  {
    v12 = *(v2 + 120);
    v38 = *(v2 + 112);
  }

  v13 = v0[18];
  v14 = v0[15];
  v15 = *(v0[17] + 24);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13 + v15, v14, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v16 = *(v10 + 48);
  v17 = v16(v14, 1, v9);
  v19 = v0[15];
  v18 = v0[16];
  if (v17 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[15], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v20 = type metadata accessor for Siri_Nlu_External_UUID();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  else
  {
    v21 = v0[15];
    Input.parseHypothesisId.getter(v0[16]);
    (*(v10 + 8))(v19, v9);
  }

  v22 = v0[14];
  outlined init with copy of ReferenceResolutionClientProtocol?(v13 + v15, v22, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v23 = v16(v22, 1, v9);
  v24 = v0[14];
  if (v23 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[14], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    Input.inputOrAlternativesInterpretableAsUniversalAction.getter();
    (*(v10 + 8))(v24, v9);
  }

  v25 = v0[27];
  v26 = v0[20];
  v27 = v0[18];
  v28 = v0[16];
  v29 = v0[6];
  dispatch thunk of ConversationSELFHelper.emitDecisionEngineDecision(flowHandlerId:parseHypothesisId:isInterpretableAsUniversalAction:isExistingFlowSelected:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  outlined destroy of RemoteConversationTurnData(v26, type metadata accessor for ConversationHelperInput);
  _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v27, v29, type metadata accessor for DecisionEngineResponse);
  v30 = v0[22];
  v31 = v0[20];
  v32 = v0[18];
  v34 = v0[15];
  v33 = v0[16];
  v35 = v0[14];

  v36 = v0[1];

  return v36();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(MEMORY[0x1E69D0188], &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMR);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1, MEMORY[0x1E69D0188], &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMR);
    v29 = *v4;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for Parse();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMR);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMR);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMR);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  v22 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
}

{
  v4 = v3;
  v8 = type metadata accessor for UserID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v49 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Parse();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UserID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t ConversationHandlerLocator.allHandlers(for:)(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v4 = type metadata accessor for IntentTopic();
  v3[47] = v4;
  v5 = *(v4 - 8);
  v3[48] = v5;
  v6 = *(v5 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v7 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3[51] = v7;
  v8 = *(v7 - 8);
  v3[52] = v8;
  v9 = *(v8 + 64) + 15;
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v10 = type metadata accessor for Siri_Nlu_External_Parser();
  v3[55] = v10;
  v11 = *(v10 - 8);
  v3[56] = v11;
  v12 = *(v11 + 64) + 15;
  v3[57] = swift_task_alloc();
  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3[58] = v13;
  v14 = *(v13 - 8);
  v3[59] = v14;
  v15 = *(v14 + 64) + 15;
  v3[60] = swift_task_alloc();
  v16 = type metadata accessor for USOParse();
  v3[61] = v16;
  v17 = *(v16 - 8);
  v3[62] = v17;
  v18 = *(v17 + 64) + 15;
  v3[63] = swift_task_alloc();
  v19 = type metadata accessor for Input();
  v3[64] = v19;
  v20 = *(v19 - 8);
  v3[65] = v20;
  v21 = *(v20 + 64) + 15;
  v3[66] = swift_task_alloc();
  v22 = type metadata accessor for Parse();
  v3[67] = v22;
  v23 = *(v22 - 8);
  v3[68] = v23;
  v24 = *(v23 + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v25 = type metadata accessor for UUID();
  v3[74] = v25;
  v26 = *(v25 - 8);
  v3[75] = v26;
  v27 = *(v26 + 64) + 15;
  v3[76] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
  v3[77] = v28;
  v29 = *(v28 - 8);
  v3[78] = v29;
  v30 = *(v29 + 64) + 15;
  v3[79] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = static MessageBusActor.shared;
  v3[80] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v31, 0);
}

uint64_t ConversationHandlerLocator.allHandlers(for:)()
{
  v126 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  *(v0 + 320) = MEMORY[0x1E69E7CC0];
  v3 = specialized ImmutableSimpleOrderedDictionary.items()(v1, v2);
  *(v0 + 648) = v3;
  v4 = v3[2];
  *(v0 + 656) = v4;
  if (!v4)
  {
LABEL_36:

    v84 = *(v0 + 640);

    if (one-time initialization token for executor == -1)
    {
LABEL_37:
      v85 = type metadata accessor for Logger();
      __swift_project_value_buffer(v85, static Logger.executor);
      v86 = *(v0 + 320);

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 134217984;
        *(v89 + 4) = v86[2];

        _os_log_impl(&dword_1DC659000, v87, v88, "allHandlers(for:) Total handlers found: %ld", v89, 0xCu);
        MEMORY[0x1E12A2F50](v89, -1, -1);
      }

      else
      {
      }

      v125[0] = v86;

      specialized MutableCollection<>.sort(by:)(v125);
      v90 = *(v0 + 632);
      v91 = *(v0 + 608);
      v92 = *(v0 + 584);
      v93 = *(v0 + 576);
      v94 = *(v0 + 568);
      v95 = *(v0 + 560);
      v96 = *(v0 + 552);
      v97 = *(v0 + 528);
      v103 = *(v0 + 504);
      v106 = *(v0 + 480);
      v109 = *(v0 + 456);
      v112 = *(v0 + 432);
      v116 = *(v0 + 424);
      v120 = *(v0 + 400);
      v124 = *(v0 + 392);

      v98 = v125[0];

      v99 = *(v0 + 8);

      return v99(v98);
    }

LABEL_54:
    swift_once();
    goto LABEL_37;
  }

  v5 = *(v0 + 624);
  *(v0 + 768) = *(*(v0 + 616) + 48);
  *(v0 + 772) = *(v5 + 80);
  *(v0 + 776) = *MEMORY[0x1E69D0168];
  *(v0 + 780) = *MEMORY[0x1E69D0980];
  *(v0 + 664) = 0u;
  if (!v3[2])
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = 0;
  while (1)
  {
    v117 = *(v0 + 776);
    v121 = *(v0 + 768);
    v7 = *(v0 + 632);
    v8 = *(v0 + 608);
    v9 = *(v0 + 600);
    v10 = *(v0 + 592);
    v11 = *(v0 + 584);
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);
    v14 = *(v0 + 544);
    v15 = *(v0 + 536);
    v113 = *(v0 + 528);
    outlined init with copy of ReferenceResolutionClientProtocol?(v3 + ((*(v0 + 772) + 32) & ~*(v0 + 772)) + *(*(v0 + 624) + 72) * v6, v7, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
    (*(v9 + 32))(v8, v7, v10);
    (*(v14 + 32))(v11, v7 + v121, v15);
    v16 = *(v14 + 16);
    *(v0 + 680) = v16;
    *(v0 + 688) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v12, v11, v15);
    Input.init(parse:)();
    v16(v13, v11, v15);
    if ((*(v14 + 88))(v13, v15) != v117)
    {
      v61 = (v0 + 568);
      v60 = v0 + 544;
      v62 = (v0 + 536);
      goto LABEL_18;
    }

    v122 = v16;
    v118 = *(v0 + 780);
    v17 = *(v0 + 568);
    v18 = *(v0 + 496);
    v19 = *(v0 + 504);
    v20 = *(v0 + 488);
    v22 = *(v0 + 448);
    v21 = *(v0 + 456);
    v104 = v20;
    v107 = *(v0 + 432);
    v23 = *(v0 + 416);
    v110 = *(v0 + 440);
    v114 = *(v0 + 424);
    v24 = *(v0 + 408);
    (*(*(v0 + 544) + 96))(v17, *(v0 + 536));
    (*(v18 + 32))(v19, v17, v104);
    USOParse.userParse.getter();
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    (*(v22 + 8))(v21, v110);
    (*(v23 + 104))(v114, v118, v24);
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v25 = *(v23 + 8);
    v25(v114, v24);
    v25(v107, v24);
    if (*(v0 + 336) == *(v0 + 344) || (v26 = *(v0 + 480), (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0))
    {
      (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
      goto LABEL_9;
    }

    v28 = *(v0 + 472);
    v27 = *(v0 + 480);
    v29 = *(v0 + 464);
    v30 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
    (*(v28 + 8))(v27, v29);
    if ((v30 & 1) == 0)
    {
      break;
    }

LABEL_9:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 584);
    v32 = *(v0 + 560);
    v33 = *(v0 + 536);
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    v122(v32, v31, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 584);
    if (v37)
    {
      v39 = *(v0 + 576);
      v40 = *(v0 + 560);
      v102 = *(v0 + 544);
      v41 = *(v0 + 536);
      v115 = *(v0 + 504);
      v119 = *(v0 + 584);
      v108 = *(v0 + 496);
      v111 = *(v0 + 488);
      v42 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v125[0] = v105;
      *v42 = 136315138;
      v122(v39, v40, v41);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      v46 = *(v102 + 8);
      v46(v40, v41);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v125);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1DC659000, v35, v36, "allHandlers(for:) Skipping SNLC parse %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x1E12A2F50](v105, -1, -1);
      MEMORY[0x1E12A2F50](v42, -1, -1);

      (*(v108 + 8))(v115, v111);
      v46(v119, v41);
    }

    else
    {
      v48 = *(v0 + 560);
      v49 = *(v0 + 544);
      v50 = *(v0 + 536);
      v52 = *(v0 + 496);
      v51 = *(v0 + 504);
      v53 = *(v0 + 488);

      v54 = *(v49 + 8);
      v54(v48, v50);
      (*(v52 + 8))(v51, v53);
      v54(v38, v50);
    }

    v55 = *(v0 + 656);
    v56 = *(v0 + 608);
    v57 = *(v0 + 600);
    v58 = *(v0 + 592);
    v59 = *(v0 + 672) + 1;
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    (*(v57 + 8))(v56, v58);
    if (v59 == v55)
    {
      v83 = *(v0 + 648);
      goto LABEL_36;
    }

    v6 = *(v0 + 672) + 1;
    *(v0 + 672) = v6;
    *(v0 + 664) = 0;
    v3 = *(v0 + 648);
    if (v6 >= v3[2])
    {
      goto LABEL_49;
    }
  }

  v61 = (v0 + 504);
  v60 = v0 + 496;
  v62 = (v0 + 488);
LABEL_18:
  (*(*v60 + 8))(*v61, *v62);
  v63 = *(v0 + 584);
  v64 = static IntentTopic.make(from:)();
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = *(v0 + 384);
    v67 = v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v68 = *(v66 + 72);
    v123 = *(v66 + 16);
    v69 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v70 = *(v0 + 400);
      v72 = *(v0 + 376);
      v71 = *(v0 + 384);
      v123(v70, v67, v72);
      v73 = IntentTopic.makeWildcardFallbacks()();
      (*(v71 + 8))(v70, v72);
      v74 = *(v73 + 16);
      v75 = v69[2];
      v76 = v75 + v74;
      if (__OFADD__(v75, v74))
      {
        goto LABEL_50;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v76 <= v69[3] >> 1)
      {
        if (*(v73 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v75 <= v76)
        {
          v78 = v75 + v74;
        }

        else
        {
          v78 = v75;
        }

        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v78, 1, v69);
        if (*(v73 + 16))
        {
LABEL_31:
          if ((v69[3] >> 1) - v69[2] < v74)
          {
            goto LABEL_52;
          }

          v79 = *(v0 + 376);
          swift_arrayInitWithCopy();

          if (v74)
          {
            v80 = v69[2];
            v81 = __OFADD__(v80, v74);
            v82 = v80 + v74;
            if (v81)
            {
              goto LABEL_53;
            }

            v69[2] = v82;
          }

          goto LABEL_21;
        }
      }

      if (v74)
      {
        goto LABEL_51;
      }

LABEL_21:
      v67 += v68;
      if (!--v65)
      {

        goto LABEL_45;
      }
    }
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_45:
  *(v0 + 696) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(v69);

  v101 = static MessageBusActor.shared;
  *(v0 + 704) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v101, 0);
}

{
  v1 = *(*(v0 + 368) + 16);
  v2 = *(MEMORY[0x1E69E86C0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 712) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25PluginLookupByIntentTopic_pMd, &_s14SiriKitRuntime25PluginLookupByIntentTopic_pMR);
  *v3 = v0;
  v3[1] = ConversationHandlerLocator.allHandlers(for:);

  return MEMORY[0x1EEE6DA40](v0 + 16, v1, v4);
}

{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v2, 0);
}

{
  v222 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 696);
  v3 = *(v0 + 664);
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 16;
  v5 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #2 in ConversationHandlerLocator.allHandlers(for:), v4, v2);
  *(v0 + 720) = v5;
  *(v0 + 728) = v3;

  if (v5 >> 62)
  {
    goto LABEL_89;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v190 = v1;
    if (one-time initialization token for executor != -1)
    {
LABEL_92:
      swift_once();
    }

    v6 = *(v0 + 688);
    v7 = *(v0 + 680);
    v8 = *(v0 + 584);
    v9 = *(v0 + 552);
    v10 = *(v0 + 536);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v7(v9, v8, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v213 = *(v0 + 688);
      v14 = *(v0 + 680);
      v15 = *(v0 + 576);
      v16 = *(v0 + 552);
      v17 = *(v0 + 544);
      v18 = *(v0 + 536);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v221[0] = v20;
      *v19 = 136315138;
      v14(v15, v16, v18);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v221);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1DC659000, v12, v13, "allHandlers(for:) Found no plugins for parse: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    else
    {
      v25 = *(v0 + 552);
      v26 = *(v0 + 544);
      v27 = *(v0 + 536);

      (*(v26 + 8))(v25, v27);
    }

    v1 = v190;
  }

LABEL_8:
  v28 = *(v0 + 696);
  v29 = *(v28 + 32);
  *(v0 + 784) = v29;
  v30 = -1;
  v31 = -1 << v29;
  v32 = *(v28 + 56);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v33 = MEMORY[0x1E69E7CC0];
  *(v0 + 736) = MEMORY[0x1E69E7CC0];
  v34 = v30 & v32;
  if (!v34)
  {
    v36 = 0;
    v37 = ((63 - v31) >> 6) - 1;
    while (v37 != v36)
    {
      v35 = v36 + 1;
      v34 = *(v28 + 8 * v36++ + 64);
      if (v34)
      {
        goto LABEL_15;
      }
    }

    v45 = *(v0 + 720);

    v46 = *(v0 + 720);
    if (v45 >> 62)
    {
      if (v46 < 0)
      {
        v79 = *(v0 + 720);
      }

      v47 = __CocoaSet.count.getter();
      v190 = v1;
      if (v47)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v190 = v1;
      if (v47)
      {
LABEL_20:
        *(v0 + 328) = v33;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
        if (v47 < 0)
        {
          __break(1u);
          goto LABEL_94;
        }

        v48 = 0;
        v49 = *(v0 + 720);
        v50 = *(v0 + 328);
        v203 = v49 & 0xC000000000000001;
        log = v49 + 4;
        v208 = v47;
        do
        {
          if (v203)
          {
            isa = MEMORY[0x1E12A1FE0](v48, *(v0 + 720));
          }

          else
          {
            isa = log[v48].isa;
          }

          v214 = v50;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          __swift_project_value_buffer(v52, static Logger.executor);
          v53 = static os_log_type_t.debug.getter();
          v54 = Logger.logObject.getter();
          if (os_log_type_enabled(v54, v53))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v221[0] = v56;
            *v55 = 136315650;
            v57 = StaticString.description.getter();
            v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v221);

            *(v55 + 4) = v59;
            *(v55 + 12) = 2080;
            v60 = StaticString.description.getter();
            v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v221);

            *(v55 + 14) = v62;
            *(v55 + 22) = 2080;
            *(v55 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x80000001DCA7FB70, v221);
            _os_log_impl(&dword_1DC659000, v54, v53, "%s:%s: %s", v55, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v56, -1, -1);
            MEMORY[0x1E12A2F50](v55, -1, -1);
          }

          v64 = isa[2];
          v63 = isa[3];
          v66 = isa[6];
          v65 = isa[7];
          outlined init with copy of ReferenceResolutionClientProtocol((isa + 8), v0 + 256);
          v67 = isa[4];
          v68 = type metadata accessor for RemoteFlowPluginBundleConversationHandler();
          v69 = swift_allocObject();
          v69[12] = 0;
          v69[13] = 0;
          v69[2] = v64;
          v69[3] = v63;
          v69[4] = v66;
          v69[5] = v65;
          outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), (v69 + 7));
          v69[6] = v67;
          *(v0 + 240) = v68;
          *(v0 + 248) = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, type metadata accessor for RemoteFlowPluginBundleConversationHandler);

          *(v0 + 216) = v69;
          *(v0 + 328) = v214;
          v71 = v214[2];
          v70 = v214[3];
          if (v71 >= v70 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
          }

          ++v48;
          v73 = *(v0 + 240);
          v72 = *(v0 + 248);
          v74 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v73);
          v75 = *(v73 - 8);
          v76 = *(v75 + 64) + 15;
          v77 = swift_task_alloc();
          (*(v75 + 16))(v77, v74, v73);
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v71, v77, (v0 + 328), v73, v72);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

          v50 = *(v0 + 328);
        }

        while (v208 != v48);
        v78 = *(v0 + 720);

LABEL_37:
        v81 = *(v0 + 728);
        v82 = *(v0 + 608);
        v215 = *(v0 + 584);
        v221[0] = v50;
        v83 = *(v0 + 544);
        v84 = *(v0 + 536);
        v85 = *(v0 + 528);

        specialized Array.append<A>(contentsOf:)(v86);
        v87 = v221[0];
        v88 = swift_task_alloc();
        *(v88 + 16) = v85;
        v89 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #4 in ConversationHandlerLocator.allHandlers(for:), v88, v87);

        v90 = swift_task_alloc();
        *(v90 + 16) = v82;
        v91 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VG_10Foundation4UUIDV4uuid_AJ06scoredH0ts5NeverOTg5(partial apply for closure #5 in ConversationHandlerLocator.allHandlers(for:), v90, v89);
        v191 = v81;

        specialized Array.append<A>(contentsOf:)(v91);
        (*(v83 + 8))(v215, v84);
        __swift_destroy_boxed_opaque_existential_1Tm(v190);
        while (1)
        {
          v99 = *(v0 + 656);
          v100 = *(v0 + 608);
          v101 = *(v0 + 600);
          v102 = *(v0 + 592);
          v103 = *(v0 + 672) + 1;
          (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
          v104 = *(v101 + 8);
          v1 = (v101 + 8);
          v104(v100, v102);
          if (v103 == v99)
          {
            break;
          }

          v105 = *(v0 + 672) + 1;
          *(v0 + 672) = v105;
          *(v0 + 664) = v191;
          v106 = *(v0 + 648);
          if (v105 >= *(v106 + 16))
          {
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            if (!__CocoaSet.count.getter())
            {
              goto LABEL_3;
            }

            goto LABEL_8;
          }

          v216 = *(v0 + 776);
          v204 = *(v0 + 768);
          v107 = *(v0 + 632);
          v108 = *(v0 + 608);
          v109 = *(v0 + 600);
          v110 = *(v0 + 592);
          v111 = *(v0 + 584);
          v112 = *(v0 + 576);
          v113 = *(v0 + 568);
          v114 = *(v0 + 544);
          v115 = *(v0 + 536);
          v209 = *(v0 + 528);
          outlined init with copy of ReferenceResolutionClientProtocol?(v106 + ((*(v0 + 772) + 32) & ~*(v0 + 772)) + *(*(v0 + 624) + 72) * v105, v107, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
          (*(v109 + 32))(v108, v107, v110);
          (*(v114 + 32))(v111, v107 + v204, v115);
          v116 = *(v114 + 16);
          *(v0 + 680) = v116;
          *(v0 + 688) = (v114 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v116(v112, v111, v115);
          Input.init(parse:)();
          v210 = v116;
          v116(v113, v111, v115);
          if ((*(v114 + 88))(v113, v115) != v216)
          {
            v158 = (v0 + 536);
            v157 = v0 + 544;
            v159 = (v0 + 568);
            goto LABEL_54;
          }

          v217 = *(v0 + 780);
          v117 = *(v0 + 568);
          v119 = *(v0 + 496);
          v118 = *(v0 + 504);
          v120 = *(v0 + 480);
          v122 = *(v0 + 448);
          v121 = *(v0 + 456);
          v200 = *(v0 + 440);
          loga = *(v0 + 488);
          v197 = *(v0 + 432);
          v123 = *(v0 + 416);
          v205 = *(v0 + 424);
          v124 = *(v0 + 408);
          (*(*(v0 + 544) + 96))(v117, *(v0 + 536));
          (*(v119 + 32))(v118, v117, loga);
          USOParse.userParse.getter();
          Siri_Nlu_External_UserParse.parser.getter();
          Siri_Nlu_External_Parser.parserID.getter();
          (*(v122 + 8))(v121, v200);
          (*(v123 + 104))(v205, v217, v124);
          lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v125 = *(v123 + 8);
          v125(v205, v124);
          v125(v197, v124);
          if (*(v0 + 336) == *(v0 + 344) || (v126 = *(v0 + 480), (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0))
          {
            (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
            v127 = v210;
          }

          else
          {
            v129 = *(v0 + 472);
            v128 = *(v0 + 480);
            v130 = *(v0 + 464);
            v131 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
            (*(v129 + 8))(v128, v130);
            v127 = v210;
            if ((v131 & 1) == 0)
            {
              v157 = v0 + 496;
              v159 = (v0 + 504);
              v158 = (v0 + 488);
LABEL_54:
              (*(*v157 + 8))(*v159, *v158);
              v160 = *(v0 + 584);
              v161 = static IntentTopic.make(from:)();
              v162 = *(v161 + 16);
              if (!v162)
              {

                v165 = MEMORY[0x1E69E7CC0];
LABEL_78:
                *(v0 + 696) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(v165);

                v179 = static MessageBusActor.shared;
                *(v0 + 704) = static MessageBusActor.shared;

                return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v179, 0);
              }

              v163 = *(v0 + 384);
              v1 = (v161 + ((*(v163 + 80) + 32) & ~*(v163 + 80)));
              v164 = *(v163 + 72);
              v219 = *(v163 + 16);
              v165 = MEMORY[0x1E69E7CC0];
              while (2)
              {
                v166 = *(v0 + 400);
                v168 = *(v0 + 376);
                v167 = *(v0 + 384);
                v219(v166, v1, v168);
                v169 = IntentTopic.makeWildcardFallbacks()();
                (*(v167 + 8))(v166, v168);
                v170 = *(v169 + 16);
                v171 = v165[2];
                v172 = v171 + v170;
                if (__OFADD__(v171, v170))
                {
                  goto LABEL_86;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native && v172 <= v165[3] >> 1)
                {
                  if (!*(v169 + 16))
                  {
LABEL_56:

                    if (v170)
                    {
                      goto LABEL_87;
                    }

LABEL_57:
                    v1 = (v1 + v164);
                    if (!--v162)
                    {

                      goto LABEL_78;
                    }

                    continue;
                  }
                }

                else
                {
                  if (v171 <= v172)
                  {
                    v174 = v171 + v170;
                  }

                  else
                  {
                    v174 = v171;
                  }

                  v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v174, 1, v165);
                  if (!*(v169 + 16))
                  {
                    goto LABEL_56;
                  }
                }

                break;
              }

              if ((v165[3] >> 1) - v165[2] < v170)
              {
                goto LABEL_88;
              }

              v175 = *(v0 + 376);
              swift_arrayInitWithCopy();

              if (v170)
              {
                v176 = v165[2];
                v177 = __OFADD__(v176, v170);
                v178 = v176 + v170;
                if (v177)
                {
                  __break(1u);
                  goto LABEL_92;
                }

                v165[2] = v178;
              }

              goto LABEL_57;
            }
          }

          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v132 = *(v0 + 584);
          v133 = *(v0 + 560);
          v134 = *(v0 + 536);
          v135 = type metadata accessor for Logger();
          __swift_project_value_buffer(v135, static Logger.executor);
          v127(v133, v132, v134);
          v136 = Logger.logObject.getter();
          v137 = static os_log_type_t.debug.getter();
          v138 = os_log_type_enabled(v136, v137);
          v218 = *(v0 + 584);
          if (v138)
          {
            v139 = *(v0 + 576);
            v140 = *(v0 + 560);
            v190 = *(v0 + 544);
            logb = v136;
            v141 = *(v0 + 536);
            v211 = *(v0 + 504);
            v201 = *(v0 + 496);
            v206 = *(v0 + 488);
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v221[0] = v143;
            *v142 = 136315138;
            v127(v139, v140, v141);
            v144 = v141;
            v198 = v141;
            v145 = String.init<A>(describing:)();
            v147 = v146;
            v148 = v190[1];
            v148(v140, v144);
            v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, v221);

            *(v142 + 4) = v149;
            _os_log_impl(&dword_1DC659000, logb, v137, "allHandlers(for:) Skipping SNLC parse %s", v142, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v143);
            MEMORY[0x1E12A2F50](v143, -1, -1);
            MEMORY[0x1E12A2F50](v142, -1, -1);

            (*(v201 + 8))(v211, v206);
            v148(v218, v198);
          }

          else
          {
            v92 = *(v0 + 560);
            v93 = *(v0 + 544);
            v94 = *(v0 + 536);
            v96 = *(v0 + 496);
            v95 = *(v0 + 504);
            v97 = *(v0 + 488);

            v98 = *(v93 + 8);
            v98(v92, v94);
            (*(v96 + 8))(v95, v97);
            v98(v218, v94);
          }
        }

        v150 = *(v0 + 648);

        v151 = *(v0 + 640);

        if (one-time initialization token for executor == -1)
        {
LABEL_51:
          v152 = type metadata accessor for Logger();
          __swift_project_value_buffer(v152, static Logger.executor);
          v153 = *(v0 + 320);

          v154 = Logger.logObject.getter();
          v155 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            *v156 = 134217984;
            *(v156 + 4) = v153[2];

            _os_log_impl(&dword_1DC659000, v154, v155, "allHandlers(for:) Total handlers found: %ld", v156, 0xCu);
            MEMORY[0x1E12A2F50](v156, -1, -1);
          }

          else
          {
          }

          v221[0] = v153;

          specialized MutableCollection<>.sort(by:)(v221);
          if (v191)
          {
          }

          else
          {
            v180 = *(v0 + 632);
            v181 = *(v0 + 608);
            v182 = *(v0 + 584);
            v183 = *(v0 + 576);
            v184 = *(v0 + 568);
            v185 = *(v0 + 560);
            v186 = *(v0 + 552);
            v187 = *(v0 + 528);
            v192 = *(v0 + 504);
            logc = *(v0 + 480);
            v199 = *(v0 + 456);
            v202 = *(v0 + 432);
            v207 = *(v0 + 424);
            v212 = *(v0 + 400);
            v220 = *(v0 + 392);

            v188 = v221[0];

            v189 = *(v0 + 8);

            return v189(v188);
          }
        }

LABEL_94:
        swift_once();
        goto LABEL_51;
      }
    }

    v80 = *(v0 + 720);

    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_37;
  }

  v35 = 0;
LABEL_15:
  *(v0 + 752) = v35;
  *(v0 + 744) = v34;
  v38 = *(v0 + 368);
  (*(*(v0 + 384) + 16))(*(v0 + 392), *(v28 + 48) + *(*(v0 + 384) + 72) * (__clz(__rbit64(v34)) | (v35 << 6)), *(v0 + 376));
  v39 = v38[3];
  v40 = v38[5];
  v41 = v38[6];
  v42 = swift_task_alloc();
  *(v0 + 760) = v42;
  *v42 = v0;
  v42[1] = ConversationHandlerLocator.allHandlers(for:);
  v43 = *(v0 + 392);

  return FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)(v0 + 96, v43, v40, v41);
}

{
  v1 = *(v0 + 704);
  v2 = *(v0 + 640);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v2, 0);
}

{
  v1 = *(*v0 + 760);
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *(*v0 + 376);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v2, 0);
}

{
  v206 = v0;
  if (!*(v0 + 120))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v12 = *(v0 + 736);
    goto LABEL_12;
  }

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_94;
  }

LABEL_3:
  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v205[0] = v5;
    *v4 = 136315138;
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v6);
    v8 = (*(v7 + 16))(v6, v7);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v205);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v2, v3, "allHandlers(for:) Found extension with id: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  }

  v13 = *(v0 + 736);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 736);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, *(v0 + 736));
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v12[2] = v16 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), &v12[5 * v16 + 4]);
LABEL_12:
  v17 = *(v0 + 752);
  v18 = *(v0 + 744);
  *(v0 + 736) = v12;
  v19 = (v18 - 1) & v18;
  if (v19)
  {
    v20 = *(v0 + 696);
    goto LABEL_18;
  }

  do
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      swift_once();
      goto LABEL_3;
    }

    if (v21 >= (((1 << *(v0 + 784)) + 63) >> 6))
    {
      v29 = *(v0 + 720);
      v30 = *(v0 + 696);

      v31 = *(v0 + 720);
      if (v29 >> 62)
      {
        if (v31 < 0)
        {
          v64 = *(v0 + 720);
        }

        v32 = __CocoaSet.count.getter();
        if (v32)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
LABEL_23:
          *(v0 + 328) = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
          if (v32 < 0)
          {
            __break(1u);
            goto LABEL_96;
          }

          v33 = 0;
          v34 = *(v0 + 720);
          v188 = v34 & 0xC000000000000001;
          v35 = *(v0 + 328);
          log = v34 + 4;
          v193 = v32;
          do
          {
            if (v188)
            {
              isa = MEMORY[0x1E12A1FE0](v33, *(v0 + 720));
            }

            else
            {
              isa = log[v33].isa;
            }

            v198 = v35;
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v37 = type metadata accessor for Logger();
            __swift_project_value_buffer(v37, static Logger.executor);
            v38 = static os_log_type_t.debug.getter();
            v39 = Logger.logObject.getter();
            if (os_log_type_enabled(v39, v38))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v205[0] = v41;
              *v40 = 136315650;
              v42 = StaticString.description.getter();
              v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v205);

              *(v40 + 4) = v44;
              *(v40 + 12) = 2080;
              v45 = StaticString.description.getter();
              v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v205);

              *(v40 + 14) = v47;
              *(v40 + 22) = 2080;
              *(v40 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x80000001DCA7FB70, v205);
              _os_log_impl(&dword_1DC659000, v39, v38, "%s:%s: %s", v40, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v41, -1, -1);
              MEMORY[0x1E12A2F50](v40, -1, -1);
            }

            v49 = isa[2];
            v48 = isa[3];
            v51 = isa[6];
            v50 = isa[7];
            outlined init with copy of ReferenceResolutionClientProtocol((isa + 8), v0 + 256);
            v52 = isa[4];
            v53 = type metadata accessor for RemoteFlowPluginBundleConversationHandler();
            v54 = swift_allocObject();
            v54[12] = 0;
            v54[13] = 0;
            v54[2] = v49;
            v54[3] = v48;
            v54[4] = v51;
            v54[5] = v50;
            outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), (v54 + 7));
            v54[6] = v52;
            *(v0 + 240) = v53;
            *(v0 + 248) = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, type metadata accessor for RemoteFlowPluginBundleConversationHandler);

            *(v0 + 216) = v54;
            *(v0 + 328) = v198;
            v56 = v198[2];
            v55 = v198[3];
            if (v56 >= v55 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
            }

            ++v33;
            v58 = *(v0 + 240);
            v57 = *(v0 + 248);
            v59 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v58);
            v60 = *(v58 - 8);
            v61 = *(v60 + 64) + 15;
            v62 = swift_task_alloc();
            (*(v60 + 16))(v62, v59, v58);
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v56, v62, (v0 + 328), v58, v57);
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

            v35 = *(v0 + 328);
          }

          while (v193 != v33);
          v63 = *(v0 + 720);

LABEL_40:
          v66 = *(v0 + 728);
          v67 = *(v0 + 608);
          v199 = *(v0 + 584);
          v205[0] = v35;
          v68 = *(v0 + 544);
          v69 = *(v0 + 536);
          v70 = *(v0 + 528);

          specialized Array.append<A>(contentsOf:)(v71);
          v72 = v205[0];
          v73 = swift_task_alloc();
          *(v73 + 16) = v70;
          v74 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #4 in ConversationHandlerLocator.allHandlers(for:), v73, v72);

          v75 = swift_task_alloc();
          *(v75 + 16) = v67;
          v76 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VG_10Foundation4UUIDV4uuid_AJ06scoredH0ts5NeverOTg5(partial apply for closure #5 in ConversationHandlerLocator.allHandlers(for:), v75, v74);
          v176 = v66;

          specialized Array.append<A>(contentsOf:)(v76);
          (*(v68 + 8))(v199, v69);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          while (1)
          {
            v84 = *(v0 + 656);
            v85 = *(v0 + 608);
            v86 = *(v0 + 600);
            v87 = *(v0 + 592);
            v88 = *(v0 + 672) + 1;
            (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
            (*(v86 + 8))(v85, v87);
            if (v88 == v84)
            {
              break;
            }

            v89 = *(v0 + 672) + 1;
            *(v0 + 672) = v89;
            *(v0 + 664) = v176;
            v90 = *(v0 + 648);
            if (v89 >= *(v90 + 16))
            {
              goto LABEL_89;
            }

            v200 = *(v0 + 776);
            v189 = *(v0 + 768);
            v91 = *(v0 + 632);
            v92 = *(v0 + 608);
            v93 = *(v0 + 600);
            v94 = *(v0 + 592);
            v95 = *(v0 + 584);
            v96 = *(v0 + 576);
            v97 = *(v0 + 568);
            v98 = *(v0 + 544);
            v99 = *(v0 + 536);
            v194 = *(v0 + 528);
            outlined init with copy of ReferenceResolutionClientProtocol?(v90 + ((*(v0 + 772) + 32) & ~*(v0 + 772)) + *(*(v0 + 624) + 72) * v89, v91, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
            (*(v93 + 32))(v92, v91, v94);
            (*(v98 + 32))(v95, v91 + v189, v99);
            v100 = *(v98 + 16);
            *(v0 + 680) = v100;
            *(v0 + 688) = (v98 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v100(v96, v95, v99);
            Input.init(parse:)();
            v195 = v100;
            v100(v97, v95, v99);
            if ((*(v98 + 88))(v97, v99) != v200)
            {
              v142 = (v0 + 536);
              v141 = v0 + 544;
              v143 = (v0 + 568);
              goto LABEL_57;
            }

            v201 = *(v0 + 780);
            v101 = *(v0 + 568);
            v103 = *(v0 + 496);
            v102 = *(v0 + 504);
            v104 = *(v0 + 480);
            v106 = *(v0 + 448);
            v105 = *(v0 + 456);
            v185 = *(v0 + 440);
            loga = *(v0 + 488);
            v182 = *(v0 + 432);
            v107 = *(v0 + 416);
            v190 = *(v0 + 424);
            v108 = *(v0 + 408);
            (*(*(v0 + 544) + 96))(v101, *(v0 + 536));
            (*(v103 + 32))(v102, v101, loga);
            USOParse.userParse.getter();
            Siri_Nlu_External_UserParse.parser.getter();
            Siri_Nlu_External_Parser.parserID.getter();
            (*(v106 + 8))(v105, v185);
            (*(v107 + 104))(v190, v201, v108);
            lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v109 = *(v107 + 8);
            v109(v190, v108);
            v109(v182, v108);
            if (*(v0 + 336) == *(v0 + 344) || (v110 = *(v0 + 480), (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0))
            {
              (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
              v111 = v195;
            }

            else
            {
              v113 = *(v0 + 472);
              v112 = *(v0 + 480);
              v114 = *(v0 + 464);
              v115 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
              (*(v113 + 8))(v112, v114);
              v111 = v195;
              if ((v115 & 1) == 0)
              {
                v141 = v0 + 496;
                v143 = (v0 + 504);
                v142 = (v0 + 488);
LABEL_57:
                (*(*v141 + 8))(*v143, *v142);
                v144 = *(v0 + 584);
                v145 = static IntentTopic.make(from:)();
                v146 = *(v145 + 16);
                if (!v146)
                {

                  v150 = MEMORY[0x1E69E7CC0];
LABEL_81:
                  *(v0 + 696) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(v150);

                  v164 = static MessageBusActor.shared;
                  *(v0 + 704) = static MessageBusActor.shared;

                  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v164, 0);
                }

                v147 = *(v0 + 384);
                v148 = v145 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
                v149 = *(v147 + 72);
                v203 = *(v147 + 16);
                v150 = MEMORY[0x1E69E7CC0];
                while (2)
                {
                  v151 = *(v0 + 400);
                  v153 = *(v0 + 376);
                  v152 = *(v0 + 384);
                  v203(v151, v148, v153);
                  v154 = IntentTopic.makeWildcardFallbacks()();
                  (*(v152 + 8))(v151, v153);
                  v155 = *(v154 + 16);
                  v156 = v150[2];
                  v157 = v156 + v155;
                  if (__OFADD__(v156, v155))
                  {
                    goto LABEL_90;
                  }

                  v158 = swift_isUniquelyReferenced_nonNull_native();
                  if (v158 && v157 <= v150[3] >> 1)
                  {
                    if (!*(v154 + 16))
                    {
LABEL_59:

                      if (v155)
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    if (v156 <= v157)
                    {
                      v159 = v156 + v155;
                    }

                    else
                    {
                      v159 = v156;
                    }

                    v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v158, v159, 1, v150);
                    if (!*(v154 + 16))
                    {
                      goto LABEL_59;
                    }
                  }

                  if ((v150[3] >> 1) - v150[2] < v155)
                  {
                    goto LABEL_92;
                  }

                  v160 = *(v0 + 376);
                  swift_arrayInitWithCopy();

                  if (v155)
                  {
                    v161 = v150[2];
                    v162 = __OFADD__(v161, v155);
                    v163 = v161 + v155;
                    if (v162)
                    {
                      goto LABEL_93;
                    }

                    v150[2] = v163;
                  }

LABEL_60:
                  v148 += v149;
                  if (!--v146)
                  {

                    goto LABEL_81;
                  }

                  continue;
                }
              }
            }

            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v116 = *(v0 + 584);
            v117 = *(v0 + 560);
            v118 = *(v0 + 536);
            v119 = type metadata accessor for Logger();
            __swift_project_value_buffer(v119, static Logger.executor);
            v111(v117, v116, v118);
            v120 = Logger.logObject.getter();
            v121 = static os_log_type_t.debug.getter();
            v122 = os_log_type_enabled(v120, v121);
            v202 = *(v0 + 584);
            if (v122)
            {
              v123 = *(v0 + 576);
              v124 = *(v0 + 560);
              v175 = *(v0 + 544);
              logb = v120;
              v125 = *(v0 + 536);
              v196 = *(v0 + 504);
              v186 = *(v0 + 496);
              v191 = *(v0 + 488);
              v126 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v205[0] = v127;
              *v126 = 136315138;
              v111(v123, v124, v125);
              v128 = v125;
              v183 = v125;
              v129 = String.init<A>(describing:)();
              v131 = v130;
              v132 = *(v175 + 8);
              v132(v124, v128);
              v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v205);

              *(v126 + 4) = v133;
              _os_log_impl(&dword_1DC659000, logb, v121, "allHandlers(for:) Skipping SNLC parse %s", v126, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v127);
              MEMORY[0x1E12A2F50](v127, -1, -1);
              MEMORY[0x1E12A2F50](v126, -1, -1);

              (*(v186 + 8))(v196, v191);
              v132(v202, v183);
            }

            else
            {
              v77 = *(v0 + 560);
              v78 = *(v0 + 544);
              v79 = *(v0 + 536);
              v81 = *(v0 + 496);
              v80 = *(v0 + 504);
              v82 = *(v0 + 488);

              v83 = *(v78 + 8);
              v83(v77, v79);
              (*(v81 + 8))(v80, v82);
              v83(v202, v79);
            }
          }

          v134 = *(v0 + 648);

          v135 = *(v0 + 640);

          if (one-time initialization token for executor == -1)
          {
LABEL_54:
            v136 = type metadata accessor for Logger();
            __swift_project_value_buffer(v136, static Logger.executor);
            v137 = *(v0 + 320);

            v138 = Logger.logObject.getter();
            v139 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              *v140 = 134217984;
              *(v140 + 4) = v137[2];

              _os_log_impl(&dword_1DC659000, v138, v139, "allHandlers(for:) Total handlers found: %ld", v140, 0xCu);
              MEMORY[0x1E12A2F50](v140, -1, -1);
            }

            else
            {
            }

            v205[0] = v137;

            specialized MutableCollection<>.sort(by:)(v205);
            if (v176)
            {
            }

            else
            {
              v165 = *(v0 + 632);
              v166 = *(v0 + 608);
              v167 = *(v0 + 584);
              v168 = *(v0 + 576);
              v169 = *(v0 + 568);
              v170 = *(v0 + 560);
              v171 = *(v0 + 552);
              v172 = *(v0 + 528);
              v177 = *(v0 + 504);
              logc = *(v0 + 480);
              v184 = *(v0 + 456);
              v187 = *(v0 + 432);
              v192 = *(v0 + 424);
              v197 = *(v0 + 400);
              v204 = *(v0 + 392);

              v173 = v205[0];

              v174 = *(v0 + 8);

              return v174(v173);
            }
          }

LABEL_96:
          swift_once();
          goto LABEL_54;
        }
      }

      v65 = *(v0 + 720);

      v35 = MEMORY[0x1E69E7CC0];
      goto LABEL_40;
    }

    v20 = *(v0 + 696);
    v19 = *(v20 + 8 * v21 + 56);
    ++v17;
  }

  while (!v19);
  v17 = v21;
LABEL_18:
  *(v0 + 752) = v17;
  *(v0 + 744) = v19;
  v22 = *(v0 + 368);
  (*(*(v0 + 384) + 16))(*(v0 + 392), *(v20 + 48) + *(*(v0 + 384) + 72) * (__clz(__rbit64(v19)) | (v17 << 6)), *(v0 + 376));
  v23 = v22[3];
  v24 = v22[5];
  v25 = v22[6];
  v26 = swift_task_alloc();
  *(v0 + 760) = v26;
  *v26 = v0;
  v26[1] = ConversationHandlerLocator.allHandlers(for:);
  v27 = *(v0 + 392);

  return FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)(v0 + 96, v27, v24, v25);
}

void *specialized ImmutableSimpleOrderedDictionary.items()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v42 - v6;
  v57 = type metadata accessor for Parse();
  v7 = *(v57 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v42 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = *(v13 + 16);
  v19 = v13 + 16;
  v20 = v21;
  v22 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v23 = *(v19 + 56);
  v44 = v7 + 4;
  v45 = v7 + 2;
  v43 = (v7 + 1);
  v24 = (v19 - 8);
  v60 = MEMORY[0x1E69E7CC0];
  v50 = v7;
  v51 = a1;
  v56 = v19;
  v48 = v21;
  v49 = v12;
  v46 = v23;
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = (v19 - 8);
  (v21)(v17, v22, v12, v16);
  while (1)
  {
    if (*(a1 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v27 & 1) != 0))
    {
      v28 = *(a1 + 56);
      v29 = v7;
      v30 = v28 + v7[9] * v26;
      v31 = v7[2];
      v32 = v52;
      v33 = v57;
      v31(v52, v30, v57);
      v34 = v29[4];
      v35 = v58;
      v34(v58, v32, v33);
      v55 = *(v54 + 48);
      v36 = v59;
      v20(v59, v17, v12);
      v31((v36 + v55), v35, v33);
      v37 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v39 = v37[2];
      v38 = v37[3];
      v12 = v49;
      v7 = v50;
      v17 = v47;
      v20 = v48;
      v24 = v42;
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v37);
      }

      (*v43)(v58, v57);
      (*v24)(v17, v12);
      v37[2] = v39 + 1;
      v40 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v60 = v37;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v59, v37 + v40 + *(v53 + 72) * v39, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
      a1 = v51;
      v23 = v46;
    }

    else
    {
      (*v24)(v17, v12);
    }

    v22 += v23;
    if (!--v18)
    {
      break;
    }

    (v20)(v17, v22, v12, v25);
  }

  return v60;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *initializeBufferWithCopyOfBuffer for CachedPluginCatalog(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[43] = a4;
  v5[44] = v4;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)()
{
  v42 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 328);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v2 = IntentTopic.makeCacheKeyAndWildcardFallbacks()();
  *(v0 + 360) = v2;
  v3 = v2[2];
  *(v0 + 368) = v3;
  if (v3)
  {
    *(v0 + 376) = *(*(v0 + 352) + 16);
    *(v0 + 384) = 0;
    if (v2[2])
    {
      *(v0 + 392) = v2[4];
      *(v0 + 400) = v2[5];
      v4 = one-time initialization token for shared;

      if (v4 == -1)
      {
LABEL_4:
        v5 = static ConversationActor.shared;
        *(v0 + 408) = static ConversationActor.shared;

        return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), v5, 0);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (*(v0 + 160))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
    v7 = static os_log_type_t.debug.getter();
    v8 = Logger.logObject.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315650;
      v11 = StaticString.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v39);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = StaticString.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v39);

      *(v9 + 14) = v16;
      *(v9 + 22) = 2080;
      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v40 = 0xD000000000000025;
      v41 = 0x80000001DCA839A0;
      v17 = *(v0 + 200);
      v18 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v17);
      v19 = (*(v18 + 8))(v17, v18);
      MEMORY[0x1E12A1580](v19);

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v39);

      *(v9 + 24) = v20;
      _os_log_impl(&dword_1DC659000, v8, v7, "%s:%s: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    v22 = *(v0 + 336);
    v21 = *(v0 + 344);
    v23 = *(v0 + 320);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
    v24 = type metadata accessor for FlowExtensionConnection();
    swift_allocObject();

    v25 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v22, v21);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v26);
    v28 = (*(v27 + 8))(v26, v27);
    v30 = v29;
    *(v0 + 280) = v24;
    *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
    *(v0 + 256) = v25;
    type metadata accessor for RemoteConversationClient();
    v31 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v31 + 168) = 0;
    *(v31 + 176) = 0;
    *(v31 + 184) = 2;
    *(v31 + 112) = v28;
    *(v31 + 120) = v30;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v31 + 128);
    v23[3] = &type metadata for FlowExtensionConversationHandler;
    v23[4] = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

    *v23 = v31;
    v23[1] = v28;
    v23[2] = v30;
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DC659000, v33, v34, "No extensions support input", v35, 2u);
      MEMORY[0x1E12A2F50](v35, -1, -1);
    }

    v36 = *(v0 + 320);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0;
  }

  v37 = *(v0 + 8);

  return v37();
}

{
  v46 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 360);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);

    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
LABEL_5:
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (*(v0 + 160))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.executor);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
      v6 = static os_log_type_t.debug.getter();
      v7 = Logger.logObject.getter();
      if (os_log_type_enabled(v7, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v43 = v9;
        *v8 = 136315650;
        v10 = StaticString.description.getter();
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v43);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = StaticString.description.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v43);

        *(v8 + 14) = v15;
        *(v8 + 22) = 2080;
        v44 = 0;
        v45 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);

        v44 = 0xD000000000000025;
        v45 = 0x80000001DCA839A0;
        v16 = *(v0 + 200);
        v17 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v16);
        v18 = (*(v17 + 8))(v16, v17);
        MEMORY[0x1E12A1580](v18);

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v43);

        *(v8 + 24) = v19;
        _os_log_impl(&dword_1DC659000, v7, v6, "%s:%s: %s", v8, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v9, -1, -1);
        MEMORY[0x1E12A2F50](v8, -1, -1);
      }

      v20 = *(v0 + 336);
      v21 = *(v0 + 344);
      v22 = *(v0 + 320);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
      v23 = type metadata accessor for FlowExtensionConnection();
      swift_allocObject();

      v24 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v20, v21);
      v25 = *(v0 + 120);
      v26 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v25);
      v27 = (*(v26 + 8))(v25, v26);
      v29 = v28;
      *(v0 + 280) = v23;
      *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
      *(v0 + 256) = v24;
      type metadata accessor for RemoteConversationClient();
      v30 = swift_allocObject();

      swift_defaultActor_initialize();
      *(v30 + 168) = 0;
      *(v30 + 176) = 0;
      *(v30 + 184) = 2;
      *(v30 + 112) = v27;
      *(v30 + 120) = v29;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v30 + 128);
      v22[3] = &type metadata for FlowExtensionConversationHandler;
      v22[4] = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

      *v22 = v30;
      v22[1] = v27;
      v22[2] = v29;
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.executor);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1DC659000, v32, v33, "No extensions support input", v34, 2u);
        MEMORY[0x1E12A2F50](v34, -1, -1);
      }

      v35 = *(v0 + 320);

      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      *v35 = 0u;
      *(v35 + 16) = 0u;
      *(v35 + 32) = 0;
    }

    v36 = *(v0 + 8);

    return v36();
  }

  v2 = *(v0 + 368);
  v3 = *(v0 + 384) + 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (v3 == v2)
  {
    v4 = *(v0 + 360);

    goto LABEL_5;
  }

  v38 = *(v0 + 384) + 1;
  *(v0 + 384) = v38;
  v39 = *(v0 + 360);
  if (v38 >= *(v39 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v40 = v39 + 16 * v38;
  *(v0 + 392) = *(v40 + 32);
  *(v0 + 400) = *(v40 + 40);
  v41 = one-time initialization token for shared;

  if (v41 != -1)
  {
LABEL_25:
    swift_once();
  }

  v42 = static ConversationActor.shared;
  *(v0 + 408) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), v42, 0);
}

{
  v1 = *(v0 + 376);
  v2 = *(v1 + 48);
  *(v0 + 416) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86C0] + 4);

    v4 = swift_task_alloc();
    *(v0 + 424) = v4;
    *v4 = v0;
    v4[1] = FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:);
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v4, v2, v5);
  }

  else
  {
    swift_beginAccess();
    v6 = *(v1 + 64);
    if (v6)
    {
      if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 392), *(v0 + 400)), (v8 & 1) != 0))
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v6 + 56) + 40 * v7, v0 + 56);
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      v9 = *(v0 + 400);
      swift_endAccess();
    }

    else
    {
      v10 = *(v0 + 400);
      swift_endAccess();

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), 0, 0);
  }
}

{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), v3, 0);
}

{
  v1 = *(v0 + 376);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 392), *(v0 + 400)), (v4 & 1) != 0))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v0 + 56);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    v5 = *(v0 + 400);
    swift_endAccess();
  }

  else
  {
    v6 = *(v0 + 400);
    swift_endAccess();

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), 0, 0);
}

uint64_t protocol witness for DecisionMaking.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:) in conformance DecisionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t outlined destroy of RemoteConversationTurnData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)()
{
  v1 = *(v0 + 112);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 112);
    }

    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*(v1 + 16))
  {
LABEL_5:
    v3 = *(v0 + 128);
    v4 = v3[6];
    v5 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
    v6 = *(v5 + 8);
    v36 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);

    return v36(v4, v5);
  }

  v10 = *(v0 + 112);
  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, type metadata accessor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    result = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 48);
  }

  else
  {
    v15 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v10 + 56);

    v12 = 0;
  }

  *(v0 + 184) = result;
  *(v0 + 192) = v11;
  *(v0 + 208) = v12;
  *(v0 + 216) = v14;
  *(v0 + 200) = v13;
  if (result < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23)
    {
LABEL_28:
      v28 = *(v0 + 192);
      v29 = *(v0 + 200);
      v30 = *(v0 + 184);
      v31 = *(v0 + 168);
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

      v33 = *(v0 + 152);
      v32 = *(v0 + 160);
      v34 = *(v0 + 144);

      v35 = *(v0 + 8);

      return v35(0);
    }

    *(v0 + 96) = v23;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v22 = *(v0 + 88);
    v19 = v12;
    v21 = v14;
LABEL_24:
    *(v0 + 232) = v19;
    *(v0 + 240) = v21;
    *(v0 + 224) = v22;
    if (v22)
    {
      v24 = **(v0 + 120);
      v25 = swift_task_alloc();
      *(v0 + 248) = v25;
      *v25 = v0;
      v25[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
      v26 = *(v0 + 152);
      v27 = *(v0 + 104);

      return RemoteConversationClient.accept(input:speechData:)(v26, v27, v24);
    }

    goto LABEL_28;
  }

  v18 = v14;
  v19 = v12;
  if (v14)
  {
LABEL_21:
    v21 = (v18 - 1) & v18;
    v22 = *(*(result + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    goto LABEL_24;
  }

  v20 = v12;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= ((v13 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v18 = *(v11 + 8 * v19);
    ++v20;
    if (v18)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:), v2, 0);
}

{
  v1 = *(v0 + 112);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, type metadata accessor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    result = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v4 = 0;
  }

  *(v0 + 184) = result;
  *(v0 + 192) = v3;
  *(v0 + 208) = v4;
  *(v0 + 216) = v6;
  *(v0 + 200) = v5;
  if (result < 0)
  {
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
LABEL_20:
      v20 = *(v0 + 192);
      v21 = *(v0 + 200);
      v22 = *(v0 + 184);
      v23 = *(v0 + 168);
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

      v25 = *(v0 + 152);
      v24 = *(v0 + 160);
      v26 = *(v0 + 144);

      v27 = *(v0 + 8);

      return v27(0);
    }

    *(v0 + 96) = v15;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v14 = *(v0 + 88);
    v11 = v4;
    v13 = v6;
LABEL_16:
    *(v0 + 232) = v11;
    *(v0 + 240) = v13;
    *(v0 + 224) = v14;
    if (v14)
    {
      v16 = **(v0 + 120);
      v17 = swift_task_alloc();
      *(v0 + 248) = v17;
      *v17 = v0;
      v17[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
      v18 = *(v0 + 152);
      v19 = *(v0 + 104);

      return RemoteConversationClient.accept(input:speechData:)(v18, v19, v16);
    }

    goto LABEL_20;
  }

  v10 = v6;
  v11 = v4;
  if (v6)
  {
LABEL_13:
    v13 = (v10 - 1) & v10;
    v14 = *(*(result + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_16;
  }

  v12 = v4;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= ((v5 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = *(v3 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
  }

  else
  {
    v6 = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v53 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  outlined init with take of RemoteConversationOrReformedInput(*(v0 + 152), v1, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationOrReformedInput(v1, v2, type metadata accessor for UserInputResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of RemoteConversationOrReformedInput(*(v0 + 144), type metadata accessor for UserInputResult);

      return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000005CLL, 0x80000001DCA7FEB0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/DecisionEngine/ConversationHelper.swift", 108, 2, 98);
    }

    v8 = *(v0 + 224);
    v16 = *(v0 + 168);

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 144);
  outlined destroy of RemoteConversationOrReformedInput(*(v0 + 160), type metadata accessor for UserInputResult);

  outlined destroy of RemoteConversationOrReformedInput(v7, type metadata accessor for UserInputResult);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  *(v0 + 208) = v8;
  *(v0 + 216) = v9;
  v10 = *(v0 + 184);
  if (v10 < 0)
  {
    v34 = __CocoaSet.Iterator.next()();
    if (!v34)
    {
LABEL_24:
      v39 = *(v0 + 192);
      v40 = *(v0 + 200);
      v41 = *(v0 + 184);
      v42 = *(v0 + 168);
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

      v8 = 0;
LABEL_25:
      v44 = *(v0 + 152);
      v43 = *(v0 + 160);
      v45 = *(v0 + 144);

      v46 = *(v0 + 8);

      return v46(v8);
    }

    *(v0 + 96) = v34;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v15 = *(v0 + 88);
    v12 = v8;
    v14 = v9;
  }

  else
  {
    v11 = v9;
    v12 = v8;
    if (!v9)
    {
      v13 = v8;
      while (1)
      {
        v12 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v12 >= ((*(v0 + 200) + 64) >> 6))
        {
          goto LABEL_24;
        }

        v11 = *(*(v0 + 192) + 8 * v12);
        ++v13;
        if (v11)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      swift_once();
LABEL_14:
      v17 = *(v0 + 224);
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.executor);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 224);
        v48 = *(v0 + 208);
        v49 = *(v0 + 216);
        v47 = *(v0 + 200);
        v23 = *(v0 + 184);
        v22 = *(v0 + 192);
        v50 = *(v0 + 160);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v51 = v25;
        *v24 = 136315138;

        _StringGuts.grow(_:)(17);

        strcpy(v52, "FlowExtension(");
        HIBYTE(v52[1]) = -18;
        MEMORY[0x1E12A1580](*(v21 + 112), *(v21 + 120));
        MEMORY[0x1E12A1580](41, 0xE100000000000000);

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52[0], v52[1], &v51);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_1DC659000, v19, v20, "[ConversationHelper] Selecting existing conversation to handle input: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1E12A2F50](v25, -1, -1);
        MEMORY[0x1E12A2F50](v24, -1, -1);
        outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

        v27 = v50;
      }

      else
      {
        v28 = *(v0 + 208);
        v29 = *(v0 + 216);
        v30 = *(v0 + 192);
        v31 = *(v0 + 200);
        v32 = *(v0 + 184);
        v33 = *(v0 + 160);
        outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

        v27 = v33;
      }

      outlined destroy of RemoteConversationOrReformedInput(v27, type metadata accessor for UserInputResult);
      goto LABEL_25;
    }

LABEL_12:
    v14 = (v11 - 1) & v11;
    v15 = *(*(v10 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
  }

  *(v0 + 232) = v12;
  *(v0 + 240) = v14;
  *(v0 + 224) = v15;
  if (!v15)
  {
    goto LABEL_24;
  }

  v35 = **(v0 + 120);
  v36 = swift_task_alloc();
  *(v0 + 248) = v36;
  *v36 = v0;
  v36[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
  v37 = *(v0 + 152);
  v38 = *(v0 + 104);

  return RemoteConversationClient.accept(input:speechData:)(v37, v38, v35);
}

{
  v38 = v0;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v1 = *(v0 + 256);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 256);
    v8 = *(v0 + 224);
    if (v6)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v9 = 136315138;
      *(v0 + 80) = v7;
      v11 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v37);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationHelper] Error checking if active conversation could handle input: %s. Will try the next conversation", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    else
    {
    }

    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    *(v0 + 208) = v15;
    *(v0 + 216) = v16;
    v17 = *(v0 + 184);
    if (v17 < 0)
    {
      break;
    }

    v18 = v16;
    v19 = v15;
    if (v16)
    {
LABEL_11:
      v21 = (v18 - 1) & v18;
      v22 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

      goto LABEL_14;
    }

    v20 = v15;
    while (1)
    {
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v19 >= ((*(v0 + 200) + 64) >> 6))
      {
        goto LABEL_18;
      }

      v18 = *(*(v0 + 192) + 8 * v19);
      ++v20;
      if (v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v23 = __CocoaSet.Iterator.next()();
  if (!v23)
  {
    goto LABEL_18;
  }

  *(v0 + 96) = v23;
  type metadata accessor for RemoteConversationClient();
  swift_dynamicCast();
  v22 = *(v0 + 88);
  v19 = v15;
  v21 = v16;
LABEL_14:
  *(v0 + 232) = v19;
  *(v0 + 240) = v21;
  *(v0 + 224) = v22;
  if (v22)
  {
    v24 = **(v0 + 120);
    v25 = swift_task_alloc();
    *(v0 + 248) = v25;
    *v25 = v0;
    v25[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
    v26 = *(v0 + 152);
    v27 = *(v0 + 104);

    return RemoteConversationClient.accept(input:speechData:)(v26, v27, v24);
  }

LABEL_18:
  v29 = *(v0 + 192);
  v30 = *(v0 + 200);
  v31 = *(v0 + 184);
  v32 = *(v0 + 168);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  v34 = *(v0 + 152);
  v33 = *(v0 + 160);
  v35 = *(v0 + 144);

  v36 = *(v0 + 8);

  return v36(0);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for IntentTopic();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
  result = MEMORY[0x1E12A1A00](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 64);

    v5 = RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v23 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v7, static Logger.executor);
  Logger.debugF(file:function:)();
  v9 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v8 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8];
  swift_beginAccess();
  v10 = v5[22];
  v5[21] = v9;
  v5[22] = v8;

  v11 = v5[19];
  v12 = v5[20];
  __swift_project_boxed_opaque_existential_1(v5 + 16, v11);
  (*(v3 + 16))(v1, v6, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v0[16] = v14;
  (*(v3 + 32))(v14 + v13, v1, v2);
  *(v14 + ((v23 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v15 = *(v12 + 8);
  v16 = v4;
  v22 = (v15 + *v15);
  v17 = v15[1];
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  v19 = v0[9];
  v20 = v0[5];

  return v22(v20, &async function pointer to partial apply for closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), v14, v19, v11, v12);
}

{
  v17 = v0;
  v1 = v0[15];
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(v0[5], v0[10], type metadata accessor for UserInputResult);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = UserInputResult.description.getter();
    v10 = v9;
    outlined destroy of UserInputResult(v5);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v2, v3, "Extension returned from accept(): %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {

    outlined destroy of UserInputResult(v5);
  }

  v12 = v0[14];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t specialized Sequence.flatMap<A>(_:)(void (*a1)(unint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a1;
  v56 = a2;
  v6 = type metadata accessor for IntentTopic();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  v53 = v8 + 16;
  v54 = v8;
  v52 = (v8 + 8);
  v57 = a3;

  v17 = v14;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v48 = v15;
  v49 = a3 + 56;
  v50 = v10;
  v51 = v6;
  while (1)
  {
    if (!v17)
    {
      while (1)
      {
        v23 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v23 >= v15)
        {
          goto LABEL_44;
        }

        v17 = *(v11 + 8 * v23);
        ++v18;
        if (v17)
        {
          v18 = v23;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

LABEL_12:
    v60 = v17;
    (*(v54 + 16))(v10, *(v57 + 48) + *(v54 + 72) * (__clz(__rbit64(v17)) | (v18 << 6)), v6);
    v55(&v63, v10);
    if (v4)
    {
      goto LABEL_43;
    }

    (*v52)(v10, v6);
    v24 = v63 >> 62;
    v25 = v63;
    v26 = v63 >> 62 ? __CocoaSet.count.getter() : *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v19 >> 62;
    v61 = v26;
    v59 = 0;
    if (v19 >> 62)
    {
      break;
    }

    v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v28 + v26;
    if (__OFADD__(v28, v26))
    {
      goto LABEL_42;
    }

LABEL_17:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v27)
      {
        goto LABEL_24;
      }

      v30 = v19;
      v31 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v29 <= *(v31 + 24) >> 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v27)
      {
LABEL_24:
        __CocoaSet.count.getter();
        goto LABEL_25;
      }

      v31 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = *(v31 + 16);
LABEL_25:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v30 = result;
    v31 = result & 0xFFFFFFFFFFFFFF8;
LABEL_26:
    v33 = *(v31 + 16);
    v34 = *(v31 + 24);
    v58 = v30;
    if (v24)
    {
      result = __CocoaSet.count.getter();
      v35 = result;
      v36 = v61;
      if (!result)
      {
LABEL_4:
        v20 = v36;

        v21 = v20 <= 0;
        v10 = v50;
        v6 = v51;
        v19 = v58;
        v4 = v59;
        v15 = v48;
        v11 = v49;
        v22 = v60;
        if (!v21)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v61;
      if (!v35)
      {
        goto LABEL_4;
      }
    }

    if (((v34 >> 1) - v33) < v36)
    {
      goto LABEL_47;
    }

    v37 = v31 + 8 * v33 + 32;
    v47 = v31;
    if (v24)
    {
      if (v35 < 1)
      {
        goto LABEL_49;
      }

      lazy protocol witness table accessor for type [RemoteFlowPluginPackage] and conformance [A]();
      for (i = 0; i != v35; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
        v39 = specialized protocol witness for Collection.subscript.read in conformance [A](v62, i, v25);
        v41 = *v40;

        (v39)(v62, 0);
        *(v37 + 8 * i) = v41;
      }
    }

    else
    {
      type metadata accessor for RemoteFlowPluginPackage();
      swift_arrayInitWithCopy();
    }

    v22 = v60;
    v19 = v58;
    v4 = v59;
    v10 = v50;
    v6 = v51;
    v15 = v48;
    v11 = v49;
    if (v61 > 0)
    {
      v42 = *(v47 + 16);
      v43 = __OFADD__(v42, v61);
      v44 = v42 + v61;
      if (v43)
      {
        goto LABEL_48;
      }

      *(v47 + 16) = v44;
    }

LABEL_6:
    v17 = (v22 - 1) & v22;
  }

  v45 = __CocoaSet.count.getter();
  v29 = v45 + v61;
  if (!__OFADD__(v45, v61))
  {
    goto LABEL_17;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  (*v52)(v10, v6);

LABEL_44:

  return v19;
}

uint64_t partial apply for closure #2 in ConversationHandlerLocator.allHandlers(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  result = (*(v7 + 8))(a1, v6, v7);
  *a2 = result;
  return result;
}

uint64_t protocol witness for PluginLookupByIntentTopic.findRemoteFlowPlugins(intentTopic:) in conformance CachedPluginCatalog(uint64_t a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(*(v2 + 56) + 8 * v3);
}

id FlowExtensionUserInputResultXPC.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  v5 = [a1 decodeIntegerForKey_];

  if (v5 >= 4)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "Could not decode FlowExtensionUserInputResultXPC: unknown .type", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    type metadata accessor for FlowExtensionUserInputResultXPC();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = v5;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    *&v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = NSCoder.decodeObject<A>(of:forKey:)();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v16 = &v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
    *v16 = v8;
    v16[1] = v10;
    v17 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
    v18 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = v18;
    v20.receiver = v2;
    v20.super_class = type metadata accessor for FlowExtensionUserInputResultXPC();
    v19 = objc_msgSendSuper2(&v20, sel_init);

    return v19;
  }
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(void *a1)
{
  v2 = type metadata accessor for UserInputResult();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x78))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMd, &_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

id FlowExtensionUserInputResultXPC.swiftRepresentation()@<X0>(_BYTE *a1@<X8>)
{
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type);
  if (v9 <= 1)
  {
    if (!v9)
    {
      type metadata accessor for UserInputResult();
      return swift_storeEnumTagMultiPayload();
    }

    if (v9 == 1)
    {
      *a1 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude);
      type metadata accessor for UserInputResult();
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_15;
  }

  if (v9 == 2)
  {
    v10 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8);
    if (v10 >> 60 == 15)
    {
LABEL_16:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000046, 0x80000001DCA8BDC0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/UserInputResult.swift", 118, 2, 112);
      __break(1u);
      goto LABEL_17;
    }

    v11 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData);
    v12 = type metadata accessor for PropertyListDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    outlined copy of Data._Representation(v11, v10);
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v11, v10);

    if (!v2)
    {
      (*(v5 + 32))(a1, v8, v4);
      type metadata accessor for UserInputResult();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v9 != 3)
    {
LABEL_15:
      v18[1] = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type);
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_16;
    }

    v16 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error);
    if (!v16)
    {
LABEL_17:
      result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000035, 0x80000001DCA8BD00, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/UserInputResult.swift", 118, 2, 119);
      __break(1u);
      return result;
    }

    v17 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error);
    swift_willThrow();
    return v16;
  }

  return result;
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v24 = a1;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMd, &_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PropertyListEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Input();
  lazy protocol witness table accessor for type RemoteConversationClient and conformance RemoteConversationClient(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
  v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v16 = v15;

  if (!v5)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    (*(v7 + 16))(v10, v24, v6);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = swift_allocObject();
    (*(v7 + 32))(v19 + v18, v10, v6);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
    aBlock[3] = &block_descriptor_161;
    v20 = _Block_copy(aBlock);

    v21 = isa;
    [v25 acceptWithInputData:isa speechData:v27 reply:v20];
    _Block_release(v20);

    return outlined consume of Data._Representation(v14, v16);
  }

  return result;
}

uint64_t closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[12];
    v6 = v3[10];

    v7 = v3[1];

    return v7();
  }
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v16 = *(v0 + 24);
  (*(v4 + 16))(v1, *(v0 + 40), v3);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  *(v8 + 16) = v16;
  (*(v4 + 32))(v8 + v6, v1, v3);
  *(v8 + v7) = v5;
  swift_unknownObjectRetain();
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  *(v10 + 24) = v8;
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  v13 = type metadata accessor for UserInputResult();
  *v12 = v0;
  v12[1] = closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v10, v13);
}

{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1DC72E360()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_28Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMR, &_s14SiriKitRuntime19ConversationHandler_pMd, &_s14SiriKitRuntime19ConversationHandler_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AffinityValueFetcher_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AffinityValueFetcher_pGMR, &_s14SiriKitRuntime20AffinityValueFetcher_pMd, &_s14SiriKitRuntime20AffinityValueFetcher_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMR, &_s14SiriKitRuntime14AffinityScorer_pMd, &_s14SiriKitRuntime14AffinityScorer_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19NSExtensionProtocol_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19NSExtensionProtocol_pGMR, &_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AffinityScoringAdapter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8 + 24);
    *(a1 + v8 + 24) = v9;
    (**(v9 - 8))();
  }

  return a1;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ReferenceResolutionClientProtocol(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined destroy of UserInputResult(uint64_t a1)
{
  v2 = type metadata accessor for UserInputResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v6 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[29];

  v2(v4, v5);
  v6 = v0[20];
  v8 = v0[16];
  v7 = v0[17];
  outlined init with take of RemoteConversationOrReformedInput(v0[19], v6, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationOrReformedInput(v6, v7, type metadata accessor for UserInputResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = v0[34];
      v11 = *(v0[23] + 32);
      v11(v0[24], v0[17], v0[22]);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1DC659000, v12, v13, "[ConversationHelper] Conversation wants to reform input after it had just accepted it?", v14, 2u);
        MEMORY[0x1E12A2F50](v14, -1, -1);
      }

      v15 = v0[46];
      v16 = v0[28];
      v17 = v0[24];
      v18 = v0[22];
      v19 = v0[20];
      v20 = v0[10];

      outlined destroy of RemoteConversationOrReformedInput(v19, type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v16, type metadata accessor for ConversationSearchResult);
      v11(v20, v17, v18);
      v21 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v22 = *(*(v21 - 8) + 56);
      v23 = v20;
    }

    else
    {
      v33 = v0[46];
      v34 = v0[28];
      v35 = v0[10];
      outlined destroy of RemoteConversationOrReformedInput(v0[20], type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v34, type metadata accessor for ConversationSearchResult);
      *v35 = v33;
      v21 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v22 = *(*(v21 - 8) + 56);
      v23 = v35;
    }

    v22(v23, 0, 1, v21);
  }

  else
  {
    v24 = v0[34];
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "[ConversationHelper] Conversation did not accept input, returning nil", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v28 = v0[46];
    v29 = v0[28];
    v30 = v0[20];
    v31 = v0[10];

    outlined destroy of RemoteConversationOrReformedInput(v30, type metadata accessor for UserInputResult);
    outlined destroy of RemoteConversationOrReformedInput(v29, type metadata accessor for ConversationSearchResult);
    v32 = type metadata accessor for RemoteConversationOrReformedInput(0);
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  }

  v37 = v0[31];
  v36 = v0[32];
  v38 = v0[28];
  v40 = v0[25];
  v39 = v0[26];
  v41 = v0[24];
  v43 = v0[20];
  v42 = v0[21];
  v45 = v0[18];
  v44 = v0[19];
  v48 = v0[17];
  v49 = v0[15];

  v46 = v0[1];

  return v46();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);

  return v9(v3, v4);
}

{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:), v2, 0);
}

{
  v1 = v0[32];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = type metadata accessor for ConversationHelperInput(0);
  v8 = *(v7 + 20);
  v9 = *v3;
  v10 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[36] = *v3;
  v0[37] = v10;
  v11 = (v9 + v10);
  v12 = *v11;
  v13 = v11[1];
  v0[38] = v13;

  Input.identifier.getter();
  v14 = (v3 + *(v7 + 24));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v6 + 32);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[39] = v19;
  *v19 = v0;
  v19[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  v20 = v0[32];

  return v22(v3 + v8, v12, v13, v20, v15, v16, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 304);
  v5 = *(*v1 + 256);
  v6 = *(*v1 + 240);
  v7 = *(*v1 + 232);
  v8 = *v1;
  v2[40] = v0;

  v9 = *(v6 + 8);
  v2[41] = v9;
  v2[42] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);

  v10 = v2[33];
  if (v0)
  {
    v11 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v11 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

{
  v1 = v0[11];
  v2 = (v0[36] + v0[37]);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *v2;
  v6 = v2[1];
  v0[43] = v6;
  v7 = *(v4 + 40);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  v10 = v0[28];
  v11 = v0[12];

  return v13(v10, v11, v5, v6, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v6 = *(v2 + 344);
    v7 = *(v2 + 264);

    v5 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v78 = v0;
  v1 = v0[28];
  v2 = *v1;
  v0[46] = *v1;
  if (v2)
  {
    v3 = v0[29];
    v4 = v0[30];
    v5 = v0[15];
    outlined init with copy of ReferenceResolutionClientProtocol?(v1 + *(v0[27] + 28), v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v6 = v0[34];
      v7 = v0[15];

      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1DC659000, v8, v9, "Warning: Call to canHandle() did not return an input identifier, sending the input again. This will involve loading the flow twice.", v10, 2u);
        MEMORY[0x1E12A2F50](v10, -1, -1);
      }

      v11 = swift_task_alloc();
      v0[49] = v11;
      *v11 = v0;
      v11[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
      v12 = v0[36];
      v13 = v0[18];
      v14 = v0[12];

      return RemoteConversationClient.accept(input:speechData:)(v13, v14, v12);
    }

    else
    {
      (*(v0[30] + 32))(v0[31], v0[15], v0[29]);

      v47 = swift_task_alloc();
      v0[47] = v47;
      *v47 = v0;
      v47[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
      v48 = v0[36];
      v49 = v0[31];
      v50 = v0[19];

      return RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(v50, v49, v48);
    }
  }

  else
  {
    v16 = v0[33];
    v17 = v0[27];
    v18 = v0[22];
    v19 = v0[23];
    v20 = v0[21];

    outlined init with copy of ReferenceResolutionClientProtocol?(v1 + *(v17 + 24), v20, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v21 = (*(v19 + 48))(v20, 1, v18);
    v22 = v0[34];
    v23 = v0[22];
    v24 = v0[23];
    v25 = v0[21];
    if (v21 == 1)
    {
      v26 = v0[25];
      v28 = v0[11];
      v27 = v0[12];
      outlined destroy of ReferenceResolutionClientProtocol?(v0[21], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol(v28, (v0 + 2));
      (*(v24 + 16))(v26, v27, v23);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[28];
      v33 = v0[25];
      v35 = v0[22];
      v34 = v0[23];
      if (v31)
      {
        v36 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v77 = v73;
        *v36 = 136315394;
        v38 = v0[5];
        v37 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v38);
        v75 = v32;
        v39 = (*(v37 + 16))(v38, v37);
        v41 = v40;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v77);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        (*(v34 + 8))(v33, v35);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v77);

        *(v36 + 14) = v46;
        _os_log_impl(&dword_1DC659000, v29, v30, "[ConversationHelper] Conversation handler %s did not find a flow for input %s, returning nil", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v73, -1, -1);
        MEMORY[0x1E12A2F50](v36, -1, -1);

        outlined destroy of RemoteConversationOrReformedInput(v75, type metadata accessor for ConversationSearchResult);
      }

      else
      {

        (*(v34 + 8))(v33, v35);
        outlined destroy of RemoteConversationOrReformedInput(v32, type metadata accessor for ConversationSearchResult);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      }

      v60 = v0[10];
      v61 = type metadata accessor for RemoteConversationOrReformedInput(0);
      (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
    }

    else
    {
      v51 = *(v24 + 32);
      v51(v0[26], v0[21], v0[22]);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1DC659000, v52, v53, "[ConversationHelper] Conversation wants to reform input, will consider intent reformation in hypothesis list", v54, 2u);
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      v55 = v0[28];
      v56 = v0[26];
      v57 = v0[22];
      v58 = v0[10];

      outlined destroy of RemoteConversationOrReformedInput(v55, type metadata accessor for ConversationSearchResult);
      v51(v58, v56, v57);
      v59 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    }

    v63 = v0[31];
    v62 = v0[32];
    v64 = v0[28];
    v66 = v0[25];
    v65 = v0[26];
    v67 = v0[24];
    v69 = v0[20];
    v68 = v0[21];
    v71 = v0[18];
    v70 = v0[19];
    v74 = v0[17];
    v76 = v0[15];

    v72 = v0[1];

    return v72();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v6 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[33];

  v2 = v0[17];
  v3 = v0[20];
  v4 = v0[16];
  outlined init with take of RemoteConversationOrReformedInput(v0[18], v3, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationOrReformedInput(v3, v2, type metadata accessor for UserInputResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0[34];
      v7 = *(v0[23] + 32);
      v7(v0[24], v0[17], v0[22]);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1DC659000, v8, v9, "[ConversationHelper] Conversation wants to reform input after it had just accepted it?", v10, 2u);
        MEMORY[0x1E12A2F50](v10, -1, -1);
      }

      v11 = v0[46];
      v12 = v0[28];
      v13 = v0[24];
      v14 = v0[22];
      v15 = v0[20];
      v16 = v0[10];

      outlined destroy of RemoteConversationOrReformedInput(v15, type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v12, type metadata accessor for ConversationSearchResult);
      v7(v16, v13, v14);
      v17 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v18 = *(*(v17 - 8) + 56);
      v19 = v16;
    }

    else
    {
      v29 = v0[46];
      v30 = v0[28];
      v31 = v0[10];
      outlined destroy of RemoteConversationOrReformedInput(v0[20], type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v30, type metadata accessor for ConversationSearchResult);
      *v31 = v29;
      v17 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v18 = *(*(v17 - 8) + 56);
      v19 = v31;
    }

    v18(v19, 0, 1, v17);
  }

  else
  {
    v20 = v0[34];
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "[ConversationHelper] Conversation did not accept input, returning nil", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v24 = v0[46];
    v25 = v0[28];
    v26 = v0[20];
    v27 = v0[10];

    outlined destroy of RemoteConversationOrReformedInput(v26, type metadata accessor for UserInputResult);
    outlined destroy of RemoteConversationOrReformedInput(v25, type metadata accessor for ConversationSearchResult);
    v28 = type metadata accessor for RemoteConversationOrReformedInput(0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  }

  v33 = v0[31];
  v32 = v0[32];
  v34 = v0[28];
  v36 = v0[25];
  v35 = v0[26];
  v37 = v0[24];
  v39 = v0[20];
  v38 = v0[21];
  v41 = v0[18];
  v40 = v0[19];
  v44 = v0[17];
  v45 = v0[15];

  v42 = v0[1];

  return v42();
}

{
  v1 = v0[33];

  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v14 = v0[17];
  v15 = v0[15];
  v16 = v0[40];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[43];
  v2 = v0[33];

  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[18];
  v12 = v0[19];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[45];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[46];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[33];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];

  v3(v5, v6);
  outlined destroy of RemoteConversationOrReformedInput(v7, type metadata accessor for ConversationSearchResult);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[28];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[18];
  v17 = v0[19];
  v20 = v0[17];
  v21 = v0[15];
  v22 = v0[48];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[46];
  v2 = v0[33];
  v3 = v0[28];

  outlined destroy of RemoteConversationOrReformedInput(v3, type metadata accessor for ConversationSearchResult);
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[18];
  v13 = v0[19];
  v16 = v0[17];
  v17 = v0[15];
  v18 = v0[50];

  v14 = v0[1];

  return v14();
}

void *specialized Array.append<A>(contentsOf:)(void *a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMR, &_s14SiriKitRuntime19ConversationHandler_pMd, &_s14SiriKitRuntime19ConversationHandler_pMR);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMR, &_s14SiriKitRuntime17ExecutionOverride_pMd, &_s14SiriKitRuntime17ExecutionOverride_pMR);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMR, &_s14SiriKitRuntime16PreExecutionRule_pMd, &_s14SiriKitRuntime16PreExecutionRule_pMR);
}

void *specialized Array.append<A>(contentsOf:)(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result[2];
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v9 <= v7[3] >> 1)
  {
    if (v14[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v19 = v8 + v6;
  }

  else
  {
    v19 = v8;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v19, 1, v7, a2, a3, a4, a5);
  v7 = result;
  if (!v14[2])
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v7[3] >> 1) - v7[2] < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v16 = v7[2];
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    v7[2] = v18;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined init with take of RemoteConversationOrReformedInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMd, &_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ConversationHandlerLocator.ScoredHandler();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v29 = &v26 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = a3 + 32;
  v26 = v15;
  v20 = (v15 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v27 = v11;
  v28 = a2;
  while (1)
  {
    a1(v19, v16);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMd, &_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMR);
    }

    else
    {
      v22 = v29;
      outlined init with take of StringKeyedValue(v10, v29, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      outlined init with take of StringKeyedValue(v22, v30, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMR, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v21, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMR, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      }

      v21[2] = v24 + 1;
      outlined init with take of StringKeyedValue(v30, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v11 = v27;
    }

    v19 += 40;
    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t outlined init with copy of RemoteConversationOrReformedInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ConversationHandlerLocator.ScoredHandler()
{
  result = type metadata singleton initialization cache for ConversationHandlerLocator.ScoredHandler;
  if (!type metadata singleton initialization cache for ConversationHandlerLocator.ScoredHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of RemoteConversationOrReformedInput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ConversationSearchResult()
{
  result = type metadata singleton initialization cache for ConversationSearchResult;
  if (!type metadata singleton initialization cache for ConversationSearchResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #4 in ConversationHandlerLocator.allHandlers(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v13);
  (*(v7 + 16))(v10, a2, v6);
  return ConversationHandlerLocator.ScoredHandler.init(handler:input:)(v13, v10, a3);
}

uint64_t destroy for ConversationSearchResult(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 24);
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(&a1[v5], 1, v6))
  {
    (*(v7 + 8))(&a1[v5], v6);
  }

  v8 = *(a2 + 28);
  v9 = type metadata accessor for UUID();
  v12 = *(v9 - 8);
  result = (*(v12 + 48))(&a1[v8], 1, v9);
  if (!result)
  {
    v11 = *(v12 + 8);

    return v11(&a1[v8], v9);
  }

  return result;
}

uint64_t ConversationHandlerLocator.ScoredHandler.init(handler:input:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = type metadata accessor for Input();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ConversationHandlerLocator.ScoredHandler();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 48))(a2, v14, v15);
  if (v17)
  {
    v18 = a2;
    v48 = v9;
    v49 = v10;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(a1, v53);
    v20 = v50;
    v21 = a2;
    v22 = v5;
    (*(v6 + 16))(v50, v21, v5);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v20;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      *v26 = 136315394;
      v47 = v18;
      v28 = v54;
      v29 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v30 = *(v29 + 16);
      v46 = v24;
      v31 = v30(v28, v29);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v52);

      *(v26 + 4) = v34;
      *(v26 + 12) = 2080;
      lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v38 = *(v6 + 8);
      v38(v25, v22);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v52);

      *(v26 + 14) = v39;
      _os_log_impl(&dword_1DC659000, v23, v46, "Dropping handler %s as it does not support %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);

      v38(v47, v22);
    }

    else
    {

      v42 = *(v6 + 8);
      v42(v18, v5);
      v42(v20, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
    }

    v43 = v48;
    v44 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v44 + 56))(v51, 1, 1, v43);
  }

  else
  {
    *v13 = v16;
    outlined init with copy of ReferenceResolutionClientProtocol(a1, (v13 + 1));
    (*(v6 + 32))(v13 + *(v9 + 24), a2, v5);
    v40 = v51;
    outlined init with take of ConversationHandlerLocator.ScoredHandler(v13, v51, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    (*(v10 + 56))(v40, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

unint64_t RemoteFlowPluginBundleConversationHandler.affinityScore(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v63 = v7;
  v64 = v10;
  v16 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v16, static Signposter.executor);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = static Log.executor;
  OSSignpostID.init(log:)();
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v70 = v19;
  *v18 = 136315138;
  v20 = v2[3];
  v61 = v2[2];
  v62 = v20;
  *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v20, &v70);
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  v23 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v21, v22, v23, "RunAffinityScorer", "AffinityScorer=%s", v18, 0xCu);
  v24 = v2[10];
  v25 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v24);
  v65 = a1;
  v26 = AffinityScorer.score(for:)(a1, v24, v25);
  v28 = v27;
  v68 = v26;
  v29 = static os_signpost_type_t.end.getter();
  v30 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v21, v29, v30, "RunAffinityScorer", "AffinityScorer=%s", v18, 0xCu);

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  MEMORY[0x1E12A2F50](v19, -1, -1);
  MEMORY[0x1E12A2F50](v18, -1, -1);
  (*(v12 + 8))(v15, v11);
  if (v28)
  {
    v32 = v66;
    v31 = v67;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);
    v34 = v63;
    (*(v32 + 16))(v63, v65, v31);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v35, v36))
    {

      (*(v32 + 8))(v34, v31);
      return v68;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v70 = v38;
    *v37 = 136315394;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v70);
    *(v37 + 12) = 2080;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v34;
    v42 = v41;
    (*(v32 + 8))(v40, v31);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v42, &v70);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_1DC659000, v35, v36, "[%s] Missing affinity for input %s", v37, 0x16u);
    swift_arrayDestroy();
    v44 = v38;
  }

  else
  {
    v46 = v66;
    v45 = v67;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.executor);
    v48 = v64;
    (*(v46 + 16))(v64, v65, v45);

    v35 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v35, v49))
    {

      (*(v46 + 8))(v48, v45);
      return v68;
    }

    v37 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v70 = v50;
    *v37 = 136315650;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v70);
    *(v37 + 12) = 2080;
    v69 = specialized Affinity.init(rawValue:)(v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime8AffinityOSgMd, &_s14SiriKitRuntime8AffinityOSgMR);
    v51 = String.init<A>(describing:)();
    v52 = v48;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v70);

    *(v37 + 14) = v54;
    *(v37 + 22) = 2080;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    (*(v46 + 8))(v52, v45);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v70);

    *(v37 + 24) = v58;
    _os_log_impl(&dword_1DC659000, v35, v49, "[%s] Affinity: %s for input %s", v37, 0x20u);
    swift_arrayDestroy();
    v44 = v50;
  }

  MEMORY[0x1E12A2F50](v44, -1, -1);
  MEMORY[0x1E12A2F50](v37, -1, -1);

  return v68;
}

uint64_t AffinityScorer.score(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v7 = specialized logAction<A>(label:_:)(v5, v6, partial apply for closure #1 in AffinityScorer.score(for:));
  if (v3)
  {
  }

  else
  {
    v9 = v7;

    return v9;
  }
}

uint64_t destroy for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  v4 = *(a2 + 24);
  v5 = type metadata accessor for Input();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t outlined init with take of RemoteConversationOrReformedInput?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized AffinityScorer.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = UUID.uuidString.getter();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD000000000000013;
}

{
  _StringGuts.grow(_:)(22);

  v0 = UUID.uuidString.getter();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t specialized logAction<A>(label:_:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
    _os_log_impl(&dword_1DC659000, v7, v8, "==>> %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  a3(&v31);
  if (v3)
  {
    v11 = v3;

    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
      *(v15 + 12) = 2080;
      v33 = v3;
      v17 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v31);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1DC659000, v13, v14, "<<== %s threw %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {
    }

    v31 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    v14 = v31;
    v21 = v32;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v33);
      *(v24 + 12) = 2080;
      v31 = v14;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1DC659000, v22, v23, "<<== %s -> %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }

  return v14;
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
    _os_log_impl(&dword_1DC659000, v7, v8, "==>> %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  a3(&v31);
  if (v3)
  {
    v11 = v3;

    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
      *(v15 + 12) = 2080;
      v33 = v3;
      v17 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v31);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1DC659000, v13, v14, "<<== %s threw %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {
    }

    v31 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    v14 = v31;
    v21 = v32;
    swift_bridgeObjectRetain_n();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v33);
      *(v24 + 12) = 2080;
      v31 = v14;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1DC659000, v22, v23, "<<== %s -> %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  return v14;
}

uint64_t RemoteFlowPluginBundleConversationHandler.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[12];

  v5 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AffinityScorer.score(for:loopCheck:) in conformance AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + *(a3 + 20));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  type metadata accessor for SiriEnvironment();
  v8 = static SiriEnvironment.default.getter();
  v9 = (*(v7 + 16))(a1, v8, v6, v7);

  return v9;
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v3, 0);
}

uint64_t partial apply for closure #1 in AffinityScorer.score(for:)@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[4];
  result = (*(v1[3] + 32))(v1[5], v1[6], v1[2]);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v6 & 1;
  }

  return result;
}

void DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v46 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + 16, &v47, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
  if (v48)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v47, v49);
    v24 = *a1;
    v44 = a5;
    if (v24)
    {
      v25 = *(v24 + 112);
      v42 = *(v24 + 120);
      v43 = v25;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v30 = type metadata accessor for DecisionEngineResponse();
    outlined init with copy of ReferenceResolutionClientProtocol?(a1 + *(v30 + 24), v16, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v31 = type metadata accessor for Input();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v16, 1, v31) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v33 = 1;
    }

    else
    {
      Input.parse.getter();
      (*(v32 + 8))(v16, v31);
      v33 = 0;
    }

    v34 = type metadata accessor for Parse();
    (*(*(v34 - 8) + 56))(v23, v33, 1, v34);
    static TaskPriority.background.getter();
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
    outlined init with copy of ReferenceResolutionClientProtocol?(v23, v20, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol(v49, &v47);
    v36 = (*(v18 + 80) + 80) & ~*(v18 + 80);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = v46;
    v37[4] = v45;
    v37[5] = a3;
    v39 = v44;
    v37[6] = v38;
    v37[7] = v39;
    v40 = v42;
    v37[8] = v43;
    v37[9] = v40;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v20, v37 + v36, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v47, v37 + ((v19 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:), v37);

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sScPSgMd, &_sScPSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v47, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.instrumentation);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "Failed to find DecisionEngineStream for DecisionEngine.", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }
  }
}

uint64_t sub_1DC7337DC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v0[v3], 1, v9))
  {
    (*(v10 + 8))(&v0[v3], v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[v11]);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 40, v2 | 7);
}

uint64_t Input.parseHypothesisId.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_UserParse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Parse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for USOParse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E69D0168])
  {
    (*(v7 + 96))(v10, v6);
    (*(v12 + 32))(v15, v10, v11);
    USOParse.userParse.getter();
    v16 = v21;
    Siri_Nlu_External_UserParse.id.getter();
    (*(v2 + 8))(v5, v1);
    (*(v12 + 8))(v15, v11);
    v17 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v17 = 1;
    v16 = v21;
  }

  v18 = type metadata accessor for Siri_Nlu_External_UUID();
  return (*(*(v18 - 8) + 56))(v16, v17, 1, v18);
}

uint64_t specialized MessagesAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for UsoEntity_common_MessageMode.DefinedValues();
  v62 = *(v0 - 8);
  v1 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v59 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMR);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v54 - v13;
  v14 = type metadata accessor for USOParse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Parse();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v20 + 88))(v23, v19) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "MessagesAffinityScorer returning default because this is not a usoParse", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    (*(v20 + 8))(v23, v19);
    return 2;
  }

  (*(v20 + 96))(v23, v19);
  (*(v15 + 32))(v18, v23, v14);
  v24 = specialized MessagesAffinityScorer.extractCommonMessageFromUsoParse(usoParse:)();
  v57 = v15;
  v58 = v14;
  v55 = v24;
  v56 = v18;
  if (v24 && (, v25 = dispatch thunk of UsoEntity_common_Message.mode.getter(), , v25))
  {
    v26 = v63;
    dispatch thunk of UsoEntity_common_MessageMode.definedValue.getter();

    v27 = v62;
  }

  else
  {
    v27 = v62;
    v26 = v63;
    (*(v62 + 56))(v63, 1, 1, v0);
  }

  (*(v27 + 104))(v11, *MEMORY[0x1E69D1D40], v0);
  (*(v27 + 56))(v11, 0, 1, v0);
  v33 = *(v60 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v26, v5, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v11, &v5[v33], &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
  v34 = *(v27 + 48);
  v35 = v34(v5, 1, v0);
  v36 = v61;
  if (v35 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    v37 = v34(&v5[v33], 1, v0);
    v38 = v57;
    v39 = v55;
    if (v37 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
LABEL_26:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.executor);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1DC659000, v51, v52, "MessagesAffinityScorer override to .low because this a mail task", v53, 2u);
        MEMORY[0x1E12A2F50](v53, -1, -1);
      }

      (*(v38 + 8))(v56, v58);
      return 1;
    }
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v5, v61, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    if (v34(&v5[v33], 1, v0) != 1)
    {
      v46 = &v5[v33];
      v47 = v59;
      (*(v27 + 32))(v59, v46, v0);
      lazy protocol witness table accessor for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues();
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v27 + 8);
      v49(v47, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
      v49(v36, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
      v38 = v57;
      v39 = v55;
      if (v48)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    (*(v27 + 8))(v36, v0);
    v38 = v57;
    v39 = v55;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMR);
LABEL_17:
  if (v39)
  {

    dispatch thunk of UsoEntity_common_Message.subject.getter();
    v41 = v40;

    if (v41)
    {

      goto LABEL_26;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.executor);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1DC659000, v43, v44, "MessagesAffinityScorer override to .high because this a messaging task", v45, 2u);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  (*(v38 + 8))(v56, v58);
  return 3;
}

uint64_t partial apply for closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR) - 8);
  v5 = v1[3];
  v15 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = v1 + ((*(v4 + 64) + ((*(v4 + 80) + 80) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(a1, v15, v5, v6, v7, v8, v9, v11);
}

unint64_t specialized Affinity.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Affinity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 160) = v14;
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  *(v8 + 120) = a4;
  v9 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR) - 8);
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 + 64);
  *(v8 + 208) = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR) - 8);
  *(v8 + 216) = v11;
  *(v8 + 224) = *(v11 + 64);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:), 0, 0);
}

uint64_t closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)()
{
  v80 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v78 = v0[15];
  v79 = v3;

  MEMORY[0x1E12A1580](58, 0xE100000000000000);
  MEMORY[0x1E12A1580](v2, v1);
  v5 = v78;
  v4 = v79;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.instrumentation);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v77 = v78;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v78 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v78);
    _os_log_impl(&dword_1DC659000, v7, v8, "Creating DecisionEngineResponse donation to Curare for interactionId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = v0[31];
  v12 = v0[20];
  v13 = v0[21];
  v14 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime12AnyEncodableVtGMd, &_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime12AnyEncodableVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  strcpy((inited + 32), "flowHandlerId");
  *(inited + 46) = -4864;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v12;
  *(inited + 48) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 56) = v16;

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime12AnyEncodableVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_14SiriKitRuntime12AnyEncodableVtMd, &_sSS_14SiriKitRuntime12AnyEncodableVtMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13, v11, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v18 = type metadata accessor for Parse();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v11, 1, v18);
  v22 = v0[31];
  if (v21 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[31], &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    v76 = v0;
    v23 = (*(v19 + 88))(v0[31], v18);
    v24 = *MEMORY[0x1E69D0158];
    (*(v19 + 8))(v22, v18);
    v25 = v23 == v24;
    v0 = v76;
    if (v25)
    {
      v26 = v76[30];
      v28 = v76[27];
      v27 = v76[28];
      outlined init with copy of ReferenceResolutionClientProtocol?(v76[21], v26, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
      v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v30 = swift_allocObject();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v26, v30 + v29, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v17;
      v32 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
      v33 = v30;
      goto LABEL_14;
    }
  }

  v34 = v0[29];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[21], v34, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v35 = v20(v34, 1, v18);
  v36 = v0[29];
  if (v35 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[29], &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v37 = 1;
  }

  else
  {
    Parse.asCamParse()(v0[26]);
    (*(v19 + 8))(v36, v18);
    v37 = 0;
  }

  v38 = v0[25];
  v39 = v0[26];
  v40 = v0[24];
  v41 = type metadata accessor for CamParse();
  (*(*(v41 - 8) + 56))(v39, v37, 1, v41);
  v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v43 = swift_allocObject();
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v39, v43 + v42, &_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v17;
  v32 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v33 = v43;
LABEL_14:
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v33, 0x6573726170, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v44 = v78;
  v45 = type metadata accessor for JSONEncoder();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[13] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14SiriKitRuntime12AnyEncodableVGMd, &_sSDySS14SiriKitRuntime12AnyEncodableVGMR);
  lazy protocol witness table accessor for type [String : AnyEncodable] and conformance <> [A : B]();
  v53 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v55 = v54;
  v56 = v0[23];

  static String.Encoding.utf8.getter();
  v57 = String.init(data:encoding:)();
  if (v58)
  {
    v59 = v57;
    v60 = v58;
    v61 = v0[22];
    v63 = v61[3];
    v62 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v63);
    (*(v62 + 8))(v59, v60, v77, v4, v63, v62);

    v48 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v48, v64))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v78 = v67;
      *v66 = 136315138;
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v4, &v78);

      *(v66 + 4) = v68;
      _os_log_impl(&dword_1DC659000, v48, v64, "Donated DecisionEngineResponse to Curare for interactionId:%s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x1E12A2F50](v67, -1, -1);
      MEMORY[0x1E12A2F50](v66, -1, -1);
      outlined consume of Data._Representation(v53, v55);

      goto LABEL_24;
    }

    outlined consume of Data._Representation(v53, v55);
  }

  else
  {
    outlined consume of Data._Representation(v53, v55);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v78 = v51;
      *v50 = 136315138;
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v4, &v78);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_1DC659000, v48, v49, "Failed to convert DecisionEngineResponse donation to JSON for interactionId:%s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);

      goto LABEL_24;
    }
  }

LABEL_24:
  v70 = v0[30];
  v69 = v0[31];
  v71 = v0[29];
  v72 = v0[26];
  v73 = v0[23];

  v74 = v0[1];

  return v74();
}

uint64_t sub_1DC735258()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t Affinity.debugDescription.getter(unsigned __int8 a1)
{
  v1 = 0x7974696E69666641;
  v2 = 0xD000000000000011;
  if (a1 == 3)
  {
    v2 = 0x7974696E69666641;
  }

  if (a1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = v2;
  }

  if (!a1)
  {
    v1 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime12AnyEncodableVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined init with take of ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DC73552C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Input();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined init with take of StringKeyedValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DC735A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Input();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VG_10Foundation4UUIDV4uuid_AJ06scoredH0ts5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for ConversationHandlerLocator.ScoredHandler() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DC735DC8(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 376) = a7;
  *(v8 + 384) = v7;
  *(v8 + 360) = a5;
  *(v8 + 368) = a6;
  *(v8 + 344) = a3;
  *(v8 + 352) = a4;
  *(v8 + 1605) = a2;
  *(v8 + 336) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR) - 8) + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v10 = type metadata accessor for CorrectionsDirectInvocation();
  *(v8 + 400) = v10;
  v11 = *(v10 - 8);
  *(v8 + 408) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v13 = type metadata accessor for CorrectionsContext();
  *(v8 + 424) = v13;
  v14 = *(v13 - 8);
  *(v8 + 432) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  v16 = type metadata accessor for Parse();
  *(v8 + 448) = v16;
  v17 = *(v16 - 8);
  *(v8 + 456) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 464) = swift_task_alloc();
  v19 = type metadata accessor for USOParse();
  *(v8 + 472) = v19;
  v20 = *(v19 - 8);
  *(v8 + 480) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 488) = swift_task_alloc();
  v22 = type metadata accessor for Input();
  *(v8 + 496) = v22;
  v23 = *(v22 - 8);
  *(v8 + 504) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v25 = type metadata accessor for PluginAction();
  *(v8 + 520) = v25;
  v26 = *(v25 - 8);
  *(v8 + 528) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  updated = type metadata accessor for ContextUpdateScope();
  *(v8 + 552) = updated;
  v29 = *(updated - 8);
  *(v8 + 560) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR) - 8) + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  v33 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR) - 8) + 64) + 15;
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v35 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  *(v8 + 632) = v35;
  v36 = *(v35 - 8);
  *(v8 + 640) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR) - 8) + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  v39 = type metadata accessor for DecisionEngineResponse();
  *(v8 + 688) = v39;
  v40 = *(v39 - 8);
  *(v8 + 696) = v40;
  v41 = *(v40 + 64) + 15;
  *(v8 + 704) = swift_task_alloc();
  v42 = type metadata accessor for UUID();
  *(v8 + 712) = v42;
  v43 = *(v42 - 8);
  *(v8 + 720) = v43;
  v44 = *(v43 + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  v45 = type metadata accessor for ExecutionLocation();
  *(v8 + 736) = v45;
  v46 = *(v45 - 8);
  *(v8 + 744) = v46;
  v47 = *(v46 + 64) + 15;
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  v48 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR) - 8) + 64) + 15;
  *(v8 + 768) = swift_task_alloc();
  v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR) - 8) + 64) + 15;
  *(v8 + 776) = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR) - 8) + 64) + 15;
  *(v8 + 784) = swift_task_alloc();
  v51 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR) - 8) + 64) + 15;
  *(v8 + 792) = swift_task_alloc();
  v52 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  *(v8 + 800) = v52;
  v53 = *(v52 - 8);
  *(v8 + 808) = v53;
  v54 = *(v53 + 64) + 15;
  *(v8 + 816) = swift_task_alloc();
  v55 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  *(v8 + 824) = v55;
  v56 = *(v55 - 8);
  *(v8 + 832) = v56;
  v57 = *(v56 + 64) + 15;
  *(v8 + 840) = swift_task_alloc();
  v58 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  *(v8 + 848) = v58;
  v59 = *(v58 - 8);
  *(v8 + 856) = v59;
  v60 = *(v59 + 64) + 15;
  *(v8 + 864) = swift_task_alloc();
  v61 = type metadata accessor for SiriXRedirectContext();
  *(v8 + 872) = v61;
  v62 = *(v61 - 8);
  *(v8 + 880) = v62;
  v63 = *(v62 + 64) + 15;
  *(v8 + 888) = swift_task_alloc();
  v64 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR) - 8) + 64) + 15;
  *(v8 + 896) = swift_task_alloc();
  v65 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR) - 8) + 64) + 15;
  *(v8 + 904) = swift_task_alloc();
  v66 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR) - 8) + 64) + 15;
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  v67 = type metadata accessor for FlowUnhandledReason();
  *(v8 + 936) = v67;
  v68 = *(v67 - 8);
  *(v8 + 944) = v68;
  v69 = *(v68 + 64) + 15;
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  v70 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR) - 8) + 64) + 15;
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  v71 = type metadata accessor for CancellationError();
  *(v8 + 984) = v71;
  v72 = *(v71 - 8);
  *(v8 + 992) = v72;
  v73 = *(v72 + 64) + 15;
  *(v8 + 1000) = swift_task_alloc();
  v74 = type metadata accessor for ConversationCommitResult();
  *(v8 + 1008) = v74;
  v75 = *(*(v74 - 8) + 64) + 15;
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = swift_task_alloc();
  v76 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v8 + 1040) = v76;
  v77 = *(v76 - 8);
  *(v8 + 1048) = v77;
  v78 = *(v77 + 64) + 15;
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  *(v8 + 1104) = swift_task_alloc();
  *(v8 + 1112) = swift_task_alloc();
  v79 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR) - 8) + 64) + 15;
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v80 = static MessageBusActor.shared;
  *(v8 + 1184) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v80, 0);
}

uint64_t closure #5 in ConversationHandlerLocator.allHandlers(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR) + 48);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  return outlined init with copy of RemoteConversationTurnData(a1, a3 + v6, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
}

uint64_t protocol witness for DecisionMaking.commitCorrections() in conformance DecisionEngine()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for DecisionMaking.commitCorrections() in conformance DecisionEngine, v2, 0);
}

{
  v1 = *(**(v0 + 40) + 40);
  CorrectionsService.commit()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t initializeWithCopy for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  (**(v6 - 8))(a1 + 8, a2 + 8);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMR, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x1E69D1790], MEMORY[0x1E69D1790]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR, MEMORY[0x1E69D0188], MEMORY[0x1E69D0188]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMR, type metadata accessor for ParseUserDataAttachment, type metadata accessor for ParseUserDataAttachment);
}

Swift::Void __swiftcall CorrectionsService.commit()()
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
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsService] Commit to clear context inside CorrectionsEngine", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  (*(v7 + 32))(v6, v7);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4, a5);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}