uint64_t ServiceBridgeDelegate.fetchSelfReflectionDecision()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[9] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ServiceBridgeDelegate.fetchSelfReflectionDecision(), v5, 0);
}

uint64_t ServiceBridgeDelegate.fetchSelfReflectionDecision()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = static MessageBusActor.shared;
  *(v2 + 80) = static MessageBusActor.shared;
  v5 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor);
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  *(v6 + 16) = *(v2 + 48);
  *(v6 + 32) = v3;
  v7 = *(MEMORY[0x1E69E88D0] + 4);

  v8 = swift_task_alloc();
  *(v2 + 96) = v8;
  *v8 = v2;
  v8[1] = ServiceBridgeDelegate.fetchSelfReflectionDecision();
  v9 = *(v2 + 40);

  return MEMORY[0x1EEE6DDE0](v9, v4, v5, 0xD00000000000001DLL, 0x80000001DCA81130, partial apply for closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision(), v6, &type metadata for SelfReflectionAgentDecision);
}

uint64_t closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMd, &_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  (*(a4 + 176))(partial apply for closure #1 in closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision(), v14, a3, a4);
}

uint64_t partial apply for closure #1 in closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision()(char *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMd, &_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMd, &_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ServiceBridgeDelegate.fetchSelfReflectionDecision()()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](ServiceBridgeDelegate.fetchSelfReflectionDecision(), v4, 0);
}

uint64_t protocol witness for DecisionMaking.commitConversation(_:) in conformance DecisionEngine(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for DecisionMaking.commitConversation(_:) in conformance DecisionEngine, v3, 0);
}

uint64_t RemoteConversationClient.isEmpty()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.isEmpty(), v0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = RemoteConversationClient.isEmpty();
  v8 = MEMORY[0x1E69E6370];

  return (v10)(v0 + 5, &async function pointer to closure #1 in RemoteConversationClient.isEmpty(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  v5 = *(v2 + 16);
  if (v0)
  {

    v6 = RemoteConversationClient.isEmpty();
  }

  else
  {
    v6 = RemoteConversationClient.isEmpty();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v10 = v0;
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    v2 = *(v0 + 24);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v9);
      _os_log_impl(&dword_1DC659000, v3, v4, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E12A2F50](v6, -1, -1);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    LOBYTE(v1) = 1;
  }

  v7 = *(v0 + 8);

  return v7(v1 & 1);
}

{
  v9 = v0;
  v1 = *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v8);
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(1);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 72);
  if (v5 == 1)
  {
    goto LABEL_35;
  }

  if (!v5)
  {
    goto LABEL_28;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [objc_opt_self() aceObjectWithGenericCommand_];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v9;
        goto LABEL_8;
      }
    }

LABEL_28:
    v57 = *(v4 + 192);
    v56 = *(v4 + 200);
    v59 = *(v4 + 176);
    v58 = *(v4 + 184);
    v11 = [objc_allocWithZone(MEMORY[0x1E69C7738]) init];

    outlined consume of SABaseCommand??(v5);
    if (v56 != v59)
    {
LABEL_11:
      v29 = *(v4 + 200);
      *(v4 + 184) = v11;
      a2 = *(v4 + 96);
      if ((a2 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x1E12A1FE0](v29);
      }

      else
      {
        if (v29 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
        }

        a1 = *(a2 + 8 * v29 + 32);
      }

      *(v4 + 192) = a1;
      *(v4 + 200) = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        v30 = *(v4 + 168);
        v31 = *(v4 + 152);
        v64 = v30;
        v32 = *(v4 + 128);
        v33 = *(v4 + 136);
        v35 = *(v4 + 112);
        v34 = *(v4 + 120);
        v65 = *(v4 + 104);
        v66 = *(v4 + 160);
        v36 = a1;
        v37 = type metadata accessor for TaskPriority();
        v38 = *(v37 - 8);
        (*(v38 + 56))(v30, 1, 1, v37);
        v39 = v34;
        v40 = v32;
        (*(v33 + 16))(v31, v39, v32);
        v41 = (*(v33 + 80) + 56) & ~*(v33 + 80);
        v42 = swift_allocObject();
        v42[2] = 0;
        v67 = v42 + 2;
        v42[3] = 0;
        v42[4] = v65;
        v42[5] = v36;
        v42[6] = v35;
        (*(v33 + 32))(v42 + v41, v31, v40);
        outlined init with copy of ReferenceResolutionClientProtocol?(v64, v66, &_sScPSgMd, &_sScPSgMR);
        LODWORD(v40) = (*(v38 + 48))(v66, 1, v37);

        v43 = v36;

        v44 = *(v4 + 160);
        if (v40 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v4 + 160), &_sScPSgMd, &_sScPSgMR);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v38 + 8))(v44, v37);
        }

        if (*v67)
        {
          v45 = v42[3];
          v46 = *v67;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v47 = dispatch thunk of Actor.unownedExecutor.getter();
          v49 = v48;
          swift_unknownObjectRelease();
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v50 = **(v4 + 88);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
        v51 = v49 | v47;
        if (v49 | v47)
        {
          v51 = v4 + 16;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          *(v4 + 32) = v47;
          *(v4 + 40) = v49;
        }

        v52 = *(v4 + 168);
        *(v4 + 48) = 1;
        *(v4 + 56) = v51;
        *(v4 + 64) = v50;
        swift_task_create();

        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sScPSgMd, &_sScPSgMR);
        v53 = *(MEMORY[0x1E69E8708] + 4);
        v54 = swift_task_alloc();
        *(v4 + 208) = v54;
        a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySo13SABaseCommandCSgs5Error_pGMd, &_sScgySo13SABaseCommandCSgs5Error_pGMR);
        *v54 = v4;
        v54[1] = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
        v55 = *(v4 + 88);
        a1 = (v4 + 72);
        a2 = 0;
        a3 = 0;

        return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_29:
    v61 = *(v4 + 160);
    v60 = *(v4 + 168);
    v62 = *(v4 + 152);
    **(v4 + 80) = v11;

    v24 = *(v4 + 8);
    goto LABEL_30;
  }

  v8 = v5;
  v10 = v8;
  v11 = v5;
LABEL_8:
  v12 = v8;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    v26 = *(v4 + 192);
    v25 = *(v4 + 200);
    v28 = *(v4 + 176);
    v27 = *(v4 + 184);

    outlined consume of SABaseCommand??(v5);
    if (v25 != v28)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  v14 = v13;

  v15 = type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98]);
  v16 = swift_allocError();
  *v17 = v14;
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69CFF88], v15);
  swift_willThrow();
  outlined consume of SABaseCommand??(v5);
  v19 = *(v4 + 184);
  v18 = *(v4 + 192);
  v20 = *(v4 + 160);
  v21 = *(v4 + 168);
  v22 = *(v4 + 152);
  lazy protocol witness table accessor for type SerialSubmissionError and conformance SerialSubmissionError();
  swift_allocError();
  *v23 = v18;
  v23[1] = v16;
  swift_willThrow();

  v24 = *(v4 + 8);
LABEL_30:

  return v24();
}

void outlined consume of SABaseCommand??(id a1)
{
  if (a1 != 1)
  {
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime19SettingParseOptionsVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19SettingParseOptionsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlowOutputMessage.InAppResponse? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse and conformance FlowOutputMessage.InAppResponse, MEMORY[0x1E69D0248]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse? and conformance <A> A?);
  }

  return result;
}

id ExecutionOutput.__allocating_init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v134 = a8;
  v135 = a2;
  v136 = a13;
  v131 = a10;
  v132 = a7;
  updated = type metadata accessor for ContextUpdateScope();
  v128 = *(updated - 8);
  v129 = updated;
  v21 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v127 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v126 = v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v125 = v115 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v124 = v115 - v30;
  v31 = type metadata accessor for BinaryDecodingOptions();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v121 = v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v122 = v115 - v36;
  v130 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v123 = *(v130 - 8);
  v37 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v120 = v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v119 = v115 - v40;
  v133 = v14;
  v41 = objc_allocWithZone(v14);
  v42 = &v41[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v42 = a11;
  *(v42 + 1) = a12;
  v43 = &v41[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v43 = a3;
  *(v43 + 1) = a4;
  v44 = &v41[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v44 = a5;
  *(v44 + 1) = a6;
  v45 = &v41[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  v46 = v134;
  *v45 = v132;
  *(v45 + 1) = v46;
  v47 = &v41[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  v48 = v131;
  *v47 = a9;
  *(v47 + 1) = v48;
  v49 = OBJC_IVAR___SKRExecutionOutput_executionSource;
  v50 = type metadata accessor for RequestSummary.ExecutionSource();
  v51 = *(v50 - 8);
  v131 = v50;
  v132 = v51;
  (*(v51 + 16))(&v41[v49], v136);
  v134 = a14;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v41[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v52 = off_1E8646000;
  if (a1 && (objc_opt_self(), (v53 = swift_dynamicCastObjCClass()) != 0) && !v135)
  {
    v54 = v53;
    v55 = one-time initialization token for executor;
    v56 = a1;
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.executor);
    v58 = v56;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    v61 = os_log_type_enabled(v59, v60);
    v62 = v130;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v137[0] = v65;
      *v63 = 136315394;
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
      *(v63 + 12) = 2112;
      *(v63 + 14) = v54;
      *v64 = v54;
      v66 = v58;
      _os_log_impl(&dword_1DC659000, v59, v60, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v63, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v62 = v130;
      MEMORY[0x1E12A2F50](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1E12A2F50](v65, -1, -1);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    v67 = [v54 promptContextProto];
    v118 = v58;
    v117 = v54;
    if (v67)
    {
      v68 = v67;
      v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v138 = 0;
      memset(v137, 0, sizeof(v137));
      outlined copy of Data._Representation(v69, v71);
      BinaryDecodingOptions.init()();
      v72 = _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
      v73 = v122;
      Message.init(serializedData:extensions:partial:options:)();
      v115[1] = v72;
      v116 = v69;
      v121 = v71;
      v105 = v123;
      (*(v123 + 56))(v73, 0, 1, v62);
      v106 = v119;
      (*(v105 + 32))(v119, v73, v62);
      (*(v105 + 16))(v120, v106, v62);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *&v137[0] = v110;
        *v109 = 136315394;
        *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
        *(v109 + 12) = 2080;
        v111 = v120;
        v112 = Message.textFormatString()();
        v123 = *(v105 + 8);
        (v123)(v111, v62);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112._countAndFlagsBits, v112._object, v137);

        *(v109 + 14) = v113;
        _os_log_impl(&dword_1DC659000, v107, v108, "ExecutionOutput: %s: NFCU has prompt context %s", v109, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v110, -1, -1);
        MEMORY[0x1E12A2F50](v109, -1, -1);

        outlined consume of Data._Representation(v116, v121);
        (v123)(v119, v62);
      }

      else
      {

        outlined consume of Data._Representation(v116, v121);
        v114 = *(v105 + 8);
        v114(v120, v62);
        v114(v106, v62);
      }
    }

    else
    {
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v137[0] = v77;
        *v76 = 136315138;
        *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
        _os_log_impl(&dword_1DC659000, v74, v75, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x1E12A2F50](v77, -1, -1);
        MEMORY[0x1E12A2F50](v76, -1, -1);
      }
    }

    v78 = type metadata accessor for Parse.DirectInvocation();
    v79 = v124;
    (*(*(v78 - 8) + 56))(v124, 1, 1, v78);
    v80 = type metadata accessor for PommesContext();
    v81 = v125;
    (*(*(v80 - 8) + 56))(v125, 1, 1, v80);
    v82 = v127;
    v83 = v128;
    v84 = v129;
    (*(v128 + 104))(v127, *MEMORY[0x1E69CFF08], v129);
    v85 = type metadata accessor for ExecutionContextUpdate();
    v86 = objc_allocWithZone(v85);
    v87 = v126;
    outlined init with copy of ReferenceResolutionClientProtocol?(v81, v126, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v88 = v117;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v87, v117);
    *&v86[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v88;
    *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v79, &v86[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v86[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v87, &v86[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v83 + 16))(&v86[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v82, v84);
    v89 = &v86[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v89 = 0;
    v89[1] = 0;
    v86[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v139.receiver = v86;
    v139.super_class = v85;
    v52 = off_1E8646000;
    v90 = objc_msgSendSuper2(&v139, sel_init);
    (*(v83 + 8))(v82, v84);
    outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    *&v41[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v90;
    *&v41[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v91 = v135;
    v92 = v118;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static Logger.executor);
    v94 = a1;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v137[0] = v99;
      *v97 = 136315394;
      *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
      *(v97 + 12) = 2112;
      *(v97 + 14) = v94;
      *v98 = a1;
      v100 = v94;
      _os_log_impl(&dword_1DC659000, v95, v96, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v97, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v98, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v98, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x1E12A2F50](v99, -1, -1);
      v101 = v97;
      v52 = off_1E8646000;
      MEMORY[0x1E12A2F50](v101, -1, -1);
    }

    *&v41[OBJC_IVAR___SKRExecutionOutput_command] = a1;
    v102 = v135;
    *&v41[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v135;
    v91 = v102;
    v92 = v94;
  }

  v140.receiver = v41;
  v140.super_class = v133;
  v103 = objc_msgSendSuper2(&v140, v52[390]);
  outlined destroy of ReferenceResolutionClientProtocol?(v134, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v132 + 8))(v136, v131);

  return v103;
}

uint64_t specialized withCancellableContinuation<A>(body:)()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v2 + 32);
  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v3 + 16);

    v11 = *(v6 + 8);

    return v11(v10);
  }
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *v1;

  v7 = *(v2 + 40);
  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);

    v12 = *(v6 + 8);

    return v12(v10, v11);
  }
}

uint64_t closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v2 + 280);
  v5 = *v2;
  v5[36] = v1;

  if (v1)
  {
    v6 = v5[18];
    v7 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v6, 0);
  }

  else
  {
    v8 = v5[34];
    v9 = v5[17];
    v10 = v5[12];

    *v10 = a1;

    v11 = v5[1];
    v12 = *MEMORY[0x1E69E9840];

    return v11();
  }
}

{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 192);
  v10 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  v5 = v3[18];
  if (v1)
  {
    v6 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  else
  {
    v6 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 248);
  v10 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v5 = v3[18];
  if (v1)
  {
    v6 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  else
  {
    v6 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void AceServiceInvokerImpl.publish(executionOutput:)()
{
  v8 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v0[7] + 16);
  os_unfair_lock_lock(v3 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v7);
  if (v1)
  {

    os_unfair_lock_unlock(v3 + 6);
  }

  else
  {
    v4 = v0[5];
    v5 = v0[6];
    os_unfair_lock_unlock(v3 + 6);

    v6 = v0[1];

    v6();
  }
}

uint64_t partial apply for closure #1 in SubmissionTaskRegistry.unregister(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized Set._Variant.remove(_:)();
  *a1 = result;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  Task.hash(into:)();
  v3 = Hasher._finalize()();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(*(v1 + 48) + 8 * v5);

    v8 = static Task.== infix(_:_:)();

    if (v8)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  v14 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v5);
  specialized _NativeSet._delete(at:)(v5);
  result = v13;
  *v0 = v14;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        Task.hash(into:)();
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v13 = *(v12 + 112);
        v14 = *(v12 + 120);

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 8 * v2);
          v19 = (v17 + 8 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

uint64_t ExecutionContextUpdate.debugDescription.getter()
{
  v1 = v0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v69 - v6;
  v8 = type metadata accessor for ExecutionContextUpdate();
  v73.receiver = v0;
  v73.super_class = v8;
  v9 = objc_msgSendSuper2(&v73, sel_debugDescription);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v74 = v10;
  v75 = v12;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v14 = v74;
  v13 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v71 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18SACFProvideContextCSgMd, &_sSo18SACFProvideContextCSgMR);
  v15 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v15);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v16 = v74;
  v17 = v75;
  v74 = v14;
  v75 = v13;

  MEMORY[0x1E12A1580](v16, v17);

  v19 = v74;
  v18 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 7;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v71 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMR);
  v20 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v20);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v21 = v74;
  v22 = v75;
  v74 = v19;
  v75 = v18;

  MEMORY[0x1E12A1580](v21, v22);

  v24 = v74;
  v23 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v71 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27SARDNativeFlowContextUpdateCSgMd, &_sSo27SARDNativeFlowContextUpdateCSgMR);
  v25 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v25);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v26 = v74;
  v27 = v75;
  v74 = v24;
  v75 = v23;

  MEMORY[0x1E12A1580](v26, v27);

  v29 = v74;
  v28 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 3;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v71 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMR);
  v30 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v30);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v31 = v74;
  v32 = v75;
  v74 = v29;
  v75 = v28;

  MEMORY[0x1E12A1580](v31, v32);

  v34 = v74;
  v33 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], v7, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v35 = type metadata accessor for PommesContext();
  v36 = (*(*(v35 - 8) + 48))(v7, 1, v35);
  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (v36 == 1)
  {
    v37 = 28526;
  }

  else
  {
    v37 = 7562617;
  }

  if (v36 == 1)
  {
    v38 = 0xE200000000000000;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  MEMORY[0x1E12A1580](v37, v38);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v39 = v74;
  v40 = v75;
  v74 = v34;
  v75 = v33;

  MEMORY[0x1E12A1580](v39, v40);

  v42 = v74;
  v41 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 8;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v71 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMR);
  v43 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v43);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v44 = v74;
  v45 = v75;
  v74 = v42;
  v75 = v41;

  MEMORY[0x1E12A1580](v44, v45);

  v47 = v74;
  v46 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 9;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v71 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks];

  v48 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v48);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v49 = v74;
  v50 = v75;
  v74 = v47;
  v75 = v46;

  MEMORY[0x1E12A1580](v49, v50);

  v52 = v74;
  v51 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 10;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], v69, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v53 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v53);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v54 = v74;
  v55 = v75;
  v74 = v52;
  v75 = v51;

  MEMORY[0x1E12A1580](v54, v55);

  v57 = v74;
  v56 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 12;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v58 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId + 8];
  v71 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v72 = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v59 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v59);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v60 = v74;
  v61 = v75;
  v74 = v57;
  v75 = v56;

  MEMORY[0x1E12A1580](v60, v61);

  v63 = v74;
  v62 = v75;
  v74 = 0;
  v75 = 0xE000000000000000;
  LOBYTE(v71) = 13;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (v1[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice])
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice])
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v64, v65);

  v66 = v74;
  v67 = v75;
  v74 = v63;
  v75 = v62;

  MEMORY[0x1E12A1580](v66, v67);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v74;
}

