uint64_t destroy for CachedPluginCatalog(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for RRCandidate() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMR, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x1E69D2828]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RRCandidate();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RRCandidate() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AFServiceDeviceContext();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v35 - v19;
  v37 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v42 = -v21;
    v43 = v20;
    v23 = a1 - a3;
    v36 = v21;
    v24 = v20 + v21 * a3;
    v45 = v8;
    v25 = v47;
LABEL_5:
    v40 = v22;
    v41 = a3;
    v38 = v24;
    v39 = v23;
    v48 = v23;
    while (1)
    {
      v26 = v51;
      outlined init with copy of ReferenceResolutionClientProtocol?(v24, v51, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v27 = v52;
      outlined init with copy of ReferenceResolutionClientProtocol?(v22, v52, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v28 = v46;
      outlined init with copy of ReferenceResolutionClientProtocol?(v26, v46, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v29 = *(v8 + 48);
      v50 = *(v28 + v29);
      outlined destroy of ConversationHandlerLocator.ScoredHandler(v28 + v29);
      outlined init with copy of ReferenceResolutionClientProtocol?(v27, v25, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v30 = *(v8 + 48);
      v49 = *(v25 + v30);
      outlined destroy of ConversationHandlerLocator.ScoredHandler(v25 + v30);
      v31 = type metadata accessor for UUID();
      v32 = *(*(v31 - 8) + 8);
      v32(v25, v31);
      v32(v28, v31);
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v8 = v45;
      if (v49 >= v50)
      {
LABEL_4:
        a3 = v41 + 1;
        v22 = v40 + v36;
        v23 = v39 - 1;
        v24 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v33 = v44;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v24, v44, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v33, v22, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v22 += v42;
      v24 += v42;
      if (__CFADD__(v48++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v8 = type metadata accessor for RRCandidate();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v36 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v14 + 16);
    v48 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v44 = (v14 + 32);
    v45 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v41 = v20;
    v42 = a3;
    v39 = v22;
    v40 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v49;
      v26 = v47;
      (v47)(v49, v22, v8, v15);
      v27 = v50;
      v26(v50, v24, v8);
      RRCandidate.score.getter();
      v29 = v28;
      RRCandidate.score.getter();
      v31 = v30;
      v32 = *v19;
      (*v19)(v27, v8);
      v32(v25, v8);
      if (v31 >= v29)
      {
LABEL_4:
        a3 = v42 + 1;
        v20 = &v41[v37];
        v21 = v40 - 1;
        v22 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v33(v24, v34, v8);
      v24 += v43;
      v22 += v43;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 proximity];
      v13 = [v11 proximity];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 512);
  v5 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 536) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:), v5, 0);
}

uint64_t protocol witness for ConversationHandler.id.getter in conformance RemoteFlowPluginBundleConversationHandler()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for UserInputResult();
  v5[16] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for Input();
  v5[22] = v10;
  v11 = *(v10 - 8);
  v5[23] = v11;
  v12 = *(v11 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v13 = type metadata accessor for ConversationSearchResult();
  v5[27] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v5[29] = v15;
  v16 = *(v15 - 8);
  v5[30] = v16;
  v17 = *(v16 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static MessageBusActor.shared;
  v5[33] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:), v18, 0);
}

uint64_t protocol witness for Waitable.wait() in conformance ConcurrentTaskPool()
{
  v2 = *(**v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6();
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  if (a2)
  {
    aBlock[0] = a2;
    v16 = a2;
    CheckedContinuation.resume(throwing:)();
  }

  if (a1)
  {
    return CheckedContinuation.resume(returning:)();
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v28 = a4;
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.executor);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "Remote Conversation does not have turn data for the current request. Will serialize the TurnData again.", v21, 2u);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  v22 = RemoteConversationTurnData.xpcRepresentation.getter();
  ObjectType = swift_getObjectType();
  v24 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, v29);
  (*(v12 + 16))(v15, a3, v11);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = swift_allocObject();
  (*(v12 + 32))(v26 + v25, v15, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_181;
  v27 = _Block_copy(aBlock);

  [v28 startTurnWithTurnData:v22 bridge:v24 reply:v27];
  _Block_release(v27);

  return swift_unknownObjectRelease();
}

uint64_t RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v7[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:), v9, 0);
}

uint64_t protocol witness for ConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:) in conformance RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(a1, a2, a3, a4, a5, a6);
}

uint64_t RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[6];

  return RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(v9, v3, v7);
}

{
  if (v0[15])
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[5];

    return RemoteConversationClient.startTurn(turnData:bridge:)(v4, v2, v3);
  }

  else
  {
    v6 = v0[13];

    v7 = v0[12];

    v8 = v0[1];

    return v8();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  else
  {
    v6 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[15];

  v2 = v0[18];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4[17] = v5;
  v4[18] = *(v5 + 64);
  v4[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v4[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:), v7, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 96);
  if (v2)
  {
    v3 = v0[21];

    v5 = v0[19];
    v4 = v0[20];

    v6 = v0[1];

    return v6(v2);
  }

  else
  {
    v8 = v0[16];
    swift_beginAccess();
    v9 = *(v8 + 104);
    v0[22] = v9;
    if (v9)
    {
      v10 = *(MEMORY[0x1E69E86A8] + 4);

      v11 = swift_task_alloc();
      v0[23] = v11;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v11 = v0;
      v11[1] = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
      v14 = MEMORY[0x1E69E7288];
      v15 = v0 + 12;
    }

    else
    {
      v17 = v0[19];
      v16 = v0[20];
      v19 = v0[17];
      v18 = v0[18];
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[14];
      v31 = v0[13];
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
      outlined init with copy of UUID?(v21, v17);
      v24 = static MessageBusActor.shared;
      v25 = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor);
      v26 = (*(v19 + 80) + 56) & ~*(v19 + 80);
      v27 = swift_allocObject();
      v27[2] = v24;
      v27[3] = v25;
      v27[4] = v20;
      v27[5] = v31;
      v27[6] = v22;
      outlined init with take of UUID?(v17, v27 + v26);

      v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime24RemoteConversationClientCSg_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:), v27);
      v0[25] = v9;
      v28 = *(v8 + 104);
      *(v8 + 104) = v9;

      v29 = *(MEMORY[0x1E69E86A8] + 4);
      v30 = swift_task_alloc();
      v0[26] = v30;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v30 = v0;
      v30[1] = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
      v14 = MEMORY[0x1E69E7288];
      v15 = v0 + 11;
    }

    return MEMORY[0x1EEE6DA10](v15, v9, v12, v13, v14);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  else
  {
    v6 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[25];
  v2 = v0[21];

  v3 = v0[11];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6(v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  else
  {
    v6 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[12];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6(v3);
}

{
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[24];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[25];
  v2 = v0[21];

  v3 = v0[27];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DC739DB0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnection<A>(execute:) in conformance SharedFlowPluginConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(a1, a2, a3, a4);
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for InterruptibleTaskResult();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v5[17] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v10, 0);
}

uint64_t partial apply for closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
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

  return closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[11] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v7[16] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:), v8, 0);
}

uint64_t SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = a7;
  v8[17] = v7;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v8[18] = v9;
  v8[19] = *(v9 + 64);
  v8[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v8[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v10, 0);
}

uint64_t closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)()
{
  v1 = v0[12];
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];

  return SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(v4, v5, v6, v3, v10, v8, v9);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  if (v1)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 96);
    swift_beginAccess();
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    swift_beginAccess();
    v6 = *(v4 + 104);
    *(v4 + 104) = 0;
  }

  **(v0 + 88) = *(v0 + 144);
  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  outlined init with copy of UUID?(v0[16], v1);
  v9 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v10 = swift_allocObject();
  v0[22] = v10;
  v10[2] = v8;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v4;
  v10[6] = v5;
  v10[7] = v3;
  outlined init with take of UUID?(v1, v10 + v9);

  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  v12 = v0[17];

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(&async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v10);
}

{
  v1 = v0[24];
  if (!v1)
  {
    v16 = v0[21];

    if (one-time initialization token for executor == -1)
    {
LABEL_6:
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.executor);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DC659000, v18, v19, "Error loading remote flow plugin: No result from loadFlowPlugin(bundleId:)", v20, 2u);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }

      v12 = 0;
      goto LABEL_9;
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  v2 = v0[17];
  v3 = *(v2 + 40);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v0[25];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  *(v2 + 40) = v3 + 1;
  v28 = v3;
  v9 = type metadata accessor for SharedFlowPluginConnection();
  v10 = swift_allocObject();
  v0[27] = v10;
  v10[6] = v1;
  v10[7] = v4;
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v6;
  v10[5] = v5;
  v10[8] = 0;
  v10[9] = v2;
  swift_unknownObjectRetain_n();

  _StringGuts.grow(_:)(30);

  MEMORY[0x1E12A1580](v8, v7);
  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  swift_unknownObjectRelease();
  type metadata accessor for InterruptibleTaskManager();
  v11 = swift_allocObject();
  v11[4] = MEMORY[0x1E69E7CC8];
  v11[5] = 0;
  v11[2] = 0xD00000000000001BLL;
  v11[3] = 0x80000001DCA881C0;
  v10[10] = v28;
  v10[11] = v11;
  v0[5] = v9;
  v0[6] = &protocol witness table for SharedFlowPluginConnection;
  v0[2] = v10;
  type metadata accessor for RemoteConversationClient();
  v12 = swift_allocObject();
  v0[28] = v12;

  swift_defaultActor_initialize();
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = 2;
  *(v12 + 112) = v8;
  *(v12 + 120) = v7;
  outlined init with take of NSExtensionProtocol(v0 + 2, v12 + 128);
  v13 = *(**(v2 + 32) + 112);

  v13(v14, v28);

  if (*(v2 + 16))
  {
    v15 = v0[21];
    swift_unknownObjectRelease();

LABEL_9:
    v21 = v0[20];

    v22 = v0[1];

    return v22(v12);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DC659000, v25, v26, "Connection invalidated while loading flow plugin, invalidating plugin connection", v27, 2u);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v12, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

{
  v1 = v0[28];
  v2 = v1[19];
  v0[29] = v2;
  v3 = v1[20];
  v0[30] = v3;
  v0[31] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[32] = *(v3 + 24);
  v0[33] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v4, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 168);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 240));

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v3, 0);
}

{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];

  swift_unknownObjectRelease();
  v4 = v0[28];
  v5 = v0[20];

  v6 = v0[1];

  return v6(v4);
}

uint64_t partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
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

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[31] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v4, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.commit(bridge:)(a1, a2, a3, v9, v8);
}

uint64_t closure #1 in RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.commit(bridge:), 0, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.commit(bridge:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  ObjectType = swift_getObjectType();
  v14 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.commit(bridge:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_116;
  v17 = _Block_copy(aBlock);

  [a2 commitWithBridge:v14 reply:v17];
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

void specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  specialized ManagedContinuation.updateState(continuation:result:)(v9, 0, 0, 255);
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v13 = swift_allocError();
    CancellationError.init()();
    v12(v9, 1, 1, v10);
    v14 = v13;
    specialized ManagedContinuation.updateState(continuation:result:)(v9, v13, 0, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  }

  else
  {
    a3(a2);
  }
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v15 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  specialized ManagedContinuation.updateState(continuation:result:)(v9, 0, 255);
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v13 = swift_allocError();
    CancellationError.init()();
    v12(v9, 1, 1, v10);
    v14 = v13;
    specialized ManagedContinuation.updateState(continuation:result:)(v9, v13, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  }

  else
  {
    a3(a2);
  }
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v15 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  specialized ManagedContinuation.updateState(continuation:result:)(v9, 0, 255);
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v13 = swift_allocError();
    CancellationError.init()();
    v12(v9, 1, 1, v10);
    v14 = v13;
    specialized ManagedContinuation.updateState(continuation:result:)(v9, v13, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  }

  else
  {
    a3(a2);
  }
}

uint64_t specialized ManagedContinuation.updateState(continuation:result:)(uint64_t a1, void *a2, unsigned int (*a3)(char *, char *, uint64_t), char a4)
{
  v54 = a2;
  v55 = a3;
  v58 = a1;
  v6 = ~a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  v56 = v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - v27;
  v59 = *(*v4 + 104);
  [*(v4 + v59) lock];
  if (v6)
  {
    v29 = v4 + *(*v4 + 96);
    swift_beginAccess();
    if (*(v29 + 16) == 255)
    {
      v30 = v54;
      v31 = v55;
      *v29 = v54;
      *(v29 + 8) = v31;
      *(v29 + 16) = a4;
      outlined copy of Result<RemoteConversation?, Error>(v30, v31, a4 & 1);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v58, v16, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  v32 = *(v18 + 48);
  if (v32(v16, 1, v17) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  }

  else
  {
    v55 = v32;
    v58 = v23;
    v33 = v13;
    v34 = *(v18 + 32);
    v34(v28, v16, v17);
    v34(v33, v28, v17);
    v32 = v55;
    (*(v18 + 56))(v33, 0, 1, v17);
    v35 = *(*v4 + 88);
    swift_beginAccess();
    v36 = v4 + v35;
    v13 = v33;
    v23 = v58;
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v13, v36, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
    swift_endAccess();
  }

  v37 = *(*v4 + 88);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v37, v10, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  if (v32(v10, 1, v17) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
LABEL_12:
    v52 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    goto LABEL_13;
  }

  v38 = *(v18 + 32);
  v38(v23, v10, v17);
  v39 = v4 + *(*v4 + 96);
  swift_beginAccess();
  v40 = v23;
  v41 = *(v39 + 16);
  if (v41 == 255)
  {
    (*(v18 + 8))(v40, v17);
    goto LABEL_12;
  }

  v55 = v38;
  v42 = *v39;
  v43 = *(v39 + 8);
  v44 = *(v18 + 56);
  v58 = v40;
  v44(v13, 1, 1, v17);
  swift_beginAccess();
  v45 = v41 & 1;
  outlined copy of Result<RemoteConversation?, Error>(v42, v43, v41 & 1);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v13, v4 + v37, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  swift_endAccess();
  v46 = v57;
  v47 = v55;
  v55(v57, v58, v17);
  v60 = v45;
  v48 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v49 = (v56 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v47(v50 + v48, v46, v17);
  v51 = v50 + v49;
  *v51 = v42;
  *(v51 + 8) = v43;
  *(v51 + 16) = v60;
  v52 = partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:);
LABEL_13:
  (v52)([*(v4 + v59) unlock]);
}

uint64_t sub_1DC73CADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  outlined consume of Result<RemoteConversation?, Error>(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 17, v3 | 7);
}

uint64_t partial apply for closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  v13 = v2 + ((*(v6 + 80) + 64) & ~*(v6 + 80));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(a1, a2, v7, v8, v9, v10, v11, v12);
}

uint64_t closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v10;
  *(v3 + 48) = v11;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pSgMd, &_s14SiriKitRuntime18RemoteConversation_pSgMR);
  *v5 = v0;
  v5[1] = closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v7, 0, 0, 0xD00000000000004ALL, 0x80000001DCA88740, partial apply for closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v3, v6);
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), 0, 0);
}

void closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v37 = a2;
  v35 = a1;
  v33 = a7;
  v34 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v32 - v22;
  v36 = MEMORY[0x1E12A1410](a3, a4, v21);
  v24 = MEMORY[0x1E12A1410](a5, a6);
  if (a8)
  {
    a8 = MEMORY[0x1E12A1410](v33, a8);
  }

  outlined init with copy of UUID?(v34, v23);
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  isa = 0;
  if ((*(v26 + 48))(v23, 1, v25) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v23, v25);
  }

  (*(v15 + 16))(v18, v35, v14);
  v28 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v29 = swift_allocObject();
  (*(v15 + 32))(v29 + v28, v18, v14);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed RemoteConversationXPC?) -> ();
  aBlock[3] = &block_descriptor_26;
  v30 = _Block_copy(aBlock);

  v31 = v36;
  [v37 loadFlowPluginWithBundleId:v36 bundlePath:v24 rcId:a8 hypothesisId:isa reply:v30];
  _Block_release(v30);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v10 = v7;
  v36 = a1;
  v33 = type metadata accessor for UUID();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 >= v22 && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()(a4, a5, v34, v35);
    goto LABEL_9;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a3 & 1, a4, a5, v34, v35);
  v25 = *v10;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v23 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v26;
LABEL_9:
  v28 = v36;
  v29 = *v10;
  if (v23)
  {
    v30 = v29[7];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v28, v30 + *(*(v31 - 8) + 72) * v19, a4, a5);
  }

  else
  {
    (*(v13 + 16))(v16, a2, v33);
    return specialized _NativeDictionary._insert(at:key:value:)(v19, v16, v28, v29, a4, a5);
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v59 = a3;
  v60 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v49 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v54 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v22 = result;
  if (*(v19 + 16))
  {
    v49 = v9;
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v19 + 64);
    v28 = (v25 + 63) >> 6;
    v50 = (v16 + 16);
    v51 = v16;
    v55 = (v16 + 32);
    v29 = result + 64;
    v52 = v19;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v23 << 6);
      v35 = *(v19 + 48);
      v56 = *(v16 + 72);
      v36 = v35 + v56 * v34;
      if (v54)
      {
        (*v55)(v57, v36, v15);
        v37 = *(v19 + 56);
        v38 = *(v53 + 72);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v37 + v38 * v34, v58, v59, v60);
      }

      else
      {
        (*v50)(v57, v36, v15);
        v39 = *(v19 + 56);
        v38 = *(v53 + 72);
        outlined init with copy of ReferenceResolutionClientProtocol?(v39 + v38 * v34, v58, v59, v60);
      }

      v40 = *(v22 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v41 = -1 << *(v22 + 32);
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
      (*v55)((*(v22 + 48) + v56 * v30), v57, v15);
      result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v58, *(v22 + 56) + v38 * v30, v59, v60);
      ++*(v22 + 16);
      v16 = v51;
      v19 = v52;
    }

    v32 = v23;
    while (1)
    {
      v23 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v28)
      {
        break;
      }

      v33 = v24[v23];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v9 = v49;
      goto LABEL_36;
    }

    v48 = 1 << *(v19 + 32);
    v9 = v49;
    if (v48 >= 64)
    {
      bzero(v24, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v48;
    }

    *(v19 + 16) = 0;
  }

LABEL_36:
  *v9 = v22;
  return result;
}

uint64_t SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v50 = a3;
  v51 = a8;
  v48 = a5;
  v49 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v42 - v21;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);
  Logger.debugF(file:function:)();
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = one-time initialization token for shared;

  v43 = a2;
  v44 = a4;
  v45 = a9;
  v46 = v22;
  v26 = v18;
  v27 = a6;
  if (v25 != -1)
  {
    swift_once();
  }

  v28 = static ConversationActor.shared;
  v29 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor);
  v30 = (*(v47 + 80) + 56) & ~*(v47 + 80);
  v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v29;
  v34 = v48;
  v33[4] = v10;
  v33[5] = v34;
  v33[6] = v27;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v26, v33 + v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v35 = (v33 + v31);
  v36 = v43;
  *v35 = v49;
  v35[1] = v36;
  v37 = (v33 + v32);
  v38 = v44;
  *v37 = v50;
  v37[1] = v38;
  v39 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  v40 = v45;
  *v39 = v51;
  v39[1] = v40;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v33);
}

uint64_t sub_1DC73F920()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *&v0[v10 + 8];

  v14 = *&v0[v11 + 8];

  v15 = *&v0[v12 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v2 | 7);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a3, v14 + *(*(v15 - 8) + 72) * a1, a5, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 496) = v18;
  *(v8 + 464) = v16;
  *(v8 + 480) = v17;
  *(v8 + 448) = a7;
  *(v8 + 456) = a8;
  *(v8 + 432) = a5;
  *(v8 + 440) = a6;
  *(v8 + 424) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 512) = v10;
  v11 = *(v10 - 8);
  *(v8 + 520) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 528) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;
  *(v8 + 536) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v13, 0);
}

uint64_t partial apply for closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[2];
  v21 = v1[3];
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[4];
  v9 = v1[6];
  v19 = v1[5];
  v10 = (v1 + v6);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(a1, v22, v21, v20, v19, v9, v1 + v5, v12);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(void), uint64_t a5)
{
  v192 = a5;
  v193 = a4;
  v206 = a3;
  v190 = a2;
  v181 = a1;
  v186 = type metadata accessor for Input();
  v185 = *(v186 - 8);
  v5 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v163 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Parse();
  v168 = *(v169 - 8);
  v7 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v161 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v162 = &v161 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v189 = &v161 - v12;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
  v13 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v188 = (&v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v164 = (&v161 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v165 = (&v161 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v170 = &v161 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v174 = &v161 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v175 = &v161 - v27;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMR);
  v176 = *(v177 - 8);
  v28 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v171 = &v161 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v184 = &v161 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v182 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v183 = &v161 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v167 = &v161 - v40;
  v195 = type metadata accessor for UUID();
  v194 = *(v195 - 8);
  v41 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v173 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v179 = &v161 - v44;
  v180 = type metadata accessor for RemoteConversationService.State(0);
  v45 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v47 = (&v161 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v172 = (&v161 - v49);
  v50 = type metadata accessor for FlowTraceEvent();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = (&v161 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for FlowSearchResult();
  v191 = *(v55 - 8);
  v56 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v161 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = SiriEnvironment.init(parent:)();
  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, 255, MEMORY[0x1E69D0010]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, 255, MEMORY[0x1E69CFB28]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, 255, MEMORY[0x1E69D0098]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  v197 = v190;
  v198 = v206;
  v196 = v62;
  v190 = v55;
  v63 = v58;
  v64 = v187;
  static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
  v65 = FlowSearchResult.flow.getter();
  if (v65)
  {
    *v54 = v65;
    (*(v51 + 104))(v54, *MEMORY[0x1E69CFAF0], v50);
    static FlowTrace.trace(event:)();
    (*(v51 + 8))(v54, v50);
  }

  else
  {
    FlowSearchResult.actingFlow.getter();
    if (v204)
    {
      outlined init with take of ReferenceResolutionClientProtocol(&v203, &v205);
      outlined init with copy of ReferenceResolutionClientProtocol(&v205, v54);
      (*(v51 + 104))(v54, *MEMORY[0x1E69CFAB8], v50);
      static FlowTrace.trace(event:)();
      (*(v51 + 8))(v54, v50);
      __swift_destroy_boxed_opaque_existential_1Tm(&v205);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v203, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    }
  }

  FlowSearchResult.actingFlow.getter();
  v66 = v189;
  v67 = v188;
  if (v204)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v203, &v205);
    if (!FlowSearchResult.flow.getter())
    {
      v86 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
      v87 = v181;
      swift_beginAccess();
      v88 = v87 + v86;
      v89 = v172;
      outlined init with copy of RemoteConversationService.State(v88, v172, type metadata accessor for RemoteConversationService.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v178 = v58;
      if (EnumCaseMultiPayload)
      {
        v187 = v64;
        outlined destroy of RemoteConversationService.State(v89, type metadata accessor for RemoteConversationService.State);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        __swift_project_value_buffer(v91, static Logger.executor);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_1DC659000, v92, v93, "canHandle() called while we're not in a turn. This means we cannot keep the provided input in-memory for followup calls to accept().", v94, 2u);
          MEMORY[0x1E12A2F50](v94, -1, -1);
        }

        v95 = v183;
        (*(v194 + 56))(v183, 1, 1, v195);
        v96 = v184;
        (*(v185 + 56))(v184, 1, 1, v186);
        v97 = v182;
        outlined init with copy of ReferenceResolutionClientProtocol?(v95, v182, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        CanHandleResult = type metadata accessor for ConversationCanHandleResult();
        v99 = objc_allocWithZone(CanHandleResult);
        v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
        v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
        outlined init with copy of ReferenceResolutionClientProtocol?(v96, &v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v200.receiver = v99;
        v200.super_class = CanHandleResult;
        v100 = objc_msgSendSuper2(&v200, sel_init);
        outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (v193)(v100);

        __swift_destroy_boxed_opaque_existential_1Tm(&v205);
      }

      else
      {
        v189 = v89[10];
        outlined destroy of ReferenceResolutionClientProtocol?((v89 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        v120 = v179;
        UUID.init()();
        v188 = *(v194 + 16);
        v121 = v173;
        v188(v173, v120, v195);
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
        v123 = *(v122 + 48);
        v124 = *(v122 + 64);
        v125 = v185;
        v126 = v167;
        v127 = v186;
        (*(v185 + 16))(v167, v206, v186);
        outlined init with copy of ReferenceResolutionClientProtocol(&v205, v126 + v123);
        *(v126 + v124) = v196;
        (*(*(v122 - 8) + 56))(v126, 0, 1, v122);
        swift_beginAccess();

        specialized Dictionary.subscript.setter(v126, v121);
        swift_endAccess();
        v128 = v183;
        v129 = v195;
        v188(v183, v179, v195);
        (*(v194 + 56))(v128, 0, 1, v129);
        v130 = v184;
        (*(v125 + 56))(v184, 1, 1, v127);
        v131 = v182;
        outlined init with copy of ReferenceResolutionClientProtocol?(v128, v182, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v132 = type metadata accessor for ConversationCanHandleResult();
        v133 = objc_allocWithZone(v132);
        v133[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
        v133[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
        outlined init with copy of ReferenceResolutionClientProtocol?(v130, &v133[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v131, &v133[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v199.receiver = v133;
        v199.super_class = v132;
        v134 = objc_msgSendSuper2(&v199, sel_init);
        outlined destroy of ReferenceResolutionClientProtocol?(v131, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v130, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (v193)(v134);

        (*(v194 + 8))(v179, v195);
        __swift_destroy_boxed_opaque_existential_1Tm(&v205);
      }

      return (*(v191 + 8))(v178, v190);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v205);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v203, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  }

  v68 = FlowSearchResult.flow.getter();
  if (v68)
  {
    v172 = v68;
    v69 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
    v70 = v181;
    swift_beginAccess();
    outlined init with copy of RemoteConversationService.State(v70 + v69, v47, type metadata accessor for RemoteConversationService.State);
    v71 = swift_getEnumCaseMultiPayload();
    v187 = v64;
    v178 = v58;
    if (v71)
    {
      outlined destroy of RemoteConversationService.State(v47, type metadata accessor for RemoteConversationService.State);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.executor);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1DC659000, v73, v74, "canHandle() called while we're not in a turn. This means we cannot keep the provided input in-memory for followup calls to accept().", v75, 2u);
        MEMORY[0x1E12A2F50](v75, -1, -1);
      }

      v76 = v183;
      (*(v194 + 56))(v183, 1, 1, v195);
      v77 = v184;
      (*(v185 + 56))(v184, 1, 1, v186);
      v78 = v182;
      outlined init with copy of ReferenceResolutionClientProtocol?(v76, v182, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v79 = type metadata accessor for ConversationCanHandleResult();
      v80 = objc_allocWithZone(v79);
      v80[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
      v80[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
      outlined init with copy of ReferenceResolutionClientProtocol?(v77, &v80[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v78, &v80[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v202.receiver = v80;
      v202.super_class = v79;
      v81 = objc_msgSendSuper2(&v202, sel_init);
      outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v193)(v81);
    }

    else
    {
      v189 = v47[10];
      outlined destroy of ReferenceResolutionClientProtocol?((v47 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v102 = v179;
      UUID.init()();
      v103 = *(v194 + 16);
      v104 = v173;
      v105 = v102;
      v103(v173, v102, v195);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
      v107 = *(v106 + 48);
      v108 = *(v106 + 64);
      v109 = v185;
      v110 = v170;
      (*(v185 + 16))(v170, v206, v186);
      *(v110 + v107) = v172;
      *(v110 + v108) = v196;
      (*(*(v106 - 8) + 56))(v110, 0, 1, v106);
      swift_beginAccess();

      specialized Dictionary.subscript.setter(v110, v104);
      swift_endAccess();
      v111 = v183;
      v112 = v195;
      v103(v183, v105, v195);
      (*(v194 + 56))(v111, 0, 1, v112);
      v113 = v184;
      (*(v109 + 56))(v184, 1, 1, v186);
      v114 = v182;
      outlined init with copy of ReferenceResolutionClientProtocol?(v111, v182, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v115 = type metadata accessor for ConversationCanHandleResult();
      v116 = objc_allocWithZone(v115);
      v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
      v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
      outlined init with copy of ReferenceResolutionClientProtocol?(v113, &v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v114, &v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v201.receiver = v116;
      v201.super_class = v115;
      v117 = objc_msgSendSuper2(&v201, sel_init);
      outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v193)(v117);

      (*(v194 + 8))(v179, v195);
    }

    return (*(v191 + 8))(v178, v190);
  }

  v82 = v174;
  FlowSearchResult.transformer.getter();
  v83 = type metadata accessor for NamedParseTransformer();
  v84 = *(v83 - 8);
  if ((*(v84 + 48))(v82, 1, v83) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR);
    v85 = v175;
    (*(v176 + 56))(v175, 1, 1, v177);
  }

  else
  {
    v85 = v175;
    NamedParseTransformer.resolve()();
    (*(v84 + 8))(v82, v83);
    v118 = v176;
    v119 = v177;
    if ((*(v176 + 48))(v85, 1, v177) != 1)
    {
      (*(v118 + 32))(v171, v85, v119);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      __swift_project_value_buffer(v135, static Logger.executor);
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_1DC659000, v136, v137, "Conversation wants to reform input", v138, 2u);
        v118 = v176;
        MEMORY[0x1E12A2F50](v138, -1, -1);
      }

      v139 = Transformer.transform.getter();
      Input.parse.getter();
      v139(v66);
      v140 = *(v168 + 8);
      v140(v66, v169);

      if (v64)
      {
        v141 = v164;
        *v164 = v64;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v141 = v164;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v67, v164, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      }

      v142 = v141;
      v143 = v165;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v142, v165, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v144 = *v143;
        v145 = v144;
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v149 = v58;
          v150 = swift_slowAlloc();
          v205 = v150;
          *v148 = 136315138;
          *&v203 = v144;
          v151 = v144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v152 = String.init<A>(describing:)();
          v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, &v205);

          *(v148 + 4) = v154;
          v118 = v176;
          _os_log_impl(&dword_1DC659000, v146, v147, "Conversation wants to reform input, but got an error in transformation: %s", v148, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v150);
          v155 = v150;
          v63 = v149;
          MEMORY[0x1E12A2F50](v155, -1, -1);
          MEMORY[0x1E12A2F50](v148, -1, -1);
        }

        if (one-time initialization token for unsupported != -1)
        {
          swift_once();
        }

        (v193)(static ConversationCanHandleResult.unsupported);
      }

      else
      {
        v206 = v140;
        v156 = v168;
        v157 = v162;
        v158 = v169;
        (*(v168 + 32))(v162, v143, v169);
        (*(v156 + 16))(v161, v157, v158);
        v159 = v163;
        Input.init(parse:)();
        v160 = specialized static ConversationCanHandleResult.reformTo(input:)(v159);
        v193();

        (*(v185 + 8))(v159, v186);
        v206(v157, v158);
      }

      (*(v118 + 8))(v171, v177);
      return (*(v191 + 8))(v63, v190);
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR);
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  (v193)(static ConversationCanHandleResult.unsupported);

  return (*(v191 + 8))(v63, v190);
}

uint64_t SiriEnvironment.update(forRequest:)(uint64_t a1)
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v3 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v138 = v136 - v4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v5 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136[1] = v136 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v150 = v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v136 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v146 = v136 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v147 = v136 - v20;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v21 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v142 = v136 - v22;
  v23 = type metadata accessor for ResponseMode();
  v140 = *(v23 - 8);
  v141 = v23;
  v24 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for SiriRequest(0);
  v27 = *(*(v155 - 1) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v152 = v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v145 = v136 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v144 = v136 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v136 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v136 - v37;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logger.executor);
  outlined init with copy of Conversation.State(a1, v38, type metadata accessor for SiriRequest);
  v153 = a1;
  outlined init with copy of Conversation.State(a1, v35, type metadata accessor for SiriRequest);

  v154 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  v43 = os_log_type_enabled(v41, v42);
  v151 = v1;
  v148 = v12;
  v149 = v18;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v136[0] = swift_slowAlloc();
    v156[0] = v136[0];
    *v44 = 136315650;
    v45 = ObjectIdentifier.debugDescription.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v156);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    v48 = v155;
    v49 = *&v38[v155[6]];
    v50 = ObjectIdentifier.debugDescription.getter();
    v52 = v51;
    outlined destroy of Conversation.State(v38, type metadata accessor for SiriRequest);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v156);

    *(v44 + 14) = v53;
    *(v44 + 22) = 2080;
    v54 = *&v35[v48[6]];
    CurrentRequest.responseMode.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550]);
    v55 = v141;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v140 + 8))(v26, v55);
    outlined destroy of Conversation.State(v35, type metadata accessor for SiriRequest);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v156);

    *(v44 + 24) = v59;
    _os_log_impl(&dword_1DC659000, v41, v42, "Setting environment %s currentRequest to %s with responseMode %s", v44, 0x20u);
    v60 = v136[0];
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v60, -1, -1);
    MEMORY[0x1E12A2F50](v44, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v38, type metadata accessor for SiriRequest);
    outlined destroy of Conversation.State(v35, type metadata accessor for SiriRequest);
  }

  v61 = v153;
  v62 = v144;
  outlined init with copy of Conversation.State(v153, v144, type metadata accessor for SiriRequest);
  v63 = v145;
  outlined init with copy of Conversation.State(v61, v145, type metadata accessor for SiriRequest);
  v64 = v152;
  outlined init with copy of Conversation.State(v61, v152, type metadata accessor for SiriRequest);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v156[0] = v68;
    *v67 = 136315650;
    v69 = v155;
    v70 = *(v62 + v155[6]);
    v71 = CurrentRequest.executionRequestId.getter();
    if (v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = 7104878;
    }

    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = 0xE300000000000000;
    }

    outlined destroy of Conversation.State(v62, type metadata accessor for SiriRequest);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v156);

    *(v67 + 4) = v75;
    *(v67 + 12) = 2080;
    v76 = *(v63 + v69[6]);
    v77 = CurrentRequest.rootRequestId.getter();
    if (v78)
    {
      v79 = v77;
    }

    else
    {
      v79 = 7104878;
    }

    if (v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0xE300000000000000;
    }

    outlined destroy of Conversation.State(v63, type metadata accessor for SiriRequest);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v156);

    *(v67 + 14) = v81;
    *(v67 + 22) = 2080;
    v82 = v152;
    v83 = *(v152 + v69[6]);
    v84 = CurrentRequest.sessionId.getter();
    if (v85)
    {
      v86 = v84;
    }

    else
    {
      v86 = 7104878;
    }

    if (v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = 0xE300000000000000;
    }

    v61 = v153;
    outlined destroy of Conversation.State(v82, type metadata accessor for SiriRequest);
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v156);

    *(v67 + 24) = v88;
    _os_log_impl(&dword_1DC659000, v65, v66, "updating environment with SiriRequest having executionRequestId - %s, rootRequestId - %s, sessionId - %s", v67, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v62, type metadata accessor for SiriRequest);
    outlined destroy of Conversation.State(v63, type metadata accessor for SiriRequest);
    outlined destroy of Conversation.State(v64, type metadata accessor for SiriRequest);
  }

  v89 = v147;
  SiriEnvironment.currentRequest.getter();
  v90 = CurrentRequest.overrideProperties.getter();

  if (v90)
  {
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1DC659000, v91, v92, "Applying overrides on request", v93, 2u);
      MEMORY[0x1E12A2F50](v93, -1, -1);
    }

    v94 = *(v61 + v155[6]);
    static CurrentRequestOverrides.applyOverrides(on:overrides:)();
  }

  v95 = v155;
  v96 = *(v61 + v155[6]);

  SiriEnvironment.currentRequest.setter();
  v97 = *(v61 + v95[7]);

  SiriEnvironment.sessionConfigurationProvider.setter();

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v156[0] = v101;
    *v100 = 136315138;
    SiriEnvironment.sessionConfigurationProvider.getter();
    SessionConfigurationProvider.sessionConfiguration.getter();

    v102 = String.init<A>(describing:)();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v156);

    *(v100 + 4) = v104;
    _os_log_impl(&dword_1DC659000, v98, v99, "Set environment's SessionConfiguration with configuration: %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    MEMORY[0x1E12A2F50](v101, -1, -1);
    MEMORY[0x1E12A2F50](v100, -1, -1);
  }

  v105 = v149;
  v106 = v146;
  SiriEnvironment.userIdentity.getter();
  v107 = v155[12];
  outlined init with copy of ReferenceResolutionClientProtocol?(v61 + v107, v106, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v108 = type metadata accessor for SiriRequestIdentities(0);
  v109 = *(*(v108 - 8) + 48);
  if (v109(v106, 1, v108) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v110 = type metadata accessor for IdentifiedUser();
    (*(*(v110 - 8) + 56))(v89, 1, 1, v110);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v106, v89, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of Conversation.State(v106, type metadata accessor for SiriRequestIdentities);
  }

  dispatch thunk of UserIdentityProvider.identityForCurrentRequest.setter();

  SiriEnvironment.userIdentity.getter();
  v111 = v148;
  outlined init with copy of ReferenceResolutionClientProtocol?(v61 + v107, v148, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  if (v109(v111, 1, v108) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v112 = type metadata accessor for IdentifiedUser();
    (*(*(v112 - 8) + 56))(v105, 1, 1, v112);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v111 + *(v108 + 20), v105, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of Conversation.State(v111, type metadata accessor for SiriRequestIdentities);
  }

  dispatch thunk of UserIdentityProvider.identityMeetingUserSessionThreshold.setter();

  SiriEnvironment.userIdentity.getter();
  v113 = v61 + v107;
  v114 = v150;
  outlined init with copy of ReferenceResolutionClientProtocol?(v113, v150, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  if (v109(v114, 1, v108) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  }

  else
  {
    v115 = *(v114 + *(v108 + 24));

    outlined destroy of Conversation.State(v114, type metadata accessor for SiriRequestIdentities);
  }

  dispatch thunk of UserIdentityProvider.knownHomeMembers.setter();

  SiriEnvironment.scopedReferenceResolutionData.getter();
  v116 = v155;
  outlined copy of Data?(*(v61 + v155[8]), *(v61 + v155[8] + 8));
  dispatch thunk of ScopedReferenceResolutionDataProvider.dataForCurrentRequest.setter();

  v118 = v116[10];
  if (*(v61 + v118))
  {
    v119 = *(v61 + v118);
    swift_retain_n();
    SiriEnvironment.nlRoutingDecision.setter();

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v156[0] = v123;
      *v122 = 136315138;
      SiriEnvironment.nlRoutingDecision.getter();
      dispatch thunk of NLRoutingDecisionProvider.genAIFallbackSuppressReason.getter();

      v124 = String.init<A>(describing:)();
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v156);

      *(v122 + 4) = v126;
      _os_log_impl(&dword_1DC659000, v120, v121, "Set environment's NLRoutingDecisionProvider with genAIFallbackSuppressReason: %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      MEMORY[0x1E12A2F50](v123, -1, -1);
      MEMORY[0x1E12A2F50](v122, -1, -1);
    }
  }

  v127 = v155[11];
  if (*(v61 + v127))
  {
    v128 = *(v61 + v127);
    swift_retain_n();
    SiriEnvironment.flowRedirectContextProvider.setter();

    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v156[0] = v132;
      *v131 = 136315138;
      SiriEnvironment.flowRedirectContextProvider.getter();
      FlowRedirectContextProvider.flowRedirectContext.getter();

      v133 = String.init<A>(describing:)();
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v156);

      *(v131 + 4) = v135;
      _os_log_impl(&dword_1DC659000, v129, v130, "Set environment's FlowRedirectContextProvider with flowRedirectContext: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      MEMORY[0x1E12A2F50](v132, -1, -1);
      MEMORY[0x1E12A2F50](v131, -1, -1);
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v2 = v0[2];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(v2, (v0 + 3), v3, v4, v5, v6);
}

uint64_t closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), 0, 0);
}

