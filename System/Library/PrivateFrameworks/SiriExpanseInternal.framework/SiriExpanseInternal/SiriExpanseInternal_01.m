Swift::Bool __swiftcall ScreenSharingCallManager.isScreenShareSupportingCallSalient()()
{
  ScreenSharingCallManager.getSalientScreenShareSupportingCall()(v2);
  v0 = v3 != 0;
  outlined destroy of SharingResponse?(v2, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
  return v0;
}

double ScreenSharingCallManager.getSalientScreenShareSupportingCall()@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(&v10, v3, v4);
  if (v11)
  {
    outlined init with take of ConversationParticipant(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    if ((*(v6 + 56))(v5, v6))
    {
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      if ((*(v8 + 160))(v7, v8))
      {
        outlined init with copy of ResponseExecuting(v12, a1);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        return result;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    outlined destroy of SharingResponse?(&v10, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ScreenSharingCallManager.getRemoteCallParticipantHandles()()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(&v27, v1, v2);
  if (!v28)
  {
    outlined destroy of SharingResponse?(&v27, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
    return MEMORY[0x277D84FA0];
  }

  outlined init with take of ConversationParticipant(&v27, v30);
  v3 = v31;
  v4 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v4 + 40))(&v24, v3, v4);
  if (!v25)
  {
    outlined destroy of SharingResponse?(&v24, &_s19SiriExpanseInternal12Conversation_pSgMd, &_s19SiriExpanseInternal12Conversation_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return MEMORY[0x277D84FA0];
  }

  outlined init with take of ConversationParticipant(&v24, &v27);
  v5 = v28;
  v6 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, v28);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v23;
    v10 = v7 + 32;
    do
    {
      outlined init with copy of ResponseExecuting(v10, &v24);
      v11 = v25;
      v12 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      v13 = (*(v12 + 8))(v11, v12);
      v14 = [v13 value];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      __swift_destroy_boxed_opaque_existential_1Tm(&v24);
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v23 + 16) = v19 + 1;
      v20 = v23 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v9);

  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v22;
}

BOOL protocol witness for ScreenSharingCallManaging.isScreenShareSupportingCallSalient() in conformance ScreenSharingCallManager()
{
  ScreenSharingCallManager.getSalientScreenShareSupportingCall()(v2);
  v0 = v3 != 0;
  outlined destroy of SharingResponse?(v2, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
  return v0;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t outlined consume of ShareSession?(uint64_t a1, uint64_t a2)
{
  if (a2 != 4)
  {
    return outlined consume of ShareSession(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of ShareSession(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingCallManager(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ScreenSharingCallManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D5EC9B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t OutputDialogFlow.execute()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return MEMORY[0x2822009F8](OutputDialogFlow.execute(), 0, 0);
}

uint64_t OutputDialogFlow.execute()()
{
  v1 = v0[9];
  v2 = v0[7];
  outlined init with copy of ResponseExecuting(v0[8] + 104, (v0 + 2));
  v3 = type metadata accessor for SimpleOutputFlowAsync();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  swift_retain_n();
  v0[2] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  *(swift_allocObject() + 16) = v1;
  static ExecuteResponse.complete<A>(next:childCompletion:)();

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in OutputDialogFlow.execute()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in OutputDialogFlow.execute(), 0, 0);
}

uint64_t closure #1 in OutputDialogFlow.execute()()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = PromptForValueFlowWrapper.execute();
  v4 = v0[2];

  return ResponseExecutor.execute(response:)(v4, v1 + 24);
}

void closure #2 in OutputDialogFlow.execute()(uint64_t a1)
{
  outlined init with copy of Result<Output, Error>(a1, v11);
  if (v12)
  {
    v1 = v11[0];
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.default);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11[0] = v8;
      *v6 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static OutputDialogFlow.typeName, unk_2800C05A0, v11);
      *(v6 + 12) = 2112;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v10;
      *v7 = v10;
      _os_log_impl(&dword_266B9E000, v4, v5, "%s: Ending flow silently due to error while producing output: %@", v6, 0x16u);
      outlined destroy of SharingResponse?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5ED340](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D5ED340](v8, -1, -1);
      MEMORY[0x26D5ED340](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of SharingResponse?(v11, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  }
}

uint64_t OutputDialogFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

unint64_t instantiation function for generic protocol witness table for OutputDialogFlow(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow()
{
  result = lazy protocol witness table cache variable for type OutputDialogFlow and conformance OutputDialogFlow;
  if (!lazy protocol witness table cache variable for type OutputDialogFlow and conformance OutputDialogFlow)
  {
    type metadata accessor for OutputDialogFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutputDialogFlow and conformance OutputDialogFlow);
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance OutputDialogFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return OutputDialogFlow.execute()(a1);
}

uint64_t _s19SiriExpanseInternal16OutputDialogFlowC8response0G8Executor15outputPublisherAcA15SharingResponse_p_AA0L9Executing_p0a3KitF00dJ5Async_ptcfCTf4nenn_nAA0lH0C_Tt2g5Tf4enn_n(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v10 = type metadata accessor for ResponseExecutor();
  v19[3] = v10;
  v19[4] = &protocol witness table for ResponseExecutor;
  v19[0] = a2;
  type metadata accessor for OutputDialogFlow();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  *(v11 + 88) = v10;
  *(v11 + 96) = &protocol witness table for ResponseExecutor;
  *(v11 + 64) = v17;
  *(v11 + 16) = 0;
  outlined init with take of ConversationParticipant(&v20, v11 + 24);
  outlined init with take of ConversationParticipant(a3, v11 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v11;
}

uint64_t partial apply for closure #1 in OutputDialogFlow.execute()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return closure #1 in OutputDialogFlow.execute()(a1, v1);
}

uint64_t outlined init with copy of Result<Output, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError()
{
  result = lazy protocol witness table cache variable for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError;
  if (!lazy protocol witness table cache variable for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError;
  if (!lazy protocol witness table cache variable for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharingVerb and conformance SharingVerb()
{
  result = lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb;
  if (!lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb;
  if (!lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb;
  if (!lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb;
  if (!lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb;
  if (!lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb;
  if (!lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingVerb and conformance SharingVerb);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SharingVerb(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1886352499;
  if (v2 != 1)
  {
    v3 = 1684956531;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6572616873;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1886352499;
  if (*a2 != 1)
  {
    v6 = 1684956531;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6572616873;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharingVerb()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SharingVerb()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharingVerb()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SharingVerb@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SharingVerb.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SharingVerb(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1886352499;
  if (v2 != 1)
  {
    v4 = 1684956531;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6572616873;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharingVerb()
{
  v1 = *v0;
  strcpy(v6, "SharingVerb.");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  v2 = 1886352499;
  if (v1 != 1)
  {
    v2 = 1684956531;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6572616873;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D5EC8A0](v3, v4);

  return v6[0];
}

unint64_t lazy protocol witness table accessor for type ConfirmationValue and conformance ConfirmationValue()
{
  result = lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue;
  if (!lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue;
  if (!lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue;
  if (!lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue;
  if (!lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue;
  if (!lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue;
  if (!lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationValue and conformance ConfirmationValue);
  }

  return result;
}

unint64_t ConfirmationValue.description.getter(char a1)
{
  _StringGuts.grow(_:)(20);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a1 == 1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7562617;
  }

  MEMORY[0x26D5EC8A0](v2, v3);

  return 0xD000000000000012;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConfirmationValue(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConfirmationValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConfirmationValue()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConfirmationValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConfirmationValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConfirmationValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ConfirmationValue(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562617;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance SharingVerb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t lazy protocol witness table accessor for type [SharingVerb] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized SharingVerb.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SharingVerb.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ConfirmationValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConfirmationValue.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata completion function for CATExecutionInfo(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATExecutionInfo(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 6)
  {
    v7 = 6;
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

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 6)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (((v15 >> 4) & 6) != 0)
      {
        return 8 - ((v15 >> 4) & 6 | (v15 >> 7));
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
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
        LODWORD(v9) = *a1 | (a1[2] << 16);
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

void storeEnumTagSinglePayload for CATExecutionInfo(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 6)
  {
    v8 = 6;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
  if (v7 > 6)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else if (a2 > 6)
  {
    *a1 = a2 - 7;
  }

  else
  {
    *a1 = 32 * (((-a2 >> 1) & 3) - 4 * a2);
  }
}

uint64_t static CATExecutionInfo<>.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = CATIdentifier.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == CATIdentifier.stringValue.getter(v2) && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(type metadata accessor for CATExecutionInfo() + 36);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <> CATExecutionInfo<A>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return static CATExecutionInfo<>.== infix(_:_:)(a1, a2);
}

uint64_t getEnumTagSinglePayload for CATIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 7)
  {
    goto LABEL_17;
  }

  if (a2 + 249 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 249) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 249;
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

      return (*a1 | (v4 << 8)) - 249;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 249;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 6 | (*a1 >> 7)) ^ 7;
  if (v6 >= 6)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CATIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 249 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 249) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 7)
  {
    v4 = 0;
  }

  if (a2 > 6)
  {
    v5 = ((a2 - 7) >> 8) + 1;
    *result = a2 - 7;
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
    *result = 32 * (((-a2 >> 1) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CATIdentifier.stringValue.getter(unsigned __int8 a1)
{
  if ((a1 & 0x80) != 0)
  {
    strcpy(v10, "Sharing#");
    BYTE1(v10[1]) = 0;
    WORD1(v10[1]) = 0;
    HIDWORD(v10[1]) = -402653184;
    v6 = SharingCATFamily.rawValue.getter(a1 & 0x7F);
  }

  else
  {
    v1 = a1;
    v2 = 0xE600000000000000;
    strcpy(v10, "ButtonLabels#");
    HIWORD(v10[1]) = -4864;
    v3 = 0x6C65636E6143;
    v4 = 0xE800000000000000;
    v5 = 0x7070416572616853;
    if (a1 != 2)
    {
      v5 = 0x7263536572616853;
      v4 = 0xEB000000006E6565;
    }

    if (a1)
    {
      v3 = 0x7041686372616553;
      v2 = 0xEE0065726F745370;
    }

    if (a1 <= 1u)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (v1 <= 1)
    {
      v7 = v2;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;
  }

  MEMORY[0x26D5EC8A0](v6, v8);

  return v10[0];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ButtonLabelsCATFamily()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ButtonLabelsCATFamily()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ButtonLabelsCATFamily()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ButtonLabelsCATFamily@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ButtonLabelsCATFamily.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ButtonLabelsCATFamily(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6C65636E6143;
  v4 = 0xE800000000000000;
  v5 = 0x7070416572616853;
  if (*v1 != 2)
  {
    v5 = 0x7263536572616853;
    v4 = 0xEB000000006E6565;
  }

  if (*v1)
  {
    v3 = 0x7041686372616553;
    v2 = 0xEE0065726F745370;
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

unint64_t SharingCATFamily.rawValue.getter(char a1)
{
  result = 0x6F486E4F6C6C6143;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 13:
    case 28:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6853746F6E6E6143;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
    case 25:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000023;
      break;
    case 14:
      result = 0xD000000000000029;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x45636972656E6547;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0x726154736465654ELL;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x6C61436E49746F4ELL;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    case 24:
    case 27:
      result = 0xD000000000000015;
      break;
    case 29:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingCATFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingCATFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLabelsCATFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonLabelsCATFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonLabelsCATFamily and conformance ButtonLabelsCATFamily()
{
  result = lazy protocol witness table cache variable for type ButtonLabelsCATFamily and conformance ButtonLabelsCATFamily;
  if (!lazy protocol witness table cache variable for type ButtonLabelsCATFamily and conformance ButtonLabelsCATFamily)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonLabelsCATFamily and conformance ButtonLabelsCATFamily);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SharingCATFamily(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SharingCATFamily.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SharingCATFamily.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharingCATFamily()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SharingCATFamily.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SharingCATFamily()
{
  SharingCATFamily.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharingCATFamily()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SharingCATFamily.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SharingCATFamily@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized SharingCATFamily.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SharingCATFamily@<X0>(unint64_t *a1@<X8>)
{
  result = SharingCATFamily.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SharingCATFamily and conformance SharingCATFamily()
{
  result = lazy protocol witness table cache variable for type SharingCATFamily and conformance SharingCATFamily;
  if (!lazy protocol witness table cache variable for type SharingCATFamily and conformance SharingCATFamily)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingCATFamily and conformance SharingCATFamily);
  }

  return result;
}

unint64_t specialized ButtonLabelsCATFamily.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ButtonLabelsCATFamily.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized SharingCATFamily.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

id LSPropertyList.contains(entitlement:)()
{
  v1 = Entitlement.rawValue.getter();
  v2 = MEMORY[0x26D5EC850](v1);

  type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v3 = [v0 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    outlined destroy of SharingResponse?(v9, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x26D5EC850]();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t specialized SharePlayHelper.appSupportsSharePlay(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Entitlement();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, static Logger.default);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharePlayHelper.typeName, *algn_2800C06D8, v37);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v37);
    _os_log_impl(&dword_266B9E000, v11, v12, "%s: Checking if %s supports SharePlay", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v14, -1, -1);
    MEMORY[0x26D5ED340](v13, -1, -1);
  }

  type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for LSBundleRecord, 0x277CC1E90);

  v15 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v35 = a1;
  v16 = v15;
  v17 = [v15 entitlements];

  v18 = v5[13];
  v18(v8, *MEMORY[0x277CFD108], v4);
  v19 = v17;
  LODWORD(v17) = LSPropertyList.contains(entitlement:)();
  v20 = v5[1];
  v20(v8, v4);
  v18(v8, *MEMORY[0x277CFD100], v4);
  v21 = LSPropertyList.contains(entitlement:)();
  v36 = v10;
  v22 = v21;
  v20(v8, v4);
  v18(v8, *MEMORY[0x277CFD0F8], v4);
  v23 = v19;
  v24 = v17;
  v25 = LSPropertyList.contains(entitlement:)();

  v20(v8, v4);
  v26 = v22;
  v34 = v24;
  v27 = v24 | v22 | v25;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v30 = 136316418;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharePlayHelper.typeName, *algn_2800C06D8, v37);
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, a2, v37);
    *(v30 + 22) = 1024;
    *(v30 + 24) = v27 & 1;
    *(v30 + 28) = 1024;
    *(v30 + 30) = v34 & 1;
    *(v30 + 34) = 1024;
    *(v30 + 36) = v26 & 1;
    *(v30 + 40) = 1024;
    *(v30 + 42) = v25 & 1;
    _os_log_impl(&dword_266B9E000, v28, v29, "%s: %s supports SharePlay: %{BOOL}d\nsupports public API: %{BOOL}d\nsupports deprecated public API %{BOOL}d\nsupports private API %{BOOL}d", v30, 0x2Eu);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v31, -1, -1);
    MEMORY[0x26D5ED340](v30, -1, -1);
  }

  return v27 & 1;
}

uint64_t type metadata accessor for LSBundleRecord(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError()
{
  result = lazy protocol witness table cache variable for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError;
  if (!lazy protocol witness table cache variable for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError;
  if (!lazy protocol witness table cache variable for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConfirmationContext.EntityConfirmationContext(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = a1[16];
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | *a1;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (a1[3])
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 | v7;
  if (a2[1])
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | *a2;
  if (a2[2])
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  if (a2[3])
  {
    v12 = 0x1000000;
  }

  else
  {
    v12 = 0;
  }

  return specialized static ConfirmationContext.EntityConfirmationContext.== infix(_:_:)(v5 | v8, v2, v3, v10 | v11 | v12, *(a2 + 1), a2[16]);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConfirmationContext.ScreenConfirmationContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v4)
  {
    if (!v6 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(v4, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v7)
    {
      return 1;
    }
  }

  else if ((v7 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConfirmationContext.AppConfirmationContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(v2, v4) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      return 1;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ConfirmationContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static ConfirmationContext.== infix(_:_:)(v5, v7);
}

uint64_t specialized static ConfirmationContext.EntityConfirmationContext.== infix(_:_:)(int a1, unint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if ((v8 & 0x100) == 0 && (v8 & 1) == 0 && (v8 & 0x10000) == 0 && (v8 & 0x1000000) == 0)
  {
    if (a2)
    {
      if (!a5)
      {
        return 0;
      }

      v9 = a6;
      v10 = a3;
      v11 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(a2, a5);
      a3 = v10;
      a6 = v9;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a5)
    {
      return 0;
    }

    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL specialized static ConfirmationContext.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 48);
  if (v10 >> 6)
  {
    if (v10 >> 6 != 1)
    {
      if ((a2[6] & 0xC0) != 0x80)
      {
        return 0;
      }

      v21 = v6 | (v7 << 8);
      v22 = a2[2];
      v23 = *(a2 + 24);
      if ((v5 != *a2 || v21 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if (!v22 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(v8, v22) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v22)
      {
        return 0;
      }

      if (v9)
      {
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v23)
      {
        return 0;
      }

      return 1;
    }

    if ((a2[6] & 0xC0) == 0x40)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      if (v5)
      {
        if (!v11 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(v5, *a2) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v6)
      {
        return (v12 & 1) != 0;
      }

      if ((v12 & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    v13 = *(a2 + 48);
    if (v13 > 0x3F)
    {
      return 0;
    }

    v2.i32[0] = *(a1 + 32);
    v25 = *(a1 + 40);
    v14 = *(a1 + 31);
    v15 = *(a1 + 29);
    v16 = *(a1 + 25);
    v17 = v6 | (v7 << 8);
    v18 = a2[2];
    v19 = a2[3];
    v3.i32[0] = *(a2 + 8);
    v20 = a2[5];
    if ((v5 != *a2 || v17 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v8 != v18 || ((v16 << 8) | ((v15 | (v14 << 16)) << 40) | v9) != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (vmaxv_u16(vcltz_s16(vshl_n_s16(veor_s8(*&vmovl_u8(v2), *&vmovl_u8(v3)), 0xFuLL))))
    {
      return 0;
    }

    if (v25)
    {
      if (!v20 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(v25, v20) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }

    if (v10)
    {
      if (v13)
      {
        return 1;
      }
    }

    else if ((v13 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void specialized static ConfirmationContext.getCurrentlySharedTarget(in:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 104))(v1, v2);
  v4 = v3;
  if (v3)
  {
    if ([v3 isWindowed])
    {
      lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ConfirmationContext.typeName, unk_2800C0710, &v10);
      _os_log_impl(&dword_266B9E000, v6, v7, "%s: The user is not currently sharing anything", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D5ED340](v9, -1, -1);
      MEMORY[0x26D5ED340](v8, -1, -1);
    }
  }
}

uint64_t destructiveInjectEnumTag for ConfirmationContext(uint64_t result, char a2)
{
  v2 = *(result + 48) & 1 | (a2 << 6);
  *(result + 32) &= 0x1010101uLL;
  *(result + 48) = v2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationContext.AppConfirmationContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for ConfirmationContext.AppConfirmationContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationContext.ScreenConfirmationContext(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for ConfirmationContext.ScreenConfirmationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationContext.EntityConfirmationContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ConfirmationContext.EntityConfirmationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000646CLL;
  v3 = 0x6F486E4F6C6C6163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000266BEE350;
    }

    else
    {
      v6 = 0x8000000266BEE370;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F486E4F6C6C6163;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v4)
    {
      v6 = 0xEA0000000000646CLL;
    }

    else
    {
      v6 = 0x8000000266BEE320;
    }
  }

  v7 = 0x8000000266BEE350;
  v8 = 0xD000000000000013;
  if (a2 == 2)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x8000000266BEE370;
  }

  if (!a2)
  {
    v3 = 0xD000000000000018;
    v2 = 0x8000000266BEE320;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0x6C65636E6143;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7070416572616853;
    }

    else
    {
      v4 = 0x7263536572616853;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB000000006E6565;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7041686372616553;
    }

    else
    {
      v4 = 0x6C65636E6143;
    }

    if (v3)
    {
      v5 = 0xEE0065726F745370;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7070416572616853;
  if (a2 != 2)
  {
    v8 = 0x7263536572616853;
    v7 = 0xEB000000006E6565;
  }

  if (a2)
  {
    v2 = 0x7041686372616553;
    v6 = 0xEE0065726F745370;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t ValidateCallStatusFlow.ValidationResult.ValidationFailureReason.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 == 4)
  {
    return 0xD00000000000001ELL;
  }

  _StringGuts.grow(_:)(36);

  v3 = 0xEA0000000000646CLL;
  v4 = 0x6F486E4F6C6C6163;
  v5 = 0x8000000266BEE350;
  v6 = 0xD000000000000013;
  if (v1 == 2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x8000000266BEE370;
  }

  if (!v1)
  {
    v4 = 0xD000000000000018;
    v3 = 0x8000000266BEE320;
  }

  if (v1 <= 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v1 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x26D5EC8A0](v7, v8);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ValidateCallStatusFlow.ValidationResult.ValidationFailureReason(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 4 && v2 == 4;
  if (v2 == 4 || v3 == 4)
  {
    return v4;
  }

  else
  {
    return specialized == infix<A>(_:_:)(v2, v3);
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ValidateCallStatusFlow.ValidationResult(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v3 == 4)
    {
      return 1;
    }
  }

  else if (v3 != 4 && (specialized == infix<A>(_:_:)(v2, v3) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ValidateCallStatusFlow.ValidationResult()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  if (v2 != 5)
  {
    _StringGuts.grow(_:)(33);
    MEMORY[0x26D5EC8A0](0xD00000000000001ELL, 0x8000000266BEEC10);
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v2);
    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0;
  }

  return v1;
}

uint64_t ValidateCallStatusFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](ValidateCallStatusFlow.execute(), 0, 0);
}

uint64_t ValidateCallStatusFlow.execute()()
{
  v41 = v0;
  v1 = v0[3];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = (*(v3 + 152))(v2, v3);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v9 = 136315906;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v10 = v0[3];
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateCallStatusFlow.typeName, *algn_2800C0728, &v39);
    *(v9 + 12) = 1024;
    v12 = v1[6];
    v11 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v12);
    *(v9 + 14) = (*(v11 + 56))(v12, v11) & 1;

    *(v9 + 18) = 2080;
    v13 = v1[6];
    v14 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v13);
    v15 = (*(v14 + 8))(v13, v14);
    v16 = TUCallStatus.description.getter(v15);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v39);

    *(v9 + 20) = v18;
    *(v9 + 28) = 2080;
    v19 = ScreenShareAvailability.description.getter(v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

    *(v9 + 30) = v21;
    _os_log_impl(&dword_266B9E000, v7, v8, "%s: Call/device allows screen sharing: %{BOOL}d, call status: %s -> derived screen sharing availability: %s", v9, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v37, -1, -1);
    MEMORY[0x26D5ED340](v9, -1, -1);
  }

  else
  {
    v22 = v0[3];
  }

  if (v4 == 5)
  {
    v23 = 4;
  }

  else
  {
    v23 = v4;
  }

  if (v4 == 4)
  {
    v24 = 5;
  }

  else
  {
    v24 = v23;
  }

  *(v0[3] + 16) = v24;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v29 = 0xD000000000000015;
    v30 = v0[3];
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateCallStatusFlow.typeName, *algn_2800C0728, &v38);
    *(v27 + 12) = 2080;
    v31 = *(v30 + 16);
    if (v31 == 5)
    {
      v32 = 0x8000000266BEEC30;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);
      MEMORY[0x26D5EC8A0](0xD00000000000001ELL, 0x8000000266BEEC10);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v31);
      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v29 = v39;
      v32 = v40;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &v38);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_266B9E000, v25, v26, "%s: Completing flow with exit value: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v28, -1, -1);
    MEMORY[0x26D5ED340](v27, -1, -1);
  }

  v34 = v0[2];
  static ExecuteResponse.complete()();
  v35 = v0[1];

  return v35();
}

uint64_t ValidateCallStatusFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for ValidateCallStatusFlow.ValidationResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 <= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v8 - 5;
  if (v7 < 4)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 + 1 >= 2)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ValidateCallStatusFlow.ValidationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ValidateCallStatusFlow.ValidationResult(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ValidateCallStatusFlow.ValidationResult(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance ValidateCallStatusFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return ValidateCallStatusFlow.execute()(a1);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized ValidateCallStatusFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateCallStatusFlow.typeName, *algn_2800C0728, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s - this flow should never receive input, ignoring it...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for ValidateCallStatusFlow.ValidationResult.ValidationFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
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
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ValidateCallStatusFlow.ValidationResult.ValidationFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ValidateCallStatusFlow.ValidationResult.ValidationFailureReason(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ValidateCallStatusFlow.ValidationResult.ValidationFailureReason(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t PromptForConfirmationFlowWrapper.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](PromptForConfirmationFlowWrapper.execute(), 0, 0);
}

uint64_t PromptForConfirmationFlowWrapper.execute()()
{
  v1 = *(v0[3] + 24);
  v2 = *(MEMORY[0x277D5B668] + 4);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = PromptForValueFlowWrapper.execute();
  v4 = v0[2];

  return MEMORY[0x2821BA060](v4);
}

uint64_t protocol witness for Flow.execute() in conformance PromptForConfirmationFlowWrapper<A>(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return PromptForConfirmationFlowWrapper.execute()(a1);
}

id one-time initialization function for bundle()
{
  type metadata accessor for DialogExecutor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static DialogExecutor.bundle = result;
  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DialogExecutor.DialogExecutorError()
{
  v1 = *v0;
  _StringGuts.grow(_:)(45);

  v2 = CATIdentifier.stringValue.getter(v1);
  MEMORY[0x26D5EC8A0](v2);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD00000000000002ALL;
}

uint64_t specialized DialogExecutor.execute(catId:parameters:globals:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 120) = a1;
  v4 = type metadata accessor for CATOption();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized DialogExecutor.execute(catId:parameters:globals:), 0, 0);
}

uint64_t specialized DialogExecutor.execute(catId:parameters:globals:)()
{
  type metadata accessor for CATDialog();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = static DialogExecutor.bundle;
  v3 = CATIdentifier.stringValue.getter(*(v0 + 120));
  v5 = v4;
  *(v0 + 96) = v4;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  static CATOption.defaultMode.getter();
  v6 = *(MEMORY[0x277D55CE0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = specialized DialogExecutor.execute(catId:parameters:globals:);
  v8 = *(v0 + 88);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);

  return MEMORY[0x2821B8050](v2, v3, v5, v9, v10, v0 + 16, v8);
}

{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t specialized DialogExecutor.execute(catId:parameters:globals:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *v2;
  v4[14] = v1;

  (*(v4[10] + 8))(v4[11], v4[9]);
  outlined destroy of CatCallable?((v4 + 2));
  if (v1)
  {

    return MEMORY[0x2822009F8](specialized DialogExecutor.execute(catId:parameters:globals:), 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1);
  }
}

uint64_t specialized DialogExecutor.executeAsLabel(catId:parameters:)(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 88) = a1;
  v3 = type metadata accessor for ResponseMode();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized DialogExecutor.executeAsLabel(catId:parameters:), 0, 0);
}

uint64_t specialized DialogExecutor.executeAsLabel(catId:parameters:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for CATGlobals();
  static CATGlobals.defaultBuilder()();
  static ResponseMode.displayOnly.getter();
  *(v0 + 48) = dispatch thunk of CATGlobals.Builder.withResponseMode(_:)();

  (*(v2 + 8))(v1, v3);
  v5 = objc_allocWithZone(v4);

  v6 = CATGlobals.init(builder:)();
  *(v0 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = specialized DialogExecutor.executeAsLabel(catId:parameters:);
  v8 = *(v0 + 16);
  v9 = *(v0 + 88);

  return specialized DialogExecutor.execute(catId:parameters:globals:)(v9, v8, v6);
}

{
  v1 = [*(v0 + 72) dialog];
  type metadata accessor for DialogElement();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D5ECB50](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = [v5 fullPrint];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);

    v13 = *(v0 + 8);

    return v13(v7, v9);
  }

LABEL_13:
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 88);

  lazy protocol witness table accessor for type DialogExecutor.DialogExecutorError and conformance DialogExecutor.DialogExecutorError();
  swift_allocError();
  *v17 = v16;
  swift_willThrow();

  v18 = *(v0 + 40);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 80);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t specialized DialogExecutor.executeAsLabel(catId:parameters:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = specialized DialogExecutor.executeAsLabel(catId:parameters:);
  }

  else
  {

    v5 = specialized DialogExecutor.executeAsLabel(catId:parameters:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t type metadata accessor for DialogElement()
{
  result = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogElement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DialogExecutor.DialogExecutorError and conformance DialogExecutor.DialogExecutorError()
{
  result = lazy protocol witness table cache variable for type DialogExecutor.DialogExecutorError and conformance DialogExecutor.DialogExecutorError;
  if (!lazy protocol witness table cache variable for type DialogExecutor.DialogExecutorError and conformance DialogExecutor.DialogExecutorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogExecutor.DialogExecutorError and conformance DialogExecutor.DialogExecutorError);
  }

  return result;
}

uint64_t outlined destroy of CatCallable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShareStatus.description.getter()
{
  if (!*(v0 + 32))
  {
    _StringGuts.grow(_:)(29);
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v9 = static ShareStatus.typeName;

    v18 = v9;
    MEMORY[0x26D5EC8A0](0xD000000000000018, 0x8000000266BEECD0);
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v16 = static ScreenShareType.typeName;
    v17 = *algn_2800C0348;

    MEMORY[0x26D5EC8A0](0x6E65657263732ELL, 0xE700000000000000);
    v7 = v16;
    v8 = v17;
    goto LABEL_11;
  }

  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) == 1)
  {

    _StringGuts.grow(_:)(44);
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v5 = static ShareStatus.typeName;

    v18 = v5;
    MEMORY[0x26D5EC8A0](0xD000000000000019, 0x8000000266BEECB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v6 = String.init<A>(describing:)();
    MEMORY[0x26D5EC8A0](v6);

    MEMORY[0x26D5EC8A0](0x656C646E7562202CLL, 0xEC000000203A6449);
    v7 = String.init<A>(describing:)();
LABEL_11:
    MEMORY[0x26D5EC8A0](v7, v8);

    v10 = 41;
    v11 = 0xE100000000000000;
    goto LABEL_12;
  }

  if (v4 | v1 | v2 | v3)
  {
    if (v2 == 1 && (v4 | v1 | v3) == 0)
    {
      _StringGuts.grow(_:)(20);
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      v15 = static ShareStatus.typeName;

      v18 = v15;
      v10 = 0xD000000000000012;
      v11 = 0x8000000266BEED10;
    }

    else
    {
      _StringGuts.grow(_:)(18);
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      v14 = static ShareStatus.typeName;

      v18 = v14;
      v11 = 0x8000000266BEECF0;
      v10 = 0xD000000000000010;
    }
  }

  else
  {
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v18 = static ShareStatus.typeName;

    v10 = 0x76697463616E692ELL;
    v11 = 0xE900000000000065;
  }

LABEL_12:
  MEMORY[0x26D5EC8A0](v10, v11);
  return v18;
}

uint64_t specialized static ShareStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v31[0] = v4;
  v31[1] = v3;
  v31[2] = v6;
  v31[3] = v5;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = v12;
  if (!v7)
  {
    if (!v12)
    {
      goto LABEL_32;
    }

LABEL_34:
    outlined copy of ShareStatus(v8, v9, v10, v11, v12);
    outlined destroy of (ShareStatus, ShareStatus)(v31);
    return 0;
  }

  if (v7 != 1)
  {
    if (v6 | v3 | v4 | v5)
    {
      if (v4 != 1 || v6 | v3 | v5)
      {
        if (v12 != 2 || v8 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v12 != 2 || v8 != 1)
      {
        goto LABEL_34;
      }

      if (v10 | v9 | v11)
      {
        goto LABEL_34;
      }
    }

    else if (v12 != 2 || v10 | v9 | v8 | v11)
    {
      goto LABEL_34;
    }

LABEL_32:
    outlined destroy of (ShareStatus, ShareStatus)(v31);
    return 1;
  }

  if (v12 != 1)
  {
    v19 = v8;
    v20 = v11;
    v21 = v9;
    v22 = v10;
    v23 = v12;

    LOBYTE(v12) = v23;
    v8 = v19;
    v10 = v22;
    v9 = v21;
    v11 = v20;
    goto LABEL_34;
  }

  if (v3)
  {
    if (!v9)
    {
      goto LABEL_33;
    }

    if (v4 != v8 || v3 != v9)
    {
      v13 = v8;
      v14 = v9;
      v15 = v10;
      v16 = v11;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v10 = v15;
      v9 = v14;
      v11 = v16;
      v18 = v17;
      v8 = v13;
      if ((v18 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_33;
  }

  if (!v5)
  {
    v25 = v11;
    outlined copy of ShareStatus(v8, v9, v10, v11, 1);
    outlined copy of ShareStatus(v4, v3, v6, 0, 1);

    outlined destroy of (ShareStatus, ShareStatus)(v31);
    if (v25)
    {

      return 0;
    }

    return 1;
  }

  if (!v11)
  {
LABEL_33:
    outlined copy of ShareStatus(v8, v9, v10, v11, 1);
    v8 = v4;
    v9 = v3;
    v10 = v6;
    v11 = v5;
    LOBYTE(v12) = 1;
    goto LABEL_34;
  }

  if (v6 == v10 && v5 == v11)
  {
    outlined copy of ShareStatus(v8, v9, v6, v5, 1);
    outlined copy of ShareStatus(v4, v3, v6, v5, 1);
    goto LABEL_32;
  }

  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of ShareStatus(v26, v27, v28, v29, 1);
  outlined copy of ShareStatus(v4, v3, v6, v5, 1);
  outlined destroy of (ShareStatus, ShareStatus)(v31);
  result = 1;
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal11ShareStatusO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ShareStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShareStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ShareStatus(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t outlined copy of ShareStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  return result;
}

uint64_t outlined destroy of (ShareStatus, ShareStatus)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareStatusO_ACtMd, &_s19SiriExpanseInternal11ShareStatusO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of Converter.convert(utils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return v13(a1, a2, a3, a4);
}

uint64_t type metadata completion function for ExpanseUIModelConverter.BinaryButtonSnippetModelConverter(void *a1)
{
  v2 = a1[10];
  v3 = a1[12];
  result = type metadata accessor for ExpanseUIModelConverter.ButtonModelConverter();
  if (v5 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v6 = a1[11];
    v7 = a1[13];
    result = type metadata accessor for ExpanseUIModelConverter.ButtonModelConverter();
    if (v8 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter.convert(utils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a1;
  return MEMORY[0x2822009F8](ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter.convert(utils:), 0, 0);
}

uint64_t ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter.convert(utils:)()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter.convert(utils:);

  return specialized DialogExecutor.executeAsLabel(catId:parameters:)(1, v1);
}

{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v0[2] = v0[12];
  v0[3] = v1;

  Loggable.init(wrappedValue:)();
  v5 = *(type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0) + 20);
  v0[4] = v3;
  v0[5] = v2;
  Loggable.init(wrappedValue:)();
  v6 = v0[1];

  return v6();
}

uint64_t ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter.convert(utils:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *v3;

  if (v2)
  {
    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;

    return MEMORY[0x2822009F8](ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter.convert(utils:), 0, 0);
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *MEMORY[0x277D85DE8];
  *(v6 + 145) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  *(v6 + 144) = a3;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:), 0, 0);
}

uint64_t specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)()
{
  v19 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = *(v0 + 96);
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type AppDialogParams and conformance AppDialogParams();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 64) = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v0 + 64];

  v10 = *(v0 + 64);
  if (v9)
  {
    v11 = v10;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      outlined consume of Data._Representation(v4, v6);
      v12 = *(v0 + 72);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = v10;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  outlined consume of Data._Representation(v4, v6);
LABEL_6:
  *(v0 + 112) = v12;
  v15 = swift_task_alloc();
  *(v0 + 120) = v15;
  *v15 = v0;
  v15[1] = specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:);
  v16 = *(v0 + 144);
  v17 = *MEMORY[0x277D85DE8];

  return specialized DialogExecutor.executeAsLabel(catId:parameters:)(v16, v12);
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 80);
  SharingDirectInvocation.toSAIntentGroupRunSiriKitExecutor(deviceState:)((*(v0 + 88) + 40), *(v0 + 145) & 1);
  *v3 = v1;
  v3[1] = v2;
  LODWORD(v1) = *(type metadata accessor for ExpanseUIModel.ButtonModel(0) + 20);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  CodableAceObject.init(wrappedValue:)();
  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

{
  v19 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type EmptyDialogParams and conformance EmptyDialogParams();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 48) = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v0 + 48];

  v10 = *(v0 + 48);
  if (v9)
  {
    v11 = v10;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      outlined consume of Data._Representation(v4, v6);
      v12 = *(v0 + 56);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = v10;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  outlined consume of Data._Representation(v4, v6);
LABEL_6:
  *(v0 + 80) = v12;
  v15 = *(v0 + 112);
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *v16 = v0;
  v16[1] = specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:);
  v17 = *MEMORY[0x277D85DE8];

  return specialized DialogExecutor.executeAsLabel(catId:parameters:)(v15, v12);
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  SharingDirectInvocation.toSAIntentGroupRunSiriKitExecutor(deviceState:)((*(v0 + 72) + 40), *(v0 + 113) & 1);
  *v3 = v1;
  v3[1] = v2;
  LODWORD(v1) = *(type metadata accessor for ExpanseUIModel.ButtonModel(0) + 20);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  CodableAceObject.init(wrappedValue:)();
  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 120);
  v9 = *v3;

  v10 = *(v6 + 112);

  if (v2)
  {
    v11 = *(v9 + 8);
    v12 = *MEMORY[0x277D85DE8];

    return v11();
  }

  else
  {
    *(v7 + 128) = a2;
    *(v7 + 136) = a1;
    v14 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:), 0, 0);
  }
}

{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 88);
  v9 = *v3;

  v10 = *(v6 + 80);

  if (v2)
  {
    v11 = *(v9 + 8);
    v12 = *MEMORY[0x277D85DE8];

    return v11();
  }

  else
  {
    *(v7 + 96) = a2;
    *(v7 + 104) = a1;
    v14 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:), 0, 0);
  }
}

uint64_t specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = *MEMORY[0x277D85DE8];
  *(v3 + 112) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:), 0, 0);
}

uint64_t specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:), 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:), 0, 0);
}

uint64_t specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:)()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = swift_task_alloc();
  v0[9] = v4;
  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *v4 = v0;
  v4[1] = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  v6 = v0[8];
  v7 = v0[3];

  return specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)(v6, v7, v5 | v2);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  else
  {
    v3 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[4];
  v2 = *(v1 + 18);
  v3 = *(v1 + 19);
  v4 = swift_task_alloc();
  v0[11] = v4;
  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *v4 = v0;
  v4[1] = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  v6 = v0[7];
  v7 = v0[3];

  return specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)(v6, v7, v5 | v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    outlined destroy of ExpanseUIModel.ButtonModel(*(v2 + 64));
    v4 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  else
  {
    v4 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[4];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  v7 = v0[8];
  v8 = v0[3];

  return specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)(v7, v8, v5, v3, v2, v4);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  else
  {
    v3 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[4];
  v2 = *(v1 + 41);
  v3 = *(v1 + 42);
  v4 = swift_task_alloc();
  v0[11] = v4;
  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *v4 = v0;
  v4[1] = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  v6 = v0[7];
  v7 = v0[3];

  return specialized ExpanseUIModelConverter.ButtonModelConverter.convert(utils:)(v6, v7, v5 | v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    outlined destroy of ExpanseUIModel.ButtonModel(*(v2 + 64));
    v4 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  else
  {
    v4 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  outlined init with copy of ExpanseUIModel.ButtonModel(v2, v3);
  Loggable.init(wrappedValue:)();
  outlined destroy of ExpanseUIModel.ButtonModel(v2);
  v5 = *(type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0) + 20);
  outlined init with copy of ExpanseUIModel.ButtonModel(v1, v3);
  Loggable.init(wrappedValue:)();
  outlined destroy of ExpanseUIModel.ButtonModel(v1);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t *ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  v5 = type metadata accessor for ExpanseUIModelConverter.ButtonModelConverter();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(*v0 + 120);
  v7 = *(v1 + 88);
  v8 = *(v1 + 104);
  v9 = type metadata accessor for ExpanseUIModelConverter.ButtonModelConverter();
  (*(*(v9 - 8) + 8))(v0 + v6, v9);
  return v0;
}

uint64_t ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.__deallocating_deinit()
{
  ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ExpanseUIModelConverter.ShareAppConfirmationSnippetModelConverter.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 43, 7);
}

uint64_t type metadata accessor for ExpanseUIModelConverter.ShareScreenConfirmationSnippetModelConverter(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpanseUIModelConverter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ExpanseUIModelConverter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for ExpanseUIModelConverter.ButtonModelConverter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for CATExecutionInfo();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpanseUIModelConverter.ButtonModelConverter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
      }

      v16 = *(a1 + v8);
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v8 != -1)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for ExpanseUIModelConverter.ButtonModelConverter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 6)
  {
    v8 = 6;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80);
  v11 = ((v10 + 1) & ~v10) + *(*(*(a4 + 16) - 8) + 64);
  v12 = v11 + 1;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v11 != -1)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_58:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v12] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_33;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v7 < 0xFE)
  {
    a1[v11] = a2 + 1;
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = &a1[v10 + 1] & ~v10;

    v24(v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v21 = ~(-1 << (8 * v11));
    }

    else
    {
      v21 = -1;
    }

    if (v11)
    {
      v22 = v21 & (~v8 + a2);
      if (v11 <= 3)
      {
        v23 = v11;
      }

      else
      {
        v23 = 4;
      }

      bzero(a1, v11);
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else
        {
          *a1 = v22;
        }
      }

      else if (v23 == 1)
      {
        *a1 = v22;
      }

      else
      {
        *a1 = v22;
      }
    }
  }
}

uint64_t ExpanseUIModelConverter.convert(utils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5;
  v7[2] = a1;
  if (a5)
  {
    if (a5 == 1)
    {
      v16 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
      v10 = swift_task_alloc();
      v7[4] = v10;
      *v10 = v7;
      v11 = ExpanseUIModelConverter.convert(utils:);
    }

    else
    {
      v16 = specialized ExpanseUIModelConverter.BinaryButtonSnippetModelConverter.convert(utils:);
      v10 = swift_task_alloc();
      v7[5] = v10;
      *v10 = v7;
      v11 = ExpanseUIModelConverter.convert(utils:);
    }

    v10[1] = v11;

    return v16(a1, a2);
  }

  else
  {
    v14 = swift_task_alloc();
    v7[3] = v14;
    *v14 = v7;
    v14[1] = ExpanseUIModelConverter.convert(utils:);

    return ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter.convert(utils:)(a1, v13, a3, a4);
  }
}

uint64_t ExpanseUIModelConverter.convert(utils:)()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](ExpanseUIModelConverter.convert(utils:), 0, 0);
  }
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](ExpanseUIModelConverter.convert(utils:), 0, 0);
  }
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](ExpanseUIModelConverter.convert(utils:), 0, 0);
  }
}

{
  v1 = *(v0 + 16);
  type metadata accessor for ExpanseUIModel(0);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 16);
  type metadata accessor for ExpanseUIModel(0);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t outlined destroy of ExpanseUIModel.ButtonModel(uint64_t a1)
{
  v2 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ExpanseUIModel.ButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EmptyDialogParams and conformance EmptyDialogParams()
{
  result = lazy protocol witness table cache variable for type EmptyDialogParams and conformance EmptyDialogParams;
  if (!lazy protocol witness table cache variable for type EmptyDialogParams and conformance EmptyDialogParams)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyDialogParams and conformance EmptyDialogParams);
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type AppDialogParams and conformance AppDialogParams()
{
  result = lazy protocol witness table cache variable for type AppDialogParams and conformance AppDialogParams;
  if (!lazy protocol witness table cache variable for type AppDialogParams and conformance AppDialogParams)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams and conformance AppDialogParams);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for ExpanseUIModelConverter.Utils(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ExpanseUIModelConverter.Utils(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ExpanseUIModelConverter.AppStorePunchoutSnippetModelConverter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for ParameterizedSharingResponse.parameters.getter in conformance Responses.StartSharing.AlreadySharingTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t protocol witness for SharingResponse.uiModelConverter.getter in conformance Responses.StartSharing.AppNotInstalled(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  return v3;
}

double protocol witness for SharingResponse.uiModelConverter.getter in conformance Responses.StartSharing.ConfirmShareWithEveryoneInCall()
{
  type metadata accessor for ExpanseUIModelConverter.ShareScreenConfirmationSnippetModelConverter(0);
  v0 = swift_allocObject();
  *&result = 16777219;
  *(v0 + 16) = 16777219;
  return result;
}

uint64_t Responses.StartSharing.ConfirmReadyToShare.uiModelConverter.getter()
{
  v1 = v0 + *(type metadata accessor for Responses.StartSharing.ConfirmReadyToShare(0) + 28);
  if (*v1 == 1)
  {
    type metadata accessor for ExpanseUIModelConverter.ShareScreenConfirmationSnippetModelConverter(0);
    result = swift_allocObject();
    *(result + 16) = 16777219;
  }

  else
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    type metadata accessor for ExpanseUIModelConverter.ShareAppConfirmationSnippetModelConverter(0);
    v5 = swift_allocObject();
    *(v5 + 16) = 2;
    *(v5 + 24) = v4;
    *(v5 + 32) = v3;
    *(v5 + 40) = 0;
    *(v5 + 42) = 1;

    return v5;
  }

  return result;
}

uint64_t protocol witness for ParameterizedSharingResponse.parameters.getter in conformance Responses.StartSharing.ConfirmShareWithEveryoneInCall@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

void type metadata accessor for NLContextUpdate?()
{
  if (!lazy cache variable for type metadata for NLContextUpdate?)
  {
    type metadata accessor for NLContextUpdate();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NLContextUpdate?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DialogPhase();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 16);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DialogPhase();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 16) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_266BC1030(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DialogPhase();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[7]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_266BC1168(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DialogPhase();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void type metadata completion function for Responses.StartSharing.ConfirmShareWithEveryoneInCall()
{
  type metadata accessor for DialogPhase();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NLContextUpdate?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_266BC1350(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 6)
  {
    v4 = *a1;
    if (((v4 >> 4) & 6) != 0)
    {
      return 8 - ((v4 >> 4) & 6 | (v4 >> 7));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DialogPhase();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_266BC149C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 6)
  {
    *result = 32 * (((-a2 >> 1) & 3) - 4 * a2);
  }

  else
  {
    v8 = type metadata accessor for DialogPhase();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for Responses.StartSharing.NeedsTarget()
{
  type metadata accessor for DialogPhase();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NLContextUpdate?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_266BC1744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DialogPhase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_266BC181C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DialogPhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for Responses.StartSharing.AppNotInstalled()
{
  result = type metadata accessor for DialogPhase();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_53Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DialogPhase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_54Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DialogPhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 6)
  {
    v4 = *a1;
    if (((v4 >> 4) & 6) != 0)
    {
      return 8 - ((v4 >> 4) & 6 | (v4 >> 7));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DialogPhase();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 6)
  {
    *result = 32 * (((-a2 >> 1) & 3) - 4 * a2);
  }

  else
  {
    v7 = type metadata accessor for DialogPhase();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for Responses.Common.NotInCall()
{
  result = type metadata accessor for DialogPhase();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266BC1F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DialogPhase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_266BC207C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DialogPhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for Responses.StartSharing.AlreadySharingTarget()
{
  result = type metadata accessor for DialogPhase();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericErrorParams and conformance GenericErrorParams()
{
  result = lazy protocol witness table cache variable for type GenericErrorParams and conformance GenericErrorParams;
  if (!lazy protocol witness table cache variable for type GenericErrorParams and conformance GenericErrorParams)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams and conformance GenericErrorParams);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharingDialogParams and conformance SharingDialogParams()
{
  result = lazy protocol witness table cache variable for type SharingDialogParams and conformance SharingDialogParams;
  if (!lazy protocol witness table cache variable for type SharingDialogParams and conformance SharingDialogParams)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams and conformance SharingDialogParams);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConfirmationDialogParams and conformance ConfirmationDialogParams()
{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams and conformance ConfirmationDialogParams;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams and conformance ConfirmationDialogParams)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams and conformance ConfirmationDialogParams);
  }

  return result;
}

uint64_t protocol witness for SharingResponse.dialogPhase.getter in conformance Responses.StartSharing.AlreadySharingTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for DialogPhase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for SharingResponse.nlContextUpdate.getter in conformance Responses.StartSharing.AlreadySharingTarget@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NLContextUpdate();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t String.localizedAppDisplayName.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v5 = type metadata accessor for AppInformationResolver();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  AppInformationResolver.init(app:)();
  static Locale.current.getter();
  v8 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  if (v10)
  {

    v11 = v8 & 0xFFFFFFFFFFFFLL;
    v12 = v10;
  }

  else
  {

    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11;
  }

  if (!v13)
  {

    return 0;
  }

  return v8;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CATIdentifier(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = CATIdentifier.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == CATIdentifier.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t DismissSiriFlow.execute()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for AceOutput();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](DismissSiriFlow.execute(), 0, 0);
}

uint64_t DismissSiriFlow.execute()()
{
  v21 = v0;
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266BEA060;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  AceOutput.init(commands:flowActivity:)();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v3, static Logger.default);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v19[0] = v7;
    *v6 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static DismissSiriFlow.typeName, unk_2800C0A80, v19);
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: Dismissing Siri", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D5ED340](v7, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v10[5];
  v13 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v12);
  v14 = MEMORY[0x277D5C1D8];
  v0[5] = v11;
  v0[6] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v9 + 16))(boxed_opaque_existential_1, v8, v11);
  v16 = *(MEMORY[0x277D5BF40] + 4);
  v17 = swift_task_alloc();
  v0[13] = v17;
  *v17 = v0;
  v17[1] = DismissSiriFlow.execute();

  return MEMORY[0x2821BB5D0](v0 + 2, v12, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = DismissSiriFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = DismissSiriFlow.execute();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  static ExecuteResponse.complete()();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

{
  v20 = v0;
  v1 = v0[14];
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v9 = v0[14];
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static DismissSiriFlow.typeName, unk_2800C0A80, &v19);
    *(v6 + 12) = 2112;
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: Error publishing SAUICloseAssistant command: %@", v6, 0x16u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x26D5ED340](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);
  }

  else
  {
    v12 = v0[14];
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];
  v16 = v0[7];
  static ExecuteResponse.complete()();
  (*(v14 + 8))(v13, v15);

  v17 = v0[1];

  return v17();
}

uint64_t DismissSiriFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for Flow.execute() in conformance DismissSiriFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return DismissSiriFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance DismissSiriFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissSiriFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedShareTarget(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResolvedShareTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ResolvedShareTarget(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t destructiveInjectEnumTag for ResolvedShareTarget(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

unint64_t ResolvedShareTarget.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    return 0xD000000000000047;
  }

  _StringGuts.grow(_:)(53);
  MEMORY[0x26D5EC8A0](0xD000000000000022, 0x8000000266BEEEA0);
  MEMORY[0x26D5EC8A0](a1, a2);
  MEMORY[0x26D5EC8A0](0x6469666E6F63202CLL, 0xEE00203A65636E65);
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(a3);
  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0;
}

BOOL specialized static ResolvedShareTarget.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a2)
  {
    return !a5;
  }

  if (!a5)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5 || (v6 = a3, v7 = a6, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v6, a6 = v7, v9 = v8, result = 0, (v9 & 1) != 0))
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return 1;
      }
    }

    else if (a6 != 2)
    {
      if (a3)
      {
        v11 = 0xD000000000000012;
      }

      else
      {
        v11 = 0xD00000000000001FLL;
      }

      if (a3)
      {
        v12 = "conflictingAppNameAndEntityType";
      }

      else
      {
        v12 = "ation";
      }

      if (a6)
      {
        v13 = 0xD000000000000012;
      }

      else
      {
        v13 = 0xD00000000000001FLL;
      }

      if (a6)
      {
        v14 = "conflictingAppNameAndEntityType";
      }

      else
      {
        v14 = "ation";
      }

      if (v11 == v13 && (v12 | 0x8000000000000000) == (v14 | 0x8000000000000000))
      {

        return 1;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized Sharer.enableSharingOf(target:in:)(void *a1)
{
  if (one-time initialization token for fullScreenAttributes != -1)
  {
    swift_once();
  }

  v2 = static TUCallScreenShareAttributes.fullScreenAttributes;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  if ((*(v4 + 72))(v3, v4))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.default);
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v9 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static Sharer.typeName, *algn_2800C0A98, &v26);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v12 = v6;
      _os_log_impl(&dword_266B9E000, v7, v8, "%s: Local participant already sharing - replacing attributes with %@", v9, 0x16u);
      outlined destroy of NSObject?(v10);
      MEMORY[0x26D5ED340](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D5ED340](v11, -1, -1);
      MEMORY[0x26D5ED340](v9, -1, -1);
    }

    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    return (*(v14 + 112))(v6, v13, v14);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.default);
    v17 = v2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v20 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static Sharer.typeName, *algn_2800C0A98, &v26);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v17;
      v23 = v17;
      _os_log_impl(&dword_266B9E000, v18, v19, "%s: Enabling screen sharing with attributes %@", v20, 0x16u);
      outlined destroy of NSObject?(v21);
      MEMORY[0x26D5ED340](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D5ED340](v22, -1, -1);
      MEMORY[0x26D5ED340](v20, -1, -1);
    }

    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    return (*(v25 + 128))(v17, v24, v25);
  }
}

