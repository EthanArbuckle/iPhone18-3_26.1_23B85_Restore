uint64_t type metadata accessor for CamBridgeState()
{
  result = type metadata singleton initialization cache for CamBridgeState;
  if (!type metadata singleton initialization cache for CamBridgeState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CamBridgeState.__deallocating_deinit()
{
  v1 = v0[2];

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void CamBridgeImpl.camBridgeState.didset()
{
  v1 = v0;
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
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v10 = *(v1 + 240);
    type metadata accessor for CamBridgeState();

    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC659000, oslog, v3, "CamBridge: camBridgeState set to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationService.markBusy(doing:)()
{
  v1 = v0;
  v2 = *(v0 + 128);
  v3 = v2[4];
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v2);
  OS_dispatch_semaphore.signal()();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v4 = SiriEnvironment.currentProcess.getter();

  v5 = dispatch thunk of CurrentProcess.idleTracker.getter();

  if (v5)
  {
    v6 = dispatch thunk of IdleTracker.track(name:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 136);
  *(v1 + 136) = v6;
}

uint64_t ConcurrentTaskPool.add(work:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ConcurrentTaskPool.add(work:), v10);
  (*(*v2 + 120))();
}

uint64_t sub_1DC6CDC24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id static SiriKitExecutorRunUtils.getInputAndRRData(from:requestContextData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v65 - v11;
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMd, &_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v65 - v21;
  v23 = type metadata accessor for ExecuteOnRemotePayload();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((SAIntentGroupRunSiriKitExecutor.hasExecuteOnRemotePayload.getter() & 1) == 0)
  {
LABEL_4:
    result = [a1 parse];
    if (result)
    {
      v29 = result;
      v30 = *(a2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
      v31 = type metadata accessor for PeerInfoProvider();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      v70[3] = v31;
      v70[4] = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, type metadata accessor for PeerInfoProvider);
      v70[0] = v32;
      v33 = *(a2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
      v34 = type metadata accessor for EndpointInfoProvider();
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      v69[3] = v34;
      v69[4] = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type EndpointInfoProvider and conformance EndpointInfoProvider, type metadata accessor for EndpointInfoProvider);
      v69[0] = v35;
      v36 = v33;
      v37 = v30;
      v38 = [a1 confirmationState];
      if (!v38)
      {
        v40 = type metadata accessor for SiriKitConfirmationState();
        (*(*(v40 - 8) + 56))(v8, 1, 1, v40);
LABEL_9:
        v41 = [a1 parameterMetadata];
        if (v41)
        {
          v42 = v41;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitParameterMetadata, 0x1E69C78A8);
          v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v43 = 0;
        }

        v44 = [a1 appSelectionState];
        static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)(v29, v70, v69, v8, v43, v44, v12);

        outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        if ((*(v14 + 48))(v12, 1, v13) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          __swift_project_value_buffer(v45, static Logger.executor);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_1DC659000, v46, v47, "Failed to make parse from RunSiriKitExecutor command", v48, 2u);
            MEMORY[0x1E12A2F50](v48, -1, -1);
          }

          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
          return (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
        }

        else
        {
          v50 = v66;
          (*(v14 + 32))(v66, v12, v13);
          specialized static SiriKitExecutorRunUtils.makeAlternatives(from:)(a1);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
          v52 = *(v51 + 48);
          (*(v14 + 16))(v67, v50, v13);
          v53 = v68;
          Input.init(parse:alternatives:)();
          (*(v14 + 8))(v50, v13);
          *(v53 + v52) = xmmword_1DCA69F00;
          return (*(*(v51 - 8) + 56))(v53, 0, 1, v51);
        }
      }

      result = [a1 confirmationState];
      if (result)
      {
        v39 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        SiriKitConfirmationState.init(rawValue:)();
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  SAIntentGroupRunSiriKitExecutor.executeOnRemotePayload()();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMd, &_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMR);
    goto LABEL_4;
  }

  (*(v24 + 32))(v27, v22, v23);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.executor);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70[0] = v58;
    *v57 = 136315138;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001DCA890D0, v70);
    _os_log_impl(&dword_1DC659000, v55, v56, "%s: Found ExecuteOnRemote payload from remote device in RunSiriKitExecutor command, using that as Input", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1E12A2F50](v58, -1, -1);
    MEMORY[0x1E12A2F50](v57, -1, -1);
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
  v60 = v68;
  v61 = (v68 + *(v59 + 48));
  ExecuteOnRemotePayload.input.getter();
  v62 = ExecuteOnRemotePayload.rrData.getter();
  v64 = v63;
  (*(v24 + 8))(v27, v23);
  *v61 = v62;
  v61[1] = v64;
  return (*(*(v59 - 8) + 56))(v60, 0, 1, v59);
}

uint64_t partial apply for closure #1 in ConcurrentTaskPool.add(work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConcurrentTaskPool.add(work:)(a1, v4, v5, v7);
}

uint64_t closure #1 in ConcurrentTaskPool.add(work:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v8();
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(v0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  *(v0 + 24) = *(*(v0 + 16) + 192);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, 0);
}

{
  v1 = *(v0 + 24);
  TaskService.onNewTurn()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)@<X0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t, char *, uint64_t)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, char *a7@<X8>)
{
  v211 = a6;
  v212 = a4;
  v215 = a5;
  v219 = a2;
  v220 = a3;
  v221 = a7;
  v200 = type metadata accessor for Parse.PegasusResult();
  v199 = *(v200 - 8);
  v8 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v192[1] = v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v195 = v192 - v15;
  v197 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v196 = *(v197 - 8);
  v16 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v193 = v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v194 = v192 - v19;
  v204 = type metadata accessor for String.Encoding();
  v203 = *(v204 - 8);
  v20 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v202 = v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v206 = v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v218 = v192 - v26;
  v27 = type metadata accessor for SiriKitConfirmationState();
  v209 = *(v27 - 8);
  v210 = v27;
  v28 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v201 = v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v208 = v192 - v31;
  v32 = type metadata accessor for AppResolutionStateProvider();
  v213 = *(v32 - 8);
  v214 = v32;
  v33 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v207 = v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v217 = v192 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v192 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v192 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v192 - v45;
  v47 = type metadata accessor for NLIntent();
  v222 = *(v47 - 8);
  v48 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v205 = v192 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v216 = v192 - v51;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = v192 - v54;
  v56 = a1;
  v57 = [a1 type];
  v58 = MEMORY[0x1E69C8000];
  if (!v57)
  {
    goto LABEL_96;
  }

  v59 = v57;
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = *v58;
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v62)
  {
LABEL_97:

    v183 = *MEMORY[0x1E69C7FF8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v184 = *MEMORY[0x1E69C7FF0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v185 = *MEMORY[0x1E69C7FE0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v186 = *MEMORY[0x1E69C8008];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v187 = *MEMORY[0x1E69C7FE8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v56;
    goto LABEL_98;
  }

  if (v64 == v60 && v62 == v65)
  {

LABEL_7:

    static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)(v56, v46);
    v66 = v222;
    if ((*(v222 + 48))(v46, 1, v47) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Logger.executor);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1DC659000, v68, v69, "Failed to make NLv3Parse, returning nil", v70, 2u);
        MEMORY[0x1E12A2F50](v70, -1, -1);
      }

LABEL_13:
      v71 = type metadata accessor for Parse();
      return (*(*(v71 - 8) + 56))(v221, 1, 1, v71);
    }

    v73 = *(v66 + 32);
    v73(v55, v46, v47);
    v74 = v221;
    v73(v221, v55, v47);
    v75 = MEMORY[0x1E69D0120];
    goto LABEL_15;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    goto LABEL_7;
  }

  v79 = *MEMORY[0x1E69C7FF8];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v60 && v62 == v80)
  {

    v81 = v56;
LABEL_21:
    isa = &selRef_setMitigationSource_;
    v84 = [v81 siriKitIntent];
    v85 = v218;
    if (v84)
    {
      v40 = v84;
      v60 = [v84 typeName];

      if (!v60)
      {
LABEL_103:
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000020, 0x80000001DCA89300, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 81);
        __break(1u);
LABEL_104:
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000024, 0x80000001DCA89330, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 85);
        __break(1u);
        goto LABEL_105;
      }

      v86 = [v81 siriKitIntent];
      if (v86)
      {
        v40 = v86;
        isa = [v86 data];

        if (isa)
        {
          v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v87;

          isa = Data._bridgeToObjectiveC()().super.isa;
          v88 = INIntentCreate();

          if (v88)
          {
            specialized static SiriKitExecutorRunUtils.addIntentMetadata(intent:peerInfo:endpointInfo:)(v88, v219, v220);
            static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)(v81, v43);
            v89 = v222;
            if ((*(v222 + 48))(v43, 1, v47) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v90 = type metadata accessor for Logger();
              __swift_project_value_buffer(v90, static Logger.executor);
              v91 = Logger.logObject.getter();
              v92 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v91, v92))
              {
                v93 = swift_slowAlloc();
                *v93 = 0;
                _os_log_impl(&dword_1DC659000, v91, v92, "Failed to make NLv3Parse, returning nil", v93, 2u);
                MEMORY[0x1E12A2F50](v93, -1, -1);
              }

              outlined consume of Data._Representation(v56, v40);

              goto LABEL_13;
            }

            v94 = *(v89 + 32);
            v222 = v89 + 32;
            v220 = v94;
            v94(v216, v43, v47);
            v95 = v211;
            AppResolutionStateProvider.init(appSelectionState:)();
            outlined init with copy of ReferenceResolutionClientProtocol?(v212, v85, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
            v97 = v209;
            v96 = v210;
            v98 = *(v209 + 48);
            if (v98(v85, 1, v210) == 1)
            {
              (*(v97 + 104))(v208, *MEMORY[0x1E69CFCE8], v96);
              v99 = v98(v85, 1, v96) == 1;
              v101 = v214;
              v100 = v215;
              v102 = v213;
              if (!v99)
              {
                v103 = v215;
                outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
                v100 = v103;
              }
            }

            else
            {
              (*(v97 + 32))(v208, v85, v96);
              v101 = v214;
              v100 = v215;
              v102 = v213;
            }

            if (v100)
            {
              v107 = v100;
            }

            else
            {
              v107 = MEMORY[0x1E69E7CC0];
            }

            specialized static SiriKitExecutorRunUtils.makeSiriKitParameterMetadata(aceParameterMetadata:)(v107);

            *(&v225 + 1) = v101;
            v226 = MEMORY[0x1E69CE220];
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v224);
            v109 = v217;
            (*(v102 + 16))(boxed_opaque_existential_0, v217, v101);
            v110 = type metadata accessor for Parse.ServerConversion();
            v111 = *(v110 + 48);
            v112 = *(v110 + 52);
            swift_allocObject();
            v113 = Parse.ServerConversion.init(siriKitIntent:confirmationState:parameterMetadata:appResolutionStateProviding:)();
            outlined consume of Data._Representation(v56, v40);
            (*(v102 + 8))(v109, v101);
            v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48);
            v115 = v221;
            v220(v221, v216, v47);
            *&v115[v114] = v113;
            goto LABEL_67;
          }

          goto LABEL_104;
        }

        goto LABEL_102;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_94;
  }

  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v81 = v56;
  if (v82)
  {

    goto LABEL_21;
  }

  v104 = *MEMORY[0x1E69C7FF0];
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  isa = v106;
  if (v105 == v60 && v62 == v106)
  {

LABEL_44:

    v117 = [v56 jsonIntent];
    if (!v117)
    {
LABEL_106:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000033, 0x80000001DCA89290, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 104);
      __break(1u);
LABEL_107:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000002FLL, 0x80000001DCA892D0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 109);
      __break(1u);
      goto LABEL_108;
    }

    v118 = v117;
    isa = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v119 = [v56 jsonIntentTypeName];
    if (v119)
    {
      v120 = v119;
      v121 = v202;
      static String.Encoding.utf8.getter();
      v58 = String.data(using:allowLossyConversion:)();
      isa = v122;
      (*(v203 + 8))(v121, v204);
      if (isa >> 60 == 15)
      {
        v123 = 0;
      }

      else
      {
        outlined copy of Data._Representation(v58, isa);
        v123 = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data?(v58, isa);
      }

      v124 = v47;
      v56 = INIntentCreate();

      if (v56)
      {

        specialized static SiriKitExecutorRunUtils.addIntentMetadata(intent:peerInfo:endpointInfo:)(v56, v219, v220);
        static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)(v81, v40);
        v125 = v222;
        v126 = (*(v222 + 48))(v40, 1, v47);
        v127 = v206;
        if (v126 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v128 = type metadata accessor for Logger();
          __swift_project_value_buffer(v128, static Logger.executor);
          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            *v131 = 0;
            _os_log_impl(&dword_1DC659000, v129, v130, "Failed to make NLv3Parse, returning nil", v131, 2u);
            MEMORY[0x1E12A2F50](v131, -1, -1);
          }

          outlined consume of Data?(v58, isa);

          goto LABEL_13;
        }

        v132 = *(v125 + 32);
        v222 = v125 + 32;
        v220 = v132;
        v132(v205, v40, v47);
        v133 = v211;
        AppResolutionStateProvider.init(appSelectionState:)();
        outlined init with copy of ReferenceResolutionClientProtocol?(v212, v127, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
        v135 = v209;
        v134 = v210;
        v136 = *(v209 + 48);
        if (v136(v127, 1, v210) == 1)
        {
          (*(v135 + 104))(v201, *MEMORY[0x1E69CFCE8], v134);
          v99 = v136(v127, 1, v134) == 1;
          v138 = v214;
          v137 = v215;
          v139 = v213;
          if (!v99)
          {
            v140 = v215;
            outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
            v137 = v140;
          }
        }

        else
        {
          (*(v135 + 32))(v201, v127, v134);
          v138 = v214;
          v137 = v215;
          v139 = v213;
        }

        if (v137)
        {
          v143 = v137;
        }

        else
        {
          v143 = MEMORY[0x1E69E7CC0];
        }

        specialized static SiriKitExecutorRunUtils.makeSiriKitParameterMetadata(aceParameterMetadata:)(v143);

        *(&v225 + 1) = v138;
        v226 = MEMORY[0x1E69CE220];
        v144 = __swift_allocate_boxed_opaque_existential_0(&v224);
        v145 = v207;
        (*(v139 + 16))(v144, v207, v138);
        v146 = type metadata accessor for Parse.ServerConversion();
        v147 = *(v146 + 48);
        v148 = *(v146 + 52);
        swift_allocObject();
        v149 = Parse.ServerConversion.init(siriKitIntent:confirmationState:parameterMetadata:appResolutionStateProviding:)();
        outlined consume of Data?(v58, isa);
        (*(v139 + 8))(v145, v138);
        v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48);
        v115 = v221;
        v220(v221, v205, v124);
        *&v115[v150] = v149;
LABEL_67:
        v151 = *MEMORY[0x1E69D0160];
        v152 = type metadata accessor for Parse();
        v153 = *(v152 - 8);
        (*(v153 + 104))(v115, v151, v152);
        return (*(v153 + 56))(v115, 0, 1, v152);
      }

      goto LABEL_107;
    }

LABEL_105:

    goto LABEL_106;
  }

  v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v116)
  {
    goto LABEL_44;
  }

  v141 = *MEMORY[0x1E69C7FE0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v60 && v62 == v142)
  {
  }

  else
  {
    isa = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((isa & 1) == 0)
    {
      v161 = *MEMORY[0x1E69C8008];
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v60 && v62 == v162)
      {
      }

      else
      {
        isa = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((isa & 1) == 0)
        {
          v178 = *MEMORY[0x1E69C7FE8];
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v60 && v62 == v179)
          {
          }

          else
          {
            v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v180 & 1) == 0)
            {
LABEL_98:
              *&v224 = 0;
              *(&v224 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(22);

              *&v224 = 0xD000000000000014;
              *(&v224 + 1) = 0x80000001DCA89150;
              v188 = [v81 type];
              if (v188)
              {
                v189 = v188;
                isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v191 = v190;
              }

              else
              {
                v191 = 0xE500000000000000;
                isa = 0x3E4C494E3CLL;
              }

              MEMORY[0x1E12A1580](isa, v191);

              v60 = *(&v224 + 1);
              v40 = v224;

              specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v40, v60, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 154);
              __break(1u);
LABEL_102:

              goto LABEL_103;
            }
          }

          v181 = *MEMORY[0x1E69D0178];
          v167 = type metadata accessor for Parse();
          v222 = *(v167 - 8);
          v165 = v221;
          (*(v222 + 104))(v221, v181, v167);
          goto LABEL_80;
        }
      }

      v169 = [v56 pegasusResults];
      if (v169)
      {
        v170 = v169;
        v171 = [v169 data];

        v58 = v197;
        v56 = v195;
        if (v171)
        {
          v172 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v174 = v173;

          v226 = 0;
          v224 = 0u;
          v225 = 0u;
          outlined copy of Data._Representation(v172, v174);
          BinaryDecodingOptions.init()();
          _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x1E69BCC00]);
          Message.init(serializedData:extensions:partial:options:)();
          v175 = v196;
          (*(v196 + 56))(v56, 0, 1, v58);
          v176 = v194;
          (*(v175 + 32))(v194, v56, v58);
          (*(v175 + 16))(v193, v176, v58);
          v177 = v198;
          Parse.PegasusResult.init(pegasusResponse:)();
          outlined consume of Data._Representation(v172, v174);
          (*(v175 + 8))(v176, v58);
          v74 = v221;
          (*(v199 + 32))(v221, v177, v200);
          v75 = MEMORY[0x1E69D0130];