uint64_t closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v1 = *(v0 + 56);
  v8 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v8;
  *(v3 + 56) = v1;
  v5 = *(MEMORY[0x1E69E87D8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:);

  return MEMORY[0x1EEE6DBF8]();
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a3;
  v8[19] = a4;
  v8[17] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), 0, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 152), v0 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
    if (*(v0 + 80))
    {
      v2 = *(v0 + 192);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
      v3 = type metadata accessor for TaskPriority();
      (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 96);
      v4 = one-time initialization token for shared;
      v6 = v1;
      if (v4 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 192);
      v8 = *(v0 + 136);
      v9 = static ConversationActor.shared;
      v10 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v5, type metadata accessor for ConversationActor);
      v11 = swift_allocObject();
      v11[2] = v9;
      v11[3] = v10;
      v11[4] = v6;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), (v11 + 5));

      _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v7, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v11);

      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_sScPSgMd, &_sScPSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
    }
  }

  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  v16 = *(v0 + 160);
  v17 = *(v0 + 136);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v19[5] = v14;
  v19[6] = v15;
  v19[7] = v13;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v12, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v19);
  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sScPSgMd, &_sScPSgMR);
  v20 = *(MEMORY[0x1E69E8578] + 4);
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGyytGMd, &_sScGyytGMR);
  *v21 = v0;
  v21[1] = closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:);
  v23 = *(v0 + 136);

  return MEMORY[0x1EEE6D898](0, 0, v22);
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DC74371C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC74376C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v22 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_1DC7439CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed RemoteConversationXPC?) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    RemoteConversationXPC.sendableWrapper.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t specialized PhoneAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v69 = type metadata accessor for USOParse();
  v2 = *(v69 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  Input.parse.getter();
  v16 = Parse.hasCancelled.getter();
  v17 = *(v6 + 8);
  v17(v15, v5);
  if (v16 & 1) != 0 || (Input.parse.getter(), v18 = Parse.hasRejected.getter(), v17(v12, v5), (v18))
  {
    SiriEnvironment.callState.getter();
    v19 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

    if ((v19 & 7) != 0)
    {
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
        _os_log_impl(&dword_1DC659000, v21, v22, "PhoneAffinityScorer detected an ongoing call, overriding score.", v23, 2u);
        MEMORY[0x1E12A2F50](v23, -1, -1);
      }

      return 4;
    }

    return 0;
  }

  Input.parse.getter();
  if ((*(v6 + 88))(v9, v5) != *MEMORY[0x1E69D0168])
  {
    v17(v9, v5);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.executor);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1DC659000, v42, v43, "PhoneAffinityScorer received unexpected parse.", v44, 2u);
      MEMORY[0x1E12A2F50](v44, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v6 + 96))(v9, v5);
  v25 = v2;
  v26 = v69;
  (*(v2 + 32))(v70, v9, v69);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
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
      _os_log_impl(&dword_1DC659000, v46, v47, "PhoneAffinityScorer Could not extract usoTask from parse.", v48, 2u);
      MEMORY[0x1E12A2F50](v48, -1, -1);

      (*(v25 + 8))(v70, v26);
      return 2;
    }

    (*(v2 + 8))(v70, v26);
    return 2;
  }

  v27 = UsoTask.parseResult.getter();
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v28 = static InCallFeatureFlags.forceEnabled;
  os_unfair_lock_lock((static InCallFeatureFlags.forceEnabled + 20));
  v29 = *(v28 + 16);
  if (v29 == 2)
  {
    v72[3] = &type metadata for InCallFeatureFlags;
    v72[4] = lazy protocol witness table accessor for type InCallFeatureFlags and conformance InCallFeatureFlags();
    v29 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
  }

  v68 = v2;
  os_unfair_lock_unlock((v28 + 20));
  SiriEnvironment.callState.getter();
  v30 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v31 = v30 & 7;
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.executor);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109376;
    *(v35 + 4) = v29 & 1;
    *(v35 + 8) = 1024;
    *(v35 + 10) = v31 != 0;
    _os_log_impl(&dword_1DC659000, v33, v34, "PhoneAffinityScorer SIC enabled=%{BOOL}d, callIsActive=%{BOOL}d", v35, 0xEu);
    v36 = v35;
    v26 = v69;
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  if ((v27 & 0x100) == 0)
  {
    if (v31)
    {
      if ((v27 & 9) != 1 && v27 && ((v29 ^ 1) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((v29 & ((v27 & 8) >> 3)) == 1)
    {
LABEL_24:
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v37, v38))
      {
LABEL_27:

        (*(v68 + 8))(v70, v26);
        return 4;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "PhoneAffinityScorer settings: returning .override.";
LABEL_26:
      _os_log_impl(&dword_1DC659000, v37, v38, v40, v39, 2u);
      MEMORY[0x1E12A2F50](v39, -1, -1);
      goto LABEL_27;
    }

    v37 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "PhoneAffinityScorer settings: returning .unsupported.";
      goto LABEL_51;
    }

    goto LABEL_73;
  }

  if (v27 > 2u)
  {
    if (v27 > 4u)
    {
      if (v27 == 5)
      {
        v37 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
        v57 = os_log_type_enabled(v37, v56);
        if ((v29 & (v31 != 0)) == 1)
        {
          if (v57)
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_1DC659000, v37, v56, "PhoneAffinityScorer cameraAppParse: returning .override.", v58, 2u);
            MEMORY[0x1E12A2F50](v58, -1, -1);
          }

          goto LABEL_27;
        }

        if (!v57)
        {
          goto LABEL_73;
        }

        v64 = swift_slowAlloc();
        *v64 = 0;
        v65 = "PhoneAffinityScorer cameraAppParse: returning .unsupported.";
      }

      else
      {
        v37 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v37, v56))
        {
          goto LABEL_73;
        }

        v64 = swift_slowAlloc();
        *v64 = 0;
        v65 = "PhoneAffinityScorer otherAppParse: returning .unsupported.";
      }

      _os_log_impl(&dword_1DC659000, v37, v56, v65, v64, 2u);
      MEMORY[0x1E12A2F50](v64, -1, -1);
      goto LABEL_73;
    }

    if (v27 == 3)
    {
      SiriEnvironment.callState.getter();
      v49 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

      if ((v49 & 1) == 0)
      {
        (*(v68 + 8))(v70, v26);

        return 1;
      }

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_27;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "PhoneAffinityScorer UsoTask_update_common_Communication on an active call";
      goto LABEL_26;
    }

    goto LABEL_53;
  }

  if (!v27)
  {
LABEL_53:
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v24 = 2;
      v55 = swift_slowAlloc();
      *v55 = 0;
      MEMORY[0x1E12A2F50](v55, -1, -1);

      (*(v68 + 8))(v70, v26);
      return v24;
    }

    (*(v68 + 8))(v70, v26);
    return 2;
  }

  if (v27 == 1)
  {
    v37 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "PhoneAffinityScorer other settings: returning .unsupported.";
LABEL_51:
      _os_log_impl(&dword_1DC659000, v37, v50, v52, v51, 2u);
      MEMORY[0x1E12A2F50](v51, -1, -1);
    }

