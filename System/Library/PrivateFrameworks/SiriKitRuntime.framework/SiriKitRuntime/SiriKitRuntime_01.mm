uint64_t outlined init with take of Conversation.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.reset(reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(a1, v4, v5, v1 + 32);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:);

  return v8(v2, v3);
}

uint64_t protocol witness for Conversational.cancel() in conformance Conversation()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return Conversation.cancel()();
}

uint64_t Conversation.cancel()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v0, 0);
}

{
  v1 = (*(**(v0[5] + 112) + 192))();
  if (v1)
  {
    v0[6] = v1;
    v2 = v1;
    v0[7] = swift_weakLoadStrong();
    v3 = *(v2 + 16);
    v0[8] = v3;

    return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v3, 0);
  }

  else
  {
    v4 = v0[5];
    swift_beginAccess();
    Conversation.State.cancel()();
    swift_endAccess();
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  FlowAgent.cancel()();

  return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v2, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];

  if (v2)
  {
    v3 = v0[7];
    v0[6] = v3;
    v0[7] = swift_weakLoadStrong();
    v4 = *(v3 + 16);
    v0[8] = v4;

    return MEMORY[0x1EEE6DFA0](Conversation.cancel(), v4, 0);
  }

  else
  {
    v5 = v0[5];
    swift_beginAccess();
    Conversation.State.cancel()();
    swift_endAccess();
    v6 = v0[1];

    return v6();
  }
}

Swift::Void __swiftcall FlowAgent.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for FlowTraceEvent();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    *v9 = 136315138;
    v42 = *(v0 + 112);
    v43 = v10;
    type metadata accessor for AnyFlow();
    v11 = v2;
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v43);

    *(v9 + 4) = v14;
    v2 = v11;
    _os_log_impl(&dword_1DC659000, v7, v8, "[Conversation] Cancel flow %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  swift_beginAccess();
  *(v0 + 130) = 1;
  v15 = *(v0 + 144);
  if (v15)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v2;
      v20 = v19;
      *v18 = 136315138;
      v41 = *(v0 + 112);
      v42 = v19;
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v42);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1DC659000, v16, v17, "%s cancelling prepare() task.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v24 = v20;
      v2 = v39;
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v25 = type metadata accessor for PrepareResponse();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v15, v25, v26, MEMORY[0x1E69E7288]);
  }

  v27 = *(v1 + 136);
  if (v27)
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315138;
      v41 = *(v1 + 112);
      v42 = v31;
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v42);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1DC659000, v28, v29, "%s cancelling execute() task.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v35 = type metadata accessor for ExecuteResponse();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v27, v35, v36, MEMORY[0x1E69E7288]);
  }

  *v5 = *(v1 + 112);
  v37 = v40;
  (*(v40 + 104))(v5, *MEMORY[0x1E69CFB10], v2);

  static FlowTrace.trace(event:)();
  (*(v37 + 8))(v5, v2);
}

Swift::Void __swiftcall Conversation.State.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for Conversation.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with take of Conversation.State(v1, v5, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = *v5;
        v7 = v5[1];

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.executor);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_1DC659000, v10, v11, "[Conversation] Cancelling speculation task.", v12, 2u);
          MEMORY[0x1E12A2F50](v12, -1, -1);
        }

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMR);
LABEL_22:
        v24 = v13;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        MEMORY[0x1E12A1950](v8, v24, v25, MEMORY[0x1E69E7288]);

        goto LABEL_25;
      }

      v19 = type metadata accessor for Conversation.State;
    }

    else
    {
      v18 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48));

      v19 = type metadata accessor for SiriRequest;
    }

    outlined destroy of Conversation.State(v5, v19);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v8 = *v5;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "[Conversation] Cancelling execution task.", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v13 = type metadata accessor for ConversationCommitResult();
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "[Conversation] cancel() was called on an already cancelled conversation", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }
  }

LABEL_25:
  swift_storeEnumTagMultiPayload();
}

uint64_t initializeWithCopy for SelfReflectionResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t destroy for SelfReflectionResponse(uint64_t a1)
{
  v2 = *(a1 + 40);

  v3 = *(a1 + 48);
}

uint64_t RequestContextData.Builder.__deallocating_deinit()
{
  RequestContextData.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RequestContextData.Builder.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioSource, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioDestination, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_responseMode, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);

  v2 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_bargeInModes);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_restrictions, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);

  v3 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_currentDeviceAssistantId + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceTriggerEventInfo);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_positionInSession, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);

  return v0;
}

uint64_t closure #1 in ConcurrentTaskPool.add(task:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *(a1 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  *(a1 + 16) = v4;
  swift_endAccess();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySayypGGMd, &_ss23_ContiguousArrayStorageCySayypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS11appBundleId_SDySSypG8userDatatGMd, &_ss23_ContiguousArrayStorageCySS11appBundleId_SDySSypG8userDatatGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11appBundleId_SDySSypG8userDatatMd, &_sSS11appBundleId_SDySSypG8userDatatMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t ServiceBridgeErrorHandlingProxy.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ServiceBridgeDelegateXPCWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SharedContextServiceImpl.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ServiceBridgeDelegate.xpcWrapper.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ServiceBridgeDelegateXPCWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return v4;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RequestContextData.Builder.isUserOnActivePhoneCall.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isUserOnActivePhoneCall;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen(_:)()
{
  (*(*v0 + 1000))();
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isLiveActivitiesSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isUserOnActivePhoneCall(_:)()
{
  (*(*v0 + 784))();
}

uint64_t RequestContextData.Builder.isDeviceLocked(_:)()
{
  (*(*v0 + 1024))();
}

uint64_t RequestContextData.Builder.isDeviceLocked.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceLocked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v17 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  *(v18 + 32) = v5;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2 & 1;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:), v18);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 72) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:), v9, 0);
}

unint64_t lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor()
{
  result = lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor;
  if (!lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor)
  {
    type metadata accessor for MessageBusActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor);
  }

  return result;
}

uint64_t sub_1DC673C44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void SharedContextServiceImpl.fetchContext(for:includesNearbyDevices:with:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
  v11[3] = &block_descriptor_25;
  v10 = _Block_copy(v11);

  [v8 fetchContextsFor:isa includesNearByDevices:a2 & 1 completion:v10];
  _Block_release(v10);
}

uint64_t ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)()
{
  v1 = v0[55];
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

LABEL_8:
  v0[56] = v6;
  v2 = v0[53];
  v5 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{
  v0[64] = *(v0[62] + 32);
  v1 = static MessageBusActor.shared;
  v0[65] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v3, 0);
}

{
  v1 = v0[59];
  v2 = v0[41];
  v3 = v0[35];
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  CurrentDevice.setRestrictedCommands(_:)();

  v4 = static MessageBusActor.shared;
  v0[62] = *(v2 + 56);
  v0[63] = v4;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v4, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v11 = *(v0 + 312);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(*(v0 + 376), v1, type metadata accessor for RemoteConversationTurnData);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  *(v0 + 664) = v4;
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  *(v0 + 528) = v7;
  outlined init with take of DecisionEngineResponse(v1, v7 + v5, type metadata accessor for RemoteConversationTurnData);
  *(v7 + v6) = v11;
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 536) = v8;
  *v8 = v0;
  v8[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  v9 = *(v0 + 512);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(v8, &async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v7);
}

{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 siriKitMetrics];
    if (v3 && (v4 = v3, v5 = [v3 resultCandidateId], v4, v5))
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE200000000000000;
      v6 = 12589;
    }

    v10 = *(v0 + 232);
    v9 = *(v0 + 240);

    v35 = specialized ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(v2, v10, v9, v6, v8);
  }

  else
  {
    v35 = 0;
  }

  v34 = *(v0 + 668);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v36 = *(v0 + 312);
  v37 = *(v0 + 320);
  v15 = *(v0 + 296);
  v32 = *(v0 + 304);
  v33 = *(v0 + 448);
  v16 = *(v0 + 272);
  v17 = *(v0 + 280);
  v18 = *(v0 + 256);
  v19 = *(v0 + 240);
  v30 = *(v0 + 408);
  v31 = *(v0 + 248);
  v29 = *(v0 + 232);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 264), &v13[v14[6]], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v16, &v13[v14[7]], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v20 = v14[9];
  v21 = *(v11 + 16);
  *(v0 + 456) = v21;
  *(v0 + 464) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(&v13[v20], v30, v12);
  (*(v11 + 56))(&v13[v20], 0, 1, v12);
  *v13 = v29;
  *(v13 + 1) = v19;
  *(v13 + 2) = v31;
  *(v13 + 3) = v18;
  *&v13[v14[8]] = v17;
  *&v13[v14[10]] = v33;
  v22 = &v13[v14[13]];
  *v22 = v15;
  v22[1] = v32;
  v13[v14[11]] = v34;
  *&v13[v14[12]] = v35;

  v23 = v17;

  outlined copy of Data?(v15, v32);
  static SharedContext.internalSharedContext.getter();
  ObjectType = swift_getObjectType();
  v25 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, v37);
  type metadata accessor for SharedContextServiceImpl();
  *(swift_allocObject() + 16) = v25;
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, 255, type metadata accessor for SharedContextServiceImpl);
  dispatch thunk of RefreshableSharedContext.sharedContext.setter();

  *(v0 + 472) = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  *(v0 + 480) = SiriEnvironment.callState.getter();

  v26 = *(MEMORY[0x1E69D0088] + 4);
  v38 = (*MEMORY[0x1E69D0088] + MEMORY[0x1E69D0088]);
  v27 = swift_task_alloc();
  *(v0 + 488) = v27;
  *v27 = v0;
  v27[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);

  return v38();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 288);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = type metadata accessor for Logger();
  *(v0 + 432) = __swift_project_value_buffer(v6, static Logger.executor);
  Logger.debugF(file:function:)();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.makeConversationIdAndEmitRequestLink(executionUUID:)();

  if (v3)
  {
    v7 = *(v0 + 288);
    v8 = SAIntentGroupRunSiriKitExecutor.hasExecuteOnRemotePayload.getter();
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 668) = v8 & 1;
  v9 = *(v0 + 416);
  v10 = *(v0 + 328);
  v11 = v10[22];
  __swift_project_boxed_opaque_existential_1(v10 + 18, v10[21]);
  dispatch thunk of ReferenceResolutionClientProtocol.inRequest(requestId:)();
  *(v0 + 440) = v10[24];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v12, 0);
}

{
  v1 = *(v0 + 328);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + 104);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 48);
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v8 = 0;
  }

  *(v0 + 568) = v9;
  *(v0 + 560) = v7;
  *(v0 + 552) = v6;
  *(v0 + 584) = v10;
  *(v0 + 576) = v8;
  if (v6 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19)
    {
      goto LABEL_22;
    }

    *(v0 + 224) = v19;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v18 = *(v0 + 216);
    v15 = v8;
    v17 = v10;
  }

  else
  {
    v14 = v10;
    v15 = v8;
    if (!v10)
    {
      v16 = v8;
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= ((v9 + 64) >> 6))
        {
          goto LABEL_22;
        }

        v14 = *(v7 + 8 * v15);
        ++v16;
        if (v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v6, v4, v5);
    }

LABEL_15:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  }

  *(v0 + 608) = v17;
  *(v0 + 600) = v15;
  *(v0 + 592) = v18;
  if (v18)
  {
    v6 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v4 = v18;
    v5 = 0;

    return MEMORY[0x1EEE6DFA0](v6, v4, v5);
  }

LABEL_22:
  v20 = *(v0 + 568);
  v21 = *(v0 + 560);
  v22 = *(v0 + 552);
  v23 = *(v0 + 328);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  swift_beginAccess();
  v24 = *(v23 + 280);
  *(v0 + 640) = v24;
  if (v24)
  {
    v25 = *(v0 + 336);
    v26 = *(*(v0 + 328) + 184);
    v27 = type metadata accessor for CorrectionsContext();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);

    v28 = dispatch thunk of CorrectionsPlatformClient.isCorrectionPossible(context:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
    v29 = *(v0 + 432);
    if (v28)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v30, v31, "[ConversationService] Starting turn for potential corrections invocations", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }

      v33 = swift_task_alloc();
      *(v0 + 648) = v33;
      *v33 = v0;
      v33[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
      v34 = *(v0 + 376);
      v35 = *(v0 + 312);
      v36 = *(v0 + 320);

      return RemoteConversationClient.startTurn(turnData:bridge:)(v34, v35, v36);
    }

    v39 = *(v0 + 424);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    v43 = *(v23 + 280);
    *(v23 + 280) = 0;
  }

  else
  {
    v38 = *(v0 + 424);
  }

  v44 = *(v0 + 328);
  swift_beginAccess();
  v45 = *(v44 + 120);
  if (v45 >> 6)
  {
    if (v45 >> 6 != 1 || (v45 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((*(v44 + 112) & 1) == 0)
  {
    goto LABEL_37;
  }

  v46 = *(v0 + 328);
  v47 = v46[5];
  v48 = v46[6];
  __swift_project_boxed_opaque_existential_1(v46 + 2, v47);
  (*(v48 + 56))(v47, v48);
LABEL_37:
  v66 = *(v0 + 456);
  v67 = *(v0 + 464);
  v70 = *(v0 + 668);
  v49 = *(v0 + 416);
  v64 = *(v0 + 400);
  v65 = *(v0 + 408);
  v71 = *(v0 + 392);
  v50 = *(v0 + 376);
  v51 = *(v0 + 384);
  v68 = *(v0 + 440);
  v52 = *(v0 + 368);
  v53 = *(v0 + 328);
  v72 = *(v0 + 336);
  v54 = *(v0 + 312);
  v69 = *(v0 + 320);
  v55 = *(v53 + 40);
  v56 = *(v53 + 48);
  __swift_project_boxed_opaque_existential_1((v53 + 16), v55);
  (*(v56 + 48))(v49, v55, v56);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v50, v52, type metadata accessor for RemoteConversationTurnData);
  v66(v64, v65, v51);
  outlined init with copy of ReferenceResolutionClientProtocol(v53 + 144, v0 + 56);
  v57 = *(v53 + 304);
  active = type metadata accessor for ConversationService.ActiveTurn(0);
  v59 = *(active + 48);
  v60 = *(active + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v61 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(v52, v64, v54, v69, v68, v70, v0 + 56, v57);

  swift_unknownObjectRelease();
  outlined destroy of ConversationService.EagerResult(v50, type metadata accessor for RemoteConversationTurnData);
  v62 = *(v71 + 8);
  v62(v65, v51);
  v62(v49, v51);

  v63 = *(v0 + 8);

  return v63(v61);
}

{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v9 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = *(v2 + 520);
    v5 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  else
  {
    v6 = *(v2 + 528);
    v7 = *(v2 + 520);

    v5 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v2, 0);
}

{
  v1 = *(v0 + 504);
  v2 = *(v0 + 424);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v2, 0);
}

{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v3, 0);
}

{
  v1 = *(v0 + 504);
  v2 = *(v0 + 424);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v2, 0);
}

{
  v1 = v0[53];

  v12 = v0[68];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[48];
  v7 = v0[46];
  v8 = v0[42];
  outlined destroy of ConversationService.EagerResult(v0[47], type metadata accessor for RemoteConversationTurnData);
  v9 = *(v5 + 8);
  v9(v3, v6);
  v9(v2, v6);

  v10 = v0[1];

  return v10();
}

{
  v27 = v0;
  v1 = *(v0 + 432);
  v2 = static os_log_type_t.debug.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315394;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v26);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v26);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_1DC659000, v3, v2, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v12 = *(v0 + 592);
  if (*(v12 + 184) == 2)
  {
    *(v12 + 184) = *(v0 + 668);
    v12 = *(v0 + 592);
  }

  v14 = *(v0 + 368);
  v13 = *(v0 + 376);
  v15 = (*(v0 + 664) + 16) & ~*(v0 + 664);
  v16 = (*(v0 + 360) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v12 + 160);
  v24 = *(v0 + 312);
  __swift_project_boxed_opaque_existential_1((v12 + 128), *(v12 + 152));
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v13, v14, type metadata accessor for RemoteConversationTurnData);
  v18 = swift_allocObject();
  outlined init with take of DecisionEngineResponse(v14, v18 + v15, type metadata accessor for RemoteConversationTurnData);
  *(v18 + v16) = v24;
  v19 = swift_allocObject();
  *(v0 + 616) = v19;
  *(v19 + 16) = &async function pointer to partial apply for closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  *(v19 + 24) = v18;
  v20 = *(v17 + 8);
  swift_unknownObjectRetain();
  v25 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 624) = v22;
  *v22 = v0;
  v22[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);

  return v25();
}

{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v9 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = *(v2 + 592);
    v5 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  else
  {
    v6 = *(v2 + 616);
    v7 = *(v2 + 592);

    v5 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), *(v0 + 424), 0);
}

