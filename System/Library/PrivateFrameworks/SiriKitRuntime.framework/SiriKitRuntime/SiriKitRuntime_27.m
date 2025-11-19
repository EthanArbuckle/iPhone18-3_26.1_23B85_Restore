uint64_t EventQueue.__deallocating_deinit()
{
  EventQueue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
}

uint64_t specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)()
{
  v1 = v0[3];
  type metadata accessor for SiriEnvironment();
  v2 = ActingFlowAgent.environment.getter();
  v0[6] = v2;
  v3 = *(MEMORY[0x1E69D3400] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE40DC8](v7, v2, v5, v6, v8);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t partial apply for closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:)(a1, v4, v5, v6);
}

uint64_t outlined init with take of UserInputResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of EncoreEngine.EngineEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SystemEvents? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SystemEvents? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SystemEvents? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type SystemEvents and conformance SystemEvents, 255, MEMORY[0x1E699BB30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemEvents? and conformance <A> A?);
  }

  return result;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v5 = a1;
  v6 = *a1;
  v7 = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {
    goto LABEL_5;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      goto LABEL_48;
    }

    v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  v3 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        goto LABEL_5;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E12A1FE0](v10, v6);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v12 = *(v6 + 8 * v10 + 32);

LABEL_17:
    v23 = v12;
    v13 = closure #1 in EncoreEngine.ensureReady()(&v23, a2);

    if ((v13 & 1) == 0)
    {
      if (v3 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E12A1FE0](v3, v6);
          v14 = MEMORY[0x1E12A1FE0](v10, v6);
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3 >= v15)
          {
            goto LABEL_46;
          }

          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          v14 = *(v6 + 32 + 8 * v10);
          v22 = *(v6 + 32 + 8 * v3);
        }

        v16 = v5;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v17 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v6 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v14;

        if ((v6 & 0x8000000000000000) != 0 || v17)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);

            goto LABEL_5;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v10 >= *(v18 + 16))
        {
          goto LABEL_44;
        }

        v5 = v16;
        v20 = v18 + 8 * v10;
        v21 = *(v20 + 32);
        *(v20 + 32) = v22;

        *v16 = v6;
      }

LABEL_9:
      v11 = __OFADD__(v3++, 1);
      if (v11)
      {
        goto LABEL_43;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  v3 = __CocoaSet.count.getter();
LABEL_5:

  return v3;
}

uint64_t partial apply for closure #1 in LifeCycleModifier.onDetached(value:parentFlowContext:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  return dispatch thunk of LifeCycleModifier.onDetached(value:)();
}

uint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12A1FE0](v7, a1);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = closure #1 in EncoreEngine.ensureReady()(&v12, a2);

    if (v2)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized EncoreEngine.action(mode:starting:context:completion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v142 = a3;
  v155 = a1;
  v143 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v12 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for FlowTraceEvent();
  v152 = *(v153 - 8);
  v14 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for InterruptionPolicy();
  v149 = *(v150 - 8);
  v16 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v136 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v135 - v19;
  v141 = type metadata accessor for ConversationContext();
  v140 = *(v141 - 8);
  v20 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v137 = v21;
  v139 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v138 = &v135 - v24;
  v25 = swift_allocObject();
  *(v25 + 2) = a5;
  *(v25 + 3) = a6;
  v145 = a6;
  v154 = v25;
  *(v25 + 4) = a7;
  v26 = one-time initialization token for executor;
  v147 = a5;

  v146 = a7;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.executor);

  v156 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v162 = v32;
    *v31 = 136315394;
    if (a2)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v164);
    }

    else
    {
      v166 = 0;
      v164 = 0u;
      v165 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v162);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    *&v164 = 0;
    *(&v164 + 1) = 0xE000000000000000;
    v36 = 0xE600000000000000;
    v37 = 0x7075727265746E69;
    if (v155 == 2)
    {
      v36 = 0xE900000000000074;
    }

    else
    {
      v37 = 0x705570617277;
    }

    v38 = 0x6C616D726F6ELL;
    if (v155)
    {
      v38 = 0x656D75736572;
    }

    if (v155 <= 1u)
    {
      v39 = v38;
    }

    else
    {
      v39 = v37;
    }

    if (v155 <= 1u)
    {
      v40 = 0xE600000000000000;
    }

    else
    {
      v40 = v36;
    }

    MEMORY[0x1E12A1580](v39, v40);

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, *(&v164 + 1), &v162);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_1DC659000, v29, v30, "[EncoreEngine] Starting node %s mode: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v32, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  v42 = v155;
  v159 = a4;
  if (!a2)
  {
    goto LABEL_21;
  }

  while (1)
  {

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v162 = v47;
      *v46 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v164);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v48 = String.init<A>(describing:)();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v162);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *&v164 = 0;
      *(&v164 + 1) = 0xE000000000000000;
      v51 = 0xE600000000000000;
      v52 = 0x7075727265746E69;
      if (v42 == 2)
      {
        v51 = 0xE900000000000074;
      }

      else
      {
        v52 = 0x705570617277;
      }

      v53 = 0x6C616D726F6ELL;
      if (v42)
      {
        v53 = 0x656D75736572;
      }

      if (v42 <= 1u)
      {
        v54 = v53;
      }

      else
      {
        v54 = v52;
      }

      if (v42 <= 1u)
      {
        v55 = 0xE600000000000000;
      }

      else
      {
        v55 = v51;
      }

      MEMORY[0x1E12A1580](v54, v55);

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, *(&v164 + 1), &v162);

      *(v46 + 14) = v56;
      _os_log_impl(&dword_1DC659000, v44, v45, "[EncoreEngine] ActiveFlow %s mode: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v47, -1, -1);
      MEMORY[0x1E12A2F50](v46, -1, -1);

      v57 = v42;
    }

    else
    {

      v57 = v155;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(a2 + 16) + 176, &v162, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    if (!v163)
    {
      v155 = v57;
      LODWORD(v158) = v42;
      outlined destroy of ReferenceResolutionClientProtocol?(&v162, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      goto LABEL_58;
    }

    outlined init with take of ReferenceResolutionClientProtocol(&v162, &v164);
    if (v57 <= 1u)
    {
      if (v57 != 1)
      {
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v102 = type metadata accessor for TaskPriority();
        v103 = __swift_project_value_buffer(v102, static EncoreEngine.TaskPriority);
        v104 = *(v102 - 8);
        v105 = v138;
        (*(v104 + 16))(v138, v103, v102);
        (*(v104 + 56))(v105, 0, 1, v102);
        outlined init with copy of ReferenceResolutionClientProtocol(&v164, &v162);
        v106 = v140;
        v158 = *(v140 + 16);
        v107 = v139;
        v108 = v141;
        v158(v139, v142);
        v109 = (*(v106 + 80) + 80) & ~*(v106 + 80);
        v110 = (v137 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
        v111 = swift_allocObject();
        v111[2] = 0;
        v111[3] = 0;
        outlined init with take of ReferenceResolutionClientProtocol(&v162, (v111 + 4));
        v111[9] = a2;
        v157 = *(v106 + 32);
        v112 = v111 + v109;
        v113 = v108;
        (v157)(v112, v107, v108);
        *(v111 + v110) = a4;

        v114 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v105, &async function pointer to partial apply for closure #1 in EncoreEngine.action(mode:starting:context:completion:), v111);
        outlined destroy of ReferenceResolutionClientProtocol?(v105, &_sScPSgMd, &_sScPSgMR);
        (v158)(v107, v142, v113);
        v115 = type metadata accessor for ExecutableTask(0);
        v116 = *(v115 + 48);
        v117 = *(v115 + 52);
        v118 = swift_allocObject();
        *(v118 + 16) = a2;
        (v157)(v118 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context, v107, v113);
        *(v118 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = v114;
        v119 = (v118 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
        v120 = v154;
        *v119 = partial apply for closure #5 in EncoreEngine.handleExternal(event:);
        v119[1] = v120;
        swift_beginAccess();

        MEMORY[0x1E12A1680](v121);
        if (*((*(a4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v132 = *((*(a4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        goto LABEL_72;
      }

      outlined init with copy of ReferenceResolutionClientProtocol(&v164, &v162);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v161 = v69;
        *v68 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol(&v162, v160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
        v70 = String.init<A>(describing:)();
        v72 = v71;
        __swift_destroy_boxed_opaque_existential_1Tm(&v162);
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v161);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_1DC659000, v66, v67, "[EncoreEngine] Executing flow: %s resumes.", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x1E12A2F50](v69, -1, -1);
        MEMORY[0x1E12A2F50](v68, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v162);
      }

      v89 = 0;
      v74 = 0;
      goto LABEL_57;
    }

    if (v57 != 2)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol(&v164, &v162);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v161 = v61;
      *v60 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v162, v160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v62 = String.init<A>(describing:)();
      v64 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(&v162);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v161);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_1DC659000, v58, v59, "[EncoreEngine] Executing flow: %s interrupted.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v162);
    }

    __swift_project_boxed_opaque_existential_1(&v164, *(&v165 + 1));
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8]);
    v85 = swift_allocError();
    BargeInError.init(rawError:)();
    dispatch thunk of Executable.cancel(error:)();

    v86 = v151;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v151);
    v87 = v152;
    v88 = v153;
    (*(v152 + 104))(v86, *MEMORY[0x1E69CFAE8], v153);
    static FlowTrace.trace(event:)();
    (*(v87 + 8))(v86, v88);
    v89 = 3;
    v74 = 3;
LABEL_57:
    v155 = v89;
    LODWORD(v158) = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(&v164);
LABEL_58:
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    v95 = swift_allocObject();
    v157 = &v135;
    v95[2] = v94;
    v95[3] = partial apply for closure #5 in EncoreEngine.handleExternal(event:);
    v95[4] = v154;
    v96 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v95);
    v97 = v159;
    *(&v135 - 4) = a2;
    *(&v135 - 3) = v97;
    *(&v135 - 2) = partial apply for closure #2 in EncoreEngine.action(mode:starting:context:completion:);
    *(&v135 - 1) = v98;
    v99 = one-time initialization token for $conversationContext;
    swift_retain_n();

    if (v99 != -1)
    {
      swift_once();
    }

    *&v164 = v96;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
    swift_task_localValuePush();
    type metadata accessor for SiriEnvironment();
    ActingFlowAgent.environment.getter();
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    swift_task_localValuePop();

    swift_beginAccess();
    v100 = *(v94 + 16);

    a4 = v159;
    v42 = v158;
    if (v100)
    {
      goto LABEL_73;
    }

LABEL_21:
    v43 = (*(**(a4 + 24) + 216))();
    if (!v43)
    {
      v101 = v144;
      swift_storeEnumTagMultiPayload();
      closure #5 in EncoreEngine.handleExternal(event:)(v101, v147, v145, v146);
      outlined destroy of EncoreEngine.EngineEvent(v101, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_73:
      flushProcessWideSiriEnvironmentCache()();
    }

    a2 = v43;
  }

  v74 = v42;
  __swift_project_boxed_opaque_existential_1(&v164, *(&v165 + 1));
  v75 = v148;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v76 = (*(v149 + 88))(v75, v150);
  if (v76 == *MEMORY[0x1E69CFF50] || v76 == *MEMORY[0x1E69CFF48])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v164, &v162);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v161 = v125;
      *v124 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v162, v160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v126 = String.init<A>(describing:)();
      v128 = v127;
      __swift_destroy_boxed_opaque_existential_1Tm(&v162);
      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v161);

      *(v124 + 4) = v129;
      _os_log_impl(&dword_1DC659000, v122, v123, "[EncoreEngine] Wrapping up. Yield executable flow: %s.", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v125);
      MEMORY[0x1E12A2F50](v125, -1, -1);
      MEMORY[0x1E12A2F50](v124, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v162);
    }

    v130 = v144;
    swift_storeEnumTagMultiPayload();
    closure #5 in EncoreEngine.handleExternal(event:)(v130, v147, v145, v146);

    outlined destroy of EncoreEngine.EngineEvent(v130, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_72:
    __swift_destroy_boxed_opaque_existential_1Tm(&v164);
    goto LABEL_73;
  }

  if (v76 == *MEMORY[0x1E69CFF58])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v164, &v162);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v161 = v80;
      *v79 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v162, v160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v81 = String.init<A>(describing:)();
      v83 = v82;
      __swift_destroy_boxed_opaque_existential_1Tm(&v162);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v161);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_1DC659000, v77, v78, "[EncoreEngine] Wrapping up. Notify executable flow: %s with FlowOperationIgnored.", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v162);
    }

    __swift_project_boxed_opaque_existential_1(&v164, *(&v165 + 1));
    type metadata accessor for FlowOperationIgnored();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowOperationIgnored and conformance FlowOperationIgnored, 255, MEMORY[0x1E69CFB80]);
    v90 = swift_allocError();
    MEMORY[0x1E129A900](0xD000000000000054, 0x80000001DCA82B90);
    dispatch thunk of Executable.cancel(error:)();

    v91 = v151;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v151);
    v92 = v152;
    v93 = v153;
    (*(v152 + 104))(v91, *MEMORY[0x1E69CFAE8], v153);
    static FlowTrace.trace(event:)();
    (*(v92 + 8))(v91, v93);
    v89 = 3;
    goto LABEL_57;
  }

  *&v162 = 0;
  *(&v162 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA82B60);
  __swift_project_boxed_opaque_existential_1(&v164, *(&v165 + 1));
  v133 = v136;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v134 = v150;
  _print_unlocked<A, B>(_:_:)();
  (*(v149 + 8))(v133, v134);

  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v162, *(&v162 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 551);
  __break(1u);
  return result;
}

unint64_t specialized EncoreEngine.ActionMode.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EncoreEngine.ActionMode.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode()
{
  result = lazy protocol witness table cache variable for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode;
  if (!lazy protocol witness table cache variable for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RequestContinuation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UserInputResult();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Input();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for RequestContinuation(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Input();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v5 = *(a1 + *(a2 + 20));
}

char *initializeWithCopy for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

char *assignWithCopy for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for UserInputResult);
    v6 = type metadata accessor for UserInputResult();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Input();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = *(a3 + 20);
  v9 = *&a1[v8];
  *&a1[v8] = *&a2[v8];

  return a1;
}

char *initializeWithTake for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UserInputResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for UserInputResult);
    v6 = type metadata accessor for UserInputResult();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Input();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = *(a3 + 20);
  v9 = *&a1[v8];
  *&a1[v8] = *&a2[v8];

  return a1;
}

uint64_t type metadata completion function for RequestContinuation()
{
  result = type metadata accessor for UserInputResult();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for EncoreEngineEvent(char *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v15 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v15;

        goto LABEL_34;
      case 4:
        v27 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v27;
        v28 = type metadata accessor for SiriRequest(0);
        v29 = v28[5];
        v30 = type metadata accessor for Input();
        v31 = *(*(v30 - 8) + 16);

        v31(&a1[v29], a2 + v29, v30);
        *&a1[v28[6]] = *(a2 + v28[6]);
        *&a1[v28[7]] = *(a2 + v28[7]);
        v32 = v28[8];
        v33 = &a1[v32];
        v34 = (a2 + v32);
        v35 = *(a2 + v32 + 8);

        if (v35 >> 60 == 15)
        {
          *v33 = *v34;
        }

        else
        {
          v44 = *v34;
          outlined copy of Data._Representation(*v34, v35);
          *v33 = v44;
          *(v33 + 1) = v35;
        }

        *&a1[v28[9]] = *(a2 + v28[9]);
        *&a1[v28[10]] = *(a2 + v28[10]);
        *&a1[v28[11]] = *(a2 + v28[11]);
        v45 = v28[12];
        __dst = &a1[v45];
        v46 = a2 + v45;
        v47 = type metadata accessor for SiriRequestIdentities(0);
        v71 = *(v47 - 8);
        v48 = *(v71 + 48);

        if (v48(v46, 1, v47))
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v46, *(*(v49 - 8) + 64));
        }

        else
        {
          v50 = type metadata accessor for IdentifiedUser();
          v51 = *(v50 - 8);
          v52 = v46;
          v53 = *(v51 + 48);
          v70 = v51;
          if (v53(v46, 1, v50))
          {
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            v55 = __dst;
            memcpy(__dst, v46, *(*(v54 - 8) + 64));
          }

          else
          {
            v56 = *(v51 + 16);
            v57 = v53;
            v58 = v51;
            v55 = __dst;
            v56(__dst, v52, v50);
            v59 = v58;
            v53 = v57;
            (*(v59 + 56))(__dst, 0, 1, v50);
          }

          v60 = *(v47 + 20);
          if (v53(&v52[v60], 1, v50))
          {
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&v55[v60], &v52[v60], *(*(v61 - 8) + 64));
          }

          else
          {
            (*(v70 + 16))(&v55[v60], &v52[v60], v50);
            (*(v70 + 56))(&v55[v60], 0, 1, v50);
          }

          *&v55[*(v47 + 24)] = *&v52[*(v47 + 24)];
          v62 = *(v71 + 56);

          v62(v55, 0, 1, v47);
        }

        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v64 = *(v63 + 48);
        v65 = type metadata accessor for ConversationContext();
        (*(*(v65 - 8) + 16))(&a1[v64], a2 + v64, v65);
        v66 = *(v63 + 64);
        v67 = &a1[v66];
        v68 = (a2 + v66);
        v69 = v68[1];
        *v67 = *v68;
        *(v67 + 1) = v69;

        goto LABEL_34;
      case 5:
        v11 = type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v12 = type metadata accessor for Input();
          (*(*(v12 - 8) + 16))(a1, a2, v12);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v11 - 8) + 64));
        }

        v36 = type metadata accessor for RequestContinuation(0);
        *&a1[*(v36 + 20)] = *(a2 + *(v36 + 20));

        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v38 = *(v37 + 48);
        v39 = type metadata accessor for ConversationContext();
        (*(*(v39 - 8) + 16))(&a1[v38], a2 + v38, v39);
        v40 = *(v37 + 64);
        v41 = &a1[v40];
        v42 = (a2 + v40);
        v43 = v42[1];
        *v41 = *v42;
        *(v41 + 1) = v43;

        goto LABEL_34;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v13 = *a2;
        *a1 = *a2;
        v14 = v13;
        goto LABEL_34;
      case 1:
        v18 = *a2;
        *a1 = *a2;
        v19 = v18;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v21 = *(v20 + 48);
        v22 = type metadata accessor for ConversationContext();
        (*(*(v22 - 8) + 16))(&a1[v21], a2 + v21, v22);
        v23 = *(v20 + 64);
        v24 = &a1[v23];
        v25 = (a2 + v23);
        v26 = v25[1];
        *v24 = *v25;
        *(v24 + 1) = v26;

        goto LABEL_34;
      case 2:
        v8 = *(a2 + 3);
        *(a1 + 24) = v8;
        (**(v8 - 8))(a1, a2);
        v9 = a2[6];
        *(a1 + 5) = a2[5];
        *(a1 + 6) = v9;

