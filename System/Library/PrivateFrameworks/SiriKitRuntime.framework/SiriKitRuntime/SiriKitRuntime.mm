unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.runAll()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[2];
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 56);
    v11 = *(v4 + 40);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();

    v7 = a1[5];
    a1[4] = v5;
    a1[5] = v11;

    v9 = v11;
  }

  else
  {
    v10 = a1[3];
    a1[3] = 0;

    v5 = 0;
    v6 = 0;
    v9 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 8) = v9;
  *(a2 + 24) = v6;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4, v2, 0);
}

uint64_t ConversationMessageDispatchingBridgeBase.getHandleMethod(_:)(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - v6;
  v23[0] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B4BaseCmMd, &_s16SiriMessageTypes0B4BaseCmMR);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  v11 = *(*v1 + 152);

  v13 = v11(v12);
  v23[0] = v8;
  v23[1] = v10;
  v14 = *(v3 + 80);
  v15 = type metadata accessor for ConversationMessageDispatchingBridgeBase.MessageHandlerBase();
  MEMORY[0x1E12A1380](&v24, v23, v13, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);

  v16 = v24;
  if (!v24)
  {
    v23[3] = type metadata accessor for MessageBase();
    v23[0] = a1;
    v17 = a1;
    Mirror.init(reflecting:)();
    v18 = type metadata accessor for Mirror();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    v16 = ConversationMessageDispatchingBridgeBase.findRegisterMethod(_:)(v7);
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
    v22[1] = v10;
    v22[2] = v16;
    v22[0] = v8;
    v19 = *(*v1 + 168);

    v20 = v19(v23);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v20(v23, 0);
  }

  return v16;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t protocol witness for Bridge.name.getter in conformance ConversationBridgeSPI()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ConversationBridgeSPI.handleMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v18 = 0xD000000000000014;
  v19 = 0x80000001DCA7EAA0;
  swift_getObjectType();
  v10 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v10);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA7EAC0);
  MessageBase.messageId.getter();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v11);

  (*(v5 + 8))(v8, v4);
  v12 = v18;
  v13 = v19;
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  v15 = *(*v9 + 208);

  v16 = a1;
  v15(v12, v13, &async function pointer to partial apply for closure #1 in ConversationBridgeSPI.handleMessage(_:), v14);
}

uint64_t sub_1DC65C4A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void AsyncSerialQueue.add(taskName:work:)()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t closure #1 in AsyncSerialQueue.add(taskName:work:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v35 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = a1[5];
  if (v13)
  {
    v32 = &v31 - v11;
    v14 = a1[4];

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v5;
      v19 = v18;
      v34[0] = v18;
      *v17 = 136446722;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, a3, v34);
      *(v17 + 12) = 2082;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[7], a1[8], v34);
      *(v17 + 22) = 2080;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v34);

      *(v17 + 24) = v20;
      _os_log_impl(&dword_1DC659000, v15, v16, "Adding workItem: %{public}s to queue: %{public}s, which is currently executing task: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    else
    {
    }

    v12 = v32;
  }

  swift_beginAccess();
  v21 = a1[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1[2] = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    a1[2] = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[32 * v24];
  *(v25 + 4) = v35;
  *(v25 + 5) = a3;
  *(v25 + 6) = v33;
  *(v25 + 7) = a5;
  a1[2] = v21;
  result = swift_endAccess();
  if (!a1[3])
  {
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a1;

    v29 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in AsyncSerialQueue.runAll(), v28);
    v30 = a1[3];
    a1[3] = v29;
  }

  return result;
}

uint64_t sub_1DC65CA20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void ConversationMessageDispatchingBridgeBase.MessageHandler.handleMethod(_:_:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v12 = *(v5 + 128);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v13 = v48;
    v14 = *(v6 + 136);
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;
      v18 = v2[2];
      v17 = v2[3];
      v19 = a2;
      v20 = v18(v13);
      v20(v16);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = a2;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v34 = 136315650;
        HIDWORD(v46) = v33;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v8 + 8))(v11, v7);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v49);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        swift_getObjectType();
        v39 = _typeName(_:qualified:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v49);

        *(v34 + 14) = v41;
        *(v34 + 22) = 2080;
        v42 = _typeName(_:qualified:)();
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v49);

        *(v34 + 24) = v44;
        _os_log_impl(&dword_1DC659000, v32, BYTE4(v46), "Input message %s of type %s is not of type %s", v34, 0x20u);
        v45 = v47;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v45, -1, -1);
        MEMORY[0x1E12A2F50](v34, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v24;
      *v23 = 136315394;
      swift_getObjectType();
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v49);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v49);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1DC659000, v21, v22, "Handler invoking object is of type %s and not of type %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationBridgeSPI.handleMessage(_:)()
{
  (*(**(v0[5] + 24) + 256))(v0[6]);
  v1 = v0[1];

  return v1();
}

void ConversationRequestAwareBridgeBase.handleMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v10 = a1;
  v95 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v93 = v5;
  v94 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v96[0] = v15;
    *v14 = 136315138;
    MessageBase.messageId.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v4;
    v19 = v18;
    (*(v5 + 8))(v8, v17);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, v96);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1DC659000, v11, v12, "Handling message id: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  type metadata accessor for RequestMessageBase();
  v21 = swift_dynamicCastClass();
  v22 = v21;
  if (!v21)
  {
    goto LABEL_12;
  }

  v23 = *(v2 + direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase);
  MEMORY[0x1EEE9AC00](v21);
  *(&v92 - 2) = v22;
  v24 = v10;
  os_unfair_lock_lock(v23 + 6);
  partial apply for closure #1 in ConversationRequestAwareBridgeBase.handleMessage(_:)(&v23[4], v96);
  os_unfair_lock_unlock(v23 + 6);

  if ((v96[0] & 1) == 0)
  {
    if ((*(v2 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) & 1) == 0)
    {

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v96[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v96);
        _os_log_impl(&dword_1DC659000, v36, v37, "Bridge: %s did not register any start request message so not handling any RequestMessageBase messages", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1E12A2F50](v39, -1, -1);
        MEMORY[0x1E12A2F50](v38, -1, -1);
      }

      goto LABEL_17;
    }

    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33 && v24)
    {
      v34 = v33;
      v35 = v24;
      ConversationRequestAwareBridgeBase.handleStartRequestInternal(_:)(v35, v34);
LABEL_20:

      goto LABEL_21;
    }

    type metadata accessor for EndRequestMessageBase();
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = v40;
      v35 = v24;
      ConversationRequestAwareBridgeBase.handleEndRequestInternal(_:)(v41);
      goto LABEL_20;
    }

    v42 = specialized static CandidateRequestMessage.from(_:)(v22);
    if ((~v42 & 0xF000000000000007) != 0)
    {
      v52 = v42;
      v53 = v24;
      ConversationRequestAwareBridgeBase.handleCandidateRequestMessageInternal(_:)(v52);

      outlined consume of CandidateRequestMessage?(v52);
      return;
    }

    v43 = (*v2 + 376);
    v44 = *v43;
    v45 = (*v43)();
    if (v45)
    {
      v47 = *(v45 + 64);
      v46 = *(v45 + 72);

      v48 = RequestMessageBase.requestId.getter();
      v50 = v94;
      if (v46)
      {
        if (v47 == v48 && v46 == v49)
        {

          goto LABEL_38;
        }

        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v73)
        {
LABEL_38:
          v74 = (v44)(v51);
          if (v74)
          {
            (*(*v2 + 496))(v22, v74);
          }

LABEL_17:

          return;
        }

LABEL_31:
        if ((*(v2 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) & 1) == 0)
        {
          if (!(v44)(v51))
          {
            v35 = v24;
            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v96[0] = v78;
              *v77 = 136315650;
              MessageBase.messageId.getter();
              _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
              v79 = dispatch thunk of CustomStringConvertible.description.getter();
              v80 = v50;
              v82 = v81;
              (*(v93 + 8))(v8, v80);
              v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v82, v96);

              *(v77 + 4) = v83;
              *(v77 + 12) = 2080;
              swift_getObjectType();
              v84 = _typeName(_:qualified:)();
              v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v96);

              *(v77 + 14) = v86;
              *(v77 + 22) = 2080;
              v87 = RequestMessageBase.requestId.getter();
              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v96);

              *(v77 + 24) = v89;
              _os_log_impl(&dword_1DC659000, v75, v76, "Receiving message id: %s of type: %s for request Id: %s but current request id not set", v77, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v78, -1, -1);
              MEMORY[0x1E12A2F50](v77, -1, -1);
            }

            goto LABEL_21;
          }
        }

        v35 = v24;

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          LODWORD(v95) = v55;
          v56 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v96[0] = v92;
          *v56 = 136315906;
          MessageBase.messageId.getter();
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v50;
          v60 = v59;
          (*(v93 + 8))(v8, v58);
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v60, v96);

          *(v56 + 4) = v61;
          *(v56 + 12) = 2080;
          swift_getObjectType();
          v62 = _typeName(_:qualified:)();
          v64 = v44;
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v96);

          *(v56 + 14) = v65;
          *(v56 + 22) = 2080;
          v66 = RequestMessageBase.requestId.getter();
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v96);

          *(v56 + 24) = v68;
          *(v56 + 32) = 2080;
          v70 = (v64)(v69);
          if (v70)
          {
            v72 = *(v70 + 64);
            v71 = *(v70 + 72);
          }

          else
          {
            v71 = 0xE700000000000000;
            v72 = 0x74657320746F4ELL;
          }

          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, v96);

          *(v56 + 34) = v90;
          _os_log_impl(&dword_1DC659000, v54, v95, "Receiving message id: %s of type: %s for request Id: %s but current request id: %s", v56, 0x2Au);
          v91 = v92;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v91, -1, -1);
          MEMORY[0x1E12A2F50](v56, -1, -1);
        }

LABEL_21:
        return;
      }
    }

    else
    {
      RequestMessageBase.requestId.getter();
      v50 = v94;
    }

    goto LABEL_31;
  }

  v25 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v96[0] = v29;
    *v28 = 136315138;
    swift_getObjectType();
    v30 = _typeName(_:qualified:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v96);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1DC659000, v26, v27, "RequestAware bridge handling request-scoped message %s outside of a request", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  else
  {
  }

LABEL_12:
  ConversationMessageDispatchingBridgeBase.handleMessage(_:)(v10);
}

uint64_t lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined destroy of ReferenceResolutionClientProtocol?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t closure #1 in AsyncSerialQueue.runAll()()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 48);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in closure #1 in AsyncSerialQueue.runAll();
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)((v0 + 16));
  *(v0 + 64) = 0;
  os_unfair_lock_unlock((*(v0 + 56) + 16));
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;

  if (v5)
  {
    v11 = (v4 + *v4);
    v7 = v4[1];
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = closure #1 in AsyncSerialQueue.runAll();

    return v11();
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v4 + 16) = partial apply for closure #2 in closure #1 in AsyncSerialQueue.runAll();
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  if (v2)
  {
    os_unfair_lock_unlock((*(v0 + 56) + 16));
  }

  else
  {
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    os_unfair_lock_unlock(v7 + 4);

    v9 = swift_task_alloc();
    *(v9 + 16) = partial apply for closure #1 in closure #1 in AsyncSerialQueue.runAll();
    *(v9 + 24) = v8;
    os_unfair_lock_lock(v7 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)((v0 + 16));
    *(v0 + 64) = 0;
    os_unfair_lock_unlock((*(v0 + 56) + 16));
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = *(v0 + 40);
    *(v0 + 72) = v12;
    *(v0 + 80) = v13;

    if (v12)
    {
      v17 = (v11 + *v11);
      v14 = v11[1];
      v15 = swift_task_alloc();
      *(v0 + 88) = v15;
      *v15 = v0;
      v15[1] = closure #1 in AsyncSerialQueue.runAll();

      return v17();
    }

    else
    {
      v16 = *(v0 + 8);

      return v16();
    }
  }
}

{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncSerialQueue.runAll(), 0, 0);
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return v7(a1);
}

uint64_t closure #1 in ConversationBridgeSPI.handleMessage(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationBridgeSPI.handleMessage(_:), v3, 0);
}

uint64_t ConversationMessageDispatchingBridgeBase.handleMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v32);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&dword_1DC659000, v9, v10, "Bridge %s received message: %@", v11, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v15 = (*(*v2 + 264))(v8);
  if ((*(*v15 + 104))())
  {
    v16 = v8;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315394;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B4BaseCmMd, &_s16SiriMessageTypes0B4BaseCmMR);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v32);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v30 + 8))(v7, v4);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v32);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1DC659000, v17, v18, "handleMessage got message type %s with message id: %s which is not registered with the bridge", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }
  }

  else
  {
    (*(*v15 + 88))(v2, v8);
  }
}

uint64_t partial apply for closure #1 in ConversationBridgeSPI.handleMessage(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationBridgeSPI.handleMessage(_:)(v2, v3);
}

double partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t partial apply for closure #1 in AsyncSerialQueue.runAll()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AsyncSerialQueue.runAll()(a1, v4, v5, v6);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t destroy for WorkItem(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ConversationBridge.handleStartSessionMessage(_:)(void *a1)
{
  v2 = v1;
  v46[1] = *v2;
  v4 = type metadata accessor for UUID();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v46 - v17;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_1DC659000, v21, v22, "ExecutionBridge received message: %@", v23, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  type metadata accessor for ClearExecutionContext();
  v26 = swift_allocObject();
  SessionStartedMessage.userId.getter();
  v27 = type metadata accessor for UserID();
  (*(*(v27 - 8) + 56))(v18, 0, 1, v27);
  v28 = (*(*v2 + 992))(v18);
  (*(*v2 + 768))(v51, v28);
  v29 = v52;
  v30 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v31 = (*(*v2 + 792))();
  v32 = *(v30 + 32);
  v48 = v26;
  v32(v26, v31, &protocol witness table for NonRequestExecutionBridgeDelegate, v29, v30);

  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  if (AFIsInternalInstall() && (SessionStartedMessage.understandingOnDevice.getter() & 1) == 0)
  {
    v33 = *MEMORY[0x1E69C83A0];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = v2[9];
    swift_getObjectType();
    swift_unknownObjectRetain();
    specialized static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(v34, v36, v37, 0, 0, 0, 0);

    swift_unknownObjectRelease();
  }

  v38 = direct field offset for ConversationBridge.isFirstRequestInSession;
  swift_beginAccess();
  *(v2 + v38) = 1;
  SessionMessageBase.sessionId.getter();
  v40 = v49;
  v39 = v50;
  (*(v49 + 56))(v14, 0, 1, v50);
  (*(*v2 + 920))(v14);
  SessionStartedMessage.sessionConfiguration.getter();
  v41 = type metadata accessor for SessionConfiguration();
  (*(*(v41 - 8) + 56))(v10, 0, 1, v41);
  (*(*v2 + 944))(v10);
  v42 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  v43 = v47;
  SessionMessageBase.sessionId.getter();
  dispatch thunk of ConversationSessionsManaging.conversationSessionState(forConversationSessionId:)();
  (*(v40 + 8))(v43, v39);
  (*(*v2 + 968))(v51);
  v44 = SessionStartedMessage.isSystemAssistantExperienceEnabled.getter();
  (*(*v2 + 1040))(v44 & 1);
}

uint64_t ConversationBridge.rraasClient.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t outlined init with copy of ReferenceResolutionClientProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ConversationBridge.nonRequestBridgePublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher;
  if (*(v0 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher))
  {
    v6 = *(v0 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher);
  }

  else
  {
    v7 = *(v0 + direct field offset for ConversationBridge.executionOutputSubmitter);
    v8 = *(*v0 + 984);

    v8(v9);
    v10 = v0[9];
    v11 = type metadata accessor for NonRequestExecutionBridgeDelegate(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v6 = swift_allocObject();
    *(v6 + 16) = v7;
    outlined init with take of UserID?(v4, v6 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId);
    *(v6 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper) = v10;
    v14 = *(v0 + v5);
    *(v0 + v5) = v6;
    swift_unknownObjectRetain();
  }

  return v6;
}

uint64_t ConversationRuntimeClient.sendClearExecutionContext(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:);
  *(v14 + 24) = v10;
  *(v14 + 32) = "bridge(didReceiveClearContext:from:)";
  *(v14 + 40) = 36;
  *(v14 + 48) = 2;
  v15 = *(*v7 + 208);

  v15(v11, v13, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v14);
}

uint64_t outlined assign with take of (Input, AnyFlow, SiriEnvironment)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ConversationBridge.isSystemAssistantExperienceEnabled.setter(char a1)
{
  v3 = direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t outlined init with take of ReferenceResolutionClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ConversationBridge.executionClient.getter@<X0>(void *a1@<X8>)
{
  v3 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, &v5, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  if (v6)
  {
    return outlined init with take of ReferenceResolutionClientProtocol(&v5, a1);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v5, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  closure #1 in ConversationBridge.executionClient.getter(v1, a1);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v5);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v5, v1 + v3, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t ConversationMessageDispatchingBridgeBase.methodDispatcher.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)(v2, v3, v4, v5, v6);
}

uint64_t closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  v9 = (a1 + *a1);
  v6 = a1[1];
  v7 = swift_task_alloc();
  *(v5 + 40) = v7;
  *v7 = v5;
  v7[1] = closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:);

  return v9();
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)()
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

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)();
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return specialized ConversationService.bridge(didReceiveClearContext:from:)();
}

uint64_t specialized ConversationService.bridge(didReceiveClearContext:from:)()
{
  *(v1 + 112) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 120) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)();
  v0[16] = static MessageBusActor.shared;
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v2, type metadata accessor for MessageBusActor);
  v3 = *(MEMORY[0x1E69E87D8] + 4);

  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = specialized ConversationService.bridge(didReceiveClearContext:from:);
  v5 = v0[14];

  return MEMORY[0x1EEE6DBF8]();
}

{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v3, 0);
}

{
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14SiriKitRuntime24RemoteConversationClientC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v2 = *(v0 + 112);
  swift_beginAccess();
  v3 = *(v2 + 104);
  *(v2 + 104) = v1;

  *(v0 + 144) = *(v2 + 192);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v4, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  TaskService.onTurnInvalidated()();

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveClearContext:from:), v2, 0);
}

{
  v2 = v0[14];
  v1 = v0[15];

  swift_beginAccess();
  *(v2 + 272) = 0;
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v2 + 112) = 1;
  v4 = *(v2 + 120);
  *(v2 + 120) = 0;
  outlined consume of ConversationService.State(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v3[26] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveClearContext:from:), v5, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveClearContext:from:)()
{
  v1 = v0[23];
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
    v4 = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[6];
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
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

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  v45 = v7;
  v46 = v2;
  v44 = v14;
  while (v2 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22 || (v0[21] = v22, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v21 = v0[20], v19 = v9, v20 = v10, !v21))
    {
LABEL_29:
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
      v37 = static MessageBusActor.shared;
      v0[27] = static MessageBusActor.shared;
      v39 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v38, type metadata accessor for MessageBusActor);
      v40 = *(MEMORY[0x1E69E8578] + 4);

      v41 = swift_task_alloc();
      v0[28] = v41;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGyytGMd, &_sScGyytGMR);
      *v41 = v0;
      v41[1] = closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
      v42 = v0[22];
      v4 = v37;
      v5 = v39;

      return MEMORY[0x1EEE6D898](v4, v5, v6);
    }

LABEL_21:
    v48 = v20;
    v24 = v0[24];
    v23 = v0[25];
    v25 = type metadata accessor for TaskPriority();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v23, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v28 = v27 + 2;
    v27[3] = 0;
    v27[4] = v21;
    v47 = v27;
    outlined init with copy of ReferenceResolutionClientProtocol?(v23, v24, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v24) = (*(v26 + 48))(v24, 1, v25);

    v29 = v0[24];
    if (v24 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[24], &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v26 + 8))(v29, v25);
    }

    if (*v28)
    {
      v30 = v47[3];
      v31 = *v28;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v32 = dispatch thunk of Actor.unownedExecutor.getter();
      v34 = v33;
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = *v0[22];
    v36 = swift_allocObject();
    *(v36 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
    *(v36 + 24) = v47;

    if (v34 | v32)
    {
      v15 = v0 + 7;
      v0[7] = 0;
      v0[8] = 0;
      v0[9] = v32;
      v0[10] = v34;
    }

    else
    {
      v15 = 0;
    }

    v16 = v0[25];
    v0[17] = 1;
    v0[18] = v15;
    v0[19] = v35;
    swift_task_create();

    v4 = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sScPSgMd, &_sScPSgMR);
    v9 = v19;
    v10 = v48;
    v7 = v45;
    v2 = v46;
    v14 = v44;
  }

  v17 = v9;
  v18 = v10;
  v19 = v9;
  if (v10)
  {
LABEL_17:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v2 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      goto LABEL_29;
    }

    v18 = *(v7 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D898](v4, v5, v6);
}

{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveClearContext:from:), v3, 0);
}

{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  v4 = v0[1];

  return v4();
}

void Logger.debugF(file:function:)()
{
  v0 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v10 = v2;
    *v1 = 136315394;
    v3 = StaticString.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v10);

    *(v1 + 4) = v5;
    *(v1 + 12) = 2080;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v1 + 14) = v8;
    _os_log_impl(&dword_1DC659000, log, v0, "%s:%s", v1, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v2, -1, -1);
    MEMORY[0x1E12A2F50](v1, -1, -1);
  }
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(a1, a2, v2);
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)()
{
  v1 = v0[9];
  v2 = v1[6];
  v0[14] = v2;
  v3 = v1[7];
  if (v2)
  {
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = v1[11];
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
    v9[1] = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v10 = v0[12];
    v11 = v0[8];

    return InterruptibleTaskManager.perform<A>(_:)(v10, &async function pointer to partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:), v8, v11);
  }

  else
  {
    v17 = (v0[6] + *v0[6]);
    v13 = *(v0[6] + 4);
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
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

    v5 = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
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

  InterruptibleTaskResult.getOrNilIfInterrupted()(v4, v5);
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_unknownObjectRelease();
  v7 = v0[12];

  v8 = v0[1];

  return v8();
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
    v6 = SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[5];

  (*(*(v2 - 8) + 56))(v3, 0, 1, v2);
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v5);
}

uint64_t _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTQ0_;

  return v7(a1);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:)(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 16);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return (v10)(v0 + 32, &async function pointer to closure #1 in RemoteConversationClient.reset(), 0, v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  v5 = *(v2 + 16);
  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.prepareForAudioHandoffFailed(), v5, 0);
}

uint64_t partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1)
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

uint64_t closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v12(a1, a4, a5);
}

uint64_t closure #1 in RemoteConversationClient.reset()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.reset(), 0, 0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #1 in closure #1 in RemoteConversationClient.reset()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = aBlock - v15;
  (*(v13 + 16))(aBlock - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a6;
  v19 = _Block_copy(aBlock);

  [a2 *a7];
  _Block_release(v19);
}

uint64_t @objc SendableRemoteConversationXPCWrapper.reset(reply:)(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(a1 + 16);
  v16[4] = a5;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v16[3] = a6;
  v14 = _Block_copy(v16);

  [v13 *a7];

  _Block_release(v14);
}

uint64_t partial apply for closure #1 in RemoteConversationService.reset(reply:)(uint64_t a1)
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

  return closure #1 in RemoteConversationService.reset(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v8 = type metadata accessor for RemoteConversationService.State(0);
  v6[32] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.reset(reply:), v10, 0);
}

uint64_t closure #1 in RemoteConversationService.reset(reply:)()
{
  v29 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 272);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v6 + 40), v0 + 16);
      outlined destroy of RemoteConversationService.State(v6 + v7, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(v0 + 272);
    v9 = v8[10];

    outlined destroy of ReferenceResolutionClientProtocol?((v8 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

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
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6572287465736572, 0xED0000293A796C70, &v28);
    _os_log_impl(&dword_1DC659000, v11, v12, "No conversation is active, ignoring %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_10:
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  if (*(v0 + 120))
  {
    v15 = *(v0 + 248);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v17 + 32);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.reset(reply:), v17);

    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScPSgMd, &_sScPSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  }

  v18 = *(v0 + 264);
  v19 = *(v0 + 272);
  v20 = *(v0 + 248);
  v21 = *(v0 + 256);
  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  v24 = *(*(v0 + 224) + 72);
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onTurnInvalidated()();

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of RemoteConversationService.State(v18, v3 + v4);
  v25 = swift_endAccess();
  v23(v25);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);

  v26 = *(v0 + 8);

  return v26();
}

Swift::Void __swiftcall SiriKitRuntimeState.invalidateCurrentTurn()()
{
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, &v4, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  if (*(&v5 + 1))
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v4, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = *((*(v2 + 64))(v1, v2) + 152);
    os_unfair_lock_lock((v3 + 20));
    *(v3 + 16) = 1;
    os_unfair_lock_unlock((v3 + 20));
    AceServiceInvokerImpl.cancelPendingCommands()();

    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    outlined assign with take of ConversationTurnState?(&v4, v0 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v4, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  }
}

uint64_t outlined init with copy of RemoteConversationService.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