{
  v1 = *(v0 + 592);

  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  *(v0 + 584) = v5;
  *(v0 + 576) = v6;
  v7 = *(v0 + 552);
  if (v7 < 0)
  {
    v13 = __CocoaSet.Iterator.next()();
    if (!v13)
    {
      goto LABEL_14;
    }

    *(v0 + 224) = v13;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v12 = *(v0 + 216);
    v9 = v6;
    v11 = v5;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    if (!v5)
    {
      v10 = v6;
      while (1)
      {
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v9 >= ((*(v0 + 568) + 64) >> 6))
        {
          goto LABEL_14;
        }

        v8 = *(*(v0 + 560) + 8 * v9);
        ++v10;
        if (v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

LABEL_7:
    v11 = (v8 - 1) & v8;
    v12 = *(*(v7 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v8)))));
  }

  *(v0 + 608) = v11;
  *(v0 + 600) = v9;
  *(v0 + 592) = v12;
  if (v12)
  {
    v2 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v3 = v12;
    v4 = 0;

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

LABEL_14:
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  v17 = *(v0 + 328);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  swift_beginAccess();
  v18 = *(v17 + 280);
  *(v0 + 640) = v18;
  if (v18)
  {
    v19 = *(v0 + 336);
    v20 = *(*(v0 + 328) + 184);
    v21 = type metadata accessor for CorrectionsContext();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);

    v22 = dispatch thunk of CorrectionsPlatformClient.isCorrectionPossible(context:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
    v23 = *(v0 + 432);
    if (v22)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "[ConversationService] Starting turn for potential corrections invocations", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }

      v27 = swift_task_alloc();
      *(v0 + 648) = v27;
      *v27 = v0;
      v27[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
      v28 = *(v0 + 376);
      v29 = *(v0 + 312);
      v30 = *(v0 + 320);

      return RemoteConversationClient.startTurn(turnData:bridge:)(v28, v29, v30);
    }

    v33 = *(v0 + 424);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    v37 = *(v17 + 280);
    *(v17 + 280) = 0;
  }

  else
  {
    v32 = *(v0 + 424);
  }

  v38 = *(v0 + 328);
  swift_beginAccess();
  v39 = *(v38 + 120);
  if (v39 >> 6)
  {
    if (v39 >> 6 != 1 || (v39 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((*(v38 + 112) & 1) == 0)
  {
    goto LABEL_29;
  }

  v40 = *(v0 + 328);
  v41 = v40[5];
  v42 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v41);
  (*(v42 + 56))(v41, v42);
LABEL_29:
  v60 = *(v0 + 456);
  v61 = *(v0 + 464);
  v64 = *(v0 + 668);
  v43 = *(v0 + 416);
  v58 = *(v0 + 400);
  v59 = *(v0 + 408);
  v65 = *(v0 + 392);
  v44 = *(v0 + 376);
  v45 = *(v0 + 384);
  v62 = *(v0 + 440);
  v46 = *(v0 + 368);
  v47 = *(v0 + 328);
  v66 = *(v0 + 336);
  v48 = *(v0 + 312);
  v63 = *(v0 + 320);
  v49 = *(v47 + 40);
  v50 = *(v47 + 48);
  __swift_project_boxed_opaque_existential_1((v47 + 16), v49);
  (*(v50 + 48))(v43, v49, v50);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v44, v46, type metadata accessor for RemoteConversationTurnData);
  v60(v58, v59, v45);
  outlined init with copy of ReferenceResolutionClientProtocol(v47 + 144, v0 + 56);
  v51 = *(v47 + 304);
  active = type metadata accessor for ConversationService.ActiveTurn(0);
  v53 = *(active + 48);
  v54 = *(active + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v55 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(v46, v58, v48, v63, v62, v64, v0 + 56, v51);

  swift_unknownObjectRelease();
  outlined destroy of ConversationService.EagerResult(v44, type metadata accessor for RemoteConversationTurnData);
  v56 = *(v65 + 8);
  v56(v59, v45);
  v56(v43, v45);

  v57 = *(v0 + 8);

  return v57(v55);
}

{
  v1 = *(v0 + 616);
  v2 = *(v0 + 424);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v2, 0);
}

{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[53];

  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  v18 = v0[79];
  v9 = v0[51];
  v8 = v0[52];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[48];
  v13 = v0[46];
  v14 = v0[42];
  outlined destroy of ConversationService.EagerResult(v0[47], type metadata accessor for RemoteConversationTurnData);
  v15 = *(v11 + 8);
  v15(v9, v12);
  v15(v8, v12);

  v16 = v0[1];

  return v16();
}

{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 656) = v0;

  v5 = *(v2 + 424);
  if (v0)
  {
    v6 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  else
  {
    v6 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 640);
  v2 = *(v0 + 424);

  v3 = *(v0 + 328);
  swift_beginAccess();
  v4 = *(v3 + 120);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1 && (v4 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (*(v3 + 112))
  {
LABEL_4:
    v5 = *(v0 + 328);
    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
    (*(v7 + 56))(v6, v7);
  }

  v26 = *(v0 + 456);
  v27 = *(v0 + 464);
  v30 = *(v0 + 668);
  v8 = *(v0 + 416);
  v24 = *(v0 + 400);
  v25 = *(v0 + 408);
  v31 = *(v0 + 392);
  v9 = *(v0 + 376);
  v10 = *(v0 + 384);
  v28 = *(v0 + 440);
  v11 = *(v0 + 368);
  v12 = *(v0 + 328);
  v32 = *(v0 + 336);
  v13 = *(v0 + 312);
  v29 = *(v0 + 320);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  __swift_project_boxed_opaque_existential_1((v12 + 16), v14);
  (*(v15 + 48))(v8, v14, v15);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v9, v11, type metadata accessor for RemoteConversationTurnData);
  v26(v24, v25, v10);
  outlined init with copy of ReferenceResolutionClientProtocol(v12 + 144, v0 + 56);
  v16 = *(v12 + 304);
  active = type metadata accessor for ConversationService.ActiveTurn(0);
  v18 = *(active + 48);
  v19 = *(active + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v20 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(v11, v24, v13, v29, v28, v30, v0 + 56, v16);

  swift_unknownObjectRelease();
  outlined destroy of ConversationService.EagerResult(v9, type metadata accessor for RemoteConversationTurnData);
  v21 = *(v31 + 8);
  v21(v25, v10);
  v21(v8, v10);

  v22 = *(v0 + 8);

  return v22(v20);
}

{
  v1 = v0[80];
  v2 = v0[53];

  v13 = v0[82];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];
  v8 = v0[46];
  v9 = v0[42];
  outlined destroy of ConversationService.EagerResult(v0[47], type metadata accessor for RemoteConversationTurnData);
  v10 = *(v6 + 8);
  v10(v4, v7);
  v10(v3, v7);

  v11 = v0[1];

  return v11();
}

uint64_t outlined init with take of DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  v51 = v0;
  v1 = v0[30];
  v2 = v1[2];
  v0[32] = v2;
  if (v2)
  {
    v4 = v0[28];
    v3 = v0[29];
    v5 = v1[3];
    v0[33] = v5;
    v6 = v1[6];
    v7 = swift_allocObject();
    v0[34] = v7;
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v2;
    v7[5] = v5;
    outlined copy of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v2);

    v8 = v2;
    swift_unknownObjectRetain();
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v10 = &async function pointer to partial apply for specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v11 = v7;
LABEL_3:

    return (specialized InterruptibleTaskManager.perform<A>(_:))(v10, v11);
  }

  v13 = v1[10];
  v14 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v0[38] = v15;
  if (v15)
  {
    v16 = v15;
    if (one-time initialization token for xpcInterface != -1)
    {
      swift_once();
    }

    v17 = v0[30];
    [v16 setRemoteObjectInterface_];
    v18 = swift_allocObject();
    swift_weakInit();
    v0[6] = closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)partial apply;
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_71;
    v19 = _Block_copy(v0 + 2);
    v20 = v0[7];

    [v16 setInvalidationHandler_];
    _Block_release(v19);
    v21 = swift_allocObject();
    swift_weakInit();
    v0[12] = closure #3 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)partial apply;
    v0[13] = v21;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[11] = &block_descriptor_76;
    v22 = _Block_copy(v0 + 8);
    v23 = v0[13];

    [v16 setInterruptionHandler_];
    _Block_release(v22);
    [v16 resume];
    v0[18] = closure #4 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[19] = 0;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v0[17] = &block_descriptor_79;
    v24 = _Block_copy(v0 + 14);
    v25 = [v16 remoteObjectProxyWithErrorHandler_];
    _Block_release(v24);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMd, &_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMR);
    if (swift_dynamicCast())
    {
      v26 = v0[27];
      v0[39] = v26;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.executor);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1DC659000, v28, v29, "Connection set up completed", v30, 2u);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      v31 = v0[29];
      v32 = v0[30];
      v33 = v0[28];

      v34 = v1[2];
      v35 = v1[3];
      v1[2] = v16;
      v1[3] = v26;
      v36 = v16;
      swift_unknownObjectRetain();
      outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v34);
      v37 = *(v32 + 48);
      v38 = swift_allocObject();
      v0[40] = v38;
      v38[2] = v33;
      v38[3] = v31;
      v38[4] = v26;

      swift_unknownObjectRetain();
      v39 = swift_task_alloc();
      v0[41] = v39;
      *v39 = v0;
      v39[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v10 = &async function pointer to partial apply for specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v11 = v38;
      goto LABEL_3;
    }

    v47 = v0[31];

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
  }

  else
  {
    v40 = v0[31];

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.executor);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x80000001DCA7FD70, &v50);
      _os_log_impl(&dword_1DC659000, v42, v43, "%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
  }

  v49 = v0[1];

  return v49();
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 248);

  if (v1)
  {
    v3 = *(v0 + 288);
    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6();
}

{
  v51 = v0;
  v1 = v0[30];
  v2 = v1[2];
  v0[32] = v2;
  if (v2)
  {
    v4 = v0[28];
    v3 = v0[29];
    v5 = v1[3];
    v0[33] = v5;
    v6 = v1[6];
    v7 = swift_allocObject();
    v0[34] = v7;
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v2;
    v7[5] = v5;
    outlined copy of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v2);

    v8 = v2;
    swift_unknownObjectRetain();
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v10 = &async function pointer to partial apply for specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v11 = v7;
LABEL_3:

    return (specialized InterruptibleTaskManager.perform<A>(_:))(v10, v11);
  }

  v13 = v1[10];
  v14 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v0[39] = v15;
  if (v15)
  {
    v16 = v15;
    if (one-time initialization token for xpcInterface != -1)
    {
      swift_once();
    }

    v17 = v0[30];
    [v16 setRemoteObjectInterface_];
    v18 = swift_allocObject();
    swift_weakInit();
    v0[6] = partial apply for closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_5;
    v19 = _Block_copy(v0 + 2);
    v20 = v0[7];

    [v16 setInvalidationHandler_];
    _Block_release(v19);
    v21 = swift_allocObject();
    swift_weakInit();
    v0[12] = partial apply for closure #3 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[13] = v21;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[11] = &block_descriptor_25;
    v22 = _Block_copy(v0 + 8);
    v23 = v0[13];

    [v16 setInterruptionHandler_];
    _Block_release(v22);
    [v16 resume];
    v0[18] = closure #4 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[19] = 0;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v0[17] = &block_descriptor_28;
    v24 = _Block_copy(v0 + 14);
    v25 = [v16 remoteObjectProxyWithErrorHandler_];
    _Block_release(v24);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMd, &_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMR);
    if (swift_dynamicCast())
    {
      v26 = v0[27];
      v0[40] = v26;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.executor);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1DC659000, v28, v29, "Connection set up completed", v30, 2u);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      v31 = v0[29];
      v32 = v0[30];
      v33 = v0[28];

      v34 = v1[2];
      v35 = v1[3];
      v1[2] = v16;
      v1[3] = v26;
      v36 = v16;
      swift_unknownObjectRetain();
      outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v34);
      v37 = *(v32 + 48);
      v38 = swift_allocObject();
      v0[41] = v38;
      v38[2] = v33;
      v38[3] = v31;
      v38[4] = v26;

      swift_unknownObjectRetain();
      v39 = swift_task_alloc();
      v0[42] = v39;
      *v39 = v0;
      v39[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v10 = &async function pointer to partial apply for specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v11 = v38;
      goto LABEL_3;
    }

    v47 = v0[31];

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
  }

  else
  {
    v40 = v0[31];

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.executor);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x80000001DCA7FD70, &v50);
      _os_log_impl(&dword_1DC659000, v42, v43, "%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
  }

  v49 = v0[1];

  return v49();
}

{
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);

  if (v1)
  {
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 368);
    swift_willThrow();
    outlined copy of InterruptibleTaskResult<RemoteConversation?>(v5, v4, v8);

    swift_unknownObjectRelease();
    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v5, v4, v8);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v12, v11, 0);
    v15 = *(v0 + 8);

    return v15(v12, v11);
  }
}

{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];

  swift_unknownObjectRelease();

  v5 = v0[37];
  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 353);
  v2 = *(v0 + 248);

  if (v1)
  {
    v3 = *(v0 + 336);
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  swift_unknownObjectRelease();

  v5 = v0[43];
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];

  swift_unknownObjectRelease();

  v5 = v0[38];
  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 369);
  v2 = *(v0 + 344);
  v3 = *(v0 + 248);

  if (v1)
  {
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v7 = *(v0 + 312);
    v6 = *(v0 + 320);
    v8 = *(v0 + 369);
    swift_willThrow();
    outlined copy of InterruptibleTaskResult<RemoteConversation?>(v5, v4, v8);
    swift_unknownObjectRelease();

    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v5, v4, v8);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v14 = *(v0 + 312);
    v13 = *(v0 + 320);
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v12, v11, 0);
    v15 = *(v0 + 8);

    return v15(v12, v11);
  }
}

{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[31];
  swift_unknownObjectRelease();

  v5 = v0[45];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DC674768()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for AFServiceDeviceContext();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFServiceDeviceContext, 0x1E698D1D8);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[28] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[31] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v5, 0);
}

void *outlined copy of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t RequestContextData.Builder.audioSource(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  (*(*v1 + 352))(v6);
}

uint64_t RequestContextData.Builder.audioDestination(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  (*(*v1 + 376))(v6);
}

uint64_t RequestContextData.Builder.isDirectAction.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDirectAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isVoiceTriggerEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isVoiceTriggerEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void RequestContextData.Builder.peerInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_peerInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.inputOrigin.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RequestContextData.Builder.isEyesFree.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isEyesFree;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isTextToSpeechEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTextToSpeechEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void RequestContextData.Builder.endpointInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_endpointInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void RequestContextData.Builder.instanceInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_instanceInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.bargeInModes.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void RequestContextData.Builder.originatingHome.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_originatingHome;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.isTriggerlessFollowup(_:)()
{
  (*(*v0 + 712))();
}

uint64_t RequestContextData.Builder.didPreviouslyFallbackToServer(_:)()
{
  (*(*v0 + 736))();
}

uint64_t RequestContextData.Builder.isSpeechRequest(_:)()
{
  (*(*v0 + 760))();
}

uint64_t RequestContextData.Builder.didPreviouslyFallbackToServer.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_didPreviouslyFallbackToServer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isSpeechRequest.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSpeechRequest;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.voiceTriggerEventInfo(_:)()
{
  v1 = *(*v0 + 808);

  v1(v2);
}

uint64_t RequestContextData.Builder.isRecognizeMyVoiceEnabled(_:)()
{
  (*(*v0 + 832))();
}

uint64_t RequestContextData.Builder.voiceAudioSessionId(_:)(unint64_t a1)
{
  (*(*v1 + 856))(a1 | ((HIDWORD(a1) & 1) << 32));
}

uint64_t RequestContextData.Builder.isRecognizeMyVoiceEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isRecognizeMyVoiceEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.voiceAudioSessionId.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceAudioSessionId;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled(_:)()
{
  (*(*v0 + 880))();
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSystemApertureEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported(_:)()
{
  (*(*v0 + 904))();
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isLiveActivitiesSupported;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isInAmbient(_:)()
{
  (*(*v0 + 928))();
}

uint64_t RequestContextData.Builder.isInAmbient.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isInAmbient;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.conjunctionInfo(_:)(void *a1)
{
  v3 = *(*v1 + 976);
  v4 = a1;
  v3(a1);
}

void RequestContextData.Builder.conjunctionInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_conjunctionInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceShowingLockScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isDirectAction.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDirectAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.currentDeviceAssistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_currentDeviceAssistantId);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t RequestContextData.Builder.isTextToSpeechEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTextToSpeechEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.bargeInModes.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

void *RequestContextData.Builder.originatingHome.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_originatingHome;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.currentDeviceAssistantId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_currentDeviceAssistantId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t RequestContextData.Builder.isSpeechRequest.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSpeechRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSystemApertureEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isInAmbient.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isInAmbient;
  swift_beginAccess();
  return *(v0 + v1);
}

void *RequestContextData.Builder.conjunctionInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_conjunctionInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.isDeviceLocked.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceLocked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.approximatePreviousTTSInterval(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*v1 + 616))(v6);
}

uint64_t RequestContextData.Builder.isTriggerlessFollowup.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTriggerlessFollowup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.positionInSession(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  (*(*v1 + 952))(v6);
}

uint64_t RequestContextData.Builder.isVoiceTriggerEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isVoiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void *RequestContextData.Builder.peerInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_peerInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *RequestContextData.Builder.endpointInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_endpointInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.isTriggerlessFollowup.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTriggerlessFollowup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.inputOrigin.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *RequestContextData.Builder.instanceInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_instanceInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.didPreviouslyFallbackToServer.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_didPreviouslyFallbackToServer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isUserOnActivePhoneCall.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isUserOnActivePhoneCall;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isRecognizeMyVoiceEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isRecognizeMyVoiceEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t RequestContextData.Builder.voiceAudioSessionId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceAudioSessionId);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceShowingLockScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t ConversationService.bridge(didReceiveRequestContextData:from:)()
{
  v26 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v9 = [v6 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v25);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationService] Received context data: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v14 = *(v0 + 88);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 112) = v15;
  v16 = *(v14 + 120);
  *(v0 + 184) = v16;
  if ((v16 & 0xC0) == 0x40)
  {
    *(v0 + 120) = *(*(v0 + 88) + 192);
    v17 = one-time initialization token for shared;
    v18 = v15;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = static ConversationActor.shared;

    return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveRequestContextData:from:), v19, 0);
  }

  else
  {
    v20 = *(v0 + 104);

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v21 = 0xD000000000000050;
    v21[1] = 0x80000001DCA80EF0;
    swift_willThrow();
    v22 = *(v0 + 96);

    v23 = *(v0 + 8);

    return v23();
  }
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  TaskService.onNewTurn()();

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveRequestContextData:from:), v2, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x170))();
  *(v0 + 128) = v4;
  v5 = type metadata accessor for RequestPositionInSession();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1E69CE598];
  if ((v1 & 1) == 0)
  {
    v7 = MEMORY[0x1E69CE5A8];
  }

  (*(*(v5 - 8) + 104))(v3, *v7, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v8 = (*(*v4 + 952))(v3);
  v9 = (*(*v4 + 1280))(v8);
  *(v0 + 136) = v9;
  v10 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8);
  v18 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId);
  *(v0 + 144) = v10;
  v11 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId);
  v12 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8);
  *(v0 + 152) = v12;
  v13 = OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration;

  v15 = swift_task_alloc();
  *(v0 + 160) = v15;
  *v15 = v0;
  v15[1] = ConversationService.bridge(didReceiveRequestContextData:from:);
  v16 = *(v0 + 88);
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);

  return ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v18, v10, v11, v12, v2 + v13, v2 + v14, v9, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 184);

  outlined consume of ConversationService.State(v3, v7);
  v8 = *(v6 + 112);
  *(v6 + 112) = v1;
  v9 = *(v6 + 120);
  *(v6 + 120) = 0x80;
  outlined consume of ConversationService.State(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 184);

  outlined consume of ConversationService.State(v6, v7);
  v8 = *(v0 + 168);
  v9 = *(v0 + 96);

  v10 = *(v0 + 8);

  return v10();
}