LABEL_34:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

void destroy for EncoreEngineEvent(uint64_t *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v9 = a1[1];
LABEL_28:

        return;
      case 4:
        v10 = a1[1];

        v11 = type metadata accessor for SiriRequest(0);
        v12 = v11[5];
        v13 = type metadata accessor for Input();
        (*(*(v13 - 8) + 8))(a1 + v12, v13);
        v14 = *(a1 + v11[6]);

        v15 = *(a1 + v11[7]);

        v16 = (a1 + v11[8]);
        v17 = v16[1];
        if (v17 >> 60 != 15)
        {
          outlined consume of Data._Representation(*v16, v17);
        }

        v18 = *(a1 + v11[9]);

        v19 = *(a1 + v11[10]);

        v20 = *(a1 + v11[11]);

        v21 = a1 + v11[12];
        v22 = type metadata accessor for SiriRequestIdentities(0);
        if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
        {
          v23 = type metadata accessor for IdentifiedUser();
          v24 = *(v23 - 8);
          v25 = *(v24 + 48);
          if (!v25(v21, 1, v23))
          {
            (*(v24 + 8))(v21, v23);
          }

          v26 = *(v22 + 20);
          if (!v25(&v21[v26], 1, v23))
          {
            (*(v24 + 8))(&v21[v26], v23);
          }

          v27 = *&v21[*(v22 + 24)];
        }

        v6 = &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd;
        v7 = &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR;
        break;
      case 5:
        type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v4 = type metadata accessor for Input();
          (*(*(v4 - 8) + 8))(a1, v4);
        }

        v5 = *(a1 + *(type metadata accessor for RequestContinuation(0) + 20));

        v6 = &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd;
        v7 = &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR;
        break;
      default:
        return;
    }

LABEL_27:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v29 = *(v28 + 48);
    v30 = type metadata accessor for ConversationContext();
    (*(*(v30 - 8) + 8))(a1 + v29, v30);
    v31 = *(a1 + *(v28 + 64) + 8);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v3 = a1[6];
      goto LABEL_28;
    }

    v6 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd;
    v7 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR;
    goto LABEL_27;
  }

  v8 = *a1;
}

void *initializeWithCopy for EncoreEngineEvent(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;

        goto LABEL_32;
      case 4:
        v25 = a2[1];
        *a1 = *a2;
        a1[1] = v25;
        v26 = type metadata accessor for SiriRequest(0);
        v27 = v26[5];
        v28 = type metadata accessor for Input();
        v29 = *(*(v28 - 8) + 16);

        v29(a1 + v27, a2 + v27, v28);
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
          v42 = *v32;
          outlined copy of Data._Representation(*v32, v33);
          *v31 = v42;
          *(v31 + 1) = v33;
        }

        *(a1 + v26[9]) = *(a2 + v26[9]);
        *(a1 + v26[10]) = *(a2 + v26[10]);
        *(a1 + v26[11]) = *(a2 + v26[11]);
        v43 = v26[12];
        __dst = a1 + v43;
        v44 = a2 + v43;
        v45 = type metadata accessor for SiriRequestIdentities(0);
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);

        if (v47(v44, 1, v45))
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v44, *(*(v48 - 8) + 64));
        }

        else
        {
          v64 = v46;
          v49 = type metadata accessor for IdentifiedUser();
          v50 = *(v49 - 8);
          v51 = v44;
          v52 = *(v50 + 48);
          if (v52(v44, 1, v49))
          {
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v44, *(*(v53 - 8) + 64));
          }

          else
          {
            (*(v50 + 16))(__dst, v44, v49);
            (*(v50 + 56))(__dst, 0, 1, v49);
          }

          v54 = *(v45 + 20);
          if (v52(&v51[v54], 1, v49))
          {
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v54], &v51[v54], *(*(v55 - 8) + 64));
          }

          else
          {
            (*(v50 + 16))(&__dst[v54], &v51[v54], v49);
            (*(v50 + 56))(&__dst[v54], 0, 1, v49);
          }

          *&__dst[*(v45 + 24)] = *&v51[*(v45 + 24)];
          v56 = *(v64 + 56);

          v56(__dst, 0, 1, v45);
        }

        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v58 = *(v57 + 48);
        v59 = type metadata accessor for ConversationContext();
        (*(*(v59 - 8) + 16))(a1 + v58, a2 + v58, v59);
        v60 = *(v57 + 64);
        v61 = (a1 + v60);
        v62 = (a2 + v60);
        v63 = v62[1];
        *v61 = *v62;
        v61[1] = v63;

        goto LABEL_32;
      case 5:
        v9 = type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v10 = type metadata accessor for Input();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v9 - 8) + 64));
        }

        v34 = type metadata accessor for RequestContinuation(0);
        *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v36 = *(v35 + 48);
        v37 = type metadata accessor for ConversationContext();
        (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
        v38 = *(v35 + 64);
        v39 = (a1 + v38);
        v40 = (a2 + v38);
        v41 = v40[1];
        *v39 = *v40;
        v39[1] = v41;

        goto LABEL_32;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v11 = *a2;
        *a1 = *a2;
        v12 = v11;
        goto LABEL_32;
      case 1:
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v19 = *(v18 + 48);
        v20 = type metadata accessor for ConversationContext();
        (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
        v21 = *(v18 + 64);
        v22 = (a1 + v21);
        v23 = (a2 + v21);
        v24 = v23[1];
        *v22 = *v23;
        v22[1] = v24;

        goto LABEL_32;
      case 2:
        v7 = *(a2 + 3);
        *(a1 + 3) = v7;
        (**(v7 - 8))(a1, a2);
        v8 = a2[6];
        a1[5] = a2[5];
        a1[6] = v8;

LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *assignWithCopy for EncoreEngineEvent(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngineEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v13 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v13;

        goto LABEL_33;
      case 4:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v25 = type metadata accessor for SiriRequest(0);
        v26 = v25[5];
        v27 = type metadata accessor for Input();
        v28 = *(*(v27 - 8) + 16);

        v28(&a1[v26], &a2[v26], v27);
        *&a1[v25[6]] = *&a2[v25[6]];
        *&a1[v25[7]] = *&a2[v25[7]];
        v29 = v25[8];
        v30 = &a1[v29];
        v31 = &a2[v29];
        v32 = *&a2[v29 + 8];

        if (v32 >> 60 == 15)
        {
          *v30 = *v31;
        }

        else
        {
          v41 = *v31;
          outlined copy of Data._Representation(*v31, v32);
          *v30 = v41;
          *(v30 + 1) = v32;
        }

        *&a1[v25[9]] = *&a2[v25[9]];
        *&a1[v25[10]] = *&a2[v25[10]];
        *&a1[v25[11]] = *&a2[v25[11]];
        v42 = v25[12];
        __dst = &a1[v42];
        v43 = &a2[v42];
        v44 = type metadata accessor for SiriRequestIdentities(0);
        v45 = *(v44 - 8);
        v46 = *(v45 + 48);

        v47 = v43;
        if (v46(v43, 1, v44))
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v43, *(*(v48 - 8) + 64));
        }

        else
        {
          v66 = v45;
          v49 = type metadata accessor for IdentifiedUser();
          v50 = *(v49 - 8);
          v51 = v47;
          v52 = v47;
          v53 = *(v50 + 48);
          if (v53(v52, 1, v49))
          {
            v54 = v50;
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v51, *(*(v55 - 8) + 64));
          }

          else
          {
            (*(v50 + 16))(__dst, v51, v49);
            v54 = v50;
            (*(v50 + 56))(__dst, 0, 1, v49);
          }

          v56 = *(v44 + 20);
          if (v53(&v51[v56], 1, v49))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v56], &v51[v56], *(*(v57 - 8) + 64));
          }

          else
          {
            (*(v54 + 16))(&__dst[v56], &v51[v56], v49);
            (*(v54 + 56))(&__dst[v56], 0, 1, v49);
          }

          *&__dst[*(v44 + 24)] = *&v51[*(v44 + 24)];
          v58 = *(v66 + 56);

          v58(__dst, 0, 1, v44);
        }

        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v60 = *(v59 + 48);
        v61 = type metadata accessor for ConversationContext();
        (*(*(v61 - 8) + 16))(&a1[v60], &a2[v60], v61);
        v62 = *(v59 + 64);
        v63 = &a1[v62];
        v64 = &a2[v62];
        v65 = *(v64 + 1);
        *v63 = *v64;
        *(v63 + 1) = v65;

        goto LABEL_33;
      case 5:
        v9 = type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v10 = type metadata accessor for Input();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v9 - 8) + 64));
        }

        v33 = type metadata accessor for RequestContinuation(0);
        *&a1[*(v33 + 20)] = *&a2[*(v33 + 20)];

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v35 = *(v34 + 48);
        v36 = type metadata accessor for ConversationContext();
        (*(*(v36 - 8) + 16))(&a1[v35], &a2[v35], v36);
        v37 = *(v34 + 64);
        v38 = &a1[v37];
        v39 = &a2[v37];
        v40 = *(v39 + 1);
        *v38 = *v39;
        *(v38 + 1) = v40;

        goto LABEL_33;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v11 = *a2;
        *a1 = *a2;
        v12 = v11;
        goto LABEL_33;
      case 1:
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v19 = *(v18 + 48);
        v20 = type metadata accessor for ConversationContext();
        (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
        v21 = *(v18 + 64);
        v22 = &a1[v21];
        v23 = &a2[v21];
        v24 = *(v23 + 1);
        *v22 = *v23;
        *(v22 + 1) = v24;

        goto LABEL_33;
      case 2:
        v7 = *(a2 + 3);
        *(a1 + 3) = v7;
        *(a1 + 4) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
        v8 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v8;

LABEL_33:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

_OWORD *initializeWithTake for EncoreEngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v19 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = type metadata accessor for Input();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v19 - 8) + 64));
      }

      v23 = type metadata accessor for RequestContinuation(0);
      *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v25 = *(v24 + 48);
      v26 = type metadata accessor for ConversationContext();
      (*(*(v26 - 8) + 32))(a1 + v25, a2 + v25, v26);
      *(a1 + *(v24 + 64)) = *(a2 + *(v24 + 64));
      goto LABEL_22;
    case 4:
      *a1 = *a2;
      v10 = type metadata accessor for SiriRequest(0);
      v11 = v10[5];
      v12 = type metadata accessor for Input();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      *(a1 + v10[8]) = *(a2 + v10[8]);
      *(a1 + v10[9]) = *(a2 + v10[9]);
      *(a1 + v10[10]) = *(a2 + v10[10]);
      *(a1 + v10[11]) = *(a2 + v10[11]);
      v13 = v10[12];
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for SiriRequestIdentities(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        v27 = type metadata accessor for IdentifiedUser();
        v28 = *(v27 - 8);
        v36 = *(v28 + 48);
        v35 = v28;
        if (v36(v15, 1, v27))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v14, v15, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v28 + 32))(v14, v15, v27);
          (*(v28 + 56))(v14, 0, 1, v27);
        }

        v30 = *(v16 + 20);
        if (v36(&v15[v30], 1, v27))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v14[v30], &v15[v30], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(v35 + 32))(&v14[v30], &v15[v30], v27);
          (*(v35 + 56))(&v14[v30], 0, 1, v27);
        }

        *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v33 = *(v32 + 48);
      v34 = type metadata accessor for ConversationContext();
      (*(*(v34 - 8) + 32))(a1 + v33, a2 + v33, v34);
      *(a1 + *(v32 + 64)) = *(a2 + *(v32 + 64));
      goto LABEL_22;
    case 1:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
      v8 = *(v7 + 48);
      v9 = type metadata accessor for ConversationContext();
      (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_22:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v21 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v21);
}

_OWORD *assignWithTake for EncoreEngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngineEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v19 = type metadata accessor for UserInputResult();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = type metadata accessor for Input();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v19 - 8) + 64));
      }

      v23 = type metadata accessor for RequestContinuation(0);
      *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v25 = *(v24 + 48);
      v26 = type metadata accessor for ConversationContext();
      (*(*(v26 - 8) + 32))(a1 + v25, a2 + v25, v26);
      *(a1 + *(v24 + 64)) = *(a2 + *(v24 + 64));
      goto LABEL_23;
    case 4:
      *a1 = *a2;
      v10 = type metadata accessor for SiriRequest(0);
      v11 = v10[5];
      v12 = type metadata accessor for Input();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      *(a1 + v10[8]) = *(a2 + v10[8]);
      *(a1 + v10[9]) = *(a2 + v10[9]);
      *(a1 + v10[10]) = *(a2 + v10[10]);
      *(a1 + v10[11]) = *(a2 + v10[11]);
      v13 = v10[12];
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for SiriRequestIdentities(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        v27 = type metadata accessor for IdentifiedUser();
        v28 = *(v27 - 8);
        v36 = *(v28 + 48);
        v35 = v28;
        if (v36(v15, 1, v27))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v14, v15, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v28 + 32))(v14, v15, v27);
          (*(v28 + 56))(v14, 0, 1, v27);
        }

        v30 = *(v16 + 20);
        if (v36(&v15[v30], 1, v27))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v14[v30], &v15[v30], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(v35 + 32))(&v14[v30], &v15[v30], v27);
          (*(v35 + 56))(&v14[v30], 0, 1, v27);
        }

        *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v33 = *(v32 + 48);
      v34 = type metadata accessor for ConversationContext();
      (*(*(v34 - 8) + 32))(a1 + v33, a2 + v33, v34);
      *(a1 + *(v32 + 64)) = *(a2 + *(v32 + 64));
      goto LABEL_23;
    case 1:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
      v8 = *(v7 + 48);
      v9 = type metadata accessor for ConversationContext();
      (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_23:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v21 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v21);
}

uint64_t type metadata completion function for EncoreEngineEvent()
{
  v11 = MEMORY[0x1E69E5CE0] + 64;
  result = type metadata accessor for ConversationContext();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    v3 = MEMORY[0x1E69E7CB8] + 64;
    swift_getTupleTypeLayout3();
    v12 = &v10;
    v13 = "8";
    v14 = v3;
    result = type metadata accessor for SiriRequest(319);
    if (v4 <= 0x3F)
    {
      v5 = *(result - 8);
      swift_getTupleTypeLayout3();
      v15 = &v9;
      result = type metadata accessor for RequestContinuation(319);
      if (v6 <= 0x3F)
      {
        v7 = *(result - 8);
        swift_getTupleTypeLayout3();
        v16 = &v8;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for ExecutableTask()
{
  result = type metadata accessor for ConversationContext();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *assignWithCopy for EncoreEngine.InternalEvent(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for EncoreEngine.InternalEvent(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for EncoreEngine.InternalEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EncoreEngine.InternalEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for EncoreEngine.EngineEvent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_35:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v7 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v15 = a2[1];
          *a1 = *a2;
          a1[1] = v15;

          goto LABEL_34;
        case 4:
          v25 = a2[1];
          *a1 = *a2;
          a1[1] = v25;
          v26 = type metadata accessor for SiriRequest(0);
          v27 = v26[5];
          v28 = type metadata accessor for Input();
          v29 = *(*(v28 - 8) + 16);

          v29(a1 + v27, a2 + v27, v28);
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
            v42 = *v32;
            outlined copy of Data._Representation(*v32, v33);
            *v31 = v42;
            *(v31 + 1) = v33;
          }

          *(a1 + v26[9]) = *(a2 + v26[9]);
          *(a1 + v26[10]) = *(a2 + v26[10]);
          *(a1 + v26[11]) = *(a2 + v26[11]);
          v43 = v26[12];
          __dst = a1 + v43;
          v44 = a2 + v43;
          v45 = type metadata accessor for SiriRequestIdentities(0);
          v66 = *(v45 - 8);
          v46 = *(v66 + 48);

          v47 = v44;
          if (v46(v44, 1, v45))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
            memcpy(__dst, v44, *(*(v48 - 8) + 64));
          }

          else
          {
            v65 = v45;
            v49 = type metadata accessor for IdentifiedUser();
            v50 = *(v49 - 8);
            v51 = *(v50 + 48);
            v64 = v50;
            if (v51(v47, 1, v49))
            {
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(__dst, v47, *(*(v52 - 8) + 64));
            }

            else
            {
              (*(v50 + 16))(__dst, v47, v49);
              (*(v50 + 56))(__dst, 0, 1, v49);
            }

            v53 = *(v65 + 20);
            if (v51(&v47[v53], 1, v49))
            {
              v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(&__dst[v53], &v47[v53], *(*(v54 - 8) + 64));
            }

            else
            {
              (*(v64 + 16))(&__dst[v53], &v47[v53], v49);
              (*(v64 + 56))(&__dst[v53], 0, 1, v49);
            }

            *&__dst[*(v65 + 24)] = *&v47[*(v65 + 24)];
            v55 = *(v66 + 56);

            v55(__dst, 0, 1, v65);
          }

          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v57 = *(v56 + 48);
          v58 = type metadata accessor for ConversationContext();
          (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
          v59 = *(v56 + 64);
          v60 = (a1 + v59);
          v61 = (a2 + v59);
          v62 = v61[1];
          *v60 = *v61;
          v60[1] = v62;

          goto LABEL_34;
        case 5:
          v11 = type metadata accessor for UserInputResult();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = type metadata accessor for Input();
            (*(*(v12 - 8) + 16))(a1, a2, v12);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(a1, a2, *(*(v11 - 8) + 64));
          }

          v34 = type metadata accessor for RequestContinuation(0);
          *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));

          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v36 = *(v35 + 48);
          v37 = type metadata accessor for ConversationContext();
          (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
          v38 = *(v35 + 64);
          v39 = (a1 + v38);
          v40 = (a2 + v38);
          v41 = v40[1];
          *v39 = *v40;
          v39[1] = v41;

          goto LABEL_34;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 0:
          v13 = *a2;
          *a1 = *a2;
          v14 = v13;
          goto LABEL_34;
        case 1:
          v16 = *a2;
          *a1 = *a2;
          v17 = v16;
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
          v19 = *(v18 + 48);
          v20 = type metadata accessor for ConversationContext();
          (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
          v21 = *(v18 + 64);
          v22 = (a1 + v21);
          v23 = (a2 + v21);
          v24 = v23[1];
          *v22 = *v23;
          v22[1] = v24;

          goto LABEL_34;
        case 2:
          v9 = *(a2 + 3);
          *(a1 + 3) = v9;
          (**(v9 - 8))(a1, a2);
          v10 = a2[6];
          a1[5] = a2[5];
          a1[6] = v10;

LABEL_34:
          swift_storeEnumTagMultiPayload();
          goto LABEL_35;
      }
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_35;
  }

  v6 = *a2;
  *a1 = *a2;
  a1 = (v6 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for EncoreEngine.EngineEvent(uint64_t *a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
LABEL_30:

    return;
  }

  type metadata accessor for EncoreEngineEvent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v10 = a1[1];
        goto LABEL_30;
      case 4:
        v11 = a1[1];

        v12 = type metadata accessor for SiriRequest(0);
        v13 = v12[5];
        v14 = type metadata accessor for Input();
        (*(*(v14 - 8) + 8))(a1 + v13, v14);
        v15 = *(a1 + v12[6]);

        v16 = *(a1 + v12[7]);

        v17 = (a1 + v12[8]);
        v18 = v17[1];
        if (v18 >> 60 != 15)
        {
          outlined consume of Data._Representation(*v17, v18);
        }

        v19 = *(a1 + v12[9]);

        v20 = *(a1 + v12[10]);

        v21 = *(a1 + v12[11]);

        v22 = a1 + v12[12];
        v23 = type metadata accessor for SiriRequestIdentities(0);
        if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
        {
          v24 = type metadata accessor for IdentifiedUser();
          v25 = *(v24 - 8);
          v26 = *(v25 + 48);
          if (!v26(v22, 1, v24))
          {
            (*(v25 + 8))(v22, v24);
          }

          v27 = *(v23 + 20);
          if (!v26(&v22[v27], 1, v24))
          {
            (*(v25 + 8))(&v22[v27], v24);
          }

          v28 = *&v22[*(v23 + 24)];
        }

        v7 = &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd;
        v8 = &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR;
        break;
      case 5:
        type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v5 = type metadata accessor for Input();
          (*(*(v5 - 8) + 8))(a1, v5);
        }

        v6 = *(a1 + *(type metadata accessor for RequestContinuation(0) + 20));

        v7 = &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd;
        v8 = &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR;
        break;
      default:
        return;
    }

LABEL_29:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v30 = *(v29 + 48);
    v31 = type metadata accessor for ConversationContext();
    (*(*(v31 - 8) + 8))(a1 + v30, v31);
    v32 = *(a1 + *(v29 + 64) + 8);
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v4 = a1[6];
      goto LABEL_30;
    }

    v7 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd;
    v8 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR;
    goto LABEL_29;
  }

  v9 = *a1;
}