uint64_t specialized Sharer.setScreenSharingEnabled(_:for:in:)(char a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315650;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static Sharer.typeName, *algn_2800C0A98, &v15);
    *(v7 + 12) = 2080;
    if (a1)
    {
      v9 = 0x676E696C62616E45;
    }

    else
    {
      v9 = 0x6E696C6261736944;
    }

    if (a1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE900000000000067;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v15);
    _os_log_impl(&dword_266B9E000, v5, v6, "%s: %s sharing of %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v7, -1, -1);
  }

  if (a1)
  {

    return specialized Sharer.enableSharingOf(target:in:)(a2);
  }

  else
  {
    v13 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v13);
    return (*(v14 + 136))(v13, v14);
  }
}

uint64_t protocol witness for ActivitySession.bundleId.getter in conformance TUConversationActivitySession()
{
  v1 = [*v0 activity];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for ActivitySession.sceneId.getter in conformance TUConversationActivitySession()
{
  v1 = [*v0 persistentSceneIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for ActivitySession.isScreenSharingActivitySession.getter in conformance TUConversationActivitySession()
{
  v1 = [*v0 activity];
  v2 = [v1 isScreenSharingActivity];

  return v2;
}

uint64_t TUCallCenter.frontmostCall.getter@<X0>(void *a1@<X8>)
{
  *(swift_allocObject() + 16) = v1;
  v3 = objc_opt_self();
  v4 = v1;
  if (![v3 isMainThread])
  {
    type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v8 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6TUCallCSgMd, &_sSo6TUCallCSgMR);
    OS_dispatch_queue.sync<A>(execute:)();

    v5 = v9;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_6;
  }

  v5 = [v4 frontmostAudioOrVideoCall];

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for TUCall, 0x277D6EDE0);
  v7 = &protocol witness table for TUCall;
LABEL_6:
  *a1 = v5;
  a1[3] = result;
  a1[4] = v7;
  return result;
}

uint64_t sub_266BC3DBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id partial apply for closure #1 in TUCallCenter.frontmostCall.getter@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) frontmostAudioOrVideoCall];
  *a1 = result;
  return result;
}

