uint64_t static RemoteFlowPluginPackage.from(id:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](static RemoteFlowPluginPackage.from(id:sharedFlowPluginServiceClient:), 0, 0);
}

uint64_t static RemoteFlowPluginPackage.from(id:sharedFlowPluginServiceClient:)()
{
  v1 = MEMORY[0x1E12A1410](v0[2], v0[3]);
  v2 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    v3 = v0[4];

    v4 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t static RemoteFlowPluginPackage.packageFrom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  v7 = static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
  os_unfair_lock_lock((static ConversationHandlerLocator.lastSeenFlowPluginServiceClient + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));
  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E696AAE8]);

    v10 = MEMORY[0x1E12A1410](a1, a2);
    v11 = [v9 initWithPath_];

    if (v11)
    {
      v12 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v11, v8);

      result = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v13, type metadata accessor for RemoteFlowPluginPackage);
    }

    else
    {

      v12 = 0;
      v3 = 0;
      result = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    *a3 = v12;
    a3[3] = v3;
    a3[4] = result;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000008CLL, 0x80000001DCA86650, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/ConversationHandler/RemoteFlowPluginPackage.swift", 118, 2, 102);
    __break(1u);
  }

  return result;
}

void *RemoteFlowPluginPackage.loadPlugin()()
{
  v0 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler);
  return v0;
}

uint64_t RemoteFlowPluginPackage.get(capability:)@<X0>(void *a1@<X8>)
{
  v2 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler);
  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v2;
  return result;
}

unint64_t RemoteFlowPluginPackage.affinityScore(for:)(uint64_t a1)
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
  v24 = v2[11];
  v25 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v24);
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
    v36 = static os_log_type_t.error.getter();

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
    lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
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
    lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
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

void *RemoteFlowPluginPackage.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  return v0;
}

uint64_t RemoteFlowPluginPackage.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  return swift_deallocClassInstance();
}

void *protocol witness for PluginPackage.loadPlugin() in conformance RemoteFlowPluginPackage()
{
  v1 = *v0;
  v2 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler);
  return v2;
}

uint64_t protocol witness for PluginCapabilityExposing.get(capability:) in conformance RemoteFlowPluginPackage@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler);
  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t FlowPluginPackageFinder.init(wrapping:sharedFlowPluginServiceClient:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

void *FlowPluginPackageFinder.findAllPackages()()
{
  v1 = v0;
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = dispatch thunk of PluginFinder.findAllPackages()();
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v5, v21);
    outlined init with copy of ReferenceResolutionClientProtocol(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
    v7 = type metadata accessor for RemoteFlowPluginPackage();
    if (swift_dynamicCast())
    {
      v9 = v16;
      *(&v18 + 1) = v7;
      v19 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v8, type metadata accessor for RemoteFlowPluginPackage);
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v21, v20);
      type metadata accessor for NSBundle();
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
        outlined destroy of ReferenceResolutionClientProtocol?(&v17, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
        goto LABEL_4;
      }

      v10 = v1[7];
      v11 = v16;

      v9 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v11, v10);
      *(&v18 + 1) = v7;
      v19 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v12, type metadata accessor for RemoteFlowPluginPackage);
    }

    *&v17 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    outlined init with take of ReferenceResolutionClientProtocol(&v17, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v14 = v6[2];
    v13 = v6[3];
    if (v14 >= v13 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v6);
    }

    v6[2] = v14 + 1;
    outlined init with take of ReferenceResolutionClientProtocol(v20, &v6[5 * v14 + 4]);
LABEL_4:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t FlowPluginPackageFinder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t FlowPluginPackageFinder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void *protocol witness for PluginFinder.findAllPackages() in conformance FlowPluginPackageFinder()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  v3 = dispatch thunk of PluginFinder.findAllPackages()();

  v4 = specialized Sequence.compactMap<A>(_:)(v3, v1);

  return v4;
}

void *specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(void *a1, uint64_t a2)
{
  v4 = [a1 infoDictionary];
  if (v4)
  {
    v5 = v4;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v6 = static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

  v7 = NSBundle.packageId.getter();
  v9 = v8;
  v10 = [a1 bundlePath];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  type metadata accessor for RemoteFlowPluginPackage();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v9;
  v14[6] = v11;
  v14[7] = v13;
  v14[4] = a2;
  v14[5] = v6;
  outlined init with copy of AffinityScorer?(v20, &v17);
  if (v18)
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v17, v19);
  }

  else
  {
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7D960);
    MEMORY[0x1E12A1580](v7, v9);
    MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA7D990);
    v15 = v19[0];

    specialized logAction<A>(label:_:)(v15, *(&v15 + 1), v7, v9, v19);

    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    if (v18)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v17, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(v19, (v14 + 8));
  return v14;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v3, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
      v5 = type metadata accessor for RemoteFlowPluginPackage();
      if (swift_dynamicCast())
      {
        break;
      }

      outlined init with copy of ReferenceResolutionClientProtocol(v3, v18);
      type metadata accessor for NSBundle();
      if (swift_dynamicCast())
      {
        v8 = *(a2 + 56);
        v9 = v19;

        v7 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v9, v8);
        *(&v16 + 1) = v5;
        v17 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v10, type metadata accessor for RemoteFlowPluginPackage);

        goto LABEL_9;
      }

      v15 = 0u;
      v16 = 0u;
      v17 = 0;
      outlined destroy of ReferenceResolutionClientProtocol?(&v15, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
LABEL_4:
      v3 += 40;
      if (!--v2)
      {
        return v4;
      }
    }

    v7 = v19;
    *(&v16 + 1) = v5;
    v17 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v6, type metadata accessor for RemoteFlowPluginPackage);
LABEL_9:
    *&v15 = v7;
    outlined init with take of ReferenceResolutionClientProtocol(&v15, v18);
    outlined init with take of ReferenceResolutionClientProtocol(v18, &v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
    }

    v4[2] = v12 + 1;
    outlined init with take of ReferenceResolutionClientProtocol(&v15, &v4[5 * v12 + 4]);
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t type metadata accessor for NSBundle()
{
  result = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSBundle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::Int RepeatRecentDialogIntent.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

unint64_t specialized static RepeatRecentDialogIntent.fromParse(_:)(uint64_t a1)
{
  v63 = type metadata accessor for UsoEntity_common_Interjection.DefinedValues();
  v67 = *(v63 - 8);
  v2 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMR);
  v4 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v56 - v12;
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v56 - v17;
  v18 = type metadata accessor for Siri_Nlu_External_UserParse();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Parse();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for USOParse();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, a1, v23, v31);
  if ((*(v24 + 88))(v27, v23) != *MEMORY[0x1E69D0168])
  {
    (*(v24 + 8))(v27, v23);
    return 3;
  }

  (*(v24 + 96))(v27, v23);
  (*(v29 + 32))(v33, v27, v28);
  v34 = USOParse.userParse.getter();
  v35 = MEMORY[0x1E129C0F0](v34);
  (*(v19 + 8))(v22, v18);
  v36 = v28;
  if (!*(v35 + 16))
  {

    (*(v29 + 8))(v33, v28);
    return 3;
  }

  v37 = v68;
  v38 = v69;
  v39 = v70;
  (*(v69 + 16))(v68, v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v70);

  v40 = v71;
  (*(v38 + 32))(v71, v37, v39);
  if (Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter())
  {
    (*(v38 + 8))(v40, v39);
    (*(v29 + 8))(v33, v36);
    return 0;
  }

  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v44 = result;
    v45 = __CocoaSet.count.getter();
    result = v44;
    v42 = v67;
    if (!v45)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v42 = v67;
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:

      static UsoTask_CodegenConverter.convert(task:)();

      if (v74)
      {
        outlined init with take of Any(&v73, v75);
        outlined init with copy of Any(v75, &v73);
        type metadata accessor for UsoTask_repeat_uso_NoEntity();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          (*(v38 + 8))(v40, v39);
          (*(v29 + 8))(v33, v36);

          __swift_destroy_boxed_opaque_existential_1Tm(&v73);
          return 0;
        }

        type metadata accessor for UsoTask_skipBackward_uso_NoEntity();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          (*(v38 + 8))(v40, v39);
          (*(v29 + 8))(v33, v36);

          __swift_destroy_boxed_opaque_existential_1Tm(&v73);
          return 1;
        }

        type metadata accessor for UsoTask_noVerb_common_Interjection();
        if (swift_dynamicCast() && (, outlined init with copy of Any(v75, v72), swift_dynamicCast()))
        {

          dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

          v59 = v36;
          v58 = v33;
          v57 = v29;
          v46 = v66;
          if (v72[0])
          {
            dispatch thunk of UsoEntity_common_Interjection.definedValue.getter();

            v47 = v63;
          }

          else
          {
            v47 = v63;
            (*(v42 + 56))(v66, 1, 1, v63);
          }

          v48 = v65;
          v49 = v64;
          (*(v42 + 104))(v64, *MEMORY[0x1E69D1DC8], v47);
          (*(v42 + 56))(v49, 0, 1, v47);
          v50 = *(v62 + 48);
          outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(v46, v48);
          outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(v49, v48 + v50);
          v51 = *(v42 + 48);
          if (v51(v48, 1, v47) == 1)
          {

            outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            v52 = v65;
            outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            (*(v38 + 8))(v71, v39);
            (*(v57 + 8))(v58, v59);
            if (v51(v52 + v50, 1, v47) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
LABEL_35:
              __swift_destroy_boxed_opaque_existential_1Tm(&v73);
              return 2;
            }
          }

          else
          {
            v53 = v61;
            outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(v48, v61);
            if (v51(v48 + v50, 1, v47) != 1)
            {
              v54 = v60;
              (*(v42 + 32))(v60, v48 + v50, v47);
              lazy protocol witness table accessor for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues();
              LODWORD(v68) = dispatch thunk of static Equatable.== infix(_:_:)();

              v55 = *(v42 + 8);
              v55(v54, v47);
              outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
              outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
              __swift_destroy_boxed_opaque_existential_1Tm(v75);
              (*(v38 + 8))(v71, v39);
              (*(v57 + 8))(v58, v59);
              v55(v53, v47);
              outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
              if (v68)
              {
                goto LABEL_35;
              }

              goto LABEL_26;
            }

            outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            v52 = v65;
            outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            (*(v38 + 8))(v71, v39);
            (*(v57 + 8))(v58, v59);
            (*(v42 + 8))(v53, v47);
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMR);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          (*(v38 + 8))(v40, v39);
          (*(v29 + 8))(v33, v36);
        }

LABEL_26:
        __swift_destroy_boxed_opaque_existential_1Tm(&v73);
        return 3;
      }

      (*(v38 + 8))(v40, v39);
      (*(v29 + 8))(v33, v36);
      outlined destroy of ReferenceResolutionClientProtocol?(&v73, &_sypSgMd, &_sypSgMR);
      return 3;
    }
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(result + 32);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent()
{
  result = lazy protocol witness table cache variable for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent;
  if (!lazy protocol witness table cache variable for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent);
  }

  return result;
}

uint64_t outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_Interjection.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So8NSStringCs5NeverOTg5069_s14SiriKitRuntime18RequestContextDataC6encode4withySo7NSCoderC_tFSo8D9CSSXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v22 = v1 + 64;
    v23 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v24 = v7;
      v11 = (*(v1 + 48) + 16 * v6);
      v13 = *v11;
      v12 = v11[1];

      MEMORY[0x1E12A1410](v13, v12);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = *(v25 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v23;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v23 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v15 = *(v4 + 8 * v10);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v23 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v10 << 6;
        v18 = v10 + 1;
        v19 = (v22 + 8 * v10);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = outlined consume of Set<String>.Index._Variant(v6, v8, 0);
            v9 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<String>.Index._Variant(v6, v8, 0);
      }

LABEL_4:
      v7 = v24 + 1;
      v6 = v9;
      if (v24 + 1 == v2)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t RequestContextData.__allocating_init(startRequest:assistantId:didPreviouslyFallbackToServer:isRecognizeMyVoiceEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  ObjectType = swift_getObjectType();

  return specialized RequestContextData.__allocating_init(startRequest:assistantId:didPreviouslyFallbackToServer:isRecognizeMyVoiceEnabled:)(a1, a3, a4, a5, a6, v6, ObjectType, a2);
}

uint64_t static RequestContextData.builder.getter()
{
  v0 = type metadata accessor for RequestContextData.Builder(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RequestContextData.Builder.init()();
  return v3;
}

uint64_t static RequestContextData.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static RequestContextData.supportsSecureCoding = a1;
  return result;
}

uint64_t RequestContextData.inputOrigin.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8);

  return v1;
}

uint64_t RequestContextData.isEyesFree.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree);
}

{
  return MEMORY[0x1EEE3B1B0]();
}

uint64_t RequestContextData.isVoiceTriggerEnabled.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled);
}

{
  return MEMORY[0x1EEE3B210]();
}

uint64_t RequestContextData.isTextToSpeechEnabled.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled);
}

{
  return MEMORY[0x1EEE3B200]();
}

void *RequestContextData.peerInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v2 = v1;
  return v1;
}

void *RequestContextData.endpointInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  v2 = v1;
  return v1;
}

void *RequestContextData.instanceInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo);
  v2 = v1;
  return v1;
}

uint64_t RequestContextData.bargeInModes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes);
}

{
  return MEMORY[0x1EEE3B1C8]();
}

void *RequestContextData.originatingHome.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome);
  v2 = v1;
  return v1;
}

uint64_t RequestContextData.currentDeviceAssistantId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8);

  return v1;
}

uint64_t RequestContextData.isTriggerlessFollowup.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup);
}

{
  return MEMORY[0x1EEE3B208]();
}

uint64_t RequestContextData.voiceTriggerEventInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo);
}

{
  return MEMORY[0x1EEE3B218]();
}

uint64_t RequestContextData.voiceAudioSessionId.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
}