LABEL_15:
          v76 = *v75;
          v77 = type metadata accessor for Parse();
          v78 = *(v77 - 8);
          (*(v78 + 104))(v74, v76, v77);
          return (*(v78 + 56))(v74, 0, 1, v77);
        }

        goto LABEL_110;
      }

      goto LABEL_95;
    }
  }

  v154 = [v56 directInvocation];
  if (!v154)
  {
LABEL_109:
    specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000004ELL, 0x80000001DCA89240, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 126);
    __break(1u);
    outlined consume of Data._Representation(v224, *(&v224 + 1));
    __break(1u);
LABEL_110:
    specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000023, 0x80000001DCA891E0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 141);
    __break(1u);

    (*(v196 + 56))(v56, 1, 1, v58);
    outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMR);
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000002BLL, 0x80000001DCA89210, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 145);
    __break(1u);
    return result;
  }

  v40 = v154;
  v58 = &selRef_setMitigationSource_;
  v155 = [v154 invocationIdentifier];
  if (!v155)
  {
LABEL_108:

    goto LABEL_109;
  }

  v156 = [v40 data];
  if (v156)
  {
    v157 = v156;
    v158 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v160 = v159;

    if (v160 >> 60 != 15)
    {
      *&v224 = v158;
      *(&v224 + 1) = v160;
      outlined copy of Data._Representation(v158, v160);
      closure #1 in static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)(&v224, &v223);
      outlined consume of Data?(v158, v160);
      outlined consume of Data._Representation(v224, *(&v224 + 1));
    }
  }

  v163 = [v40 invocationIdentifier];
  if (!v163)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v182 = *v58;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_97;
  }

  v164 = v163;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v165 = v221;
  Parse.DirectInvocation.init(identifier:userData:)();

  v166 = *MEMORY[0x1E69D0158];
  v167 = type metadata accessor for Parse();
  v222 = *(v167 - 8);
  (*(v222 + 104))(v165, v166, v167);
LABEL_80:
  v168 = *(v222 + 56);

  return v168(v165, 0, 1, v167);
}

void closure #1 in static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22[0] = 0;
  v7 = [v5 propertyListWithData:isa options:0 format:0 error:v22];

  if (v7)
  {
    v8 = v22[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = v22[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DC659000, v13, v14, "Could not decode directInvocation data: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {
    }
  }

  *a2 = 0;
LABEL_10:
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t EndpointInfoProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized static SiriKitExecutorRunUtils.makeAlternatives(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v60 - v4;
  v6 = type metadata accessor for NLIntent();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Parse();
  v11 = *(v72 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v71 = &v60 - v16;
  v17 = &selRef_setMitigationSource_;
  v18 = [a1 parse];
  v19 = MEMORY[0x1E69C8000];
  if (!v18 || (v20 = v18, v21 = [v18 type], v20, !v21))
  {
    v28 = *v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  v69 = v11;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = *v19;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v24)
  {
LABEL_8:

    v29 = *MEMORY[0x1E69C7FF0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *MEMORY[0x1E69C7FF8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_9:

    return;
  }

  if (v26 == v22 && v24 == v27)
  {
    goto LABEL_26;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:

LABEL_13:
  v32 = [a1 v17[348]];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 nlv3ParseWithAlternatives];

    if (v34)
    {
      v22 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage, 0x1E69C7878);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = (v24 >> 62);
      if (v24 >> 62)
      {
        while (1)
        {
          a1 = __CocoaSet.count.getter();
          if (!a1)
          {
            break;
          }

LABEL_17:
          if (a1 < 1)
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            return;
          }

          if (v17)
          {
            if (__CocoaSet.count.getter() < 1)
            {
              goto LABEL_61;
            }

            v35 = __CocoaSet.count.getter();
          }

          else
          {
            v35 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v35)
            {
              __break(1u);
LABEL_21:
              v36 = *MEMORY[0x1E69C7FF0];
              if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v22 && v24 == v37)
              {
                goto LABEL_26;
              }

              v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v38)
              {
                goto LABEL_12;
              }

              v39 = *MEMORY[0x1E69C7FF8];
              if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v22 && v24 == v40)
              {
LABEL_26:

                goto LABEL_12;
              }

              v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v59 & 1) == 0)
              {
                return;
              }

              goto LABEL_13;
            }
          }

          if (v35 < a1)
          {
            goto LABEL_60;
          }

          if ((v24 & 0xC000000000000001) != 0)
          {

            if (a1 != 1)
            {
              v41 = 1;
              do
              {
                v42 = v41 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v41);
                v41 = v42;
              }

              while (a1 != v42);
            }
          }

          else
          {
          }

          if (v17)
          {

            v43 = _CocoaArrayWrapper.subscript.getter();
            v44 = v45;
            v22 = v46;
            a1 = v47 >> 1;
          }

          else
          {
            v43 = v24 & 0xFFFFFFFFFFFFFF8;
            v44 = (v24 & 0xFFFFFFFFFFFFFF8) + 32;
            v22 = 1;
          }

          v60 = v43;
          swift_unknownObjectRetain();

          if (a1 == v22)
          {
LABEL_40:
            swift_unknownObjectRelease_n();
            return;
          }

          v24 = 0;
          v67 = (v7 + 56);
          v68 = v6;
          v64 = (v7 + 32);
          v65 = v10;
          v62 = *MEMORY[0x1E69D0120];
          v61 = (v69 + 104);
          v66 = (v69 + 32);
          v10 = (a1 - v22);
          if (a1 <= v22)
          {
            v48 = v22;
          }

          else
          {
            v48 = a1;
          }

          v17 = (v48 - v22);
          v49 = MEMORY[0x1E69E7CC0];
          v6 = (v44 + 8 * v22);
          v63 = v5;
          while (v17)
          {
            v22 = *v6;
            v50 = [v22 data];
            if (v50)
            {
              v51 = v50;
              static Data._unconditionallyBridgeFromObjectiveC(_:)();

              NLIntent.init(protobufData:)();
              v52 = v68;
              (*v67)(v5, 0, 1, v68);
              v53 = v65;
              v54 = *v64;
              (*v64)(v65, v5, v52);
              v55 = v70;
              v54(v70, v53, v52);
              v56 = v72;
              (*v61)(v55, v62, v72);
              v57 = *v66;
              (*v66)(v71, v55, v56);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
              }

              v7 = *(v49 + 2);
              v58 = *(v49 + 3);
              v22 = v7 + 1;
              v5 = v63;
              if (v7 >= v58 >> 1)
              {
                v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v7 + 1, 1, v49);
              }

              *(v49 + 2) = v22;
              v57(&v49[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v7], v71, v72);
            }

            else
            {
            }

            v17 = (v17 - 1);
            ++v6;
            if (!--v10)
            {
              goto LABEL_40;
            }
          }

          __break(1u);
        }
      }

      else
      {
        a1 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a1)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_9;
    }
  }
}

uint64_t specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 168) = a3;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = type metadata accessor for OSSignpostID();
  *(v7 + 104) = v8;
  v9 = *(v8 - 8);
  *(v7 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

uint64_t specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)()
{
  v1 = *(v0 + 80);
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  v4 = OS_os_log.signpostsEnabled.getter();
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(v0 + 56);
  if (*(v0 + 168))
  {
LABEL_5:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 48);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v8 = *(v0 + 72);
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v2, v3, v10, v7, "", v9, 2u);
  MEMORY[0x1E12A2F50](v9, -1, -1);
LABEL_10:

  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 72), *(v0 + 104));
  v11 = type metadata accessor for OSSignpostIntervalState();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 128) = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  *(v0 + 136) = static MessageBusActor.shared;

  v4 = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  v5 = v14;
  v6 = 0;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  v1 = swift_allocObject();
  *(v0 + 144) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E69D3548] + 4);
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  *v3 = v0;
  v3[1] = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  v5.n128_u64[0] = 0x3FB999999999999ALL;

  return MEMORY[0x1EEE40F70](v0 + 40, &async function pointer to partial apply for closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);

    v5 = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 136);

  return MEMORY[0x1EEE6DFA0](specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 80), *(v0 + 56), *(v0 + 64), *(v0 + 168));

  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 80), *(v0 + 56), *(v0 + 64), *(v0 + 168));

  v3 = *(v0 + 8);
  v4 = *(v0 + 160);

  return v3();
}

uint64_t sub_1DC6D1108()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, v5, v4);
}

uint64_t closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), 0, 0);
}

uint64_t closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[8];
  v16 = *(v0 + 3);
  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v8 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v7, type metadata accessor for MessageBusActor);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v16;

  v10 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSo15AFSpeechPackageCSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v9);
  v0[9] = v10;
  v11 = *(MEMORY[0x1E69E86C0] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  *v12 = v0;
  v12[1] = closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v14 = v0[5];

  return MEMORY[0x1EEE6DA40](v14, v10, v13);
}

{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), 0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2)
{
  v3 = static MessageBusActor.shared;
  *(v2 + 72) = static MessageBusActor.shared;
  v4 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor);
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *(v5 + 16) = *(v2 + 48);
  v6 = *(MEMORY[0x1E69E88D0] + 4);

  v7 = swift_task_alloc();
  *(v2 + 88) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  *v7 = v2;
  v7[1] = closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v9 = *(v2 + 40);

  return MEMORY[0x1EEE6DDE0](v9, v3, v4, 0xD00000000000009DLL, 0x80000001DCA80CA0, partial apply for closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v5, v8);
}

uint64_t closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v5[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v6, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo15AFSpeechPackageCSgs5NeverOGMd, &_sScCySo15AFSpeechPackageCSgs5NeverOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  (*(a3 + 128))(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v12, ObjectType, a3);
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.fetchSpeechInfo(reply:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 616))(a1, a2);
  }

  else
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
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "RunSiriKitExecutorProcessor already released, ignoring fetchSpeechInfo", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    return a1(0);
  }
}

void RunSiriKitExecutorProcessor.fetchSpeechInfo(reply:)(void (*a1)(void))
{
  v3 = [*(v1 + 24) speechInfo];
  a1();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  if (a1)
  {
    AFSpeechInfo.toAFSpeechPackage()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo15AFSpeechPackageCSgs5NeverOGMd, &_sScCySo15AFSpeechPackageCSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo15AFSpeechPackageCSgs5NeverOGMd, &_sScCySo15AFSpeechPackageCSgs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1);
}

uint64_t closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v4, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v4 = *(*v2 + 704);
  v5 = *(*v2 + 488);
  v6 = *v2;
  *(v6 + 712) = v1;

  v7 = (v5 + 8);
  if (v1)
  {
    v8 = *(v6 + 608);
    v9 = *(v6 + 496);
    v10 = *(v6 + 480);
    v11 = *(v6 + 224);
    swift_unknownObjectRelease();
    (*v7)(v9, v10);

    return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v8, 0);
  }

  else
  {
    v12 = *(v6 + 496);
    v13 = *(v6 + 480);
    v14 = *(v6 + 224);
    swift_unknownObjectRelease();
    (*v7)(v12, v13);
    *(v6 + 720) = a1;
    v15 = *(v6 + 192);
    v16 = swift_task_alloc();
    *(v6 + 728) = v16;
    *v16 = v6;
    v16[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v17 = *(v6 + 664);
    v18 = *(v6 + 656);
    v19 = *(v6 + 640);
    v20 = *(v6 + 632);
    v21 = *(v6 + 600);
    v22 = *(v6 + 240);
    v23 = *(v6 + 200);
    v28 = *(v6 + 224);
    v29 = *(v6 + 232);
    v27 = *(v6 + 672);
    v24 = *(v6 + 648);

    return ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v24, v18, v20, v19, v21, v23, v17, v15);
  }
}