Swift::Void __swiftcall TaskService.onNewTurn()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 32);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:
    if (one-time initialization token for instrumentation == -1)
    {
LABEL_24:
      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.instrumentation);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1DC659000, v32, v33, "TaskService - No current task, creating a new one", v34, 2u);
        MEMORY[0x1E12A2F50](v34, -1, -1);
      }

      static Date.now.getter();
      TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(0, 0, 0, 1, v5);
      goto LABEL_27;
    }

LABEL_30:
    swift_once();
    goto LABEL_24;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_30;
  }

  v7 = MEMORY[0x1E12A1FE0](0, v6);

LABEL_6:
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.instrumentation);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v35 = v2;
    v14 = v13;
    v37 = v13;
    *v12 = 136315138;

    v15 = FlowTask.description.getter();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v37);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v9, v10, "TaskService - Existing currentTask: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v19 = v14;
    v2 = v35;
    MEMORY[0x1E12A2F50](v19, -1, -1);
    v20 = v12;
    v1 = v36;
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  if (*(v7 + 32) == 2)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "TaskService - Current task has ended, creating a new one", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    static Date.now.getter();
    TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(0, 0, 0, 1, v5);

LABEL_27:
    (*(v2 + 8))(v5, v1);
    return;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v26 = 136315138;
    if (*(v7 + 32))
    {
      if (*(v7 + 32) == 1)
      {
        v28 = 0xE700000000000000;
        v29 = 0x676E696F676E6FLL;
      }

      else
      {
        v28 = 0xE500000000000000;
        v29 = 0x6465646E65;
      }
    }

    else
    {
      v28 = 0xE700000000000000;
      v29 = 0x64657461657263;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v37);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DC659000, v24, v25, "TaskService - Current task state is %s, not creating new task", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }
}

uint64_t ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 320) = v21;
  *(v9 + 328) = v8;
  *(v9 + 312) = v20;
  *(v9 + 296) = v19;
  *(v9 + 280) = a7;
  *(v9 + 288) = a8;
  *(v9 + 264) = a5;
  *(v9 + 272) = a6;
  *(v9 + 248) = a3;
  *(v9 + 256) = a4;
  *(v9 + 232) = a1;
  *(v9 + 240) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR) - 8) + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  v11 = type metadata accessor for RemoteConversationTurnData(0);
  *(v9 + 344) = v11;
  v12 = *(v11 - 8);
  *(v9 + 352) = v12;
  *(v9 + 360) = *(v12 + 64);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v9 + 384) = v13;
  v14 = *(v13 - 8);
  *(v9 + 392) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  *(v9 + 424) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v16, 0);
}

void TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(v5 + 32);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v41 = *(v5 + 32);
    }

    v18 = __CocoaSet.count.getter();
    if (v18 >= 16)
    {
LABEL_3:
      swift_beginAccess();
      v19 = *(v5 + 32);
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v43 = *(v5 + 32);
        }

        if (__CocoaSet.count.getter())
        {
LABEL_5:
          if (specialized Array._customRemoveLast()())
          {
LABEL_9:

            v18 = swift_endAccess();
            goto LABEL_10;
          }

          v20 = *(v5 + 32);
          if (!(v20 >> 62))
          {
            v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (!v22)
            {
LABEL_8:
              specialized Array.remove(at:)(v23);
              goto LABEL_9;
            }

LABEL_33:
            __break(1u);
            return;
          }

LABEL_31:
          v44 = __CocoaSet.count.getter();
          v22 = __OFSUB__(v44, 1);
          v23 = v44 - 1;
          if (!v22)
          {
            goto LABEL_8;
          }

          goto LABEL_33;
        }
      }

      else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= 16)
    {
      goto LABEL_3;
    }
  }

LABEL_10:
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v25 = *(v5 + 24);
    a1 = (*(v6 + 16))(v18);
    v24 = v26;
  }

  (*(v13 + 16))(v16, a5, v12);
  v27 = type metadata accessor for FlowTask(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = v24;
  *(v30 + 32) = a3;
  *(v30 + 33) = a4 & 1;
  (*(v13 + 32))(v30 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v16, v12);
  swift_beginAccess();
  v31 = *(v6 + 32);
  if (!(v31 >> 62))
  {
    goto LABEL_14;
  }

  if (v31 < 0)
  {
    v42 = *(v6 + 32);
  }

  if (__CocoaSet.count.getter() < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_14:

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v30);
    swift_endAccess();

    if (one-time initialization token for instrumentation == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.instrumentation);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v35 = 136315138;

    v37 = FlowTask.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v45);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1DC659000, v33, v34, "TaskService - Added new task: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1E12A2F50](v36, -1, -1);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v15 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return v15(v7, v6, 1, v4);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for FlowTask(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t RequestContextData.Builder.currentDeviceAssistantId(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 688);

  v5(a1, a2);
}

id RequestContextData.Builder.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v103 = &v79 - v3;
  v4 = type metadata accessor for RequestPositionInSession();
  v102 = *(v4 - 8);
  v5 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v79 - v10;
  v12 = type metadata accessor for Restrictions();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v109 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v79 - v21;
  v23 = type metadata accessor for ResponseMode();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v113 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v79 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v112 = &v79 - v34;
  v35 = (*(*v0 + 320))(v33);
  v111 = v7;
  if (!v36)
  {
    v37 = *MEMORY[0x1E69C7F30];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v100 = v36;
  v101 = v35;
  v38 = (*(*v0 + 344))();
  v39 = *(*v0 + 368);
  v107 = v30;
  v40 = v39(v38);
  (*(*v0 + 392))(v40);
  v41 = v24;
  v42 = *(v24 + 48);
  v43 = v42(v22, 1, v23);
  v108 = v23;
  if (v43 == 1)
  {
    static ResponseMode.displayForward.getter();
    v44 = v42(v22, 1, v23);
    v45 = v41;
    if (v44 != 1)
    {
      v44 = outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    v44 = (*(v41 + 32))(v113, v22, v23);
    v45 = v41;
  }

  v99 = (*(*v0 + 416))(v44);
  v98 = (*(*v0 + 440))();
  v97 = (*(*v0 + 464))();
  v96 = (*(*v0 + 488))();
  v95 = (*(*v0 + 512))();
  v94 = (*(*v0 + 536))();
  v93 = (*(*v0 + 560))();
  v46 = (*(*v0 + 584))();
  v47 = (*(*v0 + 608))();
  (*(*v0 + 632))(v47);
  v48 = *(v13 + 48);
  v49 = v48(v11, 1, v12);
  v50 = v102;
  v105 = v13;
  v106 = v12;
  v104 = v45;
  if (v49 == 1)
  {
    Restrictions.init(restrictedCommands:)();
    v51 = v48(v11, 1, v12);
    if (v51 != 1)
    {
      v51 = outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
    }
  }

  else
  {
    v51 = (*(v13 + 32))(v110, v11, v12);
  }

  v92 = (*(*v0 + 656))(v51);
  v52 = (*(*v0 + 680))();
  v54 = v53;
  v91 = (*(*v0 + 704))();
  v90 = (*(*v0 + 728))();
  v89 = (*(*v0 + 752))();
  v88 = (*(*v0 + 776))();
  v87 = (*(*v0 + 800))();
  v86 = (*(*v0 + 824))();
  v55 = (*(*v0 + 848))();
  v85 = (*(*v0 + 872))();
  v84 = (*(*v0 + 896))();
  v83 = (*(*v0 + 920))();
  v56 = v103;
  (*(*v0 + 944))();
  v57 = *(v50 + 48);
  v58 = v57(v56, 1, v4);
  v82 = v4;
  if (v58 == 1)
  {
    (*(v50 + 104))(v111, *MEMORY[0x1E69CE5A0], v4);
    v59 = v57(v56, 1, v4);
    if (v59 != 1)
    {
      v59 = outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    }
  }

  else
  {
    v59 = (*(v50 + 32))(v111, v56, v4);
  }

  v60 = 0xE000000000000000;
  if (v54)
  {
    v60 = v54;
  }

  v80 = v60;
  if (v54)
  {
    v61 = v52;
  }

  else
  {
    v61 = 0;
  }

  v79 = v61;
  if ((v55 & 0x100000000) != 0)
  {
    v62 = 0;
  }

  else
  {
    v62 = v55;
  }

  if (!v46)
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v103 = (*(*v0 + 968))(v59);
  LODWORD(v102) = (*(*v0 + 992))();
  v81 = (*(*v0 + 1016))();
  v63 = type metadata accessor for RequestContextData(0);
  v64 = objc_allocWithZone(v63);
  v65 = &v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  v66 = v100;
  *v65 = v101;
  v65[1] = v66;
  outlined init with copy of ReferenceResolutionClientProtocol?(v112, &v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v107, &v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v67 = v104;
  (*(v104 + 16))(&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v113, v108);
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v99 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v98 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v97 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v96 & 1;
  v68 = v94;
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = v95;
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = v68;
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = v93;
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v46;
  v69 = v109;
  outlined init with copy of ReferenceResolutionClientProtocol?(v109, &v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v71 = v105;
  v70 = v106;
  v72 = v110;
  (*(v105 + 16))(&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v110, v106);
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = v92;
  v73 = &v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  v74 = v80;
  *v73 = v79;
  v73[1] = v74;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v91 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v90 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = v89 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = v88 & 1;
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v87;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v86 & 1;
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v62;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v85 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v84 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v83 & 1;
  v75 = v111;
  v76 = v82;
  (*(v50 + 16))(&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v111, v82);
  *&v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v103;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v102 & 1;
  v64[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v81 & 1;
  v114.receiver = v64;
  v114.super_class = v63;
  v77 = objc_msgSendSuper2(&v114, sel_init);
  (*(v50 + 8))(v75, v76);
  (*(v71 + 8))(v72, v70);
  outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v67 + 8))(v113, v108);
  outlined destroy of ReferenceResolutionClientProtocol?(v107, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return v77;
}

uint64_t RequestContextData.Builder.isEyesFree.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isEyesFree;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.makeBuilder()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v60[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v60[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v60[-v12];
  v14 = type metadata accessor for RequestContextData.Builder(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  RequestContextData.Builder.init()();
  v18 = (*(*v17 + 1040))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8));

  v19 = (*(*v18 + 1048))(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource);

  v20 = (*(*v19 + 1056))(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination);

  v21 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v22 = type metadata accessor for ResponseMode();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v13, v1 + v21, v22);
  (*(v23 + 56))(v13, 0, 1, v22);
  v24 = (*(*v20 + 1064))(v13);

  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v25 = (*(*v24 + 1072))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree));

  v26 = (*(*v25 + 1080))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction));

  v27 = (*(*v26 + 1088))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled));

  v28 = (*(*v27 + 1096))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled));

  v29 = (*(*v28 + 1104))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo));

  v30 = (*(*v29 + 1112))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo));

  v31 = (*(*v30 + 1120))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo));

  v32 = (*(*v31 + 1128))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes));

  v33 = (*(*v32 + 1136))(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval);

  v34 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v35 = type metadata accessor for Restrictions();
  v36 = *(v35 - 8);
  (*(v36 + 16))(v9, v1 + v34, v35);
  (*(v36 + 56))(v9, 0, 1, v35);
  v37 = (*(*v33 + 1144))(v9);

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v38 = (*(*v37 + 1152))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome));

  v39 = (*(*v38 + 1160))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8));

  v40 = (*(*v39 + 1168))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup));

  v41 = (*(*v40 + 1176))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer));

  v42 = (*(*v41 + 1184))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest));

  v43 = (*(*v42 + 1192))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall));

  v44 = (*(*v43 + 1200))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo));

  v45 = (*(*v44 + 1208))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled));

  v46 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
  v47 = *(*v45 + 1216);
  v60[12] = 0;
  v48 = v47(v46);

  v49 = (*(*v48 + 1224))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled));

  v50 = (*(*v49 + 1232))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported));

  v51 = (*(*v50 + 1240))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient));

  v52 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession;
  v53 = type metadata accessor for RequestPositionInSession();
  v54 = *(v53 - 8);
  (*(v54 + 16))(v5, v1 + v52, v53);
  (*(v54 + 56))(v5, 0, 1, v53);
  v55 = (*(*v51 + 1248))(v5);

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v56 = (*(*v55 + 1256))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo));

  v57 = (*(*v56 + 1264))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen));

  v58 = (*(*v57 + 1272))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked));

  return v58;
}

uint64_t closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t RequestContextData.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioSource;
  v2 = type metadata accessor for AudioSource();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioDestination;
  v4 = type metadata accessor for AudioDestination();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_responseMode;
  v6 = type metadata accessor for ResponseMode();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isEyesFree) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDirectAction) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isVoiceTriggerEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTextToSpeechEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_peerInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_endpointInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_instanceInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_bargeInModes) = 0;
  v7 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_approximatePreviousTTSInterval;
  v8 = type metadata accessor for DateInterval();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_restrictions;
  v10 = type metadata accessor for Restrictions();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_originatingHome) = 0;
  v11 = (v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_currentDeviceAssistantId);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTriggerlessFollowup) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_didPreviouslyFallbackToServer) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSpeechRequest) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isUserOnActivePhoneCall) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceTriggerEventInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isRecognizeMyVoiceEnabled) = 2;
  v12 = v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceAudioSessionId;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSystemApertureEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isLiveActivitiesSupported) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isInAmbient) = 2;
  v13 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_positionInSession;
  v14 = type metadata accessor for RequestPositionInSession();
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_conjunctionInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceShowingLockScreen) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceLocked) = 2;
  return v0;
}

uint64_t RequestContextData.Builder.inputOrigin(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 328);

  v5(a1, a2);
}

uint64_t RequestContextData.Builder.responseMode(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(*v1 + 400))(v6);
}

uint64_t RequestContextData.Builder.isEyesFree(_:)()
{
  (*(*v0 + 424))();
}

uint64_t RequestContextData.Builder.isDirectAction(_:)()
{
  (*(*v0 + 448))();
}

uint64_t RequestContextData.Builder.isVoiceTriggerEnabled(_:)()
{
  (*(*v0 + 472))();
}

uint64_t RequestContextData.Builder.isTextToSpeechEnabled(_:)()
{
  (*(*v0 + 496))();
}

uint64_t RequestContextData.Builder.peerInfo(_:)(void *a1)
{
  v3 = *(*v1 + 520);
  v4 = a1;
  v3(a1);
}

uint64_t RequestContextData.Builder.endpointInfo(_:)(void *a1)
{
  v3 = *(*v1 + 544);
  v4 = a1;
  v3(a1);
}

uint64_t RequestContextData.Builder.instanceInfo(_:)(void *a1)
{
  v3 = *(*v1 + 568);
  v4 = a1;
  v3(a1);
}

uint64_t RequestContextData.Builder.restrictions(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  (*(*v1 + 640))(v6);
}

uint64_t RequestContextData.Builder.originatingHome(_:)(void *a1)
{
  v3 = *(*v1 + 664);
  v4 = a1;
  v3(a1);
}

uint64_t SelfReflectionAgent.currentMitigationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v8[0] = *(v1 + 208);
  v8[1] = v3;
  v9 = *(v1 + 240);
  v4 = v9;
  v10 = *(v1 + 256);
  v5 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return outlined init with copy of SelfReflectionResponse(v8, &v7);
}

uint64_t SelfReflectionAgent.currentMitigationResponse.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v6[0] = *(v1 + 208);
  v6[1] = v3;
  v6[2] = *(v1 + 240);
  v7 = *(v1 + 256);
  v4 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v4;
  *(v1 + 240) = *(a1 + 32);
  *(v1 + 256) = *(a1 + 48);
  return outlined destroy of SelfReflectionResponse(v6);
}

uint64_t RequestContextData.Builder.bargeInModes(_:)()
{
  v1 = *(*v0 + 592);

  v1(v2);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RequestType and conformance RequestType(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UserID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserID and conformance UserID, 255, MEMORY[0x1E69D08C8]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserID and conformance UserID, 255, MEMORY[0x1E69D08C8]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v23 = a12;
  v17 = *(a15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiUserContextUpdater();
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a11, a15);
  return specialized MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v20, v23, a13, v21, a15, a16, a17);
}

uint64_t specialized MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v28 = a15;
  v29 = a17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_0, a11, a15);
  *(a14 + 256) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes6UserIDV_0C10KitRuntime14ContextUpdaterCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a14 + 264) = 0;
  outlined init with take of ReferenceResolutionClientProtocol(a1, a14 + 16);
  outlined init with take of ReferenceResolutionClientProtocol(a2, a14 + 56);
  outlined init with take of ReferenceResolutionClientProtocol(a3, a14 + 96);
  *(a14 + 136) = a4;
  *(a14 + 144) = a5;
  *(a14 + 152) = a6;
  *(a14 + 160) = a7;
  *(a14 + 168) = a8;
  *(a14 + 176) = a9;
  *(a14 + 184) = a10;
  outlined init with take of ReferenceResolutionClientProtocol(&v27, a14 + 192);
  *(a14 + 232) = a12;
  *(a14 + 248) = a13;
  return a14;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Logger.conversationBridge);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1DC659000, v1, v2, "executionProcessor was already set on ExecutionBridgeProcessorDelegate ignoring this operation", v3, 2u);
      MEMORY[0x1E12A2F50](v3, -1, -1);
    }
  }

  else
  {
    swift_weakAssign();
  }
}