{
  return MEMORY[0x1EEE3B1F8]();
}

uint64_t RequestContextData.isSystemApertureEnabled.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled);
}

{
  return MEMORY[0x1EEE3B220]();
}

uint64_t RequestContextData.isLiveActivitiesSupported.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported);
}

{
  return MEMORY[0x1EEE3B230]();
}

uint64_t RequestContextData.isInAmbient.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient);
}

{
  return MEMORY[0x1EEE3B1C0]();
}

uint64_t RequestContextData.responseMode.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *RequestContextData.conjunctionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  v2 = v1;
  return v1;
}

uint64_t RequestContextData.isDeviceShowingLockScreen.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen);
}

{
  return MEMORY[0x1EEE3B228]();
}

uint64_t RequestContextData.isDeviceLocked.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked);
}

{
  return MEMORY[0x1EEE3B1D8]();
}

id RequestContextData.init(inputOrigin:audioSource:audioDestination:responseMode:isEyesFree:isDirectAction:isVoiceTriggerEnabled:isTextToSpeechEnabled:peerInfo:endpointInfo:instanceInfo:bargeInModes:approximatePreviousTTSInterval:restrictions:originatingHome:currentDeviceAssistantId:isTriggerlessFollowup:didPreviouslyFallbackToServer:isSpeechRequest:isUserOnActivePhoneCall:voiceTriggerEventInfo:isRecognizeMyVoiceEnabled:voiceAudioSessionId:isSystemApertureEnabled:isLiveActivitiesSupported:isInAmbient:positionInSession:conjunctionInfo:isDeviceShowingLockScreen:isDeviceLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, int a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32)
{
  v35 = &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  *v35 = a1;
  v35[1] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a4, &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v36 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v37 = type metadata accessor for ResponseMode();
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v32[v36], a5, v37);
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = a6;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = a7;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = a8;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = a9;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = a10;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = a11;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = a12;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v39 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v40 = type metadata accessor for Restrictions();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v32[v39], a15, v40);
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = a16;
  v42 = &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  *v42 = a17;
  v42[1] = a18;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = a19;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = a20;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = a21;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = a22;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = a23;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = a24;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = a25;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = a26;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = a27;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = a28;
  v43 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession;
  v44 = type metadata accessor for RequestPositionInSession();
  v45 = *(v44 - 8);
  (*(v45 + 16))(&v32[v43], a29, v44);
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = a30;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = a31;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = a32;
  v54.receiver = v32;
  v54.super_class = type metadata accessor for RequestContextData(0);
  v46 = objc_msgSendSuper2(&v54, sel_init);
  (*(v45 + 8))(a29, v44);
  (*(v41 + 8))(a15, v40);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v38 + 8))(a5, v37);
  outlined destroy of ReferenceResolutionClientProtocol?(a4, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return v46;
}

uint64_t RequestContextData.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RequestContextData.Builder.init()();
  return v3;
}

uint64_t key path setter for RequestContextData.Builder.audioSource : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return (*(**a2 + 352))(v7);
}

uint64_t key path setter for RequestContextData.Builder.audioDestination : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  return (*(**a2 + 376))(v7);
}

uint64_t key path setter for RequestContextData.Builder.responseMode : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  return (*(**a2 + 400))(v7);
}

uint64_t key path setter for RequestContextData.Builder.approximatePreviousTTSInterval : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  return (*(**a2 + 616))(v7);
}

uint64_t key path setter for RequestContextData.Builder.restrictions : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  return (*(**a2 + 640))(v7);
}

uint64_t key path setter for RequestContextData.Builder.positionInSession : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  return (*(**a2 + 952))(v7);
}

id RequestContextData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestContextData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t specialized RequestContextData.__allocating_init(startRequest:assistantId:didPreviouslyFallbackToServer:isRecognizeMyVoiceEnabled:)(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a2;
  v89 = a6;
  v86 = a5;
  v87 = a4;
  v91 = a3;
  v85 = type metadata accessor for RequestPositionInSession();
  v83 = *(v85 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Restrictions();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v94 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v93 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v70 - v21;
  v23 = type metadata accessor for ResponseMode();
  v81 = *(v23 - 8);
  v82 = v23;
  v24 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v70 - v32;
  v34 = type metadata accessor for InputOrigin();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a7;
  v41 = (*(a8 + 8))(a7, a8, v37);
  if (v41)
  {
    v42 = v41;
    v43 = *(a8 + 24);
    v90 = a1;
    v43(v40, a8);
    v44 = InputOrigin.aceInputOrigin.getter();
    v77 = v45;
    v78 = v44;
    (*(v35 + 8))(v39, v34);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    ResponseMode.init(aceValue:)();
    v47 = v81;
    v46 = v82;
    v48 = *(v81 + 48);
    v49 = v48(v22, 1, v82);
    v79 = v33;
    v80 = v29;
    if (v49 == 1)
    {
      static ResponseMode.displayForward.getter();
      if (v48(v22, 1, v46) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      (*(v47 + 32))(v92, v22, v46);
    }

    LODWORD(v82) = RequestContextData.isEyesFree.getter();
    type metadata accessor for StartDirectActionRequestMessage();
    LODWORD(v81) = swift_dynamicCastClass() != 0;
    v76 = RequestContextData.isVoiceTriggerEnabled.getter();
    v74 = RequestContextData.isTextToSpeechEnabled.getter();
    v75 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    Restrictions.init(aceValue:)();
    v73 = RequestContextData.isTriggerlessFollowup.getter();
    type metadata accessor for StartSpeechRequestMessage();
    v72 = swift_dynamicCastClass() != 0;
    v71 = RequestContextData.voiceTriggerEventInfo.getter();
    v57 = RequestContextData.voiceAudioSessionId.getter();
    v58 = RequestContextData.isSystemApertureEnabled.getter();
    v59 = RequestContextData.isLiveActivitiesSupported.getter();
    v60 = RequestContextData.isInAmbient.getter();
    v61 = RequestContextData.conjunctionInfo.getter();
    v62 = RequestContextData.isDeviceShowingLockScreen.getter();
    v63 = RequestContextData.isDeviceLocked.getter();
    v64 = v84;
    (*(v83 + 104))(v84, *MEMORY[0x1E69CE5A0], v85);
    HIBYTE(v69) = v63 & 1;
    LOBYTE(v69) = v62 & 1;
    BYTE2(v68) = v60 & 1;
    BYTE1(v68) = v59 & 1;
    LOBYTE(v68) = v58 & 1;
    HIDWORD(v67) = v57;
    LOBYTE(v67) = v86 & 1;
    HIWORD(v66) = v72;
    BYTE1(v66) = v87 & 1;
    LOBYTE(v66) = v73 & 1;
    v56 = (*(v89 + 344))(v78, v77, v79, v80, v92, v82 & 1, v81, v76 & 1, v74 & 1, 0, 0, 0, v75, v93, v94, 0, v88, v91, v66, v71, v67, v68, v64, v61, v69);
  }

  else
  {
    v50 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.executor);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v54 = v50;
    if (os_log_type_enabled(v52, v53))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    return 0;
  }

  return v56;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for RequestContextData()
{
  _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioSource?, MEMORY[0x1E69D3410]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioDestination?, MEMORY[0x1E69D35C0]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ResponseMode();
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          v8 = type metadata accessor for Restrictions();
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            v10 = type metadata accessor for RequestPositionInSession();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of RequestContextData.__allocating_init(inputOrigin:audioSource:audioDestination:responseMode:isEyesFree:isDirectAction:isVoiceTriggerEnabled:isTextToSpeechEnabled:peerInfo:endpointInfo:instanceInfo:bargeInModes:approximatePreviousTTSInterval:restrictions:originatingHome:currentDeviceAssistantId:isTriggerlessFollowup:didPreviouslyFallbackToServer:isSpeechRequest:isUserOnActivePhoneCall:voiceTriggerEventInfo:isRecognizeMyVoiceEnabled:voiceAudioSessionId:isSystemApertureEnabled:isLiveActivitiesSupported:isInAmbient:positionInSession:conjunctionInfo:isDeviceShowingLockScreen:isDeviceLocked:)()
{
  v1 = *(v0 + 344);

  return v1();
}

void type metadata completion function for RequestContextData.Builder()
{
  _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioSource?, MEMORY[0x1E69D3410]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioDestination?, MEMORY[0x1E69D35C0]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for ResponseMode?, MEMORY[0x1E69D3550]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for Restrictions?, MEMORY[0x1E69D3560]);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for RequestPositionInSession?, MEMORY[0x1E69CE5B0]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void _s13SiriUtilities11AudioSourceVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

char *specialized static ResponseTextExtractionUtil.extractResponseText(fromAddViews:)(void *a1)
{
  v2 = [a1 dialogPhase];
  v3 = [objc_opt_self() dialogPhaseForAceDialogPhase_];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = [a1 views];
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  type metadata accessor for SAAceView();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (([v3 isSummaryDialogPhase] & 1) == 0 && (objc_msgSend(v3, sel_isConfirmationDialogPhase) & 1) == 0 && !objc_msgSend(v3, sel_isCompletionDialogPhase))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = v3;
  if (v6 >> 62)
  {
LABEL_37:
    v45 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_38:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v45 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_8:
  v8 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_setMitigationSource_;
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E12A1FE0](v10, v6);
      }

      else
      {
        if (v10 >= *(v45 + 16))
        {
          goto LABEL_36;
        }

        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v14 = [v12 v9[336]];
      if (v14)
      {
        v15 = v14;
        v16 = v9;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = v17 & 0xFFFFFFFFFFFFLL;
        v9 = v16;
      }

      else
      {
        v20 = 0;
        v19 = 0xE000000000000000;
      }

      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v20;
      }

      if (!v21)
      {
        break;
      }

      v11 = [v13 v9[336]];
      if (v11)
      {
        goto LABEL_27;
      }

LABEL_11:

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_39;
      }
    }

    v22 = [v13 dialog];
    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = v22;
    v24 = [v22 content];

    if (!v24)
    {
      goto LABEL_11;
    }

    v25 = [v24 text];

    if (!v25)
    {
      goto LABEL_11;
    }

    v11 = v25;
LABEL_27:
    v26 = v11;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
    }

    v31 = *(v44 + 2);
    v30 = *(v44 + 3);
    if (v31 >= v30 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v44);
    }

    *(v44 + 2) = v31 + 1;
    v32 = &v44[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
  }

  while (v8 != v7);
LABEL_39:

  v33 = v44;
  if (!*(v44 + 2))
  {

    return MEMORY[0x1E69E7CC0];
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
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x1E12A16D0](v44, MEMORY[0x1E69E6158]);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v46);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1DC659000, v35, v36, "Found SAUIAddViews response text: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  return v33;
}

unint64_t type metadata accessor for SAAceView()
{
  result = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAAceView);
  }

  return result;
}

uint64_t TTResponseMessage.MitigationDecision.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69D0270])
  {
    return 0x64657463656C6573;
  }

  if (v8 == *MEMORY[0x1E69D0278])
  {
    return 0x657461676974696DLL;
  }

  if (v8 == *MEMORY[0x1E69D0268])
  {
    v10 = 1652121965;
    return v10 | 0x74694D6500000000;
  }

  if (v8 == *MEMORY[0x1E69D0260])
  {
    v10 = 1668444006;
    return v10 | 0x74694D6500000000;
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

unint64_t ResultCandidateProcessingStatus.rawValue.getter(char a1)
{
  result = 0x696C616974696E69;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000011;
      break;
    case 2:
    case 5:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
    case 11:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x6F69747563657865;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 12:
    case 14:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0x5364696C61766E69;
      break;
    case 17:
      result = 0x64656C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t RoutingDecision.value.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoutingDecision(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  outlined init with copy of RoutingDecision(v2, v10, type metadata accessor for RoutingDecision);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v12 + 32);
    v19(v18, v10, v11);
    v19(a1, v18, v11);
LABEL_6:
    v20 = 0;
    return (*(v12 + 56))(a1, v20, 1, v11);
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v10, type metadata accessor for RoutingDecision);
  outlined init with copy of RoutingDecision(v2, v7, type metadata accessor for RoutingDecision);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = *(v12 + 32);
    v21(v15, v7, v11);
    v21(a1, v15, v11);
    goto LABEL_6;
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v7, type metadata accessor for RoutingDecision);
  v20 = 1;
  return (*(v12 + 56))(a1, v20, 1, v11);
}

uint64_t SpeechContext.__allocating_init(speechPackage:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = [v3 recognition];
  v5 = [v4 aceRecognition];

  *(v2 + 24) = v5;
  return v2;
}

uint64_t ResultCandidateState.__allocating_init(withResultCandidateId:resultCandidateType:userId:voiceIdScore:voiceIdClassification:lowScoreThreshold:fallbackParse:asrLocation:serverFallbackReason:meetsUserSessionThreshold:meetsPersonalRequestThreshold:siriXRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14)
{
  v64 = a7;
  v65 = a6;
  v60[0] = a4;
  v68 = a5;
  v69 = a14;
  v66 = a12;
  v67 = a13;
  v62 = a11;
  v63 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v70 = v60 - v20;
  v21 = *(v14 + 48);
  v22 = *(v14 + 52);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v24 = 0;
  v24[1] = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v25 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v26 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  v27 = (v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v27 = 0;
  v27[1] = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v28 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v29 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v29 - 8) + 56))(v23 + v28, 1, 1, v29);
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v30 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v31 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v31 - 8) + 56))(v23 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  v33 = type metadata accessor for ServerFallbackReason();
  (*(*(v33 - 8) + 56))(v23 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v35 = type metadata accessor for SiriXRedirectContext();
  (*(*(v35 - 8) + 56))(v23 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v37 = type metadata accessor for SelectedUserAttributes();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v60[1] = v38 + 56;
  v61 = v39;
  v39(v23 + v36, 1, 1, v37);
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v71 = a3;
  v40 = a3;
  v41 = v60[0];
  outlined init with copy of RoutingDecision(v40, v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, type metadata accessor for ResultCandidateType);
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v42 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v43 = *MEMORY[0x1E69D0AA0];
  v44 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v44 - 8) + 104))(v23 + v42, v43, v44);
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v45 = v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v46 = type metadata accessor for UUID();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  v47 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v48 = type metadata accessor for OSSignpostID();
  (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v50 = type metadata accessor for UserID();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v23 + v49, v41, v50);
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(a9, v23 + v30, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v52 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v53 = v62;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v62, v23 + v52, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v55 = *MEMORY[0x1E69D02D8];
  v56 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v56 - 8) + 104))(v23 + v54, v55, v56);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  if ((v63 & 0x100000000) != 0)
  {
    static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  }

  v57 = v70;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a10, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v51 + 8))(v41, v50);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v71, type metadata accessor for ResultCandidateType);
  v61(v57, 0, 1, v37);
  v58 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v57, v23 + v58, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  swift_endAccess();
  return v23;
}