void *initializeWithCopy for EncoreEngine.EngineEvent(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v12 = a2[1];
          *a1 = *a2;
          a1[1] = v12;

          goto LABEL_32;
        case 4:
          v22 = a2[1];
          *a1 = *a2;
          a1[1] = v22;
          v23 = type metadata accessor for SiriRequest(0);
          v24 = v23[5];
          v25 = type metadata accessor for Input();
          v26 = *(*(v25 - 8) + 16);

          v26(a1 + v24, a2 + v24, v25);
          *(a1 + v23[6]) = *(a2 + v23[6]);
          *(a1 + v23[7]) = *(a2 + v23[7]);
          v27 = v23[8];
          v28 = a1 + v27;
          v29 = (a2 + v27);
          v30 = *(a2 + v27 + 8);

          if (v30 >> 60 == 15)
          {
            *v28 = *v29;
          }

          else
          {
            v39 = *v29;
            outlined copy of Data._Representation(*v29, v30);
            *v28 = v39;
            *(v28 + 1) = v30;
          }

          *(a1 + v23[9]) = *(a2 + v23[9]);
          *(a1 + v23[10]) = *(a2 + v23[10]);
          *(a1 + v23[11]) = *(a2 + v23[11]);
          v40 = v23[12];
          __dst = a1 + v40;
          v41 = a2 + v40;
          v42 = type metadata accessor for SiriRequestIdentities(0);
          v63 = *(v42 - 8);
          v43 = *(v63 + 48);

          v44 = v41;
          if (v43(v41, 1, v42))
          {
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
            memcpy(__dst, v41, *(*(v45 - 8) + 64));
          }

          else
          {
            v62 = v42;
            v46 = type metadata accessor for IdentifiedUser();
            v47 = *(v46 - 8);
            v48 = *(v47 + 48);
            v61 = v47;
            if (v48(v44, 1, v46))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(__dst, v44, *(*(v49 - 8) + 64));
            }

            else
            {
              (*(v47 + 16))(__dst, v44, v46);
              (*(v47 + 56))(__dst, 0, 1, v46);
            }

            v50 = *(v62 + 20);
            if (v48(&v44[v50], 1, v46))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(&__dst[v50], &v44[v50], *(*(v51 - 8) + 64));
            }

            else
            {
              (*(v61 + 16))(&__dst[v50], &v44[v50], v46);
              (*(v61 + 56))(&__dst[v50], 0, 1, v46);
            }

            *&__dst[*(v62 + 24)] = *&v44[*(v62 + 24)];
            v52 = *(v63 + 56);

            v52(__dst, 0, 1, v62);
          }

          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v54 = *(v53 + 48);
          v55 = type metadata accessor for ConversationContext();
          (*(*(v55 - 8) + 16))(a1 + v54, a2 + v54, v55);
          v56 = *(v53 + 64);
          v57 = (a1 + v56);
          v58 = (a2 + v56);
          v59 = v58[1];
          *v57 = *v58;
          v57[1] = v59;

          goto LABEL_32;
        case 5:
          v8 = type metadata accessor for UserInputResult();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v9 = type metadata accessor for Input();
            (*(*(v9 - 8) + 16))(a1, a2, v9);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(a1, a2, *(*(v8 - 8) + 64));
          }

          v31 = type metadata accessor for RequestContinuation(0);
          *(a1 + *(v31 + 20)) = *(a2 + *(v31 + 20));

          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v33 = *(v32 + 48);
          v34 = type metadata accessor for ConversationContext();
          (*(*(v34 - 8) + 16))(a1 + v33, a2 + v33, v34);
          v35 = *(v32 + 64);
          v36 = (a1 + v35);
          v37 = (a2 + v35);
          v38 = v37[1];
          *v36 = *v37;
          v36[1] = v38;

          goto LABEL_32;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 0:
          v10 = *a2;
          *a1 = *a2;
          v11 = v10;
          goto LABEL_32;
        case 1:
          v13 = *a2;
          *a1 = *a2;
          v14 = v13;
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
          v16 = *(v15 + 48);
          v17 = type metadata accessor for ConversationContext();
          (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
          v18 = *(v15 + 64);
          v19 = (a1 + v18);
          v20 = (a2 + v18);
          v21 = v20[1];
          *v19 = *v20;
          v19[1] = v21;

          goto LABEL_32;
        case 2:
          v6 = *(a2 + 3);
          *(a1 + 3) = v6;
          (**(v6 - 8))(a1, a2);
          v7 = a2[6];
          a1[5] = a2[5];
          a1[6] = v7;

LABEL_32:
          swift_storeEnumTagMultiPayload();
          goto LABEL_33;
      }
    }

    memcpy(a1, a2, *(*(v4 - 8) + 64));
    goto LABEL_33;
  }

  *a1 = *a2;

LABEL_33:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for EncoreEngine.EngineEvent(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.EngineEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_34:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v4 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v12 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v12;

          goto LABEL_33;
        case 4:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          v22 = type metadata accessor for SiriRequest(0);
          v23 = v22[5];
          v24 = type metadata accessor for Input();
          v25 = *(*(v24 - 8) + 16);

          v25(&a1[v23], &a2[v23], v24);
          *&a1[v22[6]] = *&a2[v22[6]];
          *&a1[v22[7]] = *&a2[v22[7]];
          v26 = v22[8];
          v27 = &a1[v26];
          v28 = &a2[v26];
          v29 = *&a2[v26 + 8];

          if (v29 >> 60 == 15)
          {
            *v27 = *v28;
          }

          else
          {
            v38 = *v28;
            outlined copy of Data._Representation(*v28, v29);
            *v27 = v38;
            *(v27 + 1) = v29;
          }

          *&a1[v22[9]] = *&a2[v22[9]];
          *&a1[v22[10]] = *&a2[v22[10]];
          *&a1[v22[11]] = *&a2[v22[11]];
          v39 = v22[12];
          __dst = &a1[v39];
          v40 = &a2[v39];
          v41 = type metadata accessor for SiriRequestIdentities(0);
          v62 = *(v41 - 8);
          v42 = *(v62 + 48);

          v43 = v40;
          if (v42(v40, 1, v41))
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
            memcpy(__dst, v40, *(*(v44 - 8) + 64));
          }

          else
          {
            v61 = v41;
            v45 = type metadata accessor for IdentifiedUser();
            v46 = *(v45 - 8);
            v47 = *(v46 + 48);
            v60 = v46;
            if (v47(v43, 1, v45))
            {
              v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(__dst, v43, *(*(v48 - 8) + 64));
            }

            else
            {
              (*(v46 + 16))(__dst, v43, v45);
              (*(v46 + 56))(__dst, 0, 1, v45);
            }

            v49 = *(v61 + 20);
            if (v47(&v43[v49], 1, v45))
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(&__dst[v49], &v43[v49], *(*(v50 - 8) + 64));
            }

            else
            {
              (*(v60 + 16))(&__dst[v49], &v43[v49], v45);
              (*(v60 + 56))(&__dst[v49], 0, 1, v45);
            }

            *&__dst[*(v61 + 24)] = *&v43[*(v61 + 24)];
            v51 = *(v62 + 56);

            v51(__dst, 0, 1, v61);
          }

          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v53 = *(v52 + 48);
          v54 = type metadata accessor for ConversationContext();
          (*(*(v54 - 8) + 16))(&a1[v53], &a2[v53], v54);
          v55 = *(v52 + 64);
          v56 = &a1[v55];
          v57 = &a2[v55];
          v58 = *(v57 + 1);
          *v56 = *v57;
          *(v56 + 1) = v58;

          goto LABEL_33;
        case 5:
          v8 = type metadata accessor for UserInputResult();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v9 = type metadata accessor for Input();
            (*(*(v9 - 8) + 16))(a1, a2, v9);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(a1, a2, *(*(v8 - 8) + 64));
          }

          v30 = type metadata accessor for RequestContinuation(0);
          *&a1[*(v30 + 20)] = *&a2[*(v30 + 20)];

          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v32 = *(v31 + 48);
          v33 = type metadata accessor for ConversationContext();
          (*(*(v33 - 8) + 16))(&a1[v32], &a2[v32], v33);
          v34 = *(v31 + 64);
          v35 = &a1[v34];
          v36 = &a2[v34];
          v37 = *(v36 + 1);
          *v35 = *v36;
          *(v35 + 1) = v37;

          goto LABEL_33;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 0:
          v10 = *a2;
          *a1 = *a2;
          v11 = v10;
          goto LABEL_33;
        case 1:
          v13 = *a2;
          *a1 = *a2;
          v14 = v13;
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
          v16 = *(v15 + 48);
          v17 = type metadata accessor for ConversationContext();
          (*(*(v17 - 8) + 16))(&a1[v16], &a2[v16], v17);
          v18 = *(v15 + 64);
          v19 = &a1[v18];
          v20 = &a2[v18];
          v21 = *(v20 + 1);
          *v19 = *v20;
          *(v19 + 1) = v21;

          goto LABEL_33;
        case 2:
          v6 = *(a2 + 3);
          *(a1 + 3) = v6;
          *(a1 + 4) = *(a2 + 4);
          (**(v6 - 8))(a1, a2);
          v7 = *(a2 + 6);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = v7;

LABEL_33:
          swift_storeEnumTagMultiPayload();
          goto LABEL_34;
      }
    }

    memcpy(a1, a2, *(*(v4 - 8) + 64));
    goto LABEL_34;
  }

  return a1;
}

_OWORD *initializeWithTake for EncoreEngine.EngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 5:
        v22 = type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = type metadata accessor for Input();
          (*(*(v23 - 8) + 32))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        v24 = type metadata accessor for RequestContinuation(0);
        *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v26 = *(v25 + 48);
        v27 = type metadata accessor for ConversationContext();
        (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
        *(a1 + *(v25 + 64)) = *(a2 + *(v25 + 64));
        break;
      case 4:
        *a1 = *a2;
        v13 = type metadata accessor for SiriRequest(0);
        v14 = v13[5];
        v15 = type metadata accessor for Input();
        (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
        *(a1 + v13[6]) = *(a2 + v13[6]);
        *(a1 + v13[7]) = *(a2 + v13[7]);
        *(a1 + v13[8]) = *(a2 + v13[8]);
        *(a1 + v13[9]) = *(a2 + v13[9]);
        *(a1 + v13[10]) = *(a2 + v13[10]);
        *(a1 + v13[11]) = *(a2 + v13[11]);
        v16 = v13[12];
        v17 = a1 + v16;
        v18 = a2 + v16;
        v19 = type metadata accessor for SiriRequestIdentities(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          v28 = type metadata accessor for IdentifiedUser();
          v29 = *(v28 - 8);
          v37 = *(v29 + 48);
          v36 = v29;
          if (v37(v18, 1, v28))
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(v17, v18, *(*(v30 - 8) + 64));
          }

          else
          {
            (*(v29 + 32))(v17, v18, v28);
            (*(v29 + 56))(v17, 0, 1, v28);
          }

          v31 = *(v19 + 20);
          if (v37(&v18[v31], 1, v28))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&v17[v31], &v18[v31], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(v36 + 32))(&v17[v31], &v18[v31], v28);
            (*(v36 + 56))(&v17[v31], 0, 1, v28);
          }

          *&v17[*(v19 + 24)] = *&v18[*(v19 + 24)];
          (*(v20 + 56))(v17, 0, 1, v19);
        }

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v34 = *(v33 + 48);
        v35 = type metadata accessor for ConversationContext();
        (*(*(v35 - 8) + 32))(a1 + v34, a2 + v34, v35);
        *(a1 + *(v33 + 64)) = *(a2 + *(v33 + 64));
        break;
      case 1:
        *a1 = *a2;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v11 = *(v10 + 48);
        v12 = type metadata accessor for ConversationContext();
        (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
        *(a1 + *(v10 + 64)) = *(a2 + *(v10 + 64));
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_25:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_25;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

_OWORD *assignWithTake for EncoreEngine.EngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.EngineEvent);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 5:
        v22 = type metadata accessor for UserInputResult();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = type metadata accessor for Input();
          (*(*(v23 - 8) + 32))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        v24 = type metadata accessor for RequestContinuation(0);
        *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v26 = *(v25 + 48);
        v27 = type metadata accessor for ConversationContext();
        (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
        *(a1 + *(v25 + 64)) = *(a2 + *(v25 + 64));
        break;
      case 4:
        *a1 = *a2;
        v13 = type metadata accessor for SiriRequest(0);
        v14 = v13[5];
        v15 = type metadata accessor for Input();
        (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
        *(a1 + v13[6]) = *(a2 + v13[6]);
        *(a1 + v13[7]) = *(a2 + v13[7]);
        *(a1 + v13[8]) = *(a2 + v13[8]);
        *(a1 + v13[9]) = *(a2 + v13[9]);
        *(a1 + v13[10]) = *(a2 + v13[10]);
        *(a1 + v13[11]) = *(a2 + v13[11]);
        v16 = v13[12];
        v17 = a1 + v16;
        v18 = a2 + v16;
        v19 = type metadata accessor for SiriRequestIdentities(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          v28 = type metadata accessor for IdentifiedUser();
          v29 = *(v28 - 8);
          v37 = *(v29 + 48);
          v36 = v29;
          if (v37(v18, 1, v28))
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(v17, v18, *(*(v30 - 8) + 64));
          }

          else
          {
            (*(v29 + 32))(v17, v18, v28);
            (*(v29 + 56))(v17, 0, 1, v28);
          }

          v31 = *(v19 + 20);
          if (v37(&v18[v31], 1, v28))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&v17[v31], &v18[v31], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(v36 + 32))(&v17[v31], &v18[v31], v28);
            (*(v36 + 56))(&v17[v31], 0, 1, v28);
          }

          *&v17[*(v19 + 24)] = *&v18[*(v19 + 24)];
          (*(v20 + 56))(v17, 0, 1, v19);
        }

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v34 = *(v33 + 48);
        v35 = type metadata accessor for ConversationContext();
        (*(*(v35 - 8) + 32))(a1 + v34, a2 + v34, v35);
        *(a1 + *(v33 + 64)) = *(a2 + *(v33 + 64));
        break;
      case 1:
        *a1 = *a2;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v11 = *(v10 + 48);
        v12 = type metadata accessor for ConversationContext();
        (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
        *(a1 + *(v10 + 64)) = *(a2 + *(v10 + 64));
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_26:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_26;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for EncoreEngine.EngineEvent()
{
  result = type metadata accessor for EncoreEngineEvent(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for EncoreEngine.ActionOutcome(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v15;
      v16 = a2[2];
      v17 = a2[3];
      *(a1 + 2) = v16;
      *(a1 + 3) = v17;

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = *a2;
      v11 = v10;
      *a1 = v10;
      goto LABEL_15;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = type metadata accessor for FlowUnhandledReason();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for PluginAction();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

void destroy for EncoreEngine.ActionOutcome(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = *(a1 + 8);

      v7 = *(a1 + 24);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v4 = *a1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      v3 = type metadata accessor for PluginAction();
    }

    else
    {
      v3 = type metadata accessor for FlowUnhandledReason();
    }

    v5 = *(*(v3 - 8) + 8);

    v5(a1, v3);
  }
}

void *initializeWithCopy for EncoreEngine.ActionOutcome(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = a2[1];
      *a1 = *a2;
      a1[1] = v13;
      v14 = a2[2];
      v15 = a2[3];
      a1[2] = v14;
      a1[3] = v15;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = type metadata accessor for FlowUnhandledReason();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for PluginAction();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for EncoreEngine.ActionOutcome(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      goto LABEL_14;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = type metadata accessor for FlowUnhandledReason();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for PluginAction();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for EncoreEngine.ActionOutcome(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithTake for EncoreEngine.ActionOutcome(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t type metadata completion function for EncoreEngine.ActionOutcome()
{
  result = type metadata accessor for FlowUnhandledReason();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for PluginAction();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for EventQueue(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for AsyncStream();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for AsyncStream.Continuation();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EncoreEngine.ActionOutcome) -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EncoreEngine.ActionOutcome) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in EncoreEngine.discover(event:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return closure #1 in EncoreEngine.discover(event:)(a1, v1[2]);
}

uint64_t partial apply for closure #6 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #6 in EncoreEngine.handleExternal(event:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #4 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RequestContinuation(0) - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #4 in EncoreEngine.handleExternal(event:)(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t partial apply for closure #3 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #3 in EncoreEngine.handleExternal(event:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in EncoreEngine.handleExternal(event:)(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestContinuation(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreEngine.handleExternal(event:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t partial apply for closure #1 in EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  result = EncoreEngine.push(parentNode:flowAgent:)(v3, v4);
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1)
{
  v4 = *(type metadata accessor for ConversationContext() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreEngine.action(mode:starting:context:completion:)(a1, v6, v7, (v1 + 4), v8, v1 + v5, v9);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)(a1, v5, v4);
}

uint64_t partial apply for specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #5 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EncoreEngine.ActionOutcome(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR) - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #5 in EncoreEngine.handleExternal(event:)(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t partial apply for closure #2 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  *(v3 + 16) = 1;
  return v4(a1);
}

uint64_t objectdestroy_73Tm()
{
  v1 = type metadata accessor for ConversationContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v7 = v0[9];

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t lazy protocol witness table accessor for type FlowActor and conformance FlowActor(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)()
{
  v0 = one-time initialization token for $conversationContext;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v1);

  TaskLocal.withValue<A>(_:operation:file:line:)();
}

{
  v1 = *(v0 + 32);
  v2 = one-time initialization token for $conversationContext;

  if (v2 != -1)
  {
    swift_once();
    v1 = *(v0 + 32);
  }

  v3 = *(v0 + 56);
  *(v0 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  v6 = *(MEMORY[0x1E69E8950] + 4);

  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  v8 = *(v0 + 24);
  v11 = *(v0 + 56);

  return MEMORY[0x1EEE6DE98](v8, v0 + 16, &async function pointer to partial apply for closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), v4, 0, 0, 0xD000000000000026, 0x80000001DCA82BF0);
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v5 = static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  }

  else
  {
    v5 = static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
}

uint64_t one-time initialization function for $conversationContext()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy14SiriKitRuntime25EncoreConversationContextVSgGMd, &_ss9TaskLocalCy14SiriKitRuntime25EncoreConversationContextVSgGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static EncoreEnvironment.$conversationContext = result;
  return result;
}

uint64_t *EncoreEnvironment.$conversationContext.unsafeMutableAddressor()
{
  if (one-time initialization token for $conversationContext != -1)
  {
    swift_once();
  }

  return &static EncoreEnvironment.$conversationContext;
}

uint64_t static EncoreEnvironment.$conversationContext.getter()
{
  if (one-time initialization token for $conversationContext != -1)
  {
    swift_once();
  }
}

uint64_t static EncoreEnvironment.conversationContext.getter()
{
  if (one-time initialization token for $conversationContext != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)()
{
  type metadata accessor for SiriEnvironment();
  ActingFlowAgent.environment.getter();
  static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
}

{
  v1 = v0[3];
  type metadata accessor for SiriEnvironment();
  v2 = ActingFlowAgent.environment.getter();
  v0[7] = v2;
  v3 = *(MEMORY[0x1E69D3400] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x1EEE40DC8](v8, v2, v7, v5, v6);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:), 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t partial apply for closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)();
}

uint64_t closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
}

uint64_t partial apply for closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(a1, v5, v7, v6, v4);
}

