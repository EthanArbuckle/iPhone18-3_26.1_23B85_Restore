uint64_t key path setter for Node.parent : <A>Node<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t key path setter for Node.children : <A>Node<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(**a2 + 104);
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t *Node.__allocating_init(value:parent:)(uint64_t a1)
{
  v3 = specialized Node.__allocating_init(value:parent:)(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

uint64_t *Node.init(value:parent:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized Node.init(value:parent:)(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance NodeIterator<A>@<X0>(uint64_t *a1@<X8>)
{
  result = NodeIterator.next()();
  *a1 = result;
  return result;
}

uint64_t closure #1 in default argument 0 of OrderedForest.debugDescription(printer:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return String.init<A>(describing:)();
}

uint64_t OrderedForest.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance OrderedForest<A>@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(**v1 + 192))();

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedForest<A>(uint64_t a1)
{
  v2 = *(a1 + 80);
  type metadata accessor for OrderedForest();
  v3 = specialized Sequence._copyToContiguousArray()();
  v4 = *v1;

  return v3;
}

void protocol witness for Sequence._copyContents(initializing:) in conformance OrderedForest<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for OrderedForest();

  JUMPOUT(0x1E12A1620);
}

uint64_t protocol witness for Sequence.withContiguousStorageIfAvailable<A>(_:) in conformance OrderedForest<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for OrderedForest();
  return Sequence.withContiguousStorageIfAvailable<A>(_:)();
}

uint64_t specialized OrderedForest._recursiveRemove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = (*(*a1 + 152))();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for Node();
  if (MEMORY[0x1E12A1770](v4, v6))
  {
    v7 = 4;
    do
    {
      v8 = v7 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v10 = *(v4 + 8 * v7);

        v11 = v7 - 3;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v10 = _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v7 - 3;
        if (__OFADD__(v8, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      specialized OrderedForest._recursiveRemove(_:)(v10);

      ++v7;
    }

    while (v11 != MEMORY[0x1E12A1770](v4, v6));
  }

  OrderedForest._remove(_:)(a1);
  return a1;
}

uint64_t specialized OrderedForest._detachFromParent(_:)(uint64_t *a1)
{
  v2 = *a1;
  result = (*(*a1 + 128))();
  if (result)
  {
    v4 = result;
    v5 = *(*result + 152);
    v5();
    v6 = *(v2 + 80);
    type metadata accessor for Node();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v7 = Collection.isEmpty.getter();

    if (v7)
    {
    }

    else
    {
      (v5)(v8);
      swift_getWitnessTable();
      v9 = _ArrayProtocol.filter(_:)();
      v10 = *(*v4 + 104);
      swift_beginAccess();
      v11 = *(v4 + v10);
      *(v4 + v10) = v9;

      v12 = *(*a1 + 96);
      swift_beginAccess();
      return swift_weakAssign();
    }
  }

  return result;
}

uint64_t *specialized Node.init(value:parent:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_weakInit();
  v5 = *(*v1 + 112);
  swift_weakInit();
  *(v1 + *(*v1 + 120)) = 0;
  (*(*(*(v3 + 80) - 8) + 16))(v1 + *(*v1 + 88), a1, *(v3 + 80));
  v6 = *(*v1 + 96);
  swift_beginAccess();
  swift_weakAssign();
  type metadata accessor for Node();
  v7 = static Array._allocateUninitialized(_:)();

  *(v1 + *(*v1 + 104)) = v7;
  v8 = *(*v1 + 112);
  swift_weakAssign();
  v9 = *(*v1 + 120);
  v10 = *(v1 + v9);
  *(v1 + v9) = 0;

  return v1;
}

uint64_t *specialized Node.__allocating_init(value:parent:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Node();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return specialized Node.init(value:parent:)(a1);
}

uint64_t type metadata completion function for Node(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *assignWithCopy for NodeIterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for NodeIterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for NodeIterator(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for NodeIterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t PeerInfoProvider.__allocating_init(peerInfo:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *PeerInfoProvider.peerInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

Swift::String_optional __swiftcall PeerInfoProvider.getRapportEffectiveIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_rapportEffectiveIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PeerInfoProvider.getMediaSystemIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_mediaSystemIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::Bool __swiftcall PeerInfoProvider.isOwnedByCurrentUser()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return [v1 isDeviceOwnedByCurrentUser];
  }

  else
  {
    return 1;
  }
}

Swift::String_optional __swiftcall PeerInfoProvider.getMediaRouteIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_mediaRouteIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t PerTCUFlowOperationQueue.submit(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 112) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v2 + 112) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error);
  v10[5] = v5;
  *(v2 + 112) = v6;
  result = swift_endAccess();
  if ((*(v2 + 144) - 1) >= 2)
  {
    PerTCUFlowOperationQueue.runTasksNow()();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(a1, v5);
}

uint64_t PerTCUFlowOperationQueue.wait()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PerTCUFlowOperationQueue.wait(), v0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 120);
  v0[4] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86A8] + 4);

    v4 = swift_task_alloc();
    v0[5] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v4 = v0;
    v6 = PerTCUFlowOperationQueue.wait();
LABEL_8:
    v4[1] = v6;
    v19 = MEMORY[0x1E69E7288];
    v20 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v5, v2, v20, v5, v19);
  }

  if (*(v1 + 144) != 2)
  {
    v12 = v0[3];
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v15 = lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue, v14, type metadata accessor for PerTCUFlowOperationQueue);
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v15;
    v16[4] = v1;
    swift_retain_n();
    v2 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in PerTCUFlowOperationQueue.wait(), v16);
    v0[7] = v2;
    v17 = *(v1 + 120);
    *(v1 + 120) = v2;

    v18 = *(MEMORY[0x1E69E86A8] + 4);
    v4 = swift_task_alloc();
    v0[8] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v4 = v0;
    v6 = PerTCUFlowOperationQueue.wait();
    goto LABEL_8;
  }

  v7 = type metadata accessor for UnsafeFlowOperationQueueError();
  lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type UnsafeFlowOperationQueueError and conformance UnsafeFlowOperationQueueError, 255, MEMORY[0x1E69CF9C8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CF9C0], v7);
  swift_willThrow();
  v9 = v0[3];

  v10 = v0[1];

  return v10();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = PerTCUFlowOperationQueue.wait();
  }

  else
  {
    v6 = PerTCUFlowOperationQueue.wait();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[4];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = PerTCUFlowOperationQueue.wait();
  }

  else
  {
    v6 = PerTCUFlowOperationQueue.wait();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[7];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in PerTCUFlowOperationQueue.wait()()
{
  v27 = v0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 128);
  *(v0 + 64) = v2;
  v3 = *(v1 + 136);
  *(v0 + 80) = v3;
  if (v3 != 255)
  {
    v4 = v2;
    if (v3)
    {
LABEL_3:
      *(v0 + 40) = v4;
      outlined copy of Result<(), Error>?(v2, v3);
      outlined copy of Result<(), Error>?(v2, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.executor);
      v6 = v4;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      outlined consume of Result<(), Error>(v4, 1);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26 = v10;
        *v9 = 136315138;
        swift_getErrorValue();
        v12 = *(v0 + 16);
        v11 = *(v0 + 24);
        v13 = *(v0 + 32);
        v14 = Error.localizedDescription.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

        *(v9 + 4) = v16;
        _os_log_impl(&dword_1DC659000, v7, v8, "UnsafeFlowOperationQueue: Operation threw an error: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1E12A2F50](v10, -1, -1);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      v17 = *(v0 + 56);
      swift_willThrow();
      outlined consume of Result<(), Error>(v4, 1);
      v18 = *(v17 + 120);
      *(v17 + 120) = 0;

      v19 = *(v0 + 8);
      goto LABEL_13;
    }

LABEL_12:
    v22 = *(v1 + 120);
    *(v1 + 120) = 0;
    outlined copy of Result<(), Error>?(v2, v3);
    outlined copy of Result<(), Error>?(v2, v3);

    v19 = *(v0 + 8);
LABEL_13:

    return v19();
  }

  if (static Task<>.isCancelled.getter())
  {
    v20 = *(v0 + 56);
    v21 = *(v20 + 136);
    if (v21 != 255)
    {
      v4 = *(v20 + 128);
      outlined copy of Result<(), Error>?(v4, *(v20 + 136));
      outlined copy of Result<(), Error>(v4, v21 & 1);
      LOBYTE(v3) = *(v0 + 80);
      v2 = *(v0 + 64);
      if (v21)
      {
        goto LABEL_3;
      }

      v1 = *(v0 + 56);
      goto LABEL_12;
    }

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000064, 0x80000001DCA85170, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/PerTCUFlowOperationQueue.swift", 99, 2, 57);
  }

  else
  {
    v24 = *(MEMORY[0x1E69E86C8] + 4);
    v25 = swift_task_alloc();
    *(v0 + 72) = v25;
    *v25 = v0;
    v25[1] = closure #1 in PerTCUFlowOperationQueue.wait();

    return MEMORY[0x1EEE6DA60](0x7FFFFFFFFFFFFFFFLL);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = closure #1 in PerTCUFlowOperationQueue.wait();
  }

  else
  {
    v6 = closure #1 in PerTCUFlowOperationQueue.wait();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 136);
  if (v2 == 255)
  {

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000064, 0x80000001DCA85170, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/PerTCUFlowOperationQueue.swift", 99, 2, 57);
  }

  else
  {
    v3 = *(v1 + 128);
    outlined copy of Result<(), Error>?(v3, *(v1 + 136));
    outlined copy of Result<(), Error>(v3, v2 & 1);
    v4 = *(v0 + 80);
    v5 = *(v0 + 64);
    if (v2)
    {
      *(v0 + 40) = v3;
      outlined copy of Result<(), Error>?(v5, v4);
      outlined copy of Result<(), Error>?(v5, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = v3;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      outlined consume of Result<(), Error>(v3, 1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v24 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v13 = *(v0 + 16);
        v12 = *(v0 + 24);
        v14 = *(v0 + 32);
        v15 = Error.localizedDescription.getter();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

        *(v10 + 4) = v17;
        _os_log_impl(&dword_1DC659000, v8, v9, "UnsafeFlowOperationQueue: Operation threw an error: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x1E12A2F50](v11, -1, -1);
        MEMORY[0x1E12A2F50](v10, -1, -1);
      }

      v18 = *(v0 + 56);
      swift_willThrow();
      outlined consume of Result<(), Error>(v3, 1);
      v19 = *(v18 + 120);
      *(v18 + 120) = 0;

      v20 = *(v0 + 8);
    }

    else
    {
      v22 = *(v0 + 56);
      v23 = *(v22 + 120);
      *(v22 + 120) = 0;
      outlined copy of Result<(), Error>?(v5, v4);
      outlined copy of Result<(), Error>?(v5, v4);

      v20 = *(v0 + 8);
    }

    return v20();
  }
}

unint64_t PerTCUFlowOperationQueue.finalize()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(v0 + 144);
  if (v6 == 1)
  {
    v10 = *(v0 + 128);
    *(v0 + 128) = 0;
    v11 = *(v0 + 136);
    *(v0 + 136) = -1;
    outlined consume of Result<(), Error>?(v10, v11);
    v1 = *(v0 + 144);
    if (v1 >= 3)
    {
      v17 = *(v0 + 144);
    }

    else
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v14 = lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue, v13, type metadata accessor for PerTCUFlowOperationQueue);
      v15 = swift_allocObject();
      v15[2] = v0;
      v15[3] = v14;
      v15[4] = v0;
      swift_retain_n();
      v1 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in PerTCUFlowOperationQueue.runTasksNow(), v15);
      v16 = *(v0 + 144);
      *(v0 + 144) = v1;

      outlined consume of PerTCUFlowOperationQueue.State(v16);
    }
  }

  else
  {
    if (v6 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    lazy protocol witness table accessor for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError();
    swift_allocError();
    *v8 = v7;
    swift_willThrow();
  }

  return v1;
}

unint64_t PerTCUFlowOperationQueue.runTasksNow()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = *(v0 + 128);
  *(v0 + 128) = 0;
  v6 = *(v0 + 136);
  *(v0 + 136) = -1;
  outlined consume of Result<(), Error>?(v5, v6);
  v7 = *(v0 + 144);
  if (v7 >= 3)
  {
    v13 = *(v0 + 144);
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v10 = lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue, v9, type metadata accessor for PerTCUFlowOperationQueue);
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = v10;
    v11[4] = v0;
    swift_retain_n();
    v7 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in PerTCUFlowOperationQueue.runTasksNow()partial apply, v11);
    v12 = *(v0 + 144);
    *(v0 + 144) = v7;

    outlined consume of PerTCUFlowOperationQueue.State(v12);
  }

  return v7;
}

uint64_t closure #1 in PerTCUFlowOperationQueue.runTasksNow()()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v2[2];
  v4 = v0[8];
  if (v3)
  {
    swift_beginAccess();
    v5 = v2[4];
    v0[9] = v2[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 112) = v2;
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v2[3] >> 1)
    {
      v7 = v0[8];
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v3, 1, v2);
      *(v7 + 112) = v2;
    }

    v8 = v0[8];
    v9 = v2[5];

    v10 = v2[2];
    memmove(v2 + 4, v2 + 6, 16 * v10 - 16);
    v2[2] = v10 - 1;
    *(v8 + 112) = v2;
    swift_endAccess();
    v21 = (v5 + *v5);
    v11 = v5[1];
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = closure #1 in PerTCUFlowOperationQueue.runTasksNow();

    return v21();
  }

  else
  {
    v14 = *(v4 + 128);
    *(v4 + 128) = 0;
    v15 = *(v4 + 136);
    *(v4 + 136) = 0;
    outlined copy of Result<(), Error>(0, 0);
    outlined consume of Result<(), Error>?(v14, v15);
    v16 = *(v4 + 144);
    *(v4 + 144) = 0;
    outlined consume of PerTCUFlowOperationQueue.State(v16);
    v17 = *(v4 + 120);
    if (v17)
    {
      v18 = *(v4 + 120);

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1E12A1950](v17, MEMORY[0x1E69E7CA8] + 8, v19, MEMORY[0x1E69E7288]);
      outlined consume of Result<(), Error>(0, 0);
    }

    else
    {
      outlined consume of Result<(), Error>(0, 0);
    }

    v20 = v0[1];

    return v20();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);

  if (v0)
  {
    v7 = closure #1 in PerTCUFlowOperationQueue.runTasksNow();
  }

  else
  {
    v7 = closure #1 in PerTCUFlowOperationQueue.runTasksNow();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[8];
  v3 = (v1 + 112);
  v2 = *(v1 + 112);
  v4 = v2[2];
  if (v4)
  {
    swift_beginAccess();
    v5 = v2[4];
    v0[9] = v2[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > v2[3] >> 1)
    {
      v7 = v0[8];
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v4, 1, v2);
      *(v7 + 112) = v2;
    }

    v8 = v0[8];
    v9 = v2[5];

    v10 = v2[2];
    memmove(v2 + 4, v2 + 6, 16 * v10 - 16);
    v2[2] = v10 - 1;
    *(v8 + 112) = v2;
    swift_endAccess();
    v21 = (v5 + *v5);
    v11 = v5[1];
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = closure #1 in PerTCUFlowOperationQueue.runTasksNow();

    return v21();
  }

  else
  {
    v14 = *(v1 + 128);
    *(v1 + 128) = 0;
    v15 = *(v1 + 136);
    *(v1 + 136) = 0;
    outlined copy of Result<(), Error>(0, 0);
    outlined consume of Result<(), Error>?(v14, v15);
    v16 = *(v1 + 144);
    *(v1 + 144) = 0;
    outlined consume of PerTCUFlowOperationQueue.State(v16);
    v17 = *(v1 + 120);
    if (v17)
    {
      v18 = *(v1 + 120);

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1E12A1950](v17, MEMORY[0x1E69E7CA8] + 8, v19, MEMORY[0x1E69E7288]);
      outlined consume of Result<(), Error>(0, 0);
    }

    else
    {
      outlined consume of Result<(), Error>(0, 0);
    }

    v20 = v0[1];

    return v20();
  }
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;
  v4 = *(v2 + 136);
  *(v2 + 136) = 1;
  outlined copy of Result<(), Error>(v1, 1);
  outlined consume of Result<(), Error>?(v3, v4);
  v5 = *(v2 + 144);
  *(v2 + 144) = 0;
  outlined consume of PerTCUFlowOperationQueue.State(v5);
  v6 = *(v2 + 120);
  if (v6)
  {
    v7 = *(v2 + 120);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v6, MEMORY[0x1E69E7CA8] + 8, v8, MEMORY[0x1E69E7288]);
    outlined consume of Result<(), Error>(v1, 1);
  }

  else
  {
    outlined consume of Result<(), Error>(v1, 1);
  }

  v9 = v0[1];

  return v9();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PerTCUFlowOperationQueue.abandon()()
{
  v1 = *(v0 + 144);
  if (v1 == 1)
  {
    v4 = type metadata accessor for UnsafeFlowOperationQueueError();
    lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(&lazy protocol witness table cache variable for type UnsafeFlowOperationQueueError and conformance UnsafeFlowOperationQueueError, 255, MEMORY[0x1E69CF9C8]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69CF9C0], v4);
    v7 = *(v0 + 128);
    *(v0 + 128) = v5;
    v8 = *(v0 + 136);
    *(v0 + 136) = 1;
    outlined consume of Result<(), Error>?(v7, v8);
    v9 = *(v0 + 144);
    *(v0 + 144) = 2;
    outlined consume of PerTCUFlowOperationQueue.State(v9);
    v10 = *(v0 + 120);
    if (v10)
    {

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1E12A1950](v10, MEMORY[0x1E69E7CA8] + 8, v11, MEMORY[0x1E69E7288]);
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    lazy protocol witness table accessor for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
  }
}

unint64_t PerTCUFlowOperationQueue.OperationError.debugDescription.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    return 0xD000000000000031;
  }

  else
  {
    return 0xD000000000000022;
  }
}

Swift::Int PerTCUFlowOperationQueue.OperationError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

uint64_t PerTCUFlowOperationQueue.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  outlined consume of Result<(), Error>?(*(v0 + 128), *(v0 + 136));
  outlined consume of PerTCUFlowOperationQueue.State(*(v0 + 144));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PerTCUFlowOperationQueue.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  outlined consume of Result<(), Error>?(*(v0 + 128), *(v0 + 136));
  outlined consume of PerTCUFlowOperationQueue.State(*(v0 + 144));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t PerTCUFlowOperationQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v1;
  *(v0 + 136) = -1;
  *(v0 + 144) = 1;
  return v0;
}

uint64_t PerTCUFlowOperationQueue.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v1;
  *(v0 + 136) = -1;
  *(v0 + 144) = 1;
  return v0;
}

uint64_t protocol witness for UnsafeFlowOperationQueue.wait() in conformance PerTCUFlowOperationQueue()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return PerTCUFlowOperationQueue.wait()();
}

uint64_t partial apply for closure #1 in PerTCUFlowOperationQueue.wait()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in PerTCUFlowOperationQueue.wait()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type PerTCUFlowOperationQueue and conformance PerTCUFlowOperationQueue(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError()
{
  result = lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError;
  if (!lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError;
  if (!lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PerTCUFlowOperationQueue.OperationError and conformance PerTCUFlowOperationQueue.OperationError);
  }

  return result;
}

void outlined consume of Result<(), Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<(), Error>(a1, a2 & 1);
  }
}

uint64_t partial apply for closure #1 in PerTCUFlowOperationQueue.runTasksNow()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in PerTCUFlowOperationQueue.runTasksNow()(a1, v4, v5, v6);
}

uint64_t outlined consume of PerTCUFlowOperationQueue.State(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t dispatch thunk of PerTCUFlowOperationQueue.wait()()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6();
}