{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v13 = *v2;
  v3[92] = a1;
  v3[93] = v1;

  if (v1)
  {
    v5 = v3[82];
    v6 = v3[80];
    v7 = v3[76];

    v8 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v9 = v7;
  }

  else
  {
    v10 = v3[80];
    v11 = v3[76];

    v8 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

id specialized ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a4;
  v96 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v74 - v10;
  v11 = type metadata accessor for InputOrigin();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InteractionType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 aceId];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v24;
    v90 = v23;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v25 = [a1 refId];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v28;
    v88 = v27;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  v75 = a2;
  v29 = [a1 interactionType];
  v91 = v16;
  v92 = v17;
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    static SiriKitExecutorRunUtils.interactionTypeFrom(aceValue:)(v31, v33, v20);
  }

  else
  {
    (*(v17 + 104))(v20, *MEMORY[0x1E69D35A8], v16);
  }

  v34 = [a1 inputOrigin];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    static SiriKitExecutorRunUtils.inputOriginFrom(aceValue:)(v36, v38, v15);
  }

  else
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E69D34D0], v11);
  }

  v39 = v20;
  v86 = [a1 identifiedUserMeCard];
  v40 = [a1 sessionHandOffContinuityID];
  v94 = v11;
  v41 = v15;
  if (v40)
  {
    v42 = v40;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v44;
    v85 = v43;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  v45 = v12;
  v83 = [a1 multiUser];
  v82 = [a1 userSessionState];
  v81 = [a1 requiresConditionalMultiUserGrounding];
  v80 = [a1 eyesFree];
  v79 = [a1 voiceTriggerEnabled];
  v78 = [a1 textToSpeechEnabled];
  v77 = [a1 directAction];
  v46 = [a1 siriKitMetrics];
  if (v46 && (v47 = v46, v48 = [v46 interactionId], v47, v48))
  {
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
  }

  else
  {
    v49 = v75;
    v51 = a3;
  }

  v52 = v93;
  static SiriKitExecutorRunUtils.bargeInContextFrom(command:)(a1, v93);
  v75 = [a1 remoteExecution];
  v53 = type metadata accessor for ProxiedRequestContext(0);
  v54 = objc_allocWithZone(v53);
  v55 = &v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  v56 = v89;
  *v55 = v90;
  v55[1] = v56;
  v57 = &v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  v58 = v87;
  *v57 = v88;
  v57[1] = v58;
  v59 = v92;
  v60 = *(v92 + 16);
  v76 = v39;
  v61 = v39;
  v62 = v91;
  v60(&v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType], v61, v91);
  v63 = v41;
  v64 = v41;
  v65 = v94;
  (*(v45 + 16))(&v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin], v64, v94);
  v66 = v85;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = v86;
  v67 = &v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  v68 = v84;
  *v67 = v66;
  v67[1] = v68;
  v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = v83;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = v82;
  LOBYTE(v68) = v80;
  v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = v81;
  v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = v68;
  LOBYTE(v68) = v78;
  v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = v79;
  v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = v68;
  v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = v77;
  v69 = &v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v69 = v49;
  v69[1] = v51;
  outlined init with copy of ReferenceResolutionClientProtocol?(v52, &v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = v75;
  v70 = &v54[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  v71 = v96;
  *v70 = v95;
  v70[1] = v71;
  v97.receiver = v54;
  v97.super_class = v53;
  v72 = objc_msgSendSuper2(&v97, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  (*(v45 + 8))(v63, v65);
  (*(v59 + 8))(v76, v62);
  return v72;
}

uint64_t static SiriKitExecutorRunUtils.interactionTypeFrom(aceValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;

  InteractionType.init(aceValue:)();
  v10 = type metadata accessor for InteractionType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v9, v10);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DCA66060;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  os_log(_:dso:log:type:_:)();

  return (*(v11 + 104))(a3, *MEMORY[0x1E69D35B0], v10);
}

uint64_t static SiriKitExecutorRunUtils.bargeInContextFrom(command:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 dictionary];
  if (v3 && (v8 = v3, v4 = v3, closure #1 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)(&v8, &v9), v4, v9))
  {
    closure #2 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)(&v9, a2);
  }

  else
  {
    v6 = type metadata accessor for BargeInContext();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

uint64_t closure #1 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  strcpy(&v6, "bargeInState");
  BYTE13(v6) = 0;
  HIWORD(v6) = -5120;
  v4 = [v3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 0;
  }

  return result;
}

Swift::Void __swiftcall ProxiedRequestContext.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v72 - v6;
  v78 = type metadata accessor for DateInterval();
  v7 = *(v78 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BargeInMode();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - v15;
  v79 = type metadata accessor for BargeInContext();
  v17 = *(v79 - 8);
  v18 = *(v17 + 64);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v79);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId + 8))
  {
    v22 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId), v19.n128_f64[0]);
    v23 = MEMORY[0x1E12A1410](0x6449656361, 0xE500000000000000);
    [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId + 8))
  {
    v24 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId), v19);
    v25 = MEMORY[0x1E12A1410](0x6449666572, 0xE500000000000000);
    [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];
  }

  v26 = MEMORY[0x1E129E0D0](v19);
  v27 = MEMORY[0x1E12A1410](v26);

  v28 = MEMORY[0x1E12A1410](0x7463617265746E69, 0xEF657079546E6F69);
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

  v29 = InputOrigin.rawValue.getter();
  v30 = MEMORY[0x1E12A1410](v29);

  v31 = MEMORY[0x1E12A1410](0x69724F7475706E69, 0xEB000000006E6967);
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];

  v32 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard);
  if (v32)
  {
    v33 = v32;
    v34 = MEMORY[0x1E12A1410](0x726143654D656361, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v33 forKey:v34];
  }

  v77 = v7;
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId + 8))
  {
    v35 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId));
    v36 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7B340);
    [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
  }

  v37 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled);
  v38 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B360);
  [(objc_class *)with.super.isa encodeBool:v37 forKey:v38];

  v39 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState);
  if (v39)
  {
    v40 = v39;
    v41 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7B380);
    [(objc_class *)with.super.isa encodeObject:v40 forKey:v41];
  }

  v42 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding);
  v43 = MEMORY[0x1E12A1410](0xD000000000000025, 0x80000001DCA7B3A0);
  [(objc_class *)with.super.isa encodeBool:v42 forKey:v43];

  v44 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree);
  v45 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  [(objc_class *)with.super.isa encodeBool:v44 forKey:v45];

  v46 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled);
  v47 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  [(objc_class *)with.super.isa encodeBool:v46 forKey:v47];

  v48 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled);
  v49 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  [(objc_class *)with.super.isa encodeBool:v48 forKey:v49];

  v50 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction);
  v51 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  [(objc_class *)with.super.isa encodeBool:v50 forKey:v51];

  v52 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId + 8));
  v53 = MEMORY[0x1E12A1410](0x7463617265746E69, 0xED000064496E6F69);
  [(objc_class *)with.super.isa encodeObject:v52 forKey:v53];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext, v16, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v54 = v17;
  v55 = *(v17 + 48);
  v56 = v79;
  if (v55(v16, 1, v79) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  }

  else
  {
    (*(v54 + 32))(v21, v16, v56);
    v57 = v73;
    v58 = v54;
    BargeInContext.mode.getter();
    v59 = BargeInMode.rawValue.getter();
    (*(v74 + 8))(v57, v75);
    v60 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEB0000000065646FLL);
    [(objc_class *)with.super.isa encodeInteger:v59 forKey:v60];

    v61 = v76;
    BargeInContext.approximatePreviousTTSInterval.getter();
    v63 = v77;
    v62 = v78;
    if ((*(v77 + 48))(v61, 1, v78) == 1)
    {
      (*(v58 + 8))(v21, v56);
      outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }

    else
    {
      v64 = v72;
      (*(v63 + 32))(v72, v61, v62);
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v66 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B430);
      [(objc_class *)with.super.isa encodeObject:isa forKey:v66];

      (*(v63 + 8))(v64, v62);
      (*(v58 + 8))(v21, v56);
    }
  }

  v67 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution);
  if (v67)
  {
    v68 = v67;
    v69 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B450);
    [(objc_class *)with.super.isa encodeObject:v68 forKey:v69];
  }

  v70 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId + 8));
  v71 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AB40);
  [(objc_class *)with.super.isa encodeObject:v70 forKey:v71];
}

id ProxiedRequestContext.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v113 - v6;
  v7 = type metadata accessor for BargeInMode();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v113 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v113 - v15;
  v17 = type metadata accessor for InputOrigin();
  v117 = *(v17 - 8);
  v118 = v17;
  v18 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v113 - v22;
  v24 = type metadata accessor for InteractionType();
  v122 = *(v24 - 8);
  v25 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v28 = a1;
  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *v34 = v31;
  v34[1] = v33;
  v120 = v34;
  v35 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  *v40 = v37;
  v40[1] = v39;
  v119 = v40;
  v41 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v41)
  {
LABEL_10:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v44 = v24;
    if (!os_log_type_enabled(v46, v47))
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      goto LABEL_23;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1DC659000, v46, v47, "Unknown interactionType when decoding ProxiedRequestContext, returning nil", v48, 2u);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_22;
  }

  v42 = v41;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  InteractionType.init(rawValue:)();
  v43 = v122;
  v44 = v24;
  if ((*(v122 + 48))(v23, 1, v24) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    goto LABEL_10;
  }

  v52 = *(v43 + 32);
  v52(v27, v23, v24);
  v52(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType], v27, v24);
  v53 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v53)
  {
    goto LABEL_18;
  }

  v54 = v53;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  InputOrigin.init(rawValue:)();
  v55 = v117;
  v56 = v118;
  if ((*(v117 + 48))(v16, 1, v118) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
LABEL_18:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.executor);
    v46 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v58))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v46, v58, "Unknown input origin when decoding ProxiedRequestContext, returning nil", v48, 2u);
      v50 = 0;
      v51 = 0;
      v49 = 1;
LABEL_22:
      MEMORY[0x1E12A2F50](v48, -1, -1);
      goto LABEL_23;
    }

    v50 = 0;
    v51 = 0;
    v49 = 1;
    goto LABEL_23;
  }

  v66 = *(v55 + 32);
  v67 = v116;
  v66(v116, v16, v56);
  v66(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin], v67, v56);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAPerson, 0x1E69C7930);
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = NSCoder.decodeObject<A>(of:forKey:)();
  v68 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v68)
  {
    v69 = v68;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  v73 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *v73 = v70;
  v73[1] = v72;
  v74 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B360);
  v75 = [v28 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = v75;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUserSessionState, 0x1E69C7C08);
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = NSCoder.decodeObject<A>(of:forKey:)();
  v76 = MEMORY[0x1E12A1410](0xD000000000000025, 0x80000001DCA7B3A0);
  v77 = [v28 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = v77;
  v78 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  v79 = [v28 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = v79;
  v80 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  v81 = [v28 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = v81;
  v82 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  v83 = [v28 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = v83;
  v84 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  v85 = [v28 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = v85;
  v86 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v86)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.executor);
    v46 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v98))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v46, v98, "Unknown interactionId when decoding ProxiedRequestContext, returning nil", v48, 2u);
      v51 = 0;
      v49 = 1;
      v50 = 1;
      goto LABEL_22;
    }

    v51 = 0;
    v49 = 1;
    v50 = 1;
LABEL_23:

    v59 = v120[1];

    v60 = v119[1];

    if (v49)
    {
      (*(v122 + 8))(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType], v44);
      if (!v50)
      {
LABEL_25:
        if (!v51)
        {
LABEL_27:
          v62 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
          v63 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
          swift_deallocPartialClassInstance();
          return 0;
        }

LABEL_26:
        v61 = *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId + 8];

        outlined destroy of ReferenceResolutionClientProtocol?(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);

        goto LABEL_27;
      }
    }

    else if (!v50)
    {
      goto LABEL_25;
    }

    (*(v117 + 8))(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin], v118);

    v65 = *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId + 8];

    if (!v51)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v87 = v86;
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v91 = v88;
  v91[1] = v90;
  v92 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEB0000000065646FLL);
  LODWORD(v88) = [v28 containsValueForKey_];

  if (v88)
  {
    v93 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEB0000000065646FLL);
    [v28 decodeIntegerForKey_];

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDateInterval, 0x1E696AB80);
    v94 = NSCoder.decodeObject<A>(of:forKey:)();
    BargeInMode.init(rawValue:)();
    if (v94)
    {
      v95 = v115;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = 0;
    }

    else
    {
      v96 = 1;
      v95 = v115;
    }

    v101 = type metadata accessor for DateInterval();
    (*(*(v101 - 8) + 56))(v95, v96, 1, v101);
    v102 = v114;
    BargeInContext.init(mode:approximatePreviousTTSInterval:)();

    v103 = type metadata accessor for BargeInContext();
    (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v102, &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  }

  else
  {
    v99 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext;
    v100 = type metadata accessor for BargeInContext();
    (*(*(v100 - 8) + 56))(&v2[v99], 1, 1, v100);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitRemoteExecution, 0x1E69C78B8);
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = NSCoder.decodeObject<A>(of:forKey:)();
  v104 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v104)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, static Logger.executor);
    v46 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v112))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v46, v112, "Unknown resultCandidateId when decoding ProxiedRequestContext, returning nil", v48, 2u);
      v49 = 1;
      v50 = 1;
      v51 = 1;
      goto LABEL_22;
    }

    v49 = 1;
    v50 = 1;
    v51 = 1;
    goto LABEL_23;
  }

  v105 = v104;
  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  v109 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  *v109 = v106;
  v109[1] = v108;
  v123.receiver = v2;
  v123.super_class = ObjectType;
  v110 = objc_msgSendSuper2(&v123, sel_init);

  return v110;
}

uint64_t InvocationStateImpl.init(proxiedRequestContext:localRequestContextData:executionRequestId:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v116 = &v95 - v12;
  v122 = type metadata accessor for ResponseMode();
  v13 = *(v122 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v95 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v119 = &v95 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v95 - v24;
  v26 = type metadata accessor for Restrictions();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v29;
  v30 = *(v29 + 16);
  v113 = v31;
  v30();
  v32 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome];
  v117 = a3;
  v118 = a4;
  if (v32)
  {
    v33 = v32;
    AFHomeInfo.asInternalHomeInfo.getter();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = type metadata accessor for HomeInfo();
  v36 = *(*(v35 - 8) + 56);
  v36(v25, v34, 1, v35);
  outlined init with copy of ReferenceResolutionClientProtocol?(&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], v119, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], v120, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v115 = v13;
  v37 = *(v13 + 16);
  v99 = v13 + 16;
  v98 = v37;
  v37(v121, &a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v122);
  v38 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo];
  v109 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId];
  v100 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled];
  v108 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled];
  v107 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported];
  v105 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  v114 = v25;
  v39 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8];
  v106 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient];
  v40 = type metadata accessor for InvocationStateImpl();
  v41 = v40[8];
  v42 = type metadata accessor for AudioSource();
  v43 = *(*(v42 - 8) + 56);
  v97 = v41;
  v43(&a5[v41], 1, 1, v42);
  v44 = v40[9];
  v45 = type metadata accessor for AudioDestination();
  v46 = *(*(v45 - 8) + 56);
  v96 = v44;
  v46(&a5[v44], 1, 1, v45);
  v47 = v40[24];
  v48 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v49 = *(*(v48 - 8) + 56);
  v103 = v47;
  v49(&a5[v47], 1, 1, v48);
  v50 = v40[25];
  v51 = type metadata accessor for BargeInContext();
  v52 = *(*(v51 - 8) + 56);
  v101 = v50;
  v52(&a5[v50], 1, 1, v51);
  v102 = v40[27];
  v36(&a5[v102], 1, 1, v35);
  v53 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId + 8];
  *a5 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *(a5 + 1) = v53;
  v54 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId + 8];
  v110 = v38;
  v104 = v39;
  if (v54)
  {
    *(a5 + 2) = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
    *(a5 + 3) = v54;
  }

  else
  {
    v55 = one-time initialization token for executor;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.executor);
    v57 = v118;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v123 = v61;
      *v60 = 136315138;
      v62 = v117;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v57, &v123);
      _os_log_impl(&dword_1DC659000, v58, v59, "[InvocationState] RSKE has a nil refId? Setting refId to executionRequestId=%s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    else
    {

      v62 = v117;
    }

    *(a5 + 2) = v62;
    *(a5 + 3) = v57;
  }

  v63 = &a5[v40[12]];
  v95 = v40[20];
  v64 = &a5[v40[23]];
  v65 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin;
  v66 = v40[6];
  v67 = type metadata accessor for InputOrigin();
  (*(*(v67 - 8) + 16))(&a5[v66], &a1[v65], v67);
  v68 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType;
  v69 = v40[7];
  v70 = type metadata accessor for InteractionType();
  (*(*(v70 - 8) + 16))(&a5[v69], &a1[v68], v70);

  outlined assign with copy of ReferenceResolutionClientProtocol?(v119, &a5[v97], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined assign with copy of ReferenceResolutionClientProtocol?(v120, &a5[v96], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v98(&a5[v40[10]], v121, v122);
  ProxiedRequestContext.multiUserState.getter(&a5[v40[11]]);
  v71 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId + 8];
  *v63 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *(v63 + 1) = v71;
  a5[v40[13]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree];
  a5[v40[14]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled];
  a5[v40[15]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled];
  a5[v40[16]] = v100;
  a5[v40[17]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction];
  v72 = v40[18];
  type metadata accessor for DeviceEnvironmentHelper();

  MEMORY[0x1E129BAA0](v73);

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v75 = v40[19];
  MEMORY[0x1E129BAA0](v74);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriVoiceGender.getter();

  v76 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution];
  *&a5[v95] = v76;
  v77 = &a5[v40[21]];
  v78 = v118;
  *v77 = v117;
  *(v77 + 1) = v78;
  v79 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId + 8];
  v80 = &a5[v40[22]];
  *v80 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *(v80 + 1) = v79;
  v81 = v76;

  MEMORY[0x1E129BAA0](v82);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v83 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v85 = v84;

  *v64 = v83;
  v64[1] = v85;
  if (v76)
  {
    v86 = [v81 personalDomainAuthenticationMode];
    v87 = v114;
    if (v86)
    {
      v88 = v86;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v89 = v115;
  }

  else
  {
    v87 = v114;
    v89 = v115;
  }

  v90 = v40[29];
  v91 = v116;
  PersonalDomainsAuthenticationMode.init(aceValue:)();

  (*(v89 + 8))(v121, v122);
  outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v119, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v91, &a5[v103], &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined assign with copy of ReferenceResolutionClientProtocol?(&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &a5[v101], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);

  (*(v112 + 32))(&a5[v40[26]], v111, v113);
  result = outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v87, &a5[v102], &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v93 = &a5[v40[28]];
  v94 = v104;
  *v93 = v105;
  *(v93 + 1) = v94;
  *&a5[v90] = v110;
  LOBYTE(v94) = v108;
  *&a5[v40[30]] = v109;
  a5[v40[31]] = v94;
  LOBYTE(v94) = v106;
  a5[v40[32]] = v107;
  a5[v40[33]] = v94;
  return result;
}

uint64_t ProxiedRequestContext.multiUserState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment16UserSessionStateVSgMd, _s19SiriFlowEnvironment16UserSessionStateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled) == 1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution);
    if (v7)
    {
      v8 = [v7 executionDeviceAssistantId];
      if (v8)
      {
        v9 = v8;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard))
    {
      v13 = v1;
      v14 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard);
      v1 = v13;
      v15 = SAPerson.contact.getter();
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for DefaultMeCardProxy();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v18 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding);
    v21[4] = v16;
    v21[5] = lazy protocol witness table accessor for type DefaultMeCardProxy and conformance DefaultMeCardProxy();
    v21[1] = v17;
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState))
    {

      SAUserSessionState.sfeUserSessionState.getter(v6);
    }

    else
    {
      v19 = type metadata accessor for UserSessionState();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    }

    MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)();

    v20 = type metadata accessor for MultiUserContext();
    return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }

  else
  {
    v10 = type metadata accessor for MultiUserContext();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v1 = v0[67];
  v2 = v0[56];
  v3 = v0[30];
  v4 = *(v3 + 112);
  *(v3 + 112) = v0[92];
  v5 = *(v3 + 120);
  *(v3 + 120) = 0x80;

  outlined consume of ConversationService.State(v4, v5);
  Input.parse.getter();
  v6 = swift_task_alloc();
  v0[94] = v6;
  *v6 = v0;
  v6[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v7 = v0[92];
  v8 = v0[56];

  return specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(v7, 12589, 0xE200000000000000, v8);
}

{
  v1 = *v0;
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 448);
  v4 = *(*v0 + 440);
  v5 = *(*v0 + 432);
  v6 = *v0;

  v7 = *(v4 + 8);
  v1[95] = v7;
  v1[96] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  v8 = swift_task_alloc();
  v1[97] = v8;
  *v8 = v6;
  v8[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v9 = v1[92];

  return specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)(v9, 12589, 0xE200000000000000);
}