void *partial apply for specialized closure #1 in static OS_dispatch_queue.executeOnMain<A>(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v6);
  *a1 = v6;
  return result;
}

uint64_t ResponseExecutor.execute(response:)(uint64_t a1, uint64_t a2)
{
  v3[245] = v2;
  v3[239] = a2;
  v3[233] = a1;
  v3[251] = *v2;
  v4 = type metadata accessor for ExpanseUIModel(0);
  v3[252] = v4;
  v5 = *(v4 - 8);
  v3[253] = v5;
  v6 = *(v5 + 64) + 15;
  v3[254] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal0B7UIModelOSgMd, &_s19SiriExpanseInternal0B7UIModelOSgMR);
  v3[255] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v3[258] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[259] = swift_task_alloc();
  v10 = type metadata accessor for DialogPhase();
  v3[260] = v10;
  v11 = *(v10 - 8);
  v3[261] = v11;
  v12 = *(v11 + 64) + 15;
  v3[262] = swift_task_alloc();
  v3[263] = swift_task_alloc();
  v13 = type metadata accessor for OutputGenerationManifest();
  v3[264] = v13;
  v14 = *(v13 - 8);
  v3[265] = v14;
  v15 = *(v14 + 64) + 15;
  v3[266] = swift_task_alloc();

  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