void __swiftcall TextContext.init(utterance:trpId:tcuId:)(SiriKitRuntime::TextContext *__return_ptr retstr, Swift::String utterance, Swift::String_optional trpId, Swift::String_optional tcuId)
{
  retstr->utterance = utterance;
  retstr->trpId = trpId;
  retstr->tcuId = tcuId;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ResultCandidateProcessingStatus(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ResultCandidateProcessingStatus.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ResultCandidateProcessingStatus.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResultCandidateProcessingStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ResultCandidateProcessingStatus.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ResultCandidateProcessingStatus()
{
  ResultCandidateProcessingStatus.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResultCandidateProcessingStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ResultCandidateProcessingStatus.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ResultCandidateProcessingStatus@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized ResultCandidateProcessingStatus.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ResultCandidateProcessingStatus@<X0>(unint64_t *a1@<X8>)
{
  result = ResultCandidateProcessingStatus.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ResultCandidateState.resultCandidateId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ResultCandidateState.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for ResultCandidateState.nlLanguageVariantResult : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  return (*(**a2 + 344))(v7);
}

uint64_t ResultCandidateState.pommesInfo.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ResultCandidateState.processingStatus.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.processingStatus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.nlUserParses.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *ResultCandidateState.serverContextUpdateCandidate.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ResultCandidateState.serverContextUpdateCandidate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ResultCandidateState.selected.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.selected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.preExecutionDecision.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.preExecutionDecision.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.preExcutionRuleType.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.preExcutionRuleType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for ResultCandidateState.mitigationDecision : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  return (*(**a2 + 560))(v7);
}

uint64_t key path setter for ResultCandidateState.routingDecision : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingDecision(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(a1, v7, type metadata accessor for RoutingDecision);
  return (*(**a2 + 584))(v7);
}

uint64_t ResultCandidateState.routingDecision.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  swift_beginAccess();
  return outlined init with copy of RoutingDecision(v1 + v3, a1, type metadata accessor for RoutingDecision);
}

uint64_t ResultCandidateState.routingDecision.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  swift_beginAccess();
  outlined assign with take of RoutingDecision(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for ResultCandidateState.nlResponseStatusCode : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*(**a2 + 608))(v8);
}

uint64_t ResultCandidateState.nlResponseStatusCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  swift_beginAccess();
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ResultCandidateState.nlResponseStatusCode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  swift_beginAccess();
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ResultCandidateState.overrideFTMAsPerServer.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.overrideFTMAsPerServer.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.serverFallback.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.serverFallback.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.infoDomainFallback.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.infoDomainFallback.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for ResultCandidateState.fallbackParse : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  return (*(**a2 + 704))(v7);
}

uint64_t key path setter for ResultCandidateState.serverFallbackReason : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  return (*(**a2 + 728))(v7);
}

uint64_t key path setter for ResultCandidateState.siriXRedirectContext : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  return (*(**a2 + 752))(v7);
}

uint64_t key path setter for ResultCandidateState.selectedUserAttribute : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  return (*(**a2 + 800))(v7);
}

uint64_t ResultCandidateState.init(withResultCandidateId:resultCandidateType:userId:voiceIdScore:voiceIdClassification:lowScoreThreshold:fallbackParse:asrLocation:serverFallbackReason:meetsUserSessionThreshold:meetsPersonalRequestThreshold:siriXRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14)
{
  v61 = a7;
  v62 = a6;
  v57[0] = a4;
  v65 = a5;
  v66 = a14;
  v63 = a12;
  v64 = a13;
  v59 = a11;
  v60 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v67 = v57 - v20;
  v21 = (v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v21 = 0;
  v21[1] = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v22 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v23 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
  v24 = (v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v24 = 0;
  v24[1] = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v25 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v26 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v26 - 8) + 56))(v14 + v25, 1, 1, v26);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v27 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v28 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v28 - 8) + 56))(v14 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  v30 = type metadata accessor for ServerFallbackReason();
  (*(*(v30 - 8) + 56))(v14 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v32 = type metadata accessor for SiriXRedirectContext();
  (*(*(v32 - 8) + 56))(v14 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v34 = type metadata accessor for SelectedUserAttributes();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v57[1] = v35 + 56;
  v58 = v36;
  v36(v14 + v33, 1, 1, v34);
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v68 = a3;
  v37 = a3;
  v38 = v57[0];
  outlined init with copy of RoutingDecision(v37, v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, type metadata accessor for ResultCandidateType);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v40 = *MEMORY[0x1E69D0AA0];
  v41 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v41 - 8) + 104))(v14 + v39, v40, v41);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v42 = v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v43 = type metadata accessor for UUID();
  (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  v44 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v45 = type metadata accessor for OSSignpostID();
  (*(*(v45 - 8) + 56))(v42 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v47 = type metadata accessor for UserID();
  v48 = *(v47 - 8);
  (*(v48 + 16))(v14 + v46, v38, v47);
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(a9, v14 + v27, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v49 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v50 = v59;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v59, v14 + v49, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v51 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v52 = *MEMORY[0x1E69D02D8];
  v53 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v53 - 8) + 104))(v14 + v51, v52, v53);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  if ((v60 & 0x100000000) != 0)
  {
    static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  }

  v54 = v67;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a10, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v48 + 8))(v38, v47);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v68, type metadata accessor for ResultCandidateType);
  v58(v54, 0, 1, v34);
  v55 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v54, v14 + v55, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  swift_endAccess();
  return v14;
}

uint64_t ResultCandidateState.description.getter()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v1 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v52 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v7 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for RoutingDecision(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(305);
  MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA86D60);
  MEMORY[0x1E12A1580](v0[2], v0[3]);
  v15 = MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA86D80);
  v56 = (*(*v0 + 288))(v15);
  v57 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v17 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v17);

  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA86DA0);
  type metadata accessor for ResultCandidateType(0);
  _print_unlocked<A, B>(_:_:)();
  v18 = MEMORY[0x1E12A1580](0x617265747475202CLL, 0xEE0022203A65636ELL);
  v19 = (*(*v0 + 888))(v18);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v19 = 0x3E6C696E3CLL;
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v19, v21);

  v22 = MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA86DC0);
  v23 = (*(*v0 + 408))(v22);
  v24 = ResultCandidateProcessingStatus.rawValue.getter(v23);
  MEMORY[0x1E12A1580](v24);

  v25 = MEMORY[0x1E12A1580](0x7463656C6573202CLL, 0xEB000000003A6465);
  v26 = (*(*v0 + 480))(v25);
  v27 = (v26 & 1) == 0;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x1E12A1580](v28, v29);

  v30 = MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA86DE0);
  (*(*v0 + 576))(v30);
  _print_unlocked<A, B>(_:_:)();
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v14, type metadata accessor for RoutingDecision);
  v31 = MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA86E00);
  (*(*v0 + 552))(v31);
  v32 = 0x3E6C696E3CLL;
  v33 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v33);

  MEMORY[0x1E12A1580](0x644972657375202CLL, 0xEA0000000000203ALL);
  type metadata accessor for UserID();
  lazy protocol witness table accessor for type UserID and conformance UserID();
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v34);

  v35 = MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA86E20);
  v36 = (*(*v0 + 648))(v35);
  v37 = (v36 & 1) == 0;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x1E12A1580](v38, v39);

  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA86E40);
  MEMORY[0x1E12A1580](0x3E6C696E3CLL, 0xE500000000000000);
  v40 = MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA86E60);
  (*(*v0 + 792))(v40);
  v41 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v41);

  MEMORY[0x1E12A1580](0x636F4C727361202CLL, 0xEF203A6E6F697461);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v6, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v42 = type metadata accessor for ExecutionLocation();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v6, 1, v42) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
    v44 = 0xE500000000000000;
  }

  else
  {
    v32 = ExecutionLocation.description.getter();
    v44 = v45;
    (*(v43 + 8))(v6, v42);
  }

  MEMORY[0x1E12A1580](v32, v44);

  v46 = MEMORY[0x1E12A1580](0xD000000000000018, 0x80000001DCA86E80);
  v47 = v54;
  (*(*v0 + 720))(v46);
  v48 = Optional.debugDescription.getter();
  v50 = v49;
  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1E12A1580](v48, v50);

  MEMORY[0x1E12A1580](93, 0xE100000000000000);
  return v58;
}

uint64_t key path setter for ResultCandidateState.serverFallbackContextId : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(**a2 + 848))(v7);
}

uint64_t ResultCandidateState.serverFallbackContextId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(a1, v1 + v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  return outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void (*ResultCandidateState.serverFallbackContextId.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v5[11] = v7;
  v5[12] = v9;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v9, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return ResultCandidateState.serverFallbackContextId.modify;
}

void ResultCandidateState.serverFallbackContextId.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(*a1 + 88), v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v5, v6 + v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v3, v6 + v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t key path setter for ResultCandidateState.commitSignpostID : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  return (*(**a2 + 872))(v7);
}

uint64_t ResultCandidateState.commitSignpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  swift_beginAccess();
  v4 = type metadata accessor for ResultCandidateState.LoggingMetadata(0);
  return outlined init with copy of ReferenceResolutionClientProtocol?(v3 + *(v4 + 20), a1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
}

uint64_t ResultCandidateState.commitSignpostID.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  swift_beginAccess();
  v4 = type metadata accessor for ResultCandidateState.LoggingMetadata(0);
  outlined assign with copy of ReferenceResolutionClientProtocol?(a1, v3 + *(v4 + 20), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  swift_endAccess();
  return outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
}

void (*ResultCandidateState.commitSignpostID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v5[11] = v7;
  v5[12] = v9;
  v10 = v1 + v9;
  swift_beginAccess();
  v11 = type metadata accessor for ResultCandidateState.LoggingMetadata(0);
  v5[13] = v11;
  outlined init with copy of ReferenceResolutionClientProtocol?(v10 + *(v11 + 20), v8, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  return ResultCandidateState.commitSignpostID.modify;
}

void ResultCandidateState.commitSignpostID.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72) + v3;
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(*a1 + 88), v5, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v5, v7 + *(v4 + 20), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    swift_endAccess();
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  }

  else
  {
    v8 = *(*a1 + 72) + v3;
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v6, v7 + *(v4 + 20), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    swift_endAccess();
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t ResultCandidateState.utteranceIfAvailable.getter()
{
  v1 = type metadata accessor for GestureInput();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResultCandidateType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of RoutingDecision(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v9, type metadata accessor for ResultCandidateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v9, type metadata accessor for ResultCandidateType);
      return 0;
    }

    else
    {
      v15 = (*(v2 + 32))(v5, v9, v1);
      v11 = MEMORY[0x1E12A00D0](v15);
      (*(v2 + 8))(v5, v1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = *v9;
    v12 = v9[1];
    v13 = v9[3];
    v14 = v9[5];
  }

  else
  {
    v11 = (*(**v9 + 176))();
  }

  return v11;
}

uint64_t ResultCandidateState.speechContextIfApplicable.getter()
{
  v1 = type metadata accessor for ResultCandidateType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v4, type metadata accessor for ResultCandidateType);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v4;
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v4, type metadata accessor for ResultCandidateType);
  return 0;
}

uint64_t ResultCandidateState.trpContextIfApplicable.getter()
{
  v1 = type metadata accessor for ResultCandidateType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of RoutingDecision(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v4, type metadata accessor for ResultCandidateType);
  if (swift_getEnumCaseMultiPayload())
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v4, type metadata accessor for ResultCandidateType);
    return 0;
  }

  v6 = *v4;
  type metadata accessor for TRPContext();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t ResultCandidateState.directActionContextIfApplicable.getter()
{
  v1 = type metadata accessor for ResultCandidateType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of RoutingDecision(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v4, type metadata accessor for ResultCandidateType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    result = *v4;
    v6 = v4[1];
    v7 = v4[2];
  }

  else
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v4, type metadata accessor for ResultCandidateType);
    return 0;
  }

  return result;
}

uint64_t ResultCandidateState.deinit()
{
  v1 = *(v0 + 24);

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, type metadata accessor for ResultCandidateType);
  v2 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v3 = type metadata accessor for UserID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult + 8);

  v7 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo);

  v8 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision, type metadata accessor for RoutingDecision);
  v9 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v10 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata, type metadata accessor for ResultCandidateState.LoggingMetadata);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  return v0;
}