uint64_t ConversationRequestAwareBridgeBase.currentRequestProcessor.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ConversationRequestAwareBridgeBase.postMessage(_:to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v9;
    v16 = v6;
    v17 = a2;
    v18 = v15;
    v38 = v15;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), &v38);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v10;
    v19 = v10;
    _os_log_impl(&dword_1DC659000, v11, v12, "Bridge %s received message: %@", v13, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v20 = v18;
    a2 = v17;
    v6 = v16;
    v9 = v35;
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v21 = (*(*v3 + 264))(v10);
  if ((*(*v21 + 104))())
  {
    v22 = v10;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315394;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes07RequestB4BaseCmMd, &_s16SiriMessageTypes07RequestB4BaseCmMR);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v36 + 8))(v9, v6);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v38);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_1DC659000, v23, v24, "handleMessage got message type %s with message id: %s that is not register in the bridge", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v26, -1, -1);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }
  }

  else
  {
    (*(*v21 + 88))(a2, v10);
  }
}

void ConversationRequestProcessor.state.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  outlined consume of ConversationRequestProcessor.State(v8, v9, v10);
}

uint64_t SelfReflectionAgent.setRequestContextData(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001DCA87720, &v15);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_1DC659000, v6, v7, "SelfReflectionAgent.%s requestContextData: %@", v8, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v14 = *(*v2 + 280);
  v12 = v5;

  return v14(v5);
}

uint64_t ConversationRuntimeClient.sendRequestContextData(_:withBridgeDelegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  v11 = a1;
  swift_unknownObjectRetain();
  v12 = StaticString.description.getter();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:);
  *(v15 + 24) = v10;
  *(v15 + 32) = "bridge(didReceiveRequestContextData:from:)";
  *(v15 + 40) = 42;
  *(v15 + 48) = 2;
  v16 = *(*v7 + 208);

  v16(v12, v14, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v15);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)(v2, v3, v4, v5);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return (specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:))(a4);
}

uint64_t specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:), v3, 0);
}

uint64_t ConversationRequestProcessor.handleStartDirectActionRequestMessage(_:)(void *a1, unsigned int *a2, int a3, int a4)
{
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *a2, v11);
  v16 = a1;
  v17 = RequestMessageBase.requestId.getter();
  v19 = v18;
  v20 = v16;
  StartRequestMessageBase.inputOrigin.getter();

  v21 = type metadata accessor for ConversationRequestProcessorTurnState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v12 + 32))(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v15, v11);
  v25 = (v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v25 = v17;
  v25[1] = v19;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v7 + 32))(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v10, v6);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v20, v24, v28, v27, v29, 0);
}

uint64_t type metadata accessor for ConversationRequestProcessorTurnState()
{
  result = type metadata singleton initialization cache for ConversationRequestProcessorTurnState;
  if (!type metadata singleton initialization cache for ConversationRequestProcessorTurnState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(void *a1, uint64_t a2, int a3, char *a4, int a5, int a6)
{
  LODWORD(v127) = a6;
  LODWORD(v126) = a5;
  v121 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = &v118 - v14;
  v15 = type metadata accessor for RequestType();
  v135 = *(v15 - 8);
  v16 = v135[8];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v130 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v129 = &v118 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v128 = &v118 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v118 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v134 = &v118 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v118 - v28;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.conversationBridge);
  v31 = a1;

  v132 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v136 = v31;
  v123 = v25;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v144[0] = v131;
    *v35 = 138412802;
    *(v35 + 4) = v136;
    *v36 = v136;
    *(v35 + 12) = 2080;
    v37 = v136;
    v38 = RequestMessageBase.requestId.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v144);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v144);

    *(v35 + 24) = v43;
    _os_log_impl(&dword_1DC659000, v32, v33, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v35, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v36, -1, -1);
    v44 = v131;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  v45 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v45 + 376))();
  v46 = *(a4 + 8);
  v47 = *(a4 + 9);
  v48 = (*(*v45 + 384))(v46, v47);
  v49 = (*(*a4 + 400))(v48);
  v52 = v49;
  if (v51)
  {
    outlined consume of ConversationRequestProcessor.State(v49, v50, v51);
    v52 = MEMORY[0x1E69E7CC0];
  }

  started = StartRequestMessageBase.optionalRequestContextData.getter();
  v131 = v52;
  if (started)
  {
    v54 = started;
    v55 = *(a4 + 12);
    v56 = *(a4 + 13);

    v57 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)();
    v58 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
    if (v58)
    {
      LOBYTE(v58) = MUXContextMessage.isRMVEnabled.getter();
    }

    v59 = v136;
    v60 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t12DirectActiondU0C_Tt3g5Tm(v59, v55, v56, v57 & 1, v58 & 1, v126, v127);
  }

  else
  {
    v61 = *(*a4 + 408);

    v61(a2, v52, 1);
    v60 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v142, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v143)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v142, v144);
    v62 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v63 = v135;
    v64 = v135[2];
    v127 = v62;
    v126 = v135 + 2;
    v125 = v64;
    v64(v133, a2 + v62, v15);
    v65 = *MEMORY[0x1E69D0528];
    v124 = v63[13];
    v124(v134, v65, v15);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v122 = v60;
    if (v140 == v138 && v141 == v139)
    {
      v66 = 1;
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v75 = v135 + 1;
    v76 = v135[1];
    v76(v134, v15);
    v135 = v75;
    v76(v133, v15);

    if ((v66 & 1) == 0)
    {
      v77 = v123;
      v125(v123, a2 + v127, v15);
      v124(v128, *MEMORY[0x1E69D0558], v15);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v140 == v138 && v141 == v139)
      {
        v76(v128, v15);
        v76(v77, v15);
      }

      else
      {
        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v76(v128, v15);
        v76(v77, v15);

        if ((v78 & 1) == 0)
        {
          v134 = a2;
          v128 = RequestMessageBase.requestId.getter();
          v123 = v93;
          v94 = *(a4 + 11);
          v136 = *(a4 + 10);
          v133 = v94;
          v95 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v96 = type metadata accessor for UUID();
          v97 = *(v96 - 8);
          v98 = v119;
          (*(v97 + 16))(v119, &a4[v95], v96);
          (*(v97 + 56))(v98, 0, 1, v96);
          v99 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v100 = type metadata accessor for SessionConfiguration();
          v101 = *(v100 - 8);
          v102 = v120;
          (*(v101 + 16))(v120, &a4[v99], v100);
          (*(v101 + 56))(v102, 0, 1, v100);
          v103 = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v104 = type metadata accessor for StartExecutionTurn();
          v105 = objc_allocWithZone(v104);
          v106 = &v105[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          v107 = v123;
          *v106 = v128;
          v106[1] = v107;
          v108 = &v105[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          v109 = v133;
          *v108 = v136;
          v108[1] = v109;
          outlined init with copy of ReferenceResolutionClientProtocol?(v98, &v105[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v102, &v105[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v105[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v121 & 1;
          v105[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v103;
          v137.receiver = v105;
          v137.super_class = v104;

          v110 = objc_msgSendSuper2(&v137, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v111 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v112 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v111);
          (*(v112 + 8))(v110, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v111, v112);
          v113 = v110;
          v79 = Logger.logObject.getter();
          v114 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v79, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *v115 = 138412290;
            *(v115 + 4) = v113;
            *v116 = v113;
            v117 = v113;
            _os_log_impl(&dword_1DC659000, v79, v114, "Successfully sent: %@", v115, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v116, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v116, -1, -1);
            MEMORY[0x1E12A2F50](v115, -1, -1);

            v79 = v117;
          }

          else
          {
          }

          a2 = v134;
          goto LABEL_27;
        }
      }
    }

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1DC659000, v79, v80, "Not sending StartExecutionTurn for Understanding-on-server use case", v81, 2u);
      MEMORY[0x1E12A2F50](v81, -1, -1);
    }

LABEL_27:

    v82 = v129;
    v125(v129, a2 + v127, v15);
    v83 = v130;
    v124(v130, *MEMORY[0x1E69D0538], v15);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    v84 = dispatch thunk of static Equatable.== infix(_:_:)();
    v76(v83, v15);
    v76(v82, v15);
    if (v84)
    {
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v122;
      v89 = v131;
      if (v87)
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1DC659000, v85, v86, "Not updating server context for StartLocalRequest", v90, 2u);
        MEMORY[0x1E12A2F50](v90, -1, -1);
      }

      if (!v88)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v91 = v145;
      v92 = v146;
      __swift_project_boxed_opaque_existential_1(v144, v145);
      (*(v92 + 24))(v91, v92);
      v88 = v122;
      v89 = v131;
      if (!v122)
      {
LABEL_34:

        __swift_destroy_boxed_opaque_existential_1Tm(v144);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v88, a2, v89);

    goto LABEL_34;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v142, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v67 = v136;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v144[0] = v71;
    *v70 = 136315138;
    v72 = RequestMessageBase.requestId.getter();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v144);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_1DC659000, v68, v69, "Cannot handle request as contextUpdater is nil. requestId: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x1E12A2F50](v71, -1, -1);
    MEMORY[0x1E12A2F50](v70, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v46, v47, 0, 0);
}

Swift::Void __swiftcall SelfReflectionAgent.reset()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287465736572, 0xE700000000000000, v9);
    _os_log_impl(&dword_1DC659000, v3, v4, "SelfReflectionAgent.%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  (*(*v1 + 208))(0, 0);
  (*(*v1 + 232))(0);
  (*(*v1 + 256))(0);
  v7 = (*(*v1 + 280))(0);
  (*(*v1 + 320))(v9, v7);
  (*(*v1 + 304))(v9);
  WORD2(v9[0]) = 514;
  LODWORD(v9[0]) = 33686018;
  v9[1] = 0;
  v10 = 1;
  v11 = 0;
  v12 = 1;
  v13 = 2;
  v14 = 0;
  v15 = 0;
  (*(*v1 + 328))(v9);
  v8 = *(*v1 + 352);

  v8(0);
}

uint64_t SelfReflectionAgent.requestId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t SelfReflectionAgent.resultCandidateState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

void SelfReflectionAgent.executionInputInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

void SelfReflectionAgent.requestContextData.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t SelfReflectionAgent.previousTurnMitigationResponse.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  v6[0] = *(v1 + 152);
  v6[1] = v3;
  v6[2] = *(v1 + 184);
  v4 = *(a1 + 16);
  *(v1 + 152) = *a1;
  v7 = *(v1 + 200);
  *(v1 + 168) = v4;
  *(v1 + 184) = *(a1 + 32);
  *(v1 + 200) = *(a1 + 48);
  return outlined destroy of SelfReflectionResponse(v6);
}

uint64_t SelfReflectionAgent.isRequestCompleted.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 264) = a1;
  return result;
}

Swift::Void __swiftcall SelfReflectionAgent.setRequestId(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationBridge);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001DCA876C0, &v11);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v11);
    _os_log_impl(&dword_1DC659000, v6, v7, "SelfReflectionAgent.%s requestId: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v10 = *(*v2 + 208);

  v10(countAndFlagsBits, object);
}

uint64_t ConversationRequestProcessor.state.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of ConversationRequestProcessor.State(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void outlined copy of ConversationRequestProcessor.State(uint64_t a1, void *a2, char a3)
{
  if (a3 == 2)
  {

    v3 = a2;
  }

  else
  {
    if (a3 == 1)
    {
    }

    else if (a3)
    {
      return;
    }
  }
}

void outlined consume of ConversationRequestProcessor.State(uint64_t a1, void *a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 == 1)
    {
    }

    else if (a3)
    {
      return;
    }
  }
}

uint64_t ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)()
{
  v1 = type metadata accessor for ConversationSessionKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18[-1] - v9;
  (*(*v0 + 424))(v18, v8);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D07E8], v1);
  dispatch thunk of ConversationSessionState.value(forKey:userId:)();
  (*(v2 + 8))(v5, v1);
  if (v20)
  {
    v11 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    v12 = swift_dynamicCast();
    v13 = *(v11 - 8);
    v14 = 1;
    (*(v13 + 56))(v10, v12 ^ 1u, 1, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    if ((*(v13 + 48))(v10, 1, v11) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_sypSgMd, &_sypSgMR);
    v15 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  v14 = 0;
LABEL_6:
  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  return v14;
}

uint64_t ConversationRequestProcessor.sessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol(v1 + v3, a1);
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t12DirectActiondU0C_Tt3g5Tm(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v91 = a7;
  v92 = a5;
  v86 = a6;
  v90 = a4;
  v97 = a3;
  v88 = a2;
  v99 = type metadata accessor for RequestPositionInSession();
  v94 = *(v99 - 8);
  v8 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Restrictions();
  v89 = *(v93 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v100 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = &v69 - v17;
  v18 = type metadata accessor for ResponseMode();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v69 - v29;
  v31 = type metadata accessor for InputOrigin();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = StartRequestMessageBase.optionalRequestContextData.getter();
  if (started)
  {
    v37 = started;
    v84 = a1;
    StartRequestMessageBase.inputOrigin.getter();
    v38 = InputOrigin.aceInputOrigin.getter();
    v81 = v39;
    v82 = v38;
    (*(v32 + 8))(v35, v31);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    v40 = v85;
    ResponseMode.init(aceValue:)();
    v41 = v19[6];
    v42 = v41(v40, 1, v18);
    v83 = v19;
    v95 = v30;
    v96 = v26;
    if (v42 == 1)
    {
      v43 = v22;
      static ResponseMode.displayForward.getter();
      if (v41(v40, 1, v18) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      v51 = v19[4];
      v43 = v22;
      v51(v22, v40, v18);
    }

    v69 = v18;
    v52 = RequestContextData.isEyesFree.getter();
    v71 = RequestContextData.isVoiceTriggerEnabled.getter();
    v70 = RequestContextData.isTextToSpeechEnabled.getter();
    v72 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    v53 = v87;
    Restrictions.init(aceValue:)();
    v74 = RequestContextData.isTriggerlessFollowup.getter();
    v78 = RequestContextData.voiceTriggerEventInfo.getter();
    v54 = RequestContextData.voiceAudioSessionId.getter();
    v77 = RequestContextData.isSystemApertureEnabled.getter();
    v76 = RequestContextData.isLiveActivitiesSupported.getter();
    v75 = RequestContextData.isInAmbient.getter();
    v85 = RequestContextData.conjunctionInfo.getter();
    v80 = RequestContextData.isDeviceShowingLockScreen.getter();
    v79 = RequestContextData.isDeviceLocked.getter();
    v55 = v94;
    (*(v94 + 104))(v98, *MEMORY[0x1E69CE5A0], v99);
    v56 = type metadata accessor for RequestContextData(0);
    v57 = objc_allocWithZone(v56);
    v58 = &v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
    v59 = v81;
    *v58 = v82;
    v58[1] = v59;
    outlined init with copy of ReferenceResolutionClientProtocol?(v95, &v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v96, &v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v60 = v83;
    v61 = v83[2];
    v73 = v43;
    v61(&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v43, v18);
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v52 & 1;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v86;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v71 & 1;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v70 & 1;
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v72;
    outlined init with copy of ReferenceResolutionClientProtocol?(v100, &v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v62 = v89;
    v63 = v93;
    (*(v89 + 16))(&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v53, v93);
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
    v64 = &v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
    v65 = v97;
    *v64 = v88;
    v64[1] = v65;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v74 & 1;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v90 & 1;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = v91;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v78;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v92 & 1;
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v54;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v77 & 1;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v76 & 1;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v75 & 1;
    v66 = v98;
    v67 = v99;
    (*(v55 + 16))(&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v98, v99);
    *&v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v85;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v80 & 1;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v79 & 1;
    v101.receiver = v57;
    v101.super_class = v56;
    v50 = objc_msgSendSuper2(&v101, sel_init);
    (*(v55 + 8))(v66, v67);
    (*(v62 + 8))(v53, v63);
    outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    (v60[1])(v73, v69);
    outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    v44 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = v44;
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v46, v47, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    return 0;
  }

  return v50;
}

uint64_t type metadata accessor for StartExecutionTurn()
{
  result = type metadata singleton initialization cache for StartExecutionTurn;
  if (!type metadata singleton initialization cache for StartExecutionTurn)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 408);

  v9 = a1;
  v8(a2, a1, 2);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = v53;
    *v14 = 136315138;
    v15 = v11;
    v16 = [v15 description];
    v17 = a3;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = a1;
    v20 = v19;

    v21 = v18;
    a3 = v17;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v56);
    a1 = v54;

    *(v14 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v12, v13, "RequestContextData: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E12A2F50](v53, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  (*(**(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 408))(v11);
  v23 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
  v24 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v23);
  (*(v24 + 16))(v11, *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v23, v24);
  v25 = v11;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = a1;
    v30 = v25;
    _os_log_impl(&dword_1DC659000, v26, v27, "Successfully sent: %@", v28, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  v31 = *(a3 + 16);
  if (v31)
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v31;

      _os_log_impl(&dword_1DC659000, v32, v33, "Replaying %ld cached candidate messages that were received for this request prior to the start-turn signal", v34, 0xCu);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    else
    {
    }

    for (i = (a3 + 32); ; ++i)
    {
      v37 = *i;
      v38 = *i >> 61;
      if (v38 <= 2)
      {
        break;
      }

      if (v38 <= 4)
      {
        v39 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
        if (v38 == 3)
        {
          v36 = *(*v4 + 872);
        }

        else
        {
          v36 = *(*v4 + 848);
        }

LABEL_19:
        v40 = v39;
        v36();
LABEL_13:

        goto LABEL_14;
      }

      if (v38 == 5)
      {
        v41 = *(*v4 + 904);
        v40 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
        v41();
        goto LABEL_13;
      }

      v42 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
      type metadata accessor for ServerFallbackCapableRequestProcessor();
      v43 = swift_dynamicCastClass();
      if (!v43)
      {
        v55 = v42;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v56 = v49;
          *v48 = 136315138;
          swift_getMetatypeMetadata();
          v50 = _typeName(_:qualified:)();
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v56);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_1DC659000, v46, v47, "Cannot handle ENOS because processor is of type %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x1E12A2F50](v49, -1, -1);
          MEMORY[0x1E12A2F50](v48, -1, -1);
        }

        else
        {
        }

        return;
      }

      v44 = *(*v43 + 1584);
      v45 = v42;

      v44(v45);

LABEL_14:
      if (!--v31)
      {
        return;
      }
    }

    if (!v38)
    {
      goto LABEL_14;
    }

    v39 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
    if (v38 == 1)
    {
      v36 = *(*v4 + 856);
    }

    else
    {
      v36 = *(*v4 + 880);
    }

    goto LABEL_19;
  }
}

uint64_t ConversationBridge.handleRunSiriKitExecutorMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  v5 = a1;

  v6 = RunSiriKitExecutorMessage.command.getter();
  v7 = RunSiriKitExecutorMessage.commandExecutionInfo.getter();
  v8 = RunSiriKitExecutorMessage.invocationId.getter();
  v10 = v9;

  ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:)(v6, v7, v8, v10, partial apply for closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:), v4);
}