SiriKitRuntime::ExecutionContextUpdateScope __swiftcall ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(Swift::Bool isMUXEnabled)
{
  updated = type metadata accessor for ContextUpdateScope();
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](updated);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!isMUXEnabled)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "Forcing context update scope to be .global since MUX is not enabled", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    return 0;
  }

  (*(v4 + 16))(v8, v1, updated, v6);
  v9 = (*(v4 + 88))(v8, updated);
  if (v9 == *MEMORY[0x1E69CFF00])
  {
    return 1;
  }

  if (v9 != *MEMORY[0x1E69CFF10])
  {
    if (v9 != *MEMORY[0x1E69CFF08])
    {
      (*(v4 + 8))(v8, updated);
    }

    return 0;
  }

  return 2;
}

unint64_t MultiUserContextUpdater.dispatch(forScope:currentUserId:applyContextTo:)(uint64_t a1, int64_t a2, void (*a3)(uint64_t))
{
  v4 = MultiUserContextUpdater.contextUpdaters(forScope:currentUserId:)(a1, a2);
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_16:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ContextUpdater list was evaluated to be empty. Ignoring the context update.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of MultiUserContextUpdater.dispatch(forScope:currentUserId:applyContextTo:));
    outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5826798, &_sSS_SStMd, &_sSS_SStMR);
    return v16;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v7 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E12A1FE0](v7, v5);
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_11;
    }

LABEL_7:
    a3(v8);

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_12;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v5 + 8 * v7 + 32);

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:

  v10 = MEMORY[0x1E69E7CC0];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v10);
}

uint64_t MultiUserContextUpdater.applyContextUpdate(_:metadata:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21[2] = a1;
  v23 = MEMORY[0x1E69E7CC8];
  v21[3] = a2;
  v21[4] = &v23;
  v5 = (*(*v3 + 280))(a3, a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, partial apply for closure #1 in MultiUserContextUpdater.applyContextUpdate(_:metadata:scope:), v21);
  if (*(v5 + 16))
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = Dictionary.debugDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v7, v8, "Error while dispatching context: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v23;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v22);

    v15 = v22;
    v23 = v22;
  }

  else
  {

    v15 = v23;
  }

  (*(**(v4 + 232) + 168))(1, *(v15 + 16) != 0, *(v4 + 160), *(v4 + 168));
  if (!*(v15 + 16))
  {
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = MEMORY[0x1E12A1410](0x55747865746E6F43, 0xEE00726574616470);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithDomain:v17 code:-1 userInfo:isa];

  if (!v19)
  {
  }

  swift_willThrow();
}

uint64_t MultiUserContextUpdater.contextUpdaters(forScope:currentUserId:)(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v65 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v65 - v18;
  if (one-time initialization token for conversationBridge != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v20 = type metadata accessor for Logger();
    v68 = __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v71 = v7;
    if (v23)
    {
      break;
    }

    v32 = a1;
    if (!a1)
    {
      goto LABEL_33;
    }

LABEL_11:
    if (v32 == 1)
    {
      v33 = specialized Set.contains(_:)(a2, *(v3 + 240));
      v34 = *(v7 + 16);
      if (v33)
      {
        v34(v19, a2, v6);
        (*(v7 + 56))(v19, 0, 1, v6);
        v35 = MultiUserContextUpdater.contextUpdater(forUserId:)(v19);
        outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if (v35)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          result = swift_allocObject();
          *(result + 16) = xmmword_1DCA70640;
          *(result + 32) = v35;
          return result;
        }

        v34(v15, a2, v6);
        v45 = Logger.logObject.getter();
        v60 = v6;
        v47 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v45, v47))
        {

          (*(v7 + 8))(v15, v60);
          return MEMORY[0x1E69E7CC0];
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v72 = v49;
        *v48 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        (*(v7 + 8))(v15, v60);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v72);

        *(v48 + 4) = v64;
        v54 = "Could not find ContextUpdater for userId: %s";
      }

      else
      {
        v34(v12, a2, v6);
        v45 = Logger.logObject.getter();
        v46 = v6;
        v47 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v45, v47))
        {

          (*(v7 + 8))(v12, v46);
          return MEMORY[0x1E69E7CC0];
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v72 = v49;
        *v48 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        (*(v7 + 8))(v12, v46);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v72);

        *(v48 + 4) = v53;
        v54 = "Current userID: %s does not match any of the userIds in the known userIdSet. This is unexpected!";
      }

      _os_log_impl(&dword_1DC659000, v45, v47, v54, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1E12A2F50](v49, -1, -1);
      MEMORY[0x1E12A2F50](v48, -1, -1);

      return MEMORY[0x1E69E7CC0];
    }

    v67 = v6;
    v70 = v3;
    v37 = *(v3 + 248);
    v65[0] = MEMORY[0x1E69E7CC0];
    v72 = MEMORY[0x1E69E7CC0];
    v12 = (v37 + 56);
    v38 = 1 << *(v37 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v3 = v39 & *(v37 + 56);
    a2 = (v38 + 63) >> 6;
    v65[2] = v7 + 56;
    v66 = v7 + 16;
    v65[1] = v7 + 8;
    v68 = v37;

    v6 = 0;
    v7 = v71;
    v15 = v69;
    if (!v3)
    {
      goto LABEL_20;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v40 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v41 = v67;
        v42 = *(v7 + 16);
        v42(v15, *(v68 + 48) + *(v7 + 72) * (v40 | (v6 << 6)), v67);
        v42(v19, v15, v41);
        (*(v7 + 56))(v19, 0, 1, v41);
        a1 = MultiUserContextUpdater.contextUpdater(forUserId:)(v19);
        outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v43 = (*(v7 + 8))(v15, v41);
        if (a1)
        {
          break;
        }

        if (!v3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x1E12A1680](v43);
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65[0] = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v65[0] = v72;
    }

    while (v3);
LABEL_20:
    while (1)
    {
      v44 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v44 >= a2)
      {

        return v65[0];
      }

      v3 = *&v12[8 * v44];
      ++v6;
      if (v3)
      {
        v6 = v44;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v70 = v3;
  v66 = a2;
  v67 = v15;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = a1;
  v27 = v25;
  v72 = v25;
  *v24 = 136315138;
  v28 = v26;
  v29 = v12;
  if (v26)
  {
    if (v26 == 1)
    {
      v30 = 0x55746E6572727563;
    }

    else
    {
      v30 = 0x72657355656D6F68;
    }

    if (v26 == 1)
    {
      v31 = 0xEB00000000726573;
    }

    else
    {
      v31 = 0xE900000000000073;
    }
  }

  else
  {
    v31 = 0xE600000000000000;
    v30 = 0x6C61626F6C67;
  }

  v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v72);

  *(v24 + 4) = v55;
  _os_log_impl(&dword_1DC659000, v21, v22, "ContextUpdateScope received: %s", v24, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  MEMORY[0x1E12A2F50](v27, -1, -1);
  MEMORY[0x1E12A2F50](v24, -1, -1);

  v12 = v29;
  a2 = v66;
  v15 = v67;
  a1 = v28;
  v3 = v70;
  v7 = v71;
  v32 = a1;
  if (a1)
  {
    goto LABEL_11;
  }

LABEL_33:
  (*(v7 + 56))(v19, 1, 1, v6);
  v56 = MultiUserContextUpdater.contextUpdater(forUserId:)(v19);
  outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (v56)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1DCA70640;
    *(result + 32) = v56;
    return result;
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1DC659000, v57, v58, "Could not find shared contextUpdater instance", v59, 2u);
    MEMORY[0x1E12A2F50](v59, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t MultiUserContextUpdater.contextUpdater(forUserId:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for UserID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  outlined init with copy of UserID?(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.conversationBridge);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "Returning shared ContextUpdater instance since userId passed is nil", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    result = (*(*v2 + 208))();
    if (!result)
    {
      (*(v12 + 56))(v7, 1, 1, v11);
      v27 = MultiUserContextUpdater.addContextUpdater(forUserId:)(v7);
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      return v27;
    }
  }

  else
  {
    (*(v12 + 32))(v21, v10, v11);
    if (specialized Set.contains(_:)(v21, v2[30]))
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationBridge);
      v61 = *(v12 + 16);
      v61(v18, v21, v11);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v57 = v31;
        v59 = swift_slowAlloc();
        v62 = v59;
        *v31 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v12 + 16;
        v34 = v33;
        v58 = *(v12 + 8);
        v58(v18, v11);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v62);

        v36 = v57;
        *(v57 + 1) = v35;
        v37 = v36;
        _os_log_impl(&dword_1DC659000, v29, v30, "Returning a ContextUpdater instance for userId: %s", v36, 0xCu);
        v38 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1E12A2F50](v38, -1, -1);
        MEMORY[0x1E12A2F50](v37, -1, -1);

        v40 = v58;
      }

      else
      {

        v40 = *(v12 + 8);
        v39 = v40(v18, v11);
      }

      v51 = (*(*v2 + 184))(v39);
      if (*(v51 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v53 & 1) != 0))
      {
        v54 = *(*(v51 + 56) + 8 * v52);

        v40(v21, v11);

        return v54;
      }

      else
      {

        v61(v7, v21, v11);
        (*(v12 + 56))(v7, 0, 1, v11);
        v55 = MultiUserContextUpdater.addContextUpdater(forUserId:)(v7);
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v40(v21, v11);
        return v55;
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.conversationBridge);
      (*(v12 + 16))(v15, v21, v11);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = v61;
        *v44 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v48 = *(v12 + 8);
        v48(v15, v11);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v62);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_1DC659000, v42, v43, "Current userId: %s does not exist in known userSet", v44, 0xCu);
        v50 = v61;
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x1E12A2F50](v50, -1, -1);
        MEMORY[0x1E12A2F50](v44, -1, -1);

        v48(v21, v11);
      }

      else
      {

        v56 = *(v12 + 8);
        v56(v15, v11);
        v56(v21, v11);
      }

      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MultiUserContextUpdater.sharedContextUpdater.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 264);
}

uint64_t closure #1 in MultiUserContextUpdater.applyContextUpdate(_:metadata:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v25 = a2;
    v13 = swift_slowAlloc();
    v26 = a3;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    (*(*a1 + 360))();
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v11, v12, "Applying ContextUpdate for userId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v18 = v14;
    a3 = v26;
    MEMORY[0x1E12A2F50](v18, -1, -1);
    v19 = v13;
    a2 = v25;
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v20 = (*(*a1 + 416))(a2, a3);
  v21 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *a4;
  *a4 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v20, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v27);

  v23 = *a4;
  *a4 = v27;
}

uint64_t ContextUpdater.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, a1, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
}

uint64_t ContextUpdater.applyContextUpdate(_:metadata:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v6 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v73 - v10;
  v12 = type metadata accessor for Parse.DirectInvocation();
  v81 = *(v12 - 8);
  v13 = v81[8];
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v84 = MEMORY[0x1E69E7CC8];
  ContextUpdater.applySystemDialogActs(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs));
  ContextUpdater.applyNewTasks(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks));
  ContextUpdater.applyCompletedTasks(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks));
  v20 = *(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand);
  v78 = v19;
  if (v20)
  {
    v21 = v20;
    [v21 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
    if (swift_dynamicCast())
    {
      v22 = v82;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = (*(*v3 + 504))(v22, *(a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext));
  v24 = v81;
  v79 = v22;
  v80 = a2;
  if (v23)
  {
    v25 = v23;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.conversationBridge);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v73 = v12;
      v32 = v31;
      v83[0] = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v83);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DC659000, v28, v29, "Applied NativeFlowContext with error: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v36 = v32;
      v12 = v73;
      MEMORY[0x1E12A2F50](v36, -1, -1);
      v37 = v30;
      v22 = v79;
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    v24 = v81;
    swift_getErrorValue();
    v38 = Error.localizedDescription.getter();
    specialized Dictionary._Variant.updateValue(_:forKey:)(v38, v39, 0xD000000000000024, 0x80000001DCA7A680);

    a2 = v80;
  }

  ContextUpdater.applyRREntities(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_rrEntities));
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation, v11, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  if ((v24[6])(v11, 1, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  }

  else
  {
    v40 = v78;
    (v24[4])(v78, v11, v12);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.conversationBridge);
    v42 = v24[2];
    v43 = v75;
    v42(v75, v40, v12);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v83[0] = v81;
      *v46 = 136315138;
      LODWORD(v73) = v45;
      v42(v74, v43, v12);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      v50 = v24[1];
      v50(v43, v12);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v83);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1DC659000, v44, v73, "Applying Corrections donation: %s", v46, 0xCu);
      v52 = v81;
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x1E12A2F50](v52, -1, -1);
      v53 = v46;
      v40 = v78;
      MEMORY[0x1E12A2F50](v53, -1, -1);
    }

    else
    {

      v50 = v24[1];
      v50(v43, v12);
    }

    ContextUpdater.applyCorrectionsDonation(_:)(v40);
    v50(v40, v12);
    v22 = v79;
    a2 = v80;
  }

  ContextUpdater.applyPommesContext(_:)(a1 + OBJC_IVAR___SKRExecutionContextUpdate_pommesContext);
  v54 = *(a1 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId + 8);
  if (v54)
  {
    v55 = *(a1 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.conversationBridge);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = a2;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v83[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v83);
      _os_log_impl(&dword_1DC659000, v57, v58, "Restoring session snapshot to the past request %s. All past and future context updates for this request will be ignored.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      v62 = v60;
      a2 = v59;
      v22 = v79;
      MEMORY[0x1E12A2F50](v62, -1, -1);
    }

    v63 = v3[36];
    v3[35] = v55;
    v3[36] = v54;
  }

  ContextUpdater.applyRequestExecutedOnRemoteDevice(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice));
  ContextUpdater.flushSessionStateUpdates(metadata:)(a2);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.conversationBridge);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v83[0] = v68;
    *v67 = 136315138;
    (*(*v3 + 360))();
    v69 = String.init<A>(describing:)();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v83);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_1DC659000, v65, v66, "Done applying context for userId: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  return v84;
}

uint64_t ContextUpdater.applySystemDialogActs(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    v9 = *(v1 + 232);
    v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMR);
    v22[0] = a1;
    (*(v4 + 104))(v8, *MEMORY[0x1E69D07F0], v3);
    v10 = *(*v9 + 152);

    v10(v22, v8);
    (*(v4 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136315138;
      v16 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
      v17 = MEMORY[0x1E12A1700](a1, v16);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1DC659000, v12, v13, "Applied SDA: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }
  }

  else
  {
    v20 = *(v1 + 232);
    (*(v4 + 104))(v8, *MEMORY[0x1E69D07F0], v3, v6);
    (*(*v20 + 160))(v8);
    (*(v4 + 8))(v8, v3);
  }

  return 0;
}

uint64_t ContextUpdater.applyNewTasks(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*(a1 + 16))
    {
      swift_beginAccess();
      v8 = *(v1 + 264);
      *(v1 + 264) = a1;
      swift_bridgeObjectRetain_n();

      v9 = *(v1 + 232);
      v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      v18[0] = a1;
      (*(v4 + 104))(v7, *MEMORY[0x1E69D07B8], v3);
      (*(*v9 + 152))(v18, v7);
      (*(v4 + 8))(v7, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else
    {
      v10 = v1;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationBridge);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1DC659000, v12, v13, "Removing activeTasks as instructed by execution", v14, 2u);
        MEMORY[0x1E12A2F50](v14, -1, -1);
      }

      v15 = *(v10 + 232);
      (*(v4 + 104))(v7, *MEMORY[0x1E69D07B8], v3);
      (*(*v15 + 168))(v7);
      (*(v4 + 8))(v7, v3);
    }
  }

  return 0;
}