LABEL_73:

    (*(v68 + 8))(v70, v26);
    return 0;
  }

  SiriEnvironment.callState.getter();
  v59 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

  v60 = v59 & 4;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 67109120;
    *(v63 + 4) = v60 >> 2;
    _os_log_impl(&dword_1DC659000, v61, v62, "PhoneAffinityScorer callIsRinging=%{BOOL}d", v63, 8u);
    MEMORY[0x1E12A2F50](v63, -1, -1);
  }

  (*(v68 + 8))(v70, v26);
  if (v60)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t RemoteConversationXPC.sendableWrapper.getter()
{
  type metadata accessor for SendableRemoteConversationXPCWrapper();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v3 = specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  **(v0 + 32) = *(v0 + 16);
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v3 = specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 48);
  return (*(v0 + 8))();
}

id outlined copy of Result<RemoteConversation?, Error>(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void outlined consume of Result<RemoteConversation?, Error>(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = v6[14];
    v10 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v12 = v6[14];
    v11 = v6[15];

    v6[18] = a2;
    v6[19] = a1;
    v10 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v11 = *v3;

  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  v9 = *(v11 + 8);

  return v9();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v4 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v4;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t partial apply for closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:), v9, 0);
}

uint64_t closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)()
{
  v1 = v0[2] + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider;
  v2 = *(v1 + 8);
  v3 = (*v1)(v0[3], v0[4]);
  if (v3)
  {
    v4 = v3;
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
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "Starting turn from pre-cached turn data", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = v0[2];

    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;

    RemoteConversationService.startTurn(turnData:bridge:reply:)(v4, v11, partial apply for closure #1 in closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:), v13);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "No pre-cached turn data available, it will need to be re-sent.", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v18 = v0[6];
    v19 = v0[7];

    v18(0, 0);
  }

  v20 = v0[1];

  return v20();
}

char *closure #2 in closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = *(Strong + 80);

  v6 = SharedFlowPluginService.CurrentTurnCache.getIfMatches(executionRequestId:)(a1, a2);

  return v6;
}

char *SharedFlowPluginService.CurrentTurnCache.getIfMatches(executionRequestId:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "Trying to recover turn data from cache, but not in a turn", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    return 0;
  }

  v4 = *&v3[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId] == a1 && *&v3[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId + 8] == a2;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v10 = one-time initialization token for executor;
    v11 = v3;
    if (v10 != -1)
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
      _os_log_impl(&dword_1DC659000, v13, v14, "Trying to recover turn data from cache, but request ID does not match", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }

  v5 = v3;
  return v3;
}

uint64_t RemoteConversationService.startTurn(turnData:bridge:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  Logger.debugF(file:function:)();
  swift_getObjectType();
  v14 = ServiceBridge.errorHandlingProxy.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = one-time initialization token for shared;

  v17 = a1;

  if (v16 != -1)
  {
    swift_once();
  }

  v19 = static ConversationActor.shared;
  v20 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v18, type metadata accessor for ConversationActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v5;
  v21[5] = v17;
  v21[6] = v14;
  v21[7] = a3;
  v21[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:), v21);
}

uint64_t sub_1DC746090()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_59Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  outlined consume of Data._Representation(v0[5], v0[6]);
  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 280);
  v12 = *v4;
  *(v5 + 288) = a1;
  *(v5 + 296) = a2;
  *(v5 + 368) = a3;
  *(v5 + 304) = v3;

  if (v3)
  {
    v7 = *(v5 + 248);
    v8 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v9 = *(v5 + 272);
    v10 = *(v5 + 248);

    v8 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v5 = *v4;
  v6 = *(*v4 + 336);
  v12 = *v4;
  *(v5 + 344) = a1;
  *(v5 + 352) = a2;
  *(v5 + 369) = a3;
  *(v5 + 360) = v3;

  if (v3)
  {
    v7 = *(v5 + 248);
    v8 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v9 = *(v5 + 328);
    v10 = *(v5 + 248);

    v8 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)(uint64_t a1)
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
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v9 = type metadata accessor for UUID();
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v11 = *(v10 + 64) + 15;
  v8[26] = swift_task_alloc();
  v12 = type metadata accessor for RemoteConversationService.State(0);
  v8[27] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v14 = *(*(type metadata accessor for RemoteConversationTurnData(0) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v8[32] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:), v15, 0);
}

void outlined consume of InterruptibleTaskResult<RemoteConversation?>(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 184);
  v11 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = v4[21];
    v7 = SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  }

  else
  {
    v9 = v4[21];
    v8 = v4[22];

    v7 = SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
    v6 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with copy of MultiUserState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiUserState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  else
  {
    v8 = closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 96);
  v7 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  outlined destroy of UUID?(v6);
  v8 = *(v3 + 104);
  if (v1)
  {
    v9 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  else
  {
    v9 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for RemoteConversationTurnData(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.startTurn(turnData:bridge:), v3, 0);
}

uint64_t RemoteConversationClient.startTurn(turnData:bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  if (*(v1 + 184) == 2)
  {
    *(v1 + 184) = *(*(v0 + 16) + *(*(v0 + 48) + 44));
  }

  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v6[20];
  v16 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v6 + 16, v6[19]);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(v7, v3, type metadata accessor for RemoteConversationTurnData);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  outlined init with take of RemoteConversationTurnData(v3, v10 + v9);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v11 = swift_allocObject();
  *(v0 + 80) = v11;
  *(v11 + 16) = &async function pointer to partial apply for closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  *(v11 + 24) = v10;
  v12 = *(v8 + 8);
  swift_unknownObjectRetain();
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 88) = v14;
  *v14 = v0;
  v14[1] = RemoteConversationClient.startTurn(turnData:bridge:);

  return v17();
}

{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = RemoteConversationClient.startTurn(turnData:bridge:);
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 40);

    v5 = RemoteConversationClient.startTurn(turnData:bridge:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1DC747834()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v22 = v0;
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
  v18 = *(v22 + v17);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v22, v17 + 16, v2 | 7);
}

uint64_t sub_1DC747AA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *vtable thunk for OrderedForest.push(value:parentNode:) dispatching to InstrumentedStack.push(value:parentNode:)(uint64_t *a1, uint64_t a2)
{
  v4 = specialized OrderedForest.push(value:parentNode:)(*a1, a2);
  v5 = InstrumentedStack.getTrackedFlow(from:)(a2);
  v6 = v4[2];
  v7 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v11 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v10, v5);

  swift_beginAccess();
  v12 = *(v2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
  *(v2 + 40) = v15;
  swift_endAccess();

  return v4;
}

uint64_t protocol witness for AceServiceInvoker.currentStartRequestId() in conformance AceServiceInvokerImpl()
{
  v1 = *v0;
  if (*(*v0 + 64))
  {
    v2 = v1[7];
  }

  else
  {
    v2 = v1[5];
    v3 = v1[6];
  }

  return v2;
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(void *a1)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Input.parse.getter();
  dispatch thunk of FlowPluginExtended.findFlowForX(parse:)();
  return (*(v3 + 8))(v6, v2);
}

void *specialized OrderedForest.push(value:parentNode:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();

  v4 = specialized Node.init(value:parent:)(v3);
  if (a2)
  {
    swift_beginAccess();

    MEMORY[0x1E12A1680](v5);
    if (*((*(a2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((*(a2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  specialized OrderedForest._push(_:)(v4);
  return v4;
}

void *specialized Node.init(value:parent:)(uint64_t a1)
{
  swift_weakInit();
  swift_weakInit();
  v1[6] = 0;
  v1[2] = a1;
  swift_beginAccess();
  swift_weakAssign();

  v1[4] = MEMORY[0x1E69E7CC0];
  swift_weakAssign();
  v3 = v1[6];
  v1[6] = 0;

  return v1;
}

uint64_t specialized OrderedForest._push(_:)(uint64_t a1)
{
  if (v1[2] && v1[3])
  {
    v3 = v1[3];
    swift_weakAssign();
    v4 = v1[3];
    if (v4)
    {
      v5 = *(v4 + 48);
      *(v4 + 48) = a1;

      v6 = v1[3];
    }

    v1[3] = a1;
  }

  else
  {
    v1[3] = a1;
    swift_retain_n();

    v7 = v1[2];
    v1[2] = a1;
  }

  result = swift_beginAccess();
  v9 = v1[4];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v11;
  }

  return result;
}

uint64_t InstrumentedStack.getTrackedFlow(from:)(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 16);
    swift_beginAccess();
    v3 = *(v1 + 40);
    if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v33 = *(*(v7 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x1E12A23D0](*(v10 + 40), v23);
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 16 * v18) = v33;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v7 + 32);
      if (v31 >= 64)
      {
        bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v31;
      }

      *(v7 + 16) = 0;
    }

    v5 = v32;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DCA66060;

  v13 = ObjectIdentifier.hashValue.getter();
  v14 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = MEMORY[0x1E69E6530];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v15 = 0xE300000000000000;
  v16 = String.init(format:_:)();
  v18 = v17;

  v3[2] = v16;
  v3[3] = v18;
  if (a2)
  {
    v19 = a2[2];
    v15 = a2[3];
  }

  else
  {
    v19 = 7104878;
  }

  v3[4] = v19;
  v3[5] = v15;

  v20 = AnyFlow.description.getter();
  v22 = v21;

  v3[6] = v20;
  v3[7] = v22;
  if (a2)
  {
    v24 = a2[8];
    v23 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v23)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = 0;
  if (v23)
  {
    goto LABEL_10;
  }

LABEL_6:
  v3[8] = v25;
  if (one-time initialization token for executor != -1)
  {
LABEL_11:
    swift_once();
  }

  v26 = static Log.executor;
  OSSignpostID.init(log:)();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId, v10, v6);
  v42 = static os_signpost_type_t.begin.getter();
  v41 = OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DCA69C10;
  v28 = v3[6];
  v29 = v3[7];
  v30 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v31 = lazy protocol witness table accessor for type String and conformance String();
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  v32 = v3[8];
  v33 = MEMORY[0x1E69E6530];
  *(v27 + 96) = MEMORY[0x1E69E6530];
  v34 = MEMORY[0x1E69E65A8];
  *(v27 + 64) = v31;
  *(v27 + 72) = v32;
  v35 = v3[2];
  v36 = v3[3];
  *(v27 + 136) = v30;
  *(v27 + 144) = v31;
  *(v27 + 104) = v34;
  *(v27 + 112) = v35;
  *(v27 + 120) = v36;
  v37 = v3[4];
  v38 = v3[5];
  *(v27 + 176) = v30;
  *(v27 + 184) = v31;
  *(v27 + 152) = v37;
  *(v27 + 160) = v38;

  v39 = MEMORY[0x1E12A15C0](v28, v29);
  *(v27 + 216) = v33;
  *(v27 + 224) = v34;
  *(v27 + 192) = v39;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  return v3;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B18_Nlu_External_TaskV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Task();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationCanHandleResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for Input();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v21 = MEMORY[0x1E12A1410](0x6E656449776F6C66, 0xEE00726569666974);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v21];

    (*(v16 + 8))(v19, v15);
  }

  v22 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported);
  v23 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A870);
  [(objc_class *)with.super.isa encodeBool:v22 forKey:v23];

  v24 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude);
  v25 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeBool:v24 forKey:v25];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput, v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v26 = v38;
  v27 = (*(v38 + 48))(v7, 1, v8);
  v28 = v37;
  if (v27 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    (*(v26 + 32))(v37, v7, v8);
    v29 = type metadata accessor for PropertyListEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input);
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v34 = v33;

    v35 = Data._bridgeToObjectiveC()().super.isa;
    v36 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A890);
    [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
    outlined consume of Data._Representation(v32, v34);

    (*(v26 + 8))(v28, v8);
  }
}