uint64_t EndpointInfoProvider.__allocating_init(endpointInfo:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *EndpointInfoProvider.endpointInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

Swift::String_optional __swiftcall EndpointInfoProvider.getIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_identifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EndpointInfoProvider.getMediaRouteIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_mediaRouteIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id ExecuteNLOnServerMessage.toSARDExecuteNLOnServer(rcState:requestType:refId:)(uint64_t a1, int64_t a2, char *a3, void (**a4)(char *, uint64_t, char *))
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7978]) init];
  v10 = v8;
  specialized ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(&v10, a1, a2, a3, a4);
  return v8;
}

void specialized ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(unint64_t *a1, uint64_t a2, int64_t a3, char *a4, void (**a5)(char *, uint64_t, char *))
{
  v6 = v5;
  v187 = a4;
  v188 = a5;
  v181 = a3;
  *&v175 = a2;
  v191 = 0;
  v8 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v176 = *(v8 - 8);
  v9 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v189 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for UserID();
  v179 = *(v185 - 8);
  v11 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v184 = &v171 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v177 = &v171 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v182 = &v171 - v22;
  v23 = type metadata accessor for RequestType();
  v180 = *(v23 - 8);
  v24 = v180[8];
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v171 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v178 = &v171 - v29;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v31 + 8))(v34, v30);
  v39 = MEMORY[0x1E12A1410](v36, v38);
  v40 = v6;

  [v35 setAceId_];

  v41 = MEMORY[0x1E12A1410](v187, v188);
  [v35 setRefId_];

  v42 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v43 = MEMORY[0x1E12A1410](v42);

  [v35 setResultCandidateId_];

  v44 = ExecuteNLOnServerMessageBase.delegatedUserDialogActs.getter();
  v45 = *(v44 + 16);
  v190 = v6;
  v186 = v20;
  v173 = v35;
  if (!v45)
  {

LABEL_8:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDAceDelegatedUserDialogAct, 0x1E69C7968);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 setAceDelegatedUserDialogActList_];

    v55 = v180;
    v56 = v180[2];
    v57 = v178;
    v56(v178, v181, v23);
    v58 = (v55[11])(v57, v23);
    v59 = v185;
    if (v58 == *MEMORY[0x1E69D0548])
    {
      v60 = MEMORY[0x1E69E7CC0];
      v171 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14SASRecognitionCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v172 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14SASRecognitionCTt0g5Tf4g_n(v60);
      v61 = *(ExecuteNLOnServerMessage.sharedUserIdToSpeechPackage.getter() + 16);

      if (v61)
      {
        v62 = ExecuteNLOnServerMessage.sharedUserIdToSpeechPackage.getter();
        v64 = 0;
        v65 = *(v62 + 64);
        v174 = (v62 + 64);
        v176 = v62;
        v66 = 1 << *(v62 + 32);
        v67 = -1;
        if (v66 < 64)
        {
          v67 = ~(-1 << v66);
        }

        v35 = v67 & v65;
        v68 = (v66 + 63) >> 6;
        v187 = (v179 + 16);
        v188 = (v179 + 32);
        v180 = (v179 + 8);
        *&v63 = 136315394;
        v175 = v63;
        v69 = v184;
        v181 = v68;
        v70 = v59;
        v71 = v20;
        while (1)
        {
          if (!v35)
          {
            if (v68 <= (v64 + 1))
            {
              v85 = (v64 + 1);
            }

            else
            {
              v85 = v68;
            }

            v86 = (v85 - 1);
            while (1)
            {
              v84 = (v64 + 1);
              if (__OFADD__(v64, 1))
              {
                break;
              }

              if (v84 >= v68)
              {
                v96 = v70;
                v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
                (*(*(v112 - 8) + 56))(v71, 1, 1, v112);
                v35 = 0;
                goto LABEL_25;
              }

              v35 = *&v174[8 * v84];
              ++v64;
              if (v35)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_84:
            v169.super.isa = 0;
            goto LABEL_85;
          }

          v84 = v64;
LABEL_24:
          v87 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v88 = v87 | (v84 << 6);
          v89 = v176;
          v90 = v177;
          v91 = v179;
          (*(v179 + 16))(v177, *(v176 + 48) + *(v179 + 72) * v88, v70);
          v92 = *(*(v89 + 56) + 8 * v88);
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
          v94 = *(v93 + 48);
          v95 = *(v91 + 32);
          v71 = v186;
          v96 = v70;
          v95(v186, v90);
          *(v71 + v94) = v92;
          (*(*(v93 - 8) + 56))(v71, 0, 1, v93);
          v97 = v92;
          v86 = v84;
          v69 = v184;
          v40 = v190;
LABEL_25:
          v98 = v182;
          outlined init with take of (key: UserID, value: AFSpeechPackage)?(v71, v182);
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
          v100 = (*(*(v99 - 8) + 48))(v98, 1, v99);
          v101 = v183;
          if (v100 == 1)
          {

            v35 = v173;
            goto LABEL_63;
          }

          v59 = *(v98 + *(v99 + 48));
          v70 = v96;
          (*v188)(v69, v98, v96);
          v102 = [v59 recognition];
          v189 = v86;
          if (v102)
          {
            v103 = v102;
            v104 = [v59 rawRecognition];
            if (v104)
            {
              v113 = v104;
              v114 = v40;
              UserID.sharedUserId.getter();
              v115 = String.lowercased()();

              v116 = [v103 aceRecognition];
              if (v116)
              {
                v117 = v116;
                v118 = v171;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v193[0] = v118;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v117, v115._countAndFlagsBits, v115._object, isUniquelyReferenced_nonNull_native);

                v171 = v193[0];
                v120 = v172;
              }

              else
              {
                v121 = v171;
                v122 = specialized __RawDictionaryStorage.find<A>(_:)(v115._countAndFlagsBits, v115._object);
                v124 = v123;

                v120 = v172;
                if (v124)
                {
                  v125 = swift_isUniquelyReferenced_nonNull_native();
                  v193[0] = v121;
                  if (!v125)
                  {
                    specialized _NativeDictionary.copy()();
                    v120 = v172;
                    v121 = v193[0];
                  }

                  v126 = *(*(v121 + 48) + 16 * v122 + 8);

                  v171 = v121;
                  specialized _NativeDictionary._delete(at:)(v122, v121);
                }
              }

              UserID.sharedUserId.getter();
              v127 = String.lowercased()();

              v128 = [v113 aceRecognition];
              if (v128)
              {
                v129 = v128;
                v130 = swift_isUniquelyReferenced_nonNull_native();
                v193[0] = v120;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v129, v127._countAndFlagsBits, v127._object, v130);

                v172 = v193[0];
                goto LABEL_47;
              }

              v131 = specialized __RawDictionaryStorage.find<A>(_:)(v127._countAndFlagsBits, v127._object);
              v133 = v132;

              if (v133)
              {
                v134 = swift_isUniquelyReferenced_nonNull_native();
                v193[0] = v120;
                v69 = v184;
                v40 = v114;
                if ((v134 & 1) == 0)
                {
                  specialized _NativeDictionary.copy()();
                  v120 = v193[0];
                }

                v135 = *(*(v120 + 48) + 16 * v131 + 8);

                v172 = v120;
                specialized _NativeDictionary._delete(at:)(v131, v120);
              }

              else
              {

LABEL_47:
                v69 = v184;
                v40 = v114;
              }

              v136 = v189;
              v70 = v185;
              (*v180)(v69, v185);
              v64 = v136;
              goto LABEL_14;
            }
          }

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          __swift_project_value_buffer(v105, static Logger.conversationBridge);
          (*v187)(v101, v69, v96);
          v106 = v40;
          v107 = Logger.logObject.getter();
          v108 = v69;
          v109 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v107, v109))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v193[0] = v73;
            *v72 = v175;
            lazy protocol witness table accessor for type UserID and conformance UserID();
            v74 = dispatch thunk of CustomStringConvertible.description.getter();
            v75 = v101;
            v77 = v76;
            v178 = v59;
            v59 = v180;
            v78 = *v180;
            (*v180)(v75, v185);
            v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v77, v193);

            *(v72 + 4) = v79;
            *(v72 + 12) = 2080;
            v80 = RequestMessageBase.requestId.getter();
            v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v193);

            *(v72 + 14) = v82;
            _os_log_impl(&dword_1DC659000, v107, v109, "Since MultiUserAFSpeechPackage does not contain a pre-itn and post-itn recognitions for user : %s, hence SARDExecuteNLOnServer will not contain them either for requestId : %s", v72, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v73, -1, -1);
            v83 = v72;
            v70 = v185;
            MEMORY[0x1E12A2F50](v83, -1, -1);

            v69 = v184;
            v78(v184, v70);
            v64 = v189;
            v40 = v190;
          }

          else
          {

            v110 = v101;
            v111 = *v180;
            (*v180)(v110, v70);
            v111(v108, v70);
            v64 = v189;
            v69 = v108;
          }

LABEL_14:
          v71 = v186;
          v68 = v181;
        }
      }

      if (one-time initialization token for conversationBridge != -1)
      {
LABEL_90:
        swift_once();
      }

      v152 = type metadata accessor for Logger();
      __swift_project_value_buffer(v152, static Logger.conversationBridge);
      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_1DC659000, v153, v154, "SharedUserIdToSpeechPackage property on ENOSMessage is empty for a speech request. Sending empty dictionary to server.", v155, 2u);
        MEMORY[0x1E12A2F50](v155, -1, -1);
      }

LABEL_63:
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
      v156 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v35 setRecognitionSausageMap_];

      v157 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v35 setPreITNRecognitionSausageMap_];

      v158 = MEMORY[0x1E69C8118];
LABEL_73:
      [v35 setRequestType_];
      return;
    }

    if (v58 == *MEMORY[0x1E69D0530])
    {
LABEL_50:
      v137 = (*(*v175 + 888))();
      if (v138)
      {
        v139 = MEMORY[0x1E12A1410](v137);
      }

      else
      {
        v139 = 0;
      }

      [v35 setUtterance_];

      v158 = MEMORY[0x1E69C8120];
      goto LABEL_73;
    }

    v140 = v174;
    if (v58 != *MEMORY[0x1E69D0510])
    {
      if (v58 == *MEMORY[0x1E69D0508])
      {
        v159 = [v35 setRequestType_];
        v160 = (*(*v175 + 912))(v159);
        if (v161 != 1)
        {
          v71 = v161;
          v59 = v160;
          if (!v162)
          {
            goto LABEL_84;
          }

          v169.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_85:
          [v35 setRequestExecutionParameters_];

          if (v71)
          {

            v170 = MEMORY[0x1E12A1410](v59, v71);
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v170 = 0;
          }

          [v35 setDirectAction_];

          return;
        }

        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v163 = type metadata accessor for Logger();
        __swift_project_value_buffer(v163, static Logger.conversationBridge);
        v140 = v171;
        v56(v171, v181, v23);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v164 = v23;
          v146 = swift_slowAlloc();
          v193[0] = v146;
          *v144 = 136315138;
          v165 = RequestType.rawValue.getter();
          v167 = v166;
          (v55[1])(v140, v164);
          v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v167, v193);

          *(v144 + 4) = v168;
          v151 = "Could not cast ResultCandidateState to DirectActionResultCandidateState even though requestType: %s";
          goto LABEL_58;
        }

LABEL_70:

        (v55[1])(v140, v23);
        return;
      }

      if (v58 != *MEMORY[0x1E69D0538] && v58 != *MEMORY[0x1E69D0528])
      {
        if (v58 == *MEMORY[0x1E69D0558])
        {
          goto LABEL_50;
        }

        v140 = v174;
        if (v58 != *MEMORY[0x1E69D0540] && v58 != *MEMORY[0x1E69D0560] && v58 != *MEMORY[0x1E69D0518])
        {
          (v55[1])(v57, v23);
        }
      }
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for Logger();
    __swift_project_value_buffer(v141, static Logger.conversationBridge);
    v56(v140, v181, v23);
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = v23;
      v146 = swift_slowAlloc();
      v193[0] = v146;
      *v144 = 136315138;
      v147 = RequestType.rawValue.getter();
      v149 = v148;
      (v55[1])(v140, v145);
      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, v193);

      *(v144 + 4) = v150;
      v151 = "Should not have received requestType: %s for server fallback";