uint64_t ResultCandidateState.__deallocating_deinit()
{
  ResultCandidateState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *SpeechContext.aceRecognition.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SpeechContext.repetitionResults.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t SpeechContext.repetitionResults.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t SpeechContext.endpointMode.getter()
{
  swift_beginAccess();
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t SpeechContext.endpointMode.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t SpeechContext.init(speechPackage:)(void *a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 16) = a1;
  v2 = a1;
  v3 = [v2 recognition];
  v4 = [v3 aceRecognition];

  *(v1 + 24) = v4;
  return v1;
}

uint64_t outlined init with copy of RoutingDecision(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SpeechContext.utterance.getter()
{
  v1 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 112))(v4);
  v8 = [v7 recognition];

  if (v8)
  {
    v9 = AFSpeechRecognition.toAsrHypotheses()();

    if (v9[2])
    {
      (*(v2 + 16))(v6, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

      v10 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
      (*(v2 + 8))(v6, v1);
      return v10;
    }
  }

  return 0;
}

void *AFSpeechRecognition.toAsrHypotheses()()
{
  v1 = v0;
  v138 = type metadata accessor for UUID();
  v2 = *(v138 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v121 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v141 = *(v14 - 8);
  v15 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v136 = v121 - v19;
  v20 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation();
  v147 = *(v20 - 8);
  v21 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v154 = v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v149 = v121 - v25;
  v26 = [v1 utterances];
  if (!v26)
  {
LABEL_124:
    if (one-time initialization token for conversationBridge != -1)
    {
      goto LABEL_151;
    }

    goto LABEL_125;
  }

  v27 = v26;
  v168 = v2;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechUtterance, 0x1E698D250);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = [v1 phrases];
  if (!v29)
  {

    goto LABEL_124;
  }

  v30 = v29;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
  v155 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v148 = v28;
  if (v28 >> 62)
  {
    v31 = __CocoaSet.count.getter();
  }

  else
  {
    v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v136;
  if (!v31)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v33 = 0;
  v153 = v148 & 0xC000000000000001;
  v135 = v148 & 0xFFFFFFFFFFFFFF8;
  v134 = v148 + 32;
  v34 = v155 & 0xFFFFFFFFFFFFFF8;
  v167 = v155 & 0xFFFFFFFFFFFFFF8;
  if (v155 < 0)
  {
    v34 = v155;
  }

  v121[1] = v34;
  v164 = v155 & 0xC000000000000001;
  v145 = (v147 + 16);
  v144 = v147 + 8;
  v143 = v147 + 32;
  v128 = (v168 + 8);
  v127 = (v10 + 48);
  v122 = (v10 + 32);
  v126 = (v141 + 16);
  v125 = v141 + 8;
  v124 = v141 + 32;
  v151 = MEMORY[0x1E69E7CC0];
  v133 = v8;
  v132 = v9;
  v131 = v13;
  v130 = v14;
  v129 = v17;
  v146 = v20;
  v152 = v31;
  while (1)
  {
    if (v153)
    {
      v35 = v33;
      v36 = MEMORY[0x1E12A1FE0](v33, v148);
      v37 = __OFADD__(v35, 1);
      v38 = v35 + 1;
      if (v37)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v33 >= *(v135 + 16))
      {
        goto LABEL_147;
      }

      v39 = v33;
      v36 = *(v134 + 8 * v33);
      v37 = __OFADD__(v39, 1);
      v38 = v39 + 1;
      if (v37)
      {
        goto LABEL_134;
      }
    }

    v160 = v38;
    v163 = v36;
    v40 = [v36 interpretationIndices];
    if (!v40)
    {
      goto LABEL_119;
    }

    v41 = v40;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v166 = v42 >> 62;
    v43 = v42 >> 62 ? __CocoaSet.count.getter() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v155 >> 62)
    {
      if (v43 != __CocoaSet.count.getter())
      {
LABEL_118:

LABEL_119:
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        __swift_project_value_buffer(v113, static Logger.executor);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_1DC659000, v114, v115, "Phrase length is not the same as interpretationIndices.", v116, 2u);
          MEMORY[0x1E12A2F50](v116, -1, -1);
        }

        goto LABEL_10;
      }

      v169 = 0;
      v170 = 0xE000000000000000;
      v43 = __CocoaSet.count.getter();
    }

    else
    {
      if (v43 != *(v167 + 16))
      {
        goto LABEL_118;
      }

      v169 = 0;
      v170 = 0xE000000000000000;
    }

    v44 = v42 & 0xFFFFFFFFFFFFFF8;
    v168 = v42 & 0xFFFFFFFFFFFFFF8;
    if (v42 < 0)
    {
      v44 = v42;
    }

    v158 = v44;
    if (v43)
    {
      break;
    }

    v162 = MEMORY[0x1E69E7CC0];
LABEL_106:

    Siri_Nlu_External_AsrHypothesis.init()();
    String.sanitize()();
    Siri_Nlu_External_AsrHypothesis.utterance.setter();
    [v163 confidenceScore];
    Siri_Nlu_External_AsrHypothesis.probability.setter();
    MEMORY[0x1E129C1A0](v162);
    v100 = v137;
    UUID.init()();
    v101 = v133;
    static ConversionUtils.convertUuidToProto(uuid:)();
    (*v128)(v100, v138);
    v102 = *v127;
    v103 = v132;
    if ((*v127)(v101, 1, v132) == 1)
    {
      Siri_Nlu_External_UUID.init()();
      v104 = v102(v101, 1, v103);
      v105 = v130;
      v106 = v129;
      if (v104 != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
      }
    }

    else
    {
      (*v122)(v131, v101, v103);
      v105 = v130;
      v106 = v129;
    }

    Siri_Nlu_External_AsrHypothesis.id.setter();
    (*v126)(v106, v32, v105);
    v107 = v151;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1, v107);
    }

    v109 = v107[2];
    v108 = v107[3];
    v151 = v107;
    v110 = v163;
    if (v109 >= v108 >> 1)
    {
      v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v108 > 1, v109 + 1, 1, v151);
      v110 = v163;
    }

    v111 = v141;
    (*(v141 + 8))(v32, v105);
    v112 = v151;
    v151[2] = v109 + 1;
    (*(v111 + 32))(v112 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v109, v106, v105);
LABEL_10:
    v33 = v160;
    if (v160 == v152)
    {

      return v151;
    }
  }

  v45 = 0;
  v159 = 0;
  v165 = v42 & 0xC000000000000001;
  v162 = MEMORY[0x1E69E7CC0];
  v46 = v155;
  v156 = v42;
  v161 = v43;
LABEL_27:
  v47 = v45 + 4;
  while (1)
  {
    v48 = v47 - 4;
    if (v164)
    {
      v49 = MEMORY[0x1E12A1FE0](v47 - 4, v46);
    }

    else
    {
      if (v48 >= *(v167 + 16))
      {
        goto LABEL_132;
      }

      v49 = *(v46 + 8 * v47);
    }

    v50 = v49;
    v45 = v47 - 3;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v166)
    {
      if (v48 == __CocoaSet.count.getter())
      {
LABEL_104:

LABEL_105:
        v32 = v136;
        goto LABEL_106;
      }
    }

    else if (v48 == *(v168 + 16))
    {
      goto LABEL_104;
    }

    if (v165)
    {
      v51 = MEMORY[0x1E12A1FE0](v47 - 4, v42);
    }

    else
    {
      if (v48 >= *(v168 + 16))
      {
        goto LABEL_133;
      }

      v51 = *(v42 + 8 * v47);
    }

    v52 = v51;
    v53 = [v50 interpretations];
    if (v53)
    {
      v54 = v53;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechInterpretation, 0x1E698D220);
      v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = [v52 integerValue];
      if (v55 >> 62)
      {
        if (v56 >= __CocoaSet.count.getter())
        {
LABEL_56:

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v66 = type metadata accessor for Logger();
          __swift_project_value_buffer(v66, static Logger.conversationBridge);
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_1DC659000, v67, v68, "Invalid interpretation index.", v69, 2u);
            MEMORY[0x1E12A2F50](v69, -1, -1);
          }

          v42 = v156;
          v43 = v161;
          goto LABEL_29;
        }
      }

      else if (v56 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v57 = [v52 integerValue];
      if ((v55 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x1E12A1FE0](v57, v55);
      }

      else
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_135;
        }

        if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v58 = *(v55 + 8 * v57 + 32);
      }

      v59 = v58;
      v60 = [v58 tokens];
      if (!v60)
      {

        v43 = v161;
        goto LABEL_29;
      }

      v61 = v60;
      v157 = v59;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechToken, 0x1E698D248);
      v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = v62;
      if (!(v62 >> 62))
      {
        v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v65 = v157;
        if (v64)
        {
          goto LABEL_63;
        }

        goto LABEL_51;
      }

      v64 = __CocoaSet.count.getter();
      v65 = v157;
      if (!v64)
      {
LABEL_51:

        v43 = v161;
        goto LABEL_29;
      }

LABEL_63:
      v70 = 0;
      v142 = v62 & 0xC000000000000001;
      v123 = v62 & 0xFFFFFFFFFFFFFF8;
      v140 = v62;
      v139 = v64;
      while (2)
      {
        if (v142)
        {
          v71 = MEMORY[0x1E12A1FE0](v70, v63);
        }

        else
        {
          if (v70 >= *(v123 + 16))
          {
            goto LABEL_149;
          }

          v71 = *(v63 + 8 * v70 + 32);
        }

        v72 = v71;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_137;
        }

        Siri_Nlu_External_AsrTokenInformation.init()();
        [v72 removeSpaceBefore];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.setter();
        v73 = Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.getter();
        v150 = v70 + 1;
        if (v73)
        {
          v74 = specialized BidirectionalCollection.last.getter(v169, v170);
          if (v75)
          {
            if (v74 == 32 && v75 == 0xE100000000000000)
            {

              goto LABEL_75;
            }

            v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v77)
            {
LABEL_75:
              if (!v159)
              {
                goto LABEL_150;
              }

              --v159;
              specialized RangeReplaceableCollection<>.removeLast()(v76);
            }
          }
        }

        v78 = [v72 text];
        if (v78)
        {
          v79 = v78;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.postItnText.setter();
        v80 = Siri_Nlu_External_AsrTokenInformation.postItnText.getter();
        MEMORY[0x1E12A1580](v80);

        v81 = [v72 phoneSequence];
        if (v81)
        {
          v82 = v81;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.phoneSequence.setter();
        v83 = [v72 ipaPhoneSequence];
        if (v83)
        {
          v84 = v83;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.ipaPhoneSequence.setter();
        [v72 removeSpaceAfter];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.setter();
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.getter();
        Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.setter();
        [v72 confidenceScore];
        Siri_Nlu_External_AsrTokenInformation.confidenceScore.setter();
        Siri_Nlu_External_AsrTokenInformation.beginIndex.setter();
        v85 = Siri_Nlu_External_AsrTokenInformation.beginIndex.getter();
        result = [v72 text];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v87 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v88 = String.count.getter();

        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_138;
        }

        if (HIDWORD(v88))
        {
          goto LABEL_139;
        }

        if (__CFADD__(v85, v88))
        {
          goto LABEL_140;
        }

        v89 = v149;
        Siri_Nlu_External_AsrTokenInformation.endIndex.setter();
        v159 = Siri_Nlu_External_AsrTokenInformation.endIndex.getter();
        v90 = Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.getter();
        v91 = v146;
        if (v90)
        {
          if (v159 == -1)
          {
            goto LABEL_148;
          }

          ++v159;
          MEMORY[0x1E12A1580](32, 0xE100000000000000);
        }

        [v72 startTime];
        v93 = v92 * 1000.0;
        if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        if (v93 <= -2147483650.0)
        {
          goto LABEL_142;
        }

        if (v93 >= 2147483650.0)
        {
          goto LABEL_143;
        }

        Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.setter();
        [v72 endTime];
        v95 = v94 * 1000.0;
        if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_144;
        }

        if (v95 <= -2147483650.0)
        {
          goto LABEL_145;
        }

        if (v95 >= 2147483650.0)
        {
          goto LABEL_146;
        }

        Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.setter();
        (*v145)(v154, v89, v91);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162[2] + 1, 1, v162);
        }

        v97 = v162[2];
        v96 = v162[3];
        if (v97 >= v96 >> 1)
        {
          v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96 > 1, v97 + 1, 1, v162);
        }

        v98 = v147;
        (*(v147 + 8))(v89, v91);
        v99 = v162;
        v162[2] = v97 + 1;
        (*(v98 + 32))(v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v97, v154, v91);
        ++v70;
        v46 = v155;
        v42 = v156;
        v63 = v140;
        if (v150 == v139)
        {

          v43 = v161;
          v32 = v136;
          if (v45 != v161)
          {
            goto LABEL_27;
          }

          goto LABEL_106;
        }

        continue;
      }
    }

LABEL_29:
    ++v47;
    if (v45 == v43)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  swift_once();
LABEL_125:
  v117 = type metadata accessor for Logger();
  __swift_project_value_buffer(v117, static Logger.conversationBridge);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_1DC659000, v118, v119, "AFSpeechRecognition utterances/phrases is nil", v120, 2u);
    MEMORY[0x1E12A2F50](v120, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t SpeechContext.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SpeechContext.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t TRPContext.selectedTCUId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TRPContext.selectedTCUId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t TRPContext.pommesTCUId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t TRPContext.pommesTCUId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

id TRPContext.speechPackage.getter()
{
  v1 = v0;
  v2 = (*(*v0 + 216))();
  if (!v3)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_26;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[7], v1[8], v39);
    _os_log_impl(&dword_1DC659000, v20, v21, "Warning: Selected TCU is not known for TRP Candidate %s, falling back on last TCU in the list for speechPackage.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    v24 = v22;
    goto LABEL_24;
  }

  v4 = v2;
  v5 = v3;
  v6 = v0[9];
  v34 = v0;
  v35 = *(v6 + 16);
  if (!v35)
  {
LABEL_21:
    if (one-time initialization token for conversationBridge != -1)
    {
LABEL_30:
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.conversationBridge);
    v1 = v34;

    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v29))
    {

      goto LABEL_26;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34[7], v34[8], v39);
    *(v30 + 12) = 2080;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, v39);

    *(v30 + 14) = v32;
    _os_log_impl(&dword_1DC659000, v20, v29, "Warning: TRP Candidate %s does not contain speech info for selected TCU ID %s, falling back on last TCU in the list for speechPackage.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v31, -1, -1);
    v24 = v30;
LABEL_24:
    MEMORY[0x1E12A2F50](v24, -1, -1);
LABEL_26:

    v33 = v1[2];

    return v33;
  }

  v7 = 0;
  v8 = v6 + 32;
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v8, v38, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v38, &v36, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v9 = v36;
    v10 = [v36 tcuId];

    if (!v10)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      goto LABEL_5;
    }

    v11 = v5;
    v12 = v4;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = v13;
    v4 = v12;
    v5 = v11;
    if (v16 == v4 && v11 == v15)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_5:
    ++v7;
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v8 += 48;
    if (v35 == v7)
    {
      goto LABEL_21;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
LABEL_19:
  *v39 = v38[0];
  v40 = v38[1];
  v41 = v38[2];
  v25 = *&v38[0];
  v26 = [*&v38[0] speechPackage];

  __swift_destroy_boxed_opaque_existential_1Tm(&v39[1]);
  if (!v26)
  {
    goto LABEL_21;
  }

  return v26;
}