uint64_t ResponseExecutor.execute(response:)()
{
  v41 = *(v0 + 2128);
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 2080);
  v5 = *(v0 + 2072);
  v40 = *(v0 + 2008);
  v6 = *(v0 + 1912);
  v8 = v6[3];
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  (*(v7 + 16))(v8, v7);
  v9 = v6[3];
  v10 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v9);
  (*(v10 + 24))(v9, v10);
  (*(v3 + 16))(v2, v1, v4);
  v11 = swift_task_alloc();
  v11[2] = v1;
  v11[3] = v5;
  v11[4] = v40;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined destroy of SharingResponse?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v3 + 8))(v1, v4);
  v12 = (v0 + 1496);
  outlined init with copy of ResponseExecuting(v6, v0 + 1416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15SharingResponse_pMd, &_s19SiriExpanseInternal15SharingResponse_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal28ParameterizedSharingResponse_pMd, &_s19SiriExpanseInternal28ParameterizedSharingResponse_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ConversationParticipant(v12, v0 + 1336);
    v13 = *(v0 + 1360);
    v14 = *(v0 + 1368);
    __swift_project_boxed_opaque_existential_1((v0 + 1336), v13);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16 = *(AssociatedTypeWitness - 8);
    v17 = *(v16 + 64) + 15;
    v18 = swift_task_alloc();
    (*(v14 + 32))(v13, v14);
    swift_getAssociatedConformanceWitness();
    v19 = Encodable.asDictionary()();
    (*(v16 + 8))(v18, AssociatedTypeWitness);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));
  }

  else
  {
    *(v0 + 1528) = 0;
    *v12 = 0u;
    *(v0 + 1512) = 0u;
    outlined destroy of SharingResponse?(v12, &_s19SiriExpanseInternal28ParameterizedSharingResponse_pSgMd, &_s19SiriExpanseInternal28ParameterizedSharingResponse_pSgMR);
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v20 = *(v0 + 1960);
  v21 = *(v0 + 1912);
  outlined init with copy of ResponseExecuting(v21, v0 + 1576);
  v22 = swift_allocObject();
  *(v0 + 2136) = v22;
  *(v22 + 16) = v20;
  outlined init with take of ConversationParticipant((v0 + 1576), v22 + 24);
  *(v22 + 64) = v19;

  type metadata accessor for DialogExecutionResult();
  swift_asyncLet_begin();
  v24 = v6[3];
  v23 = v6[4];
  __swift_project_boxed_opaque_existential_1(v21, v24);
  v25 = (*(v23 + 32))(v24, v23);
  *(v0 + 2144) = v25;
  *(v0 + 2152) = v26;
  *(v0 + 2264) = v27;
  if (v27 == -1)
  {
    outlined init with copy of ResponseExecuting(*(v0 + 1960) + 56, v0 + 1656);
    v37 = *(v0 + 1680);
    *(v0 + 2216) = v37;
    *(v0 + 2232) = __swift_project_boxed_opaque_existential_1((v0 + 1656), v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v38 = swift_allocObject();
    *(v0 + 2240) = v38;
    *(v38 + 16) = xmmword_266BEA060;

    return MEMORY[0x282200930](v0 + 16, v0 + 1816, ResponseExecutor.execute(response:), v0 + 1296);
  }

  else
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
    v31 = *(v0 + 2064);
    v32 = *(v0 + 2040);
    v33 = *(v0 + 2008);
    v34 = *(v0 + 1960);
    v35 = swift_allocObject();
    *(v0 + 2160) = v35;
    *(v35 + 16) = v28;
    *(v35 + 24) = v29;
    *(v35 + 32) = v30;
    *(v35 + 40) = v34;
    *(v35 + 48) = v33;

    outlined copy of ExpanseUIModelConverter?(v28, v29, v30);
    swift_asyncLet_begin();
    v36 = *(v0 + 2064);

    return MEMORY[0x282200928](v0 + 656, v36, ResponseExecutor.execute(response:), v0 + 1536);
  }
}