LABEL_58:
      _os_log_impl(&dword_1DC659000, v142, v143, v151, v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v146);
      MEMORY[0x1E12A2F50](v146, -1, -1);
      MEMORY[0x1E12A2F50](v144, -1, -1);

      return;
    }

    goto LABEL_70;
  }

  v172 = v23;
  v193[0] = MEMORY[0x1E69E7CC0];
  v188 = v45;
  specialized ContiguousArray.reserveCapacity(_:)();
  v35 = 0;
  v187 = (v44 + ((*(v176 + 80) + 32) & ~*(v176 + 80)));
  v46 = (v176 + 8);
  v47 = v176;
  while (1)
  {
    if (v35 >= *(v44 + 16))
    {
      __break(1u);
      goto LABEL_90;
    }

    v48 = v44;
    v49 = v47;
    v50 = v189;
    (*(v47 + 16))(v189, v187 + *(v47 + 72) * v35, v8);
    v51 = v8;
    v52 = v191;
    closure #1 in ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(&v192);
    v191 = v52;
    if (v52)
    {
      break;
    }

    ++v35;
    (*v46)(v50, v51);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v53 = *(v193[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v8 = v51;
    v47 = v49;
    v44 = v48;
    if (v188 == v35)
    {

      v35 = v173;
      v40 = v190;
      v20 = v186;
      v23 = v172;
      goto LABEL_8;
    }
  }

  (*v46)(v50, v51);

  __break(1u);
}

id ExecuteNLOnServerMessage.toSARDMUXExecuteNLOnServer(rcState:requestType:refId:)(uint64_t a1, int64_t a2, char *a3, void (**a4)(char *, uint64_t, char *))
{
  v8 = type metadata accessor for SelectedUserAttributes();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v27 = [objc_allocWithZone(MEMORY[0x1E69C7988]) init];
  v17 = v27;
  specialized ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(&v27, a1, a2, a3, a4);
  [v17 setMuxStateRollback_];
  v18 = ExecuteNLOnServerMessage.mostRecentVoiceIdScoreCard.getter();
  if (v18)
  {
    v19 = v18;
    v20 = AFVoiceIdScoreCard.toSAConfidenceScores()();
  }

  else
  {
    v20 = 0;
  }

  [v17 setVoiceIDConfidenceScores_];

  [v17 setMarkedForHandOff_];
  v21 = UserID.sharedUserId.getter();
  v22 = MEMORY[0x1E12A1410](v21);

  [v17 setSelectedUserId_];

  (*(*a1 + 792))();
  if ((*(v9 + 48))(v16, 1, v8))
  {
    outlined destroy of SelectedUserAttributes?(v16);
    v23 = 0;
  }

  else
  {
    (*(v9 + 16))(v12, v16, v8);
    outlined destroy of SelectedUserAttributes?(v16);
    SelectedUserAttributes.classification.getter();
    (*(v9 + 8))(v12, v8);
    countAndFlagsBits = AFUserIdentityClassfication.toAceUserIdentityClassification()()._countAndFlagsBits;
    v23 = MEMORY[0x1E12A1410](countAndFlagsBits);
  }

  [v17 setSelectedUserIdentityClassification_];

  return v17;
}

void closure #1 in ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(void *a1@<X8>)
{
  v20 = a1;
  v19 = type metadata accessor for Siri_Nlu_External_RewriteMessage();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Google_Protobuf_StringValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7968]) init];
  [v10 setAsrHypothesisIndex_];
  v11 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v12 = MEMORY[0x1E12A1410](v11);

  [v10 setExternalParserId_];

  Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.getter();
  v13 = Google_Protobuf_StringValue.value.getter();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = MEMORY[0x1E12A1410](v13, v15);
  }

  else
  {
    v17 = 0;
  }

  [v10 setRewrittenUtterance_];

  if (Siri_Nlu_External_DelegatedUserDialogAct.hasRewrite.getter())
  {
    Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
    v18 = specialized ExecuteNLOnServerMessage.convert(rewriteMessage:)();
    (*(v1 + 8))(v4, v19);
  }

  else
  {
    v18 = 0;
  }

  [v10 setRewriteMessage_];

  *v20 = v10;
}

uint64_t outlined init with take of (key: UserID, value: AFSpeechPackage)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized ExecuteNLOnServerMessage.convert(rewriteMessage:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_RewriteMessage.RewriteType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Siri_Nlu_External_RewriteMessage.rewrittenUtterance.getter();
  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v5;
    v10 = [objc_allocWithZone(MEMORY[0x1E69C7970]) init];
    v11 = MEMORY[0x1E12A1410](v9, v7);

    [v10 setRewrittenUtterance_];

    Siri_Nlu_External_RewriteMessage.rewriteType.getter();
    v12 = (*(v1 + 88))(v4, v0);
    if (v12 == *MEMORY[0x1E69D0AC0])
    {
      [v10 setRewriteType_];
    }

    else if (v12 == *MEMORY[0x1E69D0AC8])
    {
      [v10 setRewriteType_];
    }

    else
    {
      [v10 setRewriteType_];
      (*(v1 + 8))(v4, v0);
    }
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.conversationBridge);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "Recevied empty rewrittenUtterance inside RewriteMessage", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    return 0;
  }

  return v10;
}

uint64_t ExecuteOnRemoteCmds.cmdType.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = &lazy cache variable for type metadata for SACFProvideContext;
      v2 = 0x1E69C7748;
      break;
    case 2:
      v1 = &lazy cache variable for type metadata for SAInitiateHandoffOnCompanion;
      v2 = 0x1E69C7828;
      break;
    case 3:
      v1 = &lazy cache variable for type metadata for SAPhoneClientCoordinationPhoneCall;
      v2 = 0x1E69C7948;
      break;
    case 4:
      v1 = &lazy cache variable for type metadata for SASendCommands;
      v2 = 0x1E69C7A48;
      break;
    case 5:
      v1 = &lazy cache variable for type metadata for SAUIAddViews;
      v2 = 0x1E69C7AF8;
      break;
    case 6:
      v1 = &lazy cache variable for type metadata for SAUISayIt;
      v2 = 0x1E69C7BB0;
      break;
    case 7:
      v1 = &lazy cache variable for type metadata for SAUpdateReadingState;
      v2 = 0x1E69C7BF8;
      break;
    case 8:
      v1 = &lazy cache variable for type metadata for SALogStringEvent;
      v2 = 0x1E69C78C8;
      break;
    case 9:
      v1 = &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate;
      v2 = 0x1E69C7998;
      break;
    case 10:
      v1 = &lazy cache variable for type metadata for SAUIShowRequestHandlingStatus;
      v2 = 0x1E69C7BB8;
      break;
    case 11:
      v1 = &lazy cache variable for type metadata for SAUIUpdateVisualResponseSnippet;
      v2 = 0x1E69C7BE8;
      break;
    case 12:
      v1 = &lazy cache variable for type metadata for SAUIHideSiriOverlay;
      v2 = 0x1E69C7B68;
      break;
    case 13:
      v1 = &lazy cache variable for type metadata for SAUISnippetDisplayConfigurationRequest;
      v2 = 0x1E69C7BC8;
      break;
    default:
      v1 = &lazy cache variable for type metadata for SAAceView;
      v2 = 0x1E69C7708;
      break;
  }

  return type metadata accessor for OS_dispatch_queue(0, v1, v2);
}

id ExecuteOnRemoteCmds.isSameType(_:)(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      v3 = &lazy cache variable for type metadata for SACFProvideContext;
      v4 = 0x1E69C7748;
      break;
    case 2:
      v3 = &lazy cache variable for type metadata for SAInitiateHandoffOnCompanion;
      v4 = 0x1E69C7828;
      break;
    case 3:
      v3 = &lazy cache variable for type metadata for SAPhoneClientCoordinationPhoneCall;
      v4 = 0x1E69C7948;
      break;
    case 4:
      v3 = &lazy cache variable for type metadata for SASendCommands;
      v4 = 0x1E69C7A48;
      break;
    case 5:
      v3 = &lazy cache variable for type metadata for SAUIAddViews;
      v4 = 0x1E69C7AF8;
      break;
    case 6:
      v3 = &lazy cache variable for type metadata for SAUISayIt;
      v4 = 0x1E69C7BB0;
      break;
    case 7:
      v3 = &lazy cache variable for type metadata for SAUpdateReadingState;
      v4 = 0x1E69C7BF8;
      break;
    case 8:
      v3 = &lazy cache variable for type metadata for SALogStringEvent;
      v4 = 0x1E69C78C8;
      break;
    case 9:
      v3 = &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate;
      v4 = 0x1E69C7998;
      break;
    case 10:
      v3 = &lazy cache variable for type metadata for SAUIShowRequestHandlingStatus;
      v4 = 0x1E69C7BB8;
      break;
    case 11:
      v3 = &lazy cache variable for type metadata for SAUIUpdateVisualResponseSnippet;
      v4 = 0x1E69C7BE8;
      break;
    case 12:
      v3 = &lazy cache variable for type metadata for SAUIHideSiriOverlay;
      v4 = 0x1E69C7B68;
      break;
    case 13:
      v3 = &lazy cache variable for type metadata for SAUISnippetDisplayConfigurationRequest;
      v4 = 0x1E69C7BC8;
      break;
    default:
      v3 = &lazy cache variable for type metadata for SAAceView;
      v4 = 0x1E69C7708;
      break;
  }

  type metadata accessor for OS_dispatch_queue(0, v3, v4);
  return [a1 isKindOfClass_];
}

unint64_t ExecuteOnRemoteCmds.rawValue.getter(char a1)
{
  result = 0x6569566563414153;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0x6F43646E65534153;
      break;
    case 5:
      result = 0x5664644149554153;
      break;
    case 6:
      result = 0x4979615349554153;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecuteOnRemoteCmds(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ExecuteOnRemoteCmds.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ExecuteOnRemoteCmds.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecuteOnRemoteCmds()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecuteOnRemoteCmds.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecuteOnRemoteCmds()
{
  ExecuteOnRemoteCmds.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecuteOnRemoteCmds()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecuteOnRemoteCmds.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecuteOnRemoteCmds@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecuteOnRemoteCmds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecuteOnRemoteCmds@<X0>(unint64_t *a1@<X8>)
{
  result = ExecuteOnRemoteCmds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized ExecuteOnRemoteCmds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecuteOnRemoteCmds.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds()
{
  result = lazy protocol witness table cache variable for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds;
  if (!lazy protocol witness table cache variable for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ExecuteOnRemoteCmds] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ExecuteOnRemoteCmds] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ExecuteOnRemoteCmds] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime19ExecuteOnRemoteCmdsOGMd, &_sSay14SiriKitRuntime19ExecuteOnRemoteCmdsOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ExecuteOnRemoteCmds] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecuteOnRemoteCmds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecuteOnRemoteCmds(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ServiceBridgeDelegate.defaultSubmitExternalActivationRequest(withRequestInfo:serviceHelper:completion:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 respondsToSelector_];
  if (result)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_10;
    v9 = _Block_copy(v10);
    swift_unknownObjectRetain();

    [a2 submitExternalActivationRequest:a1 completion:v9];
    _Block_release(v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void static ServiceBridgeDelegate.prepareForAudioHandoffDefault(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v5[3] = &block_descriptor_3_0;
  v4 = _Block_copy(v5);

  [a1 prepareForAudioHandoffWithCompletion_];
  _Block_release(v4);
}

void static ServiceBridgeDelegate.prepareForAudioHandoffFailedDefault(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_6_0;
  v4 = _Block_copy(v5);

  [a1 prepareForAudioHandoffFailedWithCompletion_];
  _Block_release(v4);
}

uint64_t static ExecutionContextUpdate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ExecutionContextUpdate.supportsSecureCoding = a1;
  return result;
}

void *ExecutionContextUpdate.provideContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand);
  v2 = v1;
  return v1;
}

void *ExecutionContextUpdate.nativeFlowContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand);
  v2 = v1;
  return v1;
}

uint64_t ExecutionContextUpdate.contextUpdateScope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope;
  updated = type metadata accessor for ContextUpdateScope();
  v5 = *(*(updated - 8) + 16);

  return v5(a1, v1 + v3, updated);
}

uint64_t ExecutionContextUpdate.restoreSessionForRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId);
  v2 = *(v0 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId + 8);

  return v1;
}

id ExecutionContextUpdate.init(provideContextCommand:nativeFlowContextCommand:nluSystemDialogActs:nluActiveTasks:nluCompletedTasks:undoDirectInvocation:rrEntities:pommesContext:contextUpdateScope:restoreSessionForRequestId:executedOnRemoteDevice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v39 = a12;
  v37 = a11;
  v38 = a8;
  v36 = a10;
  v34 = a7;
  v35 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v34 - v22;
  outlined init with copy of ReferenceResolutionClientProtocol?(a8, &v34 - v22, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v23, a2);
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = a1;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = a2;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = a3;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = a4;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = a5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v12[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = v34;
  outlined init with copy of ReferenceResolutionClientProtocol?(v23, &v12[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v24 = OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope;
  updated = type metadata accessor for ContextUpdateScope();
  v26 = *(updated - 8);
  v27 = &v12[v24];
  v28 = v35;
  (*(v26 + 16))(v27, v35, updated);
  v29 = &v12[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  v12[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = v39;
  v31 = type metadata accessor for ExecutionContextUpdate();
  v40.receiver = v12;
  v40.super_class = v31;
  v32 = objc_msgSendSuper2(&v40, sel_init);
  (*(v26 + 8))(v28, updated);
  outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  return v32;
}

unint64_t ExecutionContextUpdate.CodingKeys.rawValue.getter(char a1)
{
  result = 0x697469746E457272;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6154657669746361;
      break;
    case 5:
      result = 0x6574656C706D6F63;
      break;
    case 6:
      result = 0x6F4373656D6D6F70;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x7669746341756C6ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      v3 = 10;
      goto LABEL_6;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      v3 = 5;
LABEL_6:
      result = v3 | 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecutionContextUpdate.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ExecutionContextUpdate.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ExecutionContextUpdate.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionContextUpdate.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecutionContextUpdate.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecutionContextUpdate.CodingKeys()
{
  ExecutionContextUpdate.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionContextUpdate.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecutionContextUpdate.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecutionContextUpdate.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecutionContextUpdate.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionContextUpdate.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = ExecutionContextUpdate.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id ExecutionContextUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionContextUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionContextUpdate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for ExecutionContextUpdate()
{
  type metadata accessor for Parse.DirectInvocation?(319, &lazy cache variable for type metadata for Parse.DirectInvocation?, MEMORY[0x1E69D0140]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Parse.DirectInvocation?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x1E69CE670]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      updated = type metadata accessor for ContextUpdateScope();
      if (v5 <= 0x3F)
      {
        v8 = *(updated - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Parse.DirectInvocation?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys);
  }

  return result;
}

unint64_t specialized ExecutionContextUpdate.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionContextUpdate.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type [NLContextUpdateSerializationOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NLContextUpdateSerializationOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NLContextUpdateSerializationOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMd, &_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NLContextUpdateSerializationOptions] and conformance [A]);
  }

  return result;
}

id ExecutionInputInfo.__allocating_init(parseId:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = objc_allocWithZone(v2);
  static ConversionUtils.convertProtoToUuid(protoUuid:)();
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of UUID?(v7);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v12 = v13;
    (*(v10 + 8))(v7, v9);
  }

  v14 = &v8[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v14 = v11;
  v14[1] = v12;
  v8[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
  v18.receiver = v8;
  v18.super_class = v2;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = type metadata accessor for Siri_Nlu_External_UUID();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v15;
}

id ExecutionInputInfo.__allocating_init(executePommes:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t static ExecutionInputInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ExecutionInputInfo.supportsSecureCoding = a1;
  return result;
}

uint64_t ExecutionInputInfo.parseId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId + 8);

  return v1;
}

unint64_t ExecutionInputInfo.description.getter()
{
  _StringGuts.grow(_:)(48);

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId);
    v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId + 8);
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA82DC0);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

id ExecutionInputInfo.init(parseId:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  static ConversionUtils.convertProtoToUuid(protoUuid:)();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of UUID?(v7);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = UUID.uuidString.getter();
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v13 = &v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v13 = v10;
  v13[1] = v11;
  v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
  v14 = type metadata accessor for ExecutionInputInfo();
  v18.receiver = v2;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = type metadata accessor for Siri_Nlu_External_UUID();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v15;
}

id ExecutionInputInfo.init(executePommes:)(char a1)
{
  v2 = &v1[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ExecutionInputInfo();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ExecutionInputInfo.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ExecutionInputInfo.init(coder:)(a1);

  return v4;
}

id ExecutionInputInfo.init(coder:)(void *a1)
{
  v2 = specialized ExecutionInputInfo.init(coder:)(a1);

  return v2;
}

Swift::Void __swiftcall ExecutionInputInfo.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId + 8))
  {
    v3 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId));
    v4 = MEMORY[0x1E12A1410](0x64496573726170, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes);
  v6 = MEMORY[0x1E12A1410](0x5065747563657865, 0xED000073656D6D6FLL);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];
}

id ExecutionInputInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionInputInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionInputInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ExecutionInputInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](0x64496573726170, 0xE700000000000000);
  v5 = [a1 containsValueForKey_];

  if (v5)
  {
    type metadata accessor for NSString();
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = &v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
    *v12 = v8;
    v12[1] = v10;
  }

  else
  {
    v11 = &v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
    *v11 = 0;
    v11[1] = 0;
  }

  v13 = MEMORY[0x1E12A1410](0x5065747563657865, 0xED000073656D6D6FLL);
  v14 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = v14;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ExecutionInputInfo();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t ExecutionOutput.__allocating_init(command:contextUpdate:fullPrint:fullSpeak:executionRequestId:executionSource:inAppResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  v18 = type metadata accessor for RequestSummary.ExecutionSource();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, a9, v18, v21);
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v17, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v24 = (*(v10 + 152))(a1, a2, a3, v29, v30, v31, 0, 0, 0, 0, v28, v27, v23, v17);
  outlined destroy of ReferenceResolutionClientProtocol?(a10, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v19 + 8))(a9, v18);
  return v24;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t static ExecutionOutput.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ExecutionOutput.supportsSecureCoding = a1;
  return result;
}

uint64_t ExecutionOutput.executionRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
  v2 = *(v0 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8);

  return v1;
}

void *ExecutionOutput.command.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_command);
  v2 = v1;
  return v1;
}

void *ExecutionOutput.contextUpdate.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);
  v2 = v1;
  return v1;
}

uint64_t ExecutionOutput.executionSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SKRExecutionOutput_executionSource;
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExecutionOutput.fullPrint.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_fullPrint);
  v2 = *(v0 + OBJC_IVAR___SKRExecutionOutput_fullPrint + 8);

  return v1;
}

uint64_t ExecutionOutput.fullSpeak.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_fullSpeak);
  v2 = *(v0 + OBJC_IVAR___SKRExecutionOutput_fullSpeak + 8);

  return v1;
}

uint64_t ExecutionOutput.redactedFullPrint.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint);
  v2 = *(v0 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint + 8);

  return v1;
}

uint64_t ExecutionOutput.redactedFullSpeak.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak);
  v2 = *(v0 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak + 8);

  return v1;
}

id ExecutionOutput.init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = specialized ExecutionOutput.init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);

  return v16;
}