uint64_t ContextUpdater.applyCompletedTasks(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*(a1 + 16))
    {
      swift_beginAccess();
      v8 = *(v1 + 272);
      *(v1 + 272) = a1;
      swift_bridgeObjectRetain_n();

      v9 = *(v1 + 232);
      v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      v18[0] = a1;
      (*(v4 + 104))(v7, *MEMORY[0x1E69D07C8], v3);
      (*(*v9 + 152))(v18, v7);
      (*(v4 + 8))(v7, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else
    {
      v10 = v1;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationBridge);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1DC659000, v12, v13, "Removing executedTasks as instructed by execution", v14, 2u);
        MEMORY[0x1E12A2F50](v14, -1, -1);
      }

      v15 = *(v10 + 232);
      (*(v4 + 104))(v7, *MEMORY[0x1E69D07C8], v3);
      (*(*v15 + 168))(v7);
      (*(v4 + 8))(v7, v3);
    }
  }

  return 0;
}

uint64_t ContextUpdater.applyNativeFlowContext(_:emptyServerContext:)(id a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v51 - v9;
  if ((a2 & 1) == 0)
  {
    if (a1)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.conversationBridge);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v52 = v20;
        *v19 = 136315138;
        v21 = (*(*v3 + 264))();
        if (v21)
        {
          v22 = v21;
          v23 = [v21 debugDescription];

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
        }

        else
        {
          v26 = 0xE300000000000000;
          v24 = 7104878;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v52);

        *(v19 + 4) = v38;
        _os_log_impl(&dword_1DC659000, v17, v18, "Current NFCU cache is %s, Updating NativeFlowContextCommand cache with new one", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1E12A2F50](v20, -1, -1);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }

      goto LABEL_33;
    }

LABEL_14:
    v27 = (*(*v3 + 264))(v8);
    if (v27)
    {

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationBridge);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_24;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Received nil nativeFlowContextCommand from execution, but previously cached nativeFlowContextCommand during this request is not nil. Ignoring this update";
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.conversationBridge);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_24;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Both nativeFlowContextCommand cached as well as received from Execution are nil.";
    }

    _os_log_impl(&dword_1DC659000, v29, v30, v32, v31, 2u);
    MEMORY[0x1E12A2F50](v31, -1, -1);
LABEL_24:

    goto LABEL_37;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  v11 = (*(*v3 + 264))(v8.n128_f64[0]);
  if (v11)
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
      _os_log_impl(&dword_1DC659000, v13, v14, "Not applying an empty nativeFlowContextCommand since we already have a non-nil cached one", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    goto LABEL_34;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.conversationBridge);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1DC659000, v35, v36, "Applying an empty nativeFlowContextCommand", v37, 2u);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

LABEL_33:
  swift_beginAccess();
  v13 = v3[32];
  v3[32] = a1;
  a1 = a1;
LABEL_34:

  v39 = a1;
  v40 = [v39 promptContextProto];
  if (v40)
  {
    v41 = v40;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    outlined copy of Data._Representation(v42, v44);
    v45 = ContextUpdater.applyPromptContextProtoData(_:)(v10, v42, v44);

    outlined consume of Data._Representation(v42, v44);
    outlined consume of Data._Representation(v42, v44);
    goto LABEL_42;
  }

LABEL_37:
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.conversationBridge);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1DC659000, v47, v48, "Either NativeFlowContextUpdate or PromptContextProtoData is nil", v49, 2u);
    MEMORY[0x1E12A2F50](v49, -1, -1);
  }

  v45 = ContextUpdater.applyPromptContextProtoData(_:)(v10, 0, 0xF000000000000000);
LABEL_42:
  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  return v45;
}

void *ContextUpdater.finalNativeFlowContextCommand.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 256);
  v2 = v1;
  return v1;
}

uint64_t ContextUpdater.applyPromptContextProtoData(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for BinaryDecodingOptions();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  if (a3 >> 60 == 15)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "PromptContextProtoData is nil", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v25 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    ContextUpdater.applyLegacyNLContext(_:)(v10);
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    (*(v14 + 56))(a1, 1, 1, v13);
  }

  else
  {
    v45 = v3;
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    outlined copy of Data?(a2, a3);
    outlined copy of Data._Representation(a2, a3);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
    v44 = a2;
    Message.init(serializedData:extensions:partial:options:)();
    v43 = a1;
    v26 = Com_Apple_Siri_Product_Proto_PromptContext.domainHints.getter();
    (*(*v45 + 392))(v26);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);
    (*(v14 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = v30;
      v42 = swift_slowAlloc();
      *&v46[0] = v42;
      *v30 = 136315138;
      v31 = Message.debugDescription.getter();
      v33 = v32;
      (*(v14 + 8))(v17, v13);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v46);

      v35 = v41;
      *(v41 + 1) = v34;
      v36 = v35;
      _os_log_impl(&dword_1DC659000, v28, v29, "Deserialized PromptContextProto: %s", v35, 0xCu);
      v37 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    Com_Apple_Siri_Product_Proto_PromptContext.toLegacyNLContext()(v10);
    v38 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
    ContextUpdater.applyLegacyNLContext(_:)(v10);
    outlined consume of Data?(v44, a3);
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v39 = v43;
    (*(v14 + 32))(v43, v20, v13);
    (*(v14 + 56))(v39, 0, 1, v13);
  }

  return 0;
}

uint64_t ContextUpdater.applyLegacyNLContext(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v19 = v18;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  if ((*(v19 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v20 = *(v1 + 232);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D07E8], v3);
    (*(*v20 + 160))(v7);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v19 + 32))(v17, v11, v12);
    v21 = *(v1 + 232);
    v39[3] = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
    v23 = *(v19 + 16);
    v23(boxed_opaque_existential_0, v17, v12);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D07E8], v3);
    (*(*v21 + 152))(v39, v7);
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.conversationBridge);
    v25 = v38;
    v23(v38, v17, v12);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136315138;
      lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext, MEMORY[0x1E69D0B30]);
      v30 = Message.debugDescription.getter();
      v32 = v31;
      v33 = *(v19 + 8);
      v33(v25, v12);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v39);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1DC659000, v26, v27, "Applied LegacyNLContext: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v28, -1, -1);

      v33(v17, v12);
    }

    else
    {

      v35 = *(v19 + 8);
      v35(v25, v12);
      v35(v17, v12);
    }
  }

  return 0;
}

void ContextUpdater.applyRREntities(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  if (a1)
  {
    if (*(a1 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMR);
      v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR) - 8);
      v8 = *(*v7 + 72);
      v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1DCA66060;
      v11 = v10 + v9;
      v12 = (v11 + v7[14]);
      v13 = *MEMORY[0x1E69D0818];
      v14 = type metadata accessor for ConversationSessionKey();
      (*(*(v14 - 8) + 104))(v11, v13, v14);
      v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      *v12 = a1;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_ypSgTt0g5Tf4g_n(v10);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
      swift_deallocClassInstance();
      ContextUpdater.updateSessionState(withData:)();

      v15 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
      v16 = type metadata accessor for RRFilter();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a1;

      dispatch thunk of ReferenceResolutionClientProtocol.siriMentioned(entities:configuration:completion:)();

      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
    }
  }
}

uint64_t sub_1DC70EE08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC70EE40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ContextUpdater.updateSessionState(withData:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for UserID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 360))(v8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    return dispatch thunk of ConversationSessionState.updateSharedValues(data:)();
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    v13 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    dispatch thunk of ConversationSessionState.updateValues(data:userId:)();
    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t ContextUpdater.applyPommesContext(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for PommesContext();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v23 = v22;
  v25 = v24;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v12, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if ((*(v25 + 48))(v12, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v26 = *(v2 + 232);
    (*(v5 + 104))(v8, *MEMORY[0x1E69D07D0], v4);
    (*(*v26 + 160))(v8);
    (*(v5 + 8))(v8, v4);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "No PommesContext found", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }
  }

  else
  {
    (*(v25 + 32))(v21, v12, v23);
    v31 = PommesContext.isWithinMaxSize()();
    v32 = *(v2 + 232);
    v33 = v21;
    if (v31)
    {
      v59[3] = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
      v57 = v25;
      v35 = *(v25 + 16);
      v35(boxed_opaque_existential_0, v21, v23);
      (*(v5 + 104))(v8, *MEMORY[0x1E69D07D0], v4);
      (*(*v32 + 152))(v59, v8);
      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.conversationBridge);
      v37 = v58;
      v35(v58, v21, v23);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v59[0] = v41;
        *v40 = 136315138;
        v42 = PommesContext.description.getter();
        v44 = v43;
        v45 = v37;
        v46 = *(v57 + 8);
        v46(v45, v23);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v59);

        *(v40 + 4) = v47;
        _os_log_impl(&dword_1DC659000, v38, v39, "Applied PommesContext: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1E12A2F50](v41, -1, -1);
        MEMORY[0x1E12A2F50](v40, -1, -1);

        v46(v33, v23);
      }

      else
      {

        v55 = *(v57 + 8);
        v55(v37, v23);
        v55(v33, v23);
      }
    }

    else
    {
      (*(v5 + 104))(v8, *MEMORY[0x1E69D07D0], v4);
      (*(*v32 + 160))(v8);
      (*(v5 + 8))(v8, v4);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.conversationBridge);
      (*(v25 + 16))(v18, v21, v23);
      v49 = Logger.logObject.getter();
      v50 = v25;
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        v53 = PommesContext.contextSize()();
        v54 = *(v50 + 8);
        v54(v18, v23);
        *(v52 + 4) = v53;
        _os_log_impl(&dword_1DC659000, v49, v51, "Not updating PommesContext (size: %ld because it is larger than the max allowed size", v52, 0xCu);
        MEMORY[0x1E12A2F50](v52, -1, -1);
      }

      else
      {
        v54 = *(v50 + 8);
        v54(v18, v23);
      }

      v54(v33, v23);
    }
  }

  return 0;
}

void SessionStateContextKeysManager.removeKeyIfNotUpdated(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SessionStateContextKeysManager.removeKeyIfNotUpdated(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v16;
  swift_beginAccess();
  v17 = *(a1 + 24);
  if (*(v17 + 16))
  {
    v18 = *(a1 + 24);

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v20)
    {
      outlined init with copy of Any(*(v17 + 56) + 32 * v19, v47);

      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.conversationBridge);
      v22 = v5[2];
      v22(v8, a2, v4);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v47[0] = v46;
        *v25 = 136315138;
        v22(v48, v8, v4);
        v26 = String.init<A>(describing:)();
        v28 = v27;
        (v5[1])(v8, v4);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v47);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1DC659000, v23, v24, "Not deleting key: %s because it is already updated in the current request", v25, 0xCu);
        v30 = v46;
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x1E12A2F50](v30, -1, -1);
        v31 = v25;
LABEL_12:
        MEMORY[0x1E12A2F50](v31, -1, -1);

        return;
      }

      (v5[1])(v8, v4);
      return;
    }
  }

  memset(v47, 0, sizeof(v47));
  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  v32 = v5[2];
  v32(v14, a2, v4);
  swift_beginAccess();
  v33 = v48;
  specialized Set._Variant.insert(_:)(v48, v14);
  v34 = v5[1];
  v46 = v5 + 1;
  v34(v33, v4);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.conversationBridge);
  v32(v11, a2, v4);
  v23 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v36))
  {
    v37 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v47[0] = v45;
    *v37 = 136315138;
    v38 = v34;
    v32(v48, v11, v4);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    v38(v11, v4);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v47);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_1DC659000, v23, v36, "StateKey: %s marked for removal from SessionState", v37, 0xCu);
    v43 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1E12A2F50](v43, -1, -1);
    v31 = v37;
    goto LABEL_12;
  }

  v34(v11, v4);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConversationSessionKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for IntentTopic();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

void ContextUpdater.applyRequestExecutedOnRemoteDevice(_:)(char a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = *(v1 + 232);
    v14[3] = MEMORY[0x1E69E6370];
    LOBYTE(v14[0]) = 1;
    (*(v4 + 104))(v8, *MEMORY[0x1E69D0808], v3, v6);
    (*(*v9 + 152))(v14, v8);
    (*(v4 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = 1;
      _os_log_impl(&dword_1DC659000, v11, v12, "#ContextUpdater: Saving to SessionState executedOnRemoteDevice:%{BOOL}d", v13, 8u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }
}

uint64_t ContextUpdater.flushSessionStateUpdates(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v98 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v98 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v98 - v21;
  v23 = *(v2 + 288);
  if (v23)
  {
    v24 = *(v2 + 280);
    v25 = one-time initialization token for conversationBridge;
    v26 = *(v2 + 288);

    if (v25 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_3;
  }

  v109 = v15;
  v112 = v8;
  v100 = v22;
  v107 = v11;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = __swift_project_value_buffer(v34, static Logger.conversationBridge);

  v98[2] = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v38 = os_log_type_enabled(v36, v37);
  v113 = v4;
  v98[1] = v19;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v118 = v114;
    *v39 = 136315394;
    (*(*v2 + 360))();
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v118);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    updated = ConversationContextUpdateMetadata.description.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(updated, v44, &v118);

    *(v39 + 14) = v45;
    v4 = v113;
    _os_log_impl(&dword_1DC659000, v36, v37, "Flushing all context updates to SessionState for userId: %s. metadata: %s", v39, 0x16u);
    v46 = v114;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v46, -1, -1);
    MEMORY[0x1E12A2F50](v39, -1, -1);
  }

  v47 = v112;
  v48 = (*(**(v2 + 232) + 176))(a1);
  v99 = v2;
  ContextUpdater.updateSessionState(withData:)();
  v122 = 0;
  v123 = 0xE000000000000000;
  v24 = v48 + 64;
  v49 = 1 << *(v48 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v2 = v50 & *(v48 + 64);
  v120 = 0;
  v121 = 0xE000000000000000;
  v23 = (v49 + 63) >> 6;
  v104 = v5 + 16;
  v114 = (v5 + 32);
  v108 = v5;
  v110 = (v5 + 8);
  v106 = v48;

  *&v111 = 0;
  v101 = 0;
  v51 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  v102 = 0xE000000000000000;
  v105 = v18;
  v103 = v48 + 64;
  if (!v2)
  {
    goto LABEL_19;
  }

  do
  {
    while (1)
    {
      v53 = v51;
LABEL_27:
      v56 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v57 = v56 | (v53 << 6);
      v58 = v106;
      v59 = v108;
      v60 = v107;
      (*(v108 + 16))(v107, *(v106 + 48) + *(v108 + 72) * v57, v4);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v58 + 56) + 32 * v57, &v118, &_sypSgMd, &_sypSgMR);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
      v62 = v4;
      v63 = v109;
      v64 = &v109[*(v61 + 48)];
      (*(v59 + 32))(v109, v60, v62);
      v65 = v119;
      *v64 = v118;
      *(v64 + 1) = v65;
      (*(*(v61 - 8) + 56))(v63, 0, 1, v61);
      v47 = v112;
      v18 = v105;
      v24 = v103;
LABEL_28:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v63, v18, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMR);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
      if ((*(*(v66 - 8) + 48))(v18, 1, v66) == 1)
      {

        v72 = v122;
        v71 = v123;
        v73 = v120;
        v74 = v121;
        v75 = v99;

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *&v118 = v114;
          *v78 = 136381443;
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, &v118);

          *(v78 + 4) = v79;
          *(v78 + 12) = 2080;
          v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v118);

          *(v78 + 14) = v80;
          *(v78 + 22) = 2080;
          *(v78 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v75 + 144), *(v75 + 152), &v118);
          *(v78 + 32) = 2080;
          (*(*v75 + 360))();
          v81 = String.init<A>(describing:)();
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v118);

          *(v78 + 34) = v83;
          _os_log_impl(&dword_1DC659000, v76, v77, "Flushed keysToAdd: [%{private}s] and keysToRemove: [%s] for assistantId: %s, userId: %s", v78, 0x2Au);
          v84 = v114;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v84, -1, -1);
          MEMORY[0x1E12A2F50](v78, -1, -1);
        }

        else
        {
        }

        v85 = v75;
        v86 = (*(*v75 + 264))();
        v87 = v86;
        v88 = v113;
        v89 = v108;
        if (v86)
        {
          v86 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
        }

        else
        {
          *(&v118 + 1) = 0;
          *&v119 = 0;
        }

        *&v118 = v87;
        *(&v119 + 1) = v86;
        v90 = *(v89 + 104);
        v91 = v107;
        v90(v107, *MEMORY[0x1E69D0800], v88);
        ContextUpdater.updateSessionState(withValue:forKey:)();
        v92 = *(v89 + 8);
        v92(v91, v88);
        v93 = outlined destroy of ReferenceResolutionClientProtocol?(&v118, &_sypSgMd, &_sypSgMR);
        v94 = (*(*v85 + 288))(v93);
        v95 = (*(*v85 + 312))();
        v96 = type metadata accessor for AnnounceContext();
        v97 = swift_allocObject();
        *(v97 + 16) = v94;
        *(v97 + 24) = v95;
        *(&v119 + 1) = v96;
        *&v118 = v97;
        v90(v91, *MEMORY[0x1E69D07E0], v88);
        ContextUpdater.updateSessionState(withValue:forKey:)();
        v92(v91, v88);
        return outlined destroy of ReferenceResolutionClientProtocol?(&v118, &_sypSgMd, &_sypSgMR);
      }

      v67 = &v18[*(v66 + 48)];
      v4 = v113;
      (*v114)(v47, v18, v113);
      v68 = *(v67 + 1);
      v118 = *v67;
      v119 = v68;
      if (!*(&v68 + 1))
      {
        goto LABEL_17;
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(&v118, &v115, &_sypSgMd, &_sypSgMR);
      if (v116)
      {
        break;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(&v115, &_sypSgMd, &_sypSgMR);
LABEL_17:
      v117[0] = v111;
      v52 = ConversationSessionKey.rawValue.getter();
      MEMORY[0x1E12A1580](v52);

      MEMORY[0x1E12A1580](*&v117[0], *(&v117[0] + 1));

      (*v110)(v47, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(&v118, &_sypSgMd, &_sypSgMR);
      *(&v111 + 1) = 0xE200000000000000;
      *&v111 = 8236;
      if (!v2)
      {
        goto LABEL_19;
      }
    }

    outlined init with take of Any(&v115, v117);
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    MEMORY[0x1E12A1580](v101, v102);

    v69 = ConversationSessionKey.rawValue.getter();
    MEMORY[0x1E12A1580](v69);
    v47 = v112;

    v102 = 0xE200000000000000;
    MEMORY[0x1E12A1580](8250, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1E12A1580](v115, *(&v115 + 1));
    v4 = v113;

    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    (*v110)(v47, v4);
    outlined destroy of ReferenceResolutionClientProtocol?(&v118, &_sypSgMd, &_sypSgMR);
    v101 = 8236;
  }

  while (v2);
LABEL_19:
  if (v23 <= v51 + 1)
  {
    v54 = v51 + 1;
  }

  else
  {
    v54 = v23;
  }

  v55 = v54 - 1;
  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v23)
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
      v63 = v109;
      (*(*(v70 - 8) + 56))(v109, 1, 1, v70);
      v2 = 0;
      v51 = v55;
      goto LABEL_28;
    }

    v2 = *(v24 + 8 * v53);
    ++v51;
    if (v2)
    {
      v51 = v53;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_42:
  swift_once();
LABEL_3:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.conversationBridge);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v118 = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v118);
    _os_log_impl(&dword_1DC659000, v28, v29, "Not flushing state since snapshot from request %s was requested.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  v32 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  dispatch thunk of ConversationSessionState.restoreSnapshot(requestId:)();
}