uint64_t closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 192);

  (*(v11 + 32))(v8, v9, v10);
  outlined init with copy of ReferenceResolutionClientProtocol(v12 + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C6Plugin_pMd, &_s11SiriKitFlow0C6Plugin_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C14PluginExtended_pMd, &_s11SiriKitFlow0C14PluginExtended_pMR);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 272);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v46 = *(v0 + 240);
    v48 = *(v0 + 264);
    v42 = *(v0 + 200);
    v44 = *(v0 + 208);
    v17 = *(v0 + 192);
    v41 = *(v0 + 176);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 16);
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    Input.identifier.getter();
    v18 = swift_task_alloc();
    *(v18 + 16) = v17;
    *(v18 + 24) = v0 + 16;
    *(v18 + 32) = v13;
    *(v18 + 40) = v41;
    dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginFindFlowTime<A>(rcId:hypothesisId:_:)();

    (*(v16 + 8))(v15, v46);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    (*(v14 + 8))(v13, v48);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s11SiriKitFlow0C14PluginExtended_pSgMd, &_s11SiriKitFlow0C14PluginExtended_pSgMR);
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
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "Warning: Old flow plugin that doesn't support findFlowForX. Cannot safely ask it if it will handle input, so assuming it will.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v23 = *(v0 + 264);
    v24 = *(v0 + 272);
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 216);
    v47 = *(v0 + 184);
    v49 = *(v0 + 288);
    v43 = v23;
    v45 = *(v0 + 176);

    (*(v25 + 56))(v27, 1, 1, v26);
    (*(v24 + 56))(v29, 1, 1, v23);
    outlined init with copy of ReferenceResolutionClientProtocol?(v27, v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    CanHandleResult = type metadata accessor for ConversationCanHandleResult();
    v31 = objc_allocWithZone(CanHandleResult);
    v31[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
    v31[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
    outlined init with copy of ReferenceResolutionClientProtocol?(v29, &v31[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v28, &v31[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *(v0 + 136) = v31;
    *(v0 + 144) = CanHandleResult;
    v32 = objc_msgSendSuper2((v0 + 136), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v45(v32);

    (*(v24 + 8))(v49, v43);
  }

  v34 = *(v0 + 280);
  v33 = *(v0 + 288);
  v35 = *(v0 + 256);
  v37 = *(v0 + 224);
  v36 = *(v0 + 232);
  v38 = *(v0 + 216);

  v39 = *(v0 + 8);

  return v39();
}

void specialized TaskLoggingService.logSELFFlowTask(activityType:eventContext:eventTime:task:taskType:app:attribute:domainContext:parameterName:responseId:statusReasonDescription:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      specialized TaskLoggingService.updateFlowTaskState(aceServiceInvoker:taskName:interactionId:taskId:)((a2 + 32), a5, a6, *(a2 + 96), *(a2 + 104), *(a4 + 16), *(a4 + 24));
      goto LABEL_12;
    }

    if (a1 != 2)
    {
      goto LABEL_12;
    }
  }

  else if ((a1 - 4) >= 2 && a1 != 128)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.instrumentation);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v111[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v111);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a4 + 16), *(a4 + 24), v111);
    *(v23 + 22) = 1024;
    *(v23 + 24) = a1;
    _os_log_impl(&dword_1DC659000, v21, v22, "#TaskLoggingService - sending update context to reset FlowTaskState for TaskType: %s, TaskId: %s, ActivityType: %d", v23, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  specialized TaskLoggingService.resetFlowTaskState(aceServiceInvoker:)((a2 + 32));
LABEL_12:
  v106 = a5;
  v108 = a6;
  v25 = SiriKitEventContext.resultCandidateId.getter();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 13101;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE200000000000000;
  }

  v30 = *(a2 + 80);
  v29 = *(a2 + 88);
  v31 = *(a4 + 16);
  v110 = *(a4 + 24);
  v32 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (!v32)
  {
    goto LABEL_33;
  }

  v107 = v32;
  v33 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v33)
  {

LABEL_33:
    v59 = v31;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.instrumentation);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = v30;
      v65 = swift_slowAlloc();
      v111[0] = v65;
      *v63 = 136315650;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v111);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v110, v111);
      *(v63 + 22) = 2080;
      *(v63 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v29, v111);
      _os_log_impl(&dword_1DC659000, v61, v62, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v63, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v65, -1, -1);
      MEMORY[0x1E12A2F50](v63, -1, -1);

      return;
    }

    goto LABEL_38;
  }

  v34 = v33;
  v101 = v31;
  v35 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v27, v28, v30, v29, v31, v110);
  if (v35)
  {
    v99 = v35;
    v36 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
    v102 = v29;
    v100 = v30;
    if (v36)
    {
      v37 = v36;
      v38 = *(v109 + 152);
      (*(v109 + 144))(v111, a7);
      v40 = v112;
      v39 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v41 = (*(v39 + 8))(v40, v39);
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v41 = 0x6C7070615F746F6ELL;
        v43 = 0xEE00656C62616369;
      }

      v44 = MEMORY[0x1E12A1410](v41, v43);

      [v37 setBundleId_];

      v45 = v112;
      v46 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v47 = *(v46 + 16);
      v48 = v46;
      v30 = v100;
      v49 = v47(v45, v48);
      if (v50)
      {
        v51 = v50;
      }

      else
      {
        v49 = 0x6C7070615F746F6ELL;
        v51 = 0xEE00656C62616369;
      }

      v52 = MEMORY[0x1E12A1410](v49, v51);

      [v37 setAppVersion_];

      v29 = v102;
      [v34 setAppContext_];

      __swift_destroy_boxed_opaque_existential_1Tm(v111);
    }

    v105 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(a13, a14);
    v54 = v53;
    v55 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
    if (v55)
    {
      v56 = v55;
      v57 = MEMORY[0x1E12A1410](v106, v108);
      [v56 setCurrentTaskName_];

      if (a9)
      {
        v58 = MEMORY[0x1E12A1410](a8);
      }

      else
      {
        v58 = 0;
      }

      [v56 setCurrentTaskType_];

      [v56 setFlowStateType_];
      v74 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
      v29 = v102;
      if (v74)
      {
        v75 = v74;
        if ((a15 & 0x100000000) != 0)
        {
          v76 = 0;
        }

        else
        {
          v76 = a15;
        }

        [v74 setStatusReason_];
        [v56 setFlowStateReason_];
      }

      if (a12)
      {
        v77 = MEMORY[0x1E12A1410](a11);
      }

      else
      {
        v77 = 0;
      }

      [v56 setResolvedSlotName_];

      if (v54)
      {
        v78 = MEMORY[0x1E12A1410](v105, v54);
      }

      else
      {
        v78 = 0;
      }

      [v56 setFlowStateReasonDescription_];

      [v34 setFlowState_];
      v30 = v100;
      v73 = a10;
      if (a10)
      {
        goto LABEL_62;
      }
    }

    else
    {

      v73 = a10;
      if (a10)
      {
LABEL_62:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1DCA70640;
        *(v79 + 32) = v73;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
        v80 = v73;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v34 setDomainContexts_];

        v29 = v102;
      }
    }

    Date.timeIntervalSince1970.getter();
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 < 9.22337204e18)
      {
        [v34 setTimestampMs_];
        [v34 setSequenceNum_];

        [v107 setFlowStep_];
        [v107 setEventMetadata_];

        if (one-time initialization token for instrumentation == -1)
        {
LABEL_67:
          v83 = type metadata accessor for Logger();
          __swift_project_value_buffer(v83, static Logger.instrumentation);

          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v111[0] = v87;
            *v86 = 136315906;
            if (a1 > 0xD0)
            {
              v88 = @"FLOWSTATETYPE_UNKNOWN";
              v89 = @"FLOWSTATETYPE_UNKNOWN";
            }

            else
            {
              v88 = off_1E86455C8[a1];
              v89 = off_1E8645C50[a1];
            }

            v92 = v88;
            v93 = v89;
            v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v96 = v95;

            v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v111);

            *(v86 + 4) = v97;
            *(v86 + 12) = 2080;
            v91 = v101;
            v90 = v110;
            *(v86 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v110, v111);
            *(v86 + 22) = 2080;
            *(v86 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v111);
            *(v86 + 32) = 2080;
            *(v86 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 96), *(a2 + 104), v111);
            _os_log_impl(&dword_1DC659000, v84, v85, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v86, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v87, -1, -1);
            MEMORY[0x1E12A2F50](v86, -1, -1);

            v29 = v102;
            v30 = v100;
          }

          else
          {

            v90 = v110;
            v91 = v101;
          }

          v98 = *(v109 + 104);
          (*(v109 + 96))(v107);
          TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v30, v29, v91, v90);

          return;
        }

LABEL_77:
        swift_once();
        goto LABEL_67;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.instrumentation);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v111[0] = v71;
    *v70 = 136315650;
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v111);

    *(v70 + 4) = v72;
    *(v70 + 12) = 2080;
    *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v110, v111);
    *(v70 + 22) = 2080;
    *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v111);
    _os_log_impl(&dword_1DC659000, v68, v69, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v70, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v71, -1, -1);
    MEMORY[0x1E12A2F50](v70, -1, -1);

    return;
  }

LABEL_38:
}

Swift::Void __swiftcall RemoteConversationSpeechData.encode(with:)(NSCoder with)
{
  v2 = v1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v4 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = v72 - v7;
  v8 = type metadata accessor for FlowRedirectContext();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v78 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v11 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72[2] = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v72 - v14;
  v16 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v76 = *(v16 - 8);
  v17 = *(v76 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8), v18);
  v22 = MEMORY[0x1E12A1410](1682531186, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v23 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice);
  v24 = MEMORY[0x1E12A1410](0x7665446E4F727361, 0xEB00000000656369);
  [(objc_class *)with.super.isa encodeBool:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
  v26 = MEMORY[0x1E12A1410](0xD000000000000021, 0x80000001DCA81A40);
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v28 = MEMORY[0x1E12A1410](0xD00000000000002ELL, 0x80000001DCA81A70);
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

  v29 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession);
  v30 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA81AC0);
  [(objc_class *)with.super.isa encodeBool:v29 forKey:v30];

  v31 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage);
  v32 = MEMORY[0x1E12A1410](0x6150686365657073, 0xED00006567616B63);
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance + 8))
  {
    v33 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance));
  }

  else
  {
    v33 = 0;
  }

  v34 = MEMORY[0x1E12A1410](0x636E617265747475, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v33 forKey:v34];
  swift_unknownObjectRelease();

  v35 = v79;
  v36 = v76;
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant + 8))
  {
    v37 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant));
  }

  else
  {
    v37 = 0;
  }

  v38 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA86090);
  [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant + 8))
  {
    v39 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant));
  }

  else
  {
    v39 = 0;
  }

  v40 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA860B0);
  [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];
  swift_unknownObjectRelease();

  v41 = type metadata accessor for JSONEncoder();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = JSONEncoder.init()();
  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v15, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v45 = (*(v36 + 48))(v15, 1, v16);
  v81 = v44;
  if (v45 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  }

  else
  {
    (*(v36 + 32))(v20, v15, v16);
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type NLRoutingDecisionMessage.GenAIFallbackSuppressReason and conformance NLRoutingDecisionMessage.GenAIFallbackSuppressReason, MEMORY[0x1E69D0390]);
    v46 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v48 = v47;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v46, v48);
    v50 = isa;
    v51 = MEMORY[0x1E12A1410](0xD00000000000001BLL, 0x80000001DCA86110);
    [(objc_class *)with.super.isa encodeObject:v50 forKey:v51];

    (*(v36 + 8))(v20, v16);
  }

  v52 = v80;
  v53 = v77;
  v54 = v78;
  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v77, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  if ((*(v35 + 48))(v53, 1, v52) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  }

  else
  {
    (*(v35 + 32))(v54, v53, v52);
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type FlowRedirectContext and conformance FlowRedirectContext, MEMORY[0x1E69CFB38]);
    v55 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v56 = v54;
    v58 = v57;
    v59 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v55, v58);
    v60 = v59;
    v61 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA81AE0);
    [(objc_class *)with.super.isa encodeObject:v60 forKey:v61];

    (*(v35 + 8))(v56, v52);
  }

  type metadata accessor for ExecutionLocation();
  lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, MEMORY[0x1E69D35D8]);
  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v64 = v63;
  v65 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v62, v64);
  v66 = MEMORY[0x1E12A1410](0x7461636F4C727361, 0xEB000000006E6F69);
  [(objc_class *)with.super.isa encodeObject:v65 forKey:v66];

  v67 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v69 = v68;
  v70 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v67, v69);
  v71 = MEMORY[0x1E12A1410](0x697461636F4C6C6ELL, 0xEA00000000006E6FLL);
  [(objc_class *)with.super.isa encodeObject:v70 forKey:v71];
}

Swift::Void __swiftcall FlowAgent.complete()()
{
  v1 = type metadata accessor for FlowTraceEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SiriEnvironment();
  v6 = *(v0 + 112);
  v8[0] = v6;
  type metadata accessor for AnyFlow();
  lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
  swift_retain_n();
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();

  if (*(v0 + 120))
  {
    outlined init with copy of Any(v9, v8);

    dispatch thunk of AnyChildCompletion.completion(exitValue:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sypSgMd, &_sypSgMR);
  }

  *v5 = v6;
  outlined init with copy of Any(v9, (v5 + 1));
  (*(v2 + 104))(v5, *MEMORY[0x1E69CFB18], v1);
  static FlowTrace.trace(event:)();
  (*(v2 + 8))(v5, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t partial apply for closure #1 in Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)();
}

uint64_t partial apply for closure #1 in closure #1 in Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return dispatch thunk of AnyChildCompletion.completion(exitValue:)();
}

uint64_t Conversation.removeNode(node:)(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](Conversation.removeNode(node:), v1, 0);
}

uint64_t Conversation.removeNode(node:)()
{
  v43 = v0;
  v1 = *(v0[15] + 112);
  v2 = *(*v1 + 216);
  v3 = v2();
  if (v3)
  {
    v4 = *(v3 + 16);

    v5 = *(v4 + 152);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v0[16] = (*(*v1 + 240))(v0[14]);
  flushProcessWideSiriEnvironmentCache()();
  v6 = v2();
  if (v6)
  {
    v7 = *(v6 + 16);
    v0[17] = v7;

    v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B18_Nlu_External_TaskV_Tt1g5(*(v7 + 152), v5);

    if ((v8 & 1) == 0)
    {
      v9 = v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[18] = Strong;
      if (Strong)
      {
        v11 = v0[15];
        v12 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v14 = *(v7 + 152);
        v0[19] = v14;
        v15 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
        swift_beginAccess();
        v17 = *v15;
        v16 = v15[1];
        v0[20] = v16;
        v18 = *(v12 + 24);

        v41 = (v18 + *v18);
        v19 = v18[1];
        v20 = swift_task_alloc();
        v0[21] = v20;
        *v20 = v0;
        v20[1] = Conversation.removeNode(node:);
        v21 = v14;
        v22 = v17;
        v23 = v16;
LABEL_14:

        return v41(v21, v22, v23, ObjectType, v12);
      }
    }
  }

  else
  {
    v27 = *(v5 + 16);

    if (v27)
    {
      v28 = v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
      swift_beginAccess();
      v29 = swift_unknownObjectWeakLoadStrong();
      v0[22] = v29;
      if (v29)
      {
        v30 = v0[15];
        v12 = *(v28 + 8);
        ObjectType = swift_getObjectType();
        v31 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
        swift_beginAccess();
        v33 = *v31;
        v32 = v31[1];
        v0[23] = v32;
        v34 = *(v12 + 24);

        v41 = (v34 + *v34);
        v35 = v34[1];
        v36 = swift_task_alloc();
        v0[24] = v36;
        *v36 = v0;
        v36[1] = Conversation.removeNode(node:);
        v21 = MEMORY[0x1E69E7CC0];
        v22 = v33;
        v23 = v32;
        goto LABEL_14;
      }
    }

    v37 = *(v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
    v38 = *(v37 + 32);
    OS_dispatch_semaphore.wait()();
    closure #1 in JetsamHelper.releaseJetsamTransaction()(v37, &v42);
    v39 = v0[15];
    OS_dispatch_semaphore.signal()();
    v40 = *(v39 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity);
    *(v39 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  }

  v24 = v0[1];
  v25 = v0[16];

  return v24(v25);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 120);
  v7 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.removeNode(node:), v5, 0);
}

{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 120);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.removeNode(node:), v4, 0);
}

{
  v9 = v0;
  v1 = *(v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
  v2 = *(v1 + 32);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v1, &v8);
  v3 = v0[15];
  OS_dispatch_semaphore.signal()();
  v4 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity);
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;

  v5 = v0[1];
  v6 = v0[16];

  return v5(v6);
}

unint64_t specialized OrderedForest._recursiveRemove(_:)(uint64_t a1)
{
  result = (*(*a1 + 152))();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    specialized OrderedForest._remove(_:)(a1);
    return a1;
  }

  result = __CocoaSet.count.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E12A1FE0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      specialized OrderedForest._recursiveRemove(_:)(v6);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t InstrumentedStack.remove(node:)(void *a1)
{
  specialized OrderedForest._recursiveRemove(_:)(a1);
  specialized OrderedForest._detachFromParent(_:)(a1);
  InstrumentedStack.removeTrackedFlow(for:)(a1);
}

uint64_t Node.children.getter()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t specialized OrderedForest._remove(_:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (v4 == v3)
    {
      v1[2] = 0;

      v9 = v1[3];
      v1[3] = 0;
    }

    else
    {
      v1[2] = *(a1 + 48);
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v6 = v3 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + 48);
      *(Strong + 48) = 0;
    }

    else
    {
    }

    v12 = swift_weakLoadStrong();

    v13 = v1[3];
    v1[3] = v12;
    goto LABEL_20;
  }

  v7 = swift_weakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + 48);
    *(v7 + 48) = *(a1 + 48);
  }

  if (*(a1 + 48))
  {
    swift_weakLoadStrong();
    swift_weakAssign();
LABEL_20:
  }

  swift_weakAssign();
  v14 = *(a1 + 48);
  *(a1 + 48) = 0;

  result = swift_beginAccess();
  v16 = v1[4];
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v18;
  }

  return result;
}