{
  *(v1 + 2168) = v0;
  if (v0)
  {
    v2 = ResponseExecutor.execute(response:);
  }

  else
  {
    v2 = ResponseExecutor.execute(response:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v36 = v0;
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[253];
  v4 = v0[252];
  v5 = v0[227];
  v0[272] = v5;
  outlined init with copy of SharingResponse?(v1, v2, &_s19SiriExpanseInternal0B7UIModelOSgMd, &_s19SiriExpanseInternal0B7UIModelOSgMR);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v6 = v0[256];
    v7 = v5;
    outlined destroy of SharingResponse?(v6, &_s19SiriExpanseInternal0B7UIModelOSgMd, &_s19SiriExpanseInternal0B7UIModelOSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.default);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ResponseExecutor.typeName, *algn_2800C0AC8, &v35);
      _os_log_impl(&dword_266B9E000, v9, v10, "%s: Response contained a UI model generator but generation failed -> the response will not contain the desired UI", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D5ED340](v12, -1, -1);
      MEMORY[0x26D5ED340](v11, -1, -1);
    }

    v13 = v0[245];
    v14 = v13[10];
    v15 = v13[11];
    __swift_project_boxed_opaque_existential_1(v13 + 7, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    v0[275] = v16;
    *(v16 + 16) = xmmword_266BEA060;
    *(v16 + 32) = v7;
    v17 = *(MEMORY[0x277D5BE58] + 4);
    v18 = v7;
    v19 = swift_task_alloc();
    v0[276] = v19;
    *v19 = v0;
    v19[1] = ResponseExecutor.execute(response:);
    v20 = v0[266];
    v21 = v0[233];

    return MEMORY[0x2821BB488](v21, v16, v20, v14, v15);
  }

  else
  {
    v22 = v0[254];
    v23 = v0[252];
    v24 = v0[245];
    outlined init with take of ExpanseUIModel(v0[256], v22);
    v25 = v24[10];
    v26 = v24[11];
    __swift_project_boxed_opaque_existential_1(v24 + 7, v25);
    v0[220] = v23;
    v0[221] = lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type ExpanseUIModel and conformance ExpanseUIModel, type metadata accessor for ExpanseUIModel);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 217);
    outlined init with copy of ExpanseUIModel(v22, boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v28 = swift_allocObject();
    v0[273] = v28;
    *(v28 + 16) = xmmword_266BEA060;
    *(v28 + 32) = v5;
    v29 = *(MEMORY[0x277D5BE48] + 4);
    v30 = v5;
    v31 = swift_task_alloc();
    v0[274] = v31;
    *v31 = v0;
    v31[1] = ResponseExecutor.execute(response:);
    v32 = v0[266];
    v33 = v0[233];

    return MEMORY[0x2821BB478](v33, v0 + 217, v28, v32, v25, v26);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 2192);
  v3 = *(*v0 + 2184);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 1736));

  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2032);

  outlined destroy of ExpanseUIModel(v2);
  outlined destroy of SharingResponse?(v1, &_s19SiriExpanseInternal0B7UIModelOSgMd, &_s19SiriExpanseInternal0B7UIModelOSgMR);
  v3 = *(v0 + 2064);

  return MEMORY[0x282200920](v0 + 656, v3, ResponseExecutor.execute(response:), v0 + 1920);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  outlined consume of ExpanseUIModelConverter?(*(v0 + 2144), *(v0 + 2152), *(v0 + 2264));

  return MEMORY[0x282200920](v0 + 16, v0 + 1816, ResponseExecutor.execute(response:), v0 + 1968);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  v1 = *(*v0 + 2208);
  v2 = *(*v0 + 2200);
  v4 = *v0;

  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  v1 = *(v0 + 2056);

  outlined destroy of SharingResponse?(v1, &_s19SiriExpanseInternal0B7UIModelOSgMd, &_s19SiriExpanseInternal0B7UIModelOSgMR);
  v2 = *(v0 + 2064);

  return MEMORY[0x282200920](v0 + 656, v2, ResponseExecutor.execute(response:), v0 + 1824);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  outlined consume of ExpanseUIModelConverter?(*(v0 + 2144), *(v0 + 2152), *(v0 + 2264));

  return MEMORY[0x282200920](v0 + 16, v0 + 1816, ResponseExecutor.execute(response:), v0 + 1872);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  v1 = v0[270];
  v2 = v0[267];
  v3 = v0[263];
  v4 = v0[262];
  v5 = v0[259];
  v6 = v0[258];
  v7 = v0[257];
  v8 = v0[256];
  v11 = v0[254];
  (*(v0[265] + 8))(v0[266], v0[264]);

  _sxs5Error_pRi_zRi0_zly19SiriExpanseInternal0C7UIModelOSgIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #2 in ResponseExecutor.execute(response:));

  v9 = v0[1];

  return v9();
}