{
  v1 = *v0;
  v2 = *(*v0 + 776);
  v3 = *(*v0 + 736);
  v4 = *v0;

  v5 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender;
  v1[98] = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender;
  v6 = swift_task_alloc();
  v1[99] = v6;
  *v6 = v4;
  v6[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v7 = v1[67];

  return specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(v7, v3 + v5, 12589, 0xE200000000000000);
}

{
  v2 = *v1;
  v3 = (*v1)[109];
  v4 = *v1;
  (*v1)[110] = v0;

  v5 = v2[108];
  v6 = v2[107];
  v7 = v2[76];
  outlined destroy of ReferenceResolutionClientProtocol?(v2[70], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  if (v0)
  {
    v8 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  }

  else
  {
    v8 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v1 = v0[104];
  v2 = v0[100];
  v3 = v0[92];
  v4 = v0[90];
  v5 = v0[76];
  v6 = v0[67];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[47];
  v40 = v0[41];
  v42 = v0[30];
  v44 = v0[83];
  outlined consume of Data?(v0[84], v0[85]);

  outlined destroy of ConversationService.EagerResult(v9, type metadata accessor for DecisionEngineResponse);
  (*(v7 + 8))(v6, v8);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v40, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v42;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v11);

  v12 = v0[75];
  v13 = v0[74];
  v14 = v0[73];
  v15 = v0[72];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[68];
  v19 = v0[67];
  v22 = v0[66];
  v23 = v0[63];
  v24 = v0[62];
  v25 = v0[59];
  v26 = v0[56];
  v27 = v0[53];
  v28 = v0[52];
  v29 = v0[51];
  v30 = v0[50];
  v31 = v0[47];
  v32 = v0[45];
  v33 = v0[44];
  v34 = v0[41];
  v35 = v0[40];
  v36 = v0[39];
  v37 = v0[38];
  v38 = v0[37];
  v39 = v0[36];
  v41 = v0[35];
  v43 = v0[34];
  v45 = v0[33];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[69], &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v20 = v0[1];

  return v20();
}

{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  v2[103] = v0;

  v5 = v2[101];
  if (v0)
  {
    v6 = v2[82];
    v7 = v2[76];

    v8 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v9 = v7;
  }

  else
  {
    v10 = v2[76];

    v8 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v9 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

{
  v116 = v0;
  v1 = *(v0 + 376);
  v2 = *v1;
  *(v0 + 832) = *v1;
  if (!v2)
  {
    v8 = *(v0 + 656);
    if (*(v1 + *(*(v0 + 368) + 28)) == 1)
    {
      v9 = *(v0 + 616);
      v10 = *(v0 + 656);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1DC659000, v11, v12, "[ConversationService] Decision engine suggested falling back to peer", v13, 2u);
        MEMORY[0x1E12A2F50](v13, -1, -1);
      }

      v14 = swift_task_alloc();
      *(v0 + 888) = v14;
      *v14 = v0;
      v14[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
      v15 = *(v0 + 240);

      return ConversationService.cleanupPeerTriggeredConversations()();
    }

    else
    {
      v34 = *(v0 + 648);
      v109 = *(v0 + 616);
      v35 = *(v0 + 608);
      v37 = *(v0 + 312);
      v36 = *(v0 + 320);
      v39 = *(v0 + 280);
      v38 = *(v0 + 288);
      v40 = *(v0 + 248);
      v41 = *(v0 + 256);

      v42 = type metadata accessor for FlowOutputMessage.InAppResponse();
      (*(*(v42 - 8) + 56))(v36, 1, 1, v42);
      (*(v41 + 104))(v38, *MEMORY[0x1E69D0678], v40);
      v43 = *(v41 + 16);
      v43(v39, v38, v40);
      outlined init with copy of ReferenceResolutionClientProtocol?(v36, v37, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v113 = type metadata accessor for ExecutionOutput();
      v44 = objc_allocWithZone(v113);
      v45 = &v44[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
      *v45 = v34;
      *(v45 + 1) = v8;
      v46 = &v44[OBJC_IVAR___SKRExecutionOutput_fullPrint];
      *v46 = 0;
      *(v46 + 1) = 0;
      v47 = &v44[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
      *v47 = 0;
      *(v47 + 1) = 0;
      v48 = &v44[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
      *v48 = 0;
      *(v48 + 1) = 0;
      v49 = &v44[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
      *v49 = 0;
      *(v49 + 1) = 0;
      v43(&v44[OBJC_IVAR___SKRExecutionOutput_executionSource], v39, v40);
      outlined init with copy of ReferenceResolutionClientProtocol?(v37, &v44[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v115 = v54;
        *v52 = 136315394;
        *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v115);
        *(v52 + 12) = 2112;
        *(v52 + 14) = 0;
        *v53 = 0;
        _os_log_impl(&dword_1DC659000, v50, v51, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v52, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v53, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x1E12A2F50](v54, -1, -1);
        MEMORY[0x1E12A2F50](v52, -1, -1);
      }

      v96 = *(v0 + 736);
      v90 = *(v0 + 800);
      v92 = *(v0 + 720);
      v86 = *(v0 + 672);
      v88 = *(v0 + 680);
      v110 = *(v0 + 664);
      v98 = *(v0 + 520);
      v100 = *(v0 + 512);
      v102 = *(v0 + 536);
      v94 = *(v0 + 376);
      v104 = *(v0 + 328);
      v55 = *(v0 + 312);
      v56 = *(v0 + 280);
      v80 = *(v0 + 288);
      v82 = *(v0 + 320);
      v58 = *(v0 + 248);
      v57 = *(v0 + 256);
      v59 = *(v0 + 232);
      v106 = *(v0 + 240);
      v60 = *(v0 + 224);
      ObjectType = swift_getObjectType();
      *&v44[OBJC_IVAR___SKRExecutionOutput_command] = 0;
      *&v44[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      *(v0 + 144) = v44;
      *(v0 + 152) = v113;
      v61 = objc_msgSendSuper2((v0 + 144), sel_init);
      outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v62 = *(v57 + 8);
      v62(v56, v58);
      v62(v80, v58);
      outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      (*(v59 + 32))(v61, 0xD00000000000001DLL, 0x80000001DCA81800, ObjectType, v59);
      outlined consume of Data?(v86, v88);

      outlined destroy of ConversationService.EagerResult(v94, type metadata accessor for DecisionEngineResponse);
      (*(v98 + 8))(v102, v100);
      v63 = type metadata accessor for TaskPriority();
      (*(*(v63 - 8) + 56))(v104, 1, 1, v63);
      v64 = swift_allocObject();
      v64[2] = 0;
      v64[3] = 0;
      v64[4] = v106;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v104, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v64);

      v65 = *(v0 + 600);
      v66 = *(v0 + 592);
      v67 = *(v0 + 584);
      v68 = *(v0 + 576);
      v69 = *(v0 + 568);
      v70 = *(v0 + 560);
      v71 = *(v0 + 544);
      v72 = *(v0 + 536);
      v75 = *(v0 + 528);
      v76 = *(v0 + 504);
      v77 = *(v0 + 496);
      v78 = *(v0 + 472);
      v79 = *(v0 + 448);
      v81 = *(v0 + 424);
      v83 = *(v0 + 416);
      v85 = *(v0 + 408);
      v87 = *(v0 + 400);
      v89 = *(v0 + 376);
      v91 = *(v0 + 360);
      v93 = *(v0 + 352);
      v95 = *(v0 + 328);
      v97 = *(v0 + 320);
      v99 = *(v0 + 312);
      v101 = *(v0 + 304);
      v103 = *(v0 + 296);
      v105 = *(v0 + 288);
      v107 = *(v0 + 280);
      v111 = *(v0 + 272);
      v114 = *(v0 + 264);
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 552), &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      v73 = *(v0 + 8);

      return v73();
    }
  }

  v3 = *(v0 + 656);
  v4 = *(v0 + 240);

  v5 = *(v4 + 104);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v4 + 104);
    }

    v7 = __CocoaSet.count.getter();

    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else if (!*(v5 + 16))
  {
LABEL_17:
    v21 = *(v0 + 832);
    v22 = *(v0 + 800);
    v23 = *(v0 + 736);
    v24 = *(v0 + 624);
    v25 = *(v0 + 560);
    v26 = *(v0 + 536);
    v27 = *(v0 + 240);
    v112 = *(v0 + 224);
    static ConversationSELFHelper.shared.getter();
    dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

    *(v0 + 856) = static ConversationSELFHelper.shared.getter();
    Input.identifier.getter();
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
    v29 = swift_allocObject();
    *(v0 + 864) = v29;
    *(v29 + 16) = v27;
    *(v29 + 24) = v21;
    *(v29 + 32) = v22;
    *(v29 + 40) = v23;
    *(v29 + 48) = v112;
    v30 = *(MEMORY[0x1E69D0038] + 4);
    v108 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

    swift_unknownObjectRetain();

    v31 = v22;
    v32 = swift_task_alloc();
    *(v0 + 872) = v32;
    *v32 = v0;
    v32[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v33 = *(v0 + 560);

    return v108();
  }

  v17 = *(v0 + 376);
  if (*(v17 + 8))
  {
    goto LABEL_17;
  }

  v18 = *(v0 + 520);
  v19 = *(v0 + 512);
  v20 = *(v0 + 360);
  outlined init with copy of ReferenceResolutionClientProtocol?(v17 + *(*(v0 + 368) + 24), v20, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 360), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    goto LABEL_17;
  }

  v74 = *(v0 + 696);
  (*(v0 + 688))(*(v0 + 528), *(v0 + 360), *(v0 + 512));

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), 0, 0);
}

{
  v40 = v0;
  v1 = *(v0 + 712);
  *(v0 + 176) = v1;
  v2 = *(v0 + 472);
  v3 = *(v0 + 456);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 712);
    if (!v8)
    {
LABEL_7:

      goto LABEL_9;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "bridge.fetchSpeechInfo timed out, current request will have a nil speechPackage", v10, 2u);
    v11 = v10;
LABEL_6:
    MEMORY[0x1E12A2F50](v11, -1, -1);
    goto LABEL_7;
  }

  v12 = *(v0 + 712);
  v13 = *(v0 + 616);
  v14 = v12;
  v6 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v6, v15);
  v9 = *(v0 + 712);
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = v18;
    *v17 = 136446210;
    swift_getErrorValue();
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    DynamicType = swift_getDynamicType();
    v22 = *(v0 + 104);
    *(v0 + 160) = DynamicType;
    *(v0 + 168) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pXpMd, &_ss5Error_pXpMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v39);

    *(v17 + 4) = v25;
    _os_log_impl(&dword_1DC659000, v6, v15, "bridge.fetchSpeechInfo got an unknown error %{public}s, current request will have a nil speechPackage", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    v11 = v17;
    goto LABEL_6;
  }

LABEL_9:
  *(v0 + 720) = 0;
  v26 = *(v0 + 192);
  v27 = swift_task_alloc();
  *(v0 + 728) = v27;
  *v27 = v0;
  v27[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v28 = *(v0 + 672);
  v29 = *(v0 + 664);
  v30 = *(v0 + 656);
  v31 = *(v0 + 648);
  v32 = *(v0 + 640);
  v33 = *(v0 + 632);
  v34 = *(v0 + 600);
  v35 = *(v0 + 232);
  v36 = *(v0 + 240);
  v37 = *(v0 + 200);
  v43 = *(v0 + 224);
  v44 = v35;
  v42 = v28;

  return ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v31, v30, v33, v32, v34, v37, v29, v26);
}

{
  v1 = v0[66];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = (v0[92] + v0[98]);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  type metadata accessor for SiriKitEvent();
  *v2 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v2[1] = v8;
  (*(v3 + 104))(v2, *MEMORY[0x1E69CFBC8], v4);
  v9 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[105] = v9;
  v10 = *(MEMORY[0x1E69CFC60] + 4);
  v11 = swift_task_alloc();
  v0[106] = v11;
  *v11 = v0;
  v11[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);

  return MEMORY[0x1EEE39338](v9, v6, v7);
}

{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 840);
  v3 = *(*v0 + 608);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v3, 0);
}

{
  (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  v3 = *(v0 + 736);
  v4 = *(v0 + 624);
  v5 = *(v0 + 560);
  v6 = *(v0 + 536);
  v7 = *(v0 + 240);
  v16 = *(v0 + 224);
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  *(v0 + 856) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = swift_allocObject();
  *(v0 + 864) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v1;
  *(v9 + 32) = v2;
  *(v9 + 40) = v3;
  *(v9 + 48) = v16;
  v10 = *(MEMORY[0x1E69D0038] + 4);
  v15 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

  swift_unknownObjectRetain();

  v11 = v2;
  v12 = swift_task_alloc();
  *(v0 + 872) = v12;
  *v12 = v0;
  v12[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v13 = *(v0 + 560);

  return v15();
}

{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v2, 0);
}

{
  v1 = v0[100];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[76];
  v7 = v0[65];
  v40 = v0[64];
  v42 = v0[67];
  v8 = v0[47];
  v44 = v0[41];
  v9 = v0[29];
  v46 = v0[30];
  v48 = v0[83];
  v10 = v0[28];

  ObjectType = swift_getObjectType();
  (*(v9 + 72))(ObjectType, v9);
  outlined consume of Data?(v5, v4);

  outlined destroy of ConversationService.EagerResult(v8, type metadata accessor for DecisionEngineResponse);
  (*(v7 + 8))(v42, v40);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v44, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v46;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v44, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v13);

  v14 = v0[75];
  v15 = v0[74];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[70];
  v20 = v0[68];
  v21 = v0[67];
  v24 = v0[66];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[59];
  v28 = v0[56];
  v29 = v0[53];
  v30 = v0[52];
  v31 = v0[51];
  v32 = v0[50];
  v33 = v0[47];
  v34 = v0[45];
  v35 = v0[44];
  v36 = v0[41];
  v37 = v0[40];
  v38 = v0[39];
  v39 = v0[38];
  v41 = v0[37];
  v43 = v0[36];
  v45 = v0[35];
  v47 = v0[34];
  v49 = v0[33];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[69], &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v22 = v0[1];

  return v22();
}

{
  v1 = v0[90];
  v2 = v0[76];
  v3 = v0[65];
  outlined consume of Data?(v0[84], v0[85]);

  v39 = v0[93];
  v4 = v0[83];
  v5 = v0[75];
  v6 = v0[74];
  v14 = v0[73];
  v15 = v0[72];
  v16 = v0[71];
  v17 = v0[70];
  v7 = v0[69];
  v18 = v0[68];
  v19 = v0[66];
  v20 = v0[63];
  v21 = v0[62];
  v22 = v0[59];
  v23 = v0[56];
  v24 = v0[53];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[50];
  v28 = v0[47];
  v29 = v0[45];
  v8 = v0[41];
  v30 = v0[44];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[36];
  v36 = v0[35];
  v37 = v0[34];
  v38 = v0[33];
  v9 = v0[30];
  (*(v3 + 8))(v0[67], v0[64]);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v11);

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[100];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[76];
  v5 = v0[65];
  outlined consume of Data?(v0[84], v0[85]);

  v41 = v0[103];
  v6 = v0[83];
  v7 = v0[75];
  v8 = v0[74];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[70];
  v9 = v0[69];
  v20 = v0[68];
  v21 = v0[66];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[59];
  v25 = v0[56];
  v26 = v0[53];
  v27 = v0[52];
  v28 = v0[51];
  v29 = v0[50];
  v30 = v0[47];
  v31 = v0[45];
  v10 = v0[41];
  v32 = v0[44];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v40 = v0[33];
  v11 = v0[30];
  (*(v5 + 8))(v0[67], v0[64]);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v13);

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[104];
  v2 = v0[100];
  v3 = v0[92];
  v4 = v0[90];
  v5 = v0[76];
  v6 = v0[47];
  outlined consume of Data?(v0[84], v0[85]);

  outlined destroy of ConversationService.EagerResult(v6, type metadata accessor for DecisionEngineResponse);
  v42 = v0[110];
  v7 = v0[83];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v11 = v0[69];
  v20 = v0[70];
  v21 = v0[68];
  v22 = v0[66];
  v23 = v0[63];
  v24 = v0[62];
  v25 = v0[59];
  v26 = v0[56];
  v27 = v0[53];
  v28 = v0[52];
  v29 = v0[51];
  v30 = v0[50];
  v31 = v0[47];
  v32 = v0[45];
  v33 = v0[44];
  v12 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[38];
  v37 = v0[37];
  v38 = v0[36];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[33];
  v13 = v0[30];
  (*(v0[65] + 8))(v0[67], v0[64]);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v15);

  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v16 = v0[1];

  return v16();
}