uint64_t sub_1DC67E5F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v51 = a5;
  v52 = a6;
  v49 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v50 = a2;
  v19 = [a2 originPeerInfo];
  v20 = v19;
  if (v19)
  {
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.conversationBridge);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v14;
    v26 = v20 != 0;
    v27 = swift_slowAlloc();
    v48 = v22;
    v28 = v20;
    v29 = v18;
    v30 = a4;
    v31 = a3;
    v32 = v27;
    *v27 = 67109120;
    *(v27 + 4) = v26;
    v14 = v25;
    _os_log_impl(&dword_1DC659000, v23, v24, "RSKE isRemote=%{BOOL}d", v27, 8u);
    v33 = v32;
    a3 = v31;
    a4 = v30;
    v18 = v29;
    v20 = v28;
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  if (v20)
  {
    goto LABEL_9;
  }

  v48 = 0;
  MEMORY[0x1EEE9AC00](v34);
  v35 = a4;
  v36 = a3;
  v37 = *(*v7 + 480);
  v38 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x1E69C7880);
  result = v37(v49, v50, v51, v52, partial apply for closure #1 in ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:), &v48 - 4, v38);
  a3 = v36;
  a4 = v35;
  v20 = v48;
  if ((result & 1) == 0)
  {
LABEL_9:
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "Handing RSKE outside of any request processor", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    v43 = (*(*v7 + 984))();
    (*(*v7 + 912))(v43);
    if (v20)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    v45 = (*(*v7 + 1184))(v49, v50, v51, v52, v44, v18, v14, a3, a4);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v46 = direct field offset for ConversationBridge.runSiriKitExecutorProcessor;
    swift_beginAccess();
    v47 = *(v7 + v46);
    *(v7 + v46) = v45;

    (*(*v45 + 512))(1, 0);
  }

  return result;
}

uint64_t ConversationRequestAwareBridgeBase.tryToDipatchCommandToProcessor<A>(_:executionContextInfo:reply:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v11 = (*(*v5 + 376))();
  if (!v11)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v70 = v25;
      *v24 = 136315138;
      v26 = _typeName(_:qualified:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v70);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1DC659000, v22, v23, "There is no request processor to serve command: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    return 0;
  }

  v12 = v11;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v13 = *(v11 + 80);
  v14 = *(v11 + 88);

  v15 = [a1 refId];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v14 == v19)
    {
LABEL_21:

      goto LABEL_22;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v30 = v12[8];
  v31 = v12[9];

  v32 = [a1 refId];
  if (!v32)
  {

    goto LABEL_27;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v30 == v34 && v31 == v36)
  {
    goto LABEL_21;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v38 & 1) == 0)
  {
LABEL_27:

    v47 = a1;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v70 = v51;
      *v50 = 136315906;
      v52 = _typeName(_:qualified:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v70);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v55 = [v47 refId];
      if (v55)
      {
        v56 = v55;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;
      }

      else
      {
        v59 = 0xE300000000000000;
        v57 = 7104878;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v70);

      *(v50 + 14) = v60;
      *(v50 + 22) = 2080;
      v61 = v12[10];
      v62 = v12[11];

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v70);

      *(v50 + 24) = v63;
      *(v50 + 32) = 2080;
      v64 = v12[8];
      v65 = v12[9];

      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v70);

      *(v50 + 34) = v66;
      _os_log_impl(&dword_1DC659000, v48, v49, "Received %s with refId: %s whereas current rootRequestId is: %s and current requestId is: %s .. ignoring this command", v50, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    else
    {
    }

    return 0;
  }

LABEL_22:
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v70 = v42;
    *v41 = 136315138;
    v43 = _typeName(_:qualified:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v70);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1DC659000, v39, v40, "Dispatching %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v41, -1, -1);
  }

  v46 = a5(v12);
  v46(a1, v67, v68, v69);

  return 1;
}

uint64_t (*closure #1 in ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return partial apply for closure #1 in closure #1 in ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:);
}

void ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v210 = a5;
  v211 = a6;
  v215 = a4;
  v212 = a3;
  v209 = a2;
  v227 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v220 = &v184 - v10;
  v217 = type metadata accessor for ConversationSessionKey();
  v208 = *(v217 - 8);
  v11 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v216 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserSessionState();
  v213 = *(v13 - 8);
  v214 = v13;
  v14 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v218 = &v184 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v226 = &v184 - v21;
  v22 = type metadata accessor for SelectedUserAttributes();
  v206 = *(v22 - 8);
  v23 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v201 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v203 = &v184 - v30;
  v31 = type metadata accessor for UserID();
  v221 = *(v31 - 8);
  v222 = v31;
  v32 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v202 = &v184 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v225 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v224 = &v184 - v38;
  v39 = type metadata accessor for RequestType();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v223 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v229 = &v184 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v228 = &v184 - v46;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = __swift_project_value_buffer(v47, static Logger.conversationBridge);
  v49 = a1;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  v52 = os_log_type_enabled(v50, v51);
  v207 = v49;
  v204 = v29;
  v205 = v22;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v200 = v48;
    v55 = v54;
    v238[0] = v54;
    *v53 = 136315394;
    v56 = [v49 debugDescription];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v40;
    v59 = v39;
    v61 = v60;

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v61, v238);

    *(v53 + 4) = v62;
    *(v53 + 12) = 2080;
    v63 = _typeName(_:qualified:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v238);

    *(v53 + 14) = v65;
    v39 = v59;
    v40 = v58;
    _os_log_impl(&dword_1DC659000, v50, v51, "Handling %s in %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v53, -1, -1);
  }

  v66 = v230;
  v67 = (*(v230->isa + 76))();
  if (v67)
  {
    v68 = v67;
    v69 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
    swift_beginAccess();
    v70 = 0;
    v71 = *(v68 + v69);
    if (v71 >> 62 == 1)
    {
      v70 = (v71 & 0x3FFFFFFFFFFFFFFFLL);
    }

    v72 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v199 = *(v40 + 16);
    v200 = v40 + 16;
    v199(v228, v68 + v72, v39);
    (*(v40 + 104))(v229, *MEMORY[0x1E69D0538], v39);
    _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v238[0] == v237[0] && v238[1] == v237[1])
    {
      v198 = 0;
    }

    else
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v76 = 0;
      }

      else
      {
        v76 = 2;
      }

      v198 = v76;
    }

    v79 = *(v40 + 8);
    v78 = v40 + 8;
    v77 = v79;
    v79(v229, v39);
    v79(v228, v39);

    v81 = (*(v66->isa + 186))(v80);
    v229 = v70;
    if (v81)
    {
      v82 = v81;
      v83 = v220;
LABEL_45:
      v169 = *(*v82 + 640);

      v171 = v169(v170);
      v172 = (*(v66->isa + 50))();
      if (v174 == 1)
      {

        v175 = *(v66->isa + 51);

        v176 = v171;
        v175(v68, v171, 2);
      }

      else
      {
        outlined consume of ConversationRequestProcessor.State(v172, v173, v174);
      }

      v177 = *(&v66->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
      v178 = type metadata accessor for TaskPriority();
      (*(*(v178 - 8) + 56))(v83, 1, 1, v178);
      v179 = one-time initialization token for shared;

      v180 = v171;

      if (v179 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v181 = static MessageBusActor.shared;
      v182 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
      v183 = swift_allocObject();
      v183[2] = v181;
      v183[3] = v182;
      v183[4] = v68;
      v183[5] = v66;
      v183[6] = v82;
      v183[7] = v180;
      v183[8] = v227;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v83, &async function pointer to partial apply for closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:), v183);
      (*(*v177 + 120))();

      return;
    }

    v192 = *(&v66->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
    outlined init with copy of ReferenceResolutionClientProtocol(v66 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient, v238);
    outlined init with copy of ReferenceResolutionClientProtocol?(v66 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, v237, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    isa = v66[13].isa;
    v190 = v66[12].isa;
    v195 = v68;
    v85 = (v68 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v86 = *(v68 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);
    v188 = *v85;
    v189 = isa;
    v87 = one-time initialization token for sharedInstance;

    v187 = v86;

    if (v87 != -1)
    {
      swift_once();
    }

    v191 = static ConversationBridgeInstrumentationUtil.sharedInstance;
    v196 = *(&v66->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
    if (v70)
    {
      v88 = *(v70 + 2);
      v185 = *(v70 + 3);
      v186 = v88;
    }

    else
    {
      v185 = 0;
      v186 = 0;
    }

    v193 = v77;
    v89 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
    v90 = v195;
    swift_beginAccess();
    v91 = *(v90 + v89);
    v199(v223, v90 + v72, v39);
    v184 = v91;
    v197 = v39;
    v194 = v78;
    if (v70)
    {
      v93 = v221;
      v92 = v222;
      v94 = v202;
      (*(v221 + 16))(v202, &v70[OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId], v222);
      v95 = v224;
      (*(v93 + 32))(v224, v94, v92);
      v228 = *(v93 + 56);
      (v228)(v95, 0, 1, v92);
      v96 = *(*v70 + 792);
      v97 = v91;

      v99 = v203;
      v96(v98);

      v101 = v205;
      v100 = v206;
      v202 = *(v206 + 48);
      if ((v202)(v99, 1, v205))
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v203) = 0;
      }

      else
      {
        v106 = v201;
        (*(v100 + 16))(v201, v99, v101);
        outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v203) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
        (*(v100 + 8))(v106, v101);
      }

      v107 = v101;
      v108 = *(*v70 + 792);

      v110 = v204;
      v108(v109);

      if ((v202)(v110, 1, v107))
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v204) = 0;
      }

      else
      {
        v111 = v206;
        v112 = v201;
        (*(v206 + 16))(v201, v110, v107);
        outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v204) = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
        (*(v111 + 8))(v112, v107);
      }
    }

    else
    {
      v103 = v221;
      v102 = v222;
      v104 = v224;
      (*(v221 + 16))(v224, v66 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v222);
      v228 = *(v103 + 56);
      (v228)(v104, 0, 1, v102);
      v105 = v91;
      LODWORD(v204) = 0;
      LODWORD(v203) = 0;
    }

    v113 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
    v114 = type metadata accessor for UUID();
    v115 = *(v114 - 8);
    v116 = v66 + v113;
    v117 = v226;
    (*(v115 + 16))(v226, v116, v114);
    (*(v115 + 56))(v117, 0, 1, v114);
    v118 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
    v119 = type metadata accessor for SessionConfiguration();
    v120 = *(v119 - 8);
    v121 = v66 + v118;
    v122 = v218;
    (*(v120 + 16))(v218, v121, v119);
    (*(v120 + 56))(v122, 0, 1, v119);
    v123 = outlined init with copy of ReferenceResolutionClientProtocol(&v66[3], v236);
    LODWORD(v205) = *(&v66->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled);
    v124 = (*(v66->isa + 71))(v123);
    v206 = *(&v66->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage);
    v125 = v66->isa;
    v201 = *(v66->isa + 53);
    v202 = v125 + 424;
    (v201)(v232, v124);
    __swift_project_boxed_opaque_existential_1(v232, v233);
    v126 = v208;
    v127 = v216;
    v128 = v217;
    v129 = *(v208 + 104);
    v129(v216, *MEMORY[0x1E69D07D8], v217);
    dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
    v130 = *(v126 + 8);
    v130(v127, v128);
    v131 = v228;
    if (v235)
    {
      v132 = v225;
      v133 = v222;
      v134 = swift_dynamicCast();
      v131(v132, v134 ^ 1u, 1, v133);
      v135 = __swift_destroy_boxed_opaque_existential_1Tm(v232);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v232);
      outlined destroy of ReferenceResolutionClientProtocol?(v234, &_sypSgMd, &_sypSgMR);
      v135 = (v131)(v225, 1, 1, v222);
    }

    (v201)(v232, v135);
    __swift_project_boxed_opaque_existential_1(v232, v233);
    v137 = v216;
    v136 = v217;
    v129(v216, *MEMORY[0x1E69D0808], v217);
    dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
    v130(v137, v136);
    if (v235)
    {
      if (swift_dynamicCast())
      {
        LODWORD(v217) = v231;
        __swift_destroy_boxed_opaque_existential_1Tm(v232);
LABEL_44:
        v138 = type metadata accessor for RunSiriKitExecutorProcessor();
        v139 = *(v138 + 48);
        v140 = *(v138 + 52);
        v82 = swift_allocObject();
        v216 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
        (v228)(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId, 1, 1, v222);
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall) = 0;
        v141 = (v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
        *v141 = 0;
        v141[1] = 0;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished) = 0;
        v142 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo) = 0;
        v143 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
        type metadata accessor for ConcurrentTaskPool();
        v144 = swift_allocObject();
        *(v144 + 16) = MEMORY[0x1E69E7CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
        v145 = swift_allocObject();
        *(v145 + 16) = 0;
        *(v82 + v143) = v144;
        *(v144 + 24) = v145;
        v146 = v207;
        v148 = v209;
        v147 = v210;
        *(v82 + 16) = v207;
        *(v82 + 24) = v148;
        v149 = v211;
        *(v82 + 32) = v147;
        *(v82 + 40) = v149;
        *(v82 + 48) = v192;
        outlined init with copy of ReferenceResolutionClientProtocol(v238, v82 + 56);
        outlined init with copy of ReferenceResolutionClientProtocol?(v237, v82 + 96, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) = v198;
        v150 = v189;
        *(v82 + 152) = v190;
        *(v82 + 160) = v150;
        v151 = v187;
        *(v82 + 136) = v188;
        *(v82 + 144) = v151;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter) = 0;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil) = v191;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper) = v196;
        swift_beginAccess();
        v152 = v185;
        *v141 = v186;
        v141[1] = v152;
        swift_beginAccess();
        v153 = v184;
        *(v82 + v142) = v184;
        v199((v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType), v223, v197);
        v154 = v216;
        swift_beginAccess();
        v228 = v153;
        v155 = v148;
        v156 = v146;
        outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(v147, v149);

        v157 = v196;
        swift_unknownObjectRetain();
        outlined assign with copy of UserID?(v224, &v154[v82]);
        swift_endAccess();
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold) = v203 & 1;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold) = v204 & 1;
        outlined init with copy of ReferenceResolutionClientProtocol?(v226, v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v158 = v218;
        outlined init with copy of ReferenceResolutionClientProtocol?(v218, v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v159 = (v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
        v160 = v215;
        *v159 = v212;
        v159[1] = v160;
        outlined init with copy of ReferenceResolutionClientProtocol(v236, v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher);
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled) = v205;
        v161 = v206;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage) = v206;
        outlined init with copy of ReferenceResolutionClientProtocol?(v225, v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v162 = v213;
        v163 = v214;
        v164 = v219;
        (*(v213 + 16))(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState, v219, v214);
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession) = v217;
        type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
        v165 = swift_allocObject();
        swift_weakInit();
        *(v165 + 24) = v157;
        *(v82 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate) = v165;
        v166 = v161;
        swift_unknownObjectRetain();

        RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)();

        (*(v162 + 8))(v164, v163);
        __swift_destroy_boxed_opaque_existential_1Tm(v236);
        outlined destroy of ReferenceResolutionClientProtocol?(v158, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v226, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v224, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v193(v223, v197);
        outlined destroy of ReferenceResolutionClientProtocol?(v237, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v238);
        outlined destroy of ReferenceResolutionClientProtocol?(v225, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v66 = v230;
        v167 = *(v230->isa + 187);
        v168 = swift_retain_n();
        v167(v168);
        v83 = v220;
        v68 = v195;
        goto LABEL_45;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v232);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v232);
      outlined destroy of ReferenceResolutionClientProtocol?(v234, &_sypSgMd, &_sypSgMR);
    }

    LODWORD(v217) = 0;
    goto LABEL_44;
  }

  v230 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v230, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_1DC659000, v230, v73, "Received RunSiriKitExecutor while not in a turn. Ignoring.", v74, 2u);
    MEMORY[0x1E12A2F50](v74, -1, -1);
  }

  v75 = v230;
}

uint64_t ConversationRequestProcessor.activeTurn.getter()
{
  v1 = (*(*v0 + 400))();
  if ((v3 - 1) > 1u)
  {
    v6 = 0;
  }

  else
  {
    v4 = v2;
    v5 = v3;

    v3 = v5;
    v2 = v4;
    v6 = v1;
  }

  outlined consume of ConversationRequestProcessor.State(v1, v2, v3);
  return v6;
}

uint64_t ServerFallbackCapableRequestProcessor.runSiriKitExecutorProcessor.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ConversationRequestProcessor.userSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RunSiriKitExecutorProcessor()
{
  result = type metadata singleton initialization cache for RunSiriKitExecutorProcessor;
  if (!type metadata singleton initialization cache for RunSiriKitExecutorProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC680C50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void ConversationRequestProcessor.sendResultCandidateSelected(selectedResultCandidateId:isServerFallback:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a5;
  HIDWORD(v26) = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E69C79A0]) init];
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  v19 = MEMORY[0x1E12A1410](v16, v18);

  [v15 setAceId_];

  v20 = MEMORY[0x1E12A1410](v6[10], v6[11]);
  [v15 setRefId_];

  v21 = MEMORY[0x1E12A1410](a1, a2);
  [v15 setSelectedResultCandidateId_];

  [v15 setServerFallback_];
  (*(*v6 + 480))(1);
  v22 = *(v6 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  v23 = swift_allocObject();
  v24 = v27;
  *(v23 + 16) = a4;
  *(v23 + 24) = v24;
  aBlock[4] = partial apply for closure #1 in ConversationRequestProcessor.sendResultCandidateSelected(selectedResultCandidateId:isServerFallback:completion:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_29;
  v25 = _Block_copy(aBlock);
  sub_1DC680C50(a4);

  [v22 handleCommand:v15 completion:v25];
  _Block_release(v25);
}