void *initializeWithCopy for RemoteConversationService.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(a2 + 24);
    *(a1 + 24) = v10;
    (**(v10 - 8))(a1, a2);
    v11 = *(a2 + 64);
    *(a1 + 64) = v11;
    (**(v11 - 8))(a1 + 40, a2 + 40);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v13 = (a1 + v12);
    v14 = a2 + v12;
    v15 = *(a2 + v12 + 8);
    *v13 = *(a2 + v12);
    *(v13 + 1) = v15;
    v16 = type metadata accessor for SiriRequest(0);
    v17 = v16[5];
    v18 = type metadata accessor for Input();
    v19 = *(*(v18 - 8) + 16);

    v19(&v13[v17], v14 + v17, v18);
    *&v13[v16[6]] = *(v14 + v16[6]);
    *&v13[v16[7]] = *(v14 + v16[7]);
    v20 = v16[8];
    v21 = &v13[v20];
    v22 = (v14 + v20);
    v23 = *(v14 + v20 + 8);

    if (v23 >> 60 == 15)
    {
      *v21 = *v22;
    }

    else
    {
      v26 = *v22;
      outlined copy of Data._Representation(*v22, v23);
      *v21 = v26;
      *(v21 + 1) = v23;
    }

    *&v13[v16[9]] = *(v14 + v16[9]);
    *&v13[v16[10]] = *(v14 + v16[10]);
    *&v13[v16[11]] = *(v14 + v16[11]);
    v27 = v16[12];
    __dst = &v13[v27];
    v28 = (v14 + v27);
    v29 = type metadata accessor for SiriRequestIdentities(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);

    v32 = v28;

    if (v31(v28, 1, v29))
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dst, v28, *(*(v33 - 8) + 64));
    }

    else
    {
      v43 = v30;
      v44 = v29;
      v34 = type metadata accessor for IdentifiedUser();
      v35 = *(v34 - 8);
      v36 = *(v35 + 48);
      if (v36(v32, 1, v34))
      {
        v37 = v35;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        v39 = v32;
        memcpy(__dst, v32, *(*(v38 - 8) + 64));
      }

      else
      {
        v39 = v32;
        (*(v35 + 16))(__dst, v32, v34);
        v37 = v35;
        (*(v35 + 56))(__dst, 0, 1, v34);
      }

      v40 = *(v44 + 20);
      if (v36(&v39[v40], 1, v34))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dst[v40], &v39[v40], *(*(v41 - 8) + 64));
      }

      else
      {
        (*(v37 + 16))(&__dst[v40], &v39[v40], v34);
        (*(v37 + 56))(&__dst[v40], 0, 1, v34);
      }

      *&__dst[*(v44 + 24)] = *&v39[*(v44 + 24)];
      v42 = *(v43 + 56);

      v42(__dst, 0, 1, v44);
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 64);
    if (v8)
    {
      v9 = *(a2 + 72);
      *(a1 + 64) = v8;
      *(a1 + 72) = v9;
      (**(v8 - 8))(a1 + 40, a2 + 40);
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
    }

    *(a1 + 80) = *(a2 + 80);

LABEL_22:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

Swift::Void __swiftcall TaskService.onTurnInvalidated()()
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v4 = *(v1 + 32);
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_15;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.instrumentation);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "TaskService - Turn invalidated with no current non-ended task, ignoring.", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v0 = MEMORY[0x1E12A1FE0](0, v2);

    v3 = *(v0 + 32);
    if (!*(v0 + 32))
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_21;
  }

  v0 = *(v2 + 32);

  v3 = *(v0 + 32);
  if (*(v0 + 32))
  {
LABEL_6:
    if (v3 != 1)
    {

      goto LABEL_15;
    }
  }

LABEL_13:
  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {

    goto LABEL_15;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    goto LABEL_25;
  }

LABEL_21:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.instrumentation);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DC659000, v11, v12, "TaskService - updating task state to .ended because turn is invalidated.", v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  TaskService.update(task:state:)(v0, 2);
}

uint64_t TaskService.update(task:state:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {

LABEL_25:
    if (one-time initialization token for instrumentation != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_26;
  }

  v11 = v8;
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_25;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    v14 = 0x676E696F676E6FLL;
  }

  else
  {
    v14 = 0x6465646E65;
  }

  if (v13 == 1)
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if (*(a1 + 32))
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x64657461657263;
  }

  if (*(a1 + 32))
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (a2 == 2)
  {
    v18 = 0x6465646E65;
  }

  else
  {
    v18 = 0x676E696F676E6FLL;
  }

  if (a2 == 2)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  if (v16 == v18 && v17 == v19)
  {

    goto LABEL_29;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_29;
  }

  v31 = *(a1 + 16);
  v30 = *(a1 + 24);
  v32 = *(a1 + 33);
  (*(v6 + 16))(v10, a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v11);
  v33 = type metadata accessor for FlowTask(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  a1 = swift_allocObject();
  *(a1 + 16) = v31;
  *(a1 + 24) = v30;
  *(a1 + 32) = a2;
  *(a1 + 33) = v32;
  (*(v6 + 32))(a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v10, v11);
  swift_beginAccess();
  v36 = *(v2 + 32);
  if (v36 >> 62)
  {
    if (v36 < 0)
    {
      v63 = *(v2 + 32);
    }

    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = -v37;
  v39 = 4;
  while (1)
  {
    if (v38 + v39 == 4)
    {

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.instrumentation);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v64[0] = v48;
        *v47 = 136315138;

        v49 = FlowTask.description.getter();
        v51 = v50;

        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v64);

        *(v47 + 4) = v52;
        v53 = "TaskService - Returning unmanaged task: %s";
        goto LABEL_62;
      }

LABEL_63:

      return a1;
    }

    v40 = v39 - 4;
    if ((v36 & 0xC000000000000001) == 0)
    {
      break;
    }

    v41 = MEMORY[0x1E12A1FE0](v39 - 4, v36);
LABEL_39:
    if (*(v41 + 16) == *(a1 + 16) && *(v41 + 24) == *(a1 + 24))
    {

LABEL_54:
      swift_beginAccess();
      v54 = *(v2 + 32);

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + 32) = v54;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v54 < 0 || (v54 & 0x4000000000000000) != 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
        *(v2 + 32) = v54;
      }

      v56 = v54 & 0xFFFFFFFFFFFFFF8;
      if (v40 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      else
      {
        v57 = *(v56 + 8 * v39);
        *(v56 + 8 * v39) = a1;
        *(v2 + 32) = v54;
        swift_endAccess();

        if (one-time initialization token for instrumentation == -1)
        {
          goto LABEL_60;
        }
      }

      swift_once();
LABEL_60:
      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.instrumentation);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v64[0] = v48;
        *v47 = 136315138;

        v59 = FlowTask.description.getter();
        v61 = v60;

        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v64);

        *(v47 + 4) = v62;
        v53 = "TaskService - Updated managed task: %s";
LABEL_62:
        _os_log_impl(&dword_1DC659000, v45, v46, v53, v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v47, -1, -1);
      }

      goto LABEL_63;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {

      goto LABEL_54;
    }

    ++v39;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_65;
    }
  }

  if (v40 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v36 + 8 * v39);

    goto LABEL_39;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_26:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.instrumentation);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v65 = v24;
    *v23 = 136315138;
    v25 = FlowTask.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v65);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DC659000, v21, v22, "TaskService - Illegal attempt to update task: %s as created", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

LABEL_29:

  return a1;
}

uint64_t FlowTask.description.getter()
{
  v5[8] = 0;
  _StringGuts.grow(_:)(68);
  MEMORY[0x1E12A1580](0x6B736154776F6C46, 0xED0000203A64697BLL);
  MEMORY[0x1E12A1580](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12A1580](0x3A6574617473202CLL, 0xE900000000000020);
  *v5 = *(v0 + 32);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA8BA60);
  if (*(v0 + 33))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 33))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA8BA80);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return *&v5[1];
}

uint64_t outlined destroy of RemoteConversationService.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for TaskData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #2 in closure #1 in AsyncSerialQueue.runAll()()
{
  v1 = *(v0 + 40);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
}

uint64_t closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v16 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 16), *(v6 + 24), &v15);
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task %lu begin", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v14 = (v0[7] + *v0[7]);
  v9 = *(v0[7] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  v11 = v0[11];
  v12 = v0[8];

  return v14(v11);
}

{
  v16 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[4];
  ManagedContinuation.resume(returning:)(v1);
  (*(v3 + 8))(v1, v2);

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

  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v3 = closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v35 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[4];

  v4 = v1;
  v5 = static os_log_type_t.debug.getter();
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v0[14];
    v8 = v0[4];
    v31 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315650;
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v32);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v32);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);

    v33 = v18;
    v34 = v17;
    MEMORY[0x1E12A1580](0x206B736174203ALL, 0xE700000000000000);
    v0[2] = v31;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v19);

    MEMORY[0x1E12A1580](0x6520776572687420, 0xEE00203A726F7272);
    v0[3] = v7;
    v20 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v32);

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
    v25 = v0[4];

    v23 = v24;
  }

  v26 = v0[14];
  v27 = v0[6];
  ManagedContinuation.resume(throwing:)(v26);

  v28 = v0[11];

  v29 = v0[1];

  return v29();
}

uint64_t InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v5[17] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](InterruptibleTaskManager.perform<A>(_:), v7, 0);
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:), v9, 0);
}

uint64_t closure #1 in RemoteConversationClient.reset()()
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
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0x29287465736572, 0xE700000000000000, partial apply for closure #1 in closure #1 in RemoteConversationClient.reset(), v3, v7);
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
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287465736572, 0xE700000000000000, &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnectionIfValid<A>(execute:) in conformance SharedFlowPluginConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return SharedFlowPluginConnection.withRemoteConversationConnectionIfValid<A>(execute:)(a1, a2, a3, a4);
}

uint64_t InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  v5 = *(v4 + 40);
  v3[18] = v5;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3[16];
    v8 = v3[13];
    v7 = v3[14];
    v9 = v3[12];
    *(v4 + 40) = v5 + 1;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = static MessageBusActor.shared;
    v12 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v7;
    v13[5] = v4;
    v13[6] = v5;
    v13[7] = v9;
    v13[8] = v8;
    v14 = type metadata accessor for InterruptibleTaskResult();

    v15 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(0, 0, v6, &async function pointer to partial apply for closure #1 in InterruptibleTaskManager.perform<A>(_:), v13, v14);
    v3[19] = v15;
    v16 = swift_allocObject();
    v16[2] = v7;
    v16[3] = v4;
    v16[4] = v15;
    swift_beginAccess();

    v17 = *(v4 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 32);
    *(v4 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #2 in InterruptibleTaskManager.perform<A>(_:), v16, v5, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v22;
    swift_endAccess();
    v19 = *(MEMORY[0x1E69E86C0] + 4);
    v20 = swift_task_alloc();
    v3[20] = v20;
    *v20 = v3;
    v20[1] = InterruptibleTaskManager.perform<A>(_:);
    a1 = v3[11];
    a2 = v15;
    a3 = v14;
  }

  return MEMORY[0x1EEE6DA40](a1, a2, a3);
}

uint64_t sub_1DC6640E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCySuyycGMd, &_ss18_DictionaryStorageCySuyycGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCySi14SiriKitRuntime24RemoteConversationClientCSgyYbcGMd, &_ss18_DictionaryStorageCySi14SiriKitRuntime24RemoteConversationClientCSgyYbcGMR);
}

uint64_t withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  v10 = type metadata accessor for ManagedContinuation();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ManagedContinuation.().init()();
  v8[2] = v13;
  v14 = swift_task_alloc();
  v8[3] = v14;
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v15 = swift_task_alloc();
  v8[4] = v15;
  *v15 = v8;
  v15[1] = withCancellableContinuation<A>(body:);

  return _unsafeInheritExecutor_withTaskCancellationHandler<A>(handler:operation:)(a1, partial apply for closure #1 in withCancellableContinuation<A>(body:), v13, &async function pointer to partial apply for closure #2 in withCancellableContinuation<A>(body:), v14, a4);
}

uint64_t _unsafeInheritExecutor_withTaskCancellationHandler<A>(handler:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x1E69E88F8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return MEMORY[0x1EEE6DE20](a1, a4, a5, a2, a3, a6);
}

uint64_t closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a1;
  v15[7] = a4;
  v15[8] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v15);
}