{
  *(v1 + 2248) = v0;
  if (v0)
  {
    v2 = ResponseExecutor.execute(response:);
  }

  else
  {
    v2 = ResponseExecutor.execute(response:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(*v0 + 2256);
  v2 = *(*v0 + 2240);
  v4 = *v0;

  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16, v0 + 1816, ResponseExecutor.execute(response:), v0 + 1456);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  v1 = v0[267];
  v2 = v0[263];
  v3 = v0[262];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[257];
  v7 = v0[256];
  v8 = v0[254];
  (*(v0[265] + 8))(v0[266], v0[264]);

  _sxs5Error_pRi_zRi0_zly19SiriExpanseInternal0C7UIModelOSgIsegHrzo_SgWOe(0);

  v9 = v0[1];

  return v9();
}

{
  outlined destroy of SharingResponse?(*(v0 + 2056), &_s19SiriExpanseInternal0B7UIModelOSgMd, &_s19SiriExpanseInternal0B7UIModelOSgMR);
  v1 = *(v0 + 2064);

  return MEMORY[0x282200920](v0 + 656, v1, ResponseExecutor.execute(response:), v0 + 1696);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  outlined consume of ExpanseUIModelConverter?(*(v0 + 2144), *(v0 + 2152), *(v0 + 2264));

  return MEMORY[0x282200920](v0 + 16, v0 + 1816, ResponseExecutor.execute(response:), v0 + 1776);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  v1 = v0[270];
  v2 = v0[267];
  v3 = v0[263];
  v4 = v0[262];
  v5 = v0[259];
  v6 = v0[258];
  v7 = v0[257];
  v8 = v0[256];
  v11 = v0[254];
  v12 = v0[271];
  (*(v0[265] + 8))(v0[266], v0[264]);

  _sxs5Error_pRi_zRi0_zly19SiriExpanseInternal0C7UIModelOSgIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #2 in ResponseExecutor.execute(response:));

  v9 = v0[1];

  return v9();
}

{
  *(*(v0 + 2240) + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16, v0 + 1816, ResponseExecutor.execute(response:), v0 + 1376);
}

{
  return MEMORY[0x2822009F8](ResponseExecutor.execute(response:), 0, 0);
}

{
  v11 = v0[281];
  v1 = v0[267];
  v2 = v0[263];
  v3 = v0[262];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[257];
  v7 = v0[256];
  v8 = v0[254];
  (*(v0[265] + 8))(v0[266], v0[264]);

  _sxs5Error_pRi_zRi0_zly19SiriExpanseInternal0C7UIModelOSgIsegHrzo_SgWOe(0);

  v9 = v0[1];

  return v9();
}

void ResponseExecutor.execute(response:)()
{
  outlined init with copy of SharingResponse?(*(v0 + 2064), *(v0 + 2056), &_s19SiriExpanseInternal0B7UIModelOSgMd, &_s19SiriExpanseInternal0B7UIModelOSgMR);

  JUMPOUT(0x266BE86D4);
}

{
  v1 = v0[227];
  *(v0[280] + 32) = v1;
  v2 = *(MEMORY[0x277D5BE58] + 4);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[282] = v4;
  *v4 = v0;
  v4[1] = ResponseExecutor.execute(response:);
  v5 = v0[280];
  v6 = v0[279];
  v7 = v0[278];
  v8 = v0[277];
  v9 = v0[266];
  v10 = v0[233];

  JUMPOUT(0x266BE7544);
}

uint64_t implicit closure #1 in ResponseExecutor.execute(response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](implicit closure #1 in ResponseExecutor.execute(response:), 0, 0);
}