uint64_t outlined assign with copy of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Logger.conversationBridge);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1DC659000, v1, v2, "rskeProcessor was already set on RunSiriKitExecutorProcessorExecutionDelegate ignoring this operation", v3, 2u);
      MEMORY[0x1E12A2F50](v3, -1, -1);
    }
  }

  else
  {
    swift_weakAssign();
  }
}

uint64_t ServerFallbackCapableRequestProcessor.runSiriKitExecutorProcessor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RunSiriKitExecutorProcessor.makeRequestContextData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v65 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v65 - v8;
  v10 = v0[2];
  v11 = [v10 inputOrigin];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.conversationBridge);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "Warning: RSKE command has no inputOrigin, defaulting to that of the last request", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v20 = *MEMORY[0x1E69C7F50];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v21;
  }

  v22 = [v10 mode];
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ResponseMode.init(aceValue:)();
  v24 = type metadata accessor for ResponseMode();
  if ((*(*(v24 - 8) + 48))(v9, 1, v24) == 1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.conversationBridge);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DC659000, v26, v27, "Note: RSKE command has no mode, using nil (SKE will get it from turn context)", v28, 2u);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }
  }

  v29 = type metadata accessor for RequestContextData.Builder(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = *RequestContextData.Builder.init()();
  v33 = (*(v32 + 1040))(v13, v15);

  v34 = (*(*v33 + 1064))(v9);

  v35 = (*(*v34 + 1072))([v10 eyesFree]);

  v36 = (*(*v35 + 1080))([v10 directAction]);

  v37 = (*(*v36 + 1088))([v10 voiceTriggerEnabled]);

  v38 = (*(*v37 + 1096))([v10 textToSpeechEnabled]);

  v39 = v1[3];
  v40 = [v39 originPeerInfo];
  v41 = (*(*v38 + 1104))();

  v42 = [v39 endpointInfo];
  v43 = (*(*v41 + 1112))();

  v44 = [v39 instanceInfo];
  v45 = (*(*v43 + 1120))();

  v46 = (*(*v45 + 1128))(MEMORY[0x1E69E7CC0]);

  v47 = [v39 deviceRestrictions];
  if (v47)
  {
    v48 = v47;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Restrictions.init(aceValue:)();
  v49 = type metadata accessor for Restrictions();
  (*(*(v49 - 8) + 56))(v5, 0, 1, v49);
  v50 = (*(*v46 + 1144))(v5);

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v51 = [v39 currentHomeInfo];
  v52 = (*(*v50 + 1152))();

  v53 = v1[20];
  if (v53)
  {
    v54 = v1[19];
    v55 = v53;
  }

  else
  {
    v56 = [v10 remoteExecution];
    if (v56 && (v57 = v56, v58 = [v56 executionDeviceAssistantId], v57, v58))
    {
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v59;
    }

    else
    {
      v54 = 0;
      v55 = 0xE000000000000000;
    }
  }

  v60 = *(*v52 + 1160);

  v61 = v60(v54, v55);

  v63 = (*(*v61 + 1280))(v62);

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  return v63;
}

uint64_t outlined init with copy of RemoteConversationTurnData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v9, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a4, a5, a6, a7);
}

{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a4, a5, a6, a7);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_allocObject();
  v0[15] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized withCancellableContinuation<A>(body:)(specialized withCancellableContinuation<A>(body:), partial apply for specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);

    v5 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[14];

  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4(0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_allocObject();
  v0[15] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized withCancellableContinuation<A>(body:)(partial apply for specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v5);
}

{
  v1 = v0[14];

  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];

  return v6(v3, v2, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);

  *(v0 + 40) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 136);
  if (v7)
  {
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);

    v13 = *(v12 + 32);
    v13(v10, v9, v11);
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v8 = swift_allocError();
    v13(v14, v10, v11);
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v17 = *(v0 + 96);
  v16 = *(v0 + 104);

  v18 = *(v0 + 8);

  return v18(v8, v15);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);

  *(v0 + 40) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 136);
  if (v7)
  {
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);

    v13 = *(v12 + 32);
    v13(v10, v9, v11);
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v8 = swift_allocError();
    v13(v14, v10, v11);
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v17 = *(v0 + 96);
  v16 = *(v0 + 104);

  v18 = *(v0 + 8);

  return v18(v8, 0, v15);
}

uint64_t specialized withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19ManagedContinuationCyytGMd, &_s14SiriKitRuntime19ManagedContinuationCyytGMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v3[2] = v10;
  v11 = *(*v10 + 88);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  v13 = v10 + *(*v10 + 96);
  *v13 = 0;
  *(v13 + 8) = -1;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v10 + *(*v10 + 104)) = v14;
  v15 = v14;
  v16 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v15 setName_];

  v17 = swift_task_alloc();
  v3[3] = v17;
  v17[2] = v10;
  v17[3] = a2;
  v17[4] = a3;
  v18 = *(MEMORY[0x1E69E88F8] + 4);
  v19 = swift_task_alloc();
  v3[4] = v19;
  *v19 = v3;
  v19[1] = withCancellableContinuation<A>(body:);
  v20 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE20](a1, &async function pointer to partial apply for specialized closure #2 in withCancellableContinuation<A>(body:), v17, partial apply for specialized closure #1 in withCancellableContinuation<A>(body:), v10, v20);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v15 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 16), *(v6 + 24), &v14);
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task %lu begin", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = (v0[7] + *v0[7]);
  v9 = *(v0[7] + 4);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  v11 = v0[8];

  return v13();
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v16 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  v4 = v0[4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  specialized ManagedContinuation.updateState(continuation:result:)(v2, 0, 0);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 16), *(v9 + 24), &v15);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    _os_log_impl(&dword_1DC659000, v6, v7, "%s: task %lu succeeded", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

{
  v15 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 16), *(v6 + 24), &v14);
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task %lu begin", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = (v0[9] + *v0[9]);
  v9 = *(v0[9] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  v11 = v0[10];

  return v13(v0 + 2);
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v18 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  v6 = v0[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  swift_unknownObjectRetain();
  specialized ManagedContinuation.updateState(continuation:result:)(v2, v5, v6, 0);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  swift_unknownObjectRelease_n();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[6];
    v10 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v11 + 16), *(v11 + 24), &v17);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v10;
    _os_log_impl(&dword_1DC659000, v8, v9, "%s: task %lu succeeded", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

{
  v38 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[4];

  v4 = v1;
  v5 = static os_log_type_t.debug.getter();
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v0[12];
    v8 = v0[4];
    v34 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315650;
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v35);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);

    v36 = v18;
    v37 = v17;
    MEMORY[0x1E12A1580](0x206B736174203ALL, 0xE700000000000000);
    v0[2] = v34;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v19);

    MEMORY[0x1E12A1580](0x6520776572687420, 0xEE00203A726F7272);
    v0[3] = v7;
    v20 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v35);

    *(v9 + 24) = v22;
    _os_log_impl(&dword_1DC659000, v6, v5, "%s:%s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);

    v23 = v7;
  }

  else
  {
    v24 = v0[12];
    v25 = v0[4];

    v23 = v24;
  }

  v26 = v0[12];
  v27 = v0[9];
  v28 = v0[6];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  v30 = v26;
  specialized ManagedContinuation.updateState(continuation:result:)(v27, v26, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);

  v31 = v0[9];

  v32 = v0[1];

  return v32();
}

{
  v38 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[6];

  v4 = v1;
  v5 = static os_log_type_t.debug.getter();
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v0[14];
    v8 = v0[6];
    v34 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315650;
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v35);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);

    v36 = v18;
    v37 = v17;
    MEMORY[0x1E12A1580](0x206B736174203ALL, 0xE700000000000000);
    v0[4] = v34;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v19);

    MEMORY[0x1E12A1580](0x6520776572687420, 0xEE00203A726F7272);
    v0[5] = v7;
    v20 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v35);

    *(v9 + 24) = v22;
    _os_log_impl(&dword_1DC659000, v6, v5, "%s:%s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);

    v23 = v7;
  }

  else
  {
    v24 = v0[14];
    v25 = v0[6];

    v23 = v24;
  }

  v26 = v0[14];
  v27 = v0[11];
  v28 = v0[8];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  v30 = v26;
  specialized ManagedContinuation.updateState(continuation:result:)(v27, v26, 0, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);

  v31 = v0[11];

  v32 = v0[1];

  return v32();
}

uint64_t partial apply for specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v7, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v7, v6);
}

uint64_t specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    v8 = *(v6 + 104);
    if ((v8 & 0xC000000000000001) != 0)
    {

      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v8 + 16);
    }

    v11 = v0[12];
    *(v7 + 4) = v9;

    _os_log_impl(&dword_1DC659000, v3, v4, "[ConversationService] Active Conversation Count: %ld", v7, 0xCu);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
    v10 = v0[12];
  }

  v12 = v0[12];
  swift_beginAccess();
  v13 = *(v12 + 112);
  v14 = *(v12 + 120);
  if (v14 >> 6 == 1)
  {
    v15 = *(v12 + 120);
  }

  else
  {
    v15 = 0;
  }

  if (v14 >> 6)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v12 + 112);
  }

  v17 = v0[11];
  *(v12 + 112) = v17;
  *(v12 + 120) = v16 & 1 | 0x40;
  v18 = v17;
  outlined consume of ConversationService.State(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
  v0[14] = static MessageBusActor.shared;
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v19, type metadata accessor for MessageBusActor);
  v20 = *(MEMORY[0x1E69E87D8] + 4);

  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  v21[1] = specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v22 = v0[12];

  return MEMORY[0x1EEE6DBF8]();
}

{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:), v3, 0);
}

{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1, a2, v2);
}

unint64_t type metadata accessor for SAIntentGroupRunSiriKitExecutor()
{
  result = lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor;
  if (!lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor);
  }

  return result;
}

void ConcurrentTaskPool.add(task:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v16, v11, v12);
    v22 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v24 = [v22 initWithNSUUID_];

    v25 = [objc_allocWithZone(MEMORY[0x1E69CF320]) init];
    v26 = v25;
    if (v25)
    {
      [v25 setRequestId_];
      v27 = v26;
      if (a4)
      {
        v28 = MEMORY[0x1E12A1410](a3, a4);
      }

      else
      {
        v28 = 0;
      }

      [v26 setResultCandidateId_];
    }

    v21 = [objc_allocWithZone(MEMORY[0x1E69CF308]) init];
    [v21 setEventMetadata_];
    if ((a5 & 1) == 0 || !v21)
    {
      (*(v13 + 8))(v16, v12);

      goto LABEL_25;
    }

    v29 = objc_allocWithZone(MEMORY[0x1E69CF3D0]);
    v30 = v21;
    v31 = [v29 init];
    v52 = v24;
    if (v31)
    {
      v32 = objc_allocWithZone(MEMORY[0x1E69CF358]);
      v33 = v31;
      v34 = [v32 init];
      [v33 setMemoryUsageMetadata_];
    }

    memset(&v53, 0, sizeof(v53));
    if (getrusage(0, &v53))
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.conversationBridge);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_22;
      }

      v38 = v30;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "Not logging maxRSS since getrusage() did not succeed", v39, 2u);
      v40 = v39;
      v30 = v38;
      goto LABEL_21;
    }

    ru_maxrss = v53.ru_maxrss;
    if (v53.ru_maxrss < 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.conversationBridge);
      v36 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v36, v49))
      {
        goto LABEL_22;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v36, v49, "Not logging maxRSS since it is negative", v50, 2u);
      v40 = v50;
LABEL_21:
      MEMORY[0x1E12A2F50](v40, -1, -1);
LABEL_22:

LABEL_23:
      [v30 setResourceUtilizationMetadata_];

      (*(v13 + 8))(v16, v12);
      goto LABEL_25;
    }

    if (!v31)
    {
      goto LABEL_23;
    }

    v44 = [v31 memoryUsageMetadata];
    if (!v44)
    {
      goto LABEL_23;
    }

    v36 = v44;
    v45 = ceil(log10(ru_maxrss));
    if (v45 <= 2.0)
    {
LABEL_34:
      [v36 setMaxRSS:ru_maxrss];
      goto LABEL_22;
    }

    v46 = __exp10(v45 + -2.0);
    v47 = v46 * rint(ru_maxrss / v46);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v47 > -1.0)
    {
      if (v47 < 1.84467441e19)
      {
        ru_maxrss = v47;
        goto LABEL_34;
      }

LABEL_41:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  outlined destroy of UUID?(v11);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.conversationBridge);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "The requestId is not a valid UUID. Will return a nil wrapper", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v21 = 0;
LABEL_25:
  v41 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t RunSiriKitExecutorProcessor.resultCandidateId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t ConversationService.bridge(didReceiveRequestContextData:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveRequestContextData:from:), v6, 0);
}

unint64_t ConversationBridgeInstrumentationUtil.mapPreExecutionRuleTypeToLogRuleType(_:_:)(unsigned __int8 a1, char a2)
{
  if (a1 == 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4;
    v3 = 9;
    v4 = 7;
    if (a2)
    {
      v4 = 10;
    }

    if (a1 != 6)
    {
      v3 = v4;
    }

    v5 = 6;
    if (a1 != 4)
    {
      v5 = 8;
    }

    if (a1 <= 5u)
    {
      v3 = v5;
    }

    v6 = 2;
    if (a1 != 2)
    {
      v6 = 3;
    }

    if (a1)
    {
      v2 = 1;
    }

    if (a1 > 1u)
    {
      v2 = v6;
    }

    if (a1 > 3u)
    {
      v2 = v3;
    }
  }

  return v2 | ((a1 == 8) << 32);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 120))(v5, v3, v1, v2, ObjectType, v7);
  v9 = *(v0 + 8);

  return v9();
}

void static ServiceBridgeDelegate.fetchContextsDefault(for:includesNearByDevices:requestId:serviceHelper:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v31 = a7;
    v30 = a2;
    v16 = swift_slowAlloc();
    v29 = a3;
    v17 = a5;
    v18 = a6;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v16 = 136315138;
    v20 = Set.description.getter();
    v22 = a4;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

    *(v16 + 4) = v23;
    a4 = v22;
    _os_log_impl(&dword_1DC659000, v14, v15, "Trying to fetch context for keys: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v24 = v19;
    a6 = v18;
    a5 = v17;
    a3 = v29;
    MEMORY[0x1E12A2F50](v24, -1, -1);
    v25 = v16;
    a2 = v30;
    a7 = v31;
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  if ([a5 respondsToSelector_])
  {
    v26.super.isa = Set._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      v27 = MEMORY[0x1E12A1410](a3, a4);
    }

    else
    {
      v27 = 0;
    }

    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    aBlock[3] = &block_descriptor_9_0;
    v28 = _Block_copy(aBlock);

    [a5 fetchContextsForKeys:v26.super.isa forRequestID:v27 includesNearbyDevices:a2 & 1 completion:v28];
    _Block_release(v28);
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 80);
    v12 = *(Strong + 88);
    v13 = v4[3];

    static ServiceBridgeDelegate.fetchContextsDefault(for:includesNearByDevices:requestId:serviceHelper:completion:)(a1, a2 & 1, v11, v12, v13, a3, a4);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      v20 = Set.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v16, v17, "ConversationRequestProcessor already released, ignoring fetchContexts of %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    return a3(0);
  }
}

uint64_t closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[26];
  if (v3 == 1)
  {
    v5 = v2[33];
    v4 = v2[34];
    v7 = v2[31];
    v6 = v2[32];

    v8 = v2[1];

    return v8();
  }

  if (v3)
  {
    v10 = v2[30];
    swift_beginAccess();
    v11 = specialized Set._Variant.remove(_:)(v3);
    swift_endAccess();
    if (v11)
    {
    }

    else
    {
      v18 = *(v2[30] + 280);
      if (v18)
      {
        if (*(v3 + 112) == *(v18 + 112) && *(v3 + 120) == *(v18 + 120))
        {
          outlined consume of RemoteConversationClient??(v3);
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined consume of RemoteConversationClient??(v3);
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v21 = v2[30];
        v22 = *(v21 + 280);
        *(v21 + 280) = 0;

        goto LABEL_9;
      }
    }

    outlined consume of RemoteConversationClient??(v3);
  }

LABEL_9:
  v12 = static MessageBusActor.shared;
  v2[35] = static MessageBusActor.shared;
  v13 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor);
  v14 = *(MEMORY[0x1E69E8580] + 4);

  v15 = swift_task_alloc();
  v2[36] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMd, &_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMR);
  *v15 = v2;
  v15[1] = closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v17 = v2[29];

  return MEMORY[0x1EEE6D8A0](v2 + 26, v12, v13, v16);
}

uint64_t RequestContextData.isDeviceInStarkMode.getter(void (*a1)(uint64_t))
{
  v3 = type metadata accessor for DeviceRestrictions();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - v10;
  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))(v9);
  a1(v12);
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610]);
  v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14 = *(v4 + 8);
  v14(v8, v3);
  v14(v11, v3);
  return v13 & 1;
}

uint64_t lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v3[34] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v5, 0);
}