uint64_t TRPContext.selectedTCUPackage.getter()
{
  result = (*(*v0 + 216))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v0[9];
  v16 = *(v4 + 16);
  if (!v16)
  {
LABEL_14:

    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = v4 + 32;
  while (v6 < *(v4 + 16))
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, v19, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v19, &v17, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v8 = v17;
    v9 = [v17 tcuId];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == v5 && v3 == v12)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_17:

        v20[0] = v19[0];
        v20[1] = v19[1];
        v20[2] = v19[2];
        v15 = *&v19[0];
        __swift_destroy_boxed_opaque_existential_1Tm(v20 + 1);
        return v15;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    ++v6;
    result = outlined destroy of ReferenceResolutionClientProtocol?(v19, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v7 += 48;
    if (v16 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id TRPContext.init(requestMessage:)(void *a1)
{
  v2 = v1;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  v4 = TRPCandidateRequestMessage.tcuToContextList.getter();
  v5 = *(v4 + 16);
  if (!v5)
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
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "Could not build TRPContext from TRPCandidateRequestMessage: No TCU's found", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v19 = *(v2 + 88);

    v20 = *(v2 + 104);

    type metadata accessor for TRPContext();
    swift_deallocPartialClassInstance();
    return 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + 48 * v5 - 16, &v21, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);

  v6 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v7 = a1;
  v8 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v10 = v9;

  *(v2 + 56) = v8;
  *(v2 + 64) = v10;
  *(v2 + 72) = TRPCandidateRequestMessage.tcuToContextList.getter();
  result = [v6 speechPackage];
  if (result)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
    *(v2 + 16) = result;
    v12 = result;
    v13 = [v12 recognition];
    v14 = [v13 aceRecognition];

    *(v2 + 24) = v14;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t TRPContext.__ivar_destroyer()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];
}

uint64_t TRPContext.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return v0;
}

uint64_t TRPContext.__deallocating_deinit()
{
  TRPContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t TextContext.utterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TextContext.trpId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TextContext.tcuId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

Swift::String __swiftcall String.sanitize()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3;
  v18 = v2;
  v16[2] = 0x2B5D735C5BLL;
  v16[3] = 0xE500000000000000;
  v16[0] = 32;
  v16[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v9;
  static CharacterSet.whitespacesAndNewlines.getter();
  v10 = StringProtocol.trimmingCharacters(in:)();
  v12 = v11;
  (*(v5 + 8))(v8, v4);

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TTResponseMessage.MitigationDecision(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x1E69D0270])
  {
    return 0x64657463656C6573;
  }

  if (v6 == *MEMORY[0x1E69D0278])
  {
    return 0x657461676974696DLL;
  }

  if (v6 == *MEMORY[0x1E69D0268])
  {
    v8 = 1652121965;
    return v8 | 0x74694D6500000000;
  }

  if (v6 == *MEMORY[0x1E69D0260])
  {
    v8 = 1668444006;
    return v8 | 0x74694D6500000000;
  }

  (*(v2 + 8))(v5, a1);
  return 0;
}

uint64_t ResultCandidateState.pommesCandidateId.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ResultCandidateType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of RoutingDecision(v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v6, type metadata accessor for ResultCandidateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v6, type metadata accessor for ResultCandidateType);
    }

    else
    {
      v30 = type metadata accessor for GestureInput();
      (*(*(v30 - 8) + 8))(v6, v30);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v23 = v6[1];
    v24 = v6[3];
    v25 = v6[5];
    if (v25)
    {
      v26 = v6[4];

      v27 = *(v1 + 16);
      v28 = *(v1 + 24);
      *a1 = v27;
      a1[1] = v28;
      a1[2] = v26;
      a1[3] = v25;
      v29 = MEMORY[0x1E69CE640];
LABEL_18:
      v33 = *v29;
      v34 = type metadata accessor for PommesCandidateId();
      v35 = *(v34 - 8);
      (*(v35 + 104))(a1, v33, v34);
      (*(v35 + 56))(a1, 0, 1, v34);
    }

LABEL_17:
    v31 = *(v1 + 16);
    v32 = *(v1 + 24);
    *a1 = v31;
    a1[1] = v32;
    v29 = MEMORY[0x1E69CE638];
    goto LABEL_18;
  }

  v8 = *v6;
  type metadata accessor for TRPContext();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_17;
  }

  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = *(*v9 + 216);

  v14 = v12(v13);
  v16 = v15;

  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = v17;
  a1[3] = v18;
  v19 = *MEMORY[0x1E69CE640];
  v20 = type metadata accessor for PommesCandidateId();
  v21 = *(v20 - 8);
  (*(v21 + 104))(a1, v19, v20);
  return (*(v21 + 56))(a1, 0, 1, v20);
}

uint64_t specialized ResultCandidateProcessingStatus.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t outlined assign with take of RoutingDecision(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingDecision(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus()
{
  result = lazy protocol witness table cache variable for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus;
  if (!lazy protocol witness table cache variable for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ResultCandidateType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v8 = a2[1];
        *a1 = *a2;
        a1[1] = v8;
        a1[2] = a2[2];
      }

      else
      {
        v13 = type metadata accessor for GestureInput();
        (*(*(v13 - 8) + 16))(a1, a2, v13);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      v10 = a2[3];
      a1[2] = a2[2];
      a1[3] = v10;
      v11 = a2[4];
      v12 = a2[5];
      a1[4] = v11;
      a1[5] = v12;
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for ResultCandidateType(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v9 = a1[1];

      v10 = a1[2];
LABEL_15:
    }

    if (result == 3)
    {
      v6 = type metadata accessor for GestureInput();
      v7 = *(*(v6 - 8) + 8);

      return v7(a1, v6);
    }
  }

  else
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = a1[1];

      v4 = a1[3];

      v5 = a1[5];
      goto LABEL_15;
    }

    v8 = *a1;
  }

  return result;
}

void *initializeWithCopy for ResultCandidateType(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = a2[1];
      *a1 = *a2;
      a1[1] = v5;
      a1[2] = a2[2];
    }

    else
    {
      v10 = type metadata accessor for GestureInput();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = a2[3];
    a1[2] = a2[2];
    a1[3] = v7;
    v8 = a2[4];
    v9 = a2[5];
    a1[4] = v8;
    a1[5] = v9;
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for ResultCandidateType(void *a1, void *a2)
{
  if (a1 != a2)
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for ResultCandidateType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
      }

      else
      {
        v5 = type metadata accessor for GestureInput();
        (*(*(v5 - 8) + 16))(a1, a2, v5);
      }
    }

    else
    {
      *a1 = *a2;
      if (EnumCaseMultiPayload)
      {
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
      }

      else
      {
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for ResultCandidateType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = type metadata accessor for GestureInput();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for ResultCandidateType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for ResultCandidateType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = type metadata accessor for GestureInput();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for ResultCandidateType()
{
  result = type metadata accessor for GestureInput();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RoutingDecision(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for RoutingDecision(uint64_t a1)
{
  v2 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RoutingDecision(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for RoutingDecision(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for RoutingDecision);
    swift_getEnumCaseMultiPayload();
    v4 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for RoutingDecision(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for RoutingDecision(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for RoutingDecision);
    swift_getEnumCaseMultiPayload();
    v4 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    (*(*(v4 - 8) + 32))(a1, a2, v4);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for RoutingDecision()
{
  result = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata completion function for ResultCandidateState()
{
  v0 = type metadata accessor for ResultCandidateType(319);
  if (v1 <= 0x3F)
  {
    v24 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UserID();
    if (v3 <= 0x3F)
    {
      v25 = *(v2 - 8) + 64;
      type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for ExecutionLocation?, MEMORY[0x1E69D35D8]);
      if (v5 <= 0x3F)
      {
        v26 = *(v4 - 8) + 64;
        type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for Siri_Nlu_External_LanguageVariantResult?, MEMORY[0x1E69D0BD8]);
        if (v7 <= 0x3F)
        {
          v27 = *(v6 - 8) + 64;
          type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for TTResponseMessage.MitigationDecision?, MEMORY[0x1E69D0280]);
          if (v9 <= 0x3F)
          {
            v28 = *(v8 - 8) + 64;
            v10 = type metadata accessor for RoutingDecision(319);
            if (v11 <= 0x3F)
            {
              v29 = *(v10 - 8) + 64;
              v12 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
              if (v13 <= 0x3F)
              {
                v30 = *(v12 - 8) + 64;
                type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x1E69D0BE8]);
                if (v15 <= 0x3F)
                {
                  v31 = *(v14 - 8) + 64;
                  type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for ServerFallbackReason?, MEMORY[0x1E69D0790]);
                  if (v17 <= 0x3F)
                  {
                    v32 = *(v16 - 8) + 64;
                    type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for SiriXRedirectContext?, MEMORY[0x1E69CFA50]);
                    if (v19 <= 0x3F)
                    {
                      v33 = *(v18 - 8) + 64;
                      v20 = type metadata accessor for ResultCandidateState.LoggingMetadata(319);
                      if (v21 <= 0x3F)
                      {
                        v34 = *(v20 - 8) + 64;
                        type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for SelectedUserAttributes?, MEMORY[0x1E69D0860]);
                        if (v23 <= 0x3F)
                        {
                          v35 = *(v22 - 8) + 64;
                          swift_updateClassMetadata2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t destroy for DirectActionContext(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

void *initializeBufferWithCopyOfBuffer for DirectActionContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for DirectActionContext(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a1[2];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for DirectActionContext(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DirectActionContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DirectActionContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t destroy for TextContext(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];
}

void *initializeWithCopy for TextContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for TextContext(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a2[5];
  v7 = a1[5];
  a1[5] = v6;

  return a1;
}

void *assignWithTake for TextContext(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v8 = a2[5];
  v9 = a1[5];
  a1[4] = a2[4];
  a1[5] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for TextContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ResultCandidateState.LoggingMetadata(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = type metadata accessor for OSSignpostID();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }
  }

  return a1;
}

uint64_t destroy for ResultCandidateState.LoggingMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for OSSignpostID();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *initializeWithCopy for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *assignWithCopy for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(&a1[v12], &a2[v12], v13);
      return a1;
    }

    (*(v14 + 8))(&a1[v12], v13);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    return a1;
  }

  (*(v14 + 16))(&a1[v12], &a2[v12], v13);
  (*(v14 + 56))(&a1[v12], 0, 1, v13);
  return a1;
}

char *initializeWithTake for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *assignWithTake for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 40))(&a1[v12], &a2[v12], v13);
      return a1;
    }

    (*(v14 + 8))(&a1[v12], v13);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    return a1;
  }

  (*(v14 + 32))(&a1[v12], &a2[v12], v13);
  (*(v14 + 56))(&a1[v12], 0, 1, v13);
  return a1;
}

void type metadata completion function for ResultCandidateState.LoggingMetadata()
{
  type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for OSSignpostID?, MEMORY[0x1E69E93B8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void type metadata accessor for ExecutionLocation?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t static ReuseEagerChildRequestForIFFeatureFlag.isEnabled.getter()
{
  v2[3] = &type metadata for ReuseEagerChildRequestForIFFeatureFlag;
  v2[4] = lazy protocol witness table accessor for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag();
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t lazy protocol witness table accessor for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag()
{
  result = lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag;
  if (!lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag;
  if (!lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag);
  }

  return result;
}

Swift::Int ReuseEagerChildRequestForIFFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t NLRoutingDecisionMessage.RoutingDecision.genAIFallbackSuppressReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v12);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E69D02E8])
  {
    (*(v5 + 96))(v8, v4);
    (*(v10 + 32))(v14, v8, v9);
    NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.genAIFallbackSuppressReason.getter();
    return (*(v10 + 8))(v14, v9);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v16 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t RunLocation.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F69747563657845;
  }

  else
  {
    return 0xD000000000000010;
  }
}

SiriKitRuntime::RunLocation_optional __swiftcall RunLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLocation.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_RunLocation_executionDevice;
  }

  else
  {
    v4.value = SiriKitRuntime_RunLocation_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunLocation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F69747563657845;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = 0x80000001DCA7AA10;
  }

  else
  {
    v5 = 0xEF6563697665446ELL;
  }

  if (*a2)
  {
    v6 = 0x6F69747563657845;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = 0xEF6563697665446ELL;
  }

  else
  {
    v7 = 0x80000001DCA7AA10;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RunLocation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RunLocation()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RunLocation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RunLocation@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLocation.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RunLocation(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DCA7AA10;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x6F69747563657845;
    v2 = 0xEF6563697665446ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type RunLocation and conformance RunLocation()
{
  result = lazy protocol witness table cache variable for type RunLocation and conformance RunLocation;
  if (!lazy protocol witness table cache variable for type RunLocation and conformance RunLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLocation and conformance RunLocation);
  }

  return result;
}

char *RunSiriKitExecutorProcessor.__allocating_init(command:executionContextInfo:reply:executionOutputSubmitter:executionClient:contextUpdater:assistantId:source:requestId:instrumentationUtil:requestDispatcherServiceHelper:resultCandidateId:flowPluginInfo:requestType:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:sessionId:sessionConfiguration:plannerInvocationId:messagePublisher:isMuxEnabled:userSessionState:muxContextMessage:previousUserId:remoteRequestWasMadeInSession:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, char a27, uint64_t a28, void *a29, uint64_t a30, char a31)
{
  v32 = v31;
  v38 = *(v32 + 48);
  v39 = *(v32 + 52);
  v40 = swift_allocObject();
  v41 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v59 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v42 = type metadata accessor for UserID();
  (*(*(v42 - 8) + 56))(&v40[v41], 1, 1, v42);
  v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall] = 0;
  v43 = &v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId];
  *v43 = 0;
  *(v43 + 1) = 0;
  v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished] = 0;
  v44 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  *&v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo] = 0;
  v45 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v46 = swift_allocObject();
  *(v46 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *&v40[v45] = v46;
  *(v46 + 24) = v47;
  *(v40 + 2) = a1;
  *(v40 + 3) = a2;
  *(v40 + 4) = a3;
  *(v40 + 5) = a4;
  *(v40 + 6) = a5;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, (v40 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, (v40 + 96), &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source] = a10;
  *(v40 + 19) = a8;
  *(v40 + 20) = a9;
  *(v40 + 17) = a11;
  *(v40 + 18) = a12;
  *&v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter] = 0;
  *&v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil] = a13;
  *&v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper] = a14;
  swift_beginAccess();
  *v43 = a15;
  *(v43 + 1) = a16;
  swift_beginAccess();
  *&v40[v44] = a17;
  v48 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType;
  v64 = type metadata accessor for RequestType();
  v49 = *(v64 - 8);
  (*(v49 + 16))(&v40[v48], a18, v64);
  swift_beginAccess();
  v62 = a1;
  v61 = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(a3, a4);
  v60 = a17;

  swift_unknownObjectRetain();
  outlined assign with copy of UserID?(a19, &v40[v59]);
  swift_endAccess();
  v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold] = a20;
  v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold] = a21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a22, &v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a23, &v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v50 = &v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId];
  *v50 = a24;
  *(v50 + 1) = a25;
  outlined init with copy of ReferenceResolutionClientProtocol(a26, &v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher]);
  v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled] = a27;
  *&v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage] = a29;
  outlined init with copy of ReferenceResolutionClientProtocol?(a30, &v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v51 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState;
  v52 = type metadata accessor for UserSessionState();
  v53 = *(v52 - 8);
  (*(v53 + 16))(&v40[v51], a28, v52);
  v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession] = a31;
  type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
  v54 = swift_allocObject();
  swift_weakInit();
  *(v54 + 24) = a14;
  *&v40[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate] = v54;
  v55 = a29;
  swift_unknownObjectRetain();
  RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)();

  swift_unknownObjectRelease();

  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3);
  outlined destroy of ReferenceResolutionClientProtocol?(a30, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v53 + 8))(a28, v52);
  __swift_destroy_boxed_opaque_existential_1Tm(a26);
  outlined destroy of ReferenceResolutionClientProtocol?(a23, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v49 + 8))(a18, v64);
  outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v40;
}