uint64_t ConversationContextUpdateMetadata.description.getter()
{
  _StringGuts.grow(_:)(169);
  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7F8E0);
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0x736575716572202CLL, 0xEF203A6570795474);
  v3 = RequestType.rawValue.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA7F900);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14FlowPluginInfoCSgMd, &_s14SiriKitRuntime14FlowPluginInfoCSgMR);
  v5 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v5);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA7F920);
  type metadata accessor for UserID();
  lazy protocol witness table accessor for type UserID and conformance UserID();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v6);

  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7F940);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v7, v8);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA7F960);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v9, v10);

  MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA7F980);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v11, v12);

  MEMORY[0x1E12A1580](93, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type UserID and conformance UserID()
{
  result = lazy protocol witness table cache variable for type UserID and conformance UserID;
  if (!lazy protocol witness table cache variable for type UserID and conformance UserID)
  {
    type metadata accessor for UserID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserID and conformance UserID);
  }

  return result;
}

uint64_t SessionStateContextKeysManager.provideKeysToFlush(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v38 - v10;
  v12 = type metadata accessor for RequestType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, *MEMORY[0x1E69D0538], v12, v15);
  lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v41[0] == v39 && v41[1] == v40)
  {
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v13 + 8))(v17, v12);

    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v20 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo);
  if (!v20)
  {
LABEL_9:
    if (*(a1 + 16) != 1)
    {
LABEL_23:
      v22 = *(v2 + 16);
      MEMORY[0x1EEE9AC00](v18);
      v38[-2] = partial apply for closure #1 in SessionStateContextKeysManager.provideKeysToFlushForOnDeviceRequest();
      v38[-1] = v2;
      os_unfair_lock_lock(v22 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v41);
      goto LABEL_26;
    }

    type metadata accessor for ServerFallbackDisablingUtils();
    inited = swift_initStackObject();
    v25 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
    inited[2] = v25;
    inited[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
    inited[4] = 0;
    v26 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v27 = type metadata accessor for ServerFallbackReason();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    if (one-time initialization token for fallbackDisabledOverride != -1)
    {
      swift_once();
    }

    v28 = static ServerFallbackDisablingUtils.fallbackDisabledOverride;
    os_unfair_lock_lock(static ServerFallbackDisablingUtils.fallbackDisabledOverride + 5);
    os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v28 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      if ((specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(0, v11, v7) & 1) == 0)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v31 = outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        goto LABEL_25;
      }

      v30 = [objc_opt_self() sharedPreferences];
      LOBYTE(os_unfair_lock_opaque_low) = [v30 shouldDisableServerFallbackDomain];
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v31 = outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (os_unfair_lock_opaque_low)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.conversationBridge);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DC659000, v33, v34, "Not flushing local context for server fallback request: Server fallback is disabled.", v35, 2u);
        MEMORY[0x1E12A2F50](v35, -1, -1);
      }

      goto LABEL_23;
    }

LABEL_25:
    v22 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v31);
    v38[-2] = partial apply for closure #1 in SessionStateContextKeysManager.provideKeysToFlushForServerFallbackRequest();
    v38[-1] = v2;
    os_unfair_lock_lock(v22 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v41);
    goto LABEL_26;
  }

  v21 = *(v20 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL);
  v22 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v18);
  if (v23 == 1)
  {
    v38[-2] = closure #1 in SessionStateContextKeysManager.provideKeysToFlushForOnDeviceRequest()partial apply;
  }

  else
  {
    v38[-2] = closure #1 in SessionStateContextKeysManager.provideKeysToFlushForServerFallbackRequest()partial apply;
  }

  v38[-1] = v1;
  os_unfair_lock_lock(v22 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v41);
LABEL_26:
  os_unfair_lock_unlock(v22 + 4);
  v36 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v41[0]);

  return v36;
}

uint64_t closure #1 in SessionStateContextKeysManager.provideKeysToFlushForOnDeviceRequest()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  swift_beginAccess();
  v12 = *(a1 + 24);

  v14 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

  v18 = v14;
  swift_beginAccess();
  v17 = *(a1 + 32);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D07E8], v4);

  specialized Set._Variant.insert(_:)(v11, v8);
  (*(v5 + 8))(v11, v4);
  specialized Sequence.forEach(_:)(v17, &v18);

  *a2 = v18;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for ConversationSessionKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69D0820], &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v34 = a1;
  v6 = type metadata accessor for IntentTopic();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69CFD68], &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v34 = a1;
  v6 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69D00D0], &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0]);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v34 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v33 = a1;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69D08C8], &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v48 = a1;
  v49 = v6 + 16;
  v47 = v6;
  v42 = (v6 + 8);

  v14 = 0;
  v43 = v13;
  v44 = a1 + 56;
  v45 = a2;
  v46 = v4;
  while (v12)
  {
LABEL_11:
    v19 = *(v47 + 72);
    v20 = *(v47 + 16);
    v20(v8, *(v48 + 48) + v19 * (__clz(__rbit64(v12)) | (v14 << 6)), v4);
    v21 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v8;
    v24 = isUniquelyReferenced_nonNull_native;
    v25 = *a2;
    v52 = v25;
    v26 = v23;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
    v29 = v25[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v25[3] >= v31)
    {
      if ((v24 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }

      v8 = v26;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v24);
      v8 = v26;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_25;
      }

      v28 = v33;
    }

    v35 = v52;
    if (v32)
    {
      v15 = (v52[7] + 32 * v28);
      v16 = v15[1];
      v50 = *v15;
      v51 = v16;
      *v15 = 0u;
      v15[1] = 0u;
      v4 = v46;
    }

    else
    {
      v52[(v28 >> 6) + 8] |= 1 << v28;
      v4 = v46;
      v20((v35[6] + v28 * v19), v8, v46);
      v36 = (v35[7] + 32 * v28);
      *v36 = 0u;
      v36[1] = 0u;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_24;
      }

      v35[2] = v39;
      v50 = 0uLL;
      *&v51 = 0;
      *(&v51 + 1) = 1;
    }

    v12 &= v12 - 1;
    v17 = v45;
    *v45 = v35;
    a2 = v17;
    outlined destroy of ReferenceResolutionClientProtocol?(&v50, &_ss8Sendable_pSgSgMd, &_ss8Sendable_pSgSgMR);
    (*v42)(v8, v4);
    v13 = v43;
    v9 = v44;
  }

  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
    }

    v12 = *(v9 + 8 * v18);
    ++v14;
    if (v12)
    {
      v14 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t ContextUpdater.updateSessionState(withValue:forKey:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for UserID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 360))(v8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    return dispatch thunk of ConversationSessionState.updateSharedValue(_:forKey:)();
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    v13 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    dispatch thunk of ConversationSessionState.updateValue(_:forKey:userId:)();
    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t ContextUpdater.finalActiveTasks.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 264);
}

uint64_t ContextUpdater.finalExecutedTasks.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 272);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v34 = v56;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v50 & 1);
      v35 = *v34;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v16 = v11;
LABEL_14:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v50[0] = *v19;
    v50[1] = v20;
    v50[2] = v21;

    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v32 = v51;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, v46 & 1);
      v33 = *v32;
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = specialized Set.union<A>(_:)(v24, v12);

      v14 = v36[7];
      v15 = *(v14 + 8 * v27);
      *(v14 + 8 * v27) = v13;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v16;
    v6 = v43;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logContextFlowSubmitted(contextUpdateReceived:contextUpdateError:requestId:)(Swift::Bool contextUpdateReceived, Swift::Bool contextUpdateError, Swift::String requestId)
{
  object = requestId._object;
  countAndFlagsBits = requestId._countAndFlagsBits;
  v8 = [objc_allocWithZone(MEMORY[0x1E69CF328]) init];
  if (v8)
  {
    v15 = v8;
    [v8 setContextUpdateError:contextUpdateError];
    [v15 setContextUpdateReceived:contextUpdateReceived];
    v9 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(countAndFlagsBits, object, 0, 0, 0);
    if (v9)
    {
      v10 = v9;
      [v9 setContextSubmissionMessage:v15];
      [*(v3 + 16) emitMessage_];

      v11 = v10;
      goto LABEL_9;
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
    v15 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v15, v13, "Failed to create ORCHSchemaORCHConversationContextSubmitted event", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }
  }

  v11 = v15;
LABEL_9:
}

uint64_t objectdestroy_44Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t AceServiceInvokerImpl._submitAllSerialExecute(_:)()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = AceServiceInvokerImpl._submitAllSerialExecute(_:);
  }

  else
  {

    v4 = AceServiceInvokerImpl._submitAllSerialExecute(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 112);
  *(v0 + 64) = v1;
  v2 = *(v0 + 104);
  v3 = v1;
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);

    v6 = *(v0 + 40);
    specialized static AceServiceInvokerImpl.genericErrorLogger(originalCommand:error:)(v6, *(v0 + 48));
    swift_willThrow();

    v7 = *(*(v5 + 160) + 16);
    os_unfair_lock_lock(v7 + 6);
    closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(v29);
    os_unfair_lock_unlock(v7 + 6);
  }

  else
  {

    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 112);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.ace);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 112);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v17 = *(v0 + 16);
      v16 = *(v0 + 24);
      v18 = *(v0 + 32);
      v19 = Error.localizedDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v29);

      *(v14 + 4) = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v22 = *(v0 + 112);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    swift_willThrow();
    v25 = *(*(v23 + 160) + 16);
    os_unfair_lock_lock(v25 + 6);
    closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(v29);
    os_unfair_lock_unlock(v25 + 6);
    v26 = *(v0 + 112);
  }

  v27 = *(v0 + 8);

  return v27();
}

void AceServiceInvokerImpl._submitAllSerialExecute(_:)()
{
  v11 = v0;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.ace);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "AceServiceInvoker successfully submitted all commands serially", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];

  v8 = *(*(v6 + 160) + 16);
  os_unfair_lock_lock(v8 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v10);
  os_unfair_lock_unlock(v8 + 6);
  if (!v5)
  {

    v9 = v0[1];

    v9();
  }
}

uint64_t protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)(a1, a2);
}

uint64_t AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for RequestSummary.ExecutionSource();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for TemplatingText();
  v3[25] = v9;
  v10 = *(v9 - 8);
  v3[26] = v10;
  v11 = *(v10 + 64) + 15;
  v3[27] = swift_task_alloc();
  v12 = type metadata accessor for TemplatingSection();
  v3[28] = v12;
  v13 = *(v12 - 8);
  v3[29] = v13;
  v14 = *(v13 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v15 = type metadata accessor for TemplatingResult();
  v3[41] = v15;
  v16 = *(v15 - 8);
  v3[42] = v16;
  v17 = *(v16 + 64) + 15;
  v3[43] = swift_task_alloc();
  v18 = type metadata accessor for DialogEngineOutput();
  v3[44] = v18;
  v19 = *(v18 - 8);
  v3[45] = v19;
  v20 = *(v19 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:), 0, 0);
}