uint64_t sub_1DC6644E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1E12A23D0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ConversationSessionKey();
  v5 = MEMORY[0x1E69D0820];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69D0820], &lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, v5, MEMORY[0x1E69D0830]);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  v5 = MEMORY[0x1E69695A8];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, v5, MEMORY[0x1E69695C8]);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for IntentTopic();
  v5 = MEMORY[0x1E69CFD68];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69CFD68], &lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, v5, MEMORY[0x1E69CFD80]);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  v5 = MEMORY[0x1E69CE620];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, MEMORY[0x1E69CE620]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69CE620], &lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, v5, MEMORY[0x1E69CE630]);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UserID();
  v5 = MEMORY[0x1E69D08C8];
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69D08C8], &lazy protocol witness table cache variable for type UserID and conformance UserID, v5, MEMORY[0x1E69D08D8]);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t ManagedContinuation.updateState(continuation:result:)(void (*a1)(void, void, void), uint64_t a2)
{
  v113 = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for CheckedContinuation();
  v7 = type metadata accessor for Optional();
  v118 = *(v7 - 8);
  v119 = v7;
  v8 = *(v118 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v114 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v109 = &v90 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v112 = &v90 - v14;
  v120 = v6;
  v117 = *(v6 - 8);
  v15 = v117[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v97 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v107 = &v90 - v19;
  v96 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v90 - v21;
  v98 = v5;
  v22 = type metadata accessor for Result();
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v105 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v90 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v99 = (&v90 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v90 - v34;
  v36 = *(v22 - 8);
  v37 = v36[8];
  v38 = MEMORY[0x1EEE9AC00](v33);
  v95 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v104 = &v90 - v41;
  v94 = v42;
  MEMORY[0x1EEE9AC00](v40);
  v110 = &v90 - v43;
  [*(v2 + *(v4 + 104)) lock];
  v116 = v24;
  v45 = v24 + 16;
  v44 = *(v24 + 16);
  v44(v35, a2, v23);
  v46 = v36[6];
  v47 = v46(v35, 1, v22);
  v115 = v22;
  v108 = v36;
  v106 = v23;
  v103 = v45;
  v101 = v36 + 6;
  v111 = v46;
  if (v47 == 1)
  {
    v99 = *(v116 + 8);
    v99(v35, v23);
    v48 = v118;
    v49 = v112;
    v50 = v44;
  }

  else
  {
    v93 = v30;
    v91 = v36[4];
    v91(v110, v35, v22);
    v51 = *(*v2 + 96);
    swift_beginAccess();
    v92 = v51;
    v52 = v99;
    v44(v99, v2 + v51, v23);
    LODWORD(v51) = v46(v52, 1, v22);
    v53 = v116;
    v99 = *(v116 + 8);
    v99(v52, v23);
    v50 = v44;
    if (v51 == 1)
    {
      v54 = v93;
      v91(v93, v110, v22);
      (v108[7])(v54, 0, 1, v22);
      v55 = v92;
      swift_beginAccess();
      (*(v53 + 40))(v2 + v55, v54, v23);
      swift_endAccess();
    }

    else
    {
      (v108[1])(v110, v22);
    }

    v48 = v118;
    v49 = v112;
  }

  v56 = v113;
  v113 = *(v48 + 16);
  v113(v49, v56, v119);
  v57 = v117;
  v58 = v117[6];
  v59 = v58(v49, 1, v120);
  v102 = v50;
  if (v59 == 1)
  {
    (*(v48 + 8))(v49, v119);
  }

  else
  {
    v60 = v120;
    v61 = v57[4];
    v62 = v100;
    v61(v100, v49, v120);
    v63 = v109;
    v61(v109, v62, v60);
    v48 = v118;
    v64 = v119;
    (v57[7])(v63, 0, 1, v60);
    v65 = *(*v2 + 88);
    swift_beginAccess();
    (*(v48 + 40))(v2 + v65, v63, v64);
    swift_endAccess();
  }

  v66 = *(*v2 + 88);
  swift_beginAccess();
  v67 = v114;
  v113(v114, v2 + v66, v119);
  v68 = v58(v67, 1, v120);
  v69 = v111;
  if (v68 == 1)
  {
    (*(v48 + 8))(v67, v119);
  }

  else
  {
    v70 = v117;
    v71 = v67;
    v72 = v107;
    v118 = v117[4];
    (v118)(v107, v71, v120);
    v73 = *(*v2 + 96);
    swift_beginAccess();
    v74 = v2 + v73;
    v75 = v105;
    v76 = v106;
    v102(v105, v74, v106);
    v77 = v115;
    if (v69(v75, 1, v115) != 1)
    {
      v79 = v108 + 4;
      v116 = v108[4];
      (v116)(v104, v75, v77);
      v80 = v109;
      v81 = v120;
      (v70[7])(v109, 1, 1, v120);
      swift_beginAccess();
      (*(v48 + 40))(v2 + v66, v80, v119);
      swift_endAccess();
      v82 = v97;
      v83 = v81;
      v84 = v118;
      (v118)(v97, v72, v83);
      v85 = v95;
      (v116)(v95, v104, v115);
      v86 = (*(v70 + 80) + 24) & ~*(v70 + 80);
      v87 = (v96 + *(v79 + 48) + v86) & ~*(v79 + 48);
      v88 = swift_allocObject();
      *(v88 + 16) = v98;
      v84(v88 + v86, v82, v120);
      (v116)(v88 + v87, v85, v115);
      v78 = partial apply for closure #2 in ManagedContinuation.updateState(continuation:result:);
      goto LABEL_16;
    }

    (v70[1])(v72, v120);
    v99(v75, v76);
  }

  v78 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
LABEL_16:
  (v78)([*(v2 + *(*v2 + 104)) unlock]);
}

uint64_t sub_1DC665060()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(type metadata accessor for Result() - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  (*(v3 + 8))(v0 + v5, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v9, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v5);
}

uint64_t partial apply for closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
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

  return closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a1;
  v8[7] = a4;
  v10 = type metadata accessor for CancellationError();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v13 = *(a8 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v8[18] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in InterruptibleTaskManager.perform<A>(_:), v15, 0);
}

uint64_t closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_allocObject();
  v0[19] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = closure #1 in InterruptibleTaskManager.perform<A>(_:);
  v7 = v0[17];
  v8 = v0[11];

  return withCancellableContinuation<A>(body:)(v7, partial apply for closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v5, v8);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[6];

  (*(v3 + 32))(v5, v2, v4);
  type metadata accessor for InterruptibleTaskResult();
  swift_storeEnumTagMultiPayload();
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = closure #1 in InterruptibleTaskManager.perform<A>(_:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);

  *(v0 + 40) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 168);
  if (v7)
  {
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v13 = *(v0 + 88);
    v14 = *(v0 + 48);

    v15 = *(v12 + 32);
    v15(v9, v10, v11);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v16 = swift_allocError();
    v15(v17, v9, v11);
    *v14 = v16;
    type metadata accessor for InterruptibleTaskResult();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 48);

    *v19 = v8;
    type metadata accessor for InterruptibleTaskResult();
    swift_storeEnumTagMultiPayload();
  }

  v20 = *(v0 + 136);
  v21 = *(v0 + 112);
  v22 = *(v0 + 120);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1DC665650()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t ManagedContinuation.().init()()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for CheckedContinuation();
  (*(*(v3 - 8) + 56))(v0 + v1, 1, 1, v3);
  v4 = *(*v0 + 96);
  v5 = type metadata accessor for Result();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + *(*v0 + 104)) = v6;
  v7 = v6;
  v8 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v7 setName_];

  return v0;
}

uint64_t partial apply for closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

uint64_t closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

uint64_t closure #2 in withCancellableContinuation<A>(body:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v1 + 80);
  *v5 = v0;
  v5[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for closure #1 in closure #2 in withCancellableContinuation<A>(body:), v3, v6);
}

uint64_t closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = type metadata accessor for Result();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v14 - v10);
  ManagedContinuation.setContinuation(_:)(a1);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    return a3(a2);
  }

  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v12 = swift_allocError();
  CancellationError.init()();
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ManagedContinuation.setContinuation(_:)(uint64_t a1)
{
  v18 = a1;
  v2 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for Result();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for CheckedContinuation();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = *(v9 - 8);
  (*(v15 + 16))(&v17 - v13, v18, v9);
  (*(v15 + 56))(v14, 0, 1, v9);
  (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
  ManagedContinuation.updateState(continuation:result:)(v14, v8);
  (*(v5 + 8))(v8, v4);
  return (*(v11 + 8))(v14, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12A1F10](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v23 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4, v7);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for LNSystemProtocol();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
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

  return closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = *(*a6 + 80);
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), 0, 0);
}

uint64_t _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConversationRuntimeClient.sendStartExecutionTurn(_:withBridgeDelegate:)(void *a1, uint64_t a2, uint64_t a3)
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
  *(v15 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);
  *(v15 + 24) = v10;
  *(v15 + 32) = "bridge(didReceiveStartExecutionTurn:from:)";
  *(v15 + 40) = 42;
  *(v15 + 48) = 2;
  v16 = *(*v7 + 208);

  v16(v12, v14, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:), v15);
}

uint64_t sub_1DC66682C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

void outlined consume of ConversationService.State(id a1, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
  }

  else if (v2 == 1)
  {
  }
}

uint64_t ConversationRuntimeClient.sendConversationUserInput(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = "bridge(didReceiveInput:from:)";
  *(v14 + 48) = 29;
  *(v14 + 56) = 2;
  *(v14 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:);
  *(v14 + 72) = v10;
  v15 = *(*v8 + 208);

  v15(v11, v13, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), v14);
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t outlined init with copy of ReferenceResolutionClientProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ConversationBridge.rraasClient.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v8, a4, a2, a3);
}

uint64_t closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  v1 = v0[30];
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
    v4 = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v8 = v0[3];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[6];
  }

  else
  {
    v12 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v2 + 56);

    v10 = 0;
  }

  v50 = v0 + 7;
  v15 = (v9 + 64) >> 6;
  v52 = v2;
  v53 = v15;
  v54 = v8;
  v51 = v0;
  while (v2 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22 || (v0[28] = v22, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v21 = v0[27], v19 = v10, v20 = v11, !v21))
    {
LABEL_27:
      v37 = v0[30];
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
      swift_beginAccess();
      v39 = *(v37 + 280);
      if (v39)
      {
        v40 = v0[31];
        v41 = v0[29];
        v42 = type metadata accessor for TaskPriority();
        (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
        v43 = swift_allocObject();
        v43[2] = 0;
        v43[3] = 0;
        v43[4] = v39;

        _sScG7addTask8priority9operationyScPSg_xyYaYAcntF14SiriKitRuntime24RemoteConversationClientCSg_Tg5(v40, &async function pointer to partial apply for closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v43);
        outlined destroy of ReferenceResolutionClientProtocol?(v40, &_sScPSgMd, &_sScPSgMR);
      }

      v44 = static MessageBusActor.shared;
      v0[35] = static MessageBusActor.shared;
      v45 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v38, type metadata accessor for MessageBusActor);
      v46 = *(MEMORY[0x1E69E8580] + 4);

      v47 = swift_task_alloc();
      v0[36] = v47;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMd, &_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMR);
      *v47 = v0;
      v47[1] = closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
      v48 = v0[29];
      v4 = (v0 + 26);
      v5 = v44;
      v6 = v45;

      return MEMORY[0x1EEE6D8A0](v4, v5, v6, v7);
    }

LABEL_20:
    v55 = v20;
    v24 = v0[32];
    v23 = v0[33];
    v25 = type metadata accessor for TaskPriority();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v23, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v28 = v27 + 2;
    v27[3] = 0;
    v27[4] = v21;
    outlined init with copy of ReferenceResolutionClientProtocol?(v23, v24, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v24) = (*(v26 + 48))(v24, 1, v25);

    v29 = v0[32];
    if (v24 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[32], &_sScPSgMd, &_sScPSgMR);
      if (*v28)
      {
        goto LABEL_22;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v26 + 8))(v29, v25);
      if (*v28)
      {
LABEL_22:
        v30 = v27[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = dispatch thunk of Actor.unownedExecutor.getter();
        v33 = v32;
        swift_unknownObjectRelease();
        goto LABEL_25;
      }
    }

    v31 = 0;
    v33 = 0;
LABEL_25:
    v0 = v51;
    v34 = *v51[29];
    v35 = swift_allocObject();
    *(v35 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
    *(v35 + 24) = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
    v36 = (v33 | v31);
    if (v33 | v31)
    {
      v36 = v50;
      *v50 = 0;
      v50[1] = 0;
      v51[9] = v31;
      v51[10] = v33;
    }

    v2 = v52;
    v16 = v51[33];
    v51[23] = 1;
    v51[24] = v36;
    v51[25] = v34;
    swift_task_create();

    v4 = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sScPSgMd, &_sScPSgMR);
    v10 = v19;
    v8 = v54;
    v11 = v55;
    v15 = v53;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_16:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v2 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_27;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8A0](v4, v5, v6, v7);
}

{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v3, 0);
}

uint64_t sub_1DC6673E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroyTm_3(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v19 = *(v5 + 64);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v18 = *(v9 + 64);
  v11 = type metadata accessor for LaunchAppBehavior();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = type metadata accessor for SiriKitReliabilityCodes();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v7, 1, v13))
  {
    (*(v14 + 8))(v0 + v7, v13);
  }

  v15 = (v19 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v10 + 8) & ~v10;

  (*(v9 + 8))(v0 + v16, v8);

  return MEMORY[0x1EEE6BDD0](v0, ((v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | v10 | 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroyTm_9(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  v6 = *(v2 + 32);

  v7 = *(v2 + 40);

  a1(*(v2 + 48));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t objectdestroyTm_10()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_11(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  a1(*(v1 + 56));

  return MEMORY[0x1EEE6BDD0](v1, 64, 7);
}

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_13()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t closure #1 in JetsamHelper.ensureJetsamTransaction()(void *a1)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v50 - v6;
  v69 = type metadata accessor for DispatchTime();
  v63 = *(v69 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v50 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = (a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  if (*(a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8))
  {
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
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], aBlock);
      v26 = "os_transaction(%s) bump";
LABEL_10:
      _os_log_impl(&dword_1DC659000, v22, v23, v26, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], aBlock);
      v26 = "os_transaction(%s) begin";
      goto LABEL_10;
    }
  }

  v28 = a1[2];
  v29 = a1[3];
  String.utf8CString.getter();
  v52 = os_transaction_create();

  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = a1[5];
  v31 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v53 + 8))(v20, v17);
  v51 = v31;
  ObjectType = swift_getObjectType();
  v33 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in closure #1 in JetsamHelper.ensureJetsamTransaction();
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v34 = _Block_copy(aBlock);

  v35 = v54;
  static DispatchQoS.unspecified.getter();
  v36 = v57;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v34);
  (*(v58 + 8))(v36, v59);
  (*(v55 + 8))(v35, v56);

  v37 = v61;
  static DispatchTime.now()();
  v38 = v62;
  DispatchTime.advanced(by:)();
  v63 = *(v63 + 8);
  (v63)(v37, v69);
  v40 = v66;
  v39 = v67;
  v41 = *(v66 + 104);
  v42 = v64;
  v41(v64, *MEMORY[0x1E69E7F40], v67);
  v43 = v65;
  *v65 = 0;
  v41(v43, *MEMORY[0x1E69E7F28], v39);
  v44 = v51;
  MEMORY[0x1E12A1C30](v38, v42, v43, ObjectType);
  v45 = *(v40 + 8);
  v45(v43, v39);
  v45(v42, v39);
  (v63)(v38, v69);
  OS_dispatch_source.resume()();
  v46 = v60;
  v47 = *v60;
  v48 = v60[1];
  *v60 = v52;
  v46[1] = v44;
  return outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(v47, v48);
}