uint64_t RSKESource.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x65746F6D6572;
  }

  return 0x726576726573;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RSKESource(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65746F6D6572;
  if (v2 != 1)
  {
    v3 = 0x726576726573;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C61636F6CLL;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x65746F6D6572;
  if (*a2 != 1)
  {
    v6 = 0x726576726573;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C61636F6CLL;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RSKESource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RSKESource()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RSKESource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RSKESource@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RSKESource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RSKESource(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x65746F6D6572;
  if (v2 != 1)
  {
    v4 = 0x726576726573;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C61636F6CLL;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t RunSiriKitExecutorProcessor.reply.getter()
{
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(v1, *(v0 + 40));
  return v1;
}

uint64_t RunSiriKitExecutorProcessor.requestId.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t RunSiriKitExecutorProcessor.assistantId.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t RunSiriKitExecutorProcessor.plannerInvocationId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId + 8);

  return v1;
}

uint64_t RunSiriKitExecutorProcessor.requestType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *RunSiriKitExecutorProcessor.muxContextMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage);
  v2 = v1;
  return v1;
}

uint64_t key path setter for RunSiriKitExecutorProcessor.userId : RunSiriKitExecutorProcessor(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return (*(**a2 + 336))(v7);
}

uint64_t RunSiriKitExecutorProcessor.userId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  swift_beginAccess();
  outlined assign with take of UserID?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t RunSiriKitExecutorProcessor.meetsUserSessionThreshold.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RunSiriKitExecutorProcessor.outputCounter.setter(int a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RunSiriKitExecutorProcessor.resultCandidateId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void key path setter for RunSiriKitExecutorProcessor.flowPluginInfo : RunSiriKitExecutorProcessor(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *RunSiriKitExecutorProcessor.init(command:executionContextInfo:reply:executionOutputSubmitter:executionClient:contextUpdater:assistantId:source:requestId:instrumentationUtil:requestDispatcherServiceHelper:resultCandidateId:flowPluginInfo:requestType:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:sessionId:sessionConfiguration:plannerInvocationId:messagePublisher:isMuxEnabled:userSessionState:muxContextMessage:previousUserId:remoteRequestWasMadeInSession:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, char a27, uint64_t a28, void *a29, uint64_t a30, char a31)
{
  v32 = v31;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v56 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v39 = type metadata accessor for UserID();
  (*(*(v39 - 8) + 56))(&v32[v38], 1, 1, v39);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall] = 0;
  v40 = &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId];
  *v40 = 0;
  *(v40 + 1) = 0;
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished] = 0;
  v41 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo] = 0;
  v42 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v43 = swift_allocObject();
  *(v43 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *&v32[v42] = v43;
  *(v43 + 24) = v44;
  *(v32 + 2) = a1;
  *(v32 + 3) = a2;
  v58 = a3;
  *(v32 + 4) = a3;
  *(v32 + 5) = a4;
  *(v32 + 6) = a5;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, (v32 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, (v32 + 96), &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source] = a10;
  *(v32 + 19) = a8;
  *(v32 + 20) = a9;
  *(v32 + 17) = a11;
  *(v32 + 18) = a12;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter] = 0;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil] = a13;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper] = a14;
  swift_beginAccess();
  *v40 = a15;
  *(v40 + 1) = a16;
  swift_beginAccess();
  *&v32[v41] = a17;
  v45 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType;
  v62 = type metadata accessor for RequestType();
  v46 = *(v62 - 8);
  (*(v46 + 16))(&v32[v45], a18, v62);
  swift_beginAccess();
  v60 = a1;
  v59 = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(a3, a4);
  v57 = a17;

  swift_unknownObjectRetain();
  outlined assign with copy of UserID?(a19, &v32[v56]);
  swift_endAccess();
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold] = a20;
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold] = a21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a22, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a23, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v47 = &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId];
  *v47 = a24;
  *(v47 + 1) = a25;
  outlined init with copy of ReferenceResolutionClientProtocol(a26, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher]);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled] = a27;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage] = a29;
  outlined init with copy of ReferenceResolutionClientProtocol?(a30, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState;
  v49 = type metadata accessor for UserSessionState();
  v50 = *(v49 - 8);
  (*(v50 + 16))(&v32[v48], a28, v49);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession] = a31;
  type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
  v51 = swift_allocObject();
  swift_weakInit();
  *(v51 + 24) = a14;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate] = v51;
  v52 = a29;
  swift_unknownObjectRetain();
  RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)();

  swift_unknownObjectRelease();

  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v58);
  outlined destroy of ReferenceResolutionClientProtocol?(a30, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v50 + 8))(a28, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(a26);
  outlined destroy of ReferenceResolutionClientProtocol?(a23, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v46 + 8))(a18, v62);
  outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v32;
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.handleCancel()()
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
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Cancelling RSKE..", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  if ((*(*v1 + 448))())
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v6, "RSKE request already finished. Ignoring cancellation..", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  else
  {
    if (v1[18])
    {
      v8 = v1[17];
      v9 = v1[18];
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    type metadata accessor for CancelExecutionTurn();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = 0;
    v11 = v1[10];
    v12 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v11);
    v13 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate);
    v14 = *(v12 + 40);

    v14(v10, v13, &protocol witness table for RunSiriKitExecutorProcessorExecutionDelegate, v11, v12);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = CancelExecutionTurn.debugDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v15, v16, "Successfully sent: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    else
    {
    }

    v22 = *(*v1 + 456);

    v22(1);
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.handleRuntimeError(error:)(NSError *error)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "Handling Runtime error for RSKE", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  if ((*(*v2 + 448))())
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v8, "RSKE request already finished. Ignoring runtime error..", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }

  else
  {
    v10 = v2[4];
    if (v10)
    {
      v11 = v2[5];
      v10(0, error);
    }

    v12 = *(*v2 + 456);

    v12(1);
  }
}

uint64_t RunSiriKitExecutorProcessor.acquireConversationUserInput(forUserId:requestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001DCA7ECA0, &v12);
    _os_log_impl(&dword_1DC659000, v7, v8, "Cannot do %s for RSKE initiated execution", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  return a5(0);
}

void RunSiriKitExecutorProcessor.postToMessageBus(message:completion:)(void *a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  type metadata accessor for RequestMessageBase();
  if (swift_dynamicCastClass())
  {
    v26 = a1;
    v6 = RequestMessageBase.requestId.getter();
    v8 = *(v3 + 144);
    if (v8)
    {
      if (v6 == *(v3 + 136) && v8 == v7)
      {

LABEL_13:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.conversationBridge);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1DC659000, v16, v17, "Posting message received from Flow", v18, 2u);
          MEMORY[0x1E12A2F50](v18, -1, -1);
        }

        v19 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher + 32);
        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher), *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher + 24));
        dispatch thunk of MessagePublishing.postMessage(_:)();
        v20 = 1;
LABEL_23:
        a2(v20, 0);

        return;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v27);
      _os_log_impl(&dword_1DC659000, v22, v23, "Skipping: %s,  Message requestId doesn't match current requestId", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v20 = 0;
    goto LABEL_23;
  }

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
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v27);
    _os_log_impl(&dword_1DC659000, v10, v11, "Skipping: %s,  Message from flow is not of type RequestMessageBase", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  a2(0, 0);
}

void RunSiriKitExecutorProcessor.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  oslog = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = [v9 debugDescription];
    v15 = a3;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = a2;
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, &v25);
    a2 = v17;

    *(v12 + 4) = v20;
    a3 = v15;
    _os_log_impl(&dword_1DC659000, v10, v11, "<<<--- %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  if ((*(*v4 + 448))())
  {
    osloga = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, osloga, v21, "Ignoring close() because request already finished", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }

  else
  {

    RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(oslog, a2, a3, 0);
  }
}

uint64_t RunSiriKitExecutorProcessor.fallbackToServer(forResultCandidateId:serverFallbackReason:)()
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
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Execution requested server fallback from an RSKE. Returning a RunSiriKitExecutorCompleted with needsServerExecution=true", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v1 + 16), 0, 1, *(v1 + 32), *(v1 + 40), 0);
  (*(*v1 + 456))(1);
  v6 = *(*v1 + 648);

  return v6();
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Execution requested fallback to info domain from an RSKE. Returning a RunSiriKitExecutorCompleted with needsServerExecution=true", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v2 + 16), 0, 1, *(v2 + 32), *(v2 + 40), 0);
  (*(*v2 + 456))(1);
  v7 = *(*v2 + 648);

  v7();
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.fallbackToPeer()()
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
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Execution requested fallback to Peer from an RSKE. Returning a RunSiriKitExecutorCompleted", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v1 + 16), 0, 0, *(v1 + 32), *(v1 + 40), 1);
  (*(*v1 + 456))(1);
  v6 = *(*v1 + 648);

  v6();
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = *MEMORY[0x1E69D0460];
  v14 = type metadata accessor for MessageSource();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  FlowPluginInfoMessage.Builder.source.setter();
  v16 = a2[19];
  v17 = a2[20];

  FlowPluginInfoMessage.Builder.assistantId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(a2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  FlowPluginInfoMessage.Builder.sessionId.setter();
  v19 = a2[17];
  v18 = a2[18];

  FlowPluginInfoMessage.Builder.requestId.setter();
  FlowPluginInfoMessage.Builder.resultCandidateId.setter();
  v20 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL);
  FlowPluginInfoMessage.Builder.supportsOnDeviceNL.setter();
  v21 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest);
  return FlowPluginInfoMessage.Builder.isPersonalRequest.setter();
}

uint64_t RunSiriKitExecutorProcessor.deinit()
{
  v1 = *(v0 + 40);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(*(v0 + 32));
  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v3 = *(v0 + 144);

  v4 = *(v0 + 160);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil);

  v7 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType;
  v8 = type metadata accessor for RequestType();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher));
  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId + 8);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v10 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState;
  v11 = type metadata accessor for UserSessionState();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v12 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId + 8);

  v13 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork);

  v14 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate);

  return v0;
}