uint64_t implicit closure #1 in ResponseExecutor.execute(response:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = *(v2 + 136);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = implicit closure #1 in ResponseExecutor.execute(response:);
  v8 = v0[5];

  return specialized DialogExecutor.execute(catId:parameters:globals:)(v5, v8, v6);
}

{
  **(v0 + 16) = *(v0 + 56);
  return (*(v0 + 8))();
}

uint64_t implicit closure #1 in ResponseExecutor.execute(response:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](implicit closure #1 in ResponseExecutor.execute(response:), 0, 0);
  }
}

uint64_t implicit closure #2 in ResponseExecutor.execute(response:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](implicit closure #2 in ResponseExecutor.execute(response:), 0, 0);
}

uint64_t implicit closure #2 in ResponseExecutor.execute(response:)()
{
  _StringGuts.grow(_:)(31);
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v5 = static ResponseExecutor.typeName;
  v4 = *algn_2800C0AC8;
  v6 = *(v0 + 64);

  MEMORY[0x26D5EC8A0](0xD00000000000001DLL, 0x8000000266BEEF40);
  *(v0 + 48) = v4;
  outlined copy of ExpanseUIModelConverter(v3, v2, v6);

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = implicit closure #2 in ResponseExecutor.execute(response:);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 64);

  return specialized logIfThrows<A>(message:_:)(v10, v5, v4, v11, v8, v12, v9);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in ResponseExecutor.makeOutputGenerationManifest(dialogPhase:nlContextUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for DialogPhase();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = v9[2];
  v43 = a2;
  v45 = v18;
  v18(&v42 - v16, a2, v8);
  static DialogPhase.acknowledgement.getter();
  lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, MEMORY[0x277D5BAE8]);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = v9[1];
  v19(v15, v8);
  if (a2)
  {
    goto LABEL_9;
  }

  static DialogPhase.reflection.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v15, v8);
  if (v20)
  {
    goto LABEL_9;
  }

  static DialogPhase.status.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v15, v8);
  if (v21)
  {
    goto LABEL_9;
  }

  static DialogPhase.summary.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v15, v8);
  if (v22)
  {
    goto LABEL_9;
  }

  static DialogPhase.completion.getter();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v15, v8);
  if (v23)
  {
    goto LABEL_9;
  }

  static DialogPhase.error.getter();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v15, v8);
  if (v24 & 1) != 0 || (static DialogPhase.confirmed.getter(), v25 = dispatch thunk of static Equatable.== infix(_:_:)(), v19(v15, v8), (v25) || (static DialogPhase.canceled.getter(), v26 = dispatch thunk of static Equatable.== infix(_:_:)(), v19(v15, v8), (v26))
  {
LABEL_9:
    v27 = v17;
LABEL_10:
    v19(v27, v8);
    goto LABEL_11;
  }

  static DialogPhase.clarification.getter();
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v15, v8);
  if (v29)
  {
    v19(v17, v8);
    goto LABEL_11;
  }

  static DialogPhase.confirmation.getter();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v15, v8);
  v19(v17, v8);
  if (v30)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.default);
  v32 = v44;
  v45(v44, v43, v8);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v33, v34))
  {

    v27 = v32;
    goto LABEL_10;
  }

  LODWORD(v43) = v34;
  v35 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v47 = v42;
  *v35 = 136315394;
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ResponseExecutor.typeName, *algn_2800C0AC8, &v47);
  *(v35 + 12) = 2080;
  v45(v15, v32, v8);
  v36 = String.init<A>(describing:)();
  v37 = v32;
  v39 = v38;
  v19(v37, v8);
  v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, &v47);

  *(v35 + 14) = v40;
  _os_log_impl(&dword_266B9E000, v33, v43, "%s: Encountered unexpected dialog phase: %s", v35, 0x16u);
  v41 = v42;
  swift_arrayDestroy();
  MEMORY[0x26D5ED340](v41, -1, -1);
  MEMORY[0x26D5ED340](v35, -1, -1);