uint64_t sub_1DC668358()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t outlined destroy of Conversation.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t InstrumentedStack.TrackedFlowAgent.__deallocating_deinit()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId;
  (*(v2 + 16))(v5, &v0[OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId], v1);
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v2 + 8);
  v7(v5, v1);
  v8 = *(v0 + 3);

  v9 = *(v0 + 5);

  v10 = *(v0 + 7);

  v7(&v0[v6], v1);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

void ConversationBridge.handleSessionEndedMessage(_:)(void *a1)
{
  v2 = v1;
  v67 = a1;
  v63 = type metadata accessor for UserSessionState();
  v61 = *(v63 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v55[-v7];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v59 = &v55[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v66 = &v55[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v55[-v24];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v55[-v27];
  (*(*v1 + 912))(v26);
  SessionMessageBase.sessionId.getter();
  v58 = v9[7];
  v58(v25, 0, 1, v8);
  v29 = *(v13 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol?(v28, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v25, &v16[v29], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v65 = v9;
  v30 = v9[6];
  if (v30(v16, 1, v8) == 1)
  {
    v57 = v9 + 7;
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v30(&v16[v29], 1, v8) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:
      v46 = (*(*v1 + 416))(v68);
      v48 = v47;
      v49 = *v47;

      *v48 = MEMORY[0x1E69E7CC8];
      v46(v68, 0);
      v50 = v59;
      v58(v59, 1, 1, v8);
      (*(*v2 + 920))(v50);
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      (*(*v2 + 968))(v68);
      v51 = type metadata accessor for SessionConfiguration();
      v52 = v60;
      (*(*(v51 - 8) + 56))(v60, 1, 1, v51);
      (*(*v2 + 944))(v52);
      v53 = v62;
      (*(v61 + 104))(v62, *MEMORY[0x1E69D06E8], v63);
      v54 = (*(*v2 + 1088))(v53);
      (*(**(v2 + direct field offset for ConversationBridge.recentDialogTracker) + 240))(v54);
      (*(*v2 + 1040))(2);
      return;
    }

    goto LABEL_6;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v16, v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v30(&v16[v29], 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (v65[1])(v66, v8);
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_7;
  }

  v57 = v9 + 7;
  v42 = v64;
  v43 = v65;
  (v65[4])(v64, &v16[v29], v8);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  v44 = v66;
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = v43[1];
  v45(v42, v8);
  outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v45(v44, v8);
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v56)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.conversationBridge);
  v32 = v67;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v68[0] = v36;
    *v35 = 136315138;
    v37 = v64;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (v65[1])(v37, v8);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v68);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_1DC659000, v33, v34, "SessionId: %s is not the current session, ignoring", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1E12A2F50](v36, -1, -1);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }
}

uint64_t ConversationBridge.userSessionState.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationBridge.userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t RecentDialogTracker.clearRecentDialogs()()
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
    *v5 = 134217984;
    v6 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v12 = *(v1 + v6);
      }

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_1DC659000, v3, v4, "RecentDialogTracker: clearing currently tracked %ld dialog(s).", v5, 0xCu);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }

  v9 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  swift_beginAccess();
  v10 = *(v1 + v9);
  *(v1 + v9) = MEMORY[0x1E69E7CC0];

  return RecentDialogTracker.updateSiriEnvironment()();
}

uint64_t RecentDialogTracker.updateSiriEnvironment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  v9 = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  type metadata accessor for RecentDialogsEnvironmentProvider();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider, v10, type metadata accessor for RecentDialogsEnvironmentProvider);
  v11 = dispatch thunk of SiriEnvironment.subscript.getter();

  v12 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v25 = *(v1 + v12);
    }

    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(*v11 + 112))(v14);

  static SiriEnvironment.default.getter();
  v15 = dispatch thunk of SiriEnvironment.subscript.getter();

  v16 = *(v1 + v12);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v26 = *(v1 + v12);
    }

    v17 = &selRef_setMitigationSource_;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_20:
    v24 = 0;
    goto LABEL_21;
  }

  v17 = &selRef_setMitigationSource_;
  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_5:
  v18 = *(v1 + v12);
  v36 = v6;
  if ((v18 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x1E12A1FE0](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_39:

      v29 = MEMORY[0x1E12A1FE0](1, v18);

      goto LABEL_26;
    }

    v19 = *(v18 + 32);
  }

  v20 = RecentDialog.addViews.getter();

  v21 = [v20 dialogPhase];
  if (v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  DialogPhase.init(aceValue:)();
  v22 = type metadata accessor for DialogPhase();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
    v24 = 0;
  }

  else
  {
    v24 = DialogPhase.canBeReplayed()();
    (*(v23 + 8))(v8, v22);
  }

  v6 = v36;
  v17 = &selRef_setMitigationSource_;
LABEL_21:
  (*(*v15 + 136))(v24);

  static SiriEnvironment.default.getter();
  v9 = dispatch thunk of SiriEnvironment.subscript.getter();

  v27 = *(v1 + v12);
  if (v27 >> 62)
  {
    if (v27 < 0)
    {
      v35 = *(v1 + v12);
    }

    result = __CocoaSet.count.getter();
    if (result < 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      goto LABEL_30;
    }
  }

  v18 = *(v1 + v12);
  if ((v18 & 0xC000000000000001) != 0)
  {
    goto LABEL_39;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v29 = *(v18 + 40);
LABEL_26:
    v30 = RecentDialog.addViews.getter();

    v31 = [v30 v17[290]];
    if (v31)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    DialogPhase.init(aceValue:)();
    v32 = type metadata accessor for DialogPhase();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v6, 1, v32) != 1)
    {
      v34 = DialogPhase.canBeReplayed()();
      (*(v33 + 8))(v6, v32);
      goto LABEL_32;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
LABEL_30:
    v34 = 0;
LABEL_32:
    (*(*v9 + 160))(v34);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t RecentDialogsEnvironmentProvider.numCurrentlyTracked.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t RecentDialogsEnvironmentProvider.hasDialogToRepeat.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t RecentDialogsEnvironmentProvider.hasDialogToGoBackTo.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  result = a5(a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a4 & 1, a6, a7);
      v26 = *v11;
      result = a5(a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      specialized _NativeDictionary.copy()(a6, a7);
      result = v25;
    }
  }

  v28 = *v11;
  if ((v23 & 1) == 0)
  {
    v28[(result >> 6) + 8] |= 1 << result;
    *(v28[6] + 8 * result) = a3;
    v31 = (v28[7] + 16 * result);
    *v31 = a1;
    v31[1] = a2;
    v32 = v28[2];
    v21 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v21)
    {
      v28[2] = v33;
      return result;
    }

    goto LABEL_15;
  }

  v29 = (v28[7] + 16 * result);
  v30 = v29[1];
  *v29 = a1;
  v29[1] = a2;
}

uint64_t destroy for Conversation.State(char *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 2)
  {
    if (result == 1)
    {
      v21 = *a1;
      a1 += 8;
    }

    else
    {
      if (result)
      {
        return result;
      }

      v3 = *(a1 + 1);

      v4 = type metadata accessor for SiriRequest(0);
      v5 = v4[5];
      v6 = type metadata accessor for Input();
      (*(*(v6 - 8) + 8))(&a1[v5], v6);
      v7 = *&a1[v4[6]];

      v8 = *&a1[v4[7]];

      v9 = &a1[v4[8]];
      v10 = v9[1];
      if (v10 >> 60 != 15)
      {
        outlined consume of Data._Representation(*v9, v10);
      }

      v11 = *&a1[v4[9]];

      v12 = *&a1[v4[10]];

      v13 = *&a1[v4[11]];

      v14 = &a1[v4[12]];
      v15 = type metadata accessor for SiriRequestIdentities(0);
      if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
      {
        v16 = type metadata accessor for IdentifiedUser();
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        if (!v18(v14, 1, v16))
        {
          (*(v17 + 8))(v14, v16);
        }

        v19 = *(v15 + 20);
        if (!v18(&v14[v19], 1, v16))
        {
          (*(v17 + 8))(&v14[v19], v16);
        }

        v20 = *&v14[*(v15 + 24)];
      }

      a1 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48);
    }
  }

  v22 = *a1;
}

uint64_t Node.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  swift_weakDestroy();
  v2 = *(v0 + *(*v0 + 104));

  v3 = *(*v0 + 112);
  swift_weakDestroy();
  v4 = *(*v0 + 120);
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  if (v5)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v6 = *(v5 + *(*v5 + 120));
      swift_retain_n();

      v5 = v6;
    }

    while (v6);
  }

  return v0;
}

uint64_t objectdestroy_7Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_7Tm_0(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[6];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t closure #1 in SubmissionTaskRegistry.cancelAll()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v15 = *(*a1 + 16);
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x1E69E7288]; v5; result = )
  {
    v10 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(v2 + 48) + ((v10 << 9) | (8 * v11)));

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1E12A1950](v12, v13, v14, i);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      *a1 = MEMORY[0x1E69E7CD0];
      *a2 = v15;
      return result;
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RemoteConversationService.FlowAndInputRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DC66A0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

Swift::Void __swiftcall AceServiceInvokerImpl.cancelPendingCommands()()
{
  v1 = *(*(v0 + 160) + 16);
  os_unfair_lock_lock((v1 + 24));
  closure #1 in SubmissionTaskRegistry.cancelAll()((v1 + 16), &v7);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v7;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.ace);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_1DC659000, oslog, v4, "Completing pending completions. pending completion count: %ld", v5, 0xCu);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

uint64_t outlined assign with take of ConversationTurnState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CombiningAffinityScorer(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t FlowTask.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t JetsamHelper.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v3 = type metadata accessor for DispatchTimeInterval();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t InstrumentedStack.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

_OWORD *assignWithTake for RemoteConversationService.State(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of RemoteConversationService.State(a1, type metadata accessor for RemoteConversationService.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 9) = *(a2 + 9);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v10 = type metadata accessor for SiriRequest(0);
    v11 = v10[5];
    v12 = type metadata accessor for Input();
    (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
    *&v8[v10[6]] = *&v9[v10[6]];
    *&v8[v10[7]] = *&v9[v10[7]];
    *&v8[v10[8]] = *&v9[v10[8]];
    *&v8[v10[9]] = *&v9[v10[9]];
    *&v8[v10[10]] = *&v9[v10[10]];
    *&v8[v10[11]] = *&v9[v10[11]];
    v13 = v10[12];
    v14 = &v8[v13];
    v15 = &v9[v13];
    v16 = type metadata accessor for SiriRequestIdentities(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
    }

    else
    {
      v21 = type metadata accessor for IdentifiedUser();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      v27 = v22;
      if (v23(v15, 1, v21))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v14, v15, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v22 + 32))(v14, v15, v21);
        (*(v22 + 56))(v14, 0, 1, v21);
      }

      v25 = *(v16 + 20);
      if (v23(&v15[v25], 1, v21))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v14[v25], &v15[v25], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v27 + 32))(&v14[v25], &v15[v25], v21);
        (*(v27 + 56))(&v14[v25], 0, 1, v21);
      }

      *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v19 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v19);
}

uint64_t ServerFallbackDisablingUtils.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t destroy for RemoteConversationService.State(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v5 = *(v4 + 1);

    v6 = type metadata accessor for SiriRequest(0);
    v7 = v6[5];
    v8 = type metadata accessor for Input();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
    v9 = *&v4[v6[6]];

    v10 = *&v4[v6[7]];

    v11 = &v4[v6[8]];
    v12 = v11[1];
    if (v12 >> 60 != 15)
    {
      outlined consume of Data._Representation(*v11, v12);
    }

    v13 = *&v4[v6[9]];

    v14 = *&v4[v6[10]];

    v15 = *&v4[v6[11]];

    v16 = &v4[v6[12]];
    v17 = type metadata accessor for SiriRequestIdentities(0);
    result = (*(*(v17 - 8) + 48))(v16, 1, v17);
    if (!result)
    {
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
    }
  }

  else if (!result)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (a1[8])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
    }

    v3 = a1[10];
  }

  return result;
}

uint64_t Conversation.deinit()
{
  v1 = *(v0 + 112);

  outlined destroy of Conversation.State(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state, type metadata accessor for Conversation.State);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId + 8);

  outlined destroy of weak ConversationTaskObservationDelegate?(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils));
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);

  v7 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId + 8);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow);

  swift_defaultActor_destroy();
  return v0;
}