unint64_t destroy for PerTCUFlowOperationQueue.State(unint64_t *a1)
{
  result = *a1;
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  if (v2 - 1 < 0)
  {
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PerTCUFlowOperationQueue.State(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  if (v4 - 1 < 0)
  {
    v5 = a1;

    a1 = v5;
  }

  *a1 = v3;
  return a1;
}

uint64_t *assignWithCopy for PerTCUFlowOperationQueue.State(uint64_t *result, uint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *result;
  }

  v4 = v3 - 1;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v2 = *a2;
  }

  v6 = v2 - 1;
  if (v4 < 0)
  {
    if (v6 < 0)
    {
      *result = v5;
      v11 = result;

      return v11;
    }

    else
    {
      v7 = result;
      v8 = *result;

      result = v7;
      *v7 = *a2;
    }
  }

  else
  {
    *result = v5;
    if (v6 < 0)
    {
      v10 = result;

      return v10;
    }
  }

  return result;
}

unint64_t *assignWithTake for PerTCUFlowOperationQueue.State(unint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v2 = *result;
  }

  v3 = *a2;
  if (v2 - 1 < 0)
  {
    LODWORD(v4) = -1;
    if (v3 < 0xFFFFFFFF)
    {
      v4 = *a2;
    }

    if (v4 - 1 < 0)
    {
      *result = v3;
      v7 = result;

      return v7;
    }

    else
    {
      v5 = result;
      v6 = *result;

      result = v5;
      *v5 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerTCUFlowOperationQueue.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PerTCUFlowOperationQueue.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTag for PerTCUFlowOperationQueue.State(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *destructiveInjectEnumTag for PerTCUFlowOperationQueue.State(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

id outlined copy of Result<(), Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<(), Error>(result, a2 & 1);
  }

  return result;
}

uint64_t closure #1 in PerTCUFlowOperationQueue.runTasksNow()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in PerTCUFlowOperationQueue.runTasksNow()(a1, v4, v5, v6);
}

SiriKitRuntime::PhoneAffinityScorer __swiftcall PhoneAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CD20;
  v1 = 0xD00000000000002ALL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t key path getter for CodeGenListEntry.entry : CodeGenListEntry<UsoEntity_common_UserEntity>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of CodeGenListEntry.entry.getter();
  *a2 = v5;
  return result;
}