uint64_t RunSiriKitExecutorProcessor.__deallocating_deinit()
{
  RunSiriKitExecutorProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(void *a1, char a2, char a3, void (*a4)(void, void), uint64_t a5, char a6)
{
  v52 = a5;
  v11 = type metadata accessor for UUID();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v50 = v11;
    v19 = a2;
    v20 = a3;
    v21 = a6;
    v22 = a4;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "Sending RSKECompleted as response to RSKE", v18, 2u);
    v24 = v23;
    a4 = v22;
    a6 = v21;
    a3 = v20;
    a2 = v19;
    v11 = v50;
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  if (a4)
  {
    v50 = a4;
    v25 = objc_allocWithZone(MEMORY[0x1E69C7888]);

    v26 = [v25 init];
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v29 = v28;
    (*(v51 + 8))(v14, v11);
    v30 = MEMORY[0x1E12A1410](v27, v29);

    [v26 setAceId_];

    v31 = [a1 aceId];
    [v26 setRefId_];

    [v26 setNeedsUserInput_];
    [v26 setNeedsServerExecution_];
    [v26 setTopicSwitchDetected_];
    v32 = [v26 dictionary];
    if (v32)
    {
      v54 = 0;
      v33 = v32;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v54 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v54;
      }
    }

    else
    {
      v34 = 0;
    }

    outlined copy of [AnyHashable : Any]??(v34);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    outlined consume of [AnyHashable : Any]??(v34);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      if (v34 == 1)
      {
        v39 = 0xE300000000000000;
        v40 = 7104878;
      }

      else
      {
        v53 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
        v40 = Optional.debugDescription.getter();
        v39 = v41;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v54);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1DC659000, v35, v36, "Sending RSKECompleted: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    if (v34 == 1)
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v43 = objc_allocWithZone(MEMORY[0x1E69C77F0]);
    }

    else
    {
      v43 = objc_allocWithZone(MEMORY[0x1E69C77F0]);
      if (!v34)
      {
        v44.super.isa = 0;
        goto LABEL_20;
      }
    }

    v44.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_20:
    v45 = [v43 initWithDictionary_];

    v46 = v45;
    v47 = v45;
    v48 = v50;
    v50(v47, 0);

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v48);
  }
}

unint64_t specialized RSKESource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RSKESource.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type RSKESource and conformance RSKESource()
{
  result = lazy protocol witness table cache variable for type RSKESource and conformance RSKESource;
  if (!lazy protocol witness table cache variable for type RSKESource and conformance RSKESource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RSKESource and conformance RSKESource);
  }

  return result;
}

void type metadata completion function for RunSiriKitExecutorProcessor()
{
  type metadata accessor for SessionConfiguration?(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    v2 = type metadata accessor for RequestType();
    if (v3 <= 0x3F)
    {
      v12 = *(v2 - 8) + 64;
      type metadata accessor for SessionConfiguration?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
      if (v5 <= 0x3F)
      {
        v13 = *(v4 - 8) + 64;
        type metadata accessor for SessionConfiguration?(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x1E69D08C8]);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          v9 = type metadata accessor for UserSessionState();
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of RunSiriKitExecutorProcessor.__allocating_init(command:executionContextInfo:reply:executionOutputSubmitter:executionClient:contextUpdater:assistantId:source:requestId:instrumentationUtil:requestDispatcherServiceHelper:resultCandidateId:flowPluginInfo:requestType:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:sessionId:sessionConfiguration:plannerInvocationId:messagePublisher:isMuxEnabled:userSessionState:muxContextMessage:previousUserId:remoteRequestWasMadeInSession:)()
{
  v2 = *(v0 + 496);

  return v2();
}

void type metadata accessor for SessionConfiguration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.__allocating_init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = a1;
  return v1;
}

void RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 560))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v9);
      _os_log_impl(&dword_1DC659000, v5, v6, "RunSiriKitExecutorProcessor already released, ignoring close of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 584))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v13);
      _os_log_impl(&dword_1DC659000, v9, v10, "RunSiriKitExecutorProcessor already released, ignoring close of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessorExecutionDelegate.fallbackToServer(forResultCandidateId:serverFallbackReason:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 592))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        a1 = 7104878;
        v12 = 0xE300000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v12, &v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v8, v9, "RunSiriKitExecutorProcessor already released, ignoring fallbackToServer of %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessorExecutionDelegate.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  object = forResultCandidateId.value._object;
  countAndFlagsBits = forResultCandidateId.value._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 600))(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      if (object)
      {
        v9 = object;
      }

      else
      {
        countAndFlagsBits = 7104878;
        v9 = 0xE300000000000000;
      }

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v9, &v11);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v5, v6, "RunSiriKitExecutorProcessor already released, ignoring fallbackToInfoDomainResults of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessorExecutionDelegate.fallbackToPeer()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 608))(Strong);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.conversationBridge);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "RunSiriKitExecutorProcessor already released, ignoring fallbackToPeer", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }
  }
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B14XPCTransporterOSgMd, &_s16SiriMessageTypes0B14XPCTransporterOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MessageXPCTransporter();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v27 = a4;
    v17 = type metadata accessor for PropertyListDecoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MessageXPCTransporter and conformance MessageXPCTransporter();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    v24 = MessageXPCTransporter.toMessageBase()();
    (*(*v16 + 576))(v24, a3, v27);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "Not publising flow message because RSKEProcessor is not in scope", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    return a3(0, 0);
  }
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:errorString:shouldFailRequest:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001DCA7EC40, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "%s for RSKE initiated execution not supported", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.fallbackToIntelligenceFlow(prescribedTool:)(uint64_t a1, const char *a2)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.actionCandidatesGenerated(_:rcId:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001DCA7EDA0, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Need not do %s for RSKE initiated execution", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t specialized RunSiriKitExecutorProcessorExecutionDelegate.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000060, 0x80000001DCA7ECE0, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Cannot do %s for RSKE initiated execution", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(0);
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.willExecute(executionInputInfo:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001DCA7EDD0, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Need not do %s for RSKE initiated execution", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t specialized RunSiriKitExecutorProcessorExecutionDelegate.fetchRecentDialogs(reply:)(uint64_t (*a1)(void))
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
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001DCA7ED80, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Need not do %s for RSKE initiated execution", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(MEMORY[0x1E69E7CC0]);
}

uint64_t NonUnderstandingError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NonUnderstandingError.init(message:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for NonUnderstandingError();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

unint64_t lazy protocol witness table accessor for type RequestPaused and conformance RequestPaused()
{
  result = lazy protocol witness table cache variable for type RequestPaused and conformance RequestPaused;
  if (!lazy protocol witness table cache variable for type RequestPaused and conformance RequestPaused)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPaused and conformance RequestPaused);
  }

  return result;
}

uint64_t type metadata completion function for NonUnderstandingError(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2 + v6 + 16;
    v12 = *(v5 + 16);

    v12((a1 + v6 + 16) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for NonUnderstandingError(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 16) & ~*(v5 + 80);

  return v6(v7);
}

void *initializeWithCopy for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;

  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

void *assignWithCopy for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

_OWORD *initializeWithTake for NonUnderstandingError(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *assignWithTake for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  *a1 = *a2;
  a1[1] = v6;

  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 40))((a1 + *(v8 + 80) + 16) & ~*(v8 + 80), (a2 + *(v8 + 80) + 16) & ~*(v8 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for NonUnderstandingError(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for NonUnderstandingError(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

BOOL SABaseCommand.isSuccessfulOnBargeIn.getter()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

unint64_t type metadata accessor for SABaseCommand()
{
  result = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseCommand);
  }

  return result;
}

Swift::Bool __swiftcall PersonaUniqueIdentifierAccepting.isAppleTV()()
{
  type metadata accessor for SiriEnvironment();
  if (!static SiriEnvironment.forCurrentTask.getter())
  {
    static SiriEnvironment.default.getter();
  }

  SiriEnvironment.currentDevice.getter();
  v0 = dispatch thunk of CurrentDevice.isAppleTV.getter();

  return v0 & 1;
}

void SAUIAddViews.accept(personaUniqueIdentifier:accessLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E12A1410]();
  [v4 setPersonaId_];

  v8 = MEMORY[0x1E12A1410](a3, a4);
  [v4 setPersonaAccessLevel_];
}

id SAIntentGroupRunSiriKitExecutor.confirmationStateAsEnum.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 confirmationState];
  if (v3)
  {

    result = [v1 confirmationState];
    if (result)
    {
      v5 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return SiriKitConfirmationState.init(rawValue:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = type metadata accessor for SiriKitConfirmationState();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }

  return result;
}

uint64_t SAIntentGroupSiriKitParameterMetadata.confirmationStatesAsEnum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for SiriKitConfirmationState();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 confirmationStates];
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v30 = v4;
  v12 = v10;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_10:

    return v11;
  }

  v29 = v5;
  v35 = v11;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 0;
  v11 = v35;
  v16 = v13 + 32;
  v27 = v13;
  v28 = (v31 + 48);
  v17 = (v31 + 32);
  while (v15 < *(v13 + 16))
  {
    outlined init with copy of Any(v16, v34);
    outlined init with copy of Any(v34, &v32);
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    v12 = v30;
    SiriKitConfirmationState.init(rawValue:)();
    v18 = v29;
    if ((*v28)(v12, 1, v29) == 1)
    {
      goto LABEL_14;
    }

    v19 = *v17;
    (*v17)(v9, v12, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    v35 = v11;
    v12 = v9;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
      v11 = v35;
    }

    ++v15;
    *(v11 + 16) = v21 + 1;
    v19((v11 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21), v12, v18);
    v16 += 32;
    v9 = v12;
    v13 = v27;
    if (v14 == v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_13:
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1E12A1580](0xD000000000000026, 0x80000001DCA87420);
  _print_unlocked<A, B>(_:_:)();
  v23 = v32;
  v24 = v33;

  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v23, v24, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 38);
  __break(1u);
LABEL_14:
  outlined destroy of SiriKitConfirmationState?(v12);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA874E0);
  _print_unlocked<A, B>(_:_:)();
  v25 = v32;
  v26 = v33;

  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v25, v26, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 42);
  __break(1u);
  return result;
}

uint64_t outlined destroy of SiriKitConfirmationState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SAPerson.contact.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v2 = [v0 firstName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = MEMORY[0x1E12A1410](v4, v6);

  [v1 setGivenName_];

  v8 = [v0 firstNamePhonetic];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = MEMORY[0x1E12A1410](v10, v12);

  [v1 setPhoneticGivenName_];

  v14 = [v0 middleName];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = MEMORY[0x1E12A1410](v16, v18);

  [v1 setMiddleName_];

  v20 = [v0 lastName];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = MEMORY[0x1E12A1410](v22, v24);

  [v1 setFamilyName_];

  v26 = [v0 lastNamePhonetic];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = MEMORY[0x1E12A1410](v28, v30);

  [v1 setPhoneticFamilyName_];

  v32 = [v0 nickName];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v37 = MEMORY[0x1E12A1410](v34, v36);

  [v1 setNickname_];

  return v1;
}

uint64_t specialized static SayMetricsLogger.isBlockedDialogID(dialogIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = StringProtocol.contains<A>(_:)();
  }

  return v2 & 1;
}

id specialized static SayMetricsLogger.getSparseCommand(command:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7BB0]) init];
  v9 = [a1 listenAfterSpeaking];
  [v8 setListenAfterSpeaking_];

  v10 = [a1 dialogIdentifier];
  [v8 setDialogIdentifier_];

  v11 = [a1 languageCode];
  [v8 setLanguageCode_];

  [v8 setCanUseServerTTS_];
  [v8 setRepeatable_];
  v12 = [a1 dialogIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = specialized static SayMetricsLogger.isBlockedDialogID(dialogIdentifier:)(v14, v16);

  if ((v17 & 1) == 0)
  {
    v18 = [a1 message];
    [v8 setMessage_];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t specialized static SayMetricsLogger.logAnalytics(command:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.instrumentation);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1DC659000, v10, v11, "Logging SayIt to AFAnalytics : %@", v12, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v29 = v15;
  v16 = specialized static SayMetricsLogger.getSparseCommand(command:)(v9);
  v17 = [v16 dictionary];
  if (v17)
  {
    v18 = v17;
    v28 = type metadata accessor for NSMutableDictionary();
    *&v27 = v18;
    outlined init with take of Any(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v15;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v20 = v25;
    v29 = v25;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v27);
    outlined destroy of ReferenceResolutionClientProtocol?(&v27, &_sypSgMd, &_sypSgMR);
    v20 = v29;
  }

  v21 = [objc_opt_self() sharedAnalytics];
  if (v21)
  {
    v22 = v21;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v22 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v6, v2);
}

void SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:)(char a1, void (*a2)(void, void, void, void *), uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &aBlock);
    _os_log_impl(&dword_1DC659000, v8, v9, "SelfReflectionAgent.%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v12 = (*(*v4 + 224))();
  if (v12)
  {
    v13 = (*(*v12 + 896))();
    if (v13)
    {
      v14 = (*(*v13 + 112))();

      v15 = [v14 audioAnalytics];
      if (v15)
      {
        v16 = v15;
        [v15 snr];
        v18 = v17;

        if (v18 <= 0.0)
        {
          v19 = "tAction(revealSpeech:_:)";
          v20 = 0xD000000000000029;
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v19 = "logSayItAnalytics";
  v20 = 0xD00000000000001ALL;
LABEL_13:
  v21 = *v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = SelfReflectionAgent.createCATContext()();
  if (v24)
  {
    v25 = v24;
    v45 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &aBlock);
      _os_log_impl(&dword_1DC659000, v26, v27, "SelfReflectionAgent.%s CAT executing", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }

    v30 = objc_opt_self();
    v31 = MEMORY[0x1E12A1410](v20, v19 | 0x8000000000000000);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    *(v33 + 24) = a3;
    *(v33 + 32) = v4;
    *(v33 + 40) = v45 & 1;
    v51 = partial apply for closure #1 in SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:);
    v52 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
    v50 = &block_descriptor_21;
    v34 = _Block_copy(&aBlock);
    v35 = v25;

    [v30 execute:v23 catId:v31 parameters:isa globals:v35 completion:v34];
    _Block_release(v34);

    v23 = v35;
  }

  else
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = 136315394;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &v53);
      *(v38 + 12) = 2080;
      aBlock = 0xD000000000000028;
      v48 = 0x80000001DCA87570;
      lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
      v40 = Error.localizedDescription.getter();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v53);

      *(v38 + 14) = v42;
      _os_log_impl(&dword_1DC659000, v36, v37, "SelfReflectionAgent.%s error: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v39, -1, -1);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
    v43 = swift_allocError();
    *v44 = 0xD000000000000028;
    v44[1] = 0x80000001DCA87570;
    a2(0, 0, 0, v43);
  }
}

double SelfReflectionAgent.createSiriDismissalAction()()
{
  v0 = *MEMORY[0x1E69C82D0];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = SelfReflectionAgent.createCloseAssitantAction(closeAssistantReason:)(v1, v2);

  v4 = SelfReflectionAgent.createCancelRequestAction()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *&result = 2;
  *(v5 + 16) = xmmword_1DCA6ACA0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

void SelfReflectionAgent.createRevealRecognizedSpeech()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7BA0]) init];
  v3 = *(*v0 + 224);
  v4 = v3();
  v5 = v4;
  if (v4)
  {
    v6 = (*(*v4 + 896))(v4);
    if (v6)
    {
      v7 = (*(*v6 + 112))(v6);

      v8 = [v7 recognition];

      if (!v8)
      {
        __break(1u);
        return;
      }

      v5 = [v8 aceRecognition];
    }

    else
    {

      v5 = 0;
    }
  }

  [v2 setRecognition_];

  v9 = v3();
  if (v9)
  {
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);

    v12 = MEMORY[0x1E12A1410](v10, v11);
  }

  else
  {
    v12 = 0;
  }

  [v2 setSpeechRecognizedAceId_];

  v13 = (*(*v1 + 248))();
  if (v13)
  {
    v14 = v13[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes];

    if (v14 == 1)
    {
      if (v3())
      {
        v15 = ResultCandidateState.alternativeSuggestion.getter();

        if (!*(v15 + 16))
        {
          goto LABEL_14;
        }

        v16 = v1[10];
        __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
        v17.value._countAndFlagsBits = (*(*v1 + 200))();
        v19 = v18;
        v20._object = 0x80000001DCA87600;
        v20._countAndFlagsBits = 0xD000000000000024;
        v17.value._object = v19;
        TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v20, v17);

        v21 = v1[9];
        v22 = v1[10];
        __swift_project_boxed_opaque_existential_1(v1 + 6, v21);
        if (((*(v22 + 32))(v21, v22) & 1) == 0)
        {
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v2 setAsrAlternatives_];

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.conversationBridge);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_1DC659000, v25, v26, "Enabled alternativeSuggestionTreatment", v27, 2u);
            MEMORY[0x1E12A2F50](v27, -1, -1);
          }
        }

        else
        {
LABEL_14:
        }
      }
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