uint64_t specialized OrderedForest._detachFromParent(_:)(uint64_t a1)
{
  result = (*(*a1 + 128))();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(*result + 152);
  v5 = (v4)();
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6)
  {
LABEL_4:
    v8 = (v4)(v7);
    v4 = v8;
    v17 = MEMORY[0x1E69E7CC0];
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_6;
    }

    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_6:
      v16 = v3;
      v3 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E12A1FE0](v3, v4);
          v11 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v13 = v17;
            v3 = v16;
            goto LABEL_25;
          }
        }

        else
        {
          if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            v14 = __CocoaSet.count.getter();

            if (!v14)
            {
              goto LABEL_20;
            }

            goto LABEL_4;
          }

          v10 = *(v4 + 8 * v3 + 32);

          v11 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        if (v10 == a1)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v12 = *(v17 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v3;
        if (v11 == v9)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_24:
    v13 = MEMORY[0x1E69E7CC0];
LABEL_25:

    swift_beginAccess();
    v15 = *(v3 + 32);
    *(v3 + 32) = v13;

    swift_beginAccess();
    return swift_weakAssign();
  }

  else
  {
LABEL_20:
  }
}

uint64_t Node.parent.getter()
{
  v1 = *(*v0 + 96);
  swift_beginAccess();
  return swift_weakLoadStrong();
}

uint64_t InstrumentedStack.removeTrackedFlow(for:)(void *a1)
{
  v2 = (*(*a1 + 152))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E12A1FE0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      InstrumentedStack.removeTrackedFlow(for:)(v6);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v8 = a1[2];
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(v8);
  swift_endAccess();
}

uint64_t closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteConversationService.sendActiveTasks(_:rcId:)(a5, a6, a7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1)
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

  return closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t RemoteConversationService.sendActiveTasks(_:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  updated = type metadata accessor for ContextUpdateScope();
  v4[22] = updated;
  v6 = *(updated - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v10 = *(*(type metadata accessor for RemoteConversationService.State(0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;
  v4[29] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.sendActiveTasks(_:rcId:), v11, 0);
}

uint64_t Conversation.execute(from:)(uint64_t a1)
{
  v2 = *(*v1 + 1040);
  v3 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 1048) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v3, 0);
}

{
  v2 = *(*v1 + 896);
  v3 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 904) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v3, 0);
}

uint64_t FlowPluginInfo.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA83CC0);
  v3 = [a1 containsValueForKey_];

  if (v3)
  {
    v4 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA83CC0);
    v5 = [a1 decodeBoolForKey_];

    v6 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83CE0);
    v7 = [a1 containsValueForKey_];

    if (v7)
    {
      v8 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83CE0);
      v9 = [a1 decodeBoolForKey_];
    }

    else
    {
      v9 = 1;
    }

    v15 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83D00);
    v16 = [a1 containsValueForKey_];

    if (v16)
    {
      v17 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83D00);
      v18 = [a1 decodeIntegerForKey_];
    }

    else
    {
      v18 = 0;
    }

    ObjectType = swift_getObjectType();
    v20 = (*(ObjectType + 112))(v5, v9, v18, 0, 2);

    swift_deallocPartialClassInstance();
    return v20;
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
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Could not deserialize suppportsNLv4Parses in FlowPluginInfo", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(1, a1);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(char a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(a1, a2, v2 + v6, v10, v2 + v9, v12, v13);
}

uint64_t protocol witness for ConversationHandler.findConversation(for:rcId:) in conformance RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)(a1, a2, a3, a4);
}

uint64_t RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v5[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:), v7, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  Input.identifier.getter();
  v4 = type metadata accessor for UUID();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[13] = v6;
  v0[14] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[7];

  return RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(v10, v2, v8);
}

{
  if (v0[16])
  {
    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[6];

    return RemoteConversationClient.canHandle(input:rcId:)(v4, v2, v3);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[5];

    v11 = type metadata accessor for ConversationSearchResult();
    v12 = *(v11 + 24);
    v13 = type metadata accessor for Input();
    (*(*(v13 - 8) + 56))(v10 + v12, 1, 1, v13);
    v7(v10 + *(v11 + 28), 1, 1, v9);
    *v10 = 0;
    *(v10 + 8) = 1;
    v14 = v0[10];

    v15 = v0[1];

    return v15();
  }
}

{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[5];

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v2);

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[16];

  v2 = v0[19];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 80);
  v7 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  outlined destroy of UUID?(v6);
  v8 = *(v3 + 88);
  if (v1)
  {
    v9 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  else
  {
    v9 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = v1;

  v7 = v4[11];
  if (v1)
  {
    v8 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  else
  {
    v4[20] = a1;
    v8 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Input();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.canHandle(input:rcId:), v3, 0);
}

uint64_t RemoteConversationClient.canHandle(input:rcId:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v20 = v0[4];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  Logger.debugF(file:function:)();
  v9 = v5[20];
  v19 = v5[19];
  __swift_project_boxed_opaque_existential_1(v5 + 16, v19);
  (*(v4 + 16))(v1, v7, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[11] = v11;
  (*(v4 + 32))(v11 + v10, v1, v3);
  v12 = (v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v20;
  v12[1] = v6;
  v13 = *(v9 + 8);

  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[12] = v15;
  CanHandleResult = type metadata accessor for ConversationCanHandleResult();
  *v15 = v0;
  v15[1] = RemoteConversationClient.canHandle(input:rcId:);

  return (v18)(v0 + 2, &async function pointer to partial apply for closure #1 in RemoteConversationClient.canHandle(input:rcId:), v11, CanHandleResult, v19, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = RemoteConversationClient.canHandle(input:rcId:);
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 48);

    v5 = RemoteConversationClient.canHandle(input:rcId:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[10];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1DC74E688()
{
  v1 = type metadata accessor for Input();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for Input() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.canHandle(input:rcId:)(a1, a2, a3, v3 + v9, v11, v12);
}

uint64_t closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for Input();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.canHandle(input:rcId:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.canHandle(input:rcId:)()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v16 = *(v0 + 32);
  (*(v4 + 16))(v1, *(v0 + 48), v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 104) = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v16;
  v10 = (v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v6;
  v10[1] = v5;
  swift_unknownObjectRetain();

  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:);
  *(v11 + 24) = v9;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  CanHandleResult = type metadata accessor for ConversationCanHandleResult();
  *v13 = v0;
  v13[1] = closure #1 in RemoteConversationClient.canHandle(input:rcId:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v11, CanHandleResult);
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.canHandle(input:rcId:), 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = v3[12];
    v7 = v3[3];

    *v7 = v3[2];

    v8 = v3[1];

    return v8();
  }
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1DC74EAF8()
{
  v1 = type metadata accessor for Input();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Input() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DC74ED84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = v20;
  v8[26] = v21;
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[30] = v11;
  v12 = *(v11 - 8);
  v8[31] = v12;
  v13 = *(v12 + 64) + 15;
  v8[32] = swift_task_alloc();
  v14 = type metadata accessor for Input();
  v8[33] = v14;
  v15 = *(v14 - 8);
  v8[34] = v15;
  v16 = *(v15 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:), v17, 0);
}

uint64_t lazy protocol witness table accessor for type RemoteConversationClient and conformance RemoteConversationClient(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void TaskLoggingService.logDomainPerfContext(eventContext:eventTime:task:taskType:domainPerfContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, id a6)
{
  v12 = [a6 flowDomainExecutionContext];
  if (!v12)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v26))
    {
      goto LABEL_20;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315650;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v36);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), &v36);
    *(v27 + 22) = 2080;
    *(v27 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v36);
    _os_log_impl(&dword_1DC659000, oslog, v26, "Ignoring domainPerfContext is not set for taskType: %s, taskId: %s, interactionId:%s", v27, 0x20u);
    goto LABEL_19;
  }

  v34 = a2;

  v13 = SiriKitEventContext.resultCandidateId.getter();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 13101;
    v15 = 0xE200000000000000;
  }

  v32 = a1[11];
  v33 = a1[10];
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  oslog = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v13, v15, v33, v32, v16, v17);

  if (!oslog)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v30))
    {
      goto LABEL_20;
    }

    v31 = v16;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v36);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v17, &v36);
    _os_log_impl(&dword_1DC659000, oslog, v30, "#TaskLoggingService SELF Log - unable to construct metaData, not logging DomainPerfContext data for taskType: %s with taskId: %s", v27, 0x16u);
LABEL_19:
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);

    return;
  }

  [a6 setEventMetadata_];
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.instrumentation);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = a4;
    v24 = v22;
    v36 = v22;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, a5, &v36);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);
    *(v21 + 22) = 2080;
    *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v36);
    _os_log_impl(&dword_1DC659000, v19, v20, "#TaskLoggingService SELF Log - logging DomainPerfContext data for taskType: %s, with taskId: %s, interactionId:%s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  [objc_msgSend(objc_opt_self() sharedStream)];
  swift_unknownObjectRelease();
  TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v33, v32, v16, v17);
LABEL_20:
}

id protocol witness for AceServiceInvoker.peerInfo() in conformance AceServiceInvokerImpl@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(*(*v1 + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v3 = type metadata accessor for PeerInfoProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, 255, type metadata accessor for PeerInfoProvider);
  *a1 = v4;

  return v6;
}

Swift::String_optional __swiftcall PeerInfoProvider.getIdsIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_idsIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id EndpointInfoProvider.getIdentifier()(SEL *a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  result = [*(v1 + 16) *a1];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  return result;
}

uint64_t ConversationCanHandleResult.toConversationSearchResult(remoteConversationClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported) == 1)
  {
    v14 = OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier;
    v15 = type metadata accessor for ConversationSearchResult();
    (*(v10 + 56))(a2 + *(v15 + 24), 1, 1, v9);
    outlined init with copy of ReferenceResolutionClientProtocol?(v2 + v14, a2 + *(v15 + 28), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *a2 = a1;
    *(a2 + 8) = 1;
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput, v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v17 = 1;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v17 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude);
      v18 = type metadata accessor for ConversationSearchResult();
      (*(v10 + 56))(a2 + *(v18 + 24), 1, 1, v9);
    }

    else
    {
      v19 = *(v10 + 32);
      v19(v13, v8, v9);
      v18 = type metadata accessor for ConversationSearchResult();
      v20 = *(v18 + 24);
      v19((a2 + v20), v13, v9);
      (*(v10 + 56))(a2 + v20, 0, 1, v9);
    }

    v21 = *(v18 + 28);
    v22 = type metadata accessor for UUID();
    result = (*(*(v22 - 8) + 56))(a2 + v21, 1, 1, v22);
    *a2 = 0;
    *(a2 + 8) = v17;
  }

  return result;
}

uint64_t RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for UserInputResult();
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v4[13] = *(v8 + 64);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), v3, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(a1, a2, a3, v3 + v9, v10);
}

uint64_t closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), 0, 0);
}

void partial apply for closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMd, &_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_149;
  v16 = _Block_copy(aBlock);

  [a2 acceptInitialInputWithInputIdentifier:isa speechData:a5 reply:v16];
  _Block_release(v16);
}

uint64_t partial apply for closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[73] = a8;
  v8[72] = a7;
  v8[71] = a6;
  v8[70] = a5;
  v8[69] = a4;
  v9 = type metadata accessor for DispatchTimeInterval();
  v8[74] = v9;
  v10 = *(v9 - 8);
  v8[75] = v10;
  v11 = *(v10 + 64) + 15;
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v12 = type metadata accessor for Parse();
  v8[79] = v12;
  v13 = *(v12 - 8);
  v8[80] = v13;
  v14 = *(v13 + 64) + 15;
  v8[81] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR) - 8) + 64) + 15;
  v8[82] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR) - 8) + 64) + 15;
  v8[83] = swift_task_alloc();
  v17 = type metadata accessor for Input();
  v8[84] = v17;
  v18 = *(v17 - 8);
  v8[85] = v18;
  v19 = *(v18 + 64) + 15;
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v20 = type metadata accessor for RemoteConversationService.State(0);
  v8[88] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v8[89] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = static ConversationActor.shared;
  v8[90] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v22, 0);
}

uint64_t RemoteConversationService.FlowAndInputRegistry.getRegisteredActingFlow(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    v11 = *(v10 - 8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v9 + *(v11 + 72) * v8, a2, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t RemoteConversationService.FlowAndInputRegistry.getRegisteredFlow(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    v11 = *(v10 - 8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v9 + *(v11 + 72) * v8, a2, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t FlowPluginInfo.__allocating_init(pluginBundle:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v53 - v6;
  v59 = type metadata accessor for HandcraftedPluginManifestEntry();
  v61 = *(v59 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - v10;
  v69 = type metadata accessor for IntentTopic.IntentTopicType();
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v53 - v15;
  v72 = type metadata accessor for IntentTopic();
  v16 = *(v72 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  result = dispatch thunk of FlowPluginBundle.supportedTopics.getter();
  v22 = 0;
  v74 = *(result + 16);
  v67 = v16 + 16;
  v66 = *MEMORY[0x1E69CFD50];
  v64 = v11 + 8;
  v65 = (v11 + 104);
  v62 = v16 + 8;
  v63 = v16;
  v68 = result;
  v23 = v70;
  v24 = (v11 + 8);
  do
  {
    v25 = v22;
    if (v74 == v22)
    {
      break;
    }

    if (v22 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v26 = v63;
    v27 = v72;
    (*(v63 + 16))(v23, result + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22++, v72);
    v28 = v71;
    IntentTopic.type.getter();
    v29 = *v65;
    v75 = v25;
    v30 = v73;
    v31 = v69;
    v29(v73, v66, v69);
    lazy protocol witness table accessor for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType(&lazy protocol witness table cache variable for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType, MEMORY[0x1E69CFD58]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v24;
    v34 = v30;
    v25 = v75;
    (*v24)(v34, v31);
    v33(v28, v31);
    (*(v26 + 8))(v23, v27);
    result = v68;
  }

  while ((v32 & 1) == 0);
  v35 = v25;

  v36 = v60;
  v37 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  dispatch thunk of FlowPluginBundle.bundlePath.getter();
  v38 = v58;
  static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)();

  v39 = v61;
  v40 = *(v61 + 48);
  v41 = v59;
  if (v40(v38, 1, v59) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    v42 = 1;
  }

  else
  {
    v43 = v54;
    (*(v39 + 32))(v54, v38, v41);
    v42 = HandcraftedPluginManifestEntry.isPersonalDomain.getter();
    (*(v39 + 8))(v43, v41);
  }

  v44 = v56;
  v45 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  dispatch thunk of FlowPluginBundle.bundlePath.getter();
  static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)();

  if (v40(v44, 1, v41) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    v46 = 0;
  }

  else
  {
    v47 = v61;
    v48 = v55;
    (*(v61 + 32))(v55, v44, v41);
    v46 = HandcraftedPluginManifestEntry.sensitivityPolicy.getter();
    (*(v47 + 8))(v48, v41);
  }

  v49 = v57;
  v50 = v74 != v35;
  v51 = specialized static FlowPluginInfo.isEmergencyRequest(bundle:)(v36);
  v52 = (*(v49 + 112))(v50, v42 & 1, v46, 0, v51 & 1);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return v52;
}

uint64_t lazy protocol witness table accessor for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static FlowPluginInfo.isEmergencyRequest(bundle:)(void *a1)
{
  v2 = type metadata accessor for HandcraftedPluginManifestEntry();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMR);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of FlowPluginBundle.bundlePath.getter();
  static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)();

  (*(v3 + 104))(v17, *MEMORY[0x1E69D00A8], v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v22 = *(v7 + 56);
  outlined init with copy of HandcraftedPluginManifestEntry?(v20, v10);
  outlined init with copy of HandcraftedPluginManifestEntry?(v17, &v10[v22]);
  v23 = *(v3 + 48);
  if (v23(v10, 1, v2) != 1)
  {
    outlined init with copy of HandcraftedPluginManifestEntry?(v10, v14);
    if (v23(&v10[v22], 1, v2) != 1)
    {
      v25 = &v10[v22];
      v26 = v30;
      (*(v3 + 32))(v30, v25, v2);
      lazy protocol witness table accessor for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType(&lazy protocol witness table cache variable for type HandcraftedPluginManifestEntry and conformance HandcraftedPluginManifestEntry, MEMORY[0x1E69D00B0]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v3 + 8);
      v27(v26, v2);
      outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
      v27(v14, v2);
      outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
      return v24 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    (*(v3 + 8))(v14, v2);
    goto LABEL_6;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  if (v23(&v10[v22], 1, v2) != 1)
  {
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMR);
    v24 = 0;
    return v24 & 1;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  v24 = 1;
  return v24 & 1;
}

uint64_t outlined init with copy of HandcraftedPluginManifestEntry?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id FlowPluginInfo.__allocating_init(supportsOnDeviceNL:isPersonalRequest:sensitivityPolicy:isEmergencyRequest:)(char a1, unsigned __int8 a2, uint64_t a3, char a4, char a5)
{
  v11 = a2;
  v12 = objc_allocWithZone(v5);
  v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL] = a1;
  v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest] = (v11 == 2) | a2 & 1;
  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  *&v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy] = v13;
  v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isEmergencyRequest] = a5 & 1;
  v15.receiver = v12;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t type metadata accessor for JetsamHelper()
{
  result = type metadata singleton initialization cache for JetsamHelper;
  if (!type metadata singleton initialization cache for JetsamHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:), 0, 0);
  }
}

uint64_t specialized AceServiceInvokerImpl.getResponse<A>(from:)()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  else
  {
    v3 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v27 = v0;
  v1 = v0[2];
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ace);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v25 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    v0[3] = v1;
    v9 = v3;
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v26);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v4, v5, "AceServiceInvokerImpl received a response from command handling: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = v0[7];
  v14 = v0[4];
  v15 = interpretResponse<A>(_:)(v1);
  if (v13)
  {

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v15;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1DC659000, v19, v20, "Type-interpreted response: %@", v21, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v24 = v0[1];

    return v24(v18);
  }
}