LABEL_11:
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  outlined init with copy of SharingResponse?(v46, v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ResponseExecutor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D5ECAF0](v9, a1);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of SharingResponse?(v4, &v13, &_sSS_yptMd, _sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_266BC6844()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for implicit closure #1 in ResponseExecutor.execute(response:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return implicit closure #1 in ResponseExecutor.execute(response:)(a1, v4, v1 + 24, v5);
}

unint64_t type metadata accessor for DialogExecutionResult()
{
  result = lazy cache variable for type metadata for DialogExecutionResult;
  if (!lazy cache variable for type metadata for DialogExecutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogExecutionResult);
  }

  return result;
}

uint64_t _sxs5Error_pRi_zRi0_zly19SiriExpanseInternal0C7UIModelOSgIsegHrzo_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266BC699C()
{
  outlined consume of ExpanseUIModelConverter(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t outlined consume of ExpanseUIModelConverter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in ResponseExecutor.execute(response:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return implicit closure #2 in ResponseExecutor.execute(response:)(a1, v4, v5, v8, v6);
}

uint64_t outlined copy of ExpanseUIModelConverter?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of ExpanseUIModelConverter(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined copy of ExpanseUIModelConverter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t outlined consume of ExpanseUIModelConverter?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of ExpanseUIModelConverter(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined init with take of ExpanseUIModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ExpanseUIModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpanseUIModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ExpanseUIModel(uint64_t a1)
{
  v2 = type metadata accessor for ExpanseUIModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of SharingResponse?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t lazy protocol witness table accessor for type ExpanseUIModel and conformance ExpanseUIModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ValidateRecipientsFlow.execute()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](ValidateRecipientsFlow.execute(), 0, 0);
}

uint64_t ValidateRecipientsFlow.execute()()
{
  v31 = v0;
  v1 = *(v0[4] + 32);
  if (!v1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.default);
    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v13))
    {
      goto LABEL_15;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateRecipientsFlow.typeName, unk_2800C0B30, &v29);
    _os_log_impl(&dword_266B9E000, v3, v13, "%s: Resolving requested recipients: nil", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
LABEL_14:
    MEMORY[0x26D5ED340](v6, -1, -1);
    MEMORY[0x26D5ED340](v5, -1, -1);
LABEL_15:

    goto LABEL_17;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315651;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateRecipientsFlow.typeName, unk_2800C0B30, &v29);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v7 = type metadata accessor for INPerson();
    v8 = MEMORY[0x26D5EC930](v1, v7);
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v29);

    *(v5 + 24) = v11;
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: Resolving requested recipients: %{private,mask.hash}s", v5, 0x20u);
    swift_arrayDestroy();
    goto LABEL_14;
  }

LABEL_17:
  __swift_project_boxed_opaque_existential_1((v0[4] + 40), *(v0[4] + 64));
  v14 = RecipientsResolver.resolve(persons:)(v1);
  outlined copy of ResolvedRecipients(v14);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.default);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  outlined consume of ResolvedRecipients(v14);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315651;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v20 = 0xD000000000000020;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateRecipientsFlow.typeName, unk_2800C0B30, &v28);
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    if (v14 == 1)
    {
      v21 = 0x8000000266BEE600;
    }

    else
    {
      v29 = 0;
      v30 = 0xE000000000000000;

      _StringGuts.grow(_:)(42);
      MEMORY[0x26D5EC8A0](0xD000000000000027, 0x8000000266BEE630);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v14);
      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      outlined consume of ResolvedRecipients(v14);
      v20 = v29;
      v21 = v30;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v28);

    *(v18 + 24) = v22;
    _os_log_impl(&dword_266B9E000, v16, v17, "%s: Recipients resolution succeeded with result: %{private,mask.hash}s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v19, -1, -1);
    MEMORY[0x26D5ED340](v18, -1, -1);
  }

  v23 = v0[4];
  if (v14 == 1)
  {
    *(v23 + 16) = 1;
  }

  else
  {
    *(v23 + 16) = 0;
    v24 = *(v23 + 24);
    *(v23 + 24) = v14;
  }

  v25 = v0[3];
  static ExecuteResponse.complete()();
  v26 = v0[1];

  return v26();
}

uint64_t ValidateRecipientsFlow.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t protocol witness for Flow.execute() in conformance ValidateRecipientsFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return ValidateRecipientsFlow.execute()(a1);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t specialized ValidateRecipientsFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateRecipientsFlow.typeName, unk_2800C0B30, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s - this flow should never receive input, ignoring it...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t outlined copy of ResolvedRecipients(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined consume of ResolvedRecipients(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void TUConversation.activeActivitySession.getter(uint64_t a1@<X8>)
{
  v2 = [v1 activitySessions];
  v3 = type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x277D6EE80);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x277D6EE80);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v3;
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v6 = v22;
    v5 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
    v6 = v4;
  }

  v18 = v7;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while ([v17 state] == 2)
      {

        v8 = v15;
        v9 = v16;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v17 = v21;
          v15 = v8;
          v16 = v9;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant();

      *(a1 + 24) = v20;
      *(a1 + 32) = &protocol witness table for TUConversationActivitySession;
      *a1 = v17;
    }

    else
    {
LABEL_19:
      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant();

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *protocol witness for Conversation.activeRemotes.getter in conformance TUConversation()
{
  v1 = [*v0 activeRemoteParticipants];
  type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x277D6EEA8);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x277D6EEA8);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v2);

  v4 = specialized _arrayForceCast<A, B>(_:)(v3);

  return v4;
}

uint64_t lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LSBundleRecord(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo25TUConversationParticipantC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo25TUConversationParticipantC_Tt1g5(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1);
    outlined consume of Set<TUConversationActivitySession>.Iterator._Variant();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x277D6EEA8);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x277D6EEA8);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x277D6EEA8);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t specialized SharingIntent.shareTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v51 = type metadata accessor for Logger();
  v16 = *(v51 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v51);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier + 8);
  if (v20)
  {
    v21 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier);
    v22 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    swift_bridgeObjectRetain_n();
    v23 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v21, v20, 0);
    if (v23)
    {

      if (*(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_containsSharingReference))
      {
        *a1 = v21;
        *(a1 + 8) = v20;
        type metadata accessor for ShareTarget();
      }

      else
      {
        if (*(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isReformed))
        {
          v41 = 0;
        }

        else
        {
          v41 = 2;
        }

        *a1 = v21;
        *(a1 + 8) = v20;
        *(a1 + 16) = v41;
        type metadata accessor for ShareTarget();
      }

      goto LABEL_33;
    }

    v50 = a1;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v24 = v51;
    v25 = __swift_project_value_buffer(v51, static Logger.default);
    (*(v16 + 16))(v19, v25, v24);
    v26 = (v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
    if (*(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName + 8))
    {
      v27 = static os_log_type_t.debug.getter();
    }

    else
    {
      v27 = static os_log_type_t.error.getter();
    }

    v30 = v27;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52[0] = v33;
      *v32 = 136315394;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v52);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2080;
      if (v26[1])
      {
        v35 = *v26;
        v36 = v26[1];
      }

      else
      {
        v36 = 0xE300000000000000;
        v35 = 7104878;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v52);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_266B9E000, v31, v30, "SharingIntent: share target for appIdentifier=%s appName=%s not installed", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v33, -1, -1);
      MEMORY[0x26D5ED340](v32, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v19, v51);
    if (v26[1])
    {
      v38 = *v26;
      v39 = v26[1];
    }

    else
    {
      v38 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = v50;
    *v50 = v38;
    v40[1] = v39;
    type metadata accessor for ShareTarget();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v28 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName + 8);
    if (v28)
    {
      *a1 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
      *(a1 + 8) = v28;
      type metadata accessor for ShareTarget();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if ((*(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToScreen) & 1) != 0 || *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToEverything) == 1 || (*(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToDisplayedContent) & 1) != 0 || *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_containsSharingReference) != 1)
      {
        type metadata accessor for ShareTarget();
LABEL_33:

        return swift_storeEnumTagMultiPayload();
      }

      v50 = a1;
      v42 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
      swift_beginAccess();
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v2 + v42, v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        outlined destroy of SharingResponse?(v7, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      }

      else
      {
        v43 = *(v9 + 32);
        v43(v15, v7, v8);
        v44 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_usoEntity);
        if (v44)
        {
          (*(v9 + 16))(v13, v15, v8);
          v45 = (*(v9 + 88))(v13, v8);
          if (v45 != *MEMORY[0x277D5EF48] && v45 != *MEMORY[0x277D5EF08])
          {
            v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
            v47 = v50;
            *v50 = v44;
            v43(v47 + v46, v15, v8);
            type metadata accessor for ShareTarget();
            swift_storeEnumTagMultiPayload();
            v48 = *(v9 + 8);

            return v48(v13, v8);
          }
        }

        (*(v9 + 8))(v15, v8);
      }

      type metadata accessor for ShareTarget();
      v49 = v50;
      *v50 = 0;
      v49[1] = 0;
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t specialized SharingIntent.isExplicitShareViaMessagesIntent.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      if (*(v0 + 16) > 1u)
      {
        if (*(v0 + 16) != 2)
        {
          goto LABEL_17;
        }
      }

      else if (!*(v0 + 16))
      {

LABEL_11:
        v4 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier + 8);
        if (v4)
        {
          if (*(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier) != 0xD000000000000012 || v4 != 0x8000000266BEE5E0)
          {
            v2 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
            return v2 & 1;
          }
        }

LABEL_17:
        v2 = 0;
        return v2 & 1;
      }

      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }
  }

  v2 = 1;
  return v2 & 1;
}