uint64_t specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for ExecutionLocation();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for Parse();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:), v11, 0);
}

uint64_t specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)()
{
  v62 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 64), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x1E69D0120])
  {
    (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
LABEL_5:
    v9 = MEMORY[0x1E69C8370];
LABEL_6:
    v10 = *v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    goto LABEL_7;
  }

  if (v5 == *MEMORY[0x1E69D0160])
  {
    v6 = *(v0 + 128);
    (*(*(v0 + 104) + 96))(v6, *(v0 + 96));
    v7 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));

    v8 = type metadata accessor for NLIntent();
    (*(*(v8 - 8) + 8))(v6, v8);
    goto LABEL_5;
  }

  if (v5 == *MEMORY[0x1E69D0130])
  {
    v20 = *(v0 + 128);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *MEMORY[0x1E69C8380];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v24;
    (*(v21 + 8))(v20, v22);
  }

  else
  {
    if (v5 == *MEMORY[0x1E69D0138])
    {
      (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
      v9 = MEMORY[0x1E69C8388];
      goto LABEL_6;
    }

    if (v5 == *MEMORY[0x1E69D0168] || v5 == *MEMORY[0x1E69D0170])
    {
      (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
      v9 = MEMORY[0x1E69C8378];
      goto LABEL_6;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 112);
    v27 = *(v0 + 120);
    v28 = *(v0 + 96);
    v29 = *(v0 + 64);
    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);
    v4(v27, v29, v28);
    v4(v26, v29, v28);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = *(v0 + 96);
    v37 = *(v0 + 104);
    if (v33)
    {
      log = v31;
      v56 = *(v0 + 88);
      v57 = *(v0 + 80);
      v38 = *(v0 + 72);
      v58 = v32;
      v39 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = v59;
      *v39 = 136315394;
      v40 = Parse.parseType.getter();
      v41 = v36;
      v55 = v36;
      v42 = v35;
      v44 = v43;
      v45 = *(v37 + 8);
      v45(v34, v41);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v44, &v61);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      Parse.nlLocation.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, 255, MEMORY[0x1E69D35D8]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v57 + 8))(v56, v38);
      v45(v42, v55);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v61);

      *(v39 + 14) = v50;
      _os_log_impl(&dword_1DC659000, log, v58, "[ConversationService] updateRequestHandlingExecutionSystem unknown input system for parse type=%s location=%s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v59, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    else
    {

      v45 = *(v37 + 8);
      v45(v35, v36);
      v45(v34, v36);
    }

    v51 = *(v0 + 128);
    v52 = *(v0 + 96);
    v53 = *MEMORY[0x1E69C8390];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v54;
    v45(v51, v52);
  }

LABEL_7:
  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  (*(**(v0 + 40) + 384))(*(v0 + 48), *(v0 + 56), v11, v13);

  v18 = *(v0 + 8);

  return v18();
}

Swift::Void __swiftcall ConversationService.ActiveTurn.registerExecutionInputSystem(rcId:system:)(Swift::String rcId, Swift::String system)
{
  object = system._object;
  countAndFlagsBits = system._countAndFlagsBits;
  v5 = rcId._object;
  v6 = rcId._countAndFlagsBits;
  v7 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_executionInputSystem;
  swift_beginAccess();

  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, v6, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + v7) = v10;
  swift_endAccess();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMd, &_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x1E12A23D0](*(v8 + 40), v22);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSDySSSbGGMd, &_ss18_DictionaryStorageCySSSDySSSbGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMd, &_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSgSay12SiriOntology13UsoIdentifierVGGMd, &_ss18_DictionaryStorageCys6UInt32VSgSay12SiriOntology13UsoIdentifierVGGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 8 * (v19 | (v9 << 6));
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + v22;
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = *(v23 + v22);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v26)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v25);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v25;
      *(v18 + 4) = v26;
      *(*(v8 + 56) + v17) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_38;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay32SiriReferenceResolutionDataModel11RRCandidateVGGMd, &_ss18_DictionaryStorageCySSSay32SiriReferenceResolutionDataModel11RRCandidateVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMd, &_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMd, &_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay12SiriOntology13UsoIdentifierVGGMd, &_ss18_DictionaryStorageCySSSay12SiriOntology13UsoIdentifierVGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (*(v5 + 56) + 80 * v25);
      if (v43)
      {
        v44 = *v29;
        v30 = v29[1];
        v31 = v29[2];
        v32 = v29[3];
        v48 = v29[4];
        v46 = v31;
        v47 = v32;
        v45 = v30;
      }

      else
      {
        outlined init with copy of FlowPluginAndBundle(v29, &v44);
      }

      v33 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v27;
      v17[1] = v28;
      v18 = (*(v8 + 56) + 80 * v16);
      *v18 = v44;
      v19 = v45;
      v20 = v46;
      v21 = v48;
      v18[3] = v47;
      v18[4] = v21;
      v18[1] = v19;
      v18[2] = v20;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:), v4, 0);
}

uint64_t specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)()
{
  v17 = v0;
  v1 = (*(**(v0 + 40) + 392))(*(v0 + 48), *(v0 + 56));
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v16);
      _os_log_impl(&dword_1DC659000, v6, v7, "Sending ACE command to update request handling indicator with value: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = *(v0 + 40);
    v11 = [objc_allocWithZone(MEMORY[0x1E69C7BB8]) init];
    v12 = MEMORY[0x1E12A1410](v3, v4);

    [v11 setExecutionInputSystem_];

    v13 = *(v10 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker + 32);
    __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker), *(v10 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker + 24));
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  v14 = *(v0 + 8);

  return v14();
}

Swift::String_optional __swiftcall ConversationService.ActiveTurn.getExecutionInputSystem(rcId:)(Swift::String rcId)
{
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  v4 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_executionInputSystem;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v9;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t protocol witness for AceServiceInvokerAsync.submitAndForget(_:setRefId:) in conformance AceServiceInvokerImpl(NSObject *a1, char a2)
{
  v5 = type metadata accessor for RequestSummary.ExecutionSource();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  (*(v6 + 104))(v10, *MEMORY[0x1E69D0678], v5, v8);
  AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(a1, a2, v10);
  return (*(v6 + 8))(v10, v5);
}

void AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(NSObject *a1, char a2, uint64_t a3)
{
  v163 = a3;
  v164 = a1;
  updated = type metadata accessor for ContextUpdateScope();
  v161 = *(updated - 8);
  v162 = updated;
  v6 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v160 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v159 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v142 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v157 = &v142 - v15;
  v16 = type metadata accessor for BinaryDecodingOptions();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v152 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v154 = &v142 - v21;
  v156 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v153 = *(v156 - 8);
  v22 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v151 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v155 = &v142 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v142 - v31;
  v33 = type metadata accessor for RequestSummary.ExecutionSource();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v142 - v39;
  v41 = v3[19];
  os_unfair_lock_lock((v41 + 20));
  v42 = *(v41 + 16);
  os_unfair_lock_unlock((v41 + 20));
  if (v42)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.executor);
    v164 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v164, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DC659000, v164, v44, "Attempting to submitAndForget a command on an invalidated AceServiceInvoker. Ignoring.", v45, 2u);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    v46 = v164;
  }

  else
  {
    if (a2)
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v47 = &outlined read-only object #0 of AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:);
    }

    v164 = AceServiceInvokerImpl.preparedCommand(_:options:)(v164, v47);

    AceServiceInvokerImpl.closeServerRequestIfRequired(givenCommand:)();
    v150 = v3;
    v48 = v3[5];
    v49 = v3[6];
    v148 = v34;
    v50 = *(v34 + 16);
    v50(v40, v163, v33);
    v51 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v51 - 8) + 56))(v32, 1, 1, v51);
    v147 = v40;
    v50(v37, v40, v33);
    v163 = v32;
    outlined init with copy of ReferenceResolutionClientProtocol?(v32, v29, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v145 = type metadata accessor for ExecutionOutput();
    v52 = objc_allocWithZone(v145);
    v53 = &v52[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v53 = v48;
    *(v53 + 1) = v49;
    v54 = &v52[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v54 = 0;
    *(v54 + 1) = 0;
    v55 = &v52[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v55 = 0;
    *(v55 + 1) = 0;
    v56 = &v52[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v56 = 0;
    *(v56 + 1) = 0;
    v57 = &v52[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v57 = 0;
    *(v57 + 1) = 0;
    v146 = v37;
    v149 = v33;
    v50(&v52[OBJC_IVAR___SKRExecutionOutput_executionSource], v37, v33);
    v144 = v52;
    v58 = v164;
    outlined init with copy of ReferenceResolutionClientProtocol?(v29, &v52[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v59 = swift_dynamicCastObjCClass();
    v60 = one-time initialization token for executor;
    v61 = v58;
    v62 = v61;
    v143 = v29;
    if (v59)
    {
      v63 = v61;

      if (v60 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.executor);
      v65 = v63;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();

      v68 = os_log_type_enabled(v66, v67);
      v142 = v62;
      if (v68)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&aBlock = v71;
        *v69 = 136315394;
        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        *(v69 + 12) = 2112;
        *(v69 + 14) = v59;
        *v70 = v59;
        v72 = v65;
        _os_log_impl(&dword_1DC659000, v66, v67, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v69, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v70, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x1E12A2F50](v71, -1, -1);
        MEMORY[0x1E12A2F50](v69, -1, -1);
      }

      v73 = v156;
      v74 = v155;
      v75 = v154;
      v164 = v59;
      v76 = [v59 promptContextProto];
      if (v76)
      {
        v77 = v76;
        v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        v168 = 0;
        aBlock = 0u;
        v167 = 0u;
        outlined copy of Data._Representation(v78, v80);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500]);
        Message.init(serializedData:extensions:partial:options:)();
        v156 = v78;
        v130 = v153;
        (*(v153 + 56))(v75, 0, 1, v73);
        v131 = v74;
        (*(v130 + 32))(v74, v75, v73);
        v132 = v151;
        (*(v130 + 16))(v151, v131, v73);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *&aBlock = v155;
          *v135 = 136315394;
          *(v135 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
          *(v135 + 12) = 2080;
          v136 = v134;
          v137 = Message.textFormatString()();
          v138 = *(v130 + 8);
          v138(v132, v73);
          v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137._countAndFlagsBits, v137._object, &aBlock);

          *(v135 + 14) = v139;
          _os_log_impl(&dword_1DC659000, v133, v136, "ExecutionOutput: %s: NFCU has prompt context %s", v135, 0x16u);
          v140 = v155;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v140, -1, -1);
          MEMORY[0x1E12A2F50](v135, -1, -1);

          outlined consume of Data._Representation(v156, v80);
          v138(v131, v73);
        }

        else
        {

          outlined consume of Data._Representation(v156, v80);
          v141 = *(v130 + 8);
          v141(v132, v73);
          v141(v131, v73);
        }
      }

      else
      {
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&aBlock = v84;
          *v83 = 136315138;
          *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
          _os_log_impl(&dword_1DC659000, v81, v82, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v84);
          MEMORY[0x1E12A2F50](v84, -1, -1);
          MEMORY[0x1E12A2F50](v83, -1, -1);
        }
      }

      v85 = type metadata accessor for Parse.DirectInvocation();
      v86 = v157;
      (*(*(v85 - 8) + 56))(v157, 1, 1, v85);
      v87 = type metadata accessor for PommesContext();
      v88 = v158;
      (*(*(v87 - 8) + 56))(v158, 1, 1, v87);
      v90 = v160;
      v89 = v161;
      v91 = v162;
      (*(v161 + 104))(v160, *MEMORY[0x1E69CFF08], v162);
      v92 = type metadata accessor for ExecutionContextUpdate();
      v93 = objc_allocWithZone(v92);
      v94 = v159;
      outlined init with copy of ReferenceResolutionClientProtocol?(v88, v159, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      v95 = v164;
      specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v94, v164);
      *&v93[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
      *&v93[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v95;
      *&v93[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
      *&v93[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
      *&v93[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v86, &v93[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      *&v93[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v94, &v93[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      (*(v89 + 16))(&v93[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v90, v91);
      v96 = &v93[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
      *v96 = 0;
      v96[1] = 0;
      v93[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
      v165.receiver = v93;
      v165.super_class = v92;
      v97 = off_1E8646000;
      v98 = [&v165 init];
      (*(v89 + 8))(v90, v91);
      outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      v99 = v144;
      *&v144[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v98;
      *&v99[OBJC_IVAR___SKRExecutionOutput_command] = 0;
      v100 = v147;
      v101 = v146;
      v62 = v142;
      v102 = v145;
      v103 = v149;
    }

    else
    {

      if (v60 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      __swift_project_value_buffer(v104, static Logger.executor);
      v105 = v62;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();

      v108 = os_log_type_enabled(v106, v107);
      v103 = v149;
      if (v108)
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&aBlock = v111;
        *v109 = 136315394;
        *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        *(v109 + 12) = 2112;
        *(v109 + 14) = v105;
        v112 = v164;
        *v110 = v164;
        v113 = v105;
        _os_log_impl(&dword_1DC659000, v106, v107, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v109, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v110, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v110, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        MEMORY[0x1E12A2F50](v111, -1, -1);
        MEMORY[0x1E12A2F50](v109, -1, -1);

        v100 = v147;
        v101 = v146;
        v97 = 0x1FB2FA000;
      }

      else
      {

        v100 = v147;
        v101 = v146;
        v97 = 0x1FB2FA000;
        v112 = v164;
      }

      v99 = v144;
      *&v144[OBJC_IVAR___SKRExecutionOutput_command] = v112;
      *&v99[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v114 = v105;
      v102 = v145;
    }

    v170.receiver = v99;
    v170.super_class = v102;
    v115 = objc_msgSendSuper2(&v170, v97[390], v142);
    outlined destroy of ReferenceResolutionClientProtocol?(v143, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v116 = *(v148 + 8);
    v116(v101, v103);

    outlined destroy of ReferenceResolutionClientProtocol?(v163, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v116(v100, v103);
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    __swift_project_value_buffer(v117, static Logger.ace);
    v118 = v62;
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&aBlock = v122;
      *v121 = 136315138;
      v123 = [v118 description];
      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v125;

      v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, &aBlock);

      *(v121 + 4) = v127;
      _os_log_impl(&dword_1DC659000, v119, v120, "Submitting command via submitAndForget: %s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      MEMORY[0x1E12A2F50](v122, -1, -1);
      MEMORY[0x1E12A2F50](v121, -1, -1);
    }

    v128 = v150[2];
    v168 = closure #2 in AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:);
    v169 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v167 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    *(&v167 + 1) = &block_descriptor_319;
    v129 = _Block_copy(&aBlock);
    [v128 submitWithExecutionOutput:v115 completion:v129];
    _Block_release(v129);
  }
}

uint64_t specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SiriKitEventPayload();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:), 0, 0);
}

uint64_t specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v10 = v9;
  v0[9] = v8;
  v0[10] = v9;
  v15 = v6[3];
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v15);
  type metadata accessor for SiriKitEvent();
  *v1 = v8;
  v1[1] = v10;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFBF0], v3);

  v11 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[11] = v11;
  v12 = *(MEMORY[0x1E69CFC60] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:);

  return MEMORY[0x1EEE39338](v11, v15, v16);
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:), 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  type metadata accessor for CoreAnalyticsService();
  static CoreAnalyticsService.instance.getter();
  v4._countAndFlagsBits = v2;
  v4._object = v1;
  CoreAnalyticsService.sendHandleRequestEvent(intentTypeName:)(v4);

  v5 = v0[1];

  return v5();
}

uint64_t specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)()
{
  v0 = type metadata accessor for Parse.DirectInvocation();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x1E69D0120])
  {
    goto LABEL_2;
  }

  if (v10 == *MEMORY[0x1E69D0160])
  {
    (*(v6 + 96))(v9, v5);
    v12 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
    v13 = Parse.ServerConversion.siriKitIntent.getter();
    v14 = [v13 typeName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for NLIntent();
    (*(*(v16 - 8) + 8))(v9, v16);
    return v15;
  }

  else if (v10 == *MEMORY[0x1E69D0158])
  {
    (*(v6 + 96))(v9, v5);
    (*(v1 + 32))(v4, v9, v0);
    v20 = Parse.DirectInvocation.identifier.getter();
    v21 = v17;
    v18 = String.init<A>(_:)();
    v20 = 0x203A746365726944;
    v21 = 0xE800000000000000;
    MEMORY[0x1E12A1580](v18);

    v19 = v20;
    (*(v1 + 8))(v4, v0);
    return v19;
  }

  else
  {
    if (v10 == *MEMORY[0x1E69D0128])
    {
LABEL_2:
      (*(v6 + 8))(v9, v5);
      return 0x6573726170204C4ELL;
    }

    (*(v6 + 8))(v9, v5);
    return 0x206E776F6E6B6E55;
  }
}

id RemoteConversationSpeechData.init(coder:)(NSObject *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v146 = type metadata accessor for ExecutionLocation();
  v4 = *(v146 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v121 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v121 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v148 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v121 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v121 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v145 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v121 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v147 = &v121 - v35;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v36 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v36)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.executor);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DC659000, v53, v54, "Could not decode UserInputRequestXPC: Missing rcId", v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    goto LABEL_14;
  }

  v141 = v36;
  v142 = v20;
  v143 = v17;
  v144 = v10;
  v37 = MEMORY[0x1E12A1410](0x7665446E4F727361, 0xEB00000000656369);
  v38 = a1;
  v39 = [a1 containsValueForKey:v37];

  v150 = v38;
  if ((v39 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.executor);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v150;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1DC659000, v57, v58, "Could not decode UserInputRequestXPC: Missing asrOnDevice", v61, 2u);
      MEMORY[0x1E12A2F50](v61, -1, -1);
    }

    v53 = v60;
    a1 = v141;
LABEL_14:

    swift_getObjectType();
    v62 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v63 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v132 = v4;
  v130 = v1;
  v40 = MEMORY[0x1E12A1410](0x7665446E4F727361, 0xEB00000000656369);
  v126 = [v38 decodeBoolForKey:v40];

  type metadata accessor for UserSpecificInfo();
  v129 = NSCoder.decodeObject<A>(of:forKey:)();
  v128 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPackage, 0x1E698D228);
  v127 = NSCoder.decodeObject<A>(of:forKey:)();
  v136 = NSCoder.decodeObject<A>(of:forKey:)();
  v135 = NSCoder.decodeObject<A>(of:forKey:)();
  v134 = NSCoder.decodeObject<A>(of:forKey:)();
  v41 = type metadata accessor for JSONDecoder();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = JSONDecoder.init()();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  v46 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v47 = v46;
  v131 = v44;
  if (v45)
  {
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type NLRoutingDecisionMessage.GenAIFallbackSuppressReason and conformance NLRoutingDecisionMessage.GenAIFallbackSuppressReason, MEMORY[0x1E69D0390]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v51 = v138;

    outlined consume of Data._Representation(v48, v50);
    (*(*(v47 - 8) + 56))(v33, 0, 1, v47);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v33, v147, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
    v65 = v150;
  }

  else
  {
    (*(*(v46 - 8) + 56))(v147, 1, 1, v46);
    v65 = v150;
    v51 = v138;
  }

  v66 = NSCoder.decodeObject<A>(of:forKey:)();
  v67 = type metadata accessor for FlowRedirectContext();
  v68 = v67;
  if (v66)
  {
    v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type FlowRedirectContext and conformance FlowRedirectContext, MEMORY[0x1E69CFB38]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v69, v71);
    (*(*(v68 - 8) + 56))(v51, 0, 1, v68);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v51, v149, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  }

  else
  {
    (*(*(v67 - 8) + 56))(v149, 1, 1, v67);
  }

  v72 = v146;
  v73 = type metadata accessor for PropertyListDecoder();
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  v76 = PropertyListDecoder.init()();
  v77 = NSCoder.decodeObject<A>(of:forKey:)();
  v78 = v139;
  if (v77)
  {
    v79 = v77;
    v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, MEMORY[0x1E69D35D8]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v80, v82);
    (*(v132 + 32))(v142, v78, v72);
    v65 = v150;
  }

  else
  {
    static ExecutionLocation.unknown.getter();
  }

  v83 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v83)
  {
    v84 = v83;
    v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, MEMORY[0x1E69D35D8]);
    v88 = v76;
    v89 = v137;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v90 = v132;

    outlined consume of Data._Representation(v85, v87);
    (*(v90 + 32))(v143, v89, v72);
    v65 = v150;
    v76 = v88;
  }

  else
  {
    static ExecutionLocation.unknown.getter();
    v90 = v132;
  }

  v91 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA81AC0);
  LODWORD(v139) = [v65 decodeBoolForKey:v91];

  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v93;
  if (!v136)
  {
    v137 = 0;
    v132 = 0;
    if (v135)
    {
      goto LABEL_27;
    }

LABEL_29:
    v124 = 0;
    v123 = 0;
    goto LABEL_30;
  }

  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v132 = v94;
  if (!v135)
  {
    goto LABEL_29;
  }