char *AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)()
{
  v416 = v0;
  super_class = v0[23].super_class;
  receiver = v0[22].receiver;
  v3 = v0[22].super_class;
  v4 = *(v3 + 2);
  v4(super_class, v0[8].receiver, receiver);
  v5 = (*(v3 + 11))(super_class, receiver);
  v414 = v0;
  if (v5 == *MEMORY[0x1E69CFF20])
  {
    v6 = v0[23].super_class;
    v8 = v0[21].receiver;
    v7 = v0[21].super_class;
    v9 = v0[20].super_class;
    (*(v0[22].super_class + 12))(v6, v0[22].receiver);
    v8[4](v7, v6, v9);
    v10 = TemplatingResult.sections.getter();
    v11 = *(v10 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v13 = 0;
      v14 = v0[14].super_class;
      v399 = v14 + 16;
      v15 = (v14 + 32);
      v405 = *(v10 + 16);
      while (v13 < *(v10 + 16))
      {
        v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v17 = *(v14 + 9);
        (*(v14 + 2))(v414[20].receiver, v10 + v16 + v17 * v13, v414[14].receiver);
        v18 = TemplatingSection.spokenOnly.getter();
        v19 = v414;
        v20 = v414[20].receiver;
        if (v18)
        {
          v21 = *v15;
          (*v15)(v414[19].super_class, v414[20].receiver, v414[14].receiver);
          v415[0] = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1);
            v19 = v414;
            v12 = v415[0];
          }

          v23 = v12[2];
          v22 = v12[3];
          if (v23 >= v22 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
            v19 = v414;
            v12 = v415[0];
          }

          v24 = v19[19].super_class;
          v25 = v19[14].receiver;
          v12[2] = v23 + 1;
          v15 = (v14 + 32);
          v21((v12 + v16 + v23 * v17), v24, v25);
          v11 = v405;
        }

        else
        {
          (*(v14 + 1))(v414[20].receiver, v414[14].receiver);
        }

        if (v11 == ++v13)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
    }

    else
    {
      v19 = v0;
LABEL_39:

      v59 = v12[2];
      if (v59)
      {
        v60 = v19[14].super_class;
        v61 = v19[13].receiver;
        v415[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
        v62 = v12;
        v19 = v414;
        v63 = v415[0];
        v64 = *(v60 + 2);
        v60 = (v60 + 16);
        v65 = v62 + ((*(v60 + 64) + 32) & ~*(v60 + 64));
        v394 = *(v60 + 7);
        v400 = v64;
        v389 = (v61 + 8);
        v385 = (v60 - 8);
        do
        {
          v66 = v19[19].receiver;
          v67 = v19[13].super_class;
          v68 = v19[14].receiver;
          v69 = v19[12].super_class;
          v400(v66, v65, v68);
          TemplatingSection.content.getter();
          v70 = TemplatingText.text.getter();
          v72 = v71;
          (*v389)(v67, v69);
          (*v385)(v66, v68);
          v415[0] = v63;
          v74 = *(v63 + 16);
          v73 = *(v63 + 24);
          if (v74 >= v73 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1);
            v63 = v415[0];
          }

          *(v63 + 16) = v74 + 1;
          v75 = v63 + 16 * v74;
          *(v75 + 32) = v70;
          *(v75 + 40) = v72;
          v65 += v394;
          --v59;
          v19 = v414;
        }

        while (v59);
      }

      else
      {

        v63 = MEMORY[0x1E69E7CC0];
      }

      v76 = v19[21].super_class;
      v19[6].receiver = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v77 = BidirectionalCollection<>.joined(separator:)();
      v378 = v78;
      v380 = v77;

      v79 = TemplatingResult.sections.getter();
      v12 = v79;
      v11 = *(v79 + 16);
      v80 = MEMORY[0x1E69E7CC0];
      if (!v11)
      {
LABEL_57:

        v92 = *(v80 + 16);
        if (v92)
        {
          v93 = v19[14].super_class;
          v94 = v19[13].receiver;
          v415[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 0);
          v19 = v414;
          v95 = v415[0];
          v96 = *(v93 + 2);
          v93 = (v93 + 16);
          v97 = v80 + ((*(v93 + 64) + 32) & ~*(v93 + 64));
          v395 = *(v93 + 7);
          v401 = v96;
          v386 = (v93 - 8);
          v390 = (v94 + 8);
          do
          {
            v98 = v19[19].receiver;
            v100 = v19[13].super_class;
            v99 = v19[14].receiver;
            v101 = v19[12].super_class;
            v401(v98, v97, v99);
            TemplatingSection.content.getter();
            v102 = TemplatingText.text.getter();
            v104 = v103;
            (*v390)(v100, v101);
            (*v386)(v98, v99);
            v415[0] = v95;
            v106 = *(v95 + 16);
            v105 = *(v95 + 24);
            if (v106 >= v105 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
              v95 = v415[0];
            }

            *(v95 + 16) = v106 + 1;
            v107 = v95 + 16 * v106;
            *(v107 + 32) = v102;
            *(v107 + 40) = v104;
            v97 += v395;
            --v92;
            v19 = v414;
          }

          while (v92);
        }

        else
        {

          v95 = MEMORY[0x1E69E7CC0];
        }

        v108 = v19[21].super_class;
        v19[6].super_class = v95;
        v11 = v19;
        v387 = BidirectionalCollection<>.joined(separator:)();
        v377 = v109;

        v12 = TemplatingResult.sections.getter();
        v110 = v12[2];
        v111 = MEMORY[0x1E69E7CC0];
        if (!v110)
        {
LABEL_75:

          v122 = *(v111 + 16);
          if (v122)
          {
            v123 = v19[14].super_class;
            v124 = v19[13].receiver;
            v415[0] = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122, 0);
            v19 = v414;
            v125 = v415[0];
            v126 = *(v123 + 2);
            v123 = (v123 + 16);
            v127 = v111 + ((*(v123 + 64) + 32) & ~*(v123 + 64));
            v396 = *(v123 + 7);
            v402 = v126;
            v128 = (v124 + 48);
            v391 = (v124 + 8);
            v129 = (v123 - 8);
            do
            {
              v130 = v19;
              v131 = v19[12].receiver;
              v132 = v19[12].super_class;
              v402(v19[16].super_class, v127, v19[14].receiver);
              TemplatingSection.redactedContent.getter();
              if ((*v128)(v131, 1, v132) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v19[12].receiver, &_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
                v133 = 0;
                v134 = 0xE000000000000000;
              }

              else
              {
                v135 = v19[12].receiver;
                v136 = v130[12].super_class;
                v133 = TemplatingText.text.getter();
                v134 = v137;
                (*v391)(v135, v136);
              }

              v19 = v130;
              (*v129)(v130[16].super_class, v130[14].receiver);
              v415[0] = v125;
              v139 = *(v125 + 16);
              v138 = *(v125 + 24);
              if (v139 >= v138 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1);
                v19 = v414;
                v125 = v415[0];
              }

              *(v125 + 16) = v139 + 1;
              v140 = v125 + 16 * v139;
              *(v140 + 32) = v133;
              *(v140 + 40) = v134;
              v127 += v396;
              --v122;
            }

            while (v122);
          }

          else
          {

            v125 = MEMORY[0x1E69E7CC0];
          }

          v141 = v19[21].super_class;
          v19[7].receiver = v125;
          v11 = v19;
          v142 = BidirectionalCollection<>.joined(separator:)();
          v375 = v143;
          v376 = v142;

          v12 = TemplatingResult.sections.getter();
          v144 = v12[2];
          v145 = MEMORY[0x1E69E7CC0];
          if (!v144)
          {
LABEL_96:

            v157 = *(v145 + 16);
            if (v157)
            {
              v158 = v19[14].super_class;
              v159 = v19[13].receiver;
              v415[0] = MEMORY[0x1E69E7CC0];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v157, 0);
              v19 = v414;
              v160 = v415[0];
              v161 = *(v158 + 2);
              v158 = (v158 + 16);
              v162 = v145 + ((*(v158 + 64) + 32) & ~*(v158 + 64));
              v397 = *(v158 + 7);
              v403 = v161;
              v163 = (v159 + 48);
              v392 = (v159 + 8);
              v164 = (v158 - 8);
              do
              {
                v165 = v19;
                v166 = v19[12].super_class;
                v167 = v19[11].super_class;
                v403(v19[15].receiver, v162, v19[14].receiver);
                TemplatingSection.redactedContent.getter();
                if ((*v163)(v167, 1, v166) == 1)
                {
                  outlined destroy of ReferenceResolutionClientProtocol?(v19[11].super_class, &_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
                  v168 = 0;
                  v169 = 0xE000000000000000;
                }

                else
                {
                  v170 = v19[12].super_class;
                  v171 = v19[11].super_class;
                  v168 = TemplatingText.text.getter();
                  v169 = v172;
                  (*v392)(v171, v170);
                }

                v19 = v165;
                (*v164)(v165[15].receiver, v165[14].receiver);
                v415[0] = v160;
                v174 = *(v160 + 16);
                v173 = *(v160 + 24);
                if (v174 >= v173 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1);
                  v19 = v414;
                  v160 = v415[0];
                }

                *(v160 + 16) = v174 + 1;
                v175 = v160 + 16 * v174;
                *(v175 + 32) = v168;
                *(v175 + 40) = v169;
                v162 += v397;
                --v157;
              }

              while (v157);
            }

            else
            {

              v160 = MEMORY[0x1E69E7CC0];
            }

            v176 = v19[21].receiver;
            v177 = v19[21].super_class;
            v178 = v19[20].super_class;
            v19[7].super_class = v160;
            v179 = v19;
            v180 = BidirectionalCollection<>.joined(separator:)();
            v182 = v181;

            v176[1](v177, v178);
            goto LABEL_224;
          }

          v146 = 0;
          v147 = v19[14].super_class;
          v148 = (v147 + 32);
          v399 = v147 + 16;
          v408 = v12[2];
          while (v146 < v12[2])
          {
            v11 = (*(v147 + 80) + 32) & ~*(v147 + 80);
            v149 = *(v147 + 9);
            (*(v147 + 2))(v414[16].receiver, v12 + v11 + v149 * v146, v414[14].receiver);
            v150 = TemplatingSection.spokenOnly.getter();
            v19 = v414;
            v151 = v414[16].receiver;
            if (v150)
            {
              (*(v147 + 1))(v414[16].receiver, v414[14].receiver);
            }

            else
            {
              v152 = *v148;
              (*v148)(v414[15].super_class, v414[16].receiver, v414[14].receiver);
              v415[0] = v145;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 16) + 1, 1);
                v19 = v414;
                v145 = v415[0];
              }

              v154 = *(v145 + 16);
              v153 = *(v145 + 24);
              if (v154 >= v153 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v153 > 1, v154 + 1, 1);
                v19 = v414;
                v145 = v415[0];
              }

              v155 = v19[15].super_class;
              v156 = v19[14].receiver;
              *(v145 + 16) = v154 + 1;
              v148 = (v147 + 32);
              v152((v145 + v11 + v154 * v149), v155, v156);
              v144 = v408;
            }

            if (v144 == ++v146)
            {
              goto LABEL_96;
            }
          }

          goto LABEL_130;
        }

        v112 = 0;
        v113 = v19[14].super_class;
        v399 = v12[2];
        v407 = (v113 + 32);
        while (v112 < v12[2])
        {
          v11 = (*(v113 + 80) + 32) & ~*(v113 + 80);
          v114 = *(v113 + 9);
          (*(v113 + 2))(v414[17].super_class, v12 + v11 + v114 * v112, v414[14].receiver);
          v115 = TemplatingSection.spokenOnly.getter();
          v19 = v414;
          v116 = v414[17].super_class;
          if (v115)
          {
            v117 = *v407;
            (*v407)(v414[17].receiver, v414[17].super_class, v414[14].receiver);
            v415[0] = v111;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 16) + 1, 1);
              v19 = v414;
              v111 = v415[0];
            }

            v119 = *(v111 + 16);
            v118 = *(v111 + 24);
            if (v119 >= v118 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v118 > 1, v119 + 1, 1);
              v19 = v414;
              v111 = v415[0];
            }

            v120 = v19[17].receiver;
            v121 = v19[14].receiver;
            *(v111 + 16) = v119 + 1;
            v117((v111 + v11 + v119 * v114), v120, v121);
            v110 = v399;
          }

          else
          {
            (*(v113 + 1))(v414[17].super_class, v414[14].receiver);
          }

          if (v110 == ++v112)
          {
            goto LABEL_75;
          }
        }

LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v81 = 0;
      v82 = v19[14].super_class;
      v399 = *(v79 + 16);
      v406 = (v82 + 32);
      while (v81 < v12[2])
      {
        v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v84 = *(v82 + 9);
        (*(v82 + 2))(v414[18].super_class, v12 + v83 + v84 * v81, v414[14].receiver);
        v85 = TemplatingSection.spokenOnly.getter();
        v19 = v414;
        v86 = v414[18].super_class;
        if (v85)
        {
          (*(v82 + 1))(v414[18].super_class, v414[14].receiver);
        }

        else
        {
          v87 = *v406;
          (*v406)(v414[18].receiver, v414[18].super_class, v414[14].receiver);
          v415[0] = v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 16) + 1, 1);
            v19 = v414;
            v80 = v415[0];
          }

          v89 = *(v80 + 16);
          v88 = *(v80 + 24);
          if (v89 >= v88 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1);
            v19 = v414;
            v80 = v415[0];
          }

          v90 = v19[18].receiver;
          v91 = v19[14].receiver;
          *(v80 + 16) = v89 + 1;
          v87((v80 + v83 + v89 * v84), v90, v91);
          v11 = v399;
        }

        if (v11 == ++v81)
        {
          goto LABEL_57;
        }
      }
    }

    __break(1u);
    goto LABEL_129;
  }

  if (v5 == *MEMORY[0x1E69CFF30])
  {
    v26 = v0[23].super_class;
    (*(v0[22].super_class + 12))(v26, v0[22].receiver);
    v12 = *v26;
    v27 = [*v26 dialog];
    v399 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for PatternExecutionDialog, 0x1E699A0C0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v11 >> 62))
    {
      v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v383 = v12;
      if (!v28)
      {
LABEL_132:

        v31 = MEMORY[0x1E69E7CC0];
        goto LABEL_133;
      }

LABEL_16:
      v415[0] = MEMORY[0x1E69E7CC0];
      v29 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0);
      if (v28 < 0)
      {
        __break(1u);
        goto LABEL_182;
      }

      v30 = 0;
      v31 = v415[0];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1E12A1FE0](v30, v11);
        }

        else
        {
          v32 = *(v11 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = [v32 unfilteredFullSpeak];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v415[0] = v31;
        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v31 = v415[0];
        }

        ++v30;
        *(v31 + 16) = v39 + 1;
        v40 = v31 + 16 * v39;
        *(v40 + 32) = v35;
        *(v40 + 40) = v37;
      }

      while (v28 != v30);

      v12 = v383;
LABEL_133:
      v414[4].receiver = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v229 = BidirectionalCollection<>.joined(separator:)();
      v378 = v230;
      v380 = v229;

      v231 = [v12 dialog];
      v232 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v232 >> 62)
      {
        v233 = __CocoaSet.count.getter();
        if (v233)
        {
LABEL_135:
          v415[0] = MEMORY[0x1E69E7CC0];
          v29 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v233 & ~(v233 >> 63), 0);
          if ((v233 & 0x8000000000000000) == 0)
          {
            v234 = 0;
            v235 = v415[0];
            do
            {
              if ((v232 & 0xC000000000000001) != 0)
              {
                v236 = MEMORY[0x1E12A1FE0](v234, v232);
              }

              else
              {
                v236 = *(v232 + 8 * v234 + 32);
              }

              v237 = v236;
              v238 = [v236 unfilteredFullPrint];
              v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v241 = v240;

              v415[0] = v235;
              v243 = *(v235 + 16);
              v242 = *(v235 + 24);
              if (v243 >= v242 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v242 > 1), v243 + 1, 1);
                v235 = v415[0];
              }

              ++v234;
              *(v235 + 16) = v243 + 1;
              v244 = v235 + 16 * v243;
              *(v244 + 32) = v239;
              *(v244 + 40) = v241;
            }

            while (v233 != v234);

            v12 = v383;
LABEL_146:
            v414[4].super_class = v235;
            v387 = BidirectionalCollection<>.joined(separator:)();
            v377 = v245;

            v246 = [v12 dialog];
            v247 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v247 >> 62)
            {
              v248 = __CocoaSet.count.getter();
              if (v248)
              {
LABEL_148:
                v415[0] = MEMORY[0x1E69E7CC0];
                v29 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v248 & ~(v248 >> 63), 0);
                if ((v248 & 0x8000000000000000) == 0)
                {
                  v249 = 0;
                  v250 = v415[0];
                  v251 = v247;
                  v411 = v247 & 0xC000000000000001;
                  v252 = v247;
                  v253 = v248;
                  do
                  {
                    if (v411)
                    {
                      v254 = MEMORY[0x1E12A1FE0](v249, v251);
                    }

                    else
                    {
                      v254 = *(v251 + 8 * v249 + 32);
                    }

                    v255 = v254;
                    v256 = [v254 redactedFullSpeak];
                    v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v259 = v258;

                    v260 = HIBYTE(v259) & 0xF;
                    if ((v259 & 0x2000000000000000) == 0)
                    {
                      v260 = v257 & 0xFFFFFFFFFFFFLL;
                    }

                    v261 = v260 == 0;
                    v262 = &selRef_redactedSupportingSpeak;
                    if (!v261)
                    {
                      v262 = &selRef_redactedFullSpeak;
                    }

                    v263 = [v255 *v262];
                    v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v266 = v265;

                    v415[0] = v250;
                    v268 = *(v250 + 16);
                    v267 = *(v250 + 24);
                    if (v268 >= v267 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v267 > 1), v268 + 1, 1);
                      v250 = v415[0];
                    }

                    ++v249;
                    *(v250 + 16) = v268 + 1;
                    v269 = v250 + 16 * v268;
                    *(v269 + 32) = v264;
                    *(v269 + 40) = v266;
                    v251 = v252;
                  }

                  while (v253 != v249);

                  v12 = v383;
LABEL_163:
                  v414[5].receiver = v250;
                  v270 = BidirectionalCollection<>.joined(separator:)();
                  v272 = v271;

                  v273 = [v12 dialog];
                  v274 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  v375 = v272;
                  v376 = v270;
                  if (v274 >> 62)
                  {
                    v275 = __CocoaSet.count.getter();
                    if (v275)
                    {
LABEL_165:
                      v276 = v274;
                      v415[0] = MEMORY[0x1E69E7CC0];
                      v29 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v275 & ~(v275 >> 63), 0);
                      if ((v275 & 0x8000000000000000) == 0)
                      {
                        v277 = 0;
                        v278 = v415[0];
                        v279 = v276;
                        do
                        {
                          if ((v276 & 0xC000000000000001) != 0)
                          {
                            v280 = MEMORY[0x1E12A1FE0](v277);
                          }

                          else
                          {
                            v280 = *(v279 + 8 * v277 + 32);
                          }

                          v281 = v280;
                          v282 = [v280 redactedFullPrint];
                          v283 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v285 = v284;

                          v286 = HIBYTE(v285) & 0xF;
                          if ((v285 & 0x2000000000000000) == 0)
                          {
                            v286 = v283 & 0xFFFFFFFFFFFFLL;
                          }

                          v261 = v286 == 0;
                          v287 = &selRef_redactedSupportingPrint;
                          if (!v261)
                          {
                            v287 = &selRef_redactedFullPrint;
                          }

                          v288 = [v281 *v287];
                          v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v291 = v290;

                          v415[0] = v278;
                          v293 = *(v278 + 16);
                          v292 = *(v278 + 24);
                          if (v293 >= v292 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v292 > 1), v293 + 1, 1);
                            v278 = v415[0];
                          }

                          ++v277;
                          *(v278 + 16) = v293 + 1;
                          v294 = v278 + 16 * v293;
                          *(v294 + 32) = v289;
                          *(v294 + 40) = v291;
                          v279 = v276;
                        }

                        while (v275 != v277);

                        v12 = v383;
                        goto LABEL_180;
                      }

                      goto LABEL_184;
                    }
                  }

                  else
                  {
                    v275 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v275)
                    {
                      goto LABEL_165;
                    }
                  }

                  v278 = MEMORY[0x1E69E7CC0];