uint64_t ExecutionOutput.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x646E616D6D6F63;
    v6 = 0x55747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0x6E6972506C6C7566;
    }

    if (!a1)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6F69747563657865;
    if (a1 != 7)
    {
      v2 = 0x7365527070416E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x616570536C6C7566;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionOutput.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionOutput.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecutionOutput.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecutionOutput.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionOutput.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ExecutionOutput.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ExecutionOutput.sensitiveDebugDescription.getter()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x1E12A1580](538976288, 0xE400000000000000);
  v25.receiver = v0;
  v25.super_class = type metadata accessor for ExecutionOutput();
  v3 = objc_msgSendSuper2(&v25, sel_debugDescription);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x1E12A1580](v4, v6);

  MEMORY[0x1E12A1580](0x20202020207B20, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8]);
  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v7 = *&v1[OBJC_IVAR___SKRExecutionOutput_command];
  if (v7)
  {
    v8 = [v7 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
    v9 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v9, v11);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v12 = *&v1[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
  if (v12)
  {
    v13 = [v12 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE500000000000000;
    v14 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v14, v16);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint + 8])
  {
    v17 = *&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    v18 = String.debugDescription.getter();
    v20 = v19;
  }

  else
  {
    v20 = 0xE500000000000000;
    v18 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v18, v20);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak + 8])
  {
    v21 = *&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    v2 = String.debugDescription.getter();
    v23 = v22;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v2, v23);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  type metadata accessor for RequestSummary.ExecutionSource();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0x7D20202020, 0xE500000000000000);
  return v26;
}

id ExecutionOutput.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionOutput.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionOutput();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ExecutionOutput.init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v133 = a7;
  v134 = a8;
  v135 = a2;
  v136 = a14;
  v132 = a10;
  updated = type metadata accessor for ContextUpdateScope();
  v130 = *(updated - 8);
  v131 = updated;
  v21 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v129 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v128 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v127 = &v118 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v126 = &v118 - v30;
  v31 = type metadata accessor for BinaryDecodingOptions();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v122 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v124 = &v118 - v36;
  v125 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v123 = *(v125 - 8);
  v37 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v120 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v121 = &v118 - v40;
  v41 = &v14[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v41 = a11;
  *(v41 + 1) = a12;
  v42 = &v14[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v42 = a3;
  *(v42 + 1) = a4;
  v43 = v14;
  v44 = &v14[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v44 = a5;
  *(v44 + 1) = a6;
  v45 = &v14[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  v46 = v134;
  *v45 = v133;
  *(v45 + 1) = v46;
  v47 = &v14[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v47 = a9;
  v48 = v136;
  *(v47 + 1) = v132;
  v49 = OBJC_IVAR___SKRExecutionOutput_executionSource;
  v50 = type metadata accessor for RequestSummary.ExecutionSource();
  v133 = *(v50 - 8);
  v134 = a13;
  (*(v133 + 16))(&v14[v49], a13, v50);
  outlined init with copy of ReferenceResolutionClientProtocol?(v48, &v14[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  if (a1 && (objc_opt_self(), (v51 = swift_dynamicCastObjCClass()) != 0) && !v135)
  {
    v52 = v51;
    v132 = v14;
    v53 = one-time initialization token for executor;
    v54 = a1;
    if (v53 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.executor);
    v56 = v54;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v125;
    v61 = v124;
    v119 = v50;
    if (v59)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v137[0] = v64;
      *v62 = 136315394;
      *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
      *(v62 + 12) = 2112;
      *(v62 + 14) = v52;
      *v63 = v52;
      v65 = v56;
      _os_log_impl(&dword_1DC659000, v57, v58, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v62, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v63, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1E12A2F50](v64, -1, -1);
      MEMORY[0x1E12A2F50](v62, -1, -1);
    }

    v66 = [v52 promptContextProto];
    v118 = v52;
    if (v66)
    {
      v67 = v66;
      v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v138 = 0;
      memset(v137, 0, sizeof(v137));
      outlined copy of Data._Representation(v68, v70);
      BinaryDecodingOptions.init()();
      _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
      Message.init(serializedData:extensions:partial:options:)();
      v135 = v70;
      v106 = v123;
      (*(v123 + 56))(v61, 0, 1, v60);
      v107 = v121;
      (*(v106 + 32))(v121, v61, v60);
      v108 = v120;
      (*(v106 + 16))(v120, v107, v60);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v112 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v137[0] = v124;
        *v112 = 136315394;
        *(v112 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
        *(v112 + 12) = 2080;
        v113 = Message.textFormatString()();
        v114 = *(v106 + 8);
        v114(v108, v60);
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113._countAndFlagsBits, v113._object, v137);

        *(v112 + 14) = v115;
        _os_log_impl(&dword_1DC659000, v109, v110, "ExecutionOutput: %s: NFCU has prompt context %s", v112, 0x16u);
        v116 = v124;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v116, -1, -1);
        MEMORY[0x1E12A2F50](v112, -1, -1);

        outlined consume of Data._Representation(v68, v135);
        v114(v121, v60);
      }

      else
      {

        outlined consume of Data._Representation(v68, v135);
        v117 = *(v106 + 8);
        v117(v108, v60);
        v117(v107, v60);
      }
    }

    else
    {
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v137[0] = v74;
        *v73 = 136315138;
        *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
        _os_log_impl(&dword_1DC659000, v71, v72, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x1E12A2F50](v74, -1, -1);
        MEMORY[0x1E12A2F50](v73, -1, -1);
      }
    }

    v75 = type metadata accessor for Parse.DirectInvocation();
    v76 = v126;
    (*(*(v75 - 8) + 56))(v126, 1, 1, v75);
    v77 = type metadata accessor for PommesContext();
    v78 = v127;
    (*(*(v77 - 8) + 56))(v127, 1, 1, v77);
    v79 = v129;
    v80 = v130;
    v81 = v131;
    (*(v130 + 104))(v129, *MEMORY[0x1E69CFF08], v131);
    v82 = type metadata accessor for ExecutionContextUpdate();
    v83 = objc_allocWithZone(v82);
    v84 = v128;
    outlined init with copy of ReferenceResolutionClientProtocol?(v78, v128, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v85 = v118;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v84, v118);
    *&v83[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v83[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v85;
    *&v83[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v83[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v83[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v76, &v83[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v83[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v84, &v83[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v80 + 16))(&v83[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v79, v81);
    v86 = &v83[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v86 = 0;
    v86[1] = 0;
    v83[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v139.receiver = v83;
    v139.super_class = v82;
    v87 = objc_msgSendSuper2(&v139, sel_init);
    (*(v80 + 8))(v79, v81);
    outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v43 = v132;
    *&v132[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v87;
    *&v43[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v48 = v136;
    v50 = v119;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.executor);
    v89 = a1;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v132 = v43;
      v93 = v92;
      v94 = swift_slowAlloc();
      v95 = v50;
      v96 = swift_slowAlloc();
      *&v137[0] = v96;
      *v93 = 136315394;
      *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v137);
      *(v93 + 12) = 2112;
      *(v93 + 14) = v89;
      *v94 = a1;
      v97 = v89;
      _os_log_impl(&dword_1DC659000, v90, v91, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v93, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v94, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      v98 = v96;
      v50 = v95;
      MEMORY[0x1E12A2F50](v98, -1, -1);
      v99 = v93;
      v43 = v132;
      MEMORY[0x1E12A2F50](v99, -1, -1);
    }

    *&v43[OBJC_IVAR___SKRExecutionOutput_command] = a1;
    v100 = v135;
    *&v43[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v135;
    v101 = v100;
    v102 = v89;
  }

  v103 = type metadata accessor for ExecutionOutput();
  v140.receiver = v43;
  v140.super_class = v103;
  v104 = objc_msgSendSuper2(&v140, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v133 + 8))(v134, v50);
  return v104;
}

uint64_t outlined init with take of FlowOutputMessage.InAppResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ExecutionOutput()
{
  v0 = type metadata accessor for RequestSummary.ExecutionSource();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for FlowOutputMessage.InAppResponse?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for FlowOutputMessage.InAppResponse?()
{
  if (!lazy cache variable for type metadata for FlowOutputMessage.InAppResponse?)
  {
    type metadata accessor for FlowOutputMessage.InAppResponse();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FlowOutputMessage.InAppResponse?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecutionOutput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys);
  }

  return result;
}

unint64_t specialized ExecutionOutput.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionOutput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t dispatch thunk of ExecutionOverride.evaluate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v11(a1, a2, a3);
}

uint64_t ExecutionOverrideContext.__allocating_init(activeTasks:executedTasks:isTriggerlessFollowup:isMitigated:endpointMode:isMedocSupported:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  return result;
}

uint64_t ExecutionOverrideContext.init(activeTasks:executedTasks:isTriggerlessFollowup:isMitigated:endpointMode:isMedocSupported:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 33) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  return v6;
}

uint64_t ExecutionOverrideContext.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(88);
  v2 = *v0;
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](0x6576697463617B20, 0xEF203A736B736154);
  v4 = v0[2];
  v5 = type metadata accessor for Siri_Nlu_External_Task();
  v6 = MEMORY[0x1E12A16D0](v4, v5);
  MEMORY[0x1E12A1580](v6);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA82EA0);
  v7 = MEMORY[0x1E12A16D0](v1[3], v5);
  MEMORY[0x1E12A1580](v7);

  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA82EC0);
  if (*(v1 + 32))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v8, v9);

  MEMORY[0x1E12A1580](0xD000000000000014, 0x80000001DCA82EE0);
  if (*(v1 + 48))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + 48))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v10, v11);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 0;
}

uint64_t ExecutionOverrideContext.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ExecutionOverrideContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

SiriKitRuntime::ExecutionOverrideDecision_optional __swiftcall ExecutionOverrideDecision.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionOverrideDecision.init(rawValue:), v3);

  v7 = 12;
  if (v5 < 0xC)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ExecutionOverrideDecision.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0x757165526C696166;
    v6 = 0xD000000000000015;
    if (v1 != 10)
    {
      v6 = 0x747065636361;
    }

    if (v1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000024;
    v8 = 0xD000000000000010;
    if (v1 != 7)
    {
      v8 = 0xD000000000000017;
    }

    if (v1 != 6)
    {
      v7 = v8;
    }

    if (*v0 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 != 3)
    {
      v2 = 0xD000000000000024;
    }

    v3 = 0xD000000000000021;
    if (v1 != 1)
    {
      v3 = 0xD000000000000024;
    }

    if (!*v0)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecutionOverrideDecision(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ExecutionOverrideDecision.rawValue.getter();
  v4 = v3;
  if (v2 == ExecutionOverrideDecision.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision()
{
  result = lazy protocol witness table cache variable for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision;
  if (!lazy protocol witness table cache variable for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionOverrideDecision()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecutionOverrideDecision.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecutionOverrideDecision()
{
  v2 = *v0;
  ExecutionOverrideDecision.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionOverrideDecision()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecutionOverrideDecision.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionOverrideDecision@<X0>(uint64_t *a1@<X8>)
{
  result = ExecutionOverrideDecision.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void ExecutionOverrideDecisionMaker.evaluate(rules:)()
{
  v31 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Evaluating Pre-Execution Decision..", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 168);

  *(v0 + 216) = 2059;
  v6 = *(v5 + 16);
  *(v0 + 184) = v6;
  v7 = *(v6 + 16);
  *(v0 + 192) = v7;
  if (v7)
  {
    *(v0 + 200) = 0;
    if (*(v6 + 16))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v6 + 32, v0 + 16);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      v10 = *(v9 + 16);
      v28 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 208) = v12;
      *v12 = v0;
      v12[1] = ExecutionOverrideDecisionMaker.evaluate(rules:);

      v28(v0 + 218, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *(v0 + 176);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315394;
      v30 = 11;
      v18 = ExecutionOverrideDecision.rawValue.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1701736302, 0xE400000000000000, &v29);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_1DC659000, v14, v15, "[ExecutionOverride] Final ExecutionOverride Decision was evaluated as: %s from %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    swift_beginAccess();
    v22 = *(v0 + 217);
    swift_beginAccess();
    v23 = *(v0 + 216);
    v24 = type metadata accessor for ExecutionOverrideResult();
    v25 = objc_allocWithZone(v24);
    v25[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = v22;
    v25[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v23;
    *(v0 + 144) = v25;
    *(v0 + 152) = v24;
    v26 = objc_msgSendSuper2((v0 + 144), sel_init);
    v27 = *(v0 + 8);

    v27(v26);
  }
}

uint64_t ExecutionOverrideDecisionMaker.evaluate(rules:)()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](ExecutionOverrideDecisionMaker.evaluate(rules:), 0, 0);
}

{
  v82 = v0;
  v1 = *(v0 + 218);
  v2 = (v0 + 16);
  v3 = (v0 + 216);
  v4 = (v0 + 217);
  v5 = *(v0 + 176);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v76 = v7;
    v8 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v77 = (v0 + 160);
    *(v0 + 160) = v75;
    *v8 = 136315394;
    if (v1 > 5)
    {
      v9 = 0x80000001DCA7B0C0;
      v18 = 0xD000000000000015;
      if (v1 != 10)
      {
        v18 = 0x747065636361;
        v9 = 0xE600000000000000;
      }

      if (v1 == 9)
      {
        v18 = 0x757165526C696166;
        v9 = 0xEB00000000747365;
      }

      v12 = 0x80000001DCA7B040;
      v19 = 0x80000001DCA7B070;
      v20 = 0xD000000000000010;
      if (v1 != 7)
      {
        v20 = 0xD000000000000017;
        v19 = 0x80000001DCA7B090;
      }

      if (v1 == 6)
      {
        v20 = 0xD000000000000024;
      }

      else
      {
        v12 = v19;
      }

      v16 = v1 <= 8;
      if (v1 <= 8)
      {
        v17 = v20;
      }

      else
      {
        v17 = v18;
      }
    }

    else
    {
      v9 = 0x80000001DCA7AFC0;
      v10 = 0xD000000000000019;
      v11 = 0x80000001DCA7AFE0;
      if (v1 != 4)
      {
        v11 = 0x80000001DCA7B010;
      }

      if (v1 != 3)
      {
        v10 = 0xD000000000000024;
        v9 = v11;
      }

      v12 = 0x80000001DCA7AF40;
      v13 = 0xD000000000000017;
      v14 = 0x80000001DCA7AF60;
      v15 = 0xD000000000000021;
      if (v1 != 1)
      {
        v15 = 0xD000000000000024;
        v14 = 0x80000001DCA7AF90;
      }

      if (v1)
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = v1 <= 2;
      if (v1 <= 2)
      {
        v17 = v13;
      }

      else
      {
        v17 = v10;
      }
    }

    if (v16)
    {
      v21 = v12;
    }

    else
    {
      v21 = v9;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v21, v77);

    *(v8 + 4) = v22;
    *(v8 + 12) = 2080;
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v24);
    (*(v23 + 8))(v24, v23);
    v25 = *(v0 + 219);
    if (v25 <= 3)
    {
      v28 = 0x80000001DCA7B130;
      v29 = 0xD000000000000023;
      if (v25 != 2)
      {
        v29 = 0xD000000000000022;
        v28 = 0x80000001DCA7B160;
      }

      v30 = 0x80000001DCA7B0E0;
      v31 = 0xD000000000000016;
      if (*(v0 + 219))
      {
        v31 = 0xD000000000000021;
        v30 = 0x80000001DCA7B100;
      }

      if (*(v0 + 219) <= 1u)
      {
        v27 = v31;
      }

      else
      {
        v27 = v29;
      }

      if (*(v0 + 219) <= 1u)
      {
        v26 = v30;
      }

      else
      {
        v26 = v28;
      }

      v4 = (v0 + 217);
    }

    else
    {
      v4 = (v0 + 217);
      if (*(v0 + 219) <= 5u)
      {
        if (v25 == 4)
        {
          v27 = 0xD000000000000022;
        }

        else
        {
          v27 = 0xD000000000000017;
        }

        if (v25 == 4)
        {
          v26 = 0x80000001DCA7B190;
        }

        else
        {
          v26 = 0x80000001DCA7B1C0;
        }
      }

      else if (v25 == 6)
      {
        v27 = 0x5253417974706D65;
        v26 = 0xEC000000656C7552;
      }

      else if (v25 == 7)
      {
        v26 = 0x80000001DCA7B1F0;
        v27 = 0xD00000000000001BLL;
      }

      else
      {
        v26 = 0xE400000000000000;
        v27 = 1701736302;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v77);

    *(v8 + 14) = v32;
    _os_log_impl(&dword_1DC659000, v6, v76, "[ExecutionOverride] Evaluating.. Intermediate Decision was evaluated as: %s from %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v75, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);

    v3 = (v0 + 216);
    v2 = (v0 + 16);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  if (v1 > 10)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      *(v0 + 216) = v1;
      v38 = *(v0 + 40);
      v39 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1(v2, v38);
      (*(v39 + 8))(&v79, v38, v39);
      v40 = v2;
      v37 = v79;
      *(v0 + 217) = v79;
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      goto LABEL_60;
    }
  }

  v34 = *(v0 + 192);
  v35 = *(v0 + 200) + 1;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v2);
  if (v35 == v34)
  {
    LOBYTE(v1) = *v3;
    v37 = *v4;
LABEL_60:
    v41 = *(v0 + 176);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v80 = v45;
      *v44 = 136315394;
      v81 = v1;
      v46 = ExecutionOverrideDecision.rawValue.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v80);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      if (v37 <= 3)
      {
        v64 = 0x80000001DCA7B130;
        v65 = 0xD000000000000023;
        if (v37 != 2)
        {
          v65 = 0xD000000000000022;
          v64 = 0x80000001DCA7B160;
        }

        v66 = 0x80000001DCA7B0E0;
        v67 = 0xD000000000000016;
        if (v37)
        {
          v67 = 0xD000000000000021;
          v66 = 0x80000001DCA7B100;
        }

        if (v37 <= 1)
        {
          v55 = v67;
        }

        else
        {
          v55 = v65;
        }

        if (v37 <= 1)
        {
          v56 = v66;
        }

        else
        {
          v56 = v64;
        }
      }

      else
      {
        v49 = 0x5253417974706D65;
        v50 = 0xEC000000656C7552;
        v51 = 0x80000001DCA7B1F0;
        v52 = 0xD00000000000001BLL;
        if (v37 != 7)
        {
          v52 = 1701736302;
          v51 = 0xE400000000000000;
        }

        if (v37 != 6)
        {
          v49 = v52;
          v50 = v51;
        }

        v53 = 0x80000001DCA7B190;
        v54 = 0xD000000000000022;
        if (v37 != 4)
        {
          v54 = 0xD000000000000017;
          v53 = 0x80000001DCA7B1C0;
        }

        if (v37 <= 5)
        {
          v55 = v54;
        }

        else
        {
          v55 = v49;
        }

        if (v37 <= 5)
        {
          v56 = v53;
        }

        else
        {
          v56 = v50;
        }
      }

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v80);

      *(v44 + 14) = v68;
      _os_log_impl(&dword_1DC659000, v42, v43, "[ExecutionOverride] Final ExecutionOverride Decision was evaluated as: %s from %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v69 = *(v0 + 217);
    swift_beginAccess();
    v70 = *(v0 + 216);
    v71 = type metadata accessor for ExecutionOverrideResult();
    v72 = objc_allocWithZone(v71);
    v72[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = v69;
    v72[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v70;
    *(v0 + 144) = v72;
    *(v0 + 152) = v71;
    v73 = objc_msgSendSuper2((v0 + 144), sel_init);
    v74 = *(v0 + 8);

    return v74(v73);
  }

  v57 = *(v0 + 200) + 1;
  *(v0 + 200) = v57;
  v58 = *(v0 + 184);
  if (v57 >= *(v58 + 16))
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v58 + 40 * v57 + 32, v2);
    v59 = *(v0 + 40);
    v60 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1(v2, v59);
    v61 = *(v60 + 16);
    v78 = (v61 + *v61);
    v62 = v61[1];
    v63 = swift_task_alloc();
    *(v0 + 208) = v63;
    *v63 = v0;
    v63[1] = ExecutionOverrideDecisionMaker.evaluate(rules:);

    return v78(v0 + 218, v59, v60);
  }

  return result;
}

uint64_t dispatch thunk of ExecutionOverrideDecisionMaker.evaluate(rules:)(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v8(a1);
}

uint64_t static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 493) = v25;
  *(v8 + 352) = v23;
  *(v8 + 360) = v24;
  *(v8 + 492) = v22;
  *(v8 + 491) = v21;
  *(v8 + 344) = v20;
  *(v8 + 328) = v19;
  *(v8 + 490) = a8;
  *(v8 + 489) = a7;
  *(v8 + 488) = a6;
  *(v8 + 312) = a4;
  *(v8 + 320) = a5;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  *(v8 + 288) = a1;
  v9 = type metadata accessor for Parse();
  *(v8 + 368) = v9;
  v10 = *(v9 - 8);
  *(v8 + 376) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v12 = type metadata accessor for USOParse();
  *(v8 + 392) = v12;
  v13 = *(v12 - 8);
  *(v8 + 400) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR) - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:), 0, 0);
}