LABEL_27:
  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v95;
LABEL_30:
  v138 = v76;
  if (v134)
  {
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v96;
  }

  else
  {
    v122 = 0;
    v121 = 0;
  }

  v97 = v145;
  outlined init with copy of ReferenceResolutionClientProtocol?(v147, v145, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v149, v148, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v98 = *(v90 + 16);
  v99 = v146;
  v98(v144, v142, v146);
  v133 = v7;
  v98(v7, v143, v99);
  v100 = ObjectType;
  v101 = objc_allocWithZone(ObjectType);
  v102 = &v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v103 = v125;
  *v102 = v92;
  v102[1] = v103;
  v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = v126;
  v104 = v129;
  *&v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v129;
  v105 = v128;
  *&v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v128;
  v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v139;
  v106 = v127;
  *&v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v127;
  v107 = &v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  v108 = v132;
  *v107 = v137;
  v107[1] = v108;
  v109 = &v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  v110 = v123;
  *v109 = v124;
  v109[1] = v110;
  v111 = &v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  v112 = v121;
  *v111 = v122;
  v111[1] = v112;
  outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v148, &v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v98(&v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v144, v99);
  v98(&v101[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v133, v99);
  v151.receiver = v101;
  v151.super_class = v100;
  v113 = v104;
  v114 = v105;
  v115 = v106;
  v116 = [&v151 init];

  v117 = *(v90 + 8);
  v117(v133, v99);
  v117(v144, v99);
  outlined destroy of ReferenceResolutionClientProtocol?(v148, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v145, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v117(v143, v99);
  v117(v142, v99);
  outlined destroy of ReferenceResolutionClientProtocol?(v149, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v147, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v118 = v130;
  swift_getObjectType();
  v119 = *((*MEMORY[0x1E69E7D40] & *v118) + 0x30);
  v120 = *((*MEMORY[0x1E69E7D40] & *v118) + 0x34);
  swift_deallocPartialClassInstance();
  return v116;
}

uint64_t lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_155;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_195;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = _s14SiriKitRuntime39ConversationFlexibleExecutionSupportXPCCIeyBhy_ACIeghg_TRTA_0;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_135;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_115;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_95;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v17;
  }

  else
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
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    _Block_copy(a2);
    type metadata accessor for RecentDialog();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a2)[2](a2, isa);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

void specialized ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a3, a4);
  _Block_release(a4);
  if (v8)
  {
    isa = Set._bridgeToObjectiveC()().super.isa;
    v11[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ();
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    v11[3] = &block_descriptor_141;
    v10 = _Block_copy(v11);

    [v8 fetchContextsFor:isa includesNearByDevices:a2 & 1 completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }

  else
  {
  }
}

uint64_t closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)()
{
  v56 = v0;
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 152) + 72);
  *(v0 + 264) = SiriKitRuntimeState.taskService.getter();
  v3 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  if (v3)
  {
    v4 = v3;
    TaskService.onExistingXPCTask(_:)(v4);
    TaskService.onNewTurn()();
  }

  v5 = *(v0 + 248);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0xA8))();
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = *(v0 + 152);
  v9 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v8 + v9, v6, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = *(v0 + 232);
    v21 = *(v20 + 40);
    v52 = v21;
    v53 = *(v20 + 56);
    v22 = *(v20 + 80);
    v54 = *(v20 + 72);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.executor);
    outlined init with copy of RemoteConversationService.State(v24, v23, type metadata accessor for RemoteConversationTurnData);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 240);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v50 = v22;
      v31 = swift_slowAlloc();
      v55 = v31;
      *v30 = 136380675;
      v32 = *v29;
      v33 = v29[1];

      outlined destroy of RemoteConversationService.State(v29, type metadata accessor for RemoteConversationTurnData);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v55);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1DC659000, v26, v27, "Multiple StartTurns while awaiting input. New executionRequestId=%{private}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v35 = v31;
      v22 = v50;
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    else
    {

      outlined destroy of RemoteConversationService.State(v29, type metadata accessor for RemoteConversationTurnData);
    }

    v44 = *(v0 + 224);
    v12 = *(v0 + 232);
    v45 = *(v0 + 216);
    v46 = *(v0 + 152);
    RemoteConversationService.makeTurn(turnData:bridge:)(*(v0 + 248), *(v0 + 168), v44);
    *(v44 + 40) = v52;
    *(v44 + 56) = v53;
    *(v44 + 72) = v54;
    *(v44 + 80) = v22;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of RemoteConversationService.State(v44, v8 + v9);
    swift_endAccess();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v0 + 248);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);
    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol((v12 + 40), v0 + 16);
    RemoteConversationService.makeTurn(turnData:bridge:)(v11, v15, v13);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v13 + 40);
    type metadata accessor for RemoteConversationService.FlowAndInputRegistry();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC8];
    *(v18 + 16) = MEMORY[0x1E69E7CC8];
    *(v18 + 24) = v19;
    *(v13 + 80) = v18;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of RemoteConversationService.State(v13, v8 + v9);
    swift_endAccess();
    outlined destroy of RemoteConversationService.State(v12 + v17, type metadata accessor for SiriRequest);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    goto LABEL_18;
  }

  v36 = *(v0 + 224);
  v37 = *(v0 + 152);
  RemoteConversationService.makeTurn(turnData:bridge:)(*(v0 + 248), *(v0 + 168), v36);
  type metadata accessor for RemoteConversationService.FlowAndInputRegistry();
  *(v36 + 40) = 0u;
  *(v36 + 56) = 0u;
  *(v36 + 72) = 0;
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E7CC8];
  *(v38 + 16) = MEMORY[0x1E69E7CC8];
  *(v38 + 24) = v39;
  *(v36 + 80) = v38;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of RemoteConversationService.State(v36, v8 + v9);
  swift_endAccess();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.executor);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DC659000, v41, v42, "Turn Started.", v43, 2u);
    MEMORY[0x1E12A2F50](v43, -1, -1);
  }

LABEL_18:
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.root.getter();
  *(v0 + 272) = SiriEnvironment.callState.getter();

  v47 = *(MEMORY[0x1E69D0088] + 4);
  v51 = (*MEMORY[0x1E69D0088] + MEMORY[0x1E69D0088]);
  v48 = swift_task_alloc();
  *(v0 + 280) = v48;
  *v48 = v0;
  v48[1] = closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:);

  return v51();
}

{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v17 = v0[33];
  v18 = v0[24];
  v5 = v0[22];
  v6 = v0[19];
  type metadata accessor for ConversationSELFHelper();
  v7 = *v1;
  v8 = v1[1];
  static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)();
  v9 = v6[19];
  __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
  dispatch thunk of ReferenceResolutionClientProtocol.inRequest(requestId:)();
  v5(0);

  (*(v3 + 8))(v2, v18);
  outlined destroy of RemoteConversationService.State(v1, type metadata accessor for RemoteConversationTurnData);
  v11 = v0[30];
  v10 = v0[31];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[26];

  v15 = v0[1];

  return v15();
}

{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:), v3, 0);
}

uint64_t RemoteConversationService.makeTurn(turnData:bridge:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v69 = a2;
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v55 - v12;
  v13 = type metadata accessor for InvocationStateImpl();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v22 = type metadata accessor for RemoteConversationTurnData(0);
  v23 = v22;
  v24 = *(a1 + *(v22 + 48));
  if (v24)
  {
    v25 = *(a1 + *(v22 + 32));
    v26 = *a1;
    v27 = a1[1];
    v28 = v24;
    v29 = v25;

    v64 = v29;
    v66 = v27;
    v67 = v26;
    InvocationStateImpl.init(proxiedRequestContext:localRequestContextData:executionRequestId:)(v28, v29, v26, v27, v21);
  }

  else
  {
    v30 = *a1;
    v31 = a1[1];
    v32 = *(a1 + *(v22 + 32));
    v77 = 0;
    v75 = 0u;
    v76 = 0u;

    v33 = v32;
    v66 = v31;
    v67 = v30;
    v64 = v33;
    InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(v30, v31, v33, &v75, v21);
  }

  v34 = *(v3 + 72);
  v35 = a1[3];
  v63 = a1[2];
  v58 = v35;
  v37 = v23[6];
  v36 = v23[7];
  outlined init with copy of RemoteConversationService.State(v21, v18, type metadata accessor for InvocationStateImpl);
  v38 = v23[9];
  v39 = (a1 + v23[13]);
  v41 = *v39;
  v40 = v39[1];
  v60 = v41;
  v62 = v18;
  v59 = v40;
  v61 = *(a1 + v23[11]);
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onNewTurn()();

  v65 = v21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + v37, v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + v36, v73, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v56 = *(v34 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + v38, v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v34 + 56, &v75, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v34 + 96, v74);
  v42 = type metadata accessor for ConversationTurnStateImpl();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v57 = swift_allocObject();
  v45 = v68;
  outlined init with copy of RemoteConversationService.State(v18, v68, type metadata accessor for InvocationStateImpl);
  swift_getObjectType();
  v46 = v58;

  v47 = v64;
  v48 = v66;

  v49 = v60;
  v50 = v59;
  outlined copy of Data?(v60, v59);
  v51 = swift_unknownObjectRetain();
  v52 = specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(v51, v67, v48, v63, v46, v71, v73, v56, v72, v45, &v75, v47, v61, v74, v49, v50, v57);
  outlined consume of Data?(v49, v50);
  swift_unknownObjectRelease();

  ConversationTurnStateImpl.setSiriKitFlowGlobals()();
  *(&v76 + 1) = v42;
  v77 = &protocol witness table for ConversationTurnStateImpl;
  *&v75 = v52;
  swift_beginAccess();

  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v75, v34 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  swift_endAccess();
  v53 = v70;
  v70[3] = v42;
  v53[4] = &protocol witness table for ConversationTurnStateImpl;
  *v53 = v52;
  outlined destroy of RemoteConversationService.State(v65, type metadata accessor for InvocationStateImpl);
  return outlined destroy of RemoteConversationService.State(v62, type metadata accessor for InvocationStateImpl);
}

void DirectFlowPluginLoaderImpl.loadFlowPlugin(path:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v9)
    {
      outlined init with copy of FlowPluginAndBundle(*(v7 + 56) + 80 * v8, &v42);
      swift_endAccess();
      v10 = v45;
      *(a3 + 32) = v44;
      *(a3 + 48) = v10;
      *(a3 + 64) = v46;
      v11 = v43;
      *a3 = v42;
      *(a3 + 16) = v11;
      *(a3 + 80) = 1;
      return;
    }
  }

  swift_endAccess();
  v12 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v13 = MEMORY[0x1E12A1410](a1, a2);
  v14 = [v12 initWithPath_];

  if (!v14)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v42 = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
      _os_log_impl(&dword_1DC659000, v28, v29, "Failed to load bundle at path %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    goto LABEL_26;
  }

  if (![v14 principalClass])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);

    v19 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v33))
    {
      goto LABEL_25;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v42 = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
    _os_log_impl(&dword_1DC659000, v19, v33, "Failed bundle at path %s has no principal class", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1E12A2F50](v35, -1, -1);
    v26 = v34;
    goto LABEL_24;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = ObjCClassMetadata == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_25;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v42 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
    *(v21 + 12) = 2080;
    v40[0] = ObjCClassMetadata;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v42);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_1DC659000, v19, v20, "Principal class for plugin bundle at %s is not a FlowPlugin: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v22, -1, -1);
    v26 = v21;