{
  v1 = *(v0 + 56);
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  else
  {
    v3 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v26 = v0;
  v1 = v0[2];
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ace);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v24 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v0[3] = v1;
    v9 = v3;
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v25);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v4, v5, "AceServiceInvokerImpl received a response from command handling: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = v0[6];
  v14 = specialized interpretResponse<A>(_:)(v1);
  if (v13)
  {

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1DC659000, v18, v19, "Type-interpreted response: %@", v20, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v23 = v0[1];

    return v23(v17);
  }
}

{
  v1 = *(v0 + 48);
  return (*(v0 + 8))();
}

id interpretResponse<A>(_:)(void *a1)
{
  if (!a1)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [objc_opt_self() aceObjectWithGenericCommand_];
    if (!v3)
    {
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {

      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }
  }

  else
  {
    v5 = a1;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = MEMORY[0x1E69CFF88];
    v5 = v7;
LABEL_10:
    v9 = type metadata accessor for SubmitCommandError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98]);
    swift_allocError();
    *v10 = v5;
    (*(*(v9 - 8) + 104))(v10, *v8, v9);
    return swift_willThrow();
  }

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {
    v8 = MEMORY[0x1E69CFF90];
    goto LABEL_10;
  }

  return result;
}

uint64_t AceServiceInvokerImpl._submitExecute<A>(_:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[7];
  v8 = *v2;
  v4[8] = v1;

  if (v1)
  {
    v6 = AceServiceInvokerImpl._submitExecute<A>(_:);
  }

  else
  {
    v6 = AceServiceInvokerImpl._submitExecute<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void AceServiceInvokerImpl._submitExecute<A>(_:)()
{
  v7 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(*(v0[6] + 160) + 16);
  os_unfair_lock_lock(v3 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v6);
  if (v1)
  {

    os_unfair_lock_unlock(v3 + 6);
  }

  else
  {
    v4 = v0[3];
    os_unfair_lock_unlock(v3 + 6);

    v5 = v0[1];

    v5(v4);
  }
}

uint64_t specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 432) = a5;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a3;
  v10 = type metadata accessor for RemoteConversationService.State(0);
  *(v8 + 176) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v15 = type metadata accessor for UserInputResult();
  *(v8 + 216) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v17 = type metadata accessor for SiriRequest(0);
  *(v8 + 256) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR) - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v22 = type metadata accessor for RequestPositionInSession();
  *(v8 + 296) = v22;
  v23 = *(v22 - 8);
  *(v8 + 304) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 40) = type metadata accessor for Conversation(0);
  *(v8 + 48) = &protocol witness table for Conversation;
  *(v8 + 16) = a2;
  v25 = one-time initialization token for shared;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static ConversationActor.shared;
  *(v8 + 320) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v26, 0);
}

{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 432) = a5;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a3;
  v10 = type metadata accessor for RemoteConversationService.State(0);
  *(v8 + 176) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v15 = type metadata accessor for UserInputResult();
  *(v8 + 216) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v17 = type metadata accessor for SiriRequest(0);
  *(v8 + 256) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR) - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v22 = type metadata accessor for RequestPositionInSession();
  *(v8 + 296) = v22;
  v23 = *(v22 - 8);
  *(v8 + 304) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 40) = type metadata accessor for EncoreConversation(0);
  *(v8 + 48) = &protocol witness table for EncoreConversation;
  *(v8 + 16) = a2;
  v25 = one-time initialization token for shared;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static ConversationActor.shared;
  *(v8 + 320) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v26, 0);
}

{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 432) = a5;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a3;
  v10 = type metadata accessor for RemoteConversationService.State(0);
  *(v8 + 176) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v15 = type metadata accessor for UserInputResult();
  *(v8 + 216) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v17 = type metadata accessor for SiriRequest(0);
  *(v8 + 256) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR) - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v22 = type metadata accessor for RequestPositionInSession();
  *(v8 + 296) = v22;
  v23 = *(v22 - 8);
  *(v8 + 304) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 40) = v29;
  *(v8 + 48) = v30;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 16));
  (*(*(v29 - 8) + 16))(boxed_opaque_existential_0, a2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v26 = static ConversationActor.shared;
  *(v8 + 320) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v26, 0);
}

uint64_t AceServiceInvokerImpl.submit<A>(_:setRefId:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = AceServiceInvokerImpl.submit<A>(_:setRefId:);
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = AceServiceInvokerImpl.submit<A>(_:setRefId:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:)()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2(v3);
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

{
  v1 = *(v0 + 32);
  v2 = AceServiceInvokerImpl._submitToCompanionPrep<A>(_:setRefId:responseType:)(*(v0 + 16), *(v0 + 72), *(v0 + 24));
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)(v2, v4);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v191 = a2;
  v196 = a1;
  v193 = type metadata accessor for ResponseMode();
  v198 = *(v193 - 8);
  v7 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v182 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v180 - v10;
  v200 = *(a3 - 8);
  v12 = *(v200 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v184 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v180 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v180 - v18;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment16UserSessionStateVSgMd, _s19SiriFlowEnvironment16UserSessionStateVSgMR);
  v20 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v180 - v21;
  v22 = type metadata accessor for MultiUserContext();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v190 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v192 = &v180 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v180 - v29;
  v31 = type metadata accessor for MultiUserState();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v187 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v180 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v180 - v39;
  v41 = *(a4 + 48);
  v205 = v4;
  v199 = a3;
  v204 = a4;
  v203 = a4 + 48;
  v202 = v41;
  (v41)(v211, a3, a4, v38);
  v42 = v212;
  v43 = v213;
  __swift_project_boxed_opaque_existential_1(v211, v212);
  (*(v43 + 64))(v42, v43);
  v194 = v23;
  v44 = *(v23 + 48);
  v195 = v22;
  v186 = v23 + 48;
  v185 = v44;
  v45 = v44(v36, 1, v22);
  outlined destroy of MultiUserState(v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v211);
  v201 = v40;
  if (v45 == 1 && (v46 = *(v196 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser)) != 0)
  {
    v47 = one-time initialization token for executor;
    v48 = v46;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.executor);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DC659000, v50, v51, "Getting multi-user state from UserSpecificInfo", v52, 2u);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    LODWORD(v206) = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x128))();
    v53 = *(v48 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
    if (v53)
    {
      v54 = v53;
      v55 = SAPerson.contact.getter();
      v56 = type metadata accessor for DefaultMeCardProxy();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;

      v58 = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy, type metadata accessor for DefaultMeCardProxy);
    }

    else
    {
      v57 = 0;
      v56 = 0;
      v58 = 0;
      v211[1] = 0;
      v211[2] = 0;
    }

    v59 = v204;
    v211[0] = v57;
    v212 = v56;
    v213 = v58;
    v63 = *(v48 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId);
    v64 = *(v48 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8);

    UserSpecificInfo.sfeUserSessionState.getter(v181);
    MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)();

    v65 = v194;
    v66 = v201;
    v67 = v30;
    v68 = v195;
    (*(v194 + 32))(v201, v67, v195);
    (*(v65 + 56))(v66, 0, 1, v68);
    v60 = v199;
  }

  else
  {
    v59 = v204;
    v60 = v199;
    v202(v211, v199, v204);
    v61 = v212;
    v62 = v213;
    __swift_project_boxed_opaque_existential_1(v211, v212);
    (*(v62 + 64))(v61, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v211);
  }

  v69 = *(*((*(v59 + 64))(v60, v59) + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v70 = type metadata accessor for PeerInfoProvider();
  v71 = swift_allocObject();
  *(v71 + 16) = v69;
  v212 = v70;
  v213 = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, type metadata accessor for PeerInfoProvider);
  v72 = v69;

  v211[0] = v71;
  v73 = static ConversationTurnState.computeCompanionName(_:)(v211);
  v75 = v74;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  v77 = __swift_project_value_buffer(v76, static Logger.executor);

  v206 = v77;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();

  v80 = os_log_type_enabled(v78, v79);
  v197 = v11;
  v189 = v75;
  v188 = v73;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v208 = v82;
    *v81 = 136315138;
    if (v75)
    {
      v83 = v73;
    }

    else
    {
      v83 = 7104878;
    }

    if (v75)
    {
      v84 = v75;
    }

    else
    {
      v84 = 0xE300000000000000;
    }

    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v208);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_1DC659000, v78, v79, "CurrentRequest companionName resolved to: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x1E12A2F50](v82, -1, -1);
    MEMORY[0x1E12A2F50](v81, -1, -1);
  }

  v86 = v205;
  v87 = v200;
  v88 = v19;
  v89 = *(v200 + 2);
  v89(v19, v205, v60);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 67109120;
    v202(&v208, v60, v204);
    v93 = v209;
    v94 = v210;
    __swift_project_boxed_opaque_existential_1(&v208, v209);
    v95 = *(v94 + 232);
    v96 = v93;
    v86 = v205;
    v97 = v94;
    v98 = v200;
    v99 = v95(v96, v97);
    __swift_destroy_boxed_opaque_existential_1Tm(&v208);
    v100 = v19;
    v101 = *(v98 + 1);
    v101(v100, v60);
    *(v92 + 4) = v99 & 1;
    _os_log_impl(&dword_1DC659000, v90, v91, "CurrentRequestForSiriEnvironment isSystemApertureEnabled: %{BOOL}d", v92, 8u);
    MEMORY[0x1E12A2F50](v92, -1, -1);
  }

  else
  {
    v101 = *(v87 + 1);
    v101(v88, v60);
  }

  v102 = v183;

  v89(v102, v86, v60);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v183 = v89;
    v106 = v101;
    v107 = v102;
    v108 = v105;
    *v105 = 67109120;
    v202(&v208, v60, v204);
    v109 = v209;
    v110 = v210;
    __swift_project_boxed_opaque_existential_1(&v208, v209);
    v111 = v109;
    v86 = v205;
    v112 = (*(v110 + 240))(v111, v110);
    __swift_destroy_boxed_opaque_existential_1Tm(&v208);
    v113 = v107;
    v101 = v106;
    v89 = v183;
    v101(v113, v60);
    *(v108 + 1) = v112 & 1;
    _os_log_impl(&dword_1DC659000, v103, v104, "CurrentRequestForSiriEnvironment isLiveActivitiesSupported: %{BOOL}d", v108, 8u);
    MEMORY[0x1E12A2F50](v108, -1, -1);
  }

  else
  {
    v101(v102, v60);
  }

  v114 = v184;

  v89(v114, v86, v60);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v200 = v101;
    v118 = v114;
    v119 = v117;
    *v117 = 67109120;
    v202(&v208, v60, v204);
    v120 = v209;
    v121 = v210;
    __swift_project_boxed_opaque_existential_1(&v208, v209);
    v122 = v120;
    v86 = v205;
    v123 = (*(v121 + 248))(v122, v121);
    __swift_destroy_boxed_opaque_existential_1Tm(&v208);
    v200(v118, v60);
    *(v119 + 1) = v123 & 1;
    _os_log_impl(&dword_1DC659000, v115, v116, "CurrentRequestForSiriEnvironment isInAmbient: %{BOOL}d", v119, 8u);
    MEMORY[0x1E12A2F50](v119, -1, -1);
  }

  else
  {
    v101(v114, v60);
  }

  v124 = v197;
  v125 = v201;
  v126 = v195;
  v127 = v194;
  v128 = v192;
  v129 = v187;

  outlined init with copy of MultiUserState(v125, v129);
  v130 = v185(v129, 1, v126);
  v131 = v193;
  v132 = v190;
  if (v130 == 1)
  {
    outlined destroy of MultiUserState(v129);
  }

  else
  {
    (*(v127 + 32))(v128, v129, v126);
    (*(v127 + 16))(v132, v128, v126);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = v132;
      v137 = swift_slowAlloc();
      v208 = v137;
      *v135 = 136315138;
      MultiUserContext.userSessionState.getter();
      v138 = String.init<A>(describing:)();
      v140 = v139;
      v141 = *(v127 + 8);
      v141(v136, v126);
      v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, &v208);
      v86 = v205;

      *(v135 + 4) = v142;
      _os_log_impl(&dword_1DC659000, v133, v134, "#user-session: CurrentRequestForSiriEnvironment SfeUserSessionState=%s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v137);
      v143 = v137;
      v131 = v193;
      MEMORY[0x1E12A2F50](v143, -1, -1);
      v144 = v135;
      v124 = v197;
      MEMORY[0x1E12A2F50](v144, -1, -1);

      v141(v192, v126);
    }

    else
    {

      v145 = *(v127 + 8);
      v145(v132, v126);
      v145(v128, v126);
    }
  }

  v146 = v199;
  v147 = v204;
  v202(&v208, v199, v204);
  v148 = v209;
  v149 = v210;
  __swift_project_boxed_opaque_existential_1(&v208, v209);
  (*(v149 + 56))(v148, v149);
  __swift_destroy_boxed_opaque_existential_1Tm(&v208);
  (*(v147 + 56))(&v208, v146, v147);
  __swift_project_boxed_opaque_existential_1(&v208, v209);
  v150 = dispatch thunk of DeviceState.isHomePod.getter();
  v151 = v188;
  if ((v150 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v208);
    goto LABEL_44;
  }

  v152 = v182;
  static ResponseMode.displayForward.getter();
  v153 = static ResponseMode.== infix(_:_:)();
  v154 = *(v198 + 8);
  v154(v152, v131);
  if (v153)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v208);
  }

  else
  {
    static ResponseMode.displayOnly.getter();
    v155 = static ResponseMode.== infix(_:_:)();
    v154(v152, v131);
    __swift_destroy_boxed_opaque_existential_1Tm(&v208);
    if ((v155 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v156 = Logger.logObject.getter();
  v157 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v208 = v159;
    *v158 = 136315138;
    swift_beginAccess();
    _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550]);
    v160 = dispatch thunk of CustomStringConvertible.description.getter();
    v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v161, &v208);

    *(v158 + 4) = v162;
    v86 = v205;
    _os_log_impl(&dword_1DC659000, v156, v157, "HomePod has wrong interface idiom in response mode: %s. Reverting to voiceOnly.", v158, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v159);
    v163 = v159;
    v124 = v197;
    MEMORY[0x1E12A2F50](v163, -1, -1);
    v164 = v158;
    v152 = v182;
    MEMORY[0x1E12A2F50](v164, -1, -1);
  }

  static ResponseMode.voiceOnly.getter();
  swift_beginAccess();
  (*(v198 + 40))(v124, v152, v131);
  v147 = v204;