uint64_t static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 320);
  v3 = type metadata accessor for Logger();
  *(v0 + 448) = __swift_project_value_buffer(v3, static Logger.executor);
  specialized Logger.debugF(_:_:_:_:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, v1, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = *(v0 + 440);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 424), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v7 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  else
  {
    v8 = *(v0 + 424);
    v10 = *(v0 + 376);
    v9 = *(v0 + 384);
    v11 = *(v0 + 368);
    Input.parse.getter();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69D0168])
    {
      v12 = *(v0 + 440);
      v14 = *(v0 + 400);
      v13 = *(v0 + 408);
      v16 = *(v0 + 384);
      v15 = *(v0 + 392);
      (*(*(v0 + 376) + 96))(v16, *(v0 + 368));
      (*(v14 + 32))(v13, v16, v15);
      USOParse.userParse.getter();
      (*(v14 + 8))(v13, v15);
      v17 = 0;
    }

    else
    {
      (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
      v17 = 1;
    }

    v18 = *(v0 + 440);
    v19 = *(v0 + 424);
    v20 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v20 - 8) + 56))(v18, v17, 1, v20);
    (*(v5 + 8))(v19, v4);
  }

  v21 = MEMORY[0x1E69E7CC0];
  *(v0 + 232) = MEMORY[0x1E69E7CC0];
  v22 = *(v0 + 432);
  v24 = *(v0 + 352);
  v23 = *(v0 + 360);
  v25 = *(v0 + 492);
  v26 = *(v0 + 488);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 440), v22, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v27 = type metadata accessor for HangUpOverride();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v30 = HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(v22, v24, v23, v25, v26);
  swift_beginAccess();
  v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v21);
  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = *(v0 + 416);
  v35 = *(v0 + 489);
  v36 = *(v0 + 312);
  v37 = *(v0 + 320);
  v81 = *(v0 + 304);
  *(v0 + 40) = v27;
  *(v0 + 48) = &protocol witness table for HangUpOverride;
  *(v0 + 16) = v30;
  v31[2] = v33 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), &v31[5 * v33 + 4]);
  *(v0 + 232) = v31;
  outlined init with copy of ReferenceResolutionClientProtocol?(v37, v34, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v38 = type metadata accessor for WaitUniversalActionOverride();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  *(v41 + 16) = 7;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v34, v41 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v80 = v35;
  *(v41 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = v35;
  v42 = (v41 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v42 = v81;
  v42[1] = v36;
  v44 = v31[2];
  v43 = v31[3];

  if (v44 >= v43 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v31);
  }

  v46 = *(v0 + 432);
  v45 = *(v0 + 440);
  *(v0 + 80) = v38;
  *(v0 + 88) = &protocol witness table for WaitUniversalActionOverride;
  *(v0 + 56) = v41;
  v31[2] = v44 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), &v31[5 * v44 + 4]);
  *(v0 + 232) = v31;
  outlined init with copy of ReferenceResolutionClientProtocol?(v45, v46, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v47 = type metadata accessor for EmergencyCallMitigatorOverride();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + 16) = 1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v46, v50 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v52 = v31[2];
  v51 = v31[3];
  if (v52 >= v51 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v31);
  }

  v53 = *(v0 + 432);
  v54 = *(v0 + 440);
  v55 = *(v0 + 344);
  *(v0 + 120) = v47;
  *(v0 + 128) = &protocol witness table for EmergencyCallMitigatorOverride;
  *(v0 + 96) = v50;
  v31[2] = v52 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), &v31[5 * v52 + 4]);
  *(v0 + 232) = v31;
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  outlined init with copy of ReferenceResolutionClientProtocol?(v54, v53, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  LOBYTE(v54) = *(v55 + 32);
  *(v0 + 494) = v54;
  v58 = *(v55 + 33);
  LOBYTE(v55) = *(v55 + 48);
  v59 = type metadata accessor for AnnounceExecutionOverride();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  v62 = swift_allocObject();
  *(v62 + 16) = 1028;
  *(v62 + 24) = v57;
  *(v62 + 32) = v56;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v53, v62 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v62 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = v54;
  *(v62 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = v58;
  *(v62 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = v55;
  v63 = v31[2];
  v64 = v31[3];

  if (v63 >= v64 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v63 + 1, 1, v31);
  }

  v65 = *(v0 + 493);
  *(v0 + 160) = v59;
  *(v0 + 168) = &protocol witness table for AnnounceExecutionOverride;
  *(v0 + 136) = v62;
  v31[2] = v63 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), &v31[5 * v63 + 4]);
  *(v0 + 232) = v31;
  swift_endAccess();
  if ((v65 & 1) == 0)
  {
    v78 = *(v0 + 491);
    v79 = *(v0 + 492);
    v67 = *(v0 + 328);
    v66 = *(v0 + 336);
    v68 = *(v0 + 490);
    v69 = *(v0 + 488);
    v71 = *(v0 + 304);
    v70 = *(v0 + 312);
    v82 = type metadata accessor for EmptyAsrOverride();
    v72 = swift_allocObject();
    *(v72 + 16) = 6;
    *(v72 + 40) = v80;
    *(v72 + 41) = v68;
    *(v72 + 24) = v66;
    *(v72 + 32) = v67;
    *(v72 + 42) = v78;
    *(v72 + 44) = v69;
    *(v72 + 43) = v79;
    *(v72 + 48) = v71;
    *(v72 + 56) = v70;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63 + 2, 1, v31);
    }

    v74 = v31[2];
    v73 = v31[3];
    if (v74 >= v73 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v31);
    }

    *(v0 + 200) = v82;
    *(v0 + 208) = &protocol witness table for EmptyAsrOverride;
    *(v0 + 176) = v72;
    v31[2] = v74 + 1;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), &v31[5 * v74 + 4]);
  }

  *(v0 + 456) = v31;
  type metadata accessor for ExecutionOverrideDecisionMaker();
  swift_initStaticObject();
  type metadata accessor for CompositeExecutionOverrides();
  inited = swift_initStackObject();
  *(v0 + 464) = inited;
  *(inited + 16) = v31;

  v76 = swift_task_alloc();
  *(v0 + 472) = v76;
  *v76 = v0;
  v76[1] = static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:);

  return ExecutionOverrideDecisionMaker.evaluate(rules:)(inited);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 344);

  v4 = v1;
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2, v2, v3, v4);

  v5 = v4[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type];
  if (v5 == 8)
  {
    *(v0 + 494);
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  v10 = *(v0 + 416);
  v11 = *(v0 + 424);
  v17 = *(v0 + 408);
  v18 = *(v0 + 384);
  v13 = *(v0 + 288);
  v12 = *(v0 + 296);
  specialized Logger.debugF(_:_:_:_:)();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionOverrideInfo(rcId:executionOverrideDecision:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);

  v14 = *(v0 + 8);
  v15 = *(v0 + 480);

  return v14(v15);
}

uint64_t static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)(uint64_t a1)
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 480) = a1;

  return MEMORY[0x1EEE6DFA0](static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:), 0, 0);
}

id ExecutionOverrideResult.__allocating_init(type:decision:)(_BYTE *a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  v5[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = *a1;
  v5[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v6;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ExecutionOverrideResult.init(type:decision:)(_BYTE *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  v2[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = *a1;
  v2[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ExecutionOverrideResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionOverrideResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t ExecutionOverrideType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v2 = 0xD000000000000023;
    if (v1 != 2)
    {
      v2 = 0xD000000000000022;
    }

    v4 = 0xD000000000000021;
    if (!*v0)
    {
      v4 = 0xD000000000000016;
    }

    v5 = *v0 <= 1u;
  }

  else
  {
    v2 = 0x5253417974706D65;
    v3 = 0xD00000000000001BLL;
    if (v1 != 7)
    {
      v3 = 1701736302;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000022;
    if (v1 != 4)
    {
      v4 = 0xD000000000000017;
    }

    v5 = *v0 <= 5u;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t ExecutionOverrideType.asCNVSchemaType(isTriggerlessFollowUp:)(char a1)
{
  v2 = *v1;
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4u:
        return 1;
      case 6u:
        return 6;
      case 8u:
        if (a1)
        {
          return 3;
        }

        else
        {
          return 2;
        }

      default:
        return 0;
    }
  }

  else
  {
    if (!*v1)
    {
      return 5;
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 7;
      }

      return 0;
    }

    return 4;
  }
}

SiriKitRuntime::ExecutionOverrideType_optional __swiftcall ExecutionOverrideType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionOverrideType.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ExecutionOverrideType and conformance ExecutionOverrideType()
{
  result = lazy protocol witness table cache variable for type ExecutionOverrideType and conformance ExecutionOverrideType;
  if (!lazy protocol witness table cache variable for type ExecutionOverrideType and conformance ExecutionOverrideType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionOverrideType and conformance ExecutionOverrideType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionOverrideType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionOverrideType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionOverrideType@<X0>(unint64_t *a1@<X8>)
{
  result = ExecutionOverrideType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FeatureChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v3[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v3[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  *(v0 + 17) = v1 & 1;
  return v0;
}

uint64_t FeatureChecker.init()()
{
  *(v0 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v3[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v3[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  *(v0 + 17) = v1 & 1;
  return v0;
}

SiriKitRuntime::FindMyAffinityScorer __swiftcall FindMyAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CAD0;
  v1 = 0xD000000000000026;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized FindMyAffinityScorer.findMyDeviceNameIdentifiers(from:)(uint64_t a1)
{
  if (a1)
  {

    v1 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
    if (v1)
    {
      v2 = v1;

      return v2;
    }

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
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "FindMyAffinityScorer findMyDeviceNameIdentifiers | unable to obtain device name identifiers", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.executor);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "FindMyAffinityScorer findMyDeviceNameIdentifiers | missing reference", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized FindMyAffinityScorer.containsDeviceNameIdentifier(reference:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = specialized FindMyAffinityScorer.findMyDeviceNameIdentifiers(from:)(a1);
  v8 = v7;
  v23 = *(v7 + 16);
  if (!v23)
  {

    return 0;
  }

  v9 = 0;
  v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v11 = (v3 + 8);
  do
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    (*(v3 + 16))(v6, v10 + *(v3 + 72) * v9, v2);
    v12 = UsoIdentifier.namespace.getter();
    if (!v13)
    {
LABEL_3:
      (*v11)(v6, v2);
      goto LABEL_4;
    }

    if (v12 == 0x6369746E616D6573 && v13 == 0xEE0065756C61765FLL)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (UsoIdentifier.appBundleId.getter() == 0x794D646E6946 && v15 == 0xE600000000000000)
    {

      (*v11)(v6, v2);
LABEL_22:

      return 1;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v6, v2);
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v9;
  }

  while (v23 != v9);

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
LABEL_17:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "FindMyAffinityScorer containsDeviceNameIdentifier | unable to obtain identifier", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  return 0;
}

uint64_t specialized FindMyAffinityScorer.containsDeviceTypeIdentifier(reference:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = specialized FindMyAffinityScorer.findMyDeviceNameIdentifiers(from:)(a1);
  v8 = v7;
  v21 = *(v7 + 16);
  if (v21)
  {
    v9 = 0;
    v20 = 0x80000001DCA830B0;
    v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = (v3 + 8);
    do
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      (*(v3 + 16))(v6, v10 + *(v3 + 72) * v9, v2);
      v12 = UsoIdentifier.namespace.getter();
      if (v13)
      {
        if (v12 == 0xD000000000000010 && v13 == v20)
        {

          (*v11)(v6, v2);
LABEL_17:

          return 1;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v11)(v6, v2);
        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
        (*v11)(v6, v2);
      }

      ++v9;
    }

    while (v21 != v9);

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_13;
    }

LABEL_19:
    swift_once();
LABEL_13:
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "FindMyAffinityScorer containsDeviceTypeIdentifier | No findMyDeviceType", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    return 0;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized FindMyAffinityScorer.isSupported(usoTask:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v6)
  {
    goto LABEL_12;
  }

  outlined init with copy of Any?(v5, v4);
  type metadata accessor for UsoTask_getLocation_common_UserEntity();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_ping_common_UserEntity();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_request_common_UserEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_12:
      v1 = 0;
      goto LABEL_13;
    }
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v0 = specialized FindMyAffinityScorer.containsDeviceNameIdentifier(reference:)(v3);

  if ((v0 & 1) == 0)
  {
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_9:
    v1 = specialized FindMyAffinityScorer.containsDeviceTypeIdentifier(reference:)(v3);

    goto LABEL_10;
  }

  v1 = 1;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_13:
  outlined destroy of Any?(v5);
  return v1 & 1;
}

uint64_t specialized FindMyAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v4, v0);
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
      _os_log_impl(&dword_1DC659000, v12, v13, "FindMyAffinityScorer score | unexpected parse", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v4, v0);
  (*(v6 + 32))(v9, v4, v5);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "FindMyAffinityScorer score | unable to obtain task from parse", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);

      (*(v6 + 8))(v9, v5);
      return 2;
    }

    goto LABEL_20;
  }

  if ((specialized FindMyAffinityScorer.isSupported(usoTask:)() & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v10 = 2;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "FindMyAffinityScorer score | task is unsupported by FMD or doesn't contain device name identifier", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);

      (*(v6 + 8))(v9, v5);
      return v10;
    }

LABEL_20:
    (*(v6 + 8))(v9, v5);
    return 2;
  }

  (*(v6 + 8))(v9, v5);

  return 3;
}

uint64_t FlexibleAnnounceFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static FlexibleAnnounceFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static FlexibleAnnounceFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for FlexibleAnnounceFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t *FlexibleAnnounceFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static FlexibleAnnounceFeatureFlag.forceEnabled;
}

uint64_t static FlexibleAnnounceFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

Swift::Int FlexibleAnnounceFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t FlowAgent.__allocating_init(flow:tasks:pluginInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 130) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 112) = a1;
  *(v8 + 120) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  v9 = v12 != 0;
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v8 + 128) = v9;
  *(v8 + 129) = v9;
  *(v8 + 152) = a2;
  *(v8 + 160) = a3;
  return v8;
}

uint64_t FlowAgent.couldPrepareBeCalled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 129) = a1;
  return result;
}

uint64_t FlowAgent.isCancelled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 130) = a1;
  return result;
}

uint64_t FlowAgent.init(flow:tasks:pluginInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  *(v5 + 130) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 112) = a1;
  *(v5 + 120) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  LOBYTE(a1) = v12 != 0;
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v5 + 128) = a1;
  *(v5 + 129) = a1;
  *(v5 + 152) = a2;
  *(v5 + 160) = a3;
  return v5;
}

uint64_t FlowAgent.__allocating_init(loadedFlow:completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FlowPluginInfo();
  LoadedFlowInfo.fromBundle.getter();
  v4 = FlowPluginInfo.__allocating_init(pluginBundle:)(v12);
  v5 = LoadedFlowInfo.flow.getter();
  v6 = LoadedFlowInfo.activeTasks.getter();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FlowAgent();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 130) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 112) = v5;
  *(v8 + 120) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  v9 = type metadata accessor for LoadedFlowInfo();
  (*(*(v9 - 8) + 8))(a1, v9);
  v10 = v12[3] != 0;
  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v8 + 128) = v10;
  *(v8 + 129) = v10;
  *(v8 + 152) = v7;
  *(v8 + 160) = v4;
  return v8;
}