LABEL_24:
    MEMORY[0x1E12A2F50](v26, -1, -1);
LABEL_25:

LABEL_26:
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v41[3] = ObjCClassMetadata;
  v41[4] = v16;
  __swift_allocate_boxed_opaque_existential_0(v41);
  dispatch thunk of FlowPlugin.init()();
  v36 = [v14 infoDictionary];
  if (v36)
  {
    v37 = v36;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

  outlined init with copy of ReferenceResolutionClientProtocol(v41, &v42);
  *&v46 = type metadata accessor for FlowPluginBundleImpl();
  *(&v46 + 1) = MEMORY[0x1E69CFB90];
  __swift_allocate_boxed_opaque_existential_0(&v44 + 1);

  FlowPluginBundleImpl.init(bundlePath:supportedTopics:)();
  outlined init with copy of FlowPluginAndBundle(&v42, v40);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v40, a1, a2);
  swift_endAccess();

  v38 = v45;
  *(a3 + 32) = v44;
  *(a3 + 48) = v38;
  *(a3 + 64) = v46;
  v39 = v43;
  *a3 = v42;
  *(a3 + 16) = v39;
  *(a3 + 80) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

uint64_t closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)()
{
  v72 = v0;
  v1 = &unk_1EE159000;
  if (*(v0 + 440))
  {
    v2 = *(v0 + 520);
    v4 = *(v0 + 504);
    v3 = *(v0 + 512);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 448), v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v2 + 48))(v4, 1, v3) != 1)
    {
      v20 = *(v0 + 528);
      v21 = *(v0 + 520);
      v22 = *(v0 + 512);
      v24 = *(v0 + 472);
      v23 = *(v0 + 480);
      v67 = *(v0 + 456);
      v68 = *(v0 + 464);
      v64 = *(v0 + 432);
      v65 = *(v0 + 440);
      v25 = *(v0 + 424);
      (*(v21 + 32))(v20, *(v0 + 504), v22);
      type metadata accessor for ConversationSELFHelper();
      static ConversationSELFHelper.shared.getter();
      v26 = swift_task_alloc();
      v26[2] = v25;
      v26[3] = v24;
      v1 = &unk_1EE159000;
      v26[4] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
      dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginLoadTime<A>(rcId:pluginId:hypothesisId:_:)();

      (*(v21 + 8))(v20, v22);
      goto LABEL_13;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 504), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "SharedFlowPluginService: Got loadFlowPlugin call without an rcId or hypothesisId. Likely a plugin signal, not associated with an RC.", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v10 = *(v0 + 472);
  v9 = *(v0 + 480);
  v11 = *(v0 + 424);

  v12 = v11[5];
  v13 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  (*(v13 + 8))(v10, v9, v12, v13);
  v14 = *(v0 + 40);
  if (v14)
  {
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v18 = *(v0 + 64);
    v19 = *(v0 + 80);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMR);
    v16 = 0;
    v15 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *(v0 + 104) = v15;
  *(v0 + 120) = v16;
  *(v0 + 128) = v14;
  *(v0 + 136) = v17;
  *(v0 + 152) = v18;
  *(v0 + 168) = v19;
LABEL_13:
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 104, v0 + 264, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
  if (*(v0 + 288))
  {
    v27 = *(v0 + 464);
    v28 = *(v0 + 424);
    v69 = *(v0 + 456);
    v29 = *(v0 + 264);
    *(v0 + 200) = *(v0 + 280);
    v30 = *(v0 + 312);
    *(v0 + 216) = *(v0 + 296);
    *(v0 + 232) = v30;
    *(v0 + 248) = *(v0 + 328);
    *(v0 + 184) = v29;
    v66 = type metadata accessor for RemoteConversationService(0);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 184, v0 + 344);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 224, v0 + 384);
    v31 = *(v28 + 64);
    v32 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for SnippetManager();
    memset(v70, 0, sizeof(v70));
    v71 = 0;

    v33 = static SnippetManager.sharedInstance.getter();
    v35 = *(v0 + 368);
    v34 = *(v0 + 376);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 344, v35);
    v38 = *(v0 + 408);
    v37 = *(v0 + 416);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 384, v38);
    specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v36, v69, v27, v39, v31, partial apply for closure #2 in closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v32, v33, v70, v66, v35, v38, v34, v37);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 344));

    SharedFlowPluginService.postSelectedFlowPlugin(bundleId:)(v69, v27);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 464);
    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.executor);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v45 = *(v0 + 456);
      v44 = *(v0 + 464);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v70[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v70);
      _os_log_impl(&dword_1DC659000, v42, v43, "SharedFlowPluginService: Found flow for bundleId=%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1E12A2F50](v47, -1, -1);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    v49 = *(v0 + 488);
    v48 = *(v0 + 496);

    v49(v50);

    outlined destroy of FlowPluginAndBundle(v0 + 184);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 264, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
    if (v1[389] != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 464);
    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.executor);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v56 = *(v0 + 456);
      v55 = *(v0 + 464);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v70[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v70);
      _os_log_impl(&dword_1DC659000, v53, v54, "SharedFlowPluginService: No flow found for bundleId=%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1E12A2F50](v58, -1, -1);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    v59 = *(v0 + 496);
    (*(v0 + 488))(0);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 104, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
  v60 = *(v0 + 528);
  v61 = *(v0 + 504);

  v62 = *(v0 + 8);

  return v62();
}

{
  v1 = *(*(v0 + 424) + 72);
  *(v0 + 544) = v1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v1, 0);
}

{
  v1 = v0[68];
  v2 = SharedFlowPluginService.WarmupTracker.warmupTask.getter();
  v0[69] = v2;
  v3 = *(MEMORY[0x1E69E86C0] + 4);
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v4, v2, v5);
}

{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 544);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v3, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), *(v0 + 536), 0);
}

uint64_t sub_1DC6DBA28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t storeEnumTagSinglePayload for SiriRequestContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v30 = a14;
  v31 = a13;
  v16 = *(a12 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a10);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a11 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  (*(v20 + 16))(v24, a1, a11);
  (*(v16 + 16))(v19, a4, a12);
  return specialized RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v24, v32, v33, v19, v34, v35, v36, v37, a9, v28, a11, a12, v31, v30);
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = type metadata singleton initialization cache for AsyncSerialQueue;
  if (!type metadata singleton initialization cache for AsyncSerialQueue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)()
{
  v1 = *(v0 + 16);
  ReactiveUIEventActor.run()();
  v2 = *(v0 + 8);

  return v2();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ReactiveUIEventActor.shared;
  *(v0 + 16) = static ReactiveUIEventActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:), v1, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:), 0, 0);
}

uint64_t closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v12(a1, a4, a5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed RemoteConversationXPC) -> (@error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed RemoteConversationXPC) -> (@error @owned Error)(a1, a2, a3, v9);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed RemoteConversationXPC) -> (@error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v9(a2);
}

uint64_t closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.startTurn(turnData:bridge:), 0, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a1;
  v34 = a2;
  v8 = type metadata accessor for RemoteConversationTurnData(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  v33 = MEMORY[0x1E12A1410](*a3, a3[1], v13);
  v28 = a4;
  ObjectType = swift_getObjectType();
  v32 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v11 + 16))(v15, v30, v10);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(a3, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteConversationTurnData);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v31 + 80) + v18 + 8) & ~*(v31 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v17, v15, v10);
  v21 = v34;
  *(v20 + v18) = v34;
  outlined init with take of RemoteConversationTurnData(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v22 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_175;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v25 = v33;
  [v21 startTurnFromCacheWithExecutionRequestId:v33 bridge:v32 reply:v24];
  _Block_release(v24);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DC6DC43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v27 = *(v2 + 80);
  v3 = (v27 + 16) & ~v27;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for RemoteConversationTurnData(0);
  v26 = *(*(v5 - 1) + 80);
  v24 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();
  v25 = (v4 + v26 + 8) & ~v26;
  v7 = v0 + v25;
  v8 = *(v0 + v25 + 8);

  v9 = *(v0 + v25 + 24);

  v10 = v5[6];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v25 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v5[7];
  v15 = type metadata accessor for SessionConfiguration();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v7 + v14, 1, v15))
  {
    (*(v16 + 8))(v7 + v14, v15);
  }

  v17 = v5[9];
  if (!v13(v7 + v17, 1, v11))
  {
    (*(v12 + 8))(v7 + v17, v11);
  }

  v18 = *(v7 + v5[10]);

  v19 = (v7 + v5[13]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v19, v20);
  }

  v21 = (v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v21);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v21 + 16, v27 | v26 | 7);
}

uint64_t partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

uint64_t partial apply for closure #1 in ReactiveUIEventActor.run()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ReactiveUIEventActor.run()(a1, v4, v5, v6);
}

uint64_t closure #1 in ReactiveUIEventActor.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy16EncoreXPCService0A5EventCGMd, &_sScSy16EncoreXPCService0A5EventCGMR);
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy16EncoreXPCService0B5EventC_GMd, &_sScS8IteratorVy16EncoreXPCService0B5EventC_GMR);
  v4[7] = v9;
  v10 = *(v9 - 8);
  v4[8] = v10;
  v11 = *(v10 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ReactiveUIEventActor.run(), a4, 0);
}

uint64_t closure #1 in ReactiveUIEventActor.run()()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  type metadata accessor for EncoreService();
  v5 = dispatch thunk of static EncoreService.service.getter();
  dispatch thunk of AsyncService.events.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = lazy protocol witness table accessor for type ReactiveUIEventActor and conformance ReactiveUIEventActor();
  v0[10] = v6;
  v7 = v0[3];
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = closure #1 in ReactiveUIEventActor.run();
  v10 = v0[9];
  v11 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v7, v6, v11);
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ReactiveUIEventActor.run(), v2, 0);
}

{
  v1 = v0[2];
  if (v1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_1DC659000, v4, v5, "[ReactiveEventActor] Got Event %@", v6, 0xCu);
      outlined destroy of NSObject?(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v9 = v0[3];

    ReactiveUIEventActor.deliver(event:)(v3);
    v10 = v0[10];
    v11 = v0[3];
    v12 = *(MEMORY[0x1E69E8678] + 4);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = closure #1 in ReactiveUIEventActor.run();
    v14 = v0[9];
    v15 = v0[7];

    return MEMORY[0x1EEE6D9C8](v0 + 2, v11, v10, v15);
  }

  else
  {
    v16 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v17 = v0[1];

    return v17();
  }
}

unint64_t type metadata accessor for FLOWSchemaFLOWDomainContext()
{
  result = lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext;
  if (!lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext);
  }

  return result;
}

double closure #1 in closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)@<D0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v21[1] = a2;
  v22 = a1;
  v10 = type metadata accessor for FlowPluginLoadResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3[5];
  v16 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v15);
  (*(v16 + 8))(&v23, a4, a5, v15, v16);
  if (*(&v24 + 1))
  {
    v31 = v26;
    v32 = v27;
    v29 = v24;
    v30 = v25;
    v28 = v23;
    FlowPluginLoadResult.init(success:wasInCache:)();
    v22(v14);
    (*(v11 + 8))(v14, v10);
    v17 = v29;
    v18 = v31;
    v19 = v32;
    a6[2] = v30;
    a6[3] = v18;
    a6[4] = v19;
    *a6 = v28;
    a6[1] = v17;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v23, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMR);
    FlowPluginLoadResult.init(success:wasInCache:)();
    v22(v14);
    (*(v11 + 8))(v14, v10);
    *&v17 = 0;
    a6[3] = 0u;
    a6[4] = 0u;
    a6[1] = 0u;
    a6[2] = 0u;
    *a6 = 0u;
  }

  return *&v17;
}

uint64_t initializeWithCopy for SiriRequestContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriRequestContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *specialized RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v48 = a8;
  v51 = a7;
  v49 = a6;
  v47 = a5;
  v45 = a3;
  v44 = a2;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v50 = &v43 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[3] = a11;
  v56[4] = a13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_0, a1, a11);
  v55[3] = a12;
  v55[4] = a14;
  v25 = __swift_allocate_boxed_opaque_existential_0(v55);
  (*(*(a12 - 8) + 32))(v25, a4, a12);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v19, static Logger.executor);
  (*(v20 + 16))(v23, v26, v19);
  v27 = type metadata accessor for AsyncSerialQueue();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v30[2] = MEMORY[0x1E69E7CC0];
  v30[3] = 0;
  v30[4] = 0;
  v30[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v30[6] = v31;
  v30[7] = 0xD00000000000002ALL;
  v30[8] = 0x80000001DCA85CB0;
  (*(v20 + 32))(v30 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v23, v19);
  a10[21] = v30;
  type metadata accessor for RemoteConversationService.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ReferenceResolutionClientProtocol(v56, (a10 + 2));
  v32 = v45;
  a10[7] = v44;
  a10[8] = v32;
  a10[9] = v47;
  outlined init with copy of ReferenceResolutionClientProtocol(v55, (a10 + 10));
  a10[20] = v48;
  v33 = v46;
  outlined init with copy of ReferenceResolutionClientProtocol?(v46, &v52, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v53)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v52, v54);
    outlined init with take of ReferenceResolutionClientProtocol(v54, (a10 + 15));
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(&v52, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v34 = type metadata accessor for ReferenceResolutionClient();
    v35 = ReferenceResolutionClient.__allocating_init()();
    v36 = MEMORY[0x1E69D01B0];
    a10[18] = v34;
    a10[19] = v36;
    a10[15] = v35;
  }

  v37 = (a10 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider);
  v38 = v51;
  *v37 = v49;
  v37[1] = v38;
  v39 = type metadata accessor for TaskPriority();
  v40 = v50;
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:), v41);

  outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return a10;
}

uint64_t sub_1DC6DD3D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

Swift::Void __swiftcall ReactiveUIEventActor.run()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  if (*(v0 + 128) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v18 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v18, v7, "[ReactiveEventActor] already running.", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v9 = v18;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "[ReactiveEventActor] Starting EncoreEvent Loop.", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = lazy protocol witness table accessor for type ReactiveUIEventActor and conformance ReactiveUIEventActor();
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v15;
    v16[4] = v1;
    swift_retain_n();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in ReactiveUIEventActor.run(), v16);
  }
}

uint64_t sub_1DC6DD758()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(a1, v1 + v5, v7, v8);
}

uint64_t closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v13 = *(v0 + 32);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(*(v0 + 24), v1, type metadata accessor for RemoteConversationTurnData);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  *(v7 + 16) = v4;
  outlined init with take of RemoteConversationTurnData(v1, v7 + v5);
  *(v7 + v6) = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *(v8 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)specialized partial apply, v8, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);

    v4 = closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_1DC6DDA48()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v22 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v21 = (v22 + 24) & ~v22;
  v3 = v0 + v21;
  v4 = *(v0 + v21 + 8);

  v5 = *(v0 + v21 + 24);

  v6 = v1[6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v21 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v10 = v1[7];
  v11 = type metadata accessor for SessionConfiguration();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = v1[9];
  if (!v9(v3 + v13, 1, v7))
  {
    (*(v8 + 8))(v3 + v13, v7);
  }

  v14 = *(v3 + v1[10]);

  v15 = (v3 + v1[13]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v15, v16);
  }

  v17 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v17 + 16, v22 | 7);
}

uint64_t outlined init with take of RemoteConversationTurnData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConversationTurnData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(a1, *(v1 + 16), (v1 + v4), *v5, v5[1]);
}

unint64_t lazy protocol witness table accessor for type ReactiveUIEventActor and conformance ReactiveUIEventActor()
{
  result = lazy protocol witness table cache variable for type ReactiveUIEventActor and conformance ReactiveUIEventActor;
  if (!lazy protocol witness table cache variable for type ReactiveUIEventActor and conformance ReactiveUIEventActor)
  {
    type metadata accessor for ReactiveUIEventActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactiveUIEventActor and conformance ReactiveUIEventActor);
  }

  return result;
}