void *SiriKitRuntimeState.taskService.getter()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for TaskService();
    v1 = swift_allocObject();
    v1[2] = closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:);
    v1[3] = 0;
    v1[4] = MEMORY[0x1E69E7CC0];
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t outlined assign with take of RemoteConversationService.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConversationService.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Conversation.__deallocating_deinit()
{
  Conversation.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t Node.__deallocating_deinit()
{
  Node.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FlowAgent.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 152);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ServerFallbackCapableRequestProcessor()
{
  result = type metadata singleton initialization cache for ServerFallbackCapableRequestProcessor;
  if (!type metadata singleton initialization cache for ServerFallbackCapableRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationBridge.isFirstRequestInSession.getter()
{
  v1 = direct field offset for ConversationBridge.isFirstRequestInSession;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag()
{
  result = lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag;
  if (!lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag;
  if (!lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag);
  }

  return result;
}

void *ConversationBridge.muxContextMessage.getter()
{
  v1 = direct field offset for ConversationBridge.muxContextMessage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_yyctMd, &_s10Foundation4UUIDV_yyctMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v10, v6, &_s10Foundation4UUIDV_yyctMd, &_s10Foundation4UUIDV_yyctMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t RecentDialogTracker.setCurrentRequest(withRequestId:sessionId:)(void (*a1)(void, void, void, void), unint64_t a2, uint64_t a3)
{
  v58 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v51 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v52 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.conversationBridge);
  v24 = *(v17 + 16);
  v61 = v17 + 16;
  v62 = a3;
  v60 = v24;
  v24(v22, a3, v16);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v54 = v14;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v63[0] = v51;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, a2, v63);
    *(v28 + 12) = 2080;
    lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a2;
    v31 = v5;
    v33 = v32;
    v53 = *(v17 + 8);
    v53(v22, v16);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v33, v63);
    v5 = v31;
    a2 = v30;

    *(v28 + 14) = v34;
    v35 = v58;
    _os_log_impl(&dword_1DC659000, v25, v26, "RecentDialogTracker: new request %s, session %s", v28, 0x16u);
    v36 = v51;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v36, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  else
  {

    v53 = *(v17 + 8);
    v53(v22, v16);
    v35 = v58;
  }

  v37 = v57;
  v38 = (v57 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId);
  v39 = *(v57 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8);
  *v38 = v35;
  v38[1] = a2;

  *(v37 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) = 0;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId;
  swift_beginAccess();
  v41 = v59;
  v60(v59, v62, v16);
  v58 = *(v17 + 56);
  v58(v41, 0, 1, v16);
  v42 = *(v5 + 48);
  v43 = v56;
  outlined init with copy of UUID?(v37 + v40, v56);
  outlined init with copy of UUID?(v41, v43 + v42);
  v44 = *(v17 + 48);
  if (v44(v43, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v44(v43 + v42, 1, v16) == 1)
    {
      return outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    goto LABEL_11;
  }

  v46 = v54;
  outlined init with copy of UUID?(v43, v54);
  if (v44(v43 + v42, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v53(v46, v16);
LABEL_11:
    outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_12:
    RecentDialogTracker.clearRecentDialogs()();
    v47 = v55;
    v60(v55, v62, v16);
    v58(v47, 0, 1, v16);
    swift_beginAccess();
    outlined assign with take of UUID?(v47, v37 + v40);
    return swift_endAccess();
  }

  v48 = v52;
  (*(v17 + 32))(v52, v43 + v42, v16);
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = v53;
  v53(v48, v16);
  outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v50(v46, v16);
  result = outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ConversationRequestAwareBridgeBase.handleStartRequestInternal(_:)(void *a1, NSObject *a2)
{
  v3 = v2;
  v67 = a2;
  v5 = *v2;
  v6 = type metadata accessor for UUID();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v10 = RequestMessageBase.requestId.getter();
  v12 = v11;
  v64 = MessageBase.assistantId.getter();
  v14 = v13;
  v15 = (*(*v2 + 376))();
  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = *(v15 + 64);
  v16 = *(v15 + 72);

  if (v17 == v10 && v16 == v12)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_7:
      v20 = RequestMessageBase.requestId.getter();
      v22 = v21;
      v23 = (*(*v3 + 400))();
      v68[0] = v20;
      v68[1] = v22;
      MEMORY[0x1E12A1380](&v69, v68, v23, MEMORY[0x1E69E6158], *(v5 + 320), MEMORY[0x1E69E6168]);

      v24 = v69;
      if (v69)
      {

        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.conversationBridge);
        v26 = a1;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v68[0] = v30;
          *v29 = 136315138;
          v31 = RequestMessageBase.requestId.getter();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v68);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_1DC659000, v27, v28, "Got StartRequest for a request for which we've previously seen speech candidates. Will promote candidate request processor to active for requestId=%s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1E12A2F50](v30, -1, -1);
          MEMORY[0x1E12A2F50](v29, -1, -1);
        }

        v34 = v24;
      }

      else
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.conversationBridge);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v62[1] = 0;
          v54 = v53;
          v68[0] = v53;
          *v52 = 136315138;
          *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v68);
          _os_log_impl(&dword_1DC659000, v50, v51, "Creating new RequestProcessor to handle StartRequest<requestId: %s>", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x1E12A2F50](v54, -1, -1);
          MEMORY[0x1E12A2F50](v52, -1, -1);
        }

        SessionMessageBase.sessionId.getter();
        v55 = (v67[2].isa)(ObjectType);
        v34 = (*(*v3 + 472))(v64, v14, v9, v10, v12, v55, v56);

        (*(v65 + 8))(v9, v66);
      }

      v57 = *(*v3 + 384);

      v57(v58);
      if (v34)
      {
        (*(*v3 + 496))(a1, v34);
      }

      else
      {
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_1DC659000, v59, v60, "Could not create an instance of RequestProcessor", v61, 2u);
          MEMORY[0x1E12A2F50](v61, -1, -1);
        }

        else
        {
        }
      }

      return;
    }
  }

  v35 = a1;

  v67 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v67, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v68[0] = v38;
    *v37 = 136315650;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v68);

    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    MessageBase.messageId.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v40 = v66;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    (*(v65 + 8))(v9, v40);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v68);

    *(v37 + 14) = v44;
    *(v37 + 22) = 2080;
    swift_getObjectType();
    v45 = _typeName(_:qualified:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v68);

    *(v37 + 24) = v47;
    _os_log_impl(&dword_1DC659000, v67, v36, "Got a duplicate start request message to requestId: %s messageId: %s type: %s ignoring the new start", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  else
  {

    v48 = v67;
  }
}

uint64_t ConversationRequestAwareBridgeBase.currentRequestProcessor.getter()
{
  v1 = direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ConversationRequestAwareBridgeBase.candidateRequestProcessors.getter()
{
  v1 = direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t StartRequestMessageBase.rootRequestId.getter()
{
  type metadata accessor for StartRequestMessageBase();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16RootRequestAware_pMd, &_s16SiriMessageTypes16RootRequestAware_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v2 = dispatch thunk of RootRequestAware.rootRequestId.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    return v2;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    outlined destroy of RootRequestAware?(v4);
    return RequestMessageBase.requestId.getter();
  }
}

void *ConversationBridge.createRequestProcessor(_:_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v285 = a7;
  v286 = a6;
  v307 = a5;
  v301 = a4;
  v309 = a3;
  v283 = a1;
  v284 = a2;
  v9 = type metadata accessor for UserSessionState();
  v288 = *(v9 - 8);
  v10 = v288[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v291 = &v263 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v293 = &v263 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v296 = (&v263 - v16);
  v298 = type metadata accessor for SessionConfiguration();
  v300 = *(v298 - 8);
  v17 = *(v300 + 64);
  v18 = MEMORY[0x1EEE9AC00](v298);
  v287 = &v263 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v292 = &v263 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v297 = &v263 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v303 = &v263 - v25;
  v26 = type metadata accessor for UserID();
  v304 = *(v26 - 8);
  v305 = v26;
  v27 = *(v304 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v294 = &v263 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v290 = &v263 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v299 = &v263 - v32;
  v310 = type metadata accessor for UUID();
  v33 = *(v310 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v310);
  v308 = &v263 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v295 = &v263 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v289 = &v263 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v302 = &v263 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v263 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v306 = &v263 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v263 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v263 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v263 - v57;
  (*(*v7 + 816))(&v341, v56);
  if (!v342)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v341, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.conversationBridge);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1DC659000, v75, v76, "Did not finish initializing ReferenceResolutionClient before receiving a new request. THIS SHOULD NOT HAPPEN!", v77, 2u);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    goto LABEL_40;
  }

  v59 = outlined init with take of ReferenceResolutionClientProtocol(&v341, v343);
  (*(*v7 + 840))(&v339, v59);
  if (!v340)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v339, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.conversationBridge);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1DC659000, v79, v80, "Did not finish initializing CorrectionsPlatformClient before receiving a new request. THIS SHOULD NOT HAPPEN!", v81, 2u);
      MEMORY[0x1E12A2F50](v81, -1, -1);
    }

    goto LABEL_39;
  }

  v60 = outlined init with take of ReferenceResolutionClientProtocol(&v339, &v341);
  v61 = (*(*v7 + 864))(v60);
  if (!v61)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.conversationBridge);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1DC659000, v83, v84, "Did not finish initializing NetworkAvailabilityProvider before receiving a new request. THIS SHOULD NOT HAPPEN!", v85, 2u);
      MEMORY[0x1E12A2F50](v85, -1, -1);
    }

    goto LABEL_37;
  }

  v274 = v9;
  v280 = v61;
  v62 = (*v7 + 912);
  v63 = *v62;
  v282 = v7;
  v275 = v62;
  v276 = v63;
  v63();
  v64 = v33 + 16;
  v65 = *(v33 + 16);
  v66 = v33;
  v67 = v310;
  v278 = v65;
  v279 = v64;
  v65(v55, v309, v310);
  (*(v66 + 56))(v55, 0, 1, v67);
  v68 = *(v42 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v58, v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v55, &v45[v68], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v281 = v66;
  v71 = *(v66 + 48);
  v69 = (v66 + 48);
  v70 = v71;
  if (v71(v45, 1, v67) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v72 = v310;
    outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v70(&v45[v68], 1, v72) == 1)
    {
      v73 = outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v8 = v282;
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v45, v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v70(&v45[v68], 1, v67) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v72 = v310;
    outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v281 + 8))(v52, v72);
LABEL_23:
    outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v8 = v282;
LABEL_24:
    v277 = v70;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.conversationBridge);
    v87 = v308;
    v278(v308, v309, v72);
    v88 = v307;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    v91 = os_log_type_enabled(v89, v90);
    v92 = v306;
    if (v91)
    {
      v93 = swift_slowAlloc();
      v309 = swift_slowAlloc();
      *&v339 = v309;
      *v93 = 136315650;
      v276();
      if ((v277)(v92, 1, v72))
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v94 = 0xE300000000000000;
        v95 = 7104878;
        v96 = v281;
      }

      else
      {
        v120 = v302;
        v278(v302, v92, v72);
        outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v121 = UUID.uuidString.getter();
        v94 = v122;
        v96 = v281;
        (*(v281 + 8))(v120, v72);
        v95 = v121;
      }

      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &v339);

      *(v93 + 4) = v123;
      *(v93 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v124 = v308;
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v126;
      (*(v96 + 8))(v124, v72);
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v339);

      *(v93 + 14) = v128;
      *(v93 + 22) = 2080;
      *(v93 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v301, v88, &v339);
      _os_log_impl(&dword_1DC659000, v89, v90, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v93, 0x20u);
      v129 = v309;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v129, -1, -1);
      MEMORY[0x1E12A2F50](v93, -1, -1);

      __swift_destroy_boxed_opaque_existential_1Tm(&v341);
      __swift_destroy_boxed_opaque_existential_1Tm(v343);
      v8 = v282;
      goto LABEL_40;
    }

    (*(v281 + 8))(v87, v72);
    goto LABEL_38;
  }

  v277 = v70;
  v97 = v281;
  v98 = *(v281 + 32);
  v273 = v69;
  v99 = v302;
  v98(v302, &v45[v68], v67);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  LODWORD(v272) = dispatch thunk of static Equatable.== infix(_:_:)();
  v100 = v97;
  v70 = v277;
  v101 = *(v100 + 8);
  v101(v99, v67);
  outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v101(v52, v310);
  v72 = v310;
  v73 = outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = v282;
  if ((v272 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_31:
  v102 = v303;
  (*(*v8 + 984))(v73);
  v104 = v304;
  v103 = v305;
  if ((*(v304 + 48))(v102, 1, v305) != 1)
  {
    v111 = v299;
    v112 = (*(v104 + 32))(v299, v102, v103);
    v113 = v296;
    (*(*v8 + 936))(v112);
    v114 = v300;
    v115 = v298;
    if ((*(v300 + 48))(v113, 1, v298) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for Logger();
      __swift_project_value_buffer(v116, static Logger.conversationBridge);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_1DC659000, v117, v118, "sessionConfiguration has not been set for current session", v119, 2u);
        MEMORY[0x1E12A2F50](v119, -1, -1);
      }

      goto LABEL_63;
    }

    v130 = (*(v114 + 32))(v297, v113, v115);
    (*(*v8 + 960))(&v337, v130);
    if (!v338)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v337, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v138 = type metadata accessor for Logger();
      __swift_project_value_buffer(v138, static Logger.conversationBridge);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_1DC659000, v139, v140, "Unable to find SessionState to pass to RequestProcessor", v141, 2u);
        v142 = v141;
        v114 = v300;
        MEMORY[0x1E12A2F50](v142, -1, -1);
      }

      goto LABEL_62;
    }

    v131 = outlined init with take of ReferenceResolutionClientProtocol(&v337, &v339);
    v132 = (*(*v8 + 1032))(v131);
    if (v132 == 2)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v133 = type metadata accessor for Logger();
      __swift_project_value_buffer(v133, static Logger.conversationBridge);
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_1DC659000, v134, v135, "Unable to find isSystemAssistantExperienceEnabled to pass to RequestProcessor", v136, 2u);
        v137 = v136;
        v114 = v300;
        MEMORY[0x1E12A2F50](v137, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v339);
LABEL_62:
      (*(v114 + 8))(v297, v115);