uint64_t objectdestroy_61Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t objectdestroy_61Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(uint64_t a1)
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

  return closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = type metadata accessor for RequestType();
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v10 = *(v9 + 64) + 15;
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static MessageBusActor.shared;
  v7[38] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:), v11, 0);
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  *(v0 + 312) = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v7 = *(v4 + 16);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v73 = v6;
  v72 = v7;
  v7(v2, v5 + v6, v3);
  *(v0 + 384) = *MEMORY[0x1E69D0528];
  v8 = *(v4 + 104);
  *(v0 + 336) = v8;
  *(v0 + 344) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v71 = v8;
  (v8)(v1);
  *(v0 + 352) = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 64) == *(v0 + 80) && *(v0 + 72) == *(v0 + 88))
  {
    v75 = 1;
  }

  else
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 88);
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11 = *(v0 + 288);
  v12 = *(v0 + 296);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v15 = *(v14 + 8);
  *(v0 + 360) = v15;
  *(v0 + 368) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v13);
  v15(v12, v13);

  if (v75)
  {
LABEL_10:
    if (one-time initialization token for rraasWaitTimeMillis != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 200);
    v26 = type metadata accessor for DispatchTimeInterval();
    v27 = __swift_project_value_buffer(v26, static ServerFallbackCapableRequestProcessor.rraasWaitTimeMillis);
    v74 = (*v25 + 1392);
    v76 = (*v74 + **v74);
    v28 = (*v74)[1];
    v29 = swift_task_alloc();
    *(v0 + 376) = v29;
    *v29 = v0;
    v29[1] = closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:);
    v30 = *(v0 + 200);

    return v76(v27);
  }

  v16 = *(v0 + 272);
  v17 = *(v0 + 224);
  v72(*(v0 + 280), v5 + v73, v17);
  v18 = *MEMORY[0x1E69D0558];
  v71(v16, v18, v17);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v0 + 272);
  v20 = *(v0 + 280);
  v21 = *(v0 + 224);
  if (*(v0 + 96) == *(v0 + 112) && *(v0 + 104) == *(v0 + 120))
  {
    v15(*(v0 + 272), *(v0 + 224));
    v15(v20, v21);

    goto LABEL_10;
  }

  v22 = *(v0 + 104);
  v23 = *(v0 + 120);
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v15(v19, v21);
  v15(v20, v21);

  if (v24)
  {
    goto LABEL_10;
  }

  v32 = *(v0 + 304);

  v34 = *(v0 + 344);
  v33 = *(v0 + 352);
  v35 = *(v0 + 384);
  v36 = *(v0 + 328);
  v37 = *(v0 + 336);
  v38 = *(v0 + 256);
  v39 = *(v0 + 224);
  (*(v0 + 320))(*(v0 + 264), *(v0 + 192) + *(v0 + 312), v39);
  v37(v38, v35, v39);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v41 = *(v0 + 360);
  v40 = *(v0 + 368);
  v43 = *(v0 + 256);
  v42 = *(v0 + 264);
  v44 = *(v0 + 224);
  if (*(v0 + 128) == *(v0 + 144) && *(v0 + 136) == *(v0 + 152))
  {
    v41(*(v0 + 256), *(v0 + 224));
    v41(v42, v44);
    v45 = 1;
LABEL_25:

    v49 = v45;
    goto LABEL_26;
  }

  v46 = *(v0 + 136);
  v47 = *(v0 + 152);
  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v41(v43, v44);
  v41(v42, v44);

  if ((v48 & 1) == 0)
  {
    v51 = *(v0 + 344);
    v50 = *(v0 + 352);
    v52 = *(v0 + 328);
    v53 = *(v0 + 336);
    v54 = *(v0 + 240);
    v55 = *(v0 + 224);
    (*(v0 + 320))(*(v0 + 248), *(v0 + 192) + *(v0 + 312), v55);
    v53(v54, v18, v55);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 160) == *(v0 + 176) && *(v0 + 168) == *(v0 + 184))
    {
      v45 = 1;
    }

    else
    {
      v56 = *(v0 + 168);
      v57 = *(v0 + 184);
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v59 = *(v0 + 360);
    v58 = *(v0 + 368);
    v60 = *(v0 + 248);
    v61 = *(v0 + 224);
    v59(*(v0 + 240), v61);
    v59(v60, v61);
    goto LABEL_25;
  }

  v49 = 1;
LABEL_26:
  v63 = *(v0 + 288);
  v62 = *(v0 + 296);
  v65 = *(v0 + 272);
  v64 = *(v0 + 280);
  v67 = *(v0 + 256);
  v66 = *(v0 + 264);
  v68 = *(v0 + 240);
  v69 = *(v0 + 248);
  (*(**(v0 + 208) + 512))(v49 & 1, *(v0 + 216));

  v70 = *(v0 + 8);

  return v70();
}

{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:), v2, 0);
}

{
  v1 = *(v0 + 304);

  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 384);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = *(v0 + 256);
  v8 = *(v0 + 224);
  (*(v0 + 320))(*(v0 + 264), *(v0 + 192) + *(v0 + 312), v8);
  v6(v7, v4, v8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v0 + 360);
  v9 = *(v0 + 368);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  v13 = *(v0 + 224);
  if (*(v0 + 128) == *(v0 + 144) && *(v0 + 136) == *(v0 + 152))
  {
    v10(*(v0 + 256), *(v0 + 224));
    v10(v11, v13);
    v14 = 1;
  }

  else
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 152);
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10(v12, v13);
    v10(v11, v13);

    if (v17)
    {
      v18 = 1;
      goto LABEL_12;
    }

    v20 = *(v0 + 344);
    v19 = *(v0 + 352);
    v21 = *(v0 + 328);
    v22 = *(v0 + 336);
    v23 = *(v0 + 240);
    v24 = *(v0 + 224);
    (*(v0 + 320))(*(v0 + 248), *(v0 + 192) + *(v0 + 312), v24);
    v22(v23, *MEMORY[0x1E69D0558], v24);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 160) == *(v0 + 176) && *(v0 + 168) == *(v0 + 184))
    {
      v14 = 1;
    }

    else
    {
      v25 = *(v0 + 168);
      v26 = *(v0 + 184);
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v29 = *(v0 + 248);
    v30 = *(v0 + 224);
    v28(*(v0 + 240), v30);
    v28(v29, v30);
  }

  v18 = v14;
LABEL_12:
  v32 = *(v0 + 288);
  v31 = *(v0 + 296);
  v34 = *(v0 + 272);
  v33 = *(v0 + 280);
  v36 = *(v0 + 256);
  v35 = *(v0 + 264);
  v37 = *(v0 + 240);
  v38 = *(v0 + 248);
  (*(**(v0 + 208) + 512))(v18 & 1, *(v0 + 216));

  v39 = *(v0 + 8);

  return v39();
}

void RunSiriKitExecutorProcessor.handle(sendStartExecutionTurn:overrideRequestContextData:)(char a1, void *a2)
{
  v3 = v2;
  v182 = a2;
  v181 = type metadata accessor for UUID();
  v180 = *(v181 - 1);
  v5 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v170 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v171 = &v168 - v11;
  v173 = type metadata accessor for UserID();
  v175 = *(v173 - 8);
  v12 = *(v175 + 64);
  v13 = MEMORY[0x1EEE9AC00](v173);
  v15 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v174 = &v168 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v168 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v168 - v21;
  v178 = type metadata accessor for RequestType();
  v177 = *(v178 - 8);
  v22 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v186 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v185 = &v168 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v184 = &v168 - v31;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.conversationBridge);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v187 = v20;
  if (v36)
  {
    v37 = v15;
    v38 = v33;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v191[0] = v40;
    *v39 = 136315138;
    if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source))
    {
      v41 = 0xE600000000000000;
      if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) == 1)
      {
        v42 = 0x65746F6D6572;
      }

      else
      {
        v42 = 0x726576726573;
      }
    }

    else
    {
      v41 = 0xE500000000000000;
      v42 = 0x6C61636F6CLL;
    }

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v191);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1DC659000, v34, v35, "Handling RSKE from source: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E12A2F50](v40, -1, -1);
    MEMORY[0x1E12A2F50](v39, -1, -1);

    v33 = v38;
    v15 = v37;
    v20 = v187;
  }

  else
  {
  }

  v169 = v15;
  if (a1)
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v44, v45, "Sending StartExecutionTurn to Execution before RSKE", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    v47 = v3[18];
    if (v47)
    {
      v183 = v33;
      v48 = v3[17];
      v49 = v47;
    }

    else
    {
      v50 = [v3[3] requestID];
      if (!v50)
      {
        v187 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v187, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_1DC659000, v187, v110, "The requestId is missing", v111, 2u);
          MEMORY[0x1E12A2F50](v111, -1, -1);
        }

        v112 = v187;

        return;
      }

      v183 = v33;
      v51 = v50;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v52;
    }

    v53 = *(*v3 + 536);
    swift_bridgeObjectRetain_n();
    v53(v48, v49);

    v54 = v184;
    outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, v184, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v55 = v185;
    outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, v185, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    started = type metadata accessor for StartExecutionTurn();
    v57 = objc_allocWithZone(started);
    v58 = &v57[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
    *v58 = v48;
    v58[1] = v49;
    v59 = &v57[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
    *v59 = 0;
    v59[1] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v54, &v57[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v55, &v57[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    v57[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = 0;
    v57[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = 0;
    v188.receiver = v57;
    v188.super_class = started;
    v60 = objc_msgSendSuper2(&v188, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v61 = v3[10];
    v62 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v61);
    (*(v62 + 8))(v60, *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate), &protocol witness table for RunSiriKitExecutorProcessorExecutionDelegate, v61, v62);
    v63 = v60;
    v33 = v183;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&dword_1DC659000, v64, v65, "Successfully sent: %@", v66, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v67, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v67, -1, -1);
      MEMORY[0x1E12A2F50](v66, -1, -1);
      v63 = v64;
      v64 = v68;
    }

    v20 = v187;
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v191[0] = v72;
    *v71 = 136315138;
    v73 = [v3[2] debugDescription];
    v74 = v20;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = v75;
    v20 = v74;
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, v191);

    *(v71 + 4) = v79;
    _os_log_impl(&dword_1DC659000, v69, v70, "Handling %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x1E12A2F50](v72, -1, -1);
    MEMORY[0x1E12A2F50](v71, -1, -1);
  }

  v80 = v3[2];
  [v80 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  if (swift_dynamicCast())
  {
    v81 = v189;
    if ((*(*v3 + 504))(v189))
    {
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1DC659000, v82, v83, "🫨 Gesture invocation detected, ignoring RSKE", v84, 2u);
        MEMORY[0x1E12A2F50](v84, -1, -1);
      }

      return;
    }

    v103 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage);
    v185 = v81;
    v183 = v33;
    v184 = v80;
    if (!v103)
    {
      goto LABEL_52;
    }

    (*(v177 + 104))(v176, *MEMORY[0x1E69D0538], v178);
    _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    v181 = v103;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v191[0] == v189 && v191[1] == v190)
    {
      (*(v177 + 8))(v176, v178);

      v104 = v173;
      v105 = v175;
      v106 = v174;
    }

    else
    {
      v107 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v177 + 8))(v176, v178);

      v104 = v173;
      v105 = v175;
      v106 = v174;
      if ((v107 & 1) == 0)
      {
LABEL_37:
        v109 = v170;
        outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, v170, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if ((*(v105 + 48))(v109, 1, v104) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        }

        else
        {
          (*(v105 + 32))(v106, v109, v104);
          v129 = v169;
          (*(v105 + 16))(v169, v106, v104);
          v130 = v104;
          v131 = v106;
          v132 = Logger.logObject.getter();
          v133 = v129;
          v134 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v132, v134))
          {
            v135 = v130;
            v136 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v191[0] = v187;
            *v136 = 136315138;
            _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
            v137 = dispatch thunk of CustomStringConvertible.description.getter();
            v139 = v138;
            v140 = *(v105 + 8);
            v140(v133, v135);
            v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v139, v191);

            *(v136 + 4) = v141;
            _os_log_impl(&dword_1DC659000, v132, v134, "User found within the session :%s", v136, 0xCu);
            v142 = v187;
            __swift_destroy_boxed_opaque_existential_1Tm(v187);
            MEMORY[0x1E12A2F50](v142, -1, -1);
            MEMORY[0x1E12A2F50](v136, -1, -1);

            v140(v174, v135);
          }

          else
          {

            v147 = *(v105 + 8);
            v147(v129, v130);
            v147(v131, v130);
          }
        }

LABEL_52:
        v145 = 0;
LABEL_55:
        (*(*v3 + 536))(v3[17], v3[18]);
        outlined init with copy of ReferenceResolutionClientProtocol((v3 + 7), v191);
        v150 = v192;
        v149 = v193;
        __swift_project_boxed_opaque_existential_1(v191, v192);
        v151 = outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, v186, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v152 = v182;
        v153 = v145;
        if (v182)
        {
          v154 = v182;
        }

        else
        {
          v155 = (*(*v3 + 640))(v151);
          v152 = v182;
          v154 = v155;
        }

        v156 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession);
        v157 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate);
        v158 = *(v149 + 64);
        v159 = v152;
        v167 = v149;
        v160 = v186;
        v158(v185, v186, v154, v153, v153, v156, v157, &protocol witness table for RunSiriKitExecutorProcessorExecutionDelegate, v150, v167);

        outlined destroy of ReferenceResolutionClientProtocol?(v160, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v191);

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *v163 = 138412290;
          v165 = v184;
          *(v163 + 4) = v184;
          *v164 = v165;
          v166 = v165;
          _os_log_impl(&dword_1DC659000, v161, v162, "Successfully sent: %@", v163, 0xCu);
          outlined destroy of ReferenceResolutionClientProtocol?(v164, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v164, -1, -1);
          MEMORY[0x1E12A2F50](v163, -1, -1);
        }

        return;
      }
    }

    v108 = v171;
    UserSessionState.activeUserSharedUserId.getter();
    if ((*(v105 + 48))(v108, 1, v104) != 1)
    {
      v113 = v172;
      (*(v105 + 32))(v172, v108, v104);
      (*(v105 + 16))(v20, v113, v104);
      v114 = v104;
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = v20;
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v191[0] = v119;
        *v118 = 136315138;
        _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
        v120 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = v114;
        v123 = v122;
        v124 = *(v105 + 8);
        v125 = v117;
        v104 = v121;
        v124(v125, v121);
        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v123, v191);

        *(v118 + 4) = v126;
        _os_log_impl(&dword_1DC659000, v115, v116, "#user-session: using active user %s for local request", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        MEMORY[0x1E12A2F50](v119, -1, -1);
        v127 = v118;
        v128 = v124;
        MEMORY[0x1E12A2F50](v127, -1, -1);
      }

      else
      {

        v143 = v20;
        v128 = *(v105 + 8);
        v128(v143, v104);
      }

      LOBYTE(v191[0]) = 5;
      v144 = v181;
      v145 = UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v181, v191, 2);
      if (v145)
      {
        v146 = UserSpecificInfo.saUserSessionState.getter();
      }

      else
      {
        v146 = 0;
      }

      [v185 setUserSessionState_];

      v128(v172, v104);
      v148 = v145;
      goto LABEL_55;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    goto LABEL_37;
  }

  v85 = v3[4];
  if (v85)
  {
    v86 = v3[5];
    v87 = objc_allocWithZone(MEMORY[0x1E69C7778]);

    v88 = [v87 init];
    v89 = v179;
    UUID.init()();
    v90 = UUID.uuidString.getter();
    v92 = v91;
    (*(v180 + 8))(v89, v181);
    v93 = MEMORY[0x1E12A1410](v90, v92);

    [v88 setAceId_];

    v94 = v88;
    v95 = [v80 aceId];
    [v94 setRefId_];

    [v94 setErrorCode_];
    v96 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA87280);
    [v94 setReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    v98 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 0xD000000000000013;
    *(inited + 56) = 0x80000001DCA87280;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of ReferenceResolutionClientProtocol?(v98, &_sSS_yptMd, &_sSS_yptMR);
    v99 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v100 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v102 = [v99 initWithDomain:v100 code:-1 userInfo:isa];

    v85(v94, v102);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v85);
  }
}

uint64_t RunSiriKitExecutorProcessor.isGestureInvocation(rske:)(void *a1)
{
  v1 = [a1 parse];
  if (v1 && (v2 = v1, v3 = [v1 directInvocation], v2, v3) && (v4 = objc_msgSend(v3, sel_invocationIdentifier), v3, v4))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == static SiriKitDirectInvocationPayloads.headGestureIdentifier.getter() && v7 == v8)
    {

      return 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Unable to get the payload identifier, not a gesture invocation", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.logStartOfExecutionForRSKE(requestId:)(Swift::String_optional requestId)
{
  v2 = v1;
  object = requestId.value._object;
  countAndFlagsBits = requestId.value._countAndFlagsBits;
  if (((*(*v1 + 400))() & 1) == 0)
  {
    if (object)
    {
      v5 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil);
      v6 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source);
      v7 = (*(*v1 + 424))();
      (*(*v5 + 136))(1, v6, 8, countAndFlagsBits, object, countAndFlagsBits, object, v7, v8, 0);
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.conversationBridge);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1DC659000, v10, v11, "RequestId is missing while handling RSKE request and logging to SELF", v12, 2u);
        MEMORY[0x1E12A2F50](v12, -1, -1);
      }
    }

    v13 = *(*v2 + 408);

    v13(1);
  }
}

uint64_t RunSiriKitExecutorProcessor.loggedStartOfCall.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)(v2, v3, v4, v5, v7, v6);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.bridge(didReceiveRequestContextData:from:)(a4, a5, a6);
}