BOOL AceServiceInvokerImpl.isExecutingOnBehalfOfInvocationDevice.getter()
{
  if (*(v0 + 24))
  {
    v1 = 0xEF6563697665446ELL;
  }

  else
  {
    v1 = 0x80000001DCA7AA10;
  }

  if (*(v0 + 24) == 1 && v1 == 0xEF6563697665446ELL)
  {

    return *(v0 + 80) != 0;
  }

  *(v0 + 24);
  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v3)
  {
    return *(v0 + 80) != 0;
  }

  return result;
}

uint64_t protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for NLContextUpdate();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = AceServiceInvokerImpl.needsLegacyProvideContextForInvocationDevice.getter();
  v7 = specialized static ExecutionContextUpdate.convertFromFlowContextUpdate(_:nluActiveTasks:nluCompletedTasks:populateLegacyProvideContext:)(v1, 0, 0, v6 & 1);
  v0[5] = v7;
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl;
  v9 = v0[3];

  return AceServiceInvokerImpl.publish(executionContextUpdate:)(v7);
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl;
  }

  else
  {
    v3 = protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

uint64_t AceServiceInvokerImpl.needsLegacyProvideContextForInvocationDevice.getter()
{
  if (*(v0 + 24))
  {
    v1 = 0xEF6563697665446ELL;
  }

  else
  {
    v1 = 0x80000001DCA7AA10;
  }

  if (*(v0 + 24) == 1 && v1 == 0xEF6563697665446ELL)
  {
  }

  else
  {
    *(v0 + 24);
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      LOBYTE(v4) = 0;
      return v4 & 1;
    }
  }

  v4 = *(v0 + 80);
  if (v4)
  {
    LOBYTE(v4) = *(v0 + 104) ^ 1;
  }

  return v4 & 1;
}

id specialized static ExecutionContextUpdate.convertFromFlowContextUpdate(_:nluActiveTasks:nluCompletedTasks:populateLegacyProvideContext:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v88) = a4;
  v98 = a2;
  v99 = a3;
  updated = type metadata accessor for ContextUpdateScope();
  v103 = *(updated - 8);
  v104 = updated;
  v6 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = &v84 - v17;
  v87 = type metadata accessor for NLContextUpdateSerializationOptions();
  v86 = *(v87 - 8);
  v18 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NLContextUpdate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v97 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v95 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v84 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v91 = &v84 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v90 = &v84 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v84 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v84 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v84 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v84 - v45;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v84 - v45, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v93 = *(v21 + 48);
  v47 = v93(v46, 1, v20);
  v94 = v21;
  if (v47 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  else
  {
    v48 = NLContextUpdate.isClientOnly.getter();
    (*(v21 + 8))(v46, v20);
    if (v48 != 2 && (v48 & 1) != 0)
    {
      v49 = 0;
      v51 = v93;
      v50 = v94;
      v52 = v96;
      goto LABEL_10;
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v43, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v51 = v93;
  if (v93(v43, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v49 = 0;
    v50 = v94;
  }

  else
  {
    v49 = NLContextUpdate.doConvertToServerContextUpdate()();
    v50 = v94;
    (*(v94 + 8))(v43, v20);
  }

  v52 = v96;
  v53 = v49;
LABEL_10:
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v40, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v54 = v51(v40, 1, v20);
  v96 = v49;
  if (v54 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  else
  {
    (*(v50 + 32))(v52, v40, v20);
    if (v88)
    {
      v106 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type NLContextUpdateSerializationOptions and conformance NLContextUpdateSerializationOptions, MEMORY[0x1E69D00F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMd, &_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMR);
      lazy protocol witness table accessor for type [NLContextUpdateSerializationOptions] and conformance [A]();
      v88 = v37;
      v55 = v85;
      v56 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v57 = NLContextUpdate.doConvertToAceContextUpdate(options:)();
      v58 = v55;
      v37 = v88;
      (*(v86 + 8))(v58, v56);
      (*(v50 + 8))(v52, v20);
      v93 = v57;
      v59 = v57;
      goto LABEL_16;
    }

    (*(v50 + 8))(v52, v20);
  }

  v93 = 0;
LABEL_16:
  v60 = v95;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v51(v37, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v95 = 0;
  }

  else
  {
    v95 = NLContextUpdate.nluSystemDialogActs.getter();
    (*(v50 + 8))(v37, v20);
  }

  v61 = v90;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v90, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v51(v61, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v62 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v62 - 8) + 56))(v101, 1, 1, v62);
  }

  else
  {
    NLContextUpdate.undoDirectInvocation.getter();
    (*(v50 + 8))(v61, v20);
  }

  v63 = v91;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v91, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v51(v63, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v91 = 0;
  }

  else
  {
    v91 = NLContextUpdate.rrEntities.getter();
    (*(v50 + 8))(v63, v20);
  }

  v64 = v92;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v92, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v51(v64, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v65 = type metadata accessor for PommesContext();
    (*(*(v65 - 8) + 56))(v105, 1, 1, v65);
  }

  else
  {
    NLContextUpdate.pommesContext.getter();
    (*(v50 + 8))(v64, v20);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v60, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v51(v60, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v103 + 104))(v102, *MEMORY[0x1E69CFF08], v104);
  }

  else
  {
    v66 = v89;
    NLContextUpdate.contextUpdateScope.getter();
    (*(v50 + 8))(v60, v20);
    (*(v103 + 32))(v102, v66, v104);
  }

  v67 = v97;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v97, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v51(v67, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v97 = 0;
    v92 = 0;
  }

  else
  {
    v97 = NLContextUpdate.restoreSessionForRequestId.getter();
    v92 = v68;
    (*(v50 + 8))(v67, v20);
  }

  v69 = type metadata accessor for ExecutionContextUpdate();
  v70 = objc_allocWithZone(v69);
  v71 = v100;
  outlined init with copy of ReferenceResolutionClientProtocol?(v105, v100, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v72 = v98;

  v73 = v99;

  v74 = v96;
  specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v71, v96);
  v75 = v93;
  *&v70[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = v93;
  *&v70[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v74;
  *&v70[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = v95;
  *&v70[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = v72;
  *&v70[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = v73;
  v76 = v101;
  outlined init with copy of ReferenceResolutionClientProtocol?(v101, &v70[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  *&v70[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = v91;
  outlined init with copy of ReferenceResolutionClientProtocol?(v71, &v70[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v78 = v102;
  v77 = v103;
  v79 = v104;
  (*(v103 + 16))(&v70[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v102, v104);
  v80 = &v70[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v81 = v92;
  *v80 = v97;
  v80[1] = v81;
  v70[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
  v107.receiver = v70;
  v107.super_class = v69;
  v82 = objc_msgSendSuper2(&v107, sel_init);
  (*(v77 + 8))(v78, v79);
  outlined destroy of ReferenceResolutionClientProtocol?(v105, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

  return v82;
}

uint64_t InvocationScopedSiriKitEventSender.send(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v50 - v6;
  v7 = type metadata accessor for SiriKitEventOverrides();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for OSSignpostID();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v26 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v51 = v25;
  os_signpost(_:dso:log:name:signpostID:)();
  SiriKitEvent.overrides.getter();
  v27 = *(v2 + 16);
  outlined init with copy of SiriKitEventOverrides?(v18, v15);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    outlined destroy of SiriKitEventOverrides?(v18);
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);

    v28 = SiriKitEventContext.withOverrides(_:)();
    (*(v8 + 8))(v11, v7);
    outlined destroy of SiriKitEventOverrides?(v18);

    v27 = v28;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.instrumentation);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v55 = v33;
    *v32 = 136315394;
    v34 = SiriKitEvent.debugDescription.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v55);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;

    v37 = SiriKitEventContext.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v55);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_1DC659000, v30, v31, "Dispatching event to sinks: %s with context: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v33, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  v41 = v52;
  type metadata accessor for IntentLoggingEventSink();
  swift_initStaticObject();
  specialized IntentLoggingEventSink.receive(_:_:)();
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v42 = *(v41 + 8);
  v43 = v53;
  v42(v22, v53);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v44 = static TaskLoggingEventSink.instance;
  v45 = type metadata accessor for TaskPriority();
  v46 = v54;
  (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v44;
  v47[5] = a1;
  v47[6] = v27;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in TaskLoggingEventSink.receive(_:_:), v47);

  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v42(v22, v43);
  static os_signpost_type_t.end.getter();
  v48 = v51;
  os_signpost(_:dso:log:name:signpostID:)();
  return (v42)(v48, v43);
}

uint64_t sub_1DC6DF6F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall ExecutionContextUpdate.encode(with:)(NSCoder with)
{
  v2 = v1;
  v96 = type metadata accessor for Siri_Nlu_External_Task();
  v94 = *(v96 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v95 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v89 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand);
  v15 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7AD70, v11);
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs);
  v89 = v2;
  isa = with.super.isa;
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v9 + 16);
      v19 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v97 = *(v9 + 72);
      v20 = (v9 + 8);
      v98 = MEMORY[0x1E69E7CC0];
      v91 = v18;
      v92 = v9 + 16;
      v18(v13, v19, v8);
      while (1)
      {
        lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48]);
        v21 = Message.serializedData(partial:)();
        v23 = v22;
        (*v20)(v13, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
        }

        v25 = *(v98 + 2);
        v24 = *(v98 + 3);
        if (v25 >= v24 >> 1)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v98);
        }

        v26 = v98;
        *(v98 + 2) = v25 + 1;
        v27 = &v26[16 * v25];
        *(v27 + 4) = v21;
        *(v27 + 5) = v23;
        v19 += v97;
        if (!--v17)
        {
          break;
        }

        v91(v13, v19, v8);
      }
    }

    else
    {
      v98 = MEMORY[0x1E69E7CC0];
    }

    v28 = Array._bridgeToObjectiveC()().super.isa;

    v29 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7ADF0);
    with.super.isa = isa;
    [(objc_class *)isa encodeObject:v28 forKey:v29];

    v2 = v89;
  }

  v30 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand);
  v31 = MEMORY[0x1E12A1410](0xD000000000000018, 0x80000001DCA7ADB0);
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];

  v32 = type metadata accessor for JSONEncoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = JSONEncoder.init()();
  v99 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_rrEntities);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMR);
  lazy protocol witness table accessor for type [RREntity]? and conformance <A> A?();
  v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v38 = v37;

  v39 = Data._bridgeToObjectiveC()().super.isa;
  v40 = MEMORY[0x1E12A1410](0x697469746E457272, 0xEA00000000007365);
  [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];

  outlined consume of Data._Representation(v36, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  lazy protocol witness table accessor for type PommesContext? and conformance <A> A?();
  v41 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v43 = v42;
  v44 = Data._bridgeToObjectiveC()().super.isa;
  v45 = MEMORY[0x1E12A1410](0x6F4373656D6D6F70, 0xED0000747865746ELL);
  [(objc_class *)with.super.isa encodeObject:v44 forKey:v45];

  outlined consume of Data._Representation(v41, v43);
  v46 = v96;
  v47 = v95;
  v48 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks);
  v49 = v93;
  v92 = v35;
  if (v48)
  {
    v50 = *(v48 + 16);
    if (v50)
    {
      v51 = *(v94 + 16);
      v52 = v48 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v97 = *(v94 + 72);
      v98 = v51;
      v53 = (v94 + 8);
      v54 = MEMORY[0x1E69E7CC0];
      (v51)(v93, v52, v96);
      while (1)
      {
        lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
        v55 = Message.serializedData(partial:)();
        v57 = v56;
        (*v53)(v49, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v59 = *(v54 + 2);
        v58 = *(v54 + 3);
        if (v59 >= v58 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v54);
        }

        *(v54 + 2) = v59 + 1;
        v60 = &v54[16 * v59];
        *(v60 + 4) = v55;
        *(v60 + 5) = v57;
        v46 = v96;
        v49 = v93;
        v52 += v97;
        if (!--v50)
        {
          break;
        }

        (v98)(v93, v52, v96);
      }
    }

    v61 = Array._bridgeToObjectiveC()().super.isa;

    v62 = MEMORY[0x1E12A1410](0x7669746341756C6ELL, 0xEE00736B73615465);
    with.super.isa = isa;
    [(objc_class *)isa encodeObject:v61 forKey:v62];

    v2 = v89;
    v47 = v95;
  }

  v63 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks);
  if (v63)
  {
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = *(v94 + 16);
      v66 = v63 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v97 = *(v94 + 72);
      v98 = v65;
      v67 = (v94 + 8);
      v68 = MEMORY[0x1E69E7CC0];
      v94 += 16;
      (v65)(v47, v66, v46);
      while (1)
      {
        lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
        v69 = Message.serializedData(partial:)();
        v71 = v70;
        (*v67)(v47, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
        }

        v73 = *(v68 + 2);
        v72 = *(v68 + 3);
        if (v73 >= v72 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v68);
        }

        *(v68 + 2) = v73 + 1;
        v74 = &v68[16 * v73];
        *(v74 + 4) = v69;
        *(v74 + 5) = v71;
        v47 = v95;
        v46 = v96;
        v66 += v97;
        if (!--v64)
        {
          break;
        }

        (v98)(v95, v66, v96);
      }
    }

    v75 = Array._bridgeToObjectiveC()().super.isa;

    v76 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AE20);
    with.super.isa = isa;
    [(objc_class *)isa encodeObject:v75 forKey:v76];

    v2 = v89;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  lazy protocol witness table accessor for type Parse.DirectInvocation? and conformance <A> A?();
  v77 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v79 = v78;
  v80 = Data._bridgeToObjectiveC()().super.isa;
  v81 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7AE40);
  [(objc_class *)with.super.isa encodeObject:v80 forKey:v81];

  outlined consume of Data._Representation(v77, v79);
  updated = ContextUpdateScope.rawValue.getter();
  v83 = MEMORY[0x1E12A1410](updated);

  v84 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AE60);
  [(objc_class *)with.super.isa encodeObject:v83 forKey:v84];

  if (*(v2 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId + 8))
  {
    v85 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId));
  }

  else
  {
    v85 = 0;
  }

  v86 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7AE80);
  [(objc_class *)with.super.isa encodeObject:v85 forKey:v86];

  v87 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice);
  v88 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA7AEA0);
  [(objc_class *)with.super.isa encodeBool:v87 forKey:v88];
}

unint64_t lazy protocol witness table accessor for type [RREntity]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [RREntity]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [RREntity]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMR);
    lazy protocol witness table accessor for type [RREntity] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RREntity]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x1E69CE670]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x1E69CE670]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #1 in TaskLoggingEventSink.receive(_:_:)(uint64_t a1)
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

  return closure #1 in TaskLoggingEventSink.receive(_:_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in TaskLoggingEventSink.receive(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return TaskLoggingEventSink.receiveAsync(_:_:)(a5, a6);
}

uint64_t partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1)
{
  v2 = *(type metadata accessor for ActivityType() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Date() - 8);
  v39 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = (*(v5 + 64) + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v13 = (*(v12 + 64) + ((*(v12 + 80) + v11 + 16) & ~*(v12 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = v1[3];
  v38 = v1[2];
  v36 = v1[4];
  v35 = *(v1 + v6);
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(v1 + v7 + 8);
  v34 = *(v1 + v7);
  v31 = *(v1 + v8 + 8);
  v32 = *(v1 + v8);
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v1 + v9 + 8);
  v30 = *(v1 + v9);
  v27 = *(v1 + v10 + 8);
  v28 = *(v1 + v10);
  v16 = *(v1 + v11 + 8);
  v26 = *(v1 + v11);
  v18 = *(v1 + v13);
  v17 = *(v1 + v13 + 8);
  v19 = *(v1 + v14);
  v20 = *(v1 + v14 + 8);
  v22 = *(v1 + v15);
  v21 = *(v1 + v15 + 8);
  v23 = *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  v24 = swift_task_alloc();
  *(v40 + 16) = v24;
  *v24 = v40;
  v24[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(a1, v38, v37, v36, v1 + v3, v1 + v39, v35, v34);
}

uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x1E69E9840];
  *(v8 + 880) = v25;
  *(v8 + 848) = v23;
  *(v8 + 864) = v24;
  *(v8 + 816) = v21;
  *(v8 + 832) = v22;
  *(v8 + 784) = v19;
  *(v8 + 800) = v20;
  *(v8 + 752) = v17;
  *(v8 + 768) = v18;
  *(v8 + 744) = a8;
  *(v8 + 736) = a7;
  *(v8 + 728) = a6;
  *(v8 + 720) = a5;
  *(v8 + 712) = a4;
  v9 = type metadata accessor for ActivityType();
  *(v8 + 888) = v9;
  v10 = *(v9 - 8);
  *(v8 + 896) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  *(v8 + 928) = swift_task_alloc();
  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:), 0, 0);
}