LABEL_63:
      (*(v104 + 8))(v111, v103);
      goto LABEL_38;
    }

    v143 = v132;
    v144 = (*v8 + 1008);
    v145 = *v144;
    v146 = v144;
    if ((*v144)())
    {
      v147 = (*(*v8 + 1056))();
      if (!v147)
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v246 = type metadata accessor for Logger();
        __swift_project_value_buffer(v246, static Logger.conversationBridge);
        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.error.getter();
        v249 = os_log_type_enabled(v247, v248);
        v251 = v304;
        v250 = v305;
        v252 = v299;
        if (v249)
        {
          v253 = swift_slowAlloc();
          *v253 = 0;
          _os_log_impl(&dword_1DC659000, v247, v248, "MUX is enabled but MUXContextMessage is not received. Cannot create a RequestProcessor", v253, 2u);
          v254 = v253;
          v114 = v300;
          MEMORY[0x1E12A2F50](v254, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v339);
        (*(v114 + 8))(v297, v115);
        (*(v251 + 8))(v252, v250);
        goto LABEL_38;
      }
    }

    v268 = v143;
    v278(v289, v309, v310);
    v148 = *(v114 + 16);
    v275 = v114 + 16;
    v276 = v148;
    (v148)(v292, v297, v115);
    v149 = outlined init with copy of ReferenceResolutionClientProtocol((v8 + 4), &v337);
    v150 = v8;
    (*(*v8 + 768))(v331, v149);
    v269 = *(v8 + direct field offset for ConversationBridge.executionOutputSubmitter);
    v151 = *(v8 + direct field offset for ConversationBridge.preExecutionActionHandler);
    v302 = *(v8 + direct field offset for ConversationBridge.decisionMaker);
    v303 = v151;
    v152 = outlined init with copy of ReferenceResolutionClientProtocol(&v339, v330);
    v153 = v8[9];
    v308 = *(v8 + direct field offset for ConversationBridge.instrumentationUtil);
    v309 = v153;
    v270 = (*(*v8 + 744))(v152);
    v306 = (*(*v8 + 888))();
    outlined init with copy of ReferenceResolutionClientProtocol(v343, v329);
    outlined init with copy of ReferenceResolutionClientProtocol(&v341, v328);
    v296 = v146;
    v154 = v305;
    v156 = v304 + 16;
    v155 = *(v304 + 16);
    v157 = v155(v290, v299, v305);
    *&v271 = *(v8 + direct field offset for ConversationBridge.recentDialogTracker);
    (*(*v8 + 1080))(v157);
    v158 = type metadata accessor for FeatureChecker();
    v159 = swift_allocObject();
    *(v159 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
    v326 = &type metadata for IntelligenceFlowFeatureFlag;
    v264 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
    v327 = v264;
    v160 = isFeatureEnabled(_:)();
    v161 = __swift_destroy_boxed_opaque_existential_1Tm(v325);
    *(v159 + 17) = v160 & 1;
    v273 = (*(*v150 + 1056))(v161);
    LODWORD(v277) = v145();
    v162 = type metadata accessor for ServerFallbackCapableRequestProcessor();
    v163 = *(v162 + 48);
    v164 = *(v162 + 52);
    v109 = swift_allocObject();
    v327 = &protocol witness table for FeatureChecker;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer) = 0;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor) = 0;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage) = 0;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall) = 2;
    v265 = v158;
    v326 = v158;
    v325[0] = v159;
    v165 = MEMORY[0x1E69E7CC0];
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer) = MEMORY[0x1E69E7CC0];
    v278(v295, v289, v310);
    v166 = v287;
    (v276)(v287, v292, v115);
    outlined init with copy of ReferenceResolutionClientProtocol(&v337, v324);
    outlined init with copy of ReferenceResolutionClientProtocol(v331, v323);
    outlined init with copy of ReferenceResolutionClientProtocol(v330, v322);
    outlined init with copy of ReferenceResolutionClientProtocol(v329, v321);
    outlined init with copy of ReferenceResolutionClientProtocol(v328, v320);
    v272 = v156;
    v296 = v155;
    v155(v294, v290, v154);
    v266 = v288[2];
    v267 = v288 + 2;
    v266(v291, v293, v274);
    outlined init with copy of ReferenceResolutionClientProtocol(v325, v319);
    v167 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
    v263 = type metadata accessor for ConcurrentTaskPool();
    v168 = swift_allocObject();
    *(v168 + 16) = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v169 = swift_allocObject();
    *(v109 + v167) = v168;
    v170 = v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
    v170[16] = 3;
    *v170 = 0;
    *(v170 + 1) = 0;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
    *(v169 + 16) = 0;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
    *(v168 + 24) = v169;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
    v171 = (v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
    *v171 = 0;
    v171[1] = 0;
    v172 = v166;
    v173 = v308;
    (v276)(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration, v172, v115);
    v174 = objc_opt_self();

    v175 = v280;

    v176 = [v174 sharedPreferences];
    v177 = [objc_opt_self() clientWithIdentifier_];
    v178 = type metadata accessor for TrialExperimentationAssetManager();
    v179 = swift_allocObject();
    v180 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
    *(v179 + 16) = v177;
    *(v179 + 24) = v180;
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v181 = static SelfReflectionCurareDonator.instance;
    type metadata accessor for SelfReflectionAgent();
    v182 = swift_allocObject();
    v318 = &protocol witness table for TrialExperimentationAssetManager;
    v317 = v178;
    *&v316 = v179;
    v183 = type metadata accessor for TaggingService();
    v184 = *(v183 + 48);
    v185 = *(v183 + 52);
    swift_allocObject();

    *(v182 + 104) = TaggingService.init()();
    *(v182 + 144) = 0;
    *(v182 + 128) = 0u;
    *(v182 + 112) = 0u;
    *(v182 + 16) = v173;
    *(v182 + 24) = v175;
    *(v182 + 32) = v176;
    LODWORD(v275) = v268 & 1;
    *(v182 + 40) = v268 & 1;
    outlined init with take of ReferenceResolutionClientProtocol(&v316, v182 + 48);
    swift_beginAccess();
    *(v182 + 128) = 0;
    swift_beginAccess();
    *(v182 + 136) = 0;
    swift_beginAccess();
    v186 = *(v182 + 144);
    *(v182 + 144) = 0;

    *(v182 + 152) = 33686018;
    *(v182 + 156) = 514;
    *(v182 + 160) = 0;
    *(v182 + 168) = 1;
    *(v182 + 169) = *v334;
    *(v182 + 172) = *&v334[3];
    *(v182 + 176) = 0;
    *(v182 + 184) = 1;
    *(v182 + 185) = 2;
    *(v182 + 186) = v332;
    *(v182 + 190) = v333;
    *(v182 + 192) = 0;
    *(v182 + 200) = 0;
    LOBYTE(v313) = 1;
    LOBYTE(v312[0]) = 1;
    *(v182 + 208) = 33686018;
    *(v182 + 212) = 514;
    *(v182 + 216) = 0;
    *(v182 + 224) = 1;
    *(v182 + 225) = *v336;
    *(v182 + 228) = *&v336[3];
    *(v182 + 232) = 0;
    *(v182 + 240) = 1;
    *(v182 + 241) = 2;
    v187 = *&v334[7];
    *(v182 + 246) = v335;
    *(v182 + 242) = v187;
    *(v182 + 248) = 0;
    *(v182 + 256) = 0;
    *(v182 + 88) = v181;
    *(v182 + 264) = 0;
    *(v182 + 96) = 0;
    v188 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v182;
    outlined init with copy of ReferenceResolutionClientProtocol(v323, v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
    v189 = v269;
    v190 = v269[3];
    v191 = *(*v269 + 152);
    v192 = swift_unknownObjectRetain();
    v193 = v191(v192);
    outlined init with copy of ReferenceResolutionClientProtocol((v189 + 4), &v316);
    v194 = *(v109 + v188);
    v195 = v265;
    v196 = swift_allocObject();
    v197 = v273;
    v276 = v273;

    *(v196 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
    v314 = &type metadata for IntelligenceFlowFeatureFlag;
    v315 = v264;
    LOBYTE(v191) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(&v313);
    *(v196 + 17) = v191 & 1;
    type metadata accessor for ConversationOutputSubmitter();
    v198 = swift_allocObject();
    v315 = &protocol witness table for FeatureChecker;
    v314 = v195;
    *&v313 = v196;
    v199 = swift_allocObject();
    v200 = MEMORY[0x1E69E7CC0];
    *(v199 + 16) = MEMORY[0x1E69E7CC0];
    v201 = swift_allocObject();
    *(v201 + 16) = 0;
    *(v199 + 24) = v201;
    *(v198 + 16) = v199;
    *(v198 + 88) = 0;
    *(v198 + 80) = 0;
    *(v198 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v200);
    *(v198 + 104) = 30000000000;
    *(v198 + 24) = v190;
    *(v198 + 72) = v193 & 1;
    swift_beginAccess();
    v202 = *(v198 + 80);
    *(v198 + 80) = v197;

    outlined init with take of ReferenceResolutionClientProtocol(&v316, v198 + 32);
    swift_beginAccess();
    v203 = *(v198 + 88);
    *(v198 + 88) = v194;

    outlined init with take of ReferenceResolutionClientProtocol(&v313, v198 + 112);
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v198;
    v204 = v303;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = v302;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = v204;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = v309;
    outlined init with copy of ReferenceResolutionClientProtocol(v322, v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = v308;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = v270 & 1;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = v280;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = v306;
    outlined init with copy of ReferenceResolutionClientProtocol(v321, v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
    outlined init with copy of ReferenceResolutionClientProtocol(v320, v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = v197;
    v205 = v294;
    (v296)(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v294, v305);
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = v277 & 1;
    v266(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState, v291, v274);
    outlined init with copy of ReferenceResolutionClientProtocol(v319, v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
    v206 = v271;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = v271;
    v207 = *(*v206 + 224);

    v276 = v276;

    v208 = v309;
    swift_unknownObjectRetain();
    v207(v301, v307, v295);
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = v275;
    v209 = v205;
    v210 = v208;
    v211 = v296;
    if (one-time initialization token for sharedInstance != -1)
    {
      swift_once();
    }

    v212 = static DeviceContextHelper.sharedInstance;
    v213 = (v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
    v302 = type metadata accessor for DeviceContextHelper();
    v303 = v212;
    v213[3] = v302;
    v213[4] = &protocol witness table for DeviceContextHelper;
    *v213 = v212;
    type metadata accessor for ConversationBridgeProcessorDelegate();
    v214 = swift_allocObject();
    swift_weakInit();
    *(v214 + 24) = v210;
    *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v214;
    if (v277)
    {
      v215 = v303;
      v216 = v286;
      if (!v273)
      {
        v255 = one-time initialization token for conversationBridge;
        swift_unknownObjectRetain();

        if (v255 != -1)
        {
          swift_once();
        }

        v256 = type metadata accessor for Logger();
        __swift_project_value_buffer(v256, static Logger.conversationBridge);
        v257 = Logger.logObject.getter();
        v258 = static os_log_type_t.error.getter();
        v259 = os_log_type_enabled(v257, v258);
        v236 = v310;
        v231 = v285;
        v233 = v301;
        if (v259)
        {
          v260 = swift_slowAlloc();
          *v260 = 0;
          _os_log_impl(&dword_1DC659000, v257, v258, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v260, 2u);
          MEMORY[0x1E12A2F50](v260, -1, -1);
        }

        v226 = 0;
        v235 = 0;
        v234 = 0;
        v230 = v307;
        v232 = v283;
        v219 = v284;
        v216 = v286;
        goto LABEL_76;
      }

      v217 = v276;
      swift_unknownObjectRetain();

      v277 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
      specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
      v296 = v218;

      v219 = v284;
    }

    else
    {
      v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
      v220 = v304;
      v273 = *(v304 + 72);
      v221 = (*(v304 + 80) + 32) & ~*(v304 + 80);
      v222 = swift_allocObject();
      v271 = xmmword_1DCA66060;
      *(v222 + 16) = xmmword_1DCA66060;
      v223 = v305;
      v211(v222 + v221, v209, v305);
      swift_unknownObjectRetain();

      v277 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v222);
      swift_setDeallocating();
      v224 = *(v220 + 8);
      v224(v222 + v221, v223);
      swift_deallocClassInstance();
      v225 = swift_allocObject();
      *(v225 + 16) = v271;
      v211(v225 + v221, v294, v223);
      v296 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v225);
      swift_setDeallocating();
      v224(v225 + v221, v223);
      swift_deallocClassInstance();
      v219 = v284;
      v216 = v286;
      v215 = v303;
    }

    v226 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(v322, &v316);
    outlined init with copy of ReferenceResolutionClientProtocol(v321, &v313);
    outlined init with copy of ReferenceResolutionClientProtocol(v320, v312);
    v227 = v309;
    ObjectType = swift_getObjectType();
    v311 = v215;
    v229 = v308;

    swift_unknownObjectRetain();

    v230 = v307;

    v231 = v285;

    v262 = ObjectType;
    *&v261 = v229;
    *(&v261 + 1) = v277;
    v232 = v283;
    v233 = v301;
    v234 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v316, &v313, v312, v227, v283, v219, v301, v230, v216, v231, &v311, v261, v296, v226, v302, v262, &protocol witness table for DeviceContextHelper);
    v235 = &protocol witness table for MultiUserContextUpdater;
    v236 = v310;
LABEL_76:
    v237 = (v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
    *v237 = v234;
    v237[1] = 0;
    v237[2] = 0;
    v237[3] = v226;
    v237[4] = v235;
    v278(v109 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v295, v236);
    outlined init with copy of ReferenceResolutionClientProtocol(v324, (v109 + 3));
    v109[12] = v232;
    v109[13] = v219;
    v109[8] = v233;
    v109[9] = v230;
    v109[10] = v216;
    v109[11] = v231;
    v109[2] = v309;
    v238 = *(v109 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
    swift_unknownObjectRetain();

    ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v319);
    v309 = v288[1];
    v309(v291, v274);
    v308 = *(v304 + 8);
    (v308)(v294, v305);
    __swift_destroy_boxed_opaque_existential_1Tm(v320);
    __swift_destroy_boxed_opaque_existential_1Tm(v321);
    __swift_destroy_boxed_opaque_existential_1Tm(v322);
    __swift_destroy_boxed_opaque_existential_1Tm(v323);
    __swift_destroy_boxed_opaque_existential_1Tm(v324);
    v239 = *(v300 + 8);
    v240 = v298;
    v239(v287, v298);
    v241 = *(v281 + 8);
    v241(v295, v236);
    v309(v293, v274);
    v242 = v305;
    v243 = v308;
    (v308)(v290, v305);
    __swift_destroy_boxed_opaque_existential_1Tm(v328);
    __swift_destroy_boxed_opaque_existential_1Tm(v329);
    __swift_destroy_boxed_opaque_existential_1Tm(v330);
    __swift_destroy_boxed_opaque_existential_1Tm(v331);
    __swift_destroy_boxed_opaque_existential_1Tm(&v337);
    v239(v292, v240);
    v241(v289, v310);
    __swift_destroy_boxed_opaque_existential_1Tm(&v339);
    v239(v297, v240);
    v243(v299, v242);
    __swift_destroy_boxed_opaque_existential_1Tm(&v341);
    __swift_destroy_boxed_opaque_existential_1Tm(v343);
    __swift_destroy_boxed_opaque_existential_1Tm(v325);
    v244 = direct field offset for ConversationBridge.isFirstRequestInSession;
    v245 = v282;
    swift_beginAccess();
    *(v245 + v244) = 0;
    return v109;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Logger.conversationBridge);
  v83 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v83, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_1DC659000, v83, v106, "UserId has not been set for current session", v107, 2u);
    MEMORY[0x1E12A2F50](v107, -1, -1);
  }

LABEL_37:

LABEL_38:
  __swift_destroy_boxed_opaque_existential_1Tm(&v341);
LABEL_39:
  __swift_destroy_boxed_opaque_existential_1Tm(v343);
LABEL_40:
  v108 = direct field offset for ConversationBridge.isFirstRequestInSession;
  swift_beginAccess();
  v109 = 0;
  *(v8 + v108) = 0;
  return v109;
}

uint64_t ConversationBridge.runSiriKitExecutorProcessor.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t partial apply for closure #1 in ConversationRequestAwareBridgeBase.handleMessage(_:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(*result + 16);
  v6 = (*result + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    result = swift_getObjectType();
  }

  while (v9 != result);
  *a2 = v7 != 0;
  return result;
}

uint64_t AnnounceContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ConversationBridge.isSystemAssistantExperienceEnabled.getter()
{
  v1 = direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationBridge.isMUXEnabled.getter()
{
  v1 = direct field offset for ConversationBridge.isMUXEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationBridge.userSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ConversationBridge.userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

uint64_t ManagedContinuation.resume(returning:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for Result();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(*(v3 - 8) + 16))(&v10 - v7, a1, v3);
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DC66F280()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t InterruptibleTaskManager.perform<A>(_:)()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  swift_beginAccess();
  v6 = specialized Dictionary._Variant.removeValue(forKey:)();
  swift_endAccess();
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v6);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](InterruptibleTaskManager.perform<A>(_:), v2, 0);
}