uint64_t FlowAgent.paraphrase()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](FlowAgent.paraphrase(), v1, 0);
}

uint64_t FlowAgent.paraphrase()()
{
  v22 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    v0[3] = *(v5 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "%s paraphrase.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v11 = v0[5];
  type metadata accessor for SiriEnvironment();
  v12 = *(v11 + 112);
  v0[6] = v12;
  v0[2] = v12;
  v13 = *(MEMORY[0x1E69D33F8] + 4);

  v14 = swift_task_alloc();
  v0[7] = v14;
  v15 = type metadata accessor for AnyFlow();
  v16 = type metadata accessor for ActionParaphrase();
  v17 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
  *v14 = v0;
  v14[1] = FlowAgent.paraphrase();
  v18 = v0[4];
  v19 = v0[5];

  return MEMORY[0x1EEE40DB8](v18, v0 + 2, &async function pointer to partial apply for closure #1 in FlowAgent.paraphrase(), v19, v15, v16, v17);
}

void FlowAgent.paraphrase()()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t closure #1 in FlowAgent.paraphrase()(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.paraphrase(), 0, 0);
}

uint64_t closure #1 in FlowAgent.paraphrase()()
{
  v20 = v0;
  v1 = *(*(v0 + 112) + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow013ParaphrasableC0_pMd, &_s11SiriKitFlow013ParaphrasableC0_pMR);
  dispatch thunk of AnyFlow.unbox<A>(as:)();
  if (*(v0 + 80))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(MEMORY[0x1E69CF970] + 4);
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = closure #1 in FlowAgent.paraphrase();
    v6 = *(v0 + 104);

    return MEMORY[0x1EEE39080](v6, v2, v3);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow013ParaphrasableC0_pSgMd, &_s11SiriKitFlow013ParaphrasableC0_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 112);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      *(v0 + 96) = v1;
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DC659000, v9, v10, "[Conversation] %s paraphrase called on non input paraphrasing flow", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v16 = *(v0 + 104);
    static ActionParaphrase.noParaphrase()();
    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.paraphrase(), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void $defer #1 () in FlowAgent.prepare()(uint64_t a1, uint64_t a2)
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v11 = *(a2 + 112);
    v12 = v6;
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DC659000, oslog, v4, "%s prepare completed.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in FlowAgent.prepare()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  outlined init with copy of ReferenceResolutionClientProtocol(a2, v16);
  v12 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type FlowAgent and conformance FlowAgent, v11, type metadata accessor for FlowAgent);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v12;
  v13[4] = a1;
  outlined init with take of ReferenceResolutionClientProtocol(v16, (v13 + 5));
  swift_retain_n();
  result = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC11SiriKitFlow15PrepareResponseV_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in FlowAgent.prepare(), v13);
  *a3 = result;
  return result;
}

uint64_t closure #1 in closure #1 in FlowAgent.prepare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in FlowAgent.prepare(), a4, 0);
}

uint64_t closure #1 in closure #1 in FlowAgent.prepare()()
{
  outlined init with copy of ReferenceResolutionClientProtocol(*(v0 + 72), v0 + 16);
  v1 = swift_allocObject();
  *(v0 + 80) = v1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v1 + 16);
  v2 = *(MEMORY[0x1E69D3658] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = type metadata accessor for PrepareResponse();
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in FlowAgent.prepare();
  v5 = *(v0 + 56);

  return MEMORY[0x1EEE412A8](v5, partial apply for closure #1 in closure #1 in closure #1 in FlowAgent.prepare(), v1, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = closure #1 in closure #1 in FlowAgent.prepare();
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 64);

    v5 = closure #1 in closure #1 in FlowAgent.prepare();
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v1 + 144);
  *(v1 + 144) = 0;

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[10];
  v2 = v0[8];

  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t closure #1 in closure #1 in closure #1 in FlowAgent.prepare()(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  dispatch thunk of PreparableFlow.prepare(completion:)();
}

uint64_t FlowAgent.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 152);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t partial apply for closure #1 in FlowAgent.paraphrase()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in FlowAgent.paraphrase()(a1, v1);
}

uint64_t dispatch thunk of FlowAgent.on(input:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v8(a1);
}

uint64_t dispatch thunk of FlowAgent.paraphrase()(uint64_t a1)
{
  v4 = *(*v1 + 280);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v8(a1);
}

uint64_t dispatch thunk of FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of FlowAgent.prepare()(uint64_t a1)
{
  v4 = *(*v1 + 296);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t partial apply for closure #1 in closure #1 in FlowAgent.prepare()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in FlowAgent.prepare()(a1, v4, v5, v6, (v1 + 5));
}

uint64_t FlowExtensionConnection.__allocating_init(nsExtension:onConnectionInterrupted:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)(a1, a2, a3);
  return v6;
}

void *FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 152) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v3 + 32);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v23 = (*(v14 + 8))(v13, v14);
  v24 = v15;
  MEMORY[0x1E12A1580](60, 0xE100000000000000);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x1E12A1580](v16, v18);

  MEMORY[0x1E12A1580](62, 0xE100000000000000);
  v20 = v23;
  v19 = v24;
  v4[2] = v23;
  v4[3] = v19;
  v4[9] = a2;
  v4[10] = a3;
  type metadata accessor for InterruptibleTaskManager();
  v21 = swift_allocObject();
  v21[4] = MEMORY[0x1E69E7CC8];
  v21[5] = 0;
  v21[2] = v20;
  v21[3] = v19;
  v4[20] = v21;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for OSSignpostID();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for OSSignposter();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = type metadata accessor for InterruptibleTaskResult();
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v5[20] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionConnection.withRemoteConversationConnection<A>(execute:), v15, 0);
}

uint64_t FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)()
{
  v48 = v0;
  v1 = v0[9];
  v2 = v1[11];
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    v6 = v1[12];
    v7 = v1[20];
    v8 = swift_allocObject();
    v0[22] = v8;
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v3;
    v8[5] = v2;
    v8[6] = v6;
    swift_unknownObjectRetain_n();

    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v10 = v0[19];
    v11 = v0[8];
    v12 = &async function pointer to partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v13 = v8;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
      v41 = v0[9];
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[9];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v18 + 16), *(v18 + 24), v47);
      _os_log_impl(&dword_1DC659000, v16, v17, "Flow Extension %s is not active, beginning new request.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[13];
    v24 = v0[9];
    v25 = __swift_project_value_buffer(v23, static Signposter.executor);
    (*(v22 + 16))(v21, v25, v23);
    static OSSignpostID.exclusive.getter();
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = OSSignposter.logHandle.getter();
    v28 = static os_signpost_type_t.begin.getter();
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v27, v28, v29, "FlowExtensionBringup", "", v26, 2u);
    closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(v24, v47);
    v30 = v0[14];
    v31 = v0[12];
    v43 = v0[13];
    v44 = v0[15];
    v33 = v0[10];
    v32 = v0[11];
    v34 = v0[9];
    v35 = v0[7];
    v45 = v0[6];
    v46 = v0[8];
    v36 = static os_signpost_type_t.end.getter();
    v37 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v27, v36, v37, "FlowExtensionBringup", "", v26, 2u);

    v42 = *v47;
    v0[25] = v47[0];
    MEMORY[0x1E12A2F50](v26, -1, -1);
    (*(v32 + 8))(v31, v33);
    (*(v30 + 8))(v44, v43);
    v38 = *(v34 + 160);
    v39 = swift_allocObject();
    v0[26] = v39;
    *(v39 + 16) = v46;
    *(v39 + 24) = v45;
    *(v39 + 32) = v35;
    *(v39 + 40) = v42;

    swift_unknownObjectRetain();
    v40 = swift_task_alloc();
    v0[27] = v40;
    *v40 = v0;
    v40[1] = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v10 = v0[18];
    v11 = v0[8];
    v12 = &async function pointer to partial apply for closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v13 = v39;
  }

  return InterruptibleTaskManager.perform<A>(_:)(v10, v12, v13, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v6 = *(v2 + 176);
    v7 = *(v2 + 160);

    v5 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v5 = v0[5];

  InterruptibleTaskResult.get()(v4, v5);
  v6 = v0[21];
  (*(v0[17] + 8))(v0[19], v0[16]);
  swift_unknownObjectRelease();
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 160);

    v5 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[5];

  InterruptibleTaskResult.get()(v4, v5);
  v6 = v0[25];
  (*(v0[17] + 8))(v0[18], v0[16]);
  swift_unknownObjectRelease();
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];

  swift_unknownObjectRelease();
  v4 = v0[24];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[20];
  swift_unknownObjectRelease();

  v4 = v0[28];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

void closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v40 - v10;
  v12 = a1[7];
  v13 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v12);
  v14 = (*(v13 + 24))(0, 0, v12, v13);
  if (v2)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x1E12A1580](0xD000000000000033, 0x80000001DCA833D0);
    v47[0] = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v16);

    v17 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v18 = v17;
    swift_willThrow();

    return;
  }

  *&aBlock = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_pMd, &_sSo9NSCopying_pMR);
  v19 = type metadata accessor for UUID();
  v20 = swift_dynamicCast();
  (*(*(v19 - 8) + 56))(v8, v20 ^ 1u, 1, v19);
  outlined init with take of UUID?(v8, v11);
  v21 = a1[7];
  v22 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v21);
  (*(v22 + 32))(&aBlock, v11, v21, v22);
  if (!v43)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&aBlock = 0xD000000000000024;
    *(&aBlock + 1) = 0x80000001DCA83410;
    MEMORY[0x1E12A1580](a1[2], a1[3]);
    v33 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v34 = v33;
    swift_willThrow();
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&aBlock, v47);
  v23 = v48;
  v24 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v25 = (*(v24 + 8))(v23, v24);
  if (!v25)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&aBlock = 0xD000000000000026;
    *(&aBlock + 1) = 0x80000001DCA83440;
    MEMORY[0x1E12A1580](a1[2], a1[3]);
    v35 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v36 = v35;
    swift_willThrow();
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    goto LABEL_11;
  }

  v26 = v25;
  v44 = partial apply for closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
  v45 = a1;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v43 = &block_descriptor_11;
  v27 = _Block_copy(&aBlock);

  v28 = [v26 remoteObjectProxyWithErrorHandler_];
  _Block_release(v27);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v46, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21RemoteConversationXPC_pMd, &_s14SiriKitRuntime21RemoteConversationXPC_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    MEMORY[0x1E12A1580](0xD000000000000020, 0x80000001DCA83470);
    MEMORY[0x1E12A1580](a1[2], a1[3]);
    MEMORY[0x1E12A1580](0xD00000000000002ELL, 0x80000001DCA834A0);
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v40[0] = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v37 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v37);

    v38 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v39 = v38;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_getObjectType();
  v29 = RemoteConversationXPC.sendableWrapper.getter();
  v31 = v30;
  swift_unknownObjectRelease();
  v32 = a1[11];
  a1[11] = v29;
  a1[12] = v31;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  outlined init with copy of ReferenceResolutionClientProtocol(v47, &aBlock);
  swift_beginAccess();
  outlined assign with take of NSExtensionContextProtocol?(&aBlock, (a1 + 13));
  swift_endAccess();
  *a2 = v29;
  a2[1] = v31;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25[-1] - v6;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 16), *(a2 + 24), v25);
    *(v12 + 12) = 2080;
    v24 = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v25);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1DC659000, v10, v11, "Error communicating with Siri Flow Extension %s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);

  v19 = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = static MessageBusActor.shared;
  v21 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a2;
  v22[5] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:), v22);
}

uint64_t closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:), v6, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)()
{
  v1 = v0[5];
  v2 = *(v1 + 80);
  (*(v1 + 72))(v0[6]);
  FlowExtensionConnection.invalidate()();
  v3 = v0[1];

  return v3();
}

SiriKitRuntime::RemoteConversationConnectionInvalidationResult __swiftcall FlowExtensionConnection.invalidate()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = *(v0 + 160);
  swift_beginAccess();
  v4 = *(*(v3 + 32) + 16) == 0;
  v5 = *(v1 + 88);
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  swift_unknownObjectRelease();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  swift_beginAccess();
  outlined assign with take of NSExtensionContextProtocol?(v7, v1 + 104);
  swift_endAccess();
  InterruptibleTaskManager.invalidate()();
  return v4;
}

uint64_t closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v12(a1, a4, a5);
}

uint64_t FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for InterruptibleTaskResult();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v5[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:), v9, 0);
}

uint64_t FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)()
{
  v1 = v0[9];
  v2 = v1[11];
  v0[14] = v2;
  v3 = v1[12];
  if (v2)
  {
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = v1[20];
    v8 = swift_allocObject();
    v0[15] = v8;
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v4;
    v8[5] = v2;
    v8[6] = v3;
    swift_unknownObjectRetain_n();

    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v10 = v0[12];
    v11 = v0[8];

    return InterruptibleTaskManager.perform<A>(_:)(v10, &async function pointer to partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:), v8, v11);
  }

  else
  {
    v17 = (v0[6] + *v0[6]);
    v13 = *(v0[6] + 4);
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v15 = v0[7];
    v16 = v0[5];

    return v17(v16, 0, v3);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 104);

    v5 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[5];

  InterruptibleTaskResult.get()(v4, v5);
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_unknownObjectRelease();
  v7 = v0[12];
  if (v1)
  {
    v8 = v0[12];
  }

  else
  {
    (*(*(v0[8] - 8) + 56))(v0[5], 0, 1);
  }

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  else
  {
    v6 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[13];

  v2 = v0[12];
  (*(*(v0[8] - 8) + 56))(v0[5], 0, 1);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  swift_unknownObjectRelease();
  v4 = v0[17];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[13];

  v2 = v0[19];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t FlowExtensionConnection.kill()()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionConnection.kill(), v2, 0);
}

{
  v14 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v13);
    _os_log_impl(&dword_1DC659000, v3, v4, "Killing process for %s with SIGKILL", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v8 = *(v0 + 40);
  v9 = v8[7];
  v10 = v8[8];
  __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
  (*(v10 + 40))(9, v9, v10);
  FlowExtensionConnection.invalidate()();
  v11 = *(v0 + 8);

  return v11();
}

unint64_t FlowExtensionConnection.ExtensionError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(27);

  MEMORY[0x1E12A1580](a1, a2);
  return 0xD000000000000019;
}

void *FlowExtensionConnection.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[10];

  v3 = v0[11];
  swift_unknownObjectRelease();
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 13), &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);
  v4 = v0[19];

  v5 = v0[20];

  return v0;
}

uint64_t FlowExtensionConnection.__deallocating_deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[10];

  v3 = v0[11];
  swift_unknownObjectRelease();
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 13), &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);
  v4 = v0[19];

  v5 = v0[20];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnection<A>(execute:) in conformance FlowExtensionConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, a2, a3, a4);
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnectionIfValid<A>(execute:) in conformance FlowExtensionConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(a1, a2, a3, a4);
}

uint64_t partial apply for closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
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

  return closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v5, v6, v7, v8);
}

uint64_t outlined assign with take of NSExtensionContextProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1)
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

  return closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(a1, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError()
{
  result = lazy protocol witness table cache variable for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError;
  if (!lazy protocol witness table cache variable for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v7, v6);
}

void FlowExtensionContext.__allocating_init(inputItems:listenerEndpoint:contextUUID:overrideFlowExtension:overrideSiriKitRuntime:overrideExtensionId:overrideIntentTopics:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v75 = a8;
  v67 = a5;
  v68 = a7;
  v72 = a4;
  v73 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v70 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v59 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v59 - v19;
  v71 = v9;
  v21 = objc_allocWithZone(v9);
  v22 = &v21[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension];
  *v22 = 0;
  *(v22 + 1) = 0;
  v65 = OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime;
  *&v21[OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime] = 0;
  v23 = &v21[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId];
  *v23 = 0;
  *(v23 + 1) = 0;
  v66 = OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics;
  *&v21[OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics] = 0;
  *&v21[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService] = 0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v76 = a9;
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  outlined init with copy of UUID?(a3, v20);
  v25 = a2;
  v62 = a2;
  v26 = v25;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v63 = v28;
  v29 = os_log_type_enabled(v27, v28);
  v30 = MEMORY[0x1E69E7CA0];
  v74 = a1;
  v69 = v26;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v59[1] = v13;
    v32 = v31;
    v60 = swift_slowAlloc();
    v78 = v60;
    *v32 = 136315650;
    v33 = MEMORY[0x1E12A16D0](a1, v30 + 8);
    v61 = a3;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v78);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v77 = v62;
    v36 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSXPCListenerEndpointCSgMd, &_sSo21NSXPCListenerEndpointCSgMR);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v78);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    outlined init with copy of UUID?(v20, v64);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    outlined destroy of UUID?(v20);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v78);
    a3 = v61;

    *(v32 + 24) = v43;
    _os_log_impl(&dword_1DC659000, v27, v63, "FlowExtensionContext inputItems: %s, listenerEndpoint: %s, contextUUID: %s", v32, 0x20u);
    v44 = v60;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  else
  {

    outlined destroy of UUID?(v20);
  }

  v45 = *v22;
  v46 = v67;
  *v22 = v72;
  *(v22 + 1) = v46;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v47 = *&v21[v65];
  *&v21[v65] = v73;

  v48 = *(v23 + 1);
  v49 = v75;
  *v23 = v68;
  *(v23 + 1) = v49;

  v50 = *&v21[v66];
  *&v21[v66] = v76;

  v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v52 = a3;
  v53 = v70;
  outlined init with copy of UUID?(a3, v70);
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  isa = 0;
  if ((*(v55 + 48))(v53, 1, v54) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v55 + 8))(v53, v54);
  }

  v79.receiver = v21;
  v79.super_class = v71;
  v57 = v69;
  v58 = objc_msgSendSuper2(&v79, sel_initWithInputItems_listenerEndpoint_contextUUID_, v51.super.isa, v69, isa);

  if (v58)
  {
    outlined destroy of UUID?(v52);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}