unint64_t SelfReflectionError.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(26);

  MEMORY[0x1E12A1580](a1, a2);
  return 0xD000000000000018;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionError()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(26);

  MEMORY[0x1E12A1580](v1, v2);
  return 0xD000000000000018;
}

id SelfReflectionAgent.createCATContext()()
{
  v1 = *(v0 + 32);
  v2 = [v1 languageCode];
  if (!v2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001DCA87680, &v16);
    v14 = "SelfReflectionAgent.%s Unable to retrieve input language code";
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v1 outputVoice];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 languageCode];

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E699A098]) initWithInputLocale:v3 outputVoiceLocale:v6];

      return v7;
    }
  }

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
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001DCA87680, &v16);
    v14 = "SelfReflectionAgent.%s Unable to retrieve outputVoice language code";
LABEL_13:
    _os_log_impl(&dword_1DC659000, v10, v11, v14, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

LABEL_14:

  return 0;
}

void closure #1 in SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:)(void *a1, void *a2, void (*a3)(void, void, void, void), uint64_t a4, uint64_t a5, int a6)
{
  v118 = a6;
  v122 = a1;
  v123 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v117 = &v114 - v10;
  v11 = type metadata accessor for NLContextUpdate();
  v121 = *(v11 - 8);
  v12 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v114 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v124 = __swift_project_value_buffer(v22, static Logger.conversationBridge);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v116 = v17;
    v26 = v25;
    v27 = a3;
    v28 = swift_slowAlloc();
    v125[0] = v28;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, v125);
    _os_log_impl(&dword_1DC659000, v23, v24, "SelfReflectionAgent.%s CAT result", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v29 = v28;
    a3 = v27;
    MEMORY[0x1E12A2F50](v29, -1, -1);
    v30 = v26;
    v17 = v116;
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  if (a2)
  {
    v31 = a2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v125[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, v125);
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v125);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_1DC659000, v32, v33, "SelfReflectionAgent.%s failed to produce dialog. error: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v39 = a2;
    a3(0, 0, 0, a2);

    v40 = a2;
LABEL_19:

    return;
  }

  if (!static SystemDialogActHelper.systemAskedUserToRepeat()())
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_16;
  }

  swift_getObjectType();
  SIRINLUSystemDialogAct.toNluSystemDialogAct()();
  swift_unknownObjectRelease();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_16:
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v126 = v63;
      *v62 = 136315394;
      *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &v126);
      *(v62 + 12) = 2080;
      v125[0] = 0xD000000000000020;
      v125[1] = 0x80000001DCA87650;
      lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
      v64 = Error.localizedDescription.getter();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v126);

      *(v62 + 14) = v66;
      _os_log_impl(&dword_1DC659000, v60, v61, "SelfReflectionAgent.%s failed to produce dialog. error: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v63, -1, -1);
      MEMORY[0x1E12A2F50](v62, -1, -1);
    }

    lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
    v67 = swift_allocError();
    *v68 = 0xD000000000000020;
    v68[1] = 0x80000001DCA87650;
    a3(0, 0, 0, v67);
    v40 = v67;
    goto LABEL_19;
  }

  v124 = a3;
  v41 = v119;
  (*(v19 + 32))(v119, v17, v18);
  v42 = v120;
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v43 = *(v19 + 72);
  v44 = v19;
  v45 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1DCA66060;
  v115 = v44;
  v116 = v18;
  (*(v44 + 16))(v46 + v45, v41, v18);
  NLContextUpdate.nluSystemDialogActs.setter();
  v47 = v121;
  v48 = v117;
  (*(v121 + 16))(v117, v42, v11);
  (*(v47 + 56))(v48, 0, 1, v11);
  v114 = specialized static ExecutionContextUpdate.convertFromFlowContextUpdate(_:nluActiveTasks:nluCompletedTasks:populateLegacyProvideContext:)(v48, 0, 0, 0);
  outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v49 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v50 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v51 = v49;
  v52 = [v50 init];
  v53 = [v52 UUIDString];

  if (!v53)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = MEMORY[0x1E12A1410](v54);
  }

  [v51 setAceId_];

  v55 = *(*v123 + 200);
  v56 = v51;
  v57 = v55();
  if (v58)
  {
    v59 = MEMORY[0x1E12A1410](v57);
  }

  else
  {
    v59 = 0;
  }

  [v56 setRefId_];

  v69 = [v122 print];
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v70[2])
  {
    v71 = v70[4];
    v72 = v70[5];

    v73 = MEMORY[0x1E12A1410](v71, v72);
  }

  else
  {

    v73 = 0;
  }

  [v56 setText_];

  v74 = [v122 dialogId];
  v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v75[2])
  {
    v76 = v75[4];
    v77 = v75[5];

    v78 = MEMORY[0x1E12A1410](v76, v77);
  }

  else
  {

    v78 = 0;
  }

  [v56 setDialogIdentifier_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v79 = v56;
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v79 setListenAfterSpeaking_];

  v81 = [v122 meta];
  v82 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v82 + 16) && (v83 = specialized __RawDictionaryStorage.find<A>(_:)(0x79726F6765746163, 0xE800000000000000), (v84 & 1) != 0))
  {
    v85 = (*(v82 + 56) + 16 * v83);
    v86 = *v85;
    v87 = v85[1];

    v88 = MEMORY[0x1E12A1410](v86, v87);
  }

  else
  {

    v88 = 0;
  }

  [v79 setDialogCategory_];

  v89 = (*(*v123 + 272))();
  if (v89)
  {
    if (*(v89 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled) == 1)
    {
      v90 = v89;
      v91 = [v122 speak];
      v92 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v92[2])
      {
        v93 = v92[4];
        v94 = v92[5];

        v95 = MEMORY[0x1E12A1410](v93, v94);
      }

      else
      {

        v95 = 0;
      }

      [v79 setSpeakableText_];

      v89 = v95;
    }
  }

  v96 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v97 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v98 = v96;
  v99 = [v97 init];
  v100 = [v99 UUIDString];

  if (!v100)
  {
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = MEMORY[0x1E12A1410](v101);
  }

  [v98 setAceId_];

  v102 = v55();
  if (v103)
  {
    v104 = MEMORY[0x1E12A1410](v102);
  }

  else
  {
    v104 = 0;
  }

  v105 = v124;
  [v98 setRefId_];

  [v98 setDialogPhase_];
  [v98 setDisplayTarget_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1DCA70640;
  *(v106 + 32) = v79;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v107 = Array._bridgeToObjectiveC()().super.isa;

  [v98 setViews_];

  v108 = 0;
  if (v118)
  {
    SelfReflectionAgent.createRevealRecognizedSpeech()();
    v108 = v109;
  }

  v110 = v108;
  v111 = v114;
  v112 = v114;
  v113 = v98;
  v105(v98, v108, v111, 0);

  (*(v121 + 8))(v120, v11);
  (*(v115 + 8))(v119, v116);
}

id SelfReflectionAgent.createCloseAssitantAction(closeAssistantReason:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7B18]) init];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  v15 = MEMORY[0x1E12A1410](v12, v14);

  [v11 setAceId_];

  v16 = *(*v3 + 200);
  v17 = v11;
  v18 = v16();
  if (v19)
  {
    v20 = MEMORY[0x1E12A1410](v18);
  }

  else
  {
    v20 = 0;
  }

  [v17 setRefId_];

  v21 = MEMORY[0x1E12A1410](a1, a2);
  [v17 setReason_];

  return v17;
}

id SelfReflectionAgent.createCancelRequestAction()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7760]) init];
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = MEMORY[0x1E12A1410](v8, v10);

  [v7 setAceId_];

  v12 = (*(*v1 + 200))();
  if (v13)
  {
    v14 = MEMORY[0x1E12A1410](v12);
  }

  else
  {
    v14 = 0;
  }

  [v7 setRefId_];

  return v7;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError()
{
  result = lazy protocol witness table cache variable for type SelfReflectionError and conformance SelfReflectionError;
  if (!lazy protocol witness table cache variable for type SelfReflectionError and conformance SelfReflectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionError and conformance SelfReflectionError);
  }

  return result;
}

uint64_t SelfReflectionAgent.__allocating_init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, int a7)
{
  v25 = a7;
  v13 = swift_allocObject();
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized SelfReflectionAgent.init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(a1, a2, a3, a4, v20, a6, v25, v13, v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v22;
}

uint64_t ResultCandidateState.speechpackage.getter()
{
  v1 = (*(*v0 + 896))();
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 112))(v1);

  return v2;
}

id AFSpeechPackage.snr.getter()
{
  result = [v0 audioAnalytics];
  v2 = result;
  if (result)
  {
    [result snr];
    v4 = v3;

    return v4;
  }

  return result;
}

unint64_t ResultCandidateState.alternativeSuggestion.getter()
{
  v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance();
  v1 = *(v57 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate();
  v58 = *(SuggestionCandidate - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](SuggestionCandidate);
  v54 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion();
  v7 = *(Suggestion - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Suggestion);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v45 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(*v0 + 384))(v18);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v50 = v20;
  v51 = v1;
  v22 = *(v21 + 16);
  v23 = v22;

  v24 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
    return v24;
  }

  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_21:

LABEL_22:

    return v24;
  }

  v43 = result;
  v44 = __CocoaSet.count.getter();
  result = v43;
  if (!v44)
  {
    goto LABEL_21;
  }

LABEL_5:
  v49 = v23;
  if ((result & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1E12A1FE0](0);
LABEL_8:
    v23 = v26;

    type metadata accessor for GenericExperience();
    if (swift_dynamicCastClass())
    {
      dispatch thunk of GenericExperience.serverSuggestions.getter();
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        v27 = v50;
        (*(v16 + 32))(v50, v14, v15);
        Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.getter();
        v28 = Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.candidates.getter();
        (*(v7 + 8))(v10, Suggestion);
        v29 = *(v28 + 16);
        if (v29)
        {
          v46 = v23;
          v47 = v16;
          v48 = v15;
          v59 = v24;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
          v24 = v59;
          v30 = *(v58 + 16);
          v31 = *(v58 + 80);
          v45[1] = v28;
          v32 = v28 + ((v31 + 32) & ~v31);
          v52 = *(v58 + 72);
          v53 = v30;
          ++v51;
          v58 += 16;
          v33 = (v58 - 8);
          do
          {
            v34 = v54;
            v35 = SuggestionCandidate;
            v53(v54, v32, SuggestionCandidate);
            v36 = v56;
            Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.getter();
            v37 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.getter();
            v39 = v38;
            (*v51)(v36, v57);
            (*v33)(v34, v35);
            v59 = v24;
            v41 = *(v24 + 16);
            v40 = *(v24 + 24);
            if (v41 >= v40 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
              v24 = v59;
            }

            *(v24 + 16) = v41 + 1;
            v42 = v24 + 16 * v41;
            *(v42 + 32) = v37;
            *(v42 + 40) = v39;
            v32 += v52;
            --v29;
          }

          while (v29);
          (*(v47 + 8))(v50, v48);
        }

        else
        {

          (*(v16 + 8))(v27, v15);
        }

        return v24;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
    }

    else
    {

      v23 = v49;
    }

    goto LABEL_22;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(result + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t SelfReflectionAgentDecision.pommesSchemaValueForSELFReporting.getter()
{
  if (*v0 - 2 > 4)
  {
    return 3;
  }

  else
  {
    return dword_1DCA7462C[(*v0 - 2)];
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70536C6165766572 && a2 == 0xEC00000068636565)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}