LABEL_180:
                  v179 = v414;
                  v414[5].super_class = v278;
                  v180 = BidirectionalCollection<>.joined(separator:)();
                  v182 = v295;

LABEL_223:

LABEL_224:
                  v347 = v179[11].receiver;
                  v348 = v179[9].super_class;
                  v349 = v179[10].receiver;
                  v350 = v179[9].receiver;
                  v351 = v350[5];
                  v352 = v350[6];
                  v353 = *(v179[10].super_class + 2);
                  v353(v347, v179[8].super_class, v349);
                  v354 = type metadata accessor for FlowOutputMessage.InAppResponse();
                  (*(*(v354 - 8) + 56))(v348, 1, 1, v354);
                  v413 = type metadata accessor for ExecutionOutput();
                  v355 = objc_allocWithZone(v413);
                  v356 = &v355[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
                  *v356 = v351;
                  *(v356 + 1) = v352;
                  v357 = &v355[OBJC_IVAR___SKRExecutionOutput_fullPrint];
                  *v357 = v387;
                  v357[1] = v377;
                  v358 = &v355[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
                  *v358 = v380;
                  v358[1] = v378;
                  v359 = &v355[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
                  *v359 = v180;
                  v359[1] = v182;
                  v360 = &v355[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
                  *v360 = v376;
                  v360[1] = v375;
                  v353(&v355[OBJC_IVAR___SKRExecutionOutput_executionSource], v347, v349);
                  outlined init with copy of ReferenceResolutionClientProtocol?(v348, &v355[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
                  v361 = one-time initialization token for executor;

                  if (v361 != -1)
                  {
                    swift_once();
                  }

                  v362 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v362, static Logger.executor);
                  v363 = Logger.logObject.getter();
                  v364 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v363, v364))
                  {
                    v365 = swift_slowAlloc();
                    v366 = swift_slowAlloc();
                    v367 = swift_slowAlloc();
                    v415[0] = v367;
                    *v365 = 136315394;
                    *(v365 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v415);
                    *(v365 + 12) = 2112;
                    *(v365 + 14) = 0;
                    *v366 = 0;
                    _os_log_impl(&dword_1DC659000, v363, v364, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v365, 0x16u);
                    outlined destroy of ReferenceResolutionClientProtocol?(v366, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    MEMORY[0x1E12A2F50](v366, -1, -1);
                    __swift_destroy_boxed_opaque_existential_1Tm(v367);
                    MEMORY[0x1E12A2F50](v367, -1, -1);
                    MEMORY[0x1E12A2F50](v365, -1, -1);
                  }

                  v369 = v414[10].super_class;
                  v368 = v414[11].receiver;
                  v371 = v414[9].super_class;
                  v370 = v414[10].receiver;
                  *&v355[OBJC_IVAR___SKRExecutionOutput_command] = 0;
                  *&v355[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
                  v414[1].receiver = v355;
                  v414[1].super_class = v413;
                  v372 = objc_msgSendSuper2(v414 + 1, sel_init);
                  v414[24].receiver = v372;
                  outlined destroy of ReferenceResolutionClientProtocol?(v371, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
                  (*(v369 + 1))(v368, v370);
                  v373 = swift_task_alloc();
                  v414[24].super_class = v373;
                  *v373 = v414;
                  *(v373 + 1) = AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:);
                  v374 = v414[9].receiver;

                  return AceServiceInvokerImpl.publish(executionOutput:)(v372);
                }

LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
                goto LABEL_185;
              }
            }

            else
            {
              v248 = *((v247 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v248)
              {
                goto LABEL_148;
              }
            }

            v250 = MEMORY[0x1E69E7CC0];
            goto LABEL_163;
          }

LABEL_182:
          __break(1u);
          goto LABEL_183;
        }
      }

      else
      {
        v233 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v233)
        {
          goto LABEL_135;
        }
      }

      v235 = MEMORY[0x1E69E7CC0];
      goto LABEL_146;
    }

LABEL_131:
    v28 = __CocoaSet.count.getter();
    v383 = v12;
    if (!v28)
    {
      goto LABEL_132;
    }

    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x1E69CFF28])
  {
    v41 = v0[23].super_class;
    (*(v0[22].super_class + 12))(v41, v0[22].receiver);
    v399 = *v41;
    v29 = specialized Sequence.flatMap<A>(_:)(*v41);
    if (!(v29 >> 62))
    {
      v42 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_28;
    }

LABEL_185:
    v296 = v29;
    v42 = __CocoaSet.count.getter();
    v29 = v296;
LABEL_28:
    if (v42)
    {
      v43 = v29;
      v415[0] = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42 & ~(v42 >> 63), 0);
      if (v42 < 0)
      {
        __break(1u);
        goto LABEL_232;
      }

      v45 = 0;
      v46 = v415[0];
      v47 = v43;
      v48 = v43 & 0xC000000000000001;
      v49 = v43;
      do
      {
        if (v48)
        {
          v50 = MEMORY[0x1E12A1FE0](v45, v47);
        }

        else
        {
          v50 = *(v47 + 8 * v45 + 32);
        }

        v51 = v50;
        v52 = [v50 unfilteredFullSpeak];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v415[0] = v46;
        v57 = *(v46 + 16);
        v56 = *(v46 + 24);
        if (v57 >= v56 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
          v46 = v415[0];
        }

        ++v45;
        *(v46 + 16) = v57 + 1;
        v58 = v46 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
        v47 = v49;
      }

      while (v42 != v45);
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    v414[2].receiver = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v210 = BidirectionalCollection<>.joined(separator:)();
    v378 = v211;
    v380 = v210;

    v212 = specialized Sequence.flatMap<A>(_:)(v399);
    if (v212 >> 62)
    {
      v297 = v212;
      v213 = __CocoaSet.count.getter();
      v212 = v297;
      if (v213)
      {
LABEL_118:
        v214 = v212;
        v415[0] = MEMORY[0x1E69E7CC0];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v213 & ~(v213 >> 63), 0);
        if ((v213 & 0x8000000000000000) == 0)
        {
          v215 = 0;
          v216 = v415[0];
          v217 = v214;
          v218 = v214 & 0xC000000000000001;
          v219 = v214;
          do
          {
            if (v218)
            {
              v220 = MEMORY[0x1E12A1FE0](v215, v217);
            }

            else
            {
              v220 = *(v217 + 8 * v215 + 32);
            }

            v221 = v220;
            v222 = [v220 unfilteredFullPrint];
            v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v225 = v224;

            v415[0] = v216;
            v227 = *(v216 + 16);
            v226 = *(v216 + 24);
            if (v227 >= v226 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v226 > 1), v227 + 1, 1);
              v216 = v415[0];
            }

            ++v215;
            *(v216 + 16) = v227 + 1;
            v228 = v216 + 16 * v227;
            *(v228 + 32) = v223;
            *(v228 + 40) = v225;
            v217 = v219;
          }

          while (v213 != v215);

LABEL_188:
          v414[2].super_class = v216;
          v387 = BidirectionalCollection<>.joined(separator:)();
          v377 = v298;

          v299 = specialized Sequence.flatMap<A>(_:)(v399);
          if (v299 >> 62)
          {
            v322 = v299;
            v300 = __CocoaSet.count.getter();
            v299 = v322;
            if (v300)
            {
LABEL_190:
              v301 = v299;
              v415[0] = MEMORY[0x1E69E7CC0];
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v300 & ~(v300 >> 63), 0);
              if ((v300 & 0x8000000000000000) == 0)
              {
                v302 = 0;
                v303 = v415[0];
                v304 = v301;
                v412 = v301 & 0xC000000000000001;
                v305 = v301;
                v306 = v300;
                do
                {
                  if (v412)
                  {
                    v307 = MEMORY[0x1E12A1FE0](v302, v304);
                  }

                  else
                  {
                    v307 = *(v304 + 8 * v302 + 32);
                  }

                  v308 = v307;
                  v309 = [v307 unfilteredRedactedFullSpeak];
                  v310 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v312 = v311;

                  v313 = HIBYTE(v312) & 0xF;
                  if ((v312 & 0x2000000000000000) == 0)
                  {
                    v313 = v310 & 0xFFFFFFFFFFFFLL;
                  }

                  v261 = v313 == 0;
                  v314 = &selRef_redactedSupportingSpeak;
                  if (!v261)
                  {
                    v314 = &selRef_unfilteredRedactedFullSpeak;
                  }

                  v315 = [v308 *v314];
                  v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v318 = v317;

                  v415[0] = v303;
                  v320 = *(v303 + 16);
                  v319 = *(v303 + 24);
                  if (v320 >= v319 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v319 > 1), v320 + 1, 1);
                    v303 = v415[0];
                  }

                  ++v302;
                  *(v303 + 16) = v320 + 1;
                  v321 = v303 + 16 * v320;
                  *(v321 + 32) = v316;
                  *(v321 + 40) = v318;
                  v304 = v305;
                }

                while (v306 != v302);

LABEL_205:
                v414[3].receiver = v303;
                v323 = BidirectionalCollection<>.joined(separator:)();
                v325 = v324;

                v326 = specialized Sequence.flatMap<A>(_:)(v399);

                v375 = v325;
                v376 = v323;
                if (v326 >> 62)
                {
                  v327 = __CocoaSet.count.getter();
                  if (v327)
                  {
LABEL_207:
                    v415[0] = MEMORY[0x1E69E7CC0];
                    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v327 & ~(v327 >> 63), 0);
                    if ((v327 & 0x8000000000000000) == 0)
                    {
                      v328 = 0;
                      v329 = v415[0];
                      v330 = v326;
                      do
                      {
                        if ((v326 & 0xC000000000000001) != 0)
                        {
                          v331 = MEMORY[0x1E12A1FE0](v328);
                        }

                        else
                        {
                          v331 = *(v330 + 8 * v328 + 32);
                        }

                        v332 = v331;
                        v333 = [v331 unfilteredRedactedFullPrint];
                        v334 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v336 = v335;

                        v337 = HIBYTE(v336) & 0xF;
                        if ((v336 & 0x2000000000000000) == 0)
                        {
                          v337 = v334 & 0xFFFFFFFFFFFFLL;
                        }

                        v261 = v337 == 0;
                        v338 = &selRef_redactedSupportingPrint;
                        if (!v261)
                        {
                          v338 = &selRef_unfilteredRedactedFullPrint;
                        }

                        v339 = [v332 *v338];
                        v340 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v342 = v341;

                        v415[0] = v329;
                        v344 = *(v329 + 16);
                        v343 = *(v329 + 24);
                        if (v344 >= v343 >> 1)
                        {
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v343 > 1), v344 + 1, 1);
                          v329 = v415[0];
                        }

                        ++v328;
                        *(v329 + 16) = v344 + 1;
                        v345 = v329 + 16 * v344;
                        *(v345 + 32) = v340;
                        *(v345 + 40) = v342;
                        v330 = v326;
                      }

                      while (v327 != v328);

                      goto LABEL_222;
                    }

LABEL_234:
                    __break(1u);
                    return result;
                  }
                }

                else
                {
                  v327 = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v327)
                  {
                    goto LABEL_207;
                  }
                }

                v329 = MEMORY[0x1E69E7CC0];
LABEL_222:
                v179 = v414;
                v414[3].super_class = v329;
                v180 = BidirectionalCollection<>.joined(separator:)();
                v182 = v346;
                goto LABEL_223;
              }

LABEL_233:
              __break(1u);
              goto LABEL_234;
            }
          }

          else
          {
            v300 = *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v300)
            {
              goto LABEL_190;
            }
          }

          v303 = MEMORY[0x1E69E7CC0];
          goto LABEL_205;
        }

LABEL_232:
        __break(1u);
        goto LABEL_233;
      }
    }

    else
    {
      v213 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v213)
      {
        goto LABEL_118;
      }
    }

    v216 = MEMORY[0x1E69E7CC0];
    goto LABEL_188;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v183 = v0[23].receiver;
  v184 = v0[22].receiver;
  v185 = v414[8].receiver;
  v186 = type metadata accessor for Logger();
  __swift_project_value_buffer(v186, static Logger.executor);
  v4(v183, v185, v184);
  v187 = Logger.logObject.getter();
  v188 = static os_log_type_t.error.getter();
  v189 = os_log_type_enabled(v187, v188);
  v191 = v414[22].super_class;
  v190 = v414[23].receiver;
  v192 = v414[22].receiver;
  if (v189)
  {
    v193 = swift_slowAlloc();
    v409 = swift_slowAlloc();
    v415[0] = v409;
    *v193 = 136315138;
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type DialogEngineOutput and conformance DialogEngineOutput, 255, MEMORY[0x1E69CFF38]);
    v194 = dispatch thunk of CustomStringConvertible.description.getter();
    v196 = v195;
    v197 = *(v191 + 1);
    v197(v190, v192);
    v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v196, v415);

    *(v193 + 4) = v198;
    _os_log_impl(&dword_1DC659000, v187, v188, "Publish called with an unexpected dialogEngineOutput: %s. Ignoring publish attempt", v193, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v409);
    MEMORY[0x1E12A2F50](v409, -1, -1);
    MEMORY[0x1E12A2F50](v193, -1, -1);
  }

  else
  {

    v197 = *(v191 + 1);
    v197(v190, v192);
  }

  v197(v414[23].super_class, v414[22].receiver);
  v200 = v414[23].receiver;
  v199 = v414[23].super_class;
  v201 = v414[21].super_class;
  v203 = v414[19].super_class;
  v202 = v414[20].receiver;
  v204 = v414[18].super_class;
  v205 = v414[19].receiver;
  v207 = v414[17].super_class;
  v206 = v414[18].receiver;
  v208 = v414[17].receiver;
  v379 = v414[16].super_class;
  v381 = v414[16].receiver;
  v382 = v414[15].super_class;
  v384 = v414[15].receiver;
  v388 = v414[13].super_class;
  v393 = v414[12].receiver;
  v398 = v414[11].super_class;
  v404 = v414[11].receiver;
  v410 = v414[9].super_class;

  v209 = v414->super_class;

  return v209();
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR, MEMORY[0x1E69CFEF8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMR, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR, MEMORY[0x1E69D09E0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x1E69D2828]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMR, MEMORY[0x1E69CE370]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x1E69D1790]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMR, MEMORY[0x1E69D1740]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR, MEMORY[0x1E69D0188]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR, MEMORY[0x1E69CE360]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMd, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMR, MEMORY[0x1E69AA9A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMR, MEMORY[0x1E69D0BE8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE17ConfirmationStateOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE17ConfirmationStateOGMR, MEMORY[0x1E69CFD08]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5InputVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5InputVGMR, MEMORY[0x1E69D0100]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMR, MEMORY[0x1E69D0058]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMR, type metadata accessor for ParseUserDataAttachment);
  *v3 = result;
  return result;
}

uint64_t closure #1 in ConversationOutputSubmitter.publishDialogEngineOutput(fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionSource:requestId:assistantId:sessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v47 = a7;
  v48 = a8;
  v43 = a4;
  v44 = a5;
  v42 = a2;
  v52 = a14;
  v53 = a15;
  v50 = a12;
  v51 = a13;
  v49 = a11;
  v45 = a9;
  v46 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMd, &_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v39 - v23;
  v25 = type metadata accessor for UUID();
  v40 = *(v25 - 8);
  v41 = v25;
  v26 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v39 - v31;
  v33 = *MEMORY[0x1E69D0460];
  v34 = type metadata accessor for MessageSource();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v32, v33, v34);
  (*(v35 + 56))(v32, 0, 1, v34);
  DialogEngineOutputMessage.Builder.source.setter();
  if (!a3)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v40 + 8))(v28, v41);
  }

  DialogEngineOutputMessage.Builder.assistantId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v43, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  DialogEngineOutputMessage.Builder.sessionId.setter();
  if (!a6)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v40 + 8))(v28, v41);
  }

  DialogEngineOutputMessage.Builder.requestId.setter();

  DialogEngineOutputMessage.Builder.fullPrint.setter();

  DialogEngineOutputMessage.Builder.fullSpeak.setter();

  DialogEngineOutputMessage.Builder.redactedFullPrint.setter();

  DialogEngineOutputMessage.Builder.redactedFullSpeak.setter();
  v36 = type metadata accessor for RequestSummary.ExecutionSource();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v20, v53, v36);
  (*(v37 + 56))(v20, 0, 1, v36);
  return DialogEngineOutputMessage.Builder.executionSource.setter();
}

uint64_t AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:);
  }

  else
  {
    v3 = AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{

  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 344);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 272);
  v13 = *(v0 + 264);
  v14 = *(v0 + 256);
  v15 = *(v0 + 248);
  v16 = *(v0 + 240);
  v17 = *(v0 + 216);
  v18 = *(v0 + 192);
  v19 = *(v0 + 184);
  v20 = *(v0 + 176);
  v21 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v13 = *(v0 + 272);
  v14 = *(v0 + 264);
  v15 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 240);
  v18 = *(v0 + 216);
  v19 = *(v0 + 192);
  v20 = *(v0 + 184);
  v21 = *(v0 + 176);
  v22 = *(v0 + 152);

  v10 = *(v0 + 8);
  v11 = *(v0 + 400);

  return v10();
}