LABEL_44:
  v165 = type metadata accessor for CurrentRequest();
  MEMORY[0x1EEE9AC00](v165);
  *(&v180 - 10) = v146;
  *(&v180 - 9) = v147;
  *(&v180 - 8) = v86;
  *(&v180 - 7) = v211;
  v166 = v201;
  *(&v180 - 6) = v124;
  *(&v180 - 5) = v166;
  *(&v180 - 4) = v196;
  *(&v180 - 3) = v151;
  v167 = v191;
  *(&v180 - 2) = v189;
  *(&v180 - 1) = v167;
  _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest, MEMORY[0x1E69CE570]);
  static Buildable.withBuilder(_:)();

  v168 = v208;

  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v207 = v172;
    *v171 = 136315394;
    v173 = ObjectIdentifier.debugDescription.getter();
    v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v174, &v207);

    *(v171 + 4) = v175;
    *(v171 + 12) = 2080;
    swift_beginAccess();
    _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550]);
    v176 = dispatch thunk of CustomStringConvertible.description.getter();
    v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v177, &v207);

    *(v171 + 14) = v178;
    _os_log_impl(&dword_1DC659000, v169, v170, "Created CurrentRequest %s with responseMode %s", v171, 0x16u);
    swift_arrayDestroy();
    v166 = v201;
    MEMORY[0x1E12A2F50](v172, -1, -1);
    MEMORY[0x1E12A2F50](v171, -1, -1);
  }

  (*(v198 + 8))(v124, v131);
  __swift_destroy_boxed_opaque_existential_1Tm(v211);
  outlined destroy of MultiUserState(v166);
  return v168;
}

uint64_t static ConversationTurnState.computeCompanionName(_:)(void *a1)
{
  v2 = type metadata accessor for DeviceIdiom();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of PeerInfoProviding.getDeviceIdiom()();
  (*(v3 + 104))(v6, *MEMORY[0x1E69D34A8], v2);
  LOBYTE(a1) = static DeviceIdiom.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v9, v2);
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Request is not interacting with a HomePod, companion name is nil.";
    goto LABEL_11;
  }

  if (MGGetSInt32Answer() == 7)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Request is executing on a HomePod and not in companion mode. Companion name not known, setting as nil.";
LABEL_11:
    _os_log_impl(&dword_1DC659000, v13, v14, v16, v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
LABEL_12:

    return 0;
  }

  result = MGGetStringAnswer();
  if (result)
  {
    v19 = result;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for InvocationState.responseMode.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ResponseMode();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t closure #2 in ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v165 = a8;
  v164 = a7;
  v173 = a6;
  v161 = a5;
  v160 = a4;
  KeyPath = a3;
  v167 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v169 = &v152 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v168 = &v152 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v166 = &v152 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v163 = &v152 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v162 = &v152 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v159 = &v152 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment14MultiUserStateOSgMd, &_s19SiriFlowEnvironment14MultiUserStateOSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v158 = &v152 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v157 = &v152 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v156 = &v152 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v154 = &v152 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v153 = &v152 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v152 = &v152 - v48;
  v49 = *a1;
  swift_getKeyPath();
  v174 = a11;
  v175 = a2;
  v50 = *(a11 + 48);
  v184 = a10;
  v50(&v180, a10, a11);
  v51 = v182;
  v52 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v178 = (*(v52 + 8))(v51, v52);
  v179 = v53;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v54 = v174;
  v50(&v180, a10, v174);
  v171 = a11 + 48;
  v55 = v182;
  v56 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v178 = (*(v56 + 16))(v55, v56);
  v179 = v57;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v58 = v184;
  v180 = (*(v54 + 8))(v184, v54);
  v181 = v59;
  Builder.subscript.setter();
  swift_getKeyPath();
  v170 = v50;
  v50(&v180, v58, v54);
  v60 = v182;
  v61 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v178 = (*(v61 + 72))(v60, v61);
  v179 = v62;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v63 = KeyPath[4];
  __swift_project_boxed_opaque_existential_1(KeyPath, KeyPath[3]);
  v180 = dispatch thunk of PeerInfoProviding.getPeerName()();
  v181 = v64;
  Builder.subscript.setter();
  KeyPath = swift_getKeyPath();
  v65 = v184;
  v50(&v180, v184, v54);
  v66 = v182;
  v67 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v68 = v152;
  (*(v67 + 24))(v66, v67);
  v69 = type metadata accessor for InputOrigin();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  KeyPath = swift_getKeyPath();
  v70 = v65;
  v170(&v180, v65, v54);
  v71 = v182;
  v72 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v73 = v153;
  (*(v72 + 32))(v71, v72);
  v74 = type metadata accessor for InteractionType();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  v172 = v49;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  KeyPath = swift_getKeyPath();
  v75 = v170;
  v170(&v180, v70, v54);
  v76 = v182;
  v77 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v178 = (*(v77 + 152))(v76, v77);
  v179 = v78;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  KeyPath = swift_getKeyPath();
  v75(&v180, v70, v54);
  v79 = v182;
  v80 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  (*(v80 + 40))(v79, v80);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  KeyPath = swift_getKeyPath();
  v75(&v180, v70, v174);
  v81 = v75;
  v82 = v182;
  v83 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  (*(v83 + 48))(v82, v83);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v84 = v160;
  swift_beginAccess();
  v85 = type metadata accessor for ResponseMode();
  v86 = *(v85 - 8);
  v87 = v157;
  (*(v86 + 16))(v157, v84, v85);
  (*(v86 + 56))(v87, 0, 1, v85);
  Builder.subscript.setter();
  swift_getKeyPath();
  v88 = v158;
  outlined init with copy of MultiUserState(v161, v158);
  v89 = type metadata accessor for MultiUserState();
  (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
  Builder.subscript.setter();
  swift_getKeyPath();
  v90 = v174;
  v81(&v180, v184, v174);
  v91 = v182;
  v92 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  (*(v92 + 176))(v91, v92);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v93 = v184;
  (*(v90 + 72))(&v180, v184, v90);
  Builder.subscript.setter();
  swift_getKeyPath();
  v81(&v180, v93, v90);
  v94 = v182;
  v95 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  (*(v95 + 200))(v94, v95);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v96 = v173;
  v180 = *(v173 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage);
  v97 = v180;
  Builder.subscript.setter();
  swift_getKeyPath();
  v98 = *(v96 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8);
  v180 = *(v96 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v181 = v98;

  Builder.subscript.setter();
  swift_getKeyPath();
  LOBYTE(v180) = *(v96 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice);
  Builder.subscript.setter();
  v162 = swift_getKeyPath();
  v99 = v174;
  v100 = v184;
  v101 = v170;
  v170(&v180, v184, v174);
  v102 = v182;
  v103 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v176 = (*(v103 + 208))(v102, v103);
  v177 = v104;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  v162 = swift_getKeyPath();
  v105 = v100;
  v106 = v101;
  v101(&v180, v105, v99);
  v107 = v182;
  v108 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  v176 = (*(v108 + 216))(v107, v108);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v180 = v164;
  v181 = v165;

  Builder.subscript.setter();
  swift_getKeyPath();
  v109 = v184;
  v106(&v180, v184, v99);
  v110 = v182;
  v111 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  LOBYTE(v176) = (*(v111 + 104))(v110, v111) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v112 = type metadata accessor for FlowTaskMetadata();
  (*(*(v112 - 8) + 56))(v163, 1, 1, v112);
  Builder.subscript.setter();
  swift_getKeyPath();
  v113 = v109;
  v114 = v174;
  v106(&v180, v113, v174);
  v115 = v182;
  v116 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  LODWORD(v176) = (*(v116 + 224))(v115, v116);
  BYTE4(v176) = 0;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v117 = *(v173 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance + 8);
  v180 = *(v173 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance);
  v181 = v117;

  Builder.subscript.setter();
  swift_getKeyPath();
  v118 = v184;
  v119 = v114;
  v120 = v114;
  v121 = v170;
  v170(&v180, v184, v120);
  v122 = v182;
  v123 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  LOBYTE(v176) = (*(v123 + 232))(v122, v123) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  v165 = swift_getKeyPath();
  v121(&v180, v118, v119);
  v124 = v182;
  v125 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  LOBYTE(v176) = (*(v125 + 240))(v124, v125) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v121(&v180, v118, v119);
  v126 = v182;
  v127 = v183;
  __swift_project_boxed_opaque_existential_1(&v180, v182);
  LOBYTE(v176) = (*(v127 + 248))(v126, v127) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v180);
  swift_getKeyPath();
  v128 = type metadata accessor for RequestPositionInSession();
  v129 = *(v128 - 8);
  v130 = v166;
  (*(v129 + 16))(v166, v167, v128);
  (*(v129 + 56))(v130, 0, 1, v128);
  Builder.subscript.setter();
  swift_getKeyPath();
  v182 = &type metadata for SiriAceLocationProvider;
  v183 = lazy protocol witness table accessor for type SiriAceLocationProvider and conformance SiriAceLocationProvider();
  Builder.subscript.setter();
  swift_getKeyPath();
  v131 = v173;
  v132 = *(v173 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant + 8);
  v180 = *(v173 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant);
  v181 = v132;

  Builder.subscript.setter();
  swift_getKeyPath();
  v133 = v131;
  v134 = *(v131 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant + 8);
  v180 = *(v131 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant);
  v181 = v134;

  Builder.subscript.setter();
  swift_getKeyPath();
  v135 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation;
  v136 = type metadata accessor for ExecutionLocation();
  v137 = *(v136 - 8);
  v138 = *(v137 + 16);
  v139 = v133 + v135;
  v140 = v168;
  v138(v168, v139, v136);
  v141 = *(v137 + 56);
  v141(v140, 0, 1, v136);
  Builder.subscript.setter();
  swift_getKeyPath();
  v138(v140, v173 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation, v136);
  v141(v140, 0, 1, v136);
  Builder.subscript.setter();
  swift_getKeyPath();
  v142 = v174;
  v143 = v184;
  v180 = (*(v174 + 16))(v184, v174);
  v181 = v144;
  Builder.subscript.setter();
  swift_getKeyPath();
  v145 = v169;
  (*(v142 + 24))(v143, v142);
  v146 = type metadata accessor for UUID();
  v147 = *(v146 - 8);
  if ((*(v147 + 48))(v145, 1, v146) == 1)
  {
    outlined destroy of UUID?(v145);
    v148 = 0;
    v149 = 0;
  }

  else
  {
    v148 = UUID.uuidString.getter();
    v149 = v150;
    (*(v147 + 8))(v145, v146);
  }

  v180 = v148;
  v181 = v149;
  Builder.subscript.setter();
  swift_getKeyPath();
  LOBYTE(v180) = *(v173 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession);
  return Builder.subscript.setter();
}

uint64_t sub_1DC756458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.interactionId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC7564CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.currentDeviceAssistantId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC7564F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.voiceTriggerEventInfo.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DC756524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.companionName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC756550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isRecognizeMyVoiceEnabled.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7565A4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.voiceAudioSessionId.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7565D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.utterance.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC7565FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isSystemApertureEnabled.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC75662C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isLiveActivitiesSupported.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC75665C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.isInAmbient.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC7566B4(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v5);
  v3 = *a2;
  return CurrentRequest.locationProvider.setter();
}

uint64_t sub_1DC7566F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.responseLanguageVariant.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC756734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.requestLanguageVariant.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC7567C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.rootRequestId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC7567EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.sessionId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC756818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.remoteRequestWasMadeInSession.getter();
  *a2 = result & 1;
  return result;
}

uint64_t specialized TaskLoggingService.resetFlowTaskState(aceServiceInvoker:)(void *a1)
{
  v2 = type metadata accessor for NLContextUpdate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  NLContextUpdate.init()();
  NLContextUpdate.shouldResetFlowTaskState.setter();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.instrumentation);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v9, "#TaskLoggingService signalling server to reset FlowTaskState", v10, 2u);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = NLContextUpdate.toAceContextUpdate()();
  AceServiceInvokerAsync.submitAndForget(_:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for InvocationState.refId.getter in conformance InvocationStateImpl()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t protocol witness for AffinityScoring.bundleIdentifier.getter in conformance AffinityScorerManager.DefaultAffinityScorer()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for InvocationState.sessionHandOffContinuityID.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for InvocationState.inputOrigin.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for InputOrigin();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for InvocationState.interactionType.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for InteractionType();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for InvocationState.interactionId.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for InvocationState.currentDeviceAssistantId.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = (v1 + *(a1 + 112));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

unint64_t lazy protocol witness table accessor for type SiriAceLocationProvider and conformance SiriAceLocationProvider()
{
  result = lazy protocol witness table cache variable for type SiriAceLocationProvider and conformance SiriAceLocationProvider;
  if (!lazy protocol witness table cache variable for type SiriAceLocationProvider and conformance SiriAceLocationProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriAceLocationProvider and conformance SiriAceLocationProvider);
  }

  return result;
}

uint64_t protocol witness for ConversationTurnState.rootRequestId.getter in conformance ConversationTurnStateImpl()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t protocol witness for ConversationTurnState.sessionConfiguration.getter in conformance ConversationTurnStateImpl@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v4, a1, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
}

uint64_t protocol witness for ConversationTurnState.scopedRRData.getter in conformance ConversationTurnStateImpl()
{
  v1 = *v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData;
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t RemoteConversationService.makeRequestIdentities(from:)(uint64_t a1, uint64_t a2)
{
  v2[174] = a2;
  v2[173] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR) - 8) + 64) + 15;
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64) + 15;
  v2[181] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v2[182] = v5;
  v6 = *(v5 - 8);
  v2[183] = v6;
  v7 = *(v6 + 64) + 15;
  v2[184] = swift_task_alloc();
  v2[185] = swift_task_alloc();
  v8 = type metadata accessor for IdentifiedUser();
  v2[186] = v8;
  v9 = *(v8 - 8);
  v2[187] = v9;
  v10 = *(v9 + 64) + 15;
  v2[188] = swift_task_alloc();
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v2[193] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;
  v2[194] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v11, 0);
}