uint64_t UsoTask.parseResult.getter()
{
  v1 = type metadata accessor for UsoIdentifier.NluComponent();
  v118 = *(v1 - 8);
  v2 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v119 = v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  v4 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v102 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v102 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v102 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v102 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v102 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v102 - v25;
  v125 = type metadata accessor for IdentifierAppBundle();
  v117 = *(v125 - 8);
  v27 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v123 = v102 - v30;
  v31 = type metadata accessor for UsoIdentifier();
  v126 = *(v31 - 8);
  v127 = v31;
  v32 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v102 - v36;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v134[3])
  {
    goto LABEL_36;
  }

  v116 = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v134, &v133, &_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMR);
  if (swift_dynamicCast())
  {
    v38 = UsoTask.parse(referenceTriggerTask:)();
LABEL_8:
    v39 = v38;

LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(&v133);
    v40 = 0;
LABEL_41:
    outlined destroy of ReferenceResolutionClientProtocol?(v134, &_sypSgMd, &_sypSgMR);
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
      v134[0] = v55;
      *v54 = 136315138;
      v56 = v39;
      v57 = PhoneSettingParseResult.description.getter(v39 | (v40 << 8));
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v134);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1DC659000, v52, v53, "PhoneAffinityScorer UsoTask.parseResult = %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1E12A2F50](v55, -1, -1);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    else
    {

      v56 = v39;
    }

    return v56 | (v40 << 8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMR);
  if (swift_dynamicCast())
  {
    v38 = UsoTask.parse(referenceNumberTriggerTask:)();
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMR);
  if (swift_dynamicCast())
  {
    v38 = UsoTask.parse(referenceTask:)();
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_noVerb_common_Setting();
  if (swift_dynamicCast())
  {
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v41 = UsoTask.parseEntity(setting:)(v128);

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v128)
    {
      v42 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
    }

    else
    {
      v42 = 0;
    }

    v43 = UsoTask.parseEntity(setting:)(v42);

    v39 = v43 | v41;
    goto LABEL_9;
  }

  type metadata accessor for UsoTask_reply_uso_NoEntity();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
    if (v128 || (dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter(), v128))
    {
    }

    else
    {
      v46 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.userEntities.getter();
      v39 = 2;

      if (!v46)
      {
        goto LABEL_18;
      }
    }

    v39 = 0;
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(&v133);
LABEL_40:
    v40 = 1;
    goto LABEL_41;
  }

  type metadata accessor for UsoTask_update_common_PhoneCall();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v133);
    v40 = 1;
    v39 = 4;
    goto LABEL_41;
  }

  type metadata accessor for UsoTask_update_common_Communication();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v133);
    v40 = 1;
    v39 = 3;
    goto LABEL_41;
  }

  type metadata accessor for UsoTask_open_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_close_common_App();
    if (swift_dynamicCast())
    {
      v115 = v0;
      v47 = v132;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v130 || (v48 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v48))
      {

        v48 = MEMORY[0x1E69E7CC0];
      }

      v80 = *(v48 + 16);

      v114 = v80;
      if (!v80)
      {
        v39 = 6;
LABEL_69:

        goto LABEL_18;
      }

      v102[1] = v47;
      v81 = 0;
      v113 = v126 + 16;
      v112 = *MEMORY[0x1E69D1AE0];
      v111 = (v117 + 104);
      v117 += 8;
      LODWORD(v107) = *MEMORY[0x1E69D1768];
      v106 = (v118 + 104);
      v105 = (v118 + 56);
      v103 = (v118 + 32);
      v104 = (v118 + 8);
      v109 = (v126 + 8);
      v108 = v48;
      v110 = (v118 + 48);
      while (1)
      {
        if (v81 >= *(v48 + 16))
        {
          goto LABEL_94;
        }

        v82 = v48 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
        v83 = *(v126 + 72);
        v118 = v81;
        (*(v126 + 16))(v34, v82 + v83 * v81, v127);
        v84 = v123;
        UsoIdentifier.appBundleSemantic.getter();
        v86 = v124;
        v85 = v125;
        (*v111)(v124, v112, v125);
        v87 = MEMORY[0x1E129CA00](v84, v86);
        v88 = *v117;
        (*v117)(v86, v85);
        v88(v84, v85);
        v89 = v116;
        v90 = v121;
        v91 = v110;
        if ((v87 & 1) == 0)
        {
          goto LABEL_89;
        }

        UsoIdentifier.sourceComponent.getter();
        (*v106)(v14, v107, v89);
        (*v105)(v14, 0, 1, v89);
        v92 = *(v122 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol?(v17, v90, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v14, v90 + v92, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v93 = *v91;
        if ((*v91)(v90, 1, v89) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          if (v93(v90 + v92, 1, v89) != 1)
          {
            goto LABEL_80;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        }

        else
        {
          outlined init with copy of ReferenceResolutionClientProtocol?(v90, v120, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          if (v93(v90 + v92, 1, v89) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            (*v104)(v120, v89);
LABEL_80:
            outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
            goto LABEL_89;
          }

          v94 = v119;
          (*v103)(v119, v90 + v92, v89);
          lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
          v95 = dispatch thunk of static Equatable.== infix(_:_:)();
          v96 = *v104;
          (*v104)(v94, v89);
          outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          v96(v120, v89);
          outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          if ((v95 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        v97 = UsoIdentifier.namespace.getter();
        if (v98)
        {
          if (v97 == 0x656D614E707061 && v98 == 0xE700000000000000)
          {

LABEL_87:
            v130 = UsoIdentifier.value.getter();
            v131 = v100;
            v128 = 0x6172656D6163;
            v129 = 0xE600000000000000;
            lazy protocol witness table accessor for type String and conformance String();
            v101 = StringProtocol.contains<A>(_:)();

            result = (*v109)(v34, v127);
            if (v101)
            {
              v39 = 5;
              goto LABEL_69;
            }

            goto LABEL_90;
          }

          v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v99)
          {
            goto LABEL_87;
          }
        }

LABEL_89:
        result = (*v109)(v34, v127);
LABEL_90:
        v81 = v118 + 1;
        v48 = v108;
        if (v114 == v118 + 1)
        {
          v39 = 6;
          goto LABEL_69;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v133);
LABEL_36:
    if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v49 == 0xEE00676E69747465)
    {

      v39 = 1;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v39 = v50 & 1;
    }

    goto LABEL_40;
  }

  v115 = v0;
  v44 = v132;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v103 = v44;

  if (!v130 || (v45 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v45))
  {

    v45 = MEMORY[0x1E69E7CC0];
  }

  v61 = *(v45 + 16);

  v114 = v61;
  if (!v61)
  {
LABEL_68:
    v39 = 6;
    goto LABEL_69;
  }

  v62 = 0;
  v113 = v126 + 16;
  v112 = *MEMORY[0x1E69D1AE0];
  v111 = (v117 + 104);
  v117 += 8;
  LODWORD(v108) = *MEMORY[0x1E69D1768];
  v107 = (v118 + 104);
  v106 = (v118 + 56);
  v110 = (v118 + 48);
  v104 = (v118 + 32);
  v105 = (v118 + 8);
  v118 = v126 + 8;
  v109 = v45;
  while (v62 < *(v45 + 16))
  {
    v63 = v45 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v64 = *(v126 + 72);
    v120 = v62;
    (*(v126 + 16))(v37, v63 + v64 * v62, v127);
    v65 = v123;
    UsoIdentifier.appBundleSemantic.getter();
    v67 = v124;
    v66 = v125;
    (*v111)(v124, v112, v125);
    LODWORD(v121) = MEMORY[0x1E129CA00](v65, v67);
    v68 = *v117;
    (*v117)(v67, v66);
    v68(v65, v66);
    if ((v121 & 1) == 0)
    {
      goto LABEL_66;
    }

    UsoIdentifier.sourceComponent.getter();
    v69 = v116;
    (*v107)(v23, v108, v116);
    (*v106)(v23, 0, 1, v69);
    v70 = *(v122 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v26, v8, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v23, &v8[v70], &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v71 = *v110;
    if ((*v110)(v8, 1, v69) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v71(&v8[v70], 1, v69) != 1)
      {
        goto LABEL_57;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v8, v20, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v71(&v8[v70], 1, v69) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        (*v105)(v20, v69);
LABEL_57:
        outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
LABEL_66:
        result = (*v118)(v37, v127);
        goto LABEL_67;
      }

      v72 = &v8[v70];
      v73 = v119;
      (*v104)(v119, v72, v69);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
      LODWORD(v121) = dispatch thunk of static Equatable.== infix(_:_:)();
      v74 = *v105;
      (*v105)(v73, v69);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v74(v20, v69);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if ((v121 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v75 = UsoIdentifier.namespace.getter();
    if (!v76)
    {
      goto LABEL_66;
    }

    if (v75 == 0x656D614E707061 && v76 == 0xE700000000000000)
    {
    }

    else
    {
      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v77 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v130 = UsoIdentifier.value.getter();
    v131 = v78;
    v128 = 0x6172656D6163;
    v129 = 0xE600000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v79 = StringProtocol.contains<A>(_:)();

    result = (*v118)(v37, v127);
    if (v79)
    {
      v39 = 5;
      goto LABEL_69;
    }

LABEL_67:
    v62 = v120 + 1;
    v45 = v109;
    if (v114 == v120 + 1)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t InCallFeatureFlags.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static InCallFeatureFlags.forceEnabled;
  os_unfair_lock_lock((static InCallFeatureFlags.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for InCallFeatureFlags;
    v3[4] = lazy protocol witness table accessor for type InCallFeatureFlags and conformance InCallFeatureFlags();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t PhoneSettingParseResult.description.getter(uint64_t a1)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1 <= 2u)
    {
      if (a1)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0x726568746F2ELL;
      }
    }

    else
    {
      v4 = 0x416172656D61632ELL;
      if (a1 != 5)
      {
        v4 = 0x7041726568746F2ELL;
      }

      v5 = 0xD000000000000015;
      if (a1 == 3)
      {
        v5 = 0xD000000000000019;
      }

      if (a1 <= 4u)
      {
        return v5;
      }

      else
      {
        return v4;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);

    v2 = SettingParseOptions.description.getter(a1);
    MEMORY[0x1E12A1580](v2);

    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    return 0x676E69747465732ELL;
  }
}

uint64_t SettingParseOptions.description.getter(uint64_t result)
{
  v1 = 0;
  v2 = result;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v1 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = v1;
  }

  v5 = (&outlined read-only object #0 of one-time initialization function for descriptionLabels + 16 * v1 + 24);
  while (1)
  {
    if (v1 == 6)
    {
      v12 = MEMORY[0x1E12A16D0](v3, MEMORY[0x1E69E6158]);

      return v12;
    }

    if (v4 == v1)
    {
      break;
    }

    v6 = v2 >> v1++;
    v5 += 2;
    if (v6)
    {
      v8 = *(v5 - 1);
      v7 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
        v3 = result;
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance SettingParseOptions(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance SettingParseOptions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance SettingParseOptions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SettingParseOptions@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t one-time initialization function for kAnswerProductValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAnswerProductValues);
  result = swift_arrayDestroy();
  static UsoTask.kAnswerProductValues = v0;
  return result;
}

uint64_t *UsoTask.kAnswerProductValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kAnswerProductValues != -1)
  {
    swift_once();
  }

  return &static UsoTask.kAnswerProductValues;
}

uint64_t one-time initialization function for kSupportedBooleanNamespaceValues()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kSupportedBooleanNamespaceValues);
  result = outlined destroy of String(&unk_1F5824728);
  static UsoTask.kSupportedBooleanNamespaceValues = v0;
  return result;
}

uint64_t *UsoTask.kSupportedBooleanNamespaceValues.unsafeMutableAddressor()
{
  if (one-time initialization token for kSupportedBooleanNamespaceValues != -1)
  {
    swift_once();
  }

  return &static UsoTask.kSupportedBooleanNamespaceValues;
}

uint64_t UsoTask.parse(referenceTriggerTask:)()
{
  type metadata accessor for UsoTask_enable_common_Setting();
  if (swift_dynamicCastClass() || (type metadata accessor for UsoTask_disable_common_Setting(), swift_dynamicCastClass()) || (type metadata accessor for UsoTask_toggle_common_Setting(), swift_dynamicCastClass()) || (type metadata accessor for UsoTask_set_common_Setting(), (result = swift_dynamicCastClass()) != 0))
  {
    dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();
    LODWORD(v1) = UsoTask.parseEntity(setting:)(v19);

    dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();
    if (v19)
    {
      v2 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
    }

    else
    {
      v2 = 0;
    }

    LODWORD(v3) = UsoTask.parseEntity(setting:)(v2);

    v4 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();
    v5 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      goto LABEL_30;
    }

    v6 = v4;
    swift_getKeyPath();
    v20 = v5;
    if (v6 >> 62)
    {
LABEL_28:
      v7 = __CocoaSet.count.getter();
      v16 = v3;
      v17 = v1;
      if (v7)
      {
LABEL_11:
        v1 = 0;
        v3 = v6 & 0xC000000000000001;
        do
        {
          v8 = v1;
          while (1)
          {
            if (v3)
            {
              MEMORY[0x1E12A1FE0](v8, v6);
              v1 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v9 = *(v6 + 8 * v8 + 32);

              v1 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            swift_getAtKeyPath();

            if (v18)
            {
              break;
            }

            ++v8;
            if (v1 == v7)
            {
              goto LABEL_29;
            }
          }

          MEMORY[0x1E12A1680](v10);
          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v5 = v20;
        }

        while (v1 != v7);
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v3;
      v17 = v1;
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_29:

    LODWORD(v3) = v16;
    LODWORD(v1) = v17;
LABEL_30:
    v12 = UsoTask.parseEntity(userEntities:)(v5);

    v13 = v3 | v1 | v12;
    v14 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.trigger.getter();
    v15 = specialized UsoTask.parseEntity(trigger:)(v14);

    return v13 | v15;
  }

  return result;
}

uint64_t UsoTask.parse(referenceNumberTriggerTask:)()
{
  v0 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  type metadata accessor for UsoTask_increaseBy_common_Setting();
  if (swift_dynamicCastClass() || (type metadata accessor for UsoTask_decreaseBy_common_Setting(), swift_dynamicCastClass()) || (type metadata accessor for UsoTask_setNumber_common_Setting(), (result = swift_dynamicCastClass()) != 0))
  {
    v49 = v1;
    dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
    if (!v52)
    {
      goto LABEL_16;
    }

    dispatch thunk of UsoEntity_common_Setting.name.getter();
    if (v20)
    {

      goto LABEL_16;
    }

    v46 = v4;
    v21 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();
    v47 = v12;
    if (v21)
    {
      dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

      v22 = v49;
    }

    else
    {
      v22 = v49;
      (*(v49 + 56))(v18, 1, 1, v0);
    }

    (*(v22 + 104))(v15, *MEMORY[0x1E69D2070], v0);
    (*(v22 + 56))(v15, 0, 1, v0);
    v23 = *(v5 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v18, v8, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v48 = v23;
    outlined init with copy of ReferenceResolutionClientProtocol?(v15, &v8[v23], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v24 = *(v22 + 48);
    if (v24(v8, 1, v0) == 1)
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      if (v24(&v8[v48], 1, v0) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        return 4;
      }
    }

    else
    {
      v25 = v47;
      outlined init with copy of ReferenceResolutionClientProtocol?(v8, v47, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v26 = v48;
      if (v24(&v8[v48], 1, v0) != 1)
      {
        v38 = v49;
        v39 = &v8[v26];
        v40 = v46;
        (*(v49 + 32))(v46, v39, v0);
        lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x1E69D2078]);
        LODWORD(v48) = dispatch thunk of static Equatable.== infix(_:_:)();

        v41 = *(v38 + 8);
        v41(v40, v0);
        outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        v41(v25, v0);
        outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        if (v48)
        {
          return 4;
        }

LABEL_16:
        dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
        LODWORD(v27) = UsoTask.parseEntity(setting:)(v52);

        dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
        if (v52)
        {
          v28 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
        }

        else
        {
          v28 = 0;
        }

        v29 = UsoTask.parseEntity(setting:)(v28);

        v30 = dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.userEntities.getter();
        v31 = MEMORY[0x1E69E7CC0];
        if (!v30)
        {
          goto LABEL_43;
        }

        v32 = v30;
        LODWORD(v48) = v29;
        swift_getKeyPath();
        v52 = v31;
        if (v32 >> 62)
        {
LABEL_41:
          v33 = __CocoaSet.count.getter();
          LODWORD(v49) = v27;
          if (v33)
          {
LABEL_22:
            v27 = 0;
            do
            {
              v34 = v27;
              while (1)
              {
                if ((v32 & 0xC000000000000001) != 0)
                {
                  v35 = MEMORY[0x1E12A1FE0](v34, v32);
                  v27 = v34 + 1;
                  if (__OFADD__(v34, 1))
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_40;
                  }

                  v35 = *(v32 + 8 * v34 + 32);

                  v27 = v34 + 1;
                  if (__OFADD__(v34, 1))
                  {
LABEL_39:
                    __break(1u);
LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }
                }

                v50 = v35;

                swift_getAtKeyPath();

                if (v51)
                {
                  break;
                }

                ++v34;
                if (v27 == v33)
                {
                  goto LABEL_42;
                }
              }

              MEMORY[0x1E12A1680](v36);
              if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v37 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v31 = v52;
            }

            while (v27 != v33);
          }
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          LODWORD(v49) = v27;
          if (v33)
          {
            goto LABEL_22;
          }
        }

LABEL_42:

        LODWORD(v27) = v49;
        v29 = v48;
LABEL_43:
        v42 = UsoTask.parseEntity(userEntities:)(v31);

        v43 = v29 | v27 | v42;
        v44 = dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.trigger.getter();
        v45 = specialized UsoTask.parseEntity(trigger:)(v44);

        return v43 | v45;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      (*(v49 + 8))(v25, v0);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_16;
  }

  return result;
}

uint64_t UsoTask.parse(referenceTask:)()
{
  type metadata accessor for UsoTask_summarise_common_Setting();
  if (swift_dynamicCastClass() || (type metadata accessor for UsoTask_checkExistence_common_Setting(), (result = swift_dynamicCastClass()) != 0))
  {
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    LODWORD(v1) = UsoTask.parseEntity(setting:)(v16);

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    if (v16)
    {
      v2 = dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter();
    }

    else
    {
      v2 = 0;
    }

    LODWORD(v3) = UsoTask.parseEntity(setting:)(v2);

    v4 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();
    v5 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      goto LABEL_28;
    }

    v6 = v4;
    swift_getKeyPath();
    v17 = v5;
    if (v6 >> 62)
    {
LABEL_26:
      v7 = __CocoaSet.count.getter();
      v13 = v3;
      v14 = v1;
      if (v7)
      {
LABEL_9:
        v3 = 0;
        v1 = v6 & 0xC000000000000001;
        do
        {
          v8 = v3;
          while (1)
          {
            if (v1)
            {
              MEMORY[0x1E12A1FE0](v8, v6);
              v3 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v9 = *(v6 + 8 * v8 + 32);

              v3 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_24:
                __break(1u);
LABEL_25:
                __break(1u);
                goto LABEL_26;
              }
            }

            swift_getAtKeyPath();

            if (v15)
            {
              break;
            }

            ++v8;
            if (v3 == v7)
            {
              goto LABEL_27;
            }
          }

          MEMORY[0x1E12A1680](v10);
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v5 = v17;
        }

        while (v3 != v7);
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v3;
      v14 = v1;
      if (v7)
      {
        goto LABEL_9;
      }
    }

LABEL_27:

    LODWORD(v3) = v13;
    LODWORD(v1) = v14;
LABEL_28:
    v12 = UsoTask.parseEntity(userEntities:)(v5);

    return v3 | v1 | v12;
  }

  return result;
}

uint64_t UsoTask.parseEntity(setting:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UsoIdentifier.NluComponent();
  v257 = *(v4 - 8);
  v5 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v282 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  v7 = *(*(v297 - 8) + 64);
  MEMORY[0x1EEE9AC00](v297);
  v9 = &v250 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v270 = &v250 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v271 = &v250 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v273 = &v250 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v276 = &v250 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v294 = &v250 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v250 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v272 = &v250 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v300 = &v250 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v260 = &v250 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v284 = (&v250 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v279 = &v250 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v261 = &v250 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v281 = (&v250 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v285 = (&v250 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v250 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v286 = (&v250 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v295 = (&v250 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v258 = &v250 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v278 = &v250 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v277 = (&v250 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v259 = (&v250 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v289 = (&v250 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v283 = (&v250 - v58);
  v302 = type metadata accessor for IdentifierAppBundle();
  v256 = *(v302 - 8);
  v59 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v302);
  v61 = &v250 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v301 = &v250 - v63;
  v305 = type metadata accessor for UsoIdentifier();
  v64 = *(v305 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v305);
  v275 = &v250 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v287 = &v250 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v288 = &v250 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v280 = &v250 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v274 = &v250 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v250 - v76;
  if (!a1)
  {
    return a1;
  }

  v296 = v4;

  v250 = a1;
  v78 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v79 = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    v79 = v78;
  }

  v303 = v79;
  v80 = *(v79 + 16);

  v262 = v2;
  v263 = v9;
  v252 = v23;
  v304 = v80;
  v255 = v42;
  v298 = v64;
  v299 = v61;
  if (!v80)
  {
    LODWORD(v265) = 0;
    goto LABEL_24;
  }

  v81 = 0;
  v293 = (v64 + 16);
  LODWORD(v292) = *MEMORY[0x1E69D1AE0];
  v291 = (v256 + 104);
  v82 = (v256 + 8);
  LODWORD(v269) = *MEMORY[0x1E69D1768];
  v268 = (v257 + 104);
  v267 = (v257 + 56);
  v251 = (v257 + 32);
  v254 = (v257 + 8);
  v290 = (v64 + 8);
  v266 = (v257 + 48);
  v265 = (v256 + 8);
  v264 = v77;
  while (1)
  {
    if (v81 >= *(v303 + 16))
    {
      goto LABEL_179;
    }

    (*(v64 + 16))(v77, v303 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v81, v305);
    v83 = v301;
    UsoIdentifier.appBundleSemantic.getter();
    v84 = v302;
    (*v291)(v61, v292, v302);
    v85 = MEMORY[0x1E129CA00](v83, v61);
    v86 = *v82;
    (*v82)(v61, v84);
    v87 = v84;
    v88 = v294;
    v86(v83, v87);
    if ((v85 & 1) == 0)
    {
      goto LABEL_8;
    }

    v89 = v283;
    UsoIdentifier.sourceComponent.getter();
    v90 = v289;
    v91 = v296;
    (*v268)(v289, v269, v296);
    (*v267)(v90, 0, 1, v91);
    v92 = *(v297 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v89, v88, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v90, v88 + v92, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v93 = *v266;
    if ((*v266)(v88, 1, v91) == 1)
    {
      break;
    }

    v95 = v259;
    outlined init with copy of ReferenceResolutionClientProtocol?(v88, v259, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v93(v88 + v92, 1, v91) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v289, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v283, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v254)(v95, v91);
      v64 = v298;
      v61 = v299;
LABEL_7:
      outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v82 = v265;
      v77 = v264;
      goto LABEL_8;
    }

    v96 = v88 + v92;
    v97 = v282;
    (*v251)(v282, v96, v91);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
    v253 = dispatch thunk of static Equatable.== infix(_:_:)();
    v98 = *v254;
    (*v254)(v97, v91);
    outlined destroy of ReferenceResolutionClientProtocol?(v289, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v283, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v98(v95, v91);
    outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v64 = v298;
    v61 = v299;
    v82 = v265;
    v77 = v264;
    if (v253)
    {
      goto LABEL_17;
    }

LABEL_8:
    (*v290)(v77, v305);
LABEL_9:
    if (v304 == ++v81)
    {
      LODWORD(v265) = 0;
      goto LABEL_24;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v94 = v93(v88 + v92, 1, v91);
  v64 = v298;
  v61 = v299;
  if (v94 != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v82 = v265;
  v77 = v264;
LABEL_17:
  v99 = UsoIdentifier.namespace.getter();
  if (!v100)
  {
    goto LABEL_8;
  }

  if (v99 != 0x746553656E6F6870 || v100 != 0xEC000000676E6974)
  {
    v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v290)(v77, v305);
    if (v101)
    {
      goto LABEL_165;
    }

    goto LABEL_9;
  }

  (*v290)(v77, v305);
LABEL_165:
  LODWORD(v265) = 2;
LABEL_24:

  v102 = v300;
  v103 = v274;
  if (!v304)
  {
LABEL_54:

    goto LABEL_55;
  }

  v104 = 0;
  v294 = (v64 + 16);
  LODWORD(v293) = *MEMORY[0x1E69D1AE0];
  v291 = (v256 + 104);
  v290 = (v256 + 8);
  LODWORD(v289) = *MEMORY[0x1E69D1768];
  v283 = (v257 + 104);
  v269 = (v257 + 56);
  v268 = (v257 + 48);
  v259 = (v257 + 32);
  v267 = (v257 + 8);
  v292 = (v64 + 8);
  v264 = 0x80000001DCA79140;
  v105 = &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR;
  while (2)
  {
    if (v104 >= *(v303 + 16))
    {
      goto LABEL_180;
    }

    (*(v64 + 16))(v103, v303 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v104, v305);
    v106 = v105;
    v107 = v301;
    UsoIdentifier.appBundleSemantic.getter();
    v108 = v302;
    (*v291)(v61, v293, v302);
    v109 = MEMORY[0x1E129CA00](v107, v61);
    v110 = *v290;
    (*v290)(v61, v108);
    v111 = v107;
    v105 = v106;
    v110(v111, v108);
    if ((v109 & 1) == 0)
    {
      goto LABEL_52;
    }

    v112 = v277;
    UsoIdentifier.sourceComponent.getter();
    v113 = v278;
    v114 = v296;
    (*v283)(v278, v289, v296);
    (*v269)(v113, 0, 1, v114);
    v115 = *(v297 + 48);
    v116 = v276;
    outlined init with copy of ReferenceResolutionClientProtocol?(v112, v276, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
    outlined init with copy of ReferenceResolutionClientProtocol?(v113, &v116[v115], &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
    v117 = *v268;
    if ((*v268)(v116, 1, v114) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
      outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
      v118 = v117(&v116[v115], 1, v114);
      v103 = v274;
      v61 = v299;
      v105 = v106;
      if (v118 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v116, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
        v102 = v300;
        goto LABEL_35;
      }

LABEL_33:
      outlined destroy of ReferenceResolutionClientProtocol?(v116, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v102 = v300;
      goto LABEL_52;
    }

    v119 = v258;
    outlined init with copy of ReferenceResolutionClientProtocol?(v116, v258, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
    if (v117(&v116[v115], 1, v114) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v278, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
      outlined destroy of ReferenceResolutionClientProtocol?(v277, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
      (*v267)(v119, v114);
      v103 = v274;
      v61 = v299;
      v105 = v106;
      goto LABEL_33;
    }

    v120 = v119;
    v121 = v282;
    (*v259)(v282, &v116[v115], v114);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
    LODWORD(v266) = dispatch thunk of static Equatable.== infix(_:_:)();
    v122 = *v267;
    (*v267)(v121, v114);
    outlined destroy of ReferenceResolutionClientProtocol?(v278, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
    outlined destroy of ReferenceResolutionClientProtocol?(v277, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
    v122(v120, v114);
    outlined destroy of ReferenceResolutionClientProtocol?(v276, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v106);
    v61 = v299;
    v102 = v300;
    v103 = v274;
    v105 = v106;
    if ((v266 & 1) == 0)
    {
LABEL_52:
      (*v292)(v103, v305);
      v64 = v298;
      goto LABEL_53;
    }

LABEL_35:
    v123 = UsoIdentifier.namespace.getter();
    v64 = v298;
    if (v124)
    {
      if (v123 == 0xD000000000000010 && v124 == v264)
      {

LABEL_40:
        if (UsoIdentifier.value.getter() == 0x656D756C6F76 && v126 == 0xE600000000000000)
        {
          goto LABEL_173;
        }

        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v127)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v125)
        {
          goto LABEL_40;
        }
      }
    }

    v128 = UsoIdentifier.namespace.getter();
    if (!v129)
    {
      goto LABEL_52;
    }

    if (v128 == 0x746553656E6F6870 && v129 == 0xEC000000676E6974)
    {
    }

    else
    {
      v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v130 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    if (UsoIdentifier.value.getter() != 0x5F6C6172656E6567 || v131 != 0xEE00656D756C6F76)
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v292)(v103, v305);
      v64 = v298;
      if (v132)
      {
        goto LABEL_175;
      }

LABEL_53:
      if (v304 == ++v104)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v64 = v298;
LABEL_173:

LABEL_174:
  (*v292)(v103, v305);
LABEL_175:

  LODWORD(v265) = v265 | 4;
LABEL_55:

  v133 = v280;
  if (!v304)
  {
LABEL_77:

    goto LABEL_78;
  }

  v134 = 0;
  v294 = (v64 + 16);
  LODWORD(v293) = *MEMORY[0x1E69D1AE0];
  v292 = (v256 + 104);
  v290 = (v256 + 8);
  LODWORD(v283) = *MEMORY[0x1E69D1768];
  v278 = v257 + 104;
  v277 = (v257 + 56);
  v289 = (v257 + 48);
  v269 = (v257 + 32);
  v276 = (v257 + 8);
  v274 = 0x80000001DCA79140;
  v291 = (v64 + 8);
  while (2)
  {
    if (v134 >= *(v303 + 16))
    {
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    (*(v64 + 16))(v133, v303 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v134, v305);
    v135 = v301;
    UsoIdentifier.appBundleSemantic.getter();
    v136 = v302;
    (*v292)(v61, v293, v302);
    v137 = MEMORY[0x1E129CA00](v135, v61);
    v138 = *v290;
    (*v290)(v61, v136);
    v139 = v136;
    v140 = v133;
    v141 = v295;
    v138(v135, v139);
    if ((v137 & 1) == 0)
    {
      goto LABEL_75;
    }

    UsoIdentifier.sourceComponent.getter();
    v142 = v286;
    v143 = v296;
    (*v278)(v286, v283, v296);
    (*v277)(v142, 0, 1, v143);
    v144 = *(v297 + 48);
    v145 = v273;
    outlined init with copy of ReferenceResolutionClientProtocol?(v141, v273, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v142, v145 + v144, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v146 = *v289;
    if ((*v289)(v145, 1, v143) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v142, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v141, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v146(v145 + v144, 1, v143) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v145, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v140 = v280;
        goto LABEL_66;
      }

LABEL_64:
      outlined destroy of ReferenceResolutionClientProtocol?(v145, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v140 = v280;
      goto LABEL_75;
    }

    v147 = v255;
    outlined init with copy of ReferenceResolutionClientProtocol?(v145, v255, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v146(v145 + v144, 1, v143) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v286, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v295, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v276)(v147, v143);
      goto LABEL_64;
    }

    v148 = v145 + v144;
    v149 = v282;
    (*v269)(v282, v148, v143);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
    v150 = dispatch thunk of static Equatable.== infix(_:_:)();
    v151 = *v276;
    (*v276)(v149, v143);
    outlined destroy of ReferenceResolutionClientProtocol?(v286, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v295, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v151(v147, v143);
    outlined destroy of ReferenceResolutionClientProtocol?(v145, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v140 = v280;
    if ((v150 & 1) == 0)
    {
LABEL_75:
      (*v291)(v140, v305);
      v61 = v299;
      v102 = v300;
      v133 = v140;
      goto LABEL_76;
    }

LABEL_66:
    v152 = UsoIdentifier.namespace.getter();
    if (!v153)
    {
      goto LABEL_75;
    }

    if (v152 == 0xD000000000000010 && v153 == v274)
    {

      v140 = v280;
    }

    else
    {
      v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v140 = v280;
      if ((v154 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v133 = v140;
    if (UsoIdentifier.value.getter() != 0x6563696F76 || v155 != 0xE500000000000000)
    {
      v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v291)(v133, v305);
      v61 = v299;
      v102 = v300;
      if (v156)
      {
        goto LABEL_167;
      }

LABEL_76:
      if (v304 == ++v134)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }

  (*v291)(v140, v305);
  v61 = v299;
  v102 = v300;
LABEL_167:

  LODWORD(v265) = v265 | 0x20;
LABEL_78:

  v157 = v281;
  v158 = v288;
  if (!v304)
  {
LABEL_100:

    goto LABEL_101;
  }

  v159 = 0;
  v295 = (v64 + 16);
  LODWORD(v294) = *MEMORY[0x1E69D1AE0];
  v293 = (v256 + 104);
  v160 = (v256 + 8);
  LODWORD(v290) = *MEMORY[0x1E69D1768];
  v289 = (v257 + 104);
  v286 = (v257 + 56);
  v283 = (v257 + 48);
  v276 = (v257 + 32);
  v280 = (v257 + 8);
  v277 = 0x80000001DCA79140;
  v161 = (v64 + 8);
  v292 = (v64 + 8);
  v291 = (v256 + 8);
  while (2)
  {
    if (v159 >= *(v303 + 16))
    {
      goto LABEL_177;
    }

    (*(v64 + 16))(v158, v303 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v159, v305);
    v162 = v301;
    v163 = v158;
    UsoIdentifier.appBundleSemantic.getter();
    v164 = v302;
    (*v293)(v61, v294, v302);
    v165 = MEMORY[0x1E129CA00](v162, v61);
    v166 = v61;
    v167 = v165;
    v168 = *v160;
    (*v160)(v166, v164);
    v168(v162, v164);
    if ((v167 & 1) == 0)
    {
      goto LABEL_98;
    }

    v169 = v285;
    UsoIdentifier.sourceComponent.getter();
    v170 = v296;
    (*v289)(v157, v290, v296);
    (*v286)(v157, 0, 1, v170);
    v171 = *(v297 + 48);
    v172 = v157;
    v173 = v271;
    outlined init with copy of ReferenceResolutionClientProtocol?(v169, v271, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v172, v173 + v171, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v174 = *v283;
    if ((*v283)(v173, 1, v170) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v172, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v169, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v175 = v174(v173 + v171, 1, v170);
      v161 = v292;
      if (v175 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v173, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v157 = v281;
        v163 = v288;
        v160 = v291;
        goto LABEL_89;
      }

LABEL_87:
      outlined destroy of ReferenceResolutionClientProtocol?(v173, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v157 = v281;
      v163 = v288;
      v160 = v291;
      goto LABEL_98;
    }

    v176 = v261;
    outlined init with copy of ReferenceResolutionClientProtocol?(v173, v261, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v174(v173 + v171, 1, v170) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v281, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v285, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v280)(v176, v170);
      v161 = v292;
      goto LABEL_87;
    }

    v177 = v282;
    (*v276)(v282, v173 + v171, v170);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
    LODWORD(v278) = dispatch thunk of static Equatable.== infix(_:_:)();
    v178 = *v280;
    (*v280)(v177, v170);
    v179 = v281;
    outlined destroy of ReferenceResolutionClientProtocol?(v281, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v285, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v178(v176, v170);
    v180 = v173;
    v157 = v179;
    outlined destroy of ReferenceResolutionClientProtocol?(v180, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v163 = v288;
    v161 = v292;
    v160 = v291;
    if ((v278 & 1) == 0)
    {
LABEL_98:
      (*v161)(v163, v305);
      v61 = v299;
      v102 = v300;
      v158 = v163;
      goto LABEL_99;
    }

LABEL_89:
    v181 = UsoIdentifier.namespace.getter();
    if (!v182)
    {
      goto LABEL_98;
    }

    if (v181 == 0xD000000000000010 && v182 == v277)
    {
    }

    else
    {
      v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v163 = v288;
      if ((v183 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    if (UsoIdentifier.value.getter() != 0x707954616964656DLL || v184 != 0xE900000000000065)
    {
      v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v158 = v288;
      (*v161)(v288, v305);
      v61 = v299;
      v102 = v300;
      if (v185)
      {
        goto LABEL_169;
      }

LABEL_99:
      if (v304 == ++v159)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  (*v161)(v288, v305);
  v61 = v299;
  v102 = v300;
LABEL_169:

  LODWORD(v265) = v265 | 0x10;
LABEL_101:

  v186 = v279;
  v187 = v287;
  if (!v304)
  {
LABEL_123:

    goto LABEL_124;
  }

  v188 = 0;
  v294 = (v64 + 16);
  LODWORD(v293) = *MEMORY[0x1E69D1AE0];
  v292 = (v256 + 104);
  v189 = (v256 + 8);
  LODWORD(v291) = *MEMORY[0x1E69D1768];
  v290 = (v257 + 104);
  v289 = (v257 + 56);
  v288 = (v257 + 48);
  v281 = (v257 + 32);
  v285 = (v257 + 8);
  v295 = (v64 + 8);
  v190 = &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd;
  v286 = (v256 + 8);
  while (2)
  {
    if (v188 >= *(v303 + 16))
    {
      goto LABEL_178;
    }

    (*(v64 + 16))(v187, v303 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v188, v305);
    v191 = v301;
    UsoIdentifier.appBundleSemantic.getter();
    v192 = v190;
    v193 = v302;
    (*v292)(v61, v293, v302);
    v194 = MEMORY[0x1E129CA00](v191, v61);
    v195 = *v189;
    (*v189)(v61, v193);
    v196 = v193;
    v190 = v192;
    v195(v191, v196);
    if ((v194 & 1) == 0)
    {
      goto LABEL_121;
    }

    UsoIdentifier.sourceComponent.getter();
    v197 = v284;
    v198 = v296;
    (*v290)(v284, v291, v296);
    (*v289)(v197, 0, 1, v198);
    v199 = *(v297 + 48);
    v200 = v186;
    v201 = v186;
    v202 = v270;
    outlined init with copy of ReferenceResolutionClientProtocol?(v200, v270, v190, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v197, v202 + v199, v190, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v203 = *v288;
    if ((*v288)(v202, 1, v198) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v197, v190, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v201, v190, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v203(v202 + v199, 1, v198) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v202, v190, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v61 = v299;
        v186 = v279;
        v187 = v287;
        v189 = v286;
        goto LABEL_112;
      }

LABEL_110:
      outlined destroy of ReferenceResolutionClientProtocol?(v202, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v61 = v299;
      v186 = v279;
      v187 = v287;
      v189 = v286;
      goto LABEL_121;
    }

    v204 = v190;
    v205 = v260;
    outlined init with copy of ReferenceResolutionClientProtocol?(v202, v260, v204, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v203(v202 + v199, 1, v198) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v284, v204, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v279, v204, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v285)(v205, v198);
      v190 = v204;
      goto LABEL_110;
    }

    v206 = v282;
    (*v281)(v282, v202 + v199, v198);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
    LODWORD(v283) = dispatch thunk of static Equatable.== infix(_:_:)();
    v207 = *v285;
    (*v285)(v206, v198);
    outlined destroy of ReferenceResolutionClientProtocol?(v284, v204, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v208 = v279;
    outlined destroy of ReferenceResolutionClientProtocol?(v279, v204, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v207(v205, v198);
    v209 = v202;
    v186 = v208;
    outlined destroy of ReferenceResolutionClientProtocol?(v209, v204, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v61 = v299;
    v187 = v287;
    v190 = v204;
    v189 = v286;
    if ((v283 & 1) == 0)
    {
LABEL_121:
      (*v295)(v187, v305);
      v102 = v300;
      v64 = v298;
      goto LABEL_122;
    }

LABEL_112:
    v210 = UsoIdentifier.namespace.getter();
    if (!v211)
    {
      goto LABEL_121;
    }

    if (v210 == 0x746553656E6F6870 && v211 == 0xEC000000676E6974)
    {
    }

    else
    {
      v212 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v187 = v287;
      if ((v212 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    if (UsoIdentifier.value.getter() != 0x6C6F765F6C6C6163 || v213 != 0xEB00000000656D75)
    {
      v214 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v187 = v287;
      (*v295)(v287, v305);
      v102 = v300;
      v64 = v298;
      if (v214)
      {
        goto LABEL_171;
      }

LABEL_122:
      if (v304 == ++v188)
      {
        goto LABEL_123;
      }

      continue;
    }

    break;
  }

  (*v295)(v287, v305);
  v102 = v300;
  v64 = v298;
LABEL_171:

  LODWORD(v265) = v265 | 8;
LABEL_124:

  v215 = v275;
  if (v304)
  {
    v216 = 0;
    v295 = (v64 + 16);
    LODWORD(v294) = *MEMORY[0x1E69D1AE0];
    v293 = (v256 + 104);
    v292 = (v256 + 8);
    LODWORD(v289) = *MEMORY[0x1E69D1768];
    v288 = (v257 + 104);
    v287 = (v257 + 56);
    v284 = (v257 + 32);
    v286 = (v257 + 8);
    v290 = (v64 + 8);
    v291 = (v257 + 48);
    while (1)
    {
      if (v216 >= *(v303 + 16))
      {
        goto LABEL_181;
      }

      (*(v64 + 16))(v215, v303 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v216, v305);
      v217 = v301;
      UsoIdentifier.appBundleSemantic.getter();
      v218 = v302;
      (*v293)(v61, v294, v302);
      v219 = MEMORY[0x1E129CA00](v217, v61);
      v220 = *v292;
      (*v292)(v61, v218);
      v220(v217, v218);
      v221 = v291;
      if (v219)
      {
        break;
      }

LABEL_129:
      ++v216;
      (*v290)(v215, v305);
      v64 = v298;
      if (v216 == v304)
      {
        goto LABEL_154;
      }
    }

    UsoIdentifier.sourceComponent.getter();
    v222 = v272;
    v223 = v296;
    (*v288)(v272, v289, v296);
    (*v287)(v222, 0, 1, v223);
    v224 = *(v297 + 48);
    v225 = v263;
    outlined init with copy of ReferenceResolutionClientProtocol?(v102, v263, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v222, v225 + v224, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v226 = *v221;
    if ((*v221)(v225, 1, v223) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v222, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v226(v225 + v224, 1, v223) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v225, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v215 = v275;
        goto LABEL_137;
      }

LABEL_127:
      outlined destroy of ReferenceResolutionClientProtocol?(v225, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
    }

    else
    {
      v227 = v252;
      outlined init with copy of ReferenceResolutionClientProtocol?(v225, v252, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v226(v225 + v224, 1, v223) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v272, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v102 = v300;
        outlined destroy of ReferenceResolutionClientProtocol?(v300, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        (*v286)(v227, v223);
        goto LABEL_127;
      }

      v228 = v282;
      (*v284)(v282, v225 + v224, v223);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
      LODWORD(v285) = dispatch thunk of static Equatable.== infix(_:_:)();
      v229 = *v286;
      (*v286)(v228, v223);
      outlined destroy of ReferenceResolutionClientProtocol?(v272, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v102 = v300;
      outlined destroy of ReferenceResolutionClientProtocol?(v300, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v229(v227, v223);
      outlined destroy of ReferenceResolutionClientProtocol?(v263, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v215 = v275;
      if ((v285 & 1) == 0)
      {
        goto LABEL_129;
      }

LABEL_137:
      v230 = UsoIdentifier.namespace.getter();
      if (!v231)
      {
        goto LABEL_129;
      }

      if (v230 == 0x747465536C6F6F62 && v231 == 0xEF656D614E676E69)
      {
      }

      else
      {
        v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v215 = v275;
        if ((v232 & 1) == 0)
        {
          goto LABEL_129;
        }
      }

      if (one-time initialization token for kSupportedBooleanNamespaceValues != -1)
      {
        swift_once();
      }

      v233 = static UsoTask.kSupportedBooleanNamespaceValues;
      v234 = UsoIdentifier.value.getter();
      v236 = v235;
      if (*(v233 + 16))
      {
        v237 = v234;
        v238 = *(v233 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v239 = Hasher._finalize()();
        v240 = -1 << *(v233 + 32);
        v241 = v239 & ~v240;
        if ((*(v233 + 56 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v241))
        {
          v242 = ~v240;
          while (1)
          {
            v243 = (*(v233 + 48) + 16 * v241);
            v244 = *v243 == v237 && v243[1] == v236;
            if (v244 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v241 = (v241 + 1) & v242;
            if (((*(v233 + 56 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v241) & 1) == 0)
            {
              goto LABEL_153;
            }
          }

          (*v290)(v275, v305);

          a1 = v265 | 0x40;
          goto LABEL_162;
        }
      }

LABEL_153:

      v102 = v300;
    }

    v215 = v275;
    goto LABEL_129;
  }

LABEL_154:

  a1 = v265;
  if (!v265)
  {
    if (dispatch thunk of UsoEntity_common_Setting.value.getter())
    {

      a1 = 0;
      goto LABEL_162;
    }

    if (one-time initialization token for executor == -1)
    {
LABEL_159:
      v245 = type metadata accessor for Logger();
      __swift_project_value_buffer(v245, static Logger.executor);
      v246 = Logger.logObject.getter();
      v247 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v246, v247))
      {
        v248 = swift_slowAlloc();
        *v248 = 0;
        _os_log_impl(&dword_1DC659000, v246, v247, "PhoneAffinityScorer Found an unsupported UsoEntity_common_Setting", v248, 2u);
        MEMORY[0x1E12A2F50](v248, -1, -1);
      }

      a1 = 1;
      goto LABEL_162;
    }

LABEL_182:
    swift_once();
    goto LABEL_159;
  }

LABEL_162:

  return a1;
}

char *UsoTask.parseEntity(userEntities:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_15:
    v10 = v3[1].u64[0];
    if (!v10)
    {
      v12 = 0;
LABEL_30:

      return v12;
    }

    if (v10 < 8)
    {
      v11 = 0;
      LODWORD(v12) = 0;
LABEL_28:
      v25 = v10 - v11;
      v26 = &v3[2].u8[v11];
      do
      {
        v27 = *v26++;
        v12 = v27 | v12;
        --v25;
      }

      while (v25);
      goto LABEL_30;
    }

    if (v10 >= 0x20)
    {
      v11 = v10 & 0x7FFFFFFFFFFFFFE0;
      v13 = v3 + 3;
      v14 = 0uLL;
      v15 = v10 & 0x7FFFFFFFFFFFFFE0;
      v16 = 0uLL;
      do
      {
        v14 = vorrq_s8(v13[-1], v14);
        v16 = vorrq_s8(*v13, v16);
        v13 += 2;
        v15 -= 32;
      }

      while (v15);
      v17 = vorrq_s8(v16, v14);
      *v17.i8 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
      v18 = v17.i64[0] | HIDWORD(v17.i64[0]) | ((v17.i64[0] | HIDWORD(v17.i64[0])) >> 16);
      v12 = v18 | (v18 >> 8);
      if (v10 == v11)
      {
        goto LABEL_30;
      }

      if ((v10 & 0x18) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
      v11 = 0;
    }

    v19 = v11;
    v11 = v10 & 0x7FFFFFFFFFFFFFF8;
    v20 = v12;
    v21 = &v3[2].i8[v19];
    v22 = v19 - (v10 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v23 = *v21++;
      v20 = vorr_s8(v23, v20);
      v22 += 8;
    }

    while (v22);
    v24 = *&v20 | HIDWORD(*&v20) | ((*&v20 | HIDWORD(*&v20)) >> 16);
    v12 = v24 | (v24 >> 8);
    if (v10 == v11)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v28 = MEMORY[0x1E69E7CC0];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v28;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](v5, a1);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v2 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = UsoTask.parseEntity(userEntity:)();

      v9 = v28[1].u64[0];
      v8 = v28[1].u64[1];
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      v28[1].i64[0] = v9 + 1;
      v28[2].i8[v9] = v7;
      if (v2 == v5)
      {

        goto LABEL_15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t UsoTask.parseEntity(userEntity:)()
{
  v1 = v0;
  v120 = type metadata accessor for UsoIdentifier.NluComponent();
  v2 = *(v120 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v109 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  v5 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v106 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v104 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v104 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v104 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v113 = v104 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v104 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v122 = v104 - v26;
  v27 = type metadata accessor for IdentifierAppBundle();
  v28 = *(v27 - 8);
  v137 = v27;
  v138 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v136 = v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v135 = v104 - v32;
  v140 = type metadata accessor for UsoIdentifier();
  v33 = *(v140 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v110 = v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v139 = v104 - v37;
  v38 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v39 + 16);

  v134 = v40;
  v104[1] = v1;
  if (!v40)
  {

LABEL_52:

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

  v114 = v19;
  v105 = v13;
  v41 = 0;
  v132 = v33 + 16;
  v131 = *MEMORY[0x1E69D1AE0];
  v129 = (v138 + 104);
  v128 = (v138 + 8);
  v118 = *MEMORY[0x1E69D1768];
  v117 = (v2 + 104);
  v116 = (v2 + 56);
  v115 = (v2 + 48);
  v107 = (v2 + 32);
  v111 = (v2 + 8);
  v130 = (v33 + 8);
  v112 = v16;
  v42 = v139;
  v133 = v39;
  v121 = v33;
  while (1)
  {
    if (v41 >= *(v39 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      swift_once();
LABEL_53:
      v99 = type metadata accessor for Logger();
      __swift_project_value_buffer(v99, static Logger.executor);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_1DC659000, v100, v101, "PhoneAffinityScorer Found an unsupported UsoEntity_common_UserEntity", v102, 2u);
        MEMORY[0x1E12A2F50](v102, -1, -1);
      }

      return 1;
    }

    v43 = *(v33 + 72);
    v127 = v39 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v126 = v43;
    v138 = v41;
    v125 = *(v33 + 16);
    v125(v42, v127 + v43 * v41, v140);
    v44 = v135;
    UsoIdentifier.appBundleSemantic.getter();
    v45 = v136;
    v46 = v137;
    v124 = *v129;
    v124(v136, v131, v137);
    v47 = MEMORY[0x1E129CA00](v44, v45);
    v48 = v45;
    v49 = v9;
    v50 = *v128;
    (*v128)(v48, v46);
    v51 = v44;
    v42 = v139;
    v123 = v50;
    v50(v51, v46);
    v9 = v49;
    v52 = v122;
    if ((v47 & 1) == 0)
    {
      goto LABEL_8;
    }

    UsoIdentifier.sourceComponent.getter();
    v53 = v120;
    (*v117)(v24, v118, v120);
    (*v116)(v24, 0, 1, v53);
    v54 = *(v119 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v52, v49, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v24, v49 + v54, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v55 = *v115;
    if ((*v115)(v49, 1, v53) == 1)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v49, v113, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v55(v49 + v54, 1, v53) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v111)(v113, v53);
LABEL_7:
      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v16 = v112;
      goto LABEL_8;
    }

    v56 = v49 + v54;
    v57 = v109;
    (*v107)(v109, v56, v53);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
    v108 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = *v111;
    (*v111)(v57, v53);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v58(v113, v53);
    outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v16 = v112;
    if (v108)
    {
      goto LABEL_17;
    }

LABEL_8:
    (*v130)(v42, v140);
LABEL_9:
    v41 = v138 + 1;
    v39 = v133;
    v33 = v121;
    if (v134 == (v138 + 1))
    {

      v62 = 0;
      v63 = &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR;
      v64 = v106;
      v65 = v110;
      while (1)
      {
        if (v62 >= *(v39 + 16))
        {
          goto LABEL_60;
        }

        v139 = v62;
        v125(v65, v127 + v126 * v62, v140);
        v66 = v63;
        v67 = v135;
        UsoIdentifier.appBundleSemantic.getter();
        v69 = v136;
        v68 = v137;
        v124(v136, v131, v137);
        v70 = MEMORY[0x1E129CA00](v67, v69);
        v71 = v69;
        v72 = v123;
        v123(v71, v68);
        v73 = v67;
        v63 = v66;
        v74 = v114;
        v72(v73, v68);
        if (v70)
        {
          UsoIdentifier.sourceComponent.getter();
          v75 = v120;
          (*v117)(v16, v118, v120);
          (*v116)(v16, 0, 1, v75);
          v76 = *(v119 + 48);
          outlined init with copy of ReferenceResolutionClientProtocol?(v74, v64, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
          outlined init with copy of ReferenceResolutionClientProtocol?(v16, v64 + v76, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
          v77 = *v115;
          if ((*v115)(v64, 1, v75) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
            outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
            if (v77(v64 + v76, 1, v75) != 1)
            {
              goto LABEL_24;
            }

            outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
          }

          else
          {
            v78 = v105;
            outlined init with copy of ReferenceResolutionClientProtocol?(v64, v105, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
            if (v77(v64 + v76, 1, v75) == 1)
            {
              v16 = v112;
              outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
              outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
              (*v111)(v78, v75);
              v65 = v110;
LABEL_24:
              outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
              goto LABEL_25;
            }

            v79 = v64 + v76;
            v80 = v109;
            (*v107)(v109, v79, v75);
            lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778]);
            v81 = dispatch thunk of static Equatable.== infix(_:_:)();
            v82 = *v111;
            v83 = v106;
            (*v111)(v80, v75);
            v16 = v112;
            outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
            outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
            v64 = v83;
            v82(v78, v75);
            outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v63);
            v65 = v110;
            if ((v81 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v84 = UsoIdentifier.namespace.getter();
          if (v85)
          {
            if (v84 == 0x7250726577736E61 && v85 == 0xED0000746375646FLL)
            {
            }

            else
            {
              v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v86 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            if (one-time initialization token for kAnswerProductValues != -1)
            {
              swift_once();
            }

            v87 = static UsoTask.kAnswerProductValues;
            v88 = UsoIdentifier.value.getter();
            v90 = v89;
            if (*(v87 + 16))
            {
              v91 = v88;
              v92 = *(v87 + 40);
              Hasher.init(_seed:)();
              String.hash(into:)();
              v93 = Hasher._finalize()();
              v94 = -1 << *(v87 + 32);
              v95 = v93 & ~v94;
              if ((*(v87 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
              {
                v96 = ~v94;
                while (1)
                {
                  v97 = (*(v87 + 48) + 16 * v95);
                  v98 = *v97 == v91 && v97[1] == v90;
                  if (v98 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v95 = (v95 + 1) & v96;
                  if (((*(v87 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                (*v130)(v110, v140);

                return 0;
              }

LABEL_49:

              v64 = v106;
              v65 = v110;
            }

            else
            {

              v64 = v106;
            }
          }
        }

LABEL_25:
        v62 = (v139 + 1);
        (*v130)(v65, v140);
        v39 = v133;
        if (v62 == v134)
        {
          goto LABEL_52;
        }
      }
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  if (v55(v49 + v54, 1, v53) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v16 = v112;
LABEL_17:
  v59 = UsoIdentifier.namespace.getter();
  if (!v60)
  {
    goto LABEL_8;
  }

  if (v59 != 0x746553656E6F6870 || v60 != 0xEC000000676E6974)
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v130)(v42, v140);
    if (v61)
    {
      goto LABEL_58;
    }

    goto LABEL_9;
  }

  (*v130)(v42, v140);
LABEL_58:

  return 2;
}

uint64_t one-time initialization function for forceEnabled(uint64_t a1)
{
  return one-time initialization function for forceEnabled(a1, &static InCallFeatureFlags.forceEnabled);
}

{
  return one-time initialization function for forceEnabled(a1, &static PhoneFeatureFlags.forceEnabled);
}

uint64_t *InCallFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static InCallFeatureFlags.forceEnabled;
}

uint64_t one-time initialization function for forceEnabled(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  *a2 = result;
  return result;
}

uint64_t *PhoneFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static PhoneFeatureFlags.forceEnabled;
}

uint64_t PhoneFeatureFlags.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static PhoneFeatureFlags.forceEnabled;
  os_unfair_lock_lock((static PhoneFeatureFlags.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for PhoneFeatureFlags;
    v3[4] = lazy protocol witness table accessor for type PhoneFeatureFlags and conformance PhoneFeatureFlags();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized UsoTask.parseEntity(trigger:)(uint64_t result)
{
  if (result)
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
      _os_log_impl(&dword_1DC659000, v2, v3, "PhoneAffinityScorer Found an unsupported UsoEntity_common_EventTrigger", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    return 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallFeatureFlags and conformance InCallFeatureFlags()
{
  result = lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags;
  if (!lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags;
  if (!lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneFeatureFlags and conformance PhoneFeatureFlags()
{
  result = lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags;
  if (!lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags;
  if (!lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SettingParseOptions and conformance SettingParseOptions()
{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneSettingParseResult(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for PhoneSettingParseResult(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTag for PhoneSettingParseResult(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for PhoneSettingParseResult(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(unint64_t *a1, void (*a2)(uint64_t))
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

SiriKitRuntime::PhotosAffinityScorer __swiftcall PhotosAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CE30;
  v1 = 0xD000000000000027;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t one-time initialization function for supportedIntents()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedIntents);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.supportedIntents = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.supportedIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedIntents != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.supportedIntents;
}

uint64_t one-time initialization function for sharedIntents()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for sharedIntents);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.sharedIntents = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.sharedIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedIntents != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.sharedIntents;
}

uint64_t one-time initialization function for supportedApps()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedApps);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.supportedApps = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.supportedApps.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedApps != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.supportedApps;
}

uint64_t one-time initialization function for supportedEntities()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedEntities);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.supportedEntities = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.supportedEntities.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedEntities != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.supportedEntities;
}

uint64_t *PhotosAffinityScorer.ignoredApps.unsafeMutableAddressor()
{
  if (one-time initialization token for ignoredApps != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.ignoredApps;
}

unint64_t closure #2 in PhotosAffinityScorer.isMediaPlaying(with:)()
{
  v0 = type metadata accessor for UsoEntity_common_PlaybackState.DefinedValues();
  v49 = *(v0 - 8);
  v1 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v43 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = v43 - v14;
  v15 = type metadata accessor for RREntity();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v16 + 8))(v19, v15);
  v20 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

  result = MEMORY[0x1E129C9E0](v20);
  if (result >> 62)
  {
    v23 = result;
    v24 = __CocoaSet.count.getter();
    result = v23;
    if (!v24)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0);
LABEL_7:

    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of ReferenceResolutionClientProtocol?(v52, v51, &_sypSgMd, &_sypSgMR);
    if (v51[3])
    {
      type metadata accessor for UsoTask_noVerb_common_MediaItem();
      if ((swift_dynamicCast() & 1) == 0)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);

        v33 = 0;
        return v33 & 1;
      }

      v43[0] = v3;
      v43[1] = v20;
      v25 = v53;

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v45 = v25;

      if (v51[0] && (v26 = dispatch thunk of UsoEntity_common_MediaItem.playbackState.getter(), , v26))
      {
        v27 = v4;
        v28 = v48;
        dispatch thunk of UsoEntity_common_PlaybackState.definedValue.getter();

        v29 = v49;
      }

      else
      {
        v27 = v4;
        v28 = v48;
        v29 = v49;
        (*(v49 + 56))(v48, 1, 1, v0);
      }

      v34 = v50;
      (*(v29 + 104))(v50, *MEMORY[0x1E69D2050], v0);
      (*(v29 + 56))(v34, 0, 1, v0);
      v35 = *(v27 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v28, v7, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v44 = v35;
      outlined init with copy of ReferenceResolutionClientProtocol?(v34, &v7[v35], &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v36 = *(v29 + 48);
      v46 = v0;
      if (v36(v7, 1, v0) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);
        if (v36(&v7[v44], 1, v46) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          v33 = 1;
          return v33 & 1;
        }
      }

      else
      {
        v37 = v47;
        outlined init with copy of ReferenceResolutionClientProtocol?(v7, v47, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        v38 = v44;
        v39 = v46;
        if (v36(&v7[v44], 1, v46) != 1)
        {
          v40 = v49;
          v41 = v43[0];
          (*(v49 + 32))(v43[0], &v7[v38], v39);
          lazy protocol witness table accessor for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues();
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();

          v42 = *(v40 + 8);
          v42(v41, v39);
          outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);
          v42(v37, v39);
          outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          return v33 & 1;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);
        (*(v49 + 8))(v37, v39);
      }

      v31 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd;
      v32 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR;
      v30 = v7;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);

      v30 = v51;
      v31 = &_sypSgMd;
      v32 = &_sypSgMR;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v30, v31, v32);
    v33 = 0;
    return v33 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(result + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t specialized PhotosAffinityScorer.unsupportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v160 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v122 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v168 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v122 - v11;
  v13 = type metadata accessor for RRMetadata();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v122 - v19;
  v153 = type metadata accessor for RREntity();
  v21 = *(v153 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v146 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v122 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v122 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v144 = &v122 - v31;
  v152 = type metadata accessor for RRCandidate();
  v32 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v145 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v127 = &v122 - v35;
  v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v36);
  v151 = &v122 - v39;
  v143 = *(a1 + 16);
  v123 = v37;
  if (v143)
  {
    v40 = 0;
    v42 = *(v37 + 16);
    v41 = v37 + 16;
    v140 = v42;
    v124 = (*(v41 + 64) + 32) & ~*(v41 + 64);
    v139 = a1 + v124;
    v147 = *(v41 + 56);
    v150 = (v21 + 8);
    v138 = (v41 - 8);
    v166 = (v14 + 32);
    v167 = v14 + 16;
    v165 = (v14 + 88);
    v164 = *MEMORY[0x1E69D27E8];
    v156 = (v14 + 8);
    v155 = (v14 + 96);
    v163 = (v3 + 32);
    v133 = *MEMORY[0x1E69D2918];
    v132 = (v3 + 104);
    v158 = v3;
    v131 = (v3 + 8);
    v128 = *MEMORY[0x1E69D28F8];
    v141 = v41;
    v126 = (v41 + 16);
    v129 = MEMORY[0x1E69E7CC0];
    v157 = v2;
    v43 = v151;
    v134 = v12;
    v142 = v21;
    v130 = v14;
    v154 = v20;
    while (1)
    {
      v148 = v40;
      v140(v43, v139 + v147 * v40, v152, v38);
      if (one-time initialization token for ignoredApps != -1)
      {
        swift_once();
      }

      v44 = static PhotosAffinityScorer.ignoredApps;
      v45 = v144;
      RRCandidate.entity.getter();
      v46 = RREntity.appBundleId.getter();
      v48 = v47;
      v149 = *v150;
      v149(v45, v153);
      if (*(v44 + 16))
      {
        v49 = *(v44 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v50 = Hasher._finalize()();
        v51 = -1 << *(v44 + 32);
        v52 = v50 & ~v51;
        if ((*(v44 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
        {
          v53 = ~v51;
          while (1)
          {
            v54 = (*(v44 + 48) + 16 * v52);
            v55 = *v54 == v46 && v54[1] == v48;
            if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v52 = (v52 + 1) & v53;
            if (((*(v44 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_4;
        }
      }

LABEL_17:

      v56 = v137;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      v149(v56, v153);
      v57 = UsoTask.verbString.getter();
      v59 = v58;

      if (one-time initialization token for kUsoCommonAppEntityName != -1)
      {
        swift_once();
      }

      if (v57 == kUsoCommonAppEntityName._countAndFlagsBits && v59 == kUsoCommonAppEntityName._object)
      {
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v60 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v61 = v135;
      RRCandidate.entity.getter();
      v62 = RREntity.metadata.getter();
      v149(v61, v153);
      v63 = *(v62 + 16);
      if (v63)
      {
        v64 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v136 = v62;
        v65 = v62 + v64;
        v66 = *(v130 + 72);
        v68 = MEMORY[0x1E69E7CC0];
        v161 = *(v130 + 16);
        v67 = v161;
        v162 = v66;
        v161(v20, v65, v13);
        while (1)
        {
          (*v166)(v17, v20, v13);
          v69 = (*v165)(v17, v13);
          if (v69 == v164)
          {
            v70 = v13;
            (*v155)(v17, v13);
            v71 = *v163;
            v72 = v160;
            v73 = v17;
            (*v163)(v160, v17, v2);
            v74 = v2;
            v75 = v159;
            v71(v159, v72, v74);
            v71(v168, v75, v74);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
            }

            v77 = v68[2];
            v76 = v68[3];
            v78 = v158;
            v17 = v73;
            if (v77 >= v76 >> 1)
            {
              v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v76 > 1, v77 + 1, 1, v68);
              v78 = v158;
              v68 = v80;
            }

            v13 = v70;
            v68[2] = v77 + 1;
            v79 = v68 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v77;
            v2 = v157;
            v71(v79, v168, v157);
            v20 = v154;
            v67 = v161;
            v66 = v162;
          }

          else
          {
            (*v156)(v17, v13);
          }

          v65 += v66;
          if (!--v63)
          {
            break;
          }

          v67(v20, v65, v13);
        }
      }

      else
      {

        v68 = MEMORY[0x1E69E7CC0];
      }

      v81 = *v132;
      v82 = v134;
      (*v132)(v134, v133, v2);
      v83 = specialized Sequence<>.contains(_:)(v82, v68);
      v162 = *v131;
      v162(v82, v2);
      if (!v83)
      {
        v102 = v151;
        (*v138)(v151, v152);
        v43 = v102;

        goto LABEL_5;
      }

      v81(v82, v128, v2);
      v84 = specialized Sequence<>.contains(_:)(v82, v68);

      v162(v82, v2);
      if (!v84)
      {
        if (one-time initialization token for supportedApps != -1)
        {
          swift_once();
        }

        v85 = static PhotosAffinityScorer.supportedApps;
        v86 = v125;
        RRCandidate.entity.getter();
        v87 = RREntity.appBundleId.getter();
        v89 = v88;
        v149(v86, v153);
        if (*(v85 + 16) && (v90 = *(v85 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v91 = Hasher._finalize()(), v92 = -1 << *(v85 + 32), v93 = v91 & ~v92, ((*(v85 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) != 0))
        {
          v94 = ~v92;
          while (1)
          {
            v95 = (*(v85 + 48) + 16 * v93);
            v96 = *v95 == v87 && v95[1] == v89;
            if (v96 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v93 = (v93 + 1) & v94;
            if (((*(v85 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          v43 = v151;
          (*v138)(v151, v152);
        }

        else
        {
LABEL_49:

          v97 = *v126;
          (*v126)(v127, v151, v152);
          v98 = v129;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v170 = v98;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 16) + 1, 1);
            v98 = v170;
          }

          v101 = *(v98 + 16);
          v100 = *(v98 + 24);
          if (v101 >= v100 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v101 + 1, 1);
            v98 = v170;
          }

          *(v98 + 16) = v101 + 1;
          v129 = v98;
          v97((v98 + v124 + v101 * v147), v127, v152);
          v43 = v151;
        }

        goto LABEL_5;
      }

LABEL_4:
      v43 = v151;
      (*v138)(v151, v152);
LABEL_5:
      v40 = v148 + 1;
      v21 = v142;
      if (v148 + 1 == v143)
      {
        goto LABEL_57;
      }
    }
  }

  v129 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v103 = *(v129 + 16);
  if (v103)
  {
    v169 = MEMORY[0x1E69E7CC0];
    v104 = v129;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103, 0);
    v105 = v169;
    v106 = v123 + 16;
    v107 = *(v123 + 16);
    v108 = v104 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v167 = *(v123 + 72);
    v168 = v107;
    v165 = (v123 + 8);
    v166 = (v21 + 8);
    v109 = v145;
    do
    {
      v110 = v152;
      v111 = v106;
      (v168)(v109, v108, v152);
      v112 = v146;
      RRCandidate.entity.getter();
      v113 = RREntity.appBundleId.getter();
      v115 = v114;
      (*v166)(v112, v153);
      (*v165)(v109, v110);
      v169 = v105;
      v117 = v105[2];
      v116 = v105[3];
      if (v117 >= v116 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1);
        v105 = v169;
      }

      v105[2] = v117 + 1;
      v118 = &v105[2 * v117];
      v118[4] = v113;
      v118[5] = v115;
      v108 += v167;
      --v103;
      v106 = v111;
    }

    while (v103);

    if (v105[2])
    {
      goto LABEL_63;
    }

LABEL_65:
    v119 = 0;
    goto LABEL_66;
  }

  v105 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_65;
  }

LABEL_63:
  v119 = v105[4];
  v120 = v105[5];

LABEL_66:

  return v119;
}

uint64_t specialized PhotosAffinityScorer.isMediaPlaying(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRMetadata();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v60 = type metadata accessor for RREntity();
  v10 = *(v60 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v13 = type metadata accessor for RRCandidate();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v46 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v65 = &v46 - v21;
  v58 = *(a1 + 16);
  v48 = v19;
  if (v58)
  {
    v22 = 0;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v50 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v55 = a1 + v50;
    v56 = v24;
    v62 = *(v23 + 56);
    v54 = (v10 + 8);
    v69 = v3 + 16;
    v68 = *MEMORY[0x1E69D2908];
    v67 = *MEMORY[0x1E69D27E8];
    v66 = v3 + 104;
    v25 = (v3 + 8);
    v57 = v23;
    v51 = (v23 - 8);
    v52 = (v23 + 16);
    v63 = MEMORY[0x1E69E7CC0];
    v61 = v13;
    v24(v65, a1 + v50, v13, v20);
LABEL_6:
    v64 = v22 + 1;
    v26 = v59;
    RRCandidate.entity.getter();
    v27 = RREntity.metadata.getter();
    (*v54)(v26, v60);
    v13 = 0;
    v28 = *(v27 + 16);
    while (1)
    {
      if (v28 == v13)
      {

        v13 = v61;
        (*v51)(v65, v61);
LABEL_4:
        v22 = v64;
        if (v64 == v58)
        {
          goto LABEL_16;
        }

        v56(v65, v55 + v62 * v64, v13, v20);
        goto LABEL_6;
      }

      if (v13 >= *(v27 + 16))
      {
        break;
      }

      (*(v3 + 16))(v9, v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13++, v2);
      v29 = type metadata accessor for RRDataSourceMetadataValue();
      (*(*(v29 - 8) + 104))(v6, v68, v29);
      (*(v3 + 104))(v6, v67, v2);
      v30 = static RRMetadata.== infix(_:_:)();
      v31 = *(v3 + 8);
      v31(v6, v2);
      v31(v9, v2);
      if (v30)
      {

        v32 = *v52;
        (*v52)(v53, v65, v61);
        v33 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
          v33 = v70;
        }

        v36 = *(v33 + 16);
        v35 = *(v33 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
          v33 = v70;
        }

        *(v33 + 16) = v36 + 1;
        v63 = v33;
        v37 = v33 + v50 + v36 * v62;
        v13 = v61;
        v32(v37, v53, v61);
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:

    result = (*v27)(v9, v13);
    __break(1u);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v38 = 0;
    v39 = v63;
    v40 = *(v63 + 16);
    v41 = v48;
    v27 = v48 + 8;
    v25 = v49;
    v9 = v47;
    do
    {
      v42 = v38;
      if (v40 == v38)
      {
        break;
      }

      if (v38 >= *(v39 + 16))
      {
        goto LABEL_23;
      }

      (*(v41 + 16))(v9, v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v13, v20);
      v43 = closure #2 in PhotosAffinityScorer.isMediaPlaying(with:)();
      if (v25)
      {
        goto LABEL_24;
      }

      v44 = v43;
      ++v38;
      (*v27)(v9, v13);
      v39 = v63;
    }

    while ((v44 & 1) == 0);

    return v40 != v42;
  }

  return result;
}

uint64_t specialized PhotosAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v162 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v161 = &v126 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v126 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v126 - v11;
  v164 = type metadata accessor for RRMetadata();
  v13 = *(v164 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v126 - v18;
  v156 = type metadata accessor for RREntity();
  v20 = *(v156 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v150 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v126 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v141 = &v126 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v148 = &v126 - v30;
  v155 = type metadata accessor for RRCandidate();
  v31 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v149 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v130 = &v126 - v34;
  v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v35);
  v39 = &v126 - v36;
  v147 = *(a1 + 16);
  v128 = v37;
  if (v147)
  {
    v163 = v16;
    v40 = 0;
    v42 = *(v37 + 16);
    v41 = v37 + 16;
    v144 = v42;
    v127 = (*(v41 + 64) + 32) & ~*(v41 + 64);
    v143 = a1 + v127;
    v151 = *(v41 + 56);
    v154 = (v20 + 8);
    v142 = (v41 - 8);
    v170 = (v13 + 32);
    v171 = v13 + 16;
    v169 = (v13 + 88);
    v168 = *MEMORY[0x1E69D27E8];
    v159 = (v13 + 8);
    v158 = (v13 + 96);
    v167 = (v3 + 32);
    v136 = *MEMORY[0x1E69D2918];
    v160 = v3;
    v135 = (v3 + 8);
    v133 = *MEMORY[0x1E69D28F8];
    v145 = v41;
    v129 = (v41 + 16);
    v132 = MEMORY[0x1E69E7CC0];
    v166 = v2;
    v137 = v12;
    v146 = v20;
    v134 = v13;
    v152 = &v126 - v36;
    v165 = (v3 + 104);
    v157 = v19;
    while (1)
    {
      v153 = v40;
      v144(v39, v143 + v151 * v40, v155, v38);
      if (one-time initialization token for ignoredApps != -1)
      {
        swift_once();
      }

      v43 = static PhotosAffinityScorer.ignoredApps;
      v44 = v148;
      RRCandidate.entity.getter();
      v45 = RREntity.appBundleId.getter();
      v47 = v46;
      v48 = *v154;
      (*v154)(v44, v156);
      v49 = v165;
      v50 = v166;
      if (*(v43 + 16))
      {
        v51 = *(v43 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v52 = Hasher._finalize()();
        v53 = -1 << *(v43 + 32);
        v54 = v52 & ~v53;
        if ((*(v43 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
        {
          break;
        }
      }

LABEL_17:

      v58 = v141;
      v39 = v152;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      v48(v58, v156);
      v59 = UsoTask.verbString.getter();
      v61 = v60;

      if (one-time initialization token for kUsoCommonAppEntityName != -1)
      {
        swift_once();
      }

      v62 = v164;
      if (v59 == kUsoCommonAppEntityName._countAndFlagsBits && v61 == kUsoCommonAppEntityName._object)
      {
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v63 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v64 = v138;
      RRCandidate.entity.getter();
      v65 = RREntity.metadata.getter();
      v140 = v48;
      v48(v64, v156);
      v66 = *(v65 + 16);
      if (v66)
      {
        v67 = (*(v134 + 80) + 32) & ~*(v134 + 80);
        v139 = v65;
        v68 = v65 + v67;
        v69 = *(v134 + 72);
        v70 = *(v134 + 16);
        v71 = MEMORY[0x1E69E7CC0];
        v72 = v163;
        v70(v19, v68, v62);
        while (1)
        {
          (*v170)(v72, v19, v62);
          v73 = (*v169)(v72, v62);
          if (v73 == v168)
          {
            (*v158)(v72, v62);
            v74 = *v167;
            v75 = v162;
            (*v167)(v162, v72, v50);
            v76 = v50;
            v77 = v161;
            v74(v161, v75, v76);
            v74(v172, v77, v76);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71[2] + 1, 1, v71);
            }

            v79 = v71[2];
            v78 = v71[3];
            v80 = v160;
            v72 = v163;
            if (v79 >= v78 >> 1)
            {
              v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1, v71);
              v80 = v160;
              v71 = v82;
            }

            v71[2] = v79 + 1;
            v81 = v71 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v79;
            v50 = v166;
            v74(v81, v172, v166);
            v19 = v157;
            v62 = v164;
            v49 = v165;
          }

          else
          {
            (*v159)(v72, v62);
          }

          v68 += v69;
          if (!--v66)
          {
            break;
          }

          v70(v19, v68, v62);
        }

        v39 = v152;
      }

      else
      {

        v71 = MEMORY[0x1E69E7CC0];
      }

      v83 = *v49;
      v84 = v137;
      v85 = v166;
      (*v49)(v137, v136, v166);
      v86 = specialized Sequence<>.contains(_:)(v84, v71);
      v87 = *v135;
      (*v135)(v84, v85);
      if (!v86)
      {
        (*v142)(v39, v155);

        goto LABEL_5;
      }

      v83(v84, v133, v85);
      v88 = specialized Sequence<>.contains(_:)(v84, v71);

      v87(v84, v85);
      if (v88)
      {
        goto LABEL_4;
      }

      if (one-time initialization token for supportedApps != -1)
      {
        swift_once();
      }

      v89 = static PhotosAffinityScorer.supportedApps;
      v90 = v131;
      RRCandidate.entity.getter();
      v91 = RREntity.appBundleId.getter();
      v93 = v92;
      v140(v90, v156);
      if (*(v89 + 16))
      {
        v94 = *(v89 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v95 = Hasher._finalize()();
        v96 = -1 << *(v89 + 32);
        v97 = v95 & ~v96;
        if ((*(v89 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
        {
          v98 = ~v96;
          while (1)
          {
            v99 = (*(v89 + 48) + 16 * v97);
            v100 = *v99 == v91 && v99[1] == v93;
            if (v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v97 = (v97 + 1) & v98;
            if (((*(v89 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          v101 = *v129;
          v39 = v152;
          (*v129)(v130, v152, v155);
          v102 = v132;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104 = v102;
          v174 = v102;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 16) + 1, 1);
            v104 = v174;
          }

          v106 = *(v104 + 16);
          v105 = *(v104 + 24);
          if (v106 >= v105 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v105 > 1, v106 + 1, 1);
            v104 = v174;
          }

          *(v104 + 16) = v106 + 1;
          v132 = v104;
          v101((v104 + v127 + v106 * v151), v130, v155);
          goto LABEL_5;
        }

LABEL_49:
        v39 = v152;
        (*v142)(v152, v155);
      }

      else
      {
        (*v142)(v39, v155);
      }

LABEL_5:
      v40 = v153 + 1;
      v20 = v146;
      if (v153 + 1 == v147)
      {
        goto LABEL_59;
      }
    }

    v55 = ~v53;
    while (1)
    {
      v56 = (*(v43 + 48) + 16 * v54);
      v57 = *v56 == v45 && v56[1] == v47;
      if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v54 = (v54 + 1) & v55;
      if (((*(v43 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v39 = v152;
LABEL_4:
    (*v142)(v39, v155);
    goto LABEL_5;
  }

  v132 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v107 = *(v132 + 16);
  if (v107)
  {
    v173 = MEMORY[0x1E69E7CC0];
    v108 = v132;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107, 0);
    v109 = v173;
    v110 = v128 + 16;
    v111 = *(v128 + 16);
    v112 = v108 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
    v171 = *(v128 + 72);
    v172 = v111;
    v169 = (v128 + 8);
    v170 = (v20 + 8);
    v113 = v149;
    do
    {
      v114 = v155;
      v115 = v110;
      (v172)(v113, v112, v155);
      v116 = v150;
      RRCandidate.entity.getter();
      v117 = RREntity.appBundleId.getter();
      v119 = v118;
      (*v170)(v116, v156);
      (*v169)(v113, v114);
      v173 = v109;
      v121 = v109[2];
      v120 = v109[3];
      if (v121 >= v120 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
        v109 = v173;
      }

      v109[2] = v121 + 1;
      v122 = &v109[2 * v121];
      v122[4] = v117;
      v122[5] = v119;
      v112 += v171;
      --v107;
      v110 = v115;
    }

    while (v107);

    if (v109[2])
    {
      goto LABEL_65;
    }

LABEL_67:
    v123 = 0;
    goto LABEL_68;
  }

  v109 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_67;
  }

LABEL_65:
  v123 = v109[4];
  v124 = v109[5];

LABEL_68:

  return v123;
}

uint64_t specialized PhotosAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v4, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DC659000, v34, v35, "[PhotosAffinityScorer] Not a Uso parse, returning .default", v36, 2u);
      MEMORY[0x1E12A2F50](v36, -1, -1);

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

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.executor);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v39, v40, "[PhotosAffinityScorer] Unable to extract task from uso parse, returning .default", v41, 2u);
      MEMORY[0x1E12A2F50](v41, -1, -1);

      (*(v6 + 8))(v9, v5);
      return 2;
    }

    (*(v6 + 8))(v9, v5);
    return 2;
  }

  v81 = v5;
  v82 = v6;
  v10 = UsoTask.verbString.getter();
  v12 = v11;
  v13 = UsoTask.baseEntityAsString.getter();
  v15 = v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.executor);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v83 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v80 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v84 = v23;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v12, &v84);
    *(v22 + 12) = 2080;
    *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v84);
    _os_log_impl(&dword_1DC659000, v18, v19, "[PhotosAffinityScorer] UsoTask for %s:%s", v22, 0x16u);
    swift_arrayDestroy();
    v24 = v23;
    v10 = v83;
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v84 = v10;
  v85 = v12;

  MEMORY[0x1E12A1580](58, 0xE100000000000000);

  MEMORY[0x1E12A1580](v13, v15);

  v25 = v84;
  v26 = v85;
  if (one-time initialization token for supportedIntents != -1)
  {
    v78 = v84;
    swift_once();
    v25 = v78;
  }

  v27 = specialized Set.contains(_:)(v25, v26, static PhotosAffinityScorer.supportedIntents);

  if (v27)
  {
    SiriEnvironment.salientEntitiesProvider.getter();
    v28 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

    v29 = specialized PhotosAffinityScorer.unsupportedAppIsOnScreen(with:)(v28);
    v31 = v30;

    if (v31)
    {
      v83 = v29;

      if (v13 == 0x6E456F4E5F6F7375 && v15 == 0xEC00000079746974)
      {

        v32 = v82;
LABEL_34:

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v84 = v58;
          *v57 = 136315138;
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v31, &v84);

          *(v57 + 4) = v59;
          _os_log_impl(&dword_1DC659000, v55, v56, "[PhotosAffinityScorer] UsoTask is shared, unsupported app (%s) is on screen and no entity specified, returning .unsupported", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          MEMORY[0x1E12A2F50](v58, -1, -1);
          MEMORY[0x1E12A2F50](v57, -1, -1);
        }

        else
        {
        }

        (*(v32 + 8))(v9, v81);
        return 0;
      }

      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v82;
      if (v54)
      {
        goto LABEL_34;
      }

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v63, v64))
      {

        goto LABEL_48;
      }

      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v84 = v66;
      *v65 = 136315138;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v31, &v84);

      *(v65 + 4) = v67;
      _os_log_impl(&dword_1DC659000, v63, v64, "[PhotosAffinityScorer] UsoTask is not shared, unsupported app (%s) is on screen, returning .default", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x1E12A2F50](v66, -1, -1);
      MEMORY[0x1E12A2F50](v65, -1, -1);

LABEL_46:

LABEL_48:
      (*(v32 + 8))(v9, v81);
      return 2;
    }

    v84 = v83;
    v85 = v12;

    MEMORY[0x1E12A1580](58, 0xE100000000000000);

    MEMORY[0x1E12A1580](v13, v15);

    v45 = v84;
    v46 = v85;
    if (one-time initialization token for sharedIntents != -1)
    {
      v79 = v84;
      swift_once();
      v45 = v79;
    }

    v47 = specialized Set.contains(_:)(v45, v46, static PhotosAffinityScorer.sharedIntents);

    v32 = v82;
    if ((v47 & 1) == 0)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v37 = 2;
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1DC659000, v60, v61, "[PhotosAffinityScorer] UsoTask is not shared, returning .default", v62, 2u);
        MEMORY[0x1E12A2F50](v62, -1, -1);

        (*(v32 + 8))(v9, v81);
        return v37;
      }

      goto LABEL_46;
    }

    SiriEnvironment.salientEntitiesProvider.getter();
    v48 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

    v49 = specialized PhotosAffinityScorer.isMediaPlaying(with:)(v48);

    if (v49)
    {
      v50 = Logger.logObject.getter();
      LOBYTE(v51) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "[PhotosAffinityScorer] UsoTask is shared and media is playing on device, returning .low";
LABEL_53:
        _os_log_impl(&dword_1DC659000, v50, v51, v53, v52, 2u);
        MEMORY[0x1E12A2F50](v52, -1, -1);
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    SiriEnvironment.salientEntitiesProvider.getter();
    v68 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

    v69 = specialized PhotosAffinityScorer.supportedAppIsOnScreen(with:)(v68);
    v71 = v70;

    if (!v71)
    {
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "[PhotosAffinityScorer] UsoTask is shared and unsupported app is on screen, returning .low";
        goto LABEL_53;
      }

LABEL_54:

      (*(v32 + 8))(v9, v81);
      return 1;
    }

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v84 = v75;
      *v74 = 136315138;
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v84);

      *(v74 + 4) = v76;
      _os_log_impl(&dword_1DC659000, v72, v73, "[PhotosAffinityScorer] UsoTask is shared and supported app (%s) is on screen, returning .high", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1E12A2F50](v75, -1, -1);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v9, v81);
    return 3;
  }

  else
  {

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1DC659000, v42, v43, "[PhotosAffinityScorer] UsoTask (verb + entity combination) is not supported, returning .unsupported", v44, 2u);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    (*(v82 + 8))(v9, v81);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_PlaybackState.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues);
  }

  return result;
}

uint64_t static PlatformErrorActions.renderCompanionBuildUnsupportedForPersonalRequests()(unsigned int *a1)
{
  v2 = type metadata accessor for SiriKitPlatformErrorCase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *a1, v2, v5);
  SiriKitPlatformErrorCase.makePluginActionToRenderError()();
  return (*(v3 + 8))(v7, v2);
}

SiriKitRuntime::PlaybackControlsAffinityScorer __swiftcall PlaybackControlsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CBD0;
  v1 = 0xD00000000000002FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

SiriKitRuntime::PlaybackControlsAffinityScorer::ParseAttributes __swiftcall PlaybackControlsAffinityScorer.ParseAttributes.init(hasControlsSupportedIdentifier:hasAirPlaySetting:)(Swift::Bool hasControlsSupportedIdentifier, Swift::Bool hasAirPlaySetting)
{
  if (hasAirPlaySetting)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | hasControlsSupportedIdentifier);
}

void closure #2 in static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)(uint64_t a1, _BYTE *a2)
{
  v52 = a2;
  v51 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for Google_Protobuf_StringValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v57 = a1;
  Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
  v18 = Google_Protobuf_StringValue.value.getter();
  v20 = v19;
  v53 = *(v11 + 8);
  v53(v17, v10);
  v56[0] = v18;
  v56[1] = v20;
  v55 = v56;
  LOBYTE(v18) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v54, &outlined read-only object #0 of one-time initialization function for kSupportedIdentifierNamespaces);

  if (v18)
  {
    v49 = v2;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.executor);
    v22 = v9;
    v23 = v9;
    v24 = v51;
    v47 = *(v4 + 16);
    v47(v23, v57, v51);
    v25 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v48))
    {
      v26 = swift_slowAlloc();
      v45 = v10;
      v27 = v26;
      v46 = swift_slowAlloc();
      v56[0] = v46;
      *v27 = 136315138;
      v44 = v25;
      v47(v50, v22, v24);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v4 + 8))(v22, v24);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v56);

      v32 = v27;
      v33 = v44;
      v10 = v45;
      *(v32 + 1) = v31;
      v34 = v32;
      _os_log_impl(&dword_1DC659000, v33, v48, "PlaybackControlsAffinityScorer Found matching identifier %s", v32, 0xCu);
      v35 = v46;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v22, v24);
    }

    *v52 = 1;
  }

  Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
  Google_Protobuf_StringValue.init(stringLiteral:)();
  v36 = static Google_Protobuf_StringValue.== infix(_:_:)();
  v37 = v53;
  v53(v14, v10);
  v37(v17, v10);
  if (v36)
  {
    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x79616C70726961 && v38 == 0xE700000000000000)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        return;
      }
    }

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
      _os_log_impl(&dword_1DC659000, v41, v42, "PlaybackControlsAffinityScorer Task has AirPlay setting", v43, 2u);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    v52[1] = 1;
  }
}

unint64_t closure #2 in PlaybackControlsAffinityScorer.isMediaPlaying(with:)()
{
  v0 = type metadata accessor for UsoEntity_common_PlaybackState.DefinedValues();
  v49 = *(v0 - 8);
  v1 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v43 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = v43 - v14;
  v15 = type metadata accessor for RREntity();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v16 + 8))(v19, v15);
  v20 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

  result = MEMORY[0x1E129C9E0](v20);
  if (result >> 62)
  {
    v23 = result;
    v24 = __CocoaSet.count.getter();
    result = v23;
    if (!v24)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0);
LABEL_7:

    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of ReferenceResolutionClientProtocol?(v52, v51, &_sypSgMd, &_sypSgMR);
    if (v51[3])
    {
      type metadata accessor for UsoTask_noVerb_common_MediaItem();
      if ((swift_dynamicCast() & 1) == 0)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);

        v33 = 0;
        return v33 & 1;
      }

      v43[0] = v3;
      v43[1] = v20;
      v25 = v53;

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v45 = v25;

      if (v51[0] && (v26 = dispatch thunk of UsoEntity_common_MediaItem.playbackState.getter(), , v26))
      {
        v27 = v4;
        v28 = v48;
        dispatch thunk of UsoEntity_common_PlaybackState.definedValue.getter();

        v29 = v49;
      }

      else
      {
        v27 = v4;
        v28 = v48;
        v29 = v49;
        (*(v49 + 56))(v48, 1, 1, v0);
      }

      v34 = v50;
      (*(v29 + 104))(v50, *MEMORY[0x1E69D2050], v0);
      (*(v29 + 56))(v34, 0, 1, v0);
      v35 = *(v27 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v28, v7, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v44 = v35;
      outlined init with copy of ReferenceResolutionClientProtocol?(v34, &v7[v35], &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v36 = *(v29 + 48);
      v46 = v0;
      if (v36(v7, 1, v0) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);
        if (v36(&v7[v44], 1, v46) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          v33 = 1;
          return v33 & 1;
        }
      }

      else
      {
        v37 = v47;
        outlined init with copy of ReferenceResolutionClientProtocol?(v7, v47, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        v38 = v44;
        v39 = v46;
        if (v36(&v7[v44], 1, v46) != 1)
        {
          v40 = v49;
          v41 = v43[0];
          (*(v49 + 32))(v43[0], &v7[v38], v39);
          lazy protocol witness table accessor for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues();
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();

          v42 = *(v40 + 8);
          v42(v41, v39);
          outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);
          v42(v37, v39);
          outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          return v33 & 1;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);
        (*(v49 + 8))(v37, v39);
      }

      v31 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd;
      v32 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR;
      v30 = v7;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_sypSgMd, &_sypSgMR);

      v30 = v51;
      v31 = &_sypSgMd;
      v32 = &_sypSgMR;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v30, v31, v32);
    v33 = 0;
    return v33 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(result + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t specialized static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserParse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v55 = &v46 - v19;
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v46 - v24;
  v56 = 0;
  v25 = USOParse.userParse.getter();
  v26 = MEMORY[0x1E129C0F0](v25);
  (*(v13 + 8))(v16, v12);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 0;
    while (v28 < *(v26 + 16))
    {
      (*(v8 + 16))(v11, v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v7);
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {

        v30 = v55;
        (*(v8 + 32))(v55, v11, v7);
        v29 = 0;
        goto LABEL_8;
      }

      ++v28;
      (*(v8 + 8))(v11, v7);
      if (v27 == v28)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_6:

  v29 = 1;
  v30 = v55;
LABEL_8:
  (*(v8 + 56))(v30, v29, 1, v7);
  if ((*(v8 + 48))(v30, 1, v7) != 1)
  {
    v37 = v47;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v8 + 8))(v30, v7);
    v38 = v46;
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v48 + 8))(v37, v49);
    (*(v53 + 32))(v52, v38, v54);
    v39 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v40 = *(v39 + 16);
    v42 = v50;
    v41 = v51;
    if (!v40)
    {
LABEL_17:
      (*(v53 + 8))(v52, v54);

      v35 = v56;
      if (HIBYTE(v56))
      {
        v36 = 256;
      }

      else
      {
        v36 = 0;
      }

      return v36 | v35;
    }

    v43 = 0;
    v44 = (v50 + 8);
    while (v43 < *(v39 + 16))
    {
      (*(v42 + 16))(v3, v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v43, v41);
      closure #2 in static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)(v3, &v56);
      ++v43;
      (*v44)(v3, v41);
      if (v40 == v43)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_22;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  if (one-time initialization token for executor != -1)
  {
LABEL_23:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.executor);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1DC659000, v32, v33, "PlaybackControlsAffinityScorer Could not extract userStatedTask", v34, 2u);
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  v35 = 0;
  v36 = 0;
  return v36 | v35;
}

uint64_t specialized PlaybackControlsAffinityScorer.unsupportedByControls(usoTask:)()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v30, v29, &_sypSgMd, &_sypSgMR);
  if (!v29[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_sypSgMd, &_sypSgMR);
    v15 = v29;
    goto LABEL_33;
  }

  type metadata accessor for UsoTask_setNumber_common_Setting();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v5 = v28;

  dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();

  if (!v29[0] || (v6 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v6))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_sypSgMd, &_sypSgMR);

    return 0;
  }

  v25 = v5;
  v27 = *(v6 + 16);
  if (!v27)
  {
LABEL_21:

    if (one-time initialization token for executor != -1)
    {
LABEL_36:
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "PlaybackControlsAffinityScorer task is unsupported by controls", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v7 = 0;
  v8 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v26 = 0x80000001DCA79700;
  v9 = (v1 + 8);
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    (*(v1 + 16))(v4, v8 + *(v1 + 72) * v7, v0);
    v10 = UsoIdentifier.namespace.getter();
    if (!v11)
    {
LABEL_7:
      (*v9)(v4, v0);
      goto LABEL_8;
    }

    if (v10 == 0xD000000000000010 && v11 == v26)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (UsoIdentifier.value.getter() == 0x6465657073 && v13 == 0xE500000000000000)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v9)(v4, v0);
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_8:
    if (v27 == ++v7)
    {
      goto LABEL_21;
    }
  }

  (*v9)(v4, v0);
LABEL_27:

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "PlaybackControlsAffinityScorer task is playback speed, supported by controls", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  else
  {
  }

LABEL_32:
  v15 = v30;
LABEL_33:
  outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sypSgMd, &_sypSgMR);
  return 0;
}

uint64_t specialized PlaybackControlsAffinityScorer.controlsShouldSkip(usoTask:parseAttributes:)(uint64_t a1, char a2)
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v14, v12, &_sypSgMd, &_sypSgMR);
  if (!v13)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sypSgMd, &_sypSgMR);
LABEL_8:
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v12, &_sypSgMd, &_sypSgMR);
    if (v13)
    {
      type metadata accessor for UsoTask_play_common_MediaItem();
      if (swift_dynamicCast())
      {

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.executor);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_23;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "PlaybackControlsAffinityScorer Task is play::common_MediaItem, controls should *NOT* take a first pass";
        goto LABEL_22;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v12, &_sypSgMd, &_sypSgMR);
    if (v13)
    {
      type metadata accessor for UsoTask_noVerb_common_Setting();
      if (swift_dynamicCast())
      {

        if (a2)
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.executor);
          v4 = Logger.logObject.getter();
          v5 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_23;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "PlaybackControlsAffinityScorer Task is an AirPlay task, controls should *NOT* take a first pass";
          goto LABEL_22;
        }
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sypSgMd, &_sypSgMR);
    }

    v10 = 0;
    goto LABEL_26;
  }

  type metadata accessor for UsoTask_play_uso_NoEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_23;
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = "PlaybackControlsAffinityScorer Task is play::noEntity, controls should *NOT* take a first pass";
LABEL_22:
  _os_log_impl(&dword_1DC659000, v4, v5, v7, v6, 2u);
  MEMORY[0x1E12A2F50](v6, -1, -1);
LABEL_23:

  v10 = 1;
LABEL_26:
  outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sypSgMd, &_sypSgMR);
  return v10;
}

uint64_t specialized PlaybackControlsAffinityScorer.isMediaPlaying(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRMetadata();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v60 = type metadata accessor for RREntity();
  v10 = *(v60 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v13 = type metadata accessor for RRCandidate();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v46 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v65 = &v46 - v21;
  v58 = *(a1 + 16);
  v48 = v19;
  if (v58)
  {
    v22 = 0;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v50 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v55 = a1 + v50;
    v56 = v24;
    v62 = *(v23 + 56);
    v54 = (v10 + 8);
    v69 = v3 + 16;
    v68 = *MEMORY[0x1E69D2908];
    v67 = *MEMORY[0x1E69D27E8];
    v66 = v3 + 104;
    v25 = (v3 + 8);
    v57 = v23;
    v51 = (v23 - 8);
    v52 = (v23 + 16);
    v63 = MEMORY[0x1E69E7CC0];
    v61 = v13;
    v24(v65, a1 + v50, v13, v20);
LABEL_6:
    v64 = v22 + 1;
    v26 = v59;
    RRCandidate.entity.getter();
    v27 = RREntity.metadata.getter();
    (*v54)(v26, v60);
    v13 = 0;
    v28 = *(v27 + 16);
    while (1)
    {
      if (v28 == v13)
      {

        v13 = v61;
        (*v51)(v65, v61);
LABEL_4:
        v22 = v64;
        if (v64 == v58)
        {
          goto LABEL_16;
        }

        v56(v65, v55 + v62 * v64, v13, v20);
        goto LABEL_6;
      }

      if (v13 >= *(v27 + 16))
      {
        break;
      }

      (*(v3 + 16))(v9, v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13++, v2);
      v29 = type metadata accessor for RRDataSourceMetadataValue();
      (*(*(v29 - 8) + 104))(v6, v68, v29);
      (*(v3 + 104))(v6, v67, v2);
      v30 = static RRMetadata.== infix(_:_:)();
      v31 = *(v3 + 8);
      v31(v6, v2);
      v31(v9, v2);
      if (v30)
      {

        v32 = *v52;
        (*v52)(v53, v65, v61);
        v33 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
          v33 = v70;
        }

        v36 = *(v33 + 16);
        v35 = *(v33 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
          v33 = v70;
        }

        *(v33 + 16) = v36 + 1;
        v63 = v33;
        v37 = v33 + v50 + v36 * v62;
        v13 = v61;
        v32(v37, v53, v61);
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:

    result = (*v27)(v9, v13);
    __break(1u);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v38 = 0;
    v39 = v63;
    v40 = *(v63 + 16);
    v41 = v48;
    v27 = v48 + 8;
    v25 = v49;
    v9 = v47;
    do
    {
      v42 = v38;
      if (v40 == v38)
      {
        break;
      }

      if (v38 >= *(v39 + 16))
      {
        goto LABEL_23;
      }

      (*(v41 + 16))(v9, v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v13, v20);
      v43 = closure #2 in PlaybackControlsAffinityScorer.isMediaPlaying(with:)();
      if (v25)
      {
        goto LABEL_24;
      }

      v44 = v43;
      ++v38;
      (*v27)(v9, v13);
      v39 = v63;
    }

    while ((v44 & 1) == 0);

    return v40 != v42;
  }

  return result;
}

uint64_t specialized PlaybackControlsAffinityScorer.controlsShouldTakeAFirstPass(at:with:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v10)
  {
    type metadata accessor for UsoTask_restart_uso_NoEntity();
    if (swift_dynamicCast())
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v0 = type metadata accessor for Logger();
      __swift_project_value_buffer(v0, static Logger.executor);
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v1, v2))
      {
        goto LABEL_20;
      }

      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "PlaybackControlsAffinityScorer Task is repeat::noEntity, controls should take a first pass";
LABEL_19:
      _os_log_impl(&dword_1DC659000, v1, v2, v4, v3, 2u);
      MEMORY[0x1E12A2F50](v3, -1, -1);
LABEL_20:

      return 1;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (v10)
  {
    type metadata accessor for UsoTask_skipForward_uso_NoEntity();
    if (swift_dynamicCast())
    {
LABEL_14:

      SiriEnvironment.salientEntitiesProvider.getter();
      v5 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

      v6 = specialized PlaybackControlsAffinityScorer.isMediaPlaying(with:)(v5);

      if (v6)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.executor);
        v1 = Logger.logObject.getter();
        v2 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v1, v2))
        {
          goto LABEL_20;
        }

        v3 = swift_slowAlloc();
        *v3 = 0;
        v4 = "PlaybackControlsAffinityScorer UsoTask is .skipForward/.skipBackward::uso_NoEntity and media is playing on device, returning .high";
        goto LABEL_19;
      }

      return 0;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v10)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_skipBackward_uso_NoEntity();
  if (swift_dynamicCast())
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t specialized PlaybackControlsAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v4, v0);
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
      _os_log_impl(&dword_1DC659000, v15, v16, "PlaybackControlsAffinityScorer Got unexpected parse", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v4, v0);
  (*(v6 + 32))(v9, v4, v5);
  v10 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v10)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v13 = 2;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "PlaybackControlsAffinityScorer Could not extract usoTask from parse", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      (*(v6 + 8))(v9, v5);
      return v13;
    }

    (*(v6 + 8))(v9, v5);
    return 2;
  }

  v11 = v10;
  v12 = specialized static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)();
  if ((specialized PlaybackControlsAffinityScorer.unsupportedByControls(usoTask:)() & 1) == 0)
  {
    if (specialized PlaybackControlsAffinityScorer.controlsShouldSkip(usoTask:parseAttributes:)(v11, HIBYTE(v12) & 1))
    {
      (*(v6 + 8))(v9, v5);

      return 1;
    }

    if (specialized PlaybackControlsAffinityScorer.controlsShouldTakeAFirstPass(at:with:)())
    {
      (*(v6 + 8))(v9, v5);

      return 3;
    }

    if ((v12 & 1) == 0)
    {
      (*(v6 + 8))(v9, v5);

      return 2;
    }

    static UsoTask_CodegenConverter.convert(task:)();

    (*(v6 + 8))(v9, v5);
    if (v25)
    {
      type metadata accessor for UsoTask_setNumber_common_Setting();
      if (swift_dynamicCast())
      {

        return 2;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sypSgMd, &_sypSgMR);
    }

    return 3;
  }

  (*(v6 + 8))(v9, v5);

  return 0;
}

void *PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(a1, a2, a3, a4, a5);
}

void *PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return specialized PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(a1, a2, a3, a4, a5, v5);
}

uint64_t PreExecutionActionHandler.getPreExecutionMitigationDecision(rcState:inputOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v49[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49[-v15];
  v17 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v49[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v49[-v23];
  v55 = (*(*a1 + 504))(v22);
  v25 = *(v18 + 104);
  v54 = *MEMORY[0x1E69D0270];
  v26 = v25(v24);
  (*(*a1 + 552))(v26);
  v53 = *MEMORY[0x1E69D0278];
  v56 = v25;
  v57 = v18 + 104;
  v25(v13);
  (*(v18 + 56))(v13, 0, 1, v17);
  v27 = *(v4 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol?(v16, v7, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13, &v7[v27], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v59 = v18;
  v28 = *(v18 + 48);
  if (v28(v7, 1, v17) != 1)
  {
    v30 = v52;
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, v52, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    if (v28(&v7[v27], 1, v17) != 1)
    {
      v31 = v59;
      v32 = v51;
      (*(v59 + 32))(v51, &v7[v27], v17);
      lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280]);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v31 + 8);
      v33(v32, v17);
      outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v33(v30, v17);
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v29 = v55;
      if ((v50 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    (*(v59 + 8))(v30, v17);
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    v29 = v55;
    goto LABEL_12;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  if (v28(&v7[v27], 1, v17) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v29 = v55;
LABEL_8:
  if (PreExecutionDecision.rawValue.getter(v29) == 0xD000000000000019 && 0x80000001DCA7AFC0 == v34)
  {
    goto LABEL_10;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_12;
  }

  if (PreExecutionDecision.rawValue.getter(v29) == 0xD000000000000010 && 0x80000001DCA7B070 == v44)
  {
    goto LABEL_10;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {
    goto LABEL_12;
  }

  if (PreExecutionDecision.rawValue.getter(v29) == 0xD000000000000017 && 0x80000001DCA7B090 == v46)
  {
LABEL_10:
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      v48 = v59;
      (*(v59 + 8))(v24, v17);
      v56(v24, v53, v17);
      return (*(v48 + 32))(v58, v24, v17);
    }
  }

LABEL_12:
  if (v29 > 7u)
  {
    v36 = v59;
    v37 = v54;
  }

  else
  {
    v36 = v59;
    v37 = v54;
    if (v29 != 3)
    {
      v37 = v53;
    }
  }

  v38 = *(v36 + 8);
  v38(v24, v17);
  v56(v24, v37, v17);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.conversationBridge);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    swift_beginAccess();
    *(v42 + 4) = TTResponseMessage.MitigationDecision.rawValue.getter();
    _os_log_impl(&dword_1DC659000, v40, v41, "preExecution Mitigation Decision %ld", v42, 0xCu);
    MEMORY[0x1E12A2F50](v42, -1, -1);
  }

  swift_beginAccess();
  (*(v36 + 16))(v58, v24, v17);
  return (v38)(v24, v17);
}

uint64_t PreExecutionActionHandler.actOnPreExecutionDecision(rcState:requestId:inputOrigin:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v127 = a2;
  v122 = a4;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  v113 = v6;
  v114 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
  v10 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v12 = &v109 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v110 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v109 - v17;
  v18 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v129 = *(v18 - 8);
  v19 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  v21 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v23 = &v109 - v22;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v24 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v121 = &v109 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v109 - v29;
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v34 = &v109 - v33;
  v130 = (*(*a1 + 504))(v32);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v35, static Logger.conversationBridge);

  v120 = v36;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  v39 = os_log_type_enabled(v37, v38);
  v124 = a1;
  v128 = a3;
  v112 = v12;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v131[0] = v41;
    *v40 = 136315394;
    v42 = (*(*a1 + 832))();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v131);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v45 = PreExecutionDecision.rawValue.getter(v130);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v131);

    *(v40 + 14) = v47;
    a1 = v124;
    _os_log_impl(&dword_1DC659000, v37, v38, "Taking action on preExecution decision for RC: %s, preExecutionDecision: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  v48 = *(*a1 + 552);
  v115 = *a1 + 552;
  v116 = v48;
  v48();
  v49 = v129;
  (*(v129 + 104))(v30, *MEMORY[0x1E69D0278], v18);
  (*(v49 + 56))(v30, 0, 1, v18);
  v50 = *(v125 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v34, v23, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v30, &v23[v50], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v51 = *(v49 + 48);
  if (v51(v23, 1, v18) != 1)
  {
    v58 = v121;
    outlined init with copy of ReferenceResolutionClientProtocol?(v23, v121, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    if (v51(&v23[v50], 1, v18) != 1)
    {
      v60 = v129;
      v61 = &v23[v50];
      v62 = v119;
      (*(v129 + 32))(v119, v61, v18);
      lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280]);
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v60 + 8);
      v64(v62, v18);
      outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v64(v58, v18);
      v59 = outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v53 = v128;
      v55 = v126;
      v56 = v122;
      v57 = v123;
      v54 = v130;
      if ((v63 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    (*(v129 + 8))(v58, v18);
    v53 = v128;
    LOBYTE(v54) = v130;
LABEL_10:
    v59 = outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    v55 = v126;
    goto LABEL_16;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v52 = v51(&v23[v50], 1, v18);
  v53 = v128;
  v54 = v130;
  if (v52 != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v55 = v126;
  v56 = v122;
  v57 = v123;
LABEL_12:
  if (PreExecutionDecision.rawValue.getter(v54) == 0xD000000000000019 && 0x80000001DCA7AFC0 == v65)
  {
    goto LABEL_14;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v66 & 1) == 0)
  {
    if (PreExecutionDecision.rawValue.getter(v54) == 0xD000000000000010 && 0x80000001DCA7B070 == v69)
    {
      goto LABEL_14;
    }

    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v70)
    {
      goto LABEL_16;
    }

    if (PreExecutionDecision.rawValue.getter(v54) == 0xD000000000000017 && 0x80000001DCA7B090 == v71)
    {
LABEL_14:

      goto LABEL_16;
    }

    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v72 & 1) == 0)
    {
      v73 = (*(*v55[7] + 176))(v54, v56);
      v74 = v127;
      PreExecutionActionHandler.mitigateRequest(requestId:dismissUI:logToStream:mitigatedByURS:)(v127, v53, v73 & 1, 1, 1);
      if (one-time initialization token for insightRequestSummaryLogger != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for InsightRequestSummaryLogger();
      v76 = __swift_project_value_buffer(v75, static Logger.insightRequestSummaryLogger);

      specialized InsightRequestSummaryLogger.emitDebug(_:)(v76, v54, v74, v53);

      v78 = v113;
      v77 = v114;
      (*(v114 + 104))(v57, *MEMORY[0x1E69D04C0], v113);
      (*(v77 + 56))(v57, 0, 1, v78);
      v79 = *(v111 + 48);
      v80 = v56;
      v81 = v112;
      outlined init with copy of ReferenceResolutionClientProtocol?(v80, v112, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v57, v81 + v79, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      v82 = *(v77 + 48);
      if (v82(v81, 1, v78) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
        if (v82(v81 + v79, 1, v78) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
          goto LABEL_59;
        }
      }

      else
      {
        v104 = v110;
        outlined init with copy of ReferenceResolutionClientProtocol?(v81, v110, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
        if (v82(v81 + v79, 1, v78) != 1)
        {
          v105 = v114;
          v106 = v81 + v79;
          v107 = v109;
          (*(v114 + 32))(v109, v106, v78);
          lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0]);
          v130 = dispatch thunk of static Equatable.== infix(_:_:)();
          v108 = *(v105 + 8);
          v108(v107, v78);
          outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
          v108(v104, v78);
          outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
          if ((v130 & 1) == 0)
          {
            return 1;
          }

LABEL_59:
          (*(*v55[3] + 232))(5, v74, v53);
          return 1;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
        (*(v114 + 8))(v104, v78);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
      return 1;
    }
  }

LABEL_16:
  (*(*v55[7] + 184))(v59);
  if (v54 > 5u)
  {
    if (v54 > 8u)
    {
      v67 = v127;
      if (v54 - 10 < 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v67 = v127;
      if (v54 != 6)
      {
        if (v54 == 7)
        {
          PreExecutionActionHandler.mitigateDueToEmptyASR(requestId:)(v127, v53);
        }

        else
        {
          ((*v55)[28])(v127, v53);

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v131[0] = v100;
            *v99 = 136315394;
            *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v53, v131);
            *(v99 + 12) = 2080;
            v101 = PreExecutionDecision.rawValue.getter(8u);
            v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v131);

            *(v99 + 14) = v103;
            _os_log_impl(&dword_1DC659000, v97, v98, "Action taken on requestId: %s is: %s", v99, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v100, -1, -1);
            MEMORY[0x1E12A2F50](v99, -1, -1);
          }
        }

        return 1;
      }
    }

    ((*v55)[27])(v67, v53);
    return 1;
  }

  if (v54 <= 2u)
  {
    if (v54)
    {
      if (v54 == 1)
      {
        PreExecutionActionHandler.mitigateRequest(requestId:dismissUI:logToStream:mitigatedByURS:)(v127, v53, 1, 0, 0);
      }

      else
      {
        PreExecutionActionHandler.rejectUnrelatedAnnounceCallsFollowup(requestId:catId:rcState:)(v127, v53, 0xD000000000000032, 0x80000001DCA85360, v124);
      }
    }

    else
    {
      PreExecutionActionHandler.rejectRequestSinceUserIsOnCall(requestId:rcState:)(v127, v53, v124);
    }

    return 1;
  }

  if (v54 != 3)
  {
    if (v54 == 4)
    {
      v68 = "OfflineServerFallback#NoConnection";
    }

    else
    {
      v68 = "OfflineServerFallback#AirplaneMode";
    }

    PreExecutionActionHandler.rejectOfflineServerFallback(requestId:rcState:catId:)(v127, v53, v124, 0xD000000000000022, (v68 - 32) | 0x8000000000000000);
    return 1;
  }

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v131[0] = v86;
    *v85 = 136315138;
    v87 = v117;
    v116();
    v88 = Optional.debugDescription.getter();
    v90 = v89;
    outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v131);

    *(v85 + 4) = v91;
    _os_log_impl(&dword_1DC659000, v83, v84, "mitigationDecision = %s. Overriding mitigator decision..", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x1E12A2F50](v86, -1, -1);
    MEMORY[0x1E12A2F50](v85, -1, -1);
  }

  v67 = v127;
LABEL_45:

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v131[0] = v95;
    *v94 = 136315138;
    *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v53, v131);
    _os_log_impl(&dword_1DC659000, v92, v93, "Action taken on requestId: %s is: No action taken", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x1E12A2F50](v95, -1, -1);
    MEMORY[0x1E12A2F50](v94, -1, -1);
  }

  return 0;
}

uint64_t PreExecutionActionHandler.rejectUnrelatedAnnounceCallsFollowup(requestId:catId:rcState:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v57 = a3;
  v58 = a4;
  v8 = type metadata accessor for SelectedUserAttributes();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for UserID();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v59 = v9;
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.conversationBridge);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  v25 = os_log_type_enabled(v23, v24);
  v55 = a1;
  v56 = a2;
  v54 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v64);
    _os_log_impl(&dword_1DC659000, v23, v24, "Rejecting this request: %s because it's an unrelated followup to an announced call.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v29 = *(v63 + 48);
  v30 = a5[3];
  v52 = a5[2];
  v53 = v28;
  v51 = v30;
  v31 = (*(v61 + 16))(v60, a5 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v62);
  v32 = *(*a5 + 792);
  v32(v31);
  v33 = v59;
  v34 = *(v59 + 48);
  if (v34(v18, 1, v8))
  {
    v35 = outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = 0;
  }

  else
  {
    v37 = v50;
    (*(v33 + 16))(v50, v18, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v35 = (*(v33 + 8))(v37, v8);
  }

  v38 = v54;
  v32(v35);
  if (v34(v38, 1, v8))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v39 = 0;
  }

  else
  {
    v40 = v59;
    v41 = v50;
    (*(v59 + 16))(v50, v38, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v39 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
    (*(v40 + 8))(v41, v8);
  }

  v43 = v55;
  v42 = v56;
  v44 = swift_allocObject();
  v44[2] = v63;
  v44[3] = v43;
  v44[4] = v42;
  v45 = *(*v29 + 104);

  HIBYTE(v48) = 1;
  LOBYTE(v48) = v39 & 1;
  v46 = v60;
  v45(v43, v42, v52, v51, v57, v58, v60, v36 & 1, v48, v53, 0, closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)partial apply, v44);

  return (*(v61 + 8))(v46, v62);
}

uint64_t PreExecutionActionHandler.rejectRequestSinceUserIsOnCall(requestId:rcState:)(uint64_t a1, unint64_t a2, void *a3)
{
  v56 = type metadata accessor for SelectedUserAttributes();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for UserID();
  v60 = *(v16 - 8);
  v61 = v16;
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  v22 = os_log_type_enabled(v20, v21);
  v49 = v6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v63 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v63);
    _os_log_impl(&dword_1DC659000, v20, v21, "Rejecting this request: %s since user is on a phone call", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    v6 = v49;
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v25 = AFSupportsSiriInCall();
  v57 = a1;
  v58 = a2;
  v55 = v12;
  if ((v25 & 1) != 0 || (AFSupportsCallHangUp() & 1) == 0)
  {
    v54 = 0xD00000000000002BLL;
    v53 = "dDuringRingingCall";
  }

  else
  {
    v53 = "UnsupportedDuringActiveCall";
    v54 = 0xD000000000000035;
  }

  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v27 = *(v62 + 48);
  v28 = a3[3];
  v51 = a3[2];
  v52 = v26;
  v50 = v28;
  v29 = (*(v60 + 16))(v59, a3 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v61);
  v30 = *(*a3 + 792);
  v30(v29);
  v31 = v6;
  v32 = *(v6 + 48);
  v33 = v56;
  if (v32(v15, 1, v56))
  {
    v34 = outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v35 = 0;
  }

  else
  {
    v36 = v48;
    (*(v31 + 16))(v48, v15, v33);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v35 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v34 = (*(v31 + 8))(v36, v33);
  }

  v37 = v55;
  v30(v34);
  if (v32(v37, 1, v33))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v38 = 0;
  }

  else
  {
    v40 = v48;
    v39 = v49;
    (*(v49 + 16))(v48, v37, v33);
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v38 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
    (*(v39 + 8))(v40, v33);
  }

  v41 = v58;
  v42 = swift_allocObject();
  v43 = v57;
  v42[2] = v62;
  v42[3] = v43;
  v42[4] = v41;
  v44 = *(*v27 + 104);

  v45 = v35 & 1;
  v46 = v59;
  v44(v43, v41, v51, v50, v54, v53 | 0x8000000000000000, v59, v45, v38 & 1, v52, 0, partial apply for closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:), v42);

  return (*(v60 + 8))(v46, v61);
}

void PreExecutionActionHandler.mitigateDueToEmptyASR(requestId:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v16);
    _os_log_impl(&dword_1DC659000, v5, v6, "Mitigating this request: %s due to empty ASR", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v9 = *MEMORY[0x1E69C82C8];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(a1, a2, v10, v11);

  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v16);
    _os_log_impl(&dword_1DC659000, oslog, v12, "RequestID: %s has been mitigated", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }
}

void PreExecutionActionHandler.mitigateRequest(requestId:dismissUI:logToStream:mitigatedByURS:)(uint64_t a1, unint64_t a2, char a3, char a4, char a5)
{
  v6 = v5;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v34 = a1;
  oslog = a5;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v35);
    *(v15 + 12) = 2080;
    if (a5)
    {
      v17 = 7562585;
    }

    else
    {
      v17 = 28494;
    }

    v18 = v6;
    v19 = a4;
    if (a5)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = 0xE200000000000000;
    }

    v21 = a3;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v35);
    a4 = v19;
    v6 = v18;

    *(v15 + 14) = v22;
    a3 = v21;
    _os_log_impl(&dword_1DC659000, v13, v14, "Mitigating this request: %s. Requested to mitigate by Speech: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for InsightRequestSummaryLogger();
  v24 = __swift_project_value_buffer(v23, static Logger.insightRequestSummaryLogger);

  specialized InsightRequestSummaryLogger.emitDebug(_:)(v24, v34, a2, a3 & 1, oslog & 1);

  if (a3)
  {
    if (a4)
    {
      (*(*v6[3] + 176))(v34, a2, 2);
    }

    v25 = *MEMORY[0x1E69C82D0];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(v34, a2, v26, v27);

    osloga = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(osloga, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a2, &v35);
      _os_log_impl(&dword_1DC659000, osloga, v28, "RequestID: %s has been mitigated", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1E12A2F50](v30, -1, -1);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }
  }

  else
  {
    v31 = (*v6)[28];

    v31(v34, a2);
  }
}

void PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69C7B18]) init];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  v18 = MEMORY[0x1E12A1410](v15, v17);

  [v14 setAceId_];

  v19 = v14;
  v20 = MEMORY[0x1E12A1410](a1, a2);
  [v19 setRefId_];

  v21 = MEMORY[0x1E12A1410](a3, v25);
  [v19 setReason_];

  v22 = *(v5 + 16);
  aBlock[4] = closure #1 in PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_12;
  v23 = _Block_copy(aBlock);
  [v22 handleCommand:v19 completion:v23];
  _Block_release(v23);

  PreExecutionActionHandler.cancelRequest(requestId:)(a1, a2);
}

uint64_t PreExecutionActionHandler.rejectOfflineServerFallback(requestId:rcState:catId:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v8 = type metadata accessor for SelectedUserAttributes();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for UserID();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v59 = v9;
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.conversationBridge);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  v25 = os_log_type_enabled(v23, v24);
  v55 = a1;
  v56 = a2;
  v54 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v64);
    _os_log_impl(&dword_1DC659000, v23, v24, "Rejecting this request: %s because it's an offline server fallback", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v29 = *(v63 + 48);
  v30 = a3[3];
  v52 = a3[2];
  v53 = v28;
  v51 = v30;
  v31 = (*(v61 + 16))(v60, a3 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v62);
  v32 = *(*a3 + 792);
  v32(v31);
  v33 = v59;
  v34 = *(v59 + 48);
  if (v34(v18, 1, v8))
  {
    v35 = outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = 0;
  }

  else
  {
    v37 = v50;
    (*(v33 + 16))(v50, v18, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v35 = (*(v33 + 8))(v37, v8);
  }

  v38 = v54;
  v32(v35);
  if (v34(v38, 1, v8))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v39 = 0;
  }

  else
  {
    v40 = v59;
    v41 = v50;
    (*(v59 + 16))(v50, v38, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v39 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
    (*(v40 + 8))(v41, v8);
  }

  v43 = v55;
  v42 = v56;
  v44 = swift_allocObject();
  v44[2] = v63;
  v44[3] = v43;
  v44[4] = v42;
  v45 = *(*v29 + 104);

  HIBYTE(v48) = 1;
  LOBYTE(v48) = v39 & 1;
  v46 = v60;
  v45(v43, v42, v52, v51, v57, v58, v60, v36 & 1, v48, v53, 0, closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)partial apply, v44);

  return (*(v61 + 8))(v46, v62);
}

uint64_t closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v15 = lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *(v16 + 32) = a1 & 1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:), v16);
}

uint64_t closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 40) = a5;
  *(v7 + 64) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:), v8, 0);
}

uint64_t closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)()
{
  v1 = **(v0 + 40);
  if (*(v0 + 64) == 1)
  {
    v2 = (v1 + 224);
  }

  else
  {
    v2 = (v1 + 216);
  }

  *(v0 + 64);
  (*v2)(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 8);

  return v3();
}

void PreExecutionActionHandler.failRequest(requestId:)(uint64_t a1, uint64_t a2, const char *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_1DC659000, v16, v17, a3, v18, 2u);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  v19 = [objc_allocWithZone(*a4) init];
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v11 + 8))(v14, v10);
  v23 = MEMORY[0x1E12A1410](v20, v22);

  [v19 setAceId_];

  v24 = v19;
  v25 = MEMORY[0x1E12A1410](a1, a2);
  [v24 setRefId_];

  v26 = *(v28[1] + 16);
  aBlock[4] = v29;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = v30;
  v27 = _Block_copy(aBlock);
  [v26 handleCommand:v24 completion:v27];
  _Block_release(v27);
}

void closure #1 in PreExecutionActionHandler.failRequest(requestId:)(uint64_t a1, uint64_t a2, const char *a3)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v5, a3, v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }
}

void PreExecutionActionHandler.cancelRequest(requestId:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7760]) init];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  v15 = MEMORY[0x1E12A1410](v12, v14);

  [v11 setAceId_];

  v16 = MEMORY[0x1E12A1410](a1, a2);
  [v11 setRefId_];

  v17 = *(v3 + 16);
  aBlock[4] = closure #1 in PreExecutionActionHandler.cancelRequest(requestId:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_9_1;
  v18 = _Block_copy(aBlock);
  [v17 handleCommand:v11 completion:v18];
  _Block_release(v18);
}

void closure #1 in PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(uint64_t a1, void *a2, const char *a3)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationBridge);
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v10 = Optional.debugDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t PreExecutionActionHandler.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return v0;
}

uint64_t PreExecutionActionHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void *specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PreExecutionActionHandler();
  v10 = swift_allocObject();

  return specialized PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(a1, a2, a3, a4, a5, v10);
}

void *specialized PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  type metadata accessor for MitigationDismissalHelper();
  swift_allocObject();
  a6[7] = MitigationDismissalHelper.init()();
  return a6;
}

uint64_t lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t PreExecutionDecision.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v3 = 0x757165526C696166;
    v4 = 0xD000000000000015;
    if (a1 != 10)
    {
      v4 = 0x747065636361;
    }

    if (a1 != 9)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000024;
    v6 = 0xD000000000000010;
    if (a1 != 7)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    if (a1 <= 8u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  else
  {
    v1 = 0xD000000000000021;
    if (a1 != 1)
    {
      v1 = 0xD000000000000024;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000017;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PreExecutionDecision(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PreExecutionDecision.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PreExecutionDecision.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PreExecutionDecision()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PreExecutionDecision.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PreExecutionDecision()
{
  PreExecutionDecision.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PreExecutionDecision()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PreExecutionDecision.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExecutionDecision@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PreExecutionDecision.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExecutionDecision@<X0>(unint64_t *a1@<X8>)
{
  result = PreExecutionDecision.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized PreExecutionDecision.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExecutionDecision.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PreExecutionDecision and conformance PreExecutionDecision()
{
  result = lazy protocol witness table cache variable for type PreExecutionDecision and conformance PreExecutionDecision;
  if (!lazy protocol witness table cache variable for type PreExecutionDecision and conformance PreExecutionDecision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExecutionDecision and conformance PreExecutionDecision);
  }

  return result;
}

uint64_t PreExecutionDecisionMaker.evaluate(rules:)(uint64_t a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationBridge);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "Evaluating Pre-Execution Decision..", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = *(a1 + 16);
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = v6 + 32;
    while (v8 < *(v6 + 16))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v9, v24);
      v10 = v25;
      v11 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      a1 = (*(v11 + 16))(v10, v11);
      if (a1 > 0xAu)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          v14 = v25;
          v15 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v13 = (*(v15 + 8))(v14, v15);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          goto LABEL_14;
        }
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

LABEL_12:
  LODWORD(a1) = 11;
  v13 = 7;
LABEL_14:
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    v20 = PreExecutionDecision.rawValue.getter(a1);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v16, v17, "Pre-Execution Decision was evaluated as: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  return v13 | (a1 << 8);
}

uint64_t PreExecutionDialogHandler.__allocating_init(executionOutputSubmitter:preferences:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PreExecutionDialogHandler.init(executionOutputSubmitter:preferences:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, void *a12, void (*a13)(void), uint64_t a14)
{
  v48 = a7;
  v49 = a5;
  v50 = a1;
  v18 = type metadata accessor for UserID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = PreExecutionDialogHandler.createCATContext()();
  if (v21)
  {
    v43 = a13;
    v45 = v21;
    v46 = a8;
    v47 = a2;
    v39 = a10;
    v41 = a9;
    if (a12)
    {
      v44 = a12;
    }

    else
    {
      v22 = *v14;
      v42 = a6;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = objc_opt_self();
      v25 = ObjCClassFromMetadata;
      a6 = v42;
      v44 = [v24 bundleForClass_];
    }

    v42 = objc_opt_self();
    v26 = a12;
    v27 = v49;
    v40 = MEMORY[0x1E12A1410](v49, a6);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(a11);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    (*(v19 + 16))(&isa - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v18);
    v28 = a6;
    v29 = (*(v19 + 80) + 73) & ~*(v19 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v43;
    *(v30 + 24) = a14;
    *(v30 + 32) = v27;
    *(v30 + 40) = v28;
    v31 = v50;
    *(v30 + 48) = v14;
    *(v30 + 56) = v31;
    *(v30 + 64) = v47;
    *(v30 + 72) = v39 & 1;
    (*(v19 + 32))(v30 + v29, &isa - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    v32 = (v30 + v29 + v20);
    *v32 = v46 & 1;
    v32[1] = v41 & 1;
    aBlock[4] = partial apply for closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:);
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_17;
    v33 = _Block_copy(aBlock);
    v34 = v45;

    v35 = v44;
    v36 = v40;
    v37 = isa;
    [v42 execute:v44 catId:v40 parameters:isa globals:v34 completion:v33];
    _Block_release(v33);
  }

  else
  {
    a13();
  }
}

void closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(uint64_t a1, id a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, char a13)
{
  if (a2)
  {
    v16 = a2;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1DC659000, v19, v20, "CAT.execute failed: %@", v21, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    a3(0);
    v25 = a2;
  }

  else
  {
    v29 = a13;
    v30 = a11;
    v31 = a9;
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
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v42);
      _os_log_impl(&dword_1DC659000, v33, v34, "Submitting executionOutput for catId %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v37 = v36;
      v29 = a13;
      v31 = a9;
      MEMORY[0x1E12A2F50](v37, -1, -1);
      v38 = v35;
      v30 = a11;
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v41 = (*(*a7 + 128))(a1, a8, v31, a10 & 1);
    (*(*a7 + 112))(v41, a8, v31, v30, a12 & 1, v29 & 1, a3, a4);
    v25 = v41;
  }
}

uint64_t PreExecutionDialogHandler.submitAddViews(addViews:requestId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v183 = a7;
  v184 = a8;
  v185 = a1;
  v180 = a5;
  v181 = a6;
  v179 = a4;
  v186 = a3;
  v187 = a2;
  updated = type metadata accessor for ContextUpdateScope();
  v162 = *(updated - 8);
  v8 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v164 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v163 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v161 = &v150 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v160 = &v150 - v17;
  v18 = type metadata accessor for BinaryDecodingOptions();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v155 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v156 = &v150 - v23;
  v158 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v157 = *(v158 - 8);
  v24 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v151 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v152 = &v150 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v178 = &v150 - v30;
  v31 = type metadata accessor for UserID();
  v176 = *(v31 - 8);
  v177 = v31;
  v32 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v175 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for RequestType();
  v173 = *(v174 - 8);
  v34 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for RequestSummary.ExecutionSource();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v150 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v150 - v49;
  v51 = type metadata accessor for FlowOutputMessage.InAppResponse();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  (*(v37 + 104))(v43, *MEMORY[0x1E69D0678], v36);
  v52 = *(v37 + 16);
  v170 = v43;
  v52(v40, v43, v36);
  v168 = v50;
  outlined init with copy of ReferenceResolutionClientProtocol?(v50, v47, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v166 = type metadata accessor for ExecutionOutput();
  v53 = objc_allocWithZone(v166);
  v54 = &v53[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  v55 = v186;
  *v54 = v187;
  *(v54 + 1) = v55;
  v56 = v55;
  v57 = &v53[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v57 = 0;
  *(v57 + 1) = 0;
  v58 = &v53[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v58 = 0;
  *(v58 + 1) = 0;
  v59 = &v53[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v59 = 0;
  *(v59 + 1) = 0;
  v60 = &v53[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v60 = 0;
  *(v60 + 1) = 0;
  v169 = v40;
  v171 = v36;
  v61 = v36;
  v62 = v185;
  v52(&v53[OBJC_IVAR___SKRExecutionOutput_executionSource], v40, v61);
  v167 = v47;
  outlined init with copy of ReferenceResolutionClientProtocol?(v47, &v53[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  v64 = one-time initialization token for executor;
  v65 = v62;
  v66 = v65;
  v67 = off_1E8646000;
  if (v63)
  {
    v154 = v37;
    v68 = v65;

    if (v64 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.executor);
    v70 = v68;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    v73 = os_log_type_enabled(v71, v72);
    v74 = v158;
    v185 = v63;
    if (v73)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v189 = v77;
      *v75 = 136315394;
      *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v189);
      *(v75 + 12) = 2112;
      *(v75 + 14) = v185;
      *v76 = v185;
      v78 = v70;
      _os_log_impl(&dword_1DC659000, v71, v72, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v75, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v76, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v76, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      v79 = v77;
      v63 = v185;
      MEMORY[0x1E12A2F50](v79, -1, -1);
      MEMORY[0x1E12A2F50](v75, -1, -1);
    }

    v80 = [v63 promptContextProto];
    v153 = v53;
    v159 = v66;
    if (v80)
    {
      v81 = v80;
      v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v191 = 0;
      v189 = 0u;
      v190 = 0u;
      outlined copy of Data._Representation(v82, v84);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext();
      v85 = v156;
      Message.init(serializedData:extensions:partial:options:)();
      v137 = v157;
      (*(v157 + 56))(v85, 0, 1, v74);
      v138 = v152;
      (*(v137 + 32))(v152, v85, v74);
      v139 = v151;
      (*(v137 + 16))(v151, v138, v74);
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        LODWORD(v155) = v141;
        v143 = v139;
        v144 = v142;
        v156 = swift_slowAlloc();
        *&v189 = v156;
        *v144 = 136315394;
        *(v144 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v189);
        *(v144 + 12) = 2080;
        v145 = Message.textFormatString()();
        v146 = *(v137 + 8);
        v146(v143, v74);
        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145._countAndFlagsBits, v145._object, &v189);

        *(v144 + 14) = v147;
        _os_log_impl(&dword_1DC659000, v140, v155, "ExecutionOutput: %s: NFCU has prompt context %s", v144, 0x16u);
        v148 = v156;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v148, -1, -1);
        MEMORY[0x1E12A2F50](v144, -1, -1);

        outlined consume of Data._Representation(v82, v84);
        v146(v152, v74);
      }

      else
      {

        outlined consume of Data._Representation(v82, v84);
        v149 = *(v137 + 8);
        v149(v139, v74);
        v149(v138, v74);
      }
    }

    else
    {
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v189 = v89;
        *v88 = 136315138;
        *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v189);
        _os_log_impl(&dword_1DC659000, v86, v87, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x1E12A2F50](v89, -1, -1);
        MEMORY[0x1E12A2F50](v88, -1, -1);
      }
    }

    v90 = type metadata accessor for Parse.DirectInvocation();
    v91 = v160;
    (*(*(v90 - 8) + 56))(v160, 1, 1, v90);
    v92 = type metadata accessor for PommesContext();
    v93 = v161;
    (*(*(v92 - 8) + 56))(v161, 1, 1, v92);
    v94 = v162;
    v95 = v164;
    v96 = updated;
    (*(v162 + 104))(v164, *MEMORY[0x1E69CFF08], updated);
    v97 = type metadata accessor for ExecutionContextUpdate();
    v98 = objc_allocWithZone(v97);
    v99 = v163;
    outlined init with copy of ReferenceResolutionClientProtocol?(v93, v163, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v100 = v185;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v99, v185);
    *&v98[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v98[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v100;
    *&v98[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v98[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v98[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v91, &v98[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v98[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v99, &v98[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v94 + 16))(&v98[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v95, v96);
    v101 = &v98[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v101 = 0;
    v101[1] = 0;
    v98[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v188.receiver = v98;
    v188.super_class = v97;
    v67 = off_1E8646000;
    v102 = objc_msgSendSuper2(&v188, sel_init);
    (*(v94 + 8))(v95, v96);
    outlined destroy of ReferenceResolutionClientProtocol?(v93, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v91, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v53 = v153;
    *&v153[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v102;
    *&v53[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v37 = v154;
    v103 = v166;
    v104 = v186;
    v66 = v159;
  }

  else
  {

    if (v64 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    __swift_project_value_buffer(v105, static Logger.executor);
    v106 = v66;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v159 = v66;
      v112 = v111;
      *&v189 = v111;
      *v109 = 136315394;
      *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v189);
      *(v109 + 12) = 2112;
      *(v109 + 14) = v106;
      *v110 = v185;
      v113 = v106;
      _os_log_impl(&dword_1DC659000, v107, v108, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v109, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v110, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v114 = v110;
      v62 = v185;
      MEMORY[0x1E12A2F50](v114, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      v66 = v159;
      MEMORY[0x1E12A2F50](v112, -1, -1);
      v115 = v109;
      v67 = off_1E8646000;
      MEMORY[0x1E12A2F50](v115, -1, -1);
    }

    *&v53[OBJC_IVAR___SKRExecutionOutput_command] = v62;
    *&v53[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    v116 = v106;
    v103 = v166;
    v104 = v56;
  }

  v192.receiver = v53;
  v192.super_class = v103;
  v117 = objc_msgSendSuper2(&v192, v67[390]);
  outlined destroy of ReferenceResolutionClientProtocol?(v167, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v118 = *(v37 + 8);
  v119 = v171;
  v118(v169, v171);

  v118(v170, v119);
  outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v120 = v173;
  v121 = v172;
  v122 = v174;
  (*(v173 + 104))(v172, *MEMORY[0x1E69D0548], v174);
  v124 = v176;
  v123 = v177;
  v125 = v175;
  (*(v176 + 16))(v175, v179, v177);
  v126 = type metadata accessor for ConversationContextUpdateMetadata();
  v127 = *(v126 + 48);
  v128 = *(v126 + 52);
  v129 = swift_allocObject();
  *(v129 + 16) = 1;
  (*(v120 + 32))(v129 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v121, v122);
  *(v129 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = 0;
  (*(v124 + 32))(v129 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v125, v123);
  *(v129 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
  *(v129 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v180 & 1;
  *(v129 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v181 & 1;
  v130 = *(v182 + 16);
  v131 = type metadata accessor for UUID();
  v189 = 0u;
  v190 = 0u;
  v191 = 0;
  v132 = v178;
  (*(*(v131 - 8) + 56))(v178, 1, 1, v131);
  v133 = swift_allocObject();
  v134 = v184;
  *(v133 + 16) = v183;
  *(v133 + 24) = v134;
  v135 = *(*v130 + 296);

  v135(v117, v187, v104, 0, 0, &v189, 0, v129, 0, 0, v132, 0, 0, partial apply for closure #1 in PreExecutionDialogHandler.submitAddViews(addViews:requestId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:), v133);

  outlined destroy of ReferenceResolutionClientProtocol?(v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return outlined destroy of ReferenceResolutionClientProtocol?(&v189, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
}