uint64_t protocol witness for ConversationTaskObservationDelegate.executionDidComplete() in conformance RemoteConversationService()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationTaskObservationDelegate.executionDidComplete() in conformance RemoteConversationService, v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = *(**(v1 + 168) + 216);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:);

  return v7();
}

uint64_t AsyncSerialQueue.wait()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.wait(), 0, 0);
}

{
  v11 = v0;
  v1 = v0[2];
  v2 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in AsyncSerialQueue.wait();
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v10);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v10;
  v0[3] = v10;

  if (v4)
  {
    v5 = *(MEMORY[0x1E69E86C0] + 4);

    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = AsyncSerialQueue.wait();
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
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.wait(), 0, 0);
}

{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t destroy for ConversationCommitResult(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = type metadata accessor for PluginAction();
LABEL_14:
      v8 = *(*(v3 - 8) + 8);

      return v8(a1, v3);
    }

    if (result != 3)
    {
      return result;
    }

    v4 = a1[1];

    v5 = a1[3];
  }

  else
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = type metadata accessor for FlowUnhandledReason();
      goto LABEL_14;
    }

    v6 = *a1;

    v7 = a1[1];
  }
}

id ConversationCommitResult.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PluginAction();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v34 - v8;
  v9 = type metadata accessor for FlowUnhandledReason();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for ConversationCommitResult();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ConversationCommitResult(v1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v25 = specialized static ConversationCommitResultXPC.flowNeedsReparse(executionRequestID:userID:)(*v23, v23[1], v23[2], v23[3]);
      goto LABEL_9;
    }

    v26 = v35;
    (*(v35 + 32))(v5, v23, v2);
    v27 = specialized static ConversationCommitResultXPC.flowWantsToRedirect(nextPluginAction:)();
    (*(v26 + 8))(v5, v2);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = specialized static ConversationCommitResultXPC.flowWasHandled(activeTasks:completedTasks:)(*v23, v23[1]);
LABEL_9:
      v27 = v25;

      return v27;
    }

    (*(v10 + 32))(v19, v23, v9);
    (*(v10 + 16))(v16, v19, v9);
    v28 = (*(v10 + 88))(v16, v9);
    if (v28 == *MEMORY[0x1E69CFB50])
    {
      v29 = v28;
      (*(v10 + 96))(v16, v9);
      v30 = v34;
      outlined init with take of PrescribedTool?(v16, v34);
      outlined init with copy of PrescribedTool?(v30, v13);
      (*(v10 + 104))(v13, v29, v9);
      v27 = specialized static ConversationCommitResultXPC.flowWasNotHandled(flowUnhandledReason:)(v13);
      v31 = *(v10 + 8);
      v31(v13, v9);
      outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
      v31(v19, v9);
    }

    else
    {
      v27 = specialized static ConversationCommitResultXPC.flowWasNotHandled(flowUnhandledReason:)(v19);
      v32 = *(v10 + 8);
      v32(v19, v9);
      v32(v16, v9);
    }
  }

  return v27;
}

uint64_t outlined init with copy of ConversationCommitResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationCommitResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static ConversationCommitResultXPC.flowWasHandled(activeTasks:completedTasks:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationCommitResultXPC();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___SKRConversationCommitResult_type] = 1;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = a1;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = a2;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v6 = &v5[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v6 = 0;
  v6[8] = 1;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v7 = &v5[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v5[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v10.receiver = v5;
  v10.super_class = v4;

  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall ConversationCommitResultXPC.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for Siri_Nlu_External_Task();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - v9;
  v11 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_type);
  v12 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000, v8);
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];

  v66 = v1;
  v13 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_activeTasks);
  v14 = *(v13 + 16);
  v71 = v4;
  if (v14)
  {
    v15 = v4 + 16;
    v16 = *(v4 + 16);
    v17 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v15 + 56);
    v72 = (v15 - 8);
    v73 = v18;
    v74 = MEMORY[0x1E69E7CC0];
    v68 = v16;
    v69 = v15;
    v16(v10, v17, v3);
    while (1)
    {
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
      v19 = Message.serializedData(partial:)();
      v21 = v20;
      (*v72)(v10, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
      }

      v23 = *(v74 + 2);
      v22 = *(v74 + 3);
      if (v23 >= v22 >> 1)
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v74);
      }

      v24 = v74;
      *(v74 + 2) = v23 + 1;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v19;
      *(v25 + 5) = v21;
      v17 += v73;
      if (!--v14)
      {
        break;
      }

      v68(v10, v17, v3);
    }
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = MEMORY[0x1E12A1410](0x6154657669746361, 0xEB00000000736B73);
  [(objc_class *)isa encodeObject:v26 forKey:v27];

  v28 = *(v66 + OBJC_IVAR___SKRConversationCommitResult_completedTasks);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v70;
    v31 = *(v71 + 16);
    v32 = v28 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v73 = *(v71 + 72);
    v74 = v31;
    v33 = (v71 + 8);
    v34 = MEMORY[0x1E69E7CC0];
    v71 += 16;
    (v31)(v70, v32, v3);
    while (1)
    {
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
      v35 = Message.serializedData(partial:)();
      v37 = v36;
      (*v33)(v30, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
      }

      v39 = *(v34 + 2);
      v38 = *(v34 + 3);
      if (v39 >= v38 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v34);
      }

      *(v34 + 2) = v39 + 1;
      v40 = &v34[16 * v39];
      *(v40 + 4) = v35;
      *(v40 + 5) = v37;
      v30 = v70;
      v32 += v73;
      if (!--v29)
      {
        break;
      }

      (v74)(v70, v32, v3);
    }
  }

  v41 = Array._bridgeToObjectiveC()().super.isa;

  v42 = MEMORY[0x1E12A1410](0x6574656C706D6F63, 0xEE00736B73615464);
  v43 = isa;
  [(objc_class *)isa encodeObject:v41 forKey:v42];

  v44 = v66;
  v45 = *(v66 + OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason);
  if (v45 <= 3)
  {
    if ((v45 - 1) < 3)
    {
      v46 = 0x80000001DCA7A8E0;
      v47 = 0xD000000000000013;
LABEL_23:
      v48 = MEMORY[0x1E12A1410](v47, v46);
      [(objc_class *)v43 encodeInteger:v45 forKey:v48];
LABEL_32:

      goto LABEL_33;
    }

    if (!v45)
    {
      goto LABEL_33;
    }

LABEL_43:
    v75 = *(v66 + OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  switch(v45)
  {
    case 4:
      v52 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
      [(objc_class *)v43 encodeInteger:4 forKey:v52];

      if ((*(v44 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool + 8) & 1) == 0)
      {
        v45 = *(v44 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool);
        v47 = 0x6269726373657270;
        v46 = 0xEE006C6F6F546465;
        goto LABEL_23;
      }

      break;
    case 5:
      v49 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
      [(objc_class *)v43 encodeInteger:5 forKey:v49];

      v50 = *(v44 + OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext);
      if (v50)
      {
        v51 = v50;
        v48 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7A960);
        [(objc_class *)v43 encodeObject:v51 forKey:v48];

        goto LABEL_32;
      }

      break;
    case 6:
      v48 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
      [(objc_class *)v43 encodeInteger:6 forKey:v48];
      goto LABEL_32;
    default:
      goto LABEL_43;
  }

LABEL_33:
  v53 = *(v44 + OBJC_IVAR___SKRConversationCommitResult_error);
  if (v53)
  {
    v54 = v53;
    v55 = MEMORY[0x1E12A1410](0x726F727265, 0xE500000000000000);
    [(objc_class *)v43 encodeObject:v54 forKey:v55];
  }

  v56 = (v44 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData);
  v57 = *(v44 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8);
  if (v57 >> 60 != 15)
  {
    v58 = *v56;
    outlined copy of Data._Representation(*v56, *(v44 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8));
    v59 = Data._bridgeToObjectiveC()().super.isa;
    v60 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7A910);
    [(objc_class *)v43 encodeObject:v59 forKey:v60];

    outlined consume of Data?(v58, v57);
  }

  if (*(v44 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID + 8))
  {
    v61 = MEMORY[0x1E12A1410](*(v44 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID));
    v62 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7A930);
    [(objc_class *)v43 encodeObject:v61 forKey:v62];
  }

  if (*(v44 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID + 8))
  {
    v63 = MEMORY[0x1E12A1410](*(v44 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID));
    v64 = MEMORY[0x1E12A1410](0x5565737261706572, 0xED00004449726573);
    [(objc_class *)v43 encodeObject:v63 forKey:v64];
  }
}

unint64_t specialized FlowUnhandledReasonXPC.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.commit(bridge:)(void *a1)
{
  v2 = type metadata accessor for ConversationCommitResult();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

id ConversationCommitResultXPC.swiftRepresentation()@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for PluginAction();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriXRedirectContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowUnhandledReason();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v16;
  v20 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_type);
  if (v20 <= 1)
  {
    if (!v20)
    {
      v24 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_error);
      if (!v24)
      {
        goto LABEL_47;
      }

      v25 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_error);
      swift_willThrow();
      return v24;
    }

    if (v20 == 1)
    {
      v34 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_activeTasks);
      v35 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_completedTasks);
      v36 = v47;
      *v47 = v34;
      v36[1] = v35;
      type metadata accessor for ConversationCommitResult();
      goto LABEL_20;
    }

LABEL_44:
    v49 = v20;
    goto LABEL_45;
  }

  if (v20 == 2)
  {
    v26 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason);
    if (v26 > 3)
    {
      if (v26 == 4)
      {
        if (*(v1 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool + 8))
        {
          v41 = v17;
          v42 = type metadata accessor for PrescribedTool();
          (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
        }

        else
        {
          v43 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool);
          if (v43 == 1)
          {
            v41 = v17;
            static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
          }

          else
          {
            if (v43)
            {
              v49 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool);
              goto LABEL_45;
            }

            v41 = v17;
            static PrescribedTool.searchTool.getter();
          }

          v44 = type metadata accessor for PrescribedTool();
          (*(*(v44 - 8) + 56))(v14, 0, 1, v44);
        }

        v39 = v41;
        (*(v41 + 104))(v14, *MEMORY[0x1E69CFB50], v11);
        (*(v41 + 32))(v19, v14, v11);
        goto LABEL_40;
      }

      if (v26 == 5)
      {
        v37 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext);
        if (!v37)
        {
          goto LABEL_48;
        }

        v38 = v17;
        (*((*MEMORY[0x1E69E7D40] & *v37) + 0x60))(v18.n128_f64[0]);
        (*(v7 + 32))(v19, v10, v6);
        v39 = v38;
        (*(v38 + 104))(v19, *MEMORY[0x1E69CFB58], v11);
        goto LABEL_40;
      }

      if (v26 != 6)
      {
        goto LABEL_51;
      }

      v40 = MEMORY[0x1E69CFB68];
    }

    else
    {
      if (v26 <= 2)
      {
        if (v26 == 1)
        {
          v27 = MEMORY[0x1E69CFB70];
        }

        else
        {
          if (v26 != 2)
          {
            goto LABEL_49;
          }

          v27 = MEMORY[0x1E69CFB60];
        }

        v39 = v17;
        (*(v17 + 104))(&v45 - v16, *v27, v11, v18);
        goto LABEL_40;
      }

      v40 = MEMORY[0x1E69CFB78];
    }

    v39 = v17;
    (*(v17 + 104))(&v45 - v16, *v40, v11);
LABEL_40:
    (*(v39 + 32))(v47, v19, v11);
    type metadata accessor for ConversationCommitResult();
    return swift_storeEnumTagMultiPayload();
  }

  if (v20 != 3)
  {
    if (v20 == 4)
    {
      v28 = (v1 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID);
      v29 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID + 8);
      if (v29)
      {
        v30 = (v1 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID);
        v31 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID + 8);
        if (v31)
        {
          v32 = *v30;
          v33 = v47;
          *v47 = *v28;
          v33[1] = v29;
          v33[2] = v32;
          v33[3] = v31;
          type metadata accessor for ConversationCommitResult();
LABEL_20:
          swift_storeEnumTagMultiPayload();
        }
      }

      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000006ALL, 0x80000001DCA7F500, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 208);
      __break(1u);
    }

    goto LABEL_44;
  }

  v21 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8);
  if (v21 >> 60 == 15)
  {
    while (1)
    {
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000067, 0x80000001DCA7F5F0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 202);
      __break(1u);
LABEL_47:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000057, 0x80000001DCA7F730, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 172);
      __break(1u);
LABEL_48:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000060, 0x80000001DCA7F660, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 193);
      __break(1u);
LABEL_49:
      if (!v26)
      {
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000056, 0x80000001DCA7F6D0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 181);
        __break(1u);
      }

LABEL_51:
      v49 = v26;
LABEL_45:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  outlined copy of Data._Representation(*(v1 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData), v21);
  v22 = v48;
  result = PluginAction.init(data:)();
  if (!v22)
  {
    (*(v46 + 32))(v47, v5, v2);
    type metadata accessor for ConversationCommitResult();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t specialized RunSiriKitExecutorProcessorExecutionDelegate.fetchSelfReflectionDecision(reply:)(uint64_t (*a1)(char *))
{
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
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x80000001DCA7EE00, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Need not do %s for RSKE initiated execution", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v9 = 2;
  return a1(&v9);
}

uint64_t protocol witness for DecisionMaking.commitConversation(_:) in conformance DecisionEngine()
{
  v1 = *(v0 + 64);
  v2 = **(v0 + 72);
  swift_beginAccess();
  v3 = *(v2 + 184);
  *(v2 + 184) = v1;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t partial apply for closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(a1, v4, v5, v6);
}

uint64_t closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 48) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:), v5, 0);
}

uint64_t closure #1 in RemoteConversationClient.isEmpty()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.isEmpty(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.isEmpty()()
{
  v16 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x1E69E88D0] + 4);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = closure #1 in RemoteConversationClient.reset();
    v6 = v0[2];
    v7 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0x287974706D457369, 0xE900000000000029, partial apply for closure #1 in closure #1 in RemoteConversationClient.isEmpty(), v3, v7);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    *v0[2] = 1;
    v13 = v0[1];

    return v13();
  }
}

void closure #1 in closure #1 in RemoteConversationClient.isEmpty()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = aBlock - v16;
  (*(v13 + 16))(aBlock - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v12);
  aBlock[4] = a5;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = a6;
  v20 = _Block_copy(aBlock);

  [a2 *a7];
  _Block_release(v20);
}

uint64_t @objc SendableRemoteConversationXPCWrapper.isEmpty(reply:)(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(a1 + 16);
  v16[4] = a5;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v16[3] = a6;
  v14 = _Block_copy(v16);

  [v13 *a7];

  _Block_release(v14);
}

uint64_t partial apply for closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.isEmpty(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v8 = type metadata accessor for RemoteConversationService.State(0);
  v6[39] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  v6[41] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.isEmpty(reply:), v10, 0);
}

uint64_t closure #1 in RemoteConversationService.isEmpty(reply:)()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 280);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v16 = *(v0 + 320);
    v17 = *(v16 + 80);

    v18 = *(v16 + 40);
    v19 = *(v16 + 56);
    *(v0 + 48) = *(v16 + 72);
    *(v0 + 16) = v18;
    *(v0 + 32) = v19;
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (!*(v0 + 120))
    {
      v34 = *(v0 + 320);
      v36 = *(v0 + 288);
      v35 = *(v0 + 296);
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      v36(1);
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      v28 = v34;
      goto LABEL_7;
    }

    v6 = *(v0 + 320);
    v20 = *(v0 + 328);
    v22 = *(v0 + 296);
    v21 = *(v0 + 304);
    v23 = *(v0 + 288);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
    v26 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v25, type metadata accessor for ConversationActor);
    v27 = swift_allocObject();
    v27[2] = v20;
    v27[3] = v26;
    v27[4] = v23;
    v27[5] = v22;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), (v27 + 6));

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #2 in closure #1 in RemoteConversationService.isEmpty(reply:), v27);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
LABEL_6:
    v28 = v6;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 288);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol((v6 + 40), v0 + 176);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 176, v0 + 216);
    v14 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v13, type metadata accessor for ConversationActor);
    v15 = swift_allocObject();
    v15[2] = v7;
    v15[3] = v14;
    v15[4] = v10;
    v15[5] = v9;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 216), (v15 + 6));

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:), v15);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    outlined destroy of RemoteConversationService.State(v6 + v11, type metadata accessor for SiriRequest);
    goto LABEL_6;
  }

  v29 = *(v0 + 296);
  (*(v0 + 288))(1);
LABEL_9:
  v30 = *(v0 + 320);
  v31 = *(v0 + 304);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[5] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:), v7, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:);

  return v8(v2, v3);
}