uint64_t protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl()
{
  return (*(v0 + 8))();
}

{
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, 0, 0);
}

{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, 0, 0, 0xD00000000000001ELL, 0x80000001DCA7C2F0, closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed()partial apply, v3, v4);
}

{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v6, v1, v1, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), v2, v1);
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)()
{
  v1 = v0[11];
  v2 = *(v1 + 48);
  v0[18] = v2;
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = one-time initialization token for executor;
    swift_unknownObjectRetain();
    if (v4 != -1)
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
      _os_log_impl(&dword_1DC659000, v6, v7, "RemoteConversation is active", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[8];
    v11 = v0[9];

    v13 = *(v9 + 88);
    v14 = swift_allocObject();
    v0[19] = v14;
    v14[2] = v10;
    v14[3] = v12;
    v14[4] = v11;
    v14[5] = v2;
    v14[6] = v3;
    swift_unknownObjectRetain();

    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
    v16 = v0[16];
    v17 = v0[10];

    return InterruptibleTaskManager.perform<A>(_:)(v16, &async function pointer to partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v14, v17);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "RemoteConversation is invalid, will reconnect", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v23 = v0[11];

    if (*(v23 + 64))
    {
      v24 = *(v23 + 64);
    }

    else
    {
      v25 = v0[11];
      v26 = v0[12];
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
      v28 = static MessageBusActor.shared;
      v29 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
      v30 = swift_allocObject();
      v30[2] = v28;
      v30[3] = v29;
      v30[4] = v25;

      v24 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime18RemoteConversation_p_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v30);
      v31 = *(v23 + 64);
      *(v23 + 64) = v24;
      swift_retain_n();
    }

    v0[22] = v24;
    v32 = *(MEMORY[0x1E69E86A8] + 4);
    swift_retain_n();
    v33 = swift_task_alloc();
    v0[23] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pMd, &_s14SiriKitRuntime18RemoteConversation_pMR);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v33 = v0;
    v33[1] = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
    v36 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 5, v24, v34, v35, v36);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 136);

    v5 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[7];

  InterruptibleTaskResult.get()(v4, v5);
  v6 = v0[18];
  (*(v0[14] + 8))(v0[16], v0[13]);
  swift_unknownObjectRelease();
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 136);

  if (v0)
  {
    v7 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v7 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[6];
  v0[25] = v5;
  v7 = v1[8];
  v1[8] = 0;

  v8 = v1[6];
  v1[6] = v5;
  v1[7] = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9 = v1[11];
  v10 = swift_allocObject();
  v0[26] = v10;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v5;
  v10[6] = v6;

  swift_unknownObjectRetain();
  v11 = swift_task_alloc();
  v0[27] = v11;
  *v11 = v0;
  v11[1] = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  v12 = v0[15];
  v13 = v0[10];

  return InterruptibleTaskManager.perform<A>(_:)(v12, &async function pointer to partial apply for closure #3 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v10, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 136);

  if (v0)
  {
    v7 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v7 = SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[7];

  InterruptibleTaskResult.get()(v4, v5);
  v6 = v0[25];
  v7 = v0[22];
  (*(v0[14] + 8))(v0[15], v0[13]);

  swift_unknownObjectRelease();
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];

  swift_unknownObjectRelease();
  v4 = v0[21];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[22];
  v2 = v0[17];

  v3 = v0[24];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[17];

  swift_unknownObjectRelease();

  v4 = v0[28];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DC66FB70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *initializeWithCopy for InterruptibleTaskResult(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 3;
  if (v5 < 3)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 3;
  v5 = v8 + 3;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 2)
  {
    v13 = *a2;
    v14 = *a2;
    *a1 = v13;
    v12 = 2;
  }

  else if (v5 == 1)
  {
    v10 = *a2;
    v11 = *a2;
    *a1 = v10;
    v12 = 1;
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v12 = 0;
  }

  *(a1 + v4) = v12;
  return a1;
}

void destroy for InterruptibleTaskResult(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    v3 = v6 + 3;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 2 || v3 == 1)
  {
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

uint64_t InterruptibleTaskResult.getOrNilIfInterrupted()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      return swift_willThrow();
    }

    else
    {
      (*(v4 + 8))(v7, a1);
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
    }
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 - 8);
    (*(v12 + 32))(a2, v7, v11);
    return (*(v12 + 56))(a2, 0, 1, v11);
  }
}

uint64_t CheckedContinuation.resume(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = type metadata accessor for Result();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in RemoteConversationClient.ensureReady()()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v17 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain_n();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *(v4 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.ensureReady();
    *(v4 + 24) = v3;
    v5 = *(MEMORY[0x1E69E8920] + 4);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = closure #1 in RemoteConversationClient.ensureReady();
    v7 = v0[2];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)specialized partial apply, v4, v8);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6552657275736E65, 0xED00002928796461, &v16);
      _os_log_impl(&dword_1DC659000, v10, v11, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = closure #1 in RemoteConversationClient.ensureReady();
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = closure #1 in RemoteConversationClient.ensureReady();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];

  swift_unknownObjectRelease();
  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t withCancellableContinuation<A>(body:)()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v14 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v14;
  }

  v9 = v5;
  v10 = (*(v8 + 56) + 16 * v5);
  v11 = *v10;
  v12 = v10[1];
  specialized _NativeDictionary._delete(at:)(v9, v8);
  *v1 = v8;
  return v11;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_3Tm_1(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v3 + 24));
  a1(*(v3 + 32));

  return a3(v3, a2, 7);
}

uint64_t objectdestroy_3Tm_2(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_3Tm_3()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1E12A23D0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1E12A23D0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t ManagedContinuation.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 96);
  type metadata accessor for Result();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t ManagedContinuation.__deallocating_deinit()
{
  ManagedContinuation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #2 in ManagedContinuation.updateState(continuation:result:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Result() - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return closure #2 in ManagedContinuation.updateState(continuation:result:)(v0 + v3, v6);
}

uint64_t closure #2 in ManagedContinuation.updateState(continuation:result:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(with:)(a2, v3);
}

uint64_t ManagedContinuation.resume(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for Result();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CheckedContinuation();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(*(v10 - 8) + 56))(&v18 - v14, 1, 1, v10);
  v16 = *(v4 - 8);
  (*(v16 + 16))(v9, a1, v4);
  (*(v16 + 56))(v9, 0, 1, v4);
  ManagedContinuation.updateState(continuation:result:)(v15, v9);
  (*(v6 + 8))(v9, v5);
  return (*(v12 + 8))(v15, v11);
}

Swift::Void __swiftcall ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(Swift::OpaquePointer activeTasks, Swift::OpaquePointer completedTasks)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37[-1] - v8;
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
    v36 = v9;
    v14 = v13;
    v15 = swift_slowAlloc();
    v37[0] = v15;
    *v14 = 136315394;
    v16 = type metadata accessor for Siri_Nlu_External_Task();
    v17 = MEMORY[0x1E12A16D0](activeTasks._rawValue, v16);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v37);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = MEMORY[0x1E12A16D0](completedTasks._rawValue, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v37);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v11, v12, "[ConversationService]: Registering ExecutionTaskContext with activeTasks: %s, completedTasks: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v15, -1, -1);
    v23 = v14;
    v9 = v36;
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v24 = v3[2];
  v3[2] = activeTasks._rawValue;

  v25 = v3[3];
  v3[3] = completedTasks._rawValue;

  if (v3[4])
  {
    v26 = v3[4];

    MEMORY[0x1E12A1950](v27, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  v29 = one-time initialization token for shared;

  if (v29 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v30 = static MessageBusActor.shared;
  v32 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v31, type metadata accessor for MessageBusActor);
  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = v32;
  v33[4] = v3;

  v34 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:), v33);
  v35 = v3[4];
  v3[4] = v34;
}

uint64_t closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:);
  }

  else
  {
    v6 = closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[6];

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
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
      _os_log_impl(&dword_1DC659000, v3, v4, "[ConversationService]: ExecutionTaskContext expired. Clearing it.", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = v0[5];

    (*(*v6 + 192))();
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = static ConversationService.ExecutionTaskContext.expirationInNanoSeconds;
  v2 = *(MEMORY[0x1E69E86C8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:);

  return MEMORY[0x1EEE6DA60](v1);
}

Swift::Void __swiftcall ConversationService.ExecutionTaskContext.clear()()
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
    _os_log_impl(&dword_1DC659000, v3, v4, "[ConversationService]: Clearing ExecutionTaskContext", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  v8 = *(v1 + 24);
  *(v1 + 24) = v7;
}

uint64_t sub_1DC671AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t destroy for SiriRequest(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = a2[5];
  v6 = type metadata accessor for Input();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a1 + a2[6]);

  v8 = *(a1 + a2[7]);

  v9 = (a1 + a2[8]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v9, v10);
  }

  v11 = *(a1 + a2[9]);

  v12 = *(a1 + a2[10]);

  v13 = *(a1 + a2[11]);

  v14 = a1 + a2[12];
  v15 = type metadata accessor for SiriRequestIdentities(0);
  result = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (!result)
  {
    v17 = type metadata accessor for IdentifiedUser();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14, 1, v17))
    {
      (*(v18 + 8))(v14, v17);
    }

    v20 = *(v15 + 20);
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = *(v14 + *(v15 + 24));
  }

  return result;
}

uint64_t CorrectionsUndoManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for AFServiceDeviceContext()
{
  result = lazy cache variable for type metadata for AFServiceDeviceContext;
  if (!lazy cache variable for type metadata for AFServiceDeviceContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFServiceDeviceContext);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t RemoteConversationService.executionDidComplete()()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.executionDidComplete(), v2, 0);
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
  v5[1] = RemoteConversationService.executionDidComplete();

  return v7();
}