char *RequestContextData.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RequestPositionInSession();
  v264 = *(v2 - 8);
  v265 = v2;
  v3 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v263 = &v257 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for Restrictions();
  v260 = *(v261 - 8);
  v5 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v259 = &v257 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviceRestrictions();
  v269 = *(v7 - 8);
  v270 = v7;
  v8 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v268 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v267 = &v257 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v257 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v257 - v19;
  v21 = type metadata accessor for RequestContextData(0);
  v275.receiver = v0;
  v275.super_class = v21;
  v22 = objc_msgSendSuper2(&v275, sel_debugDescription);
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v272[0] = v23;
  v272[1] = v25;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v26 = v272[0];
  v27 = v272[1];
  strcpy(v272, "inputOrigin: ");
  HIWORD(v272[1]) = -4864;
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin], *&v1[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v28 = v272[0];
  v29 = v272[1];
  v272[0] = v26;
  v272[1] = v27;

  MEMORY[0x1E12A1580](v28, v29);

  v31 = v272[0];
  v30 = v272[1];
  strcpy(v272, "audioSource: ");
  HIWORD(v272[1]) = -4864;
  v271 = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], v20, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v32 = type metadata accessor for AudioSource();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v20, 1, v32) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v34 = 0xE500000000000000;
    v35 = 0x3E6C696E3CLL;
  }

  else
  {
    v35 = AudioSource.aceValue.getter();
    v34 = v36;
    (*(v33 + 8))(v20, v32);
  }

  MEMORY[0x1E12A1580](v35, v34);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v37 = v272[0];
  v38 = v272[1];
  v272[0] = v31;
  v272[1] = v30;

  MEMORY[0x1E12A1580](v37, v38);

  v40 = v272[0];
  v39 = v272[1];
  v266 = 0xD000000000000012;
  v272[0] = 0xD000000000000012;
  v272[1] = 0x80000001DCA86920;
  v41 = v271;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v271[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], v16, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v42 = type metadata accessor for AudioDestination();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v16, 1, v42) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v44 = 0xE500000000000000;
    v45 = 0x3E6C696E3CLL;
  }

  else
  {
    v46 = AudioDestination.aceValue.getter();
    v44 = v47;
    (*(v43 + 8))(v16, v42);
    v45 = v46;
  }

  MEMORY[0x1E12A1580](v45, v44);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v48 = v272[0];
  v49 = v272[1];
  v272[0] = v40;
  v272[1] = v39;

  MEMORY[0x1E12A1580](v48, v49);

  v50 = v272[0];
  v51 = v272[1];
  strcpy(v272, "responseMode: ");
  HIBYTE(v272[1]) = -18;
  v52 = ResponseMode.aceValue.getter();
  MEMORY[0x1E12A1580](v52);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v53 = v272[0];
  v54 = v272[1];
  v272[0] = v50;
  v272[1] = v51;

  MEMORY[0x1E12A1580](v53, v54);

  v55 = v272[0];
  v56 = v272[1];
  v57 = v41[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree];
  strcpy(v272, "isEyesFree: ");
  BYTE5(v272[1]) = 0;
  HIWORD(v272[1]) = -5120;
  if (v57)
  {
    v58 = 1702195828;
  }

  else
  {
    v58 = 0x65736C6166;
  }

  v59 = 0xE500000000000000;
  if (v57)
  {
    v60 = 0xE400000000000000;
  }

  else
  {
    v60 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v58, v60);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v61 = v272[0];
  v62 = v272[1];
  v272[0] = v55;
  v272[1] = v56;

  MEMORY[0x1E12A1580](v61, v62);

  v63 = v272[0];
  v64 = v272[1];
  v262 = 0xD000000000000010;
  v272[0] = 0xD000000000000010;
  v272[1] = 0x80000001DCA86940;
  if (v271[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction])
  {
    v65 = 1702195828;
  }

  else
  {
    v65 = 0x65736C6166;
  }

  if (v271[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction])
  {
    v66 = 0xE400000000000000;
  }

  else
  {
    v66 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v65, v66);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v67 = v272[0];
  v68 = v272[1];
  v272[0] = v63;
  v272[1] = v64;

  MEMORY[0x1E12A1580](v67, v68);

  v69 = v272[0];
  v70 = v272[1];
  v272[0] = 0xD000000000000017;
  v272[1] = 0x80000001DCA86960;
  if (v271[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled])
  {
    v71 = 1702195828;
  }

  else
  {
    v71 = 0x65736C6166;
  }

  if (v271[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled])
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v71, v72);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v73 = v272[0];
  v74 = v272[1];
  v272[0] = v69;
  v272[1] = v70;

  MEMORY[0x1E12A1580](v73, v74);

  v75 = v272[0];
  v76 = v272[1];
  v272[0] = 0xD000000000000017;
  v272[1] = 0x80000001DCA86980;
  if (v271[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled])
  {
    v77 = 1702195828;
  }

  else
  {
    v77 = 0x65736C6166;
  }

  if (v271[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled])
  {
    v78 = 0xE400000000000000;
  }

  else
  {
    v78 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v77, v78);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v79 = v272[0];
  v80 = v272[1];
  v272[0] = v75;
  v272[1] = v76;

  MEMORY[0x1E12A1580](v79, v80);

  v82 = v272[0];
  v83 = v272[1];
  v258 = 0xD000000000000015;
  v272[0] = 0xD000000000000015;
  v272[1] = 0x80000001DCA869A0;
  v84 = MEMORY[0x1E69E7D40];
  v85 = (*((*MEMORY[0x1E69E7D40] & *v271) + 0x140))(v81);
  v86 = (v85 & 1) == 0;
  if (v85)
  {
    v87 = 1702195828;
  }

  else
  {
    v87 = 0x65736C6166;
  }

  if (v86)
  {
    v88 = 0xE500000000000000;
  }

  else
  {
    v88 = 0xE400000000000000;
  }

  MEMORY[0x1E12A1580](v87, v88);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v89 = v272[0];
  v90 = v272[1];
  v272[0] = v82;
  v272[1] = v83;

  MEMORY[0x1E12A1580](v89, v90);

  v92 = v272[0];
  v93 = v272[1];
  v272[0] = v266;
  v272[1] = 0x80000001DCA869C0;
  v94 = (*((*v84 & *v271) + 0x148))(v91);
  v95 = (v94 & 1) == 0;
  if (v94)
  {
    v96 = 1702195828;
  }

  else
  {
    v96 = 0x65736C6166;
  }

  if (v95)
  {
    v97 = 0xE500000000000000;
  }

  else
  {
    v97 = 0xE400000000000000;
  }

  v98 = v271;
  MEMORY[0x1E12A1580](v96, v97);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v99 = v272[0];
  v100 = v272[1];
  v272[0] = v92;
  v272[1] = v93;

  MEMORY[0x1E12A1580](v99, v100);

  v102 = v272[0];
  v101 = v272[1];
  strcpy(v272, "peerInfo: ");
  BYTE3(v272[1]) = 0;
  HIDWORD(v272[1]) = -369098752;
  v103 = *(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  if (v103)
  {
    v104 = [v103 debugDescription];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v106;

    v107 = 0x3E6C696E3CLL;
  }

  else
  {
    v107 = 0x3E6C696E3CLL;
    v105 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v105, v59);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v108 = v272[0];
  v109 = v272[1];
  v272[0] = v102;
  v272[1] = v101;

  MEMORY[0x1E12A1580](v108, v109);

  v111 = v272[0];
  v110 = v272[1];
  strcpy(v272, "endpointInfo: ");
  HIBYTE(v272[1]) = -18;
  v112 = *(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  if (v112)
  {
    v113 = [v112 debugDescription];
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;
  }

  else
  {
    v116 = 0xE500000000000000;
    v114 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v114, v116);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v117 = v272[0];
  v118 = v272[1];
  v272[0] = v111;
  v272[1] = v110;

  MEMORY[0x1E12A1580](v117, v118);

  v120 = v272[0];
  v119 = v272[1];
  strcpy(v272, "instanceInfo: ");
  HIBYTE(v272[1]) = -18;
  v121 = *(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo);
  if (v121)
  {
    v122 = [v121 debugDescription];
    v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v124;
  }

  else
  {
    v125 = 0xE500000000000000;
    v123 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v123, v125);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v126 = v272[0];
  v127 = v272[1];
  v272[0] = v120;
  v272[1] = v119;

  MEMORY[0x1E12A1580](v126, v127);

  v128 = v272[0];
  v129 = v272[1];
  strcpy(v272, "bargeInModes: ");
  HIBYTE(v272[1]) = -18;
  v130 = MEMORY[0x1E12A16D0](*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes), MEMORY[0x1E69E6158]);
  MEMORY[0x1E12A1580](v130);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v131 = v272[0];
  v132 = v272[1];
  v272[0] = v128;
  v272[1] = v129;

  MEMORY[0x1E12A1580](v131, v132);

  v134 = v272[0];
  v133 = v272[1];
  v272[0] = 0xD000000000000020;
  v272[1] = 0x80000001DCA869E0;
  v135 = v267;
  outlined init with copy of ReferenceResolutionClientProtocol?(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval, v267, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v136 = type metadata accessor for DateInterval();
  v137 = *(v136 - 8);
  if ((*(v137 + 48))(v135, 1, v136) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v135, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v138 = 0xE500000000000000;
    v139 = 0x3E6C696E3CLL;
  }

  else
  {
    v140 = DateInterval.debugDescription.getter();
    v138 = v141;
    (*(v137 + 8))(v135, v136);
    v139 = v140;
  }

  MEMORY[0x1E12A1580](v139, v138);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v142 = v272[0];
  v143 = v272[1];
  v272[0] = v134;
  v272[1] = v133;

  MEMORY[0x1E12A1580](v142, v143);

  v146 = v272[0];
  v145 = v272[1];
  v273 = 0xD000000000000014;
  v274 = 0x80000001DCA86A10;
  v147 = v268;
  (*((*v84 & *v98) + 0x150))(v144);
  v148 = DeviceRestrictions.aceSet.getter();
  (*(v269 + 8))(v147, v270);
  v149 = *(v148 + 16);
  if (v149)
  {
    v270 = v146;
    v150 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v149, 0);
    v151 = specialized Sequence._copySequenceContents(initializing:)(v272, v150 + 4, v149, v148);

    outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
    if (v151 != v149)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v146 = v270;
    v98 = v271;
    v107 = 0x3E6C696E3CLL;
  }

  else
  {
    v150 = MEMORY[0x1E69E7CC0];
  }

  v272[0] = v150;
  specialized MutableCollection<>.sort(by:)(v272);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v152 = BidirectionalCollection<>.joined(separator:)();
  v154 = v153;

  MEMORY[0x1E12A1580](v152, v154);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v155 = v273;
  v156 = v274;
  v272[0] = v146;
  v272[1] = v145;

  MEMORY[0x1E12A1580](v155, v156);

  v158 = v272[0];
  v157 = v272[1];
  strcpy(v272, "restrictions: ");
  HIBYTE(v272[1]) = -18;
  (*(v260 + 16))(v259, v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions, v261);
  v159 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v159);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v160 = v272[0];
  v161 = v272[1];
  v272[0] = v158;
  v272[1] = v157;

  MEMORY[0x1E12A1580](v160, v161);

  v163 = v272[0];
  v162 = v272[1];
  v272[0] = 0xD000000000000011;
  v272[1] = 0x80000001DCA86A30;
  v164 = *(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome);
  v271 = 0xD000000000000011;
  if (v164)
  {
    v165 = [v164 debugDescription];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v167 = v166;
  }

  else
  {
    v167 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v107, v167);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v168 = v272[0];
  v169 = v272[1];
  v272[0] = v163;
  v272[1] = v162;

  MEMORY[0x1E12A1580](v168, v169);

  v171 = v272[0];
  v170 = v272[1];
  v272[0] = 0xD00000000000001ALL;
  v272[1] = 0x80000001DCA86A50;
  MEMORY[0x1E12A1580](*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId), *(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8));
  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v172 = v272[0];
  v173 = v272[1];
  v272[0] = v171;
  v272[1] = v170;

  MEMORY[0x1E12A1580](v172, v173);

  v175 = v272[0];
  v174 = v272[1];
  v272[0] = 0xD000000000000017;
  v272[1] = 0x80000001DCA86A70;
  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup))
  {
    v176 = 1702195828;
  }

  else
  {
    v176 = 0x65736C6166;
  }

  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup))
  {
    v177 = 0xE400000000000000;
  }

  else
  {
    v177 = 0xE500000000000000;
  }

  v178 = v98;
  MEMORY[0x1E12A1580](v176, v177);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v179 = v272[0];
  v180 = v272[1];
  v272[0] = v175;
  v272[1] = v174;

  MEMORY[0x1E12A1580](v179, v180);

  v182 = v272[0];
  v181 = v272[1];
  v272[0] = 0xD00000000000001FLL;
  v272[1] = 0x80000001DCA86A90;
  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer))
  {
    v183 = 1702195828;
  }

  else
  {
    v183 = 0x65736C6166;
  }

  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer))
  {
    v184 = 0xE400000000000000;
  }

  else
  {
    v184 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v183, v184);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v185 = v272[0];
  v186 = v272[1];
  v272[0] = v182;
  v272[1] = v181;

  MEMORY[0x1E12A1580](v185, v186);

  v188 = v272[0];
  v187 = v272[1];
  v272[0] = v271;
  v272[1] = 0x80000001DCA86AB0;
  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest))
  {
    v189 = 1702195828;
  }

  else
  {
    v189 = 0x65736C6166;
  }

  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest))
  {
    v190 = 0xE400000000000000;
  }

  else
  {
    v190 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v189, v190);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v191 = v272[0];
  v192 = v272[1];
  v272[0] = v188;
  v272[1] = v187;

  MEMORY[0x1E12A1580](v191, v192);

  v194 = v272[0];
  v193 = v272[1];
  v270 = 0xD000000000000019;
  v272[0] = 0xD000000000000019;
  v272[1] = 0x80000001DCA86AD0;
  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall))
  {
    v195 = 1702195828;
  }

  else
  {
    v195 = 0x65736C6166;
  }

  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall))
  {
    v196 = 0xE400000000000000;
  }

  else
  {
    v196 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v195, v196);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v197 = v272[0];
  v198 = v272[1];
  v272[0] = v194;
  v272[1] = v193;

  MEMORY[0x1E12A1580](v197, v198);

  v200 = v272[0];
  v199 = v272[1];
  v272[0] = 0xD000000000000017;
  v272[1] = 0x80000001DCA86AF0;
  v273 = *(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
  v201 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v201);

  v202 = v272[0];
  v203 = v272[1];
  v272[0] = v200;
  v272[1] = v199;

  MEMORY[0x1E12A1580](v202, v203);

  v205 = v272[0];
  v204 = v272[1];
  v272[0] = 0xD00000000000001BLL;
  v272[1] = 0x80000001DCA86B10;
  v269 = 0xD00000000000001BLL;
  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled))
  {
    v206 = 1702195828;
  }

  else
  {
    v206 = 0x65736C6166;
  }

  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled))
  {
    v207 = 0xE400000000000000;
  }

  else
  {
    v207 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v206, v207);

  v208 = v272[0];
  v209 = v272[1];
  v272[0] = v205;
  v272[1] = v204;

  MEMORY[0x1E12A1580](v208, v209);

  v211 = v272[0];
  v210 = v272[1];
  v272[0] = v258;
  v272[1] = 0x80000001DCA86B30;
  LODWORD(v273) = *(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
  v212 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v212);

  v213 = v272[0];
  v214 = v272[1];
  v272[0] = v211;
  v272[1] = v210;

  MEMORY[0x1E12A1580](v213, v214);

  v216 = v272[0];
  v215 = v272[1];
  v272[0] = v270;
  v272[1] = 0x80000001DCA86B50;
  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled))
  {
    v217 = 1702195828;
  }

  else
  {
    v217 = 0x65736C6166;
  }

  if (*(v98 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled))
  {
    v218 = 0xE400000000000000;
  }

  else
  {
    v218 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v217, v218);

  v219 = v272[0];
  v220 = v272[1];
  v272[0] = v216;
  v272[1] = v215;

  MEMORY[0x1E12A1580](v219, v220);

  v222 = v272[0];
  v221 = v272[1];
  v272[0] = 0xD00000000000001BLL;
  v272[1] = 0x80000001DCA86B70;
  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported))
  {
    v223 = 1702195828;
  }

  else
  {
    v223 = 0x65736C6166;
  }

  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported))
  {
    v224 = 0xE400000000000000;
  }

  else
  {
    v224 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v223, v224);

  v225 = v272[0];
  v226 = v272[1];
  v272[0] = v222;
  v272[1] = v221;

  MEMORY[0x1E12A1580](v225, v226);

  v228 = v272[0];
  v227 = v272[1];
  strcpy(v272, "isInAmbient: ");
  HIWORD(v272[1]) = -4864;
  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient))
  {
    v229 = 1702195828;
  }

  else
  {
    v229 = 0x65736C6166;
  }

  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient))
  {
    v230 = 0xE400000000000000;
  }

  else
  {
    v230 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v229, v230);

  v231 = v272[0];
  v232 = v272[1];
  v272[0] = v228;
  v272[1] = v227;

  MEMORY[0x1E12A1580](v231, v232);

  v234 = v272[0];
  v233 = v272[1];
  v272[0] = 0xD000000000000013;
  v272[1] = 0x80000001DCA86B90;
  (*(v264 + 16))(v263, v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v265);
  v235 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v235);

  v236 = v272[0];
  v237 = v272[1];
  v272[0] = v234;
  v272[1] = v233;

  MEMORY[0x1E12A1580](v236, v237);

  v239 = v272[0];
  v238 = v272[1];
  v272[0] = v271;
  v272[1] = 0x80000001DCA86BB0;
  v273 = *(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  v240 = v273;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
  v241 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v241);

  v242 = v272[0];
  v243 = v272[1];
  v272[0] = v239;
  v272[1] = v238;

  MEMORY[0x1E12A1580](v242, v243);

  v245 = v272[0];
  v244 = v272[1];
  v272[0] = v269;
  v272[1] = 0x80000001DCA86BD0;
  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen))
  {
    v246 = 1702195828;
  }

  else
  {
    v246 = 0x65736C6166;
  }

  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen))
  {
    v247 = 0xE400000000000000;
  }

  else
  {
    v247 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v246, v247);

  v248 = v272[0];
  v249 = v272[1];
  v272[0] = v245;
  v272[1] = v244;

  MEMORY[0x1E12A1580](v248, v249);

  v251 = v272[0];
  v250 = v272[1];
  v272[0] = v262;
  v272[1] = 0x80000001DCA86BF0;
  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    v252 = 1702195828;
  }

  else
  {
    v252 = 0x65736C6166;
  }

  if (*(v178 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    v253 = 0xE400000000000000;
  }

  else
  {
    v253 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v252, v253);

  v254 = v272[0];
  v255 = v272[1];
  v272[0] = v251;
  v272[1] = v250;

  MEMORY[0x1E12A1580](v254, v255);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v272[0];
}