uint64_t protocol witness for Conversational.isEmpty() in conformance Conversation()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for Conversational.isEmpty() in conformance Conversation, v2, 0);
}

{
  v1 = (*(**(*(v0 + 16) + 112) + 184))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:), v3, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 56));
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:);

  return v8(v2, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoff()()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(char a1)
{
  v2 = *(*v1 + 1568);
  v3 = *(*v1 + 1184);
  v5 = *v1;
  *(*v1 + 1606) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v3, 0);
}

{
  v2 = *(*v1 + 1576);
  v3 = *(*v1 + 1184);
  v5 = *v1;
  *(*v1 + 1607) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v3, 0);
}

void RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 568))(a1, a2 & 1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v11);
      _os_log_impl(&dword_1DC659000, v7, v8, "RunSiriKitExecutorProcessor already released, ignoring close of %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessor.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  v3 = v2;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = [v7 debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a2;
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v16, &v21);
    a2 = v14;

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v8, v9, "<<<--- %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  if ((*(*v3 + 448))())
  {
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v18, "Ignoring close() because request already finished", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }
  }

  else
  {

    RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(v7, 0, 0, a2 & 1);
  }
}

uint64_t RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v103 = a1;
  v93 = type metadata accessor for RequestType();
  v100 = *(v93 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v99 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v88[-v13];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV_SbtMd, &_s16SiriMessageTypes6UserIDV_SbtMR);
  v15 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v88[-v16];
  v102 = type metadata accessor for UserID();
  v17 = *(v102 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v88[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v88[-v21];
  v91 = type metadata accessor for UUID();
  v90 = *(v91 - 8);
  v22 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v24 = &v88[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.conversationBridge);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v98 = v17;
  v92 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v89 = v6;
    v6 = v29;
    v30 = swift_slowAlloc();
    v101 = v14;
    v31 = v30;
    v104 = v30;
    *v6 = 136315138;
    if (a3)
    {
      v32 = a2;
    }

    else
    {
      v32 = 7104878;
    }

    if (a3)
    {
      v33 = a3;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v104);

    *(v6 + 4) = v34;
    _os_log_impl(&dword_1DC659000, v26, v27, "Handling close() from Execution kicked off by RSKE, errorString=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v35 = v31;
    v14 = v101;
    MEMORY[0x1E12A2F50](v35, -1, -1);
    v36 = v6;
    LOBYTE(v6) = v89;
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  if (a3)
  {
    v37 = *(v5 + 32);
    if (v37)
    {
      v38 = *(v5 + 40);
      v39 = *(v5 + 16);
      v40 = objc_allocWithZone(MEMORY[0x1E69C7778]);

      v41 = [v40 init];
      UUID.init()();
      v42 = UUID.uuidString.getter();
      v101 = v14;
      v44 = v43;
      (*(v90 + 8))(v24, v91);
      v45 = MEMORY[0x1E12A1410](v42, v44);

      [v41 setAceId_];

      v46 = v41;
      v47 = [v39 aceId];
      [v46 setRefId_];

      [v46 setErrorCode_];
      v48 = v92;
      v49 = MEMORY[0x1E12A1410](v92, a3);
      [v46 setReason_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x6567617373654DLL;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = v48;
      *(inited + 56) = a3;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v51 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v52 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v54 = [v51 initWithDomain:v52 code:-1 userInfo:isa];

      v14 = v101;
      v37(v46, v54);

      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v37);
    }
  }

  else
  {
    specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v5 + 16), v6 & 1, 0, *(v5 + 32), *(v5 + 40), 0);
  }

  RunSiriKitExecutorProcessor.userMetadata.getter(v14);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
  if ((*(*(v55 - 8) + 48))(v14, 1, v55) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
    v56 = 0;
  }

  else
  {
    v57 = v14[*(v55 + 48)];
    v59 = v94;
    v58 = v95;
    v60 = *(v95 + 48);
    v61 = *(v98 + 32);
    v62 = v102;
    v61(v94, v14, v102);
    v59[v60] = v57;
    v63 = v59[*(v58 + 48)];
    v64 = v96;
    v61(v96, v59, v62);
    v65 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source);
    LODWORD(v101) = v63;
    if (v65 > 1)
    {
      LODWORD(v98) = 1;
    }

    else
    {
      LODWORD(v98) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v67 = v99;
    v66 = v100;
    v68 = v93;
    v69 = (*(v100 + 16))(v99, v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType, v93);
    v70 = (*(*v5 + 472))(v69);
    v71 = v97;
    v72 = v102;
    v61(v97, v64, v102);
    LODWORD(v96) = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold);
    updated = type metadata accessor for ConversationContextUpdateMetadata();
    v74 = *(updated + 48);
    v75 = *(updated + 52);
    v56 = swift_allocObject();
    *(v56 + 16) = v98 & 1;
    (*(v66 + 32))(v56 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v67, v68);
    *(v56 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v70;
    v61((v56 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId), v71, v72);
    *(v56 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
    *(v56 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v101;
    *(v56 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v96;
  }

  v76 = *(v5 + 48);
  v77 = *(v5 + 136);
  v100 = *(v5 + 144);
  v101 = v77;
  v102 = *(v5 + 24);
  v78 = *(v5 + 152);
  v98 = *(v5 + 160);
  v99 = v78;
  v79 = v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId;
  v80 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
  v81 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId + 8);
  v82 = swift_allocObject();
  v83 = v103;
  *(v82 + 16) = v5;
  *(v82 + 24) = v83;
  v84 = *(*v76 + 296);

  v85 = v83;
  v84(v85, v101, v100, 0, 0, v5 + 96, v102, v56, v99, v98, v79, v80, v81, partial apply for closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:), v82);

  (*(*v5 + 648))(v86);

  return (*(*v5 + 456))(1);
}

uint64_t sub_1DC721114()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24[-v10];
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v12 = objc_allocWithZone(type metadata accessor for RunSiriKitExecutorResponseMessage());
  v13 = RunSiriKitExecutorResponseMessage.init(build:)();
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = one-time initialization token for shared;

    v17 = v14;
    if (v16 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = static MessageBusActor.shared;
    v19 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = a4;
    v20[5] = v17;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:), v20);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v17 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v17, v22, "Could not build RunSiriKitExecutorResponseMessage: missing fields?", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }
  }
}

uint64_t sub_1DC721428()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t closure #1 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  MessageBase.assistantId.getter();
  RunSiriKitExecutorResponseMessage.Builder.assistantId.setter();
  RequestMessageBase.requestId.getter();
  RunSiriKitExecutorResponseMessage.Builder.requestId.setter();
  SessionMessageBase.sessionId.getter();
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  RunSiriKitExecutorResponseMessage.Builder.sessionId.setter();
  v15 = *MEMORY[0x1E69D0460];
  v16 = type metadata accessor for MessageSource();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  RunSiriKitExecutorResponseMessage.Builder.source.setter();
  v18 = a3;
  RunSiriKitExecutorResponseMessage.Builder.response.setter();
  v19 = a4;
  RunSiriKitExecutorResponseMessage.Builder.error.setter();
  RunSiriKitExecutorMessage.invocationId.getter();
  return RunSiriKitExecutorResponseMessage.Builder.invocationId.setter();
}

void SessionStateContextKeysManager.removeKey(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SessionStateContextKeysManager.removeKey(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a2, v29);
  outlined destroy of ReferenceResolutionClientProtocol?(v29, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  swift_endAccess();
  v13 = v4[2];
  v28 = a2;
  v13(v9, a2, v3);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v12, v9);
  v14 = v4[1];
  v14(v12, v3);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);
  v16 = v27;
  v13(v27, v28, v3);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v13;
    v28 = v14;
    v20 = v19;
    v21 = swift_slowAlloc();
    *&v29[0] = v21;
    *v20 = 136315138;
    v26(v12, v16, v3);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v28(v16, v3);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v29);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1DC659000, v17, v18, "StateKey: %s marked for removal from SessionState", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  else
  {

    v14(v16, v3);
  }
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ConversationSessionKey();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    outlined init with take of Sendable(*(v11 + 56) + 32 * v8, a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = *(a3 + 144);
  if (v11)
  {
    v12 = *(a3 + 136);
    v13 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);

    v15 = a2;
    v16 = one-time initialization token for shared;
    v17 = a4;
    if (v16 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = static MessageBusActor.shared;
    v19 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = a3;
    v20[5] = a2;
    v20[6] = v12;
    v20[7] = v11;
    v20[8] = v17;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:), v20);
    (*(*v13 + 120))();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v25 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v25, v22, "Failed to find requestId for logging selg message", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v24 = v25;
  }
}

uint64_t sub_1DC721E44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.safelyCloseContextUpdater()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = one-time initialization token for shared;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v10 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater(), v11);
  (*(*v6 + 120))();
}

uint64_t sub_1DC722084()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t RunSiriKitExecutorProcessor.requestFinished.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t partial apply for closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)();
}

uint64_t closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return ConversationService.cleanupEmptyActiveConversations()();
}

uint64_t ConversationService.cleanupEmptyActiveConversations()()
{
  *(v1 + 152) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 160) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.cleanupEmptyActiveConversations(), v2, 0);
}

{
  v1 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v2 = v0[19];
  swift_beginAccess();
  v3 = *(v2 + 104);
  if ((v3 & 0xC000000000000001) == 0)
  {
    v12 = -1;
    v13 = -1 << *(v3 + 32);
    v7 = v3 + 56;
    v14 = *(v3 + 56);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v0[24] = v1;
    v5 = v0 + 24;
    v10 = v12 & v14;
    v0[22] = v7;
    v0[23] = ~v13;
    v0[21] = v3;
    v11 = 63 - v13;

    v9 = 0;
    goto LABEL_9;
  }

  if (v3 < 0)
  {
    v4 = *(v2 + 104);
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for RemoteConversationClient();
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient);
  Set.Iterator.init(_cocoa:)();
  v0[24] = v1;
  v5 = v0 + 24;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v0[22] = v7;
  v0[23] = v8;
  v0[21] = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v8 + 64;
LABEL_9:
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      v17 = v9;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v16 >= (v11 >> 6))
        {
          goto LABEL_21;
        }

        v15 = *(v7 + 8 * v16);
        ++v17;
        if (v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_30:
      if (*v5 < 0)
      {
        v34 = *v5;
      }

      v20 = __CocoaSet.count.getter();
      v28 = v20;
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

LABEL_14:
    v18 = (v15 - 1) & v15;
    v19 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    goto LABEL_15;
  }

  v23 = __CocoaSet.Iterator.next()();
  if (!v23)
  {
    goto LABEL_21;
  }

  v0[18] = v23;
  swift_dynamicCast();
  v19 = v0[17];
  v16 = v9;
  v18 = v10;
LABEL_15:
  v0[26] = v16;
  v0[27] = v18;
  v0[25] = v19;
  if (v19)
  {
    v20 = ConversationService.cleanupEmptyActiveConversations();
    v21 = v19;
    v22 = 0;

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

LABEL_21:
  v24 = v0[23];
  v11 = v0[24];
  v25 = v0[21];
  v26 = v0[22];
  v27 = v0[20];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  if (v11 >> 62)
  {
    goto LABEL_30;
  }

  v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
LABEL_23:
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = v11 & 0xC000000000000001;
      v31 = *v5 + 32;
      do
      {
        if (v30)
        {
          v32 = MEMORY[0x1E12A1FE0](v29, *v5);
        }

        else
        {
          v32 = *(v31 + 8 * v29);
        }

        v33 = v0[19];
        ++v29;
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v32);
        swift_endAccess();
      }

      while (v28 != v29);
      goto LABEL_33;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

LABEL_33:
  v35 = v0[24];

  v36 = v0[1];

  return v36();
}

{
  v22 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = static os_log_type_t.debug.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315394;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v21);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_1DC659000, v3, v2, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v12 = v0[25];
  v13 = v12[19];
  v14 = v12[20];
  __swift_project_boxed_opaque_existential_1(v12 + 16, v13);
  v15 = *(v14 + 16);
  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = ConversationService.cleanupEmptyActiveConversations();
  v18 = MEMORY[0x1E69E6370];

  return (v20)(v0 + 30, &async function pointer to closure #1 in RemoteConversationClient.isEmpty(), 0, v18, v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  v5 = *(v2 + 200);
  if (v0)
  {

    v6 = ConversationService.cleanupEmptyActiveConversations();
  }

  else
  {
    v6 = ConversationService.cleanupEmptyActiveConversations();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v11 = v0;
  v1 = *(v0 + 240);
  *(v0 + 241) = v1;
  if (v1 == 2)
  {
    v2 = *(v0 + 224);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v10);
      _os_log_impl(&dword_1DC659000, v3, v4, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E12A2F50](v6, -1, -1);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v7 = *(v0 + 160);
    v8 = ConversationService.cleanupEmptyActiveConversations();
  }

  else
  {
    v7 = *(v0 + 160);
    v8 = ConversationService.cleanupEmptyActiveConversations();
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v1 = *(v0 + 200);
  if (*(v0 + 241))
  {

    MEMORY[0x1E12A1680](v2);
    if (*((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v3 = *(v0 + 200);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    *(v0 + 192) = *(v0 + 128);
    v6 = *(v0 + 168);
    if (v6 < 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = v4;
    v9 = v5;
    if (!v4)
    {
      v12 = v5;
      while (1)
      {
        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v9 >= ((*(v0 + 184) + 64) >> 6))
        {
          goto LABEL_18;
        }

        v11 = *(*(v0 + 176) + 8 * v9);
        ++v12;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_13:
    v10 = (v11 - 1) & v11;
    v8 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v11)))));

    goto LABEL_14;
  }

  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 168);
  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v7 = __CocoaSet.Iterator.next()();
  if (!v7)
  {
    goto LABEL_18;
  }

  *(v0 + 144) = v7;
  type metadata accessor for RemoteConversationClient();
  swift_dynamicCast();
  v8 = *(v0 + 136);
  v9 = v5;
  v10 = v4;
LABEL_14:
  *(v0 + 208) = v9;
  *(v0 + 216) = v10;
  *(v0 + 200) = v8;
  if (v8)
  {
    v13 = ConversationService.cleanupEmptyActiveConversations();
    v14 = v8;
    v15 = 0;

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

LABEL_18:
  v16 = *(v0 + 184);
  v9 = *(v0 + 192);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  if (!(v9 >> 62))
  {
    v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

LABEL_27:
  if (*(v0 + 192) < 0)
  {
    v26 = *(v0 + 192);
  }

  v13 = __CocoaSet.count.getter();
  v20 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v20 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  v21 = 0;
  v22 = v9 & 0xC000000000000001;
  v23 = *(v0 + 192) + 32;
  do
  {
    if (v22)
    {
      v24 = MEMORY[0x1E12A1FE0](v21, *(v0 + 192));
    }

    else
    {
      v24 = *(v23 + 8 * v21);
    }

    v25 = *(v0 + 152);
    ++v21;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v24);
    swift_endAccess();
  }

  while (v20 != v21);
LABEL_30:
  v27 = *(v0 + 192);

  v28 = *(v0 + 8);

  return v28();
}

{
  v9 = v0;
  v1 = *(v0 + 224);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v8);
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](ConversationService.cleanupEmptyActiveConversations(), v6, 0);
}

{
  v1 = v0[25];

  MEMORY[0x1E12A1680](v2);
  if (*((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v3 = v0[25];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = v0[26];
    v5 = v0[27];
    v0[24] = v0[16];
    v6 = v0[21];
    if (v6 < 0)
    {
      break;
    }

    v7 = v5;
    v8 = v4;
    if (v5)
    {
LABEL_8:
      v10 = (v7 - 1) & v7;
      v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));

      goto LABEL_11;
    }

    v9 = v4;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= ((v0[23] + 64) >> 6))
      {
        goto LABEL_15;
      }

      v7 = *(v0[22] + 8 * v8);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = __CocoaSet.Iterator.next()();
  if (v12)
  {
    v0[18] = v12;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v11 = v0[17];
    v8 = v4;
    v10 = v5;
LABEL_11:
    v0[26] = v8;
    v0[27] = v10;
    v0[25] = v11;
    if (v11)
    {
      v13 = ConversationService.cleanupEmptyActiveConversations();
      v14 = v11;
      v15 = 0;

      return MEMORY[0x1EEE6DFA0](v13, v14, v15);
    }
  }

LABEL_15:
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[22];
  v20 = v0[20];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();

  if (v17 >> 62)
  {
    if (v0[24] < 0)
    {
      v27 = v0[24];
    }

    v13 = __CocoaSet.count.getter();
    v21 = v13;
    if (!v13)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_28;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  v22 = 0;
  v23 = v17 & 0xC000000000000001;
  v24 = v0[24] + 32;
  do
  {
    if (v23)
    {
      v25 = MEMORY[0x1E12A1FE0](v22, v0[24]);
    }

    else
    {
      v25 = *(v24 + 8 * v22);
    }

    v26 = v0[19];
    ++v22;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v25);
    swift_endAccess();
  }

  while (v21 != v22);
LABEL_28:
  v28 = v0[24];

  v29 = v0[1];

  return v29();
}