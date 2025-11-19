void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMd, &_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(int64_t, _OWORD *))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = static _SetStorage.copy(original:)();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_13_10();
    v10 = (v9 + 63) >> 6;
    if (v7 != v6 || v8 >= v6 + 56 + 8 * v10)
    {
      memmove(v8, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v7 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    OUTLINED_FUNCTION_14_6();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_42_2();
LABEL_15:
        v24 = v20 | (v12 << 6);
        v25 = 5 * v24;
        a3(*(v6 + 48) + 40 * v24, v29);
        v26 = *(v7 + 48) + 8 * v25;
        v27 = v29[0];
        v28 = v29[1];
        *(v26 + 32) = v30;
        *v26 = v27;
        *(v26 + 16) = v28;
      }

      while (v17);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        goto LABEL_17;
      }

      ++v21;
      if (*(v6 + 56 + 8 * v12))
      {
        OUTLINED_FUNCTION_49_0();
        v17 = v23 & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_1();
  a33 = v39;
  a34 = v40;
  OUTLINED_FUNCTION_15_10(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
  static _SetStorage.resize(original:capacity:move:)();
  OUTLINED_FUNCTION_83_1();
  if (v42)
  {
    v43 = 0;
    v44 = *(v35 + 56);
    v45 = *(v35 + 32);
    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_93_1();
    if (v38)
    {
      while (1)
      {
        OUTLINED_FUNCTION_119_0();
LABEL_9:
        outlined init with copy of MessageCenterEndpoint(*(v35 + 48) + (v46 | (v43 << 6)) * v47, &a20);
        v51 = *(v36 + 40);
        Hasher.init(_seed:)();
        v52 = *(&a21 + 1);
        v53 = a22;
        __swift_project_boxed_opaque_existential_1(&a20, *(&a21 + 1));
        OUTLINED_FUNCTION_64_3(v53);
        v54(v52, v53);
        if (v55)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._finalize()();
        v56 = *(v36 + 32);
        OUTLINED_FUNCTION_21_8();
        v58 = v34[v57];
        OUTLINED_FUNCTION_116_1();
        if (v59)
        {
          break;
        }

        OUTLINED_FUNCTION_8_8();
LABEL_22:
        OUTLINED_FUNCTION_4_10();
        OUTLINED_FUNCTION_67_2(v62);
        v63 = a20;
        v64 = a21;
        *(v65 + 32) = a22;
        *v65 = v63;
        *(v65 + 16) = v64;
        OUTLINED_FUNCTION_26_5();
        if (!v38)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_7_11();
      while (1)
      {
        OUTLINED_FUNCTION_63_3();
        if (v59)
        {
          if (v60)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_84_1();
        if (v59)
        {
          v61 = 0;
        }

        if (v34[v61] != -1)
        {
          OUTLINED_FUNCTION_6_12();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_4:
      v48 = v43;
      while (1)
      {
        v43 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v43 >= v37)
        {
          goto LABEL_24;
        }

        ++v48;
        if (*(v35 + 56 + 8 * v43))
        {
          OUTLINED_FUNCTION_49_0();
          v38 = v50 & v49;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    *v34 = v36;
    OUTLINED_FUNCTION_60_4();
  }
}

void specialized _NativeSet.copyAndResize(capacity:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_53_1();
  v3 = type metadata accessor for MessageCenterActorWrapper(v2);
  v4 = OUTLINED_FUNCTION_15(v3);
  v41 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v12 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
  v13 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v11 + 16))
  {
    v39 = v1;
    v40 = v11;
    v14 = 0;
    v16 = v11 + 56;
    v15 = *(v11 + 56);
    v17 = *(v11 + 32);
    OUTLINED_FUNCTION_8_20();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v23 = v13 + 56;
    if ((v19 & v18) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_39_2();
LABEL_11:
        outlined init with copy of MessageCenterActorWrapper(*(v11 + 48) + *(v41 + 72) * (v24 | (v14 << 6)), v10);
        v28 = *(v13 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_32_5();
        lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, v29);
        dispatch thunk of Hashable.hash(into:)();
        Hasher._finalize()();
        v30 = *(v13 + 32);
        OUTLINED_FUNCTION_21_8();
        v32 = *(v23 + 8 * v31);
        OUTLINED_FUNCTION_116_1();
        if (v33)
        {
          break;
        }

        OUTLINED_FUNCTION_8_8();
LABEL_21:
        *(v23 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v37 = *(v13 + 48);
        OUTLINED_FUNCTION_1_30();
        _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v10, v38);
        ++*(v13 + 16);
        v11 = v40;
        if (!v20)
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_7_11();
      while (1)
      {
        OUTLINED_FUNCTION_63_3();
        if (v33)
        {
          if (v35)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_84_1();
        if (v33)
        {
          v36 = 0;
        }

        if (*(v23 + 8 * v36) != -1)
        {
          OUTLINED_FUNCTION_6_12();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v25 = v14;
      while (1)
      {
        v14 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v14 >= v22)
        {

          v1 = v39;
          goto LABEL_25;
        }

        ++v25;
        if (*(v16 + 8 * v14))
        {
          OUTLINED_FUNCTION_49_0();
          v20 = v27 & v26;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v13;
    OUTLINED_FUNCTION_47();
  }
}

uint64_t specialized BackgroundConnection.connectionProvider(_:receivedIntermediateError:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v24);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a3 + 32);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a1;
  v19[4] = a5;
  v19[5] = a2;
  aBlock[4] = partial apply for closure #1 in BackgroundConnection.connectionProvider(_:receivedIntermediateError:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_200;
  v20 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v21 = a2;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v17, v13, v20);
  _Block_release(v20);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v24);
}

uint64_t specialized Connection.didEncounterError(_:error:analysisInfo:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v33 - v17;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    result = swift_unknownObjectRelease();
    if (v20 == a4)
    {

      v21 = BackgroundConnection.getConnectionMethod()();
      object = v21._object;
      countAndFlagsBits = v21._countAndFlagsBits;
      v37 = *(a4 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v22 = swift_allocObject();
      v36 = v6;
      v23 = v22;
      swift_unknownObjectWeakInit();
      outlined init with copy of MessageCenterBrowserProtocol?(v38, v18, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v38 = v10;
      v27 = v39;
      *(v26 + 16) = v23;
      *(v26 + 24) = v27;
      outlined init with take of ConnectionAnalysisInfo?(v18, v26 + v24);
      *(v26 + v25) = a1;
      v28 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
      v29 = object;
      *v28 = countAndFlagsBits;
      v28[1] = v29;
      aBlock[4] = partial apply for closure #1 in Connection.didEncounterError(_:error:analysisInfo:);
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_214;
      v30 = _Block_copy(aBlock);

      v31 = v27;
      static DispatchQoS.unspecified.getter();
      v42 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v32 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v13, v9, v30);
      _Block_release(v30);

      (*(v41 + 8))(v9, v32);
      (*(v40 + 8))(v13, v38);
    }
  }

  return result;
}

uint64_t specialized Connection.didClose(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v14, type metadata accessor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    result = swift_unknownObjectRelease();
    if (v16 == a2)
    {
      v20[2] = *(a2 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a1;
      v20[1] = v17;
      aBlock[4] = partial apply for closure #1 in Connection.didClose(_:);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_221;
      v19 = _Block_copy(aBlock);
      swift_retain_n();

      static DispatchQoS.unspecified.getter();
      v20[3] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v13, v8, v19);
      _Block_release(v19);

      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v13, v9);
    }
  }

  return result;
}

void specialized Connection.didEncounterIntermediateError(_:error:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v14, type metadata accessor for BackgroundConnection);
  v51 = a2;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v17 = v48 >> 60 == 2;
    outlined consume of NetworkConnectionError(aBlock, v46, v47, v48, v49);
  }

  else
  {
    v17 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v19 = Strong, swift_unknownObjectRelease(), v19 == a3) && ((v20 = *(a3 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection)) != 0 ? (v21 = v20 == a1) : (v21 = 0), v21 ? (v22 = 1) : (v22 = v17), v22 == 1))
  {
    v23 = *(a3 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a1;
    v25[4] = v15;
    v25[5] = a2;
    v49 = partial apply for closure #1 in Connection.didEncounterIntermediateError(_:error:);
    v50 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v48 = &block_descriptor_207;
    v26 = _Block_copy(&aBlock);
    v27 = a2;

    static DispatchQoS.unspecified.getter();
    v51 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v13, v9, v26);
    _Block_release(v26);
    (*(v44 + 8))(v9, v6);
    (*(v43 + 8))(v13, v10);
  }

  else
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriNetwork);
    v29 = a2;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v32 = 136315394;
      v35 = *(a1 + 448);
      if (v35 >= 2)
      {
        aBlock = *(a1 + 440);
        v46 = v35;

        v37 = String.init<A>(describing:)();
        v36 = v38;
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v36 = 0xE700000000000000;
        v37 = 0x6E776F6E6B6E75;
      }

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v51);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2112;
      v40 = a2;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v41;
      *v33 = v41;
      _os_log_impl(&dword_223515000, v30, v31, "Connection - Intermediate Error: Background Connection. Got an intermediate error from inactive background connection route %s. Error: %@", v32, 0x16u);
      outlined destroy of NetworkConnectionProtocol?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DE38F0](v34, -1, -1);
      MEMORY[0x223DE38F0](v32, -1, -1);
    }
  }
}

uint64_t specialized Connection.didReceiveObject(_:object:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v16, type metadata accessor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    result = swift_unknownObjectRelease();
    if (v19 == a4)
    {
      v23 = *(a4 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = a1;
      v21[4] = v17;
      v21[5] = a2;
      v21[6] = a3;
      aBlock[4] = partial apply for closure #1 in Connection.didReceiveObject(_:object:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_16;
      v22 = _Block_copy(aBlock);

      outlined copy of Data?(a2, a3);
      static DispatchQoS.unspecified.getter();
      v26 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v15, v11, v22);
      _Block_release(v22);
      (*(v25 + 8))(v11, v8);
      (*(v24 + 8))(v15, v12);
    }
  }

  return result;
}

id outlined copy of NetworkConnectionError?(id result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 >> 1 != 0xFFFFFFFF || a4 >= 2)
  {
    return outlined copy of NetworkConnectionError(result, a2, a3, a4, a5);
  }

  return result;
}

void outlined consume of NetworkConnectionError?(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 >> 1 != 0xFFFFFFFF || a4 >= 2)
  {
    outlined consume of NetworkConnectionError(a1, a2, a3, a4, a5);
  }
}

uint64_t partial apply for closure #1 in BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return closure #1 in BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)(v0[2]);
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

void partial apply for closure #1 in Connection.didEncounterError(_:error:analysisInfo:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_15(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  closure #1 in Connection.didEncounterError(_:error:analysisInfo:)();
}

id outlined copy of Result<(), NetworkConnectionError>(id result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    return outlined copy of NetworkConnectionError(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t objectdestroy_170Tm()
{
  v1 = *(v0 + 16);

  outlined consume of NetworkConnectionError(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_144Tm()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 16);

  v2(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, v0, 7);
}

uint64_t objectdestroy_148Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t partial apply for closure #1 in BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return closure #1 in BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(v0[2]);
}

void *OUTLINED_FUNCTION_61_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char __dst)
{

  return memcpy(&__dst, (v15 + 40), 0x204uLL);
}

void *OUTLINED_FUNCTION_95_1(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x204uLL);
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return Hasher.init(_seed:)();
}

void *OUTLINED_FUNCTION_98_1(void *a1)
{

  return memcpy(a1, (v1 + 4680), 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  v2 = *v0;

  return static _SetStorage.copy(original:)();
}

void OUTLINED_FUNCTION_105_1()
{
  STACK[0x470] = 0;
  STACK[0x460] = 9;
  STACK[0x468] = 0;
}

void OUTLINED_FUNCTION_122_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_123()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_125(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

void *OUTLINED_FUNCTION_127()
{

  return memcpy((v1 + 377), (v0 + 4376), 0x128uLL);
}

void *OUTLINED_FUNCTION_129()
{

  return memcpy(&STACK[0x870], &STACK[0x460], 0x204uLL);
}

void OUTLINED_FUNCTION_130(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_131(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_132()
{
}

uint64_t OUTLINED_FUNCTION_136()
{

  return outlined init with copy of ConnectionConfiguration(&STACK[0x238], &STACK[0x460]);
}

void *OUTLINED_FUNCTION_137(void *a1)
{

  return memcpy(a1, (v1 + 568), 0x2C8uLL);
}

uint64_t OUTLINED_FUNCTION_138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of MessageCenterBrowserProtocol?(v4 + 1096, &STACK[0x460], a3, a4);
}

BOOL OUTLINED_FUNCTION_140()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_142()
{

  return swift_unknownObjectRelease();
}

id RATInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RATInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RATInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RATInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [WRM_iRATProximityRecommendation]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for WRM_iRATProximityRecommendation, 0x277D7BC50);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

void @nonobjc WRM_iRATInterface.subscribeStandaloneLinkRecommendation(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed (@unowned WRMApplicationType, @unowned WRMLinkType, @guaranteed NSValue?) -> ();
    v4[3] = &block_descriptor_91_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 subscribeStandaloneLinkRecommendation_];
  _Block_release(v3);
}

void thunk for @escaping @callee_guaranteed (@unowned WRMApplicationType, @unowned WRMLinkType, @guaranteed NSValue?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

void @nonobjc WRM_iRATInterface.getProximityLinkRecommendation(_:recommendation:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed [WRM_iRATProximityRecommendation]?) -> ();
    v6[3] = &block_descriptor_88;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 getProximityLinkRecommendation:a1 & 1 recommendation:v5];
  _Block_release(v5);
}

void @nonobjc WRM_iRATInterface.getLinkRecommendationMetrics(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed AceObject?) -> ();
    v4[3] = &block_descriptor_85;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 getLinkRecommendationMetrics_];
  _Block_release(v3);
}

void NetworkWirelessCoexManager.init(queue:)()
{
  OUTLINED_FUNCTION_46();
  v14 = v2;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = OUTLINED_FUNCTION_0_0(v13);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_0_1();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = 2;
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  static DispatchQoS.userInteractive.getter();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v1, *MEMORY[0x277D85260], v13);
  *(v0 + 176) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 184) = 0x4014000000000000;
  *(v0 + 168) = v14;
  v12 = v14;
  NetworkWirelessCoexManager.resetLinkRecommendationInfo()();

  OUTLINED_FUNCTION_47();
}

uint64_t NetworkWirelessCoexManager.deinit()
{
  NetworkWirelessCoexManager.unregisterClient()();
  outlined destroy of ConnectionSnapshotReport?(v0 + 16, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);

  return v0;
}

uint64_t NetworkWirelessCoexManager.__deallocating_deinit()
{
  NetworkWirelessCoexManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

Swift::Void __swiftcall NetworkWirelessCoexManager.registerClient()()
{
  OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v24 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = type metadata accessor for DispatchQoS();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v22 = v9;
  v23 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v14 = v13 - v12;
  v15 = *(v0 + 168);
  OUTLINED_FUNCTION_7_1();
  v16 = swift_allocObject();
  swift_weakInit();
  v25[4] = partial apply for closure #1 in NetworkWirelessCoexManager.registerClient();
  v25[5] = v16;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v25[2] = v17;
  v25[3] = &block_descriptor_82_0;
  v18 = _Block_copy(v25);
  v19 = v15;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v14, v1, v18);
  _Block_release(v18);

  (*(v24 + 8))(v1, v2);
  (*(v22 + 8))(v14, v23);

  NetworkWirelessCoexManager.resetLinkRecommendationInfo()();
  NetworkWirelessCoexManager.subscribeLinkRecommendation()();
  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkWirelessCoexManager.registerClient()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v1 + 16, v13);
    v2 = v14;
    outlined destroy of ConnectionSnapshotReport?(v13, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    if (v2)
    {
      outlined init with copy of RATManagerProtocol?(v1 + 16, v13);
    }

    else
    {
      v3 = type metadata accessor for RATInterface();
      v4 = [objc_allocWithZone(v3) init];
      v14 = v3;
      v15 = &protocol witness table for WRM_iRATInterface;
      v13[0] = v4;
    }

    swift_beginAccess();
    outlined assign with take of RATManagerProtocol?(v13, v1 + 16);
    swift_endAccess();
    outlined init with copy of RATManagerProtocol?(v1 + 16, v13);
    if (v14)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v13, v10);
      outlined destroy of ConnectionSnapshotReport?(v13, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v7 = *(v1 + 168);
      v8 = *(v6 + 8);
      v9 = v7;
      v8(22, v7, v5, v6);

      return __swift_destroy_boxed_opaque_existential_0(v10);
    }

    else
    {

      return outlined destroy of ConnectionSnapshotReport?(v13, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    }
  }

  return result;
}

uint64_t closure #1 in NetworkWirelessCoexManager.unregisterClient()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v1 + 16, &v9);

    if (*(&v10 + 1))
    {
      outlined init with copy of RPCOspreyConnectionProtocol(&v9, v6);
      outlined destroy of ConnectionSnapshotReport?(&v9, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
      v2 = v7;
      v3 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v3 + 16))(v2, v3);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(&v9, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    swift_beginAccess();
    outlined assign with take of RATManagerProtocol?(&v9, v5 + 16);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #1 in NetworkWirelessCoexManager.subscribeLinkRecommendation()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v1 + 16, v9);

    if (v10)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v9, v6);
      outlined destroy of ConnectionSnapshotReport?(v9, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
      v2 = v7;
      v3 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      v4 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v5 = *(v3 + 32);

      v5(partial apply for closure #1 in closure #1 in NetworkWirelessCoexManager.subscribeLinkRecommendation(), v4, v2, v3);

      return __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
      return outlined destroy of ConnectionSnapshotReport?(v9, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in NetworkWirelessCoexManager.subscribeLinkRecommendation()(int a1, int a2, void *a3)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriNetwork);
  v7 = a3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v33 = a3;
    v11 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35[0] = v34;
    *v10 = 136315650;
    v36 = a1;
    type metadata accessor for WRMApplicationType(0);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v36 = a2;
    type metadata accessor for WRMLinkType(0);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v35);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v7;
    *v11 = v33;
    v18 = v7;
    _os_log_impl(&dword_223515000, v8, v9, "Received an asynchronous recommendation type %s, linkType %s, value %@", v10, 0x20u);
    outlined destroy of ConnectionSnapshotReport?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v34, -1, -1);
    MEMORY[0x223DE38F0](v10, -1, -1);
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  if (a1 != 1)
  {

LABEL_18:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    NetworkWirelessCoexManager.resetLinkRecommendationInfo()();
  }

  v20 = NetworkConnectionProvider.connectionMetrics.modify();
  if (*v19 != 2)
  {
    *v19 = 0;
  }

  (v20)(v35, 0);
  v22 = NetworkConnectionProvider.connectionMetrics.modify();
  if (*v21 != 2)
  {
    v21[1] = 1;
  }

  (v22)(v35, 0);
  if (!a2)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_223515000, v29, v30, "NetworkWirelessCoexManager: Standalone linkRecommendationInfo wifiPreference false", v31, 2u);
      MEMORY[0x223DE38F0](v31, -1, -1);
    }

    v27 = NetworkConnectionProvider.connectionMetrics.modify();
    if (*v32 != 2)
    {
      v32[1] = 0;
    }

    goto LABEL_24;
  }

  if (a2 == 1)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_223515000, v23, v24, "NetworkWirelessCoexManager: Standalone linkRecommendationInfo wifiPreference true", v25, 2u);
      MEMORY[0x223DE38F0](v25, -1, -1);
    }

    v27 = NetworkConnectionProvider.connectionMetrics.modify();
    if (*v26 != 2)
    {
      v26[1] = 1;
    }

LABEL_24:
    (v27)(v35, 0);
  }
}

void NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v12 = OUTLINED_FUNCTION_8_1();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = *(v1 + 176);
  OUTLINED_FUNCTION_7_1();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v5;
  *(v18 + 32) = v3;
  *(v18 + 40) = v7;
  v29[4] = partial apply for closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:);
  v29[5] = v18;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v29[2] = v19;
  v29[3] = &block_descriptor_48;
  v20 = _Block_copy(v29);
  v21 = v16;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5, v3);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_8_21();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v24);
  _Block_release(v20);

  v25 = OUTLINED_FUNCTION_16_1();
  v26(v25);
  v27 = OUTLINED_FUNCTION_16();
  v28(v27);

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v76) = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchTime();
  v74 = *(v75 - 8);
  v16 = *(v74 + 64);
  v17 = MEMORY[0x28223BE20](v75);
  v72 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v63 - v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    NetworkWirelessCoexManager.resetLinkRecommendationInfo()();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v21 + 16, &aBlock);
    if (v85)
    {
      v70 = v21;
      v63 = v15;
      v64 = v11;
      outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v80);
      v22 = v8;
      v23 = swift_allocObject();
      v24 = dispatch_group_create();
      v71 = v7;
      v25 = a1;
      *(v23 + 16) = v24;
      v26 = (v23 + 16);
      dispatch_group_enter(v24);
      v27 = v82;
      v66 = v81;
      v65 = v12;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v28 = swift_allocObject();
      v69 = a2;
      v29 = v28;
      swift_beginAccess();
      v67 = v25;
      swift_weakLoadStrong();
      swift_weakInit();

      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = v23;
      v31 = a3;
      v32 = v27;
      v33 = *(v27 + 40);

      v68 = v23;

      v33(v76 & 1, partial apply for closure #2 in closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:), v30, v66, v32);
      v34 = v22;
      v35 = v77;
      v36 = v69;

      swift_beginAccess();
      v37 = v71;
      if (*v26)
      {
        v38 = *v26;
        v39 = v72;
        static DispatchTime.now()();
        v40 = *(v70 + 184);
        v41 = v36;
        v42 = v34;
        v43 = v35;
        v44 = v73;
        + infix(_:_:)();
        v45 = *(v74 + 8);
        v46 = v75;
        v45(v39, v75);
        MEMORY[0x223DE2400](v44);

        v47 = v44;
        v35 = v43;
        v34 = v42;
        v36 = v41;
        v37 = v71;
        v45(v47, v46);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          __swift_project_value_buffer(v48, static Logger.siriNetwork);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_223515000, v49, v50, "NetworkWirelessCoexManager: getProximityLinkRecommendation timedout", v51, 2u);
            MEMORY[0x223DE38F0](v51, -1, -1);
          }
        }
      }

      v52 = v67;
      swift_beginAccess();
      v53 = swift_weakLoadStrong();
      if (v53)
      {
        v54 = *(v53 + 168);

        v55 = swift_allocObject();
        v55[2] = v36;
        v55[3] = v31;
        v55[4] = v52;
        v86 = partial apply for closure #4 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
        v87 = v55;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v84 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v85 = &block_descriptor_65;
        v56 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v36, v31);

        v57 = v63;
        static DispatchQoS.unspecified.getter();
        v78 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v58 = v64;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x223DE2460](0, v57, v58, v56);
        _Block_release(v56);

        (*(v34 + 8))(v58, v37);
        (*(v35 + 8))(v57, v65);
      }

      return __swift_destroy_boxed_opaque_existential_0(v80);
    }

    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v76 = *(result + 168);

    v60 = swift_allocObject();
    v60[2] = a2;
    v60[3] = a3;
    v60[4] = a1;
    v86 = partial apply for closure #4 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
    v87 = v60;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v85 = &block_descriptor_54_0;
    v61 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);

    static DispatchQoS.unspecified.getter();
    v79 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v62 = v76;
    MEMORY[0x223DE2460](0, v15, v11, v61);
    _Block_release(v61);

    (*(v8 + 8))(v11, v7);
    (*(v77 + 8))(v15, v12);
  }

  return result;
}

void closure #2 in closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_36:
    swift_beginAccess();
    v32 = *(a3 + 16);
    if (v32)
    {
      dispatch_group_leave(v32);
    }

    goto LABEL_38;
  }

  if (!a1)
  {

    goto LABEL_36;
  }

  v34 = a3;
  v5 = specialized Array.count.getter(a1);
  if (!v5)
  {
LABEL_32:
    a3 = v34;
    swift_beginAccess();
    v30 = *(v34 + 16);
    if (v30)
    {
      v31 = v30;
      dispatch_group_leave(v31);
    }

LABEL_38:
    swift_beginAccess();
    v33 = *(a3 + 16);
    *(a3 + 16) = 0;

    return;
  }

  v6 = v5;
  v7 = 0;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v9 = &selRef_host;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223DE2730](v7, a1);
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_40;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if ([v10 v9[58]] == 2)
    {
      v13 = [v11 metrics];
      if (v13)
      {
        v14 = v13;
        v15 = v13;
        NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(v14);

        v9 = &selRef_host;
      }
    }

    if ([v11 linkIsRecommended] && objc_msgSend(v11, sel_linkRecommendationIsValid))
    {
      if ([v11 v9[58]] == 1)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.siriNetwork);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_223515000, v17, v18, "NetworkWirelessCoexManager: Get Proximity linkRecommendationInfo btPreference true", v19, 2u);
          v20 = v19;
          v8 = a1 & 0xFFFFFFFFFFFFFF8;
          MEMORY[0x223DE38F0](v20, -1, -1);
        }

        v22 = NetworkConnectionProvider.connectionMetrics.modify();
        v9 = &selRef_host;
        if (*v21 != 2)
        {
          *v21 = 1;
        }

        (v22)(v35, 0);
      }

      if ([v11 v9[58]] == 2)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.siriNetwork);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_223515000, v24, v25, "NetworkWirelessCoexManager: Get Proximity linkRecommendationInfo wifiPreference true", v26, 2u);
          v27 = v26;
          v8 = a1 & 0xFFFFFFFFFFFFFF8;
          MEMORY[0x223DE38F0](v27, -1, -1);
        }

        v29 = NetworkConnectionProvider.connectionMetrics.modify();
        v9 = &selRef_host;
        if (*v28 != 2)
        {
          v28[1] = 1;
        }

        (v29)(v35, 0);
      }
    }

    ++v7;
    if (v12 == v6)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = OUTLINED_FUNCTION_8_1();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = *(v1 + 176);
  OUTLINED_FUNCTION_7_1();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v5;
  v16[4] = v3;
  v27[4] = partial apply for closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
  v27[5] = v16;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v27[2] = v17;
  v27[3] = &block_descriptor_17;
  v18 = _Block_copy(v27);
  v19 = v14;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5, v3);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_8_21();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v22);
  _Block_release(v18);

  v23 = OUTLINED_FUNCTION_16_1();
  v24(v23);
  v25 = OUTLINED_FUNCTION_16();
  v26(v25);

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v73 = a2;
  v71 = type metadata accessor for DispatchTime();
  v70 = *(v71 - 8);
  v4 = *(v70 + 64);
  v5 = MEMORY[0x28223BE20](v71);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v62 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v76 = a1;
  Strong = swift_weakLoadStrong();
  v19 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v72 = *(Strong + 168);

    v85 = partial apply for closure #1 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
    v86 = v76;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v83 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v84 = &block_descriptor_22_0;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v79[0] = v19;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v75 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v19 = MEMORY[0x277D84F90];
    v17 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v72;
    MEMORY[0x223DE2460](0, v17, v12, v20);
    _Block_release(v20);

    (v9[1])(v12, v8);
    (*(v14 + 8))(v17, v13);
  }

  v75 = v13;
  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (v22)
  {
    v23 = v22;
    swift_beginAccess();
    outlined init with copy of RATManagerProtocol?(v23 + 16, &aBlock);
    if (v84)
    {
      v62 = v12;
      outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v79);
      v24 = swift_allocObject();
      v25 = dispatch_group_create();
      *(v24 + 16) = v25;
      v67 = (v24 + 16);
      dispatch_group_enter(v25);
      v63 = v14;
      v66 = v80;
      v64 = v8;
      v26 = v81;
      v65 = __swift_project_boxed_opaque_existential_1(v79, v80);
      v27 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      v28 = v9;
      swift_weakInit();

      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v24;
      v30 = v17;
      v31 = v28;
      v32 = *(v26 + 48);

      v72 = v24;

      v32(partial apply for closure #3 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:), v29, v66, v26);
      v33 = v31;
      v34 = v30;

      v35 = v67;
      swift_beginAccess();
      if (*v35)
      {
        v36 = *v35;
        v37 = v68;
        static DispatchTime.now()();
        v38 = *(v23 + 184);
        v67 = v33;
        v39 = v69;
        + infix(_:_:)();
        v40 = *(v70 + 8);
        v41 = v71;
        v40(v37, v71);
        MEMORY[0x223DE2400](v39);

        v33 = v67;
        v40(v39, v41);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          __swift_project_value_buffer(v42, static Logger.siriNetwork);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_223515000, v43, v44, "NetworkWirelessCoexManager: getLinkRecommendationMetrics timedout", v45, 2u);
            MEMORY[0x223DE38F0](v45, -1, -1);
          }
        }
      }

      swift_beginAccess();
      v46 = swift_weakLoadStrong();
      if (v46)
      {
        v47 = *(v46 + 168);

        v48 = swift_allocObject();
        v49 = v73;
        v50 = v74;
        v48[2] = v73;
        v48[3] = v50;
        v48[4] = v76;
        v85 = partial apply for closure #4 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
        v86 = v48;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v83 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v84 = &block_descriptor_41;
        v51 = _Block_copy(&aBlock);

        outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v49, v50);
        static DispatchQoS.unspecified.getter();
        v77 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v52 = v62;
        v53 = v64;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x223DE2460](0, v34, v52, v51);
        _Block_release(v51);

        (v33[1])(v52, v53);
        (*(v63 + 8))(v34, v75);
      }

      return __swift_destroy_boxed_opaque_existential_0(v79);
    }

    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v72 = *(result + 168);

    v55 = swift_allocObject();
    v56 = v73;
    v57 = v9;
    v58 = v74;
    v55[2] = v73;
    v55[3] = v58;
    v55[4] = v76;
    v85 = partial apply for closure #2 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:);
    v86 = v55;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v83 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v84 = &block_descriptor_28_1;
    v59 = v8;
    v60 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v56, v58);
    static DispatchQoS.unspecified.getter();
    v78 = v19;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v61 = v72;
    MEMORY[0x223DE2460](0, v17, v12, v60);
    _Block_release(v60);

    (v57[1])(v12, v59);
    (*(v14 + 8))(v17, v75);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(0);
  }

  return result;
}

void closure #3 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(a1);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriNetwork);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22 = v12;
        *v11 = 136315138;
        swift_beginAccess();
        if (*(v6 + 56) == 2)
        {
          v13 = 0xE100000000000000;
          v14 = 45;
        }

        else
        {
          memcpy(__dst, (v6 + 64), sizeof(__dst));
          memcpy(v20, __dst, sizeof(v20));
          v14 = String.init<A>(describing:)();
          v13 = v16;
        }

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v22);

        *(v11 + 4) = v17;
        _os_log_impl(&dword_223515000, v9, v10, "NetworkWirelessCoexManager: LinkRecommendationMetrics %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x223DE38F0](v12, -1, -1);
        MEMORY[0x223DE38F0](v11, -1, -1);
      }

      swift_beginAccess();
      v18 = *(a3 + 16);
      if (v18)
      {
        v19 = v18;
        dispatch_group_leave(v19);
      }

      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v15 = *(a3 + 16);
  if (v15)
  {
    dispatch_group_leave(v15);
  }

  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = 0;
LABEL_17:
}

uint64_t closure #1 in closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_beginAccess();
      v16 = *(v3 + 72);
      v17 = *(v3 + 56);
      v14 = *(v3 + 104);
      v15 = *(v3 + 88);
      v12 = *(v3 + 136);
      v13 = *(v3 + 120);
      v11 = *(v3 + 152);

      v5 = v11;
      v4 = v12;
      v7 = v13;
      v6 = v14;
      v9 = v15;
      v8 = v16;
      v10 = v17;
    }

    else
    {
      v10 = xmmword_2235F1900;
      v8 = 0uLL;
      v9 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v4 = 0uLL;
      v5 = 0uLL;
    }

    v18[0] = v10;
    v18[1] = v8;
    v18[2] = v9;
    v18[3] = v6;
    v18[4] = v7;
    v18[5] = v4;
    v18[6] = v5;
    return v1(v18);
  }

  return result;
}

uint64_t NetworkWirelessCoexManager.updateMetricsFromProximityRecommendationLogging(_:)(void *a1)
{
  v3 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v3, v4);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_9_16(v5, v6, v7, v8, v9, v10, v11, v12, v186);
    v1(v14);
  }

  else
  {
    v15 = v6;
    if (a1)
    {
      v16 = [a1 btRSSI];
    }

    else
    {
      v16 = 0;
    }

    *(v15 + 8) = v16;
    v17 = OUTLINED_FUNCTION_4_27(v16, v6, v7, v8, v9, v10, v11, v12, v186);
    v1(v17);
  }

  v18 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v18, v19);
  if (v13)
  {
    v28 = OUTLINED_FUNCTION_9_16(v20, v21, v22, v23, v24, v25, v26, v27, v187);
    v1(v28);
  }

  else
  {
    v29 = v21;
    if (a1)
    {
      v30 = [a1 wifiRSSI];
    }

    else
    {
      v30 = 0;
    }

    *(v29 + 16) = v30;
    v31 = OUTLINED_FUNCTION_4_27(v30, v21, v22, v23, v24, v25, v26, v27, v187);
    v1(v31);
  }

  v32 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v32, v33);
  if (v13)
  {
    v42 = OUTLINED_FUNCTION_9_16(v34, v35, v36, v37, v38, v39, v40, v41, v188);
    v1(v42);
  }

  else
  {
    v43 = v35;
    if (a1)
    {
      v44 = [a1 wifiSNR];
    }

    else
    {
      v44 = 0;
    }

    *(v43 + 24) = v44;
    v45 = OUTLINED_FUNCTION_4_27(v44, v35, v36, v37, v38, v39, v40, v41, v188);
    v1(v45);
  }

  v46 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v46, v47);
  if (v13)
  {
    v56 = OUTLINED_FUNCTION_9_16(v48, v49, v50, v51, v52, v53, v54, v55, v189);
    v1(v56);
  }

  else
  {
    v57 = v49;
    if (a1)
    {
      v58 = [a1 beaconPER];
    }

    else
    {
      v58 = 0;
    }

    *(v57 + 32) = v58;
    v59 = OUTLINED_FUNCTION_4_27(v58, v49, v50, v51, v52, v53, v54, v55, v189);
    v1(v59);
  }

  v60 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v60, v61);
  if (v13)
  {
    v70 = OUTLINED_FUNCTION_9_16(v62, v63, v64, v65, v66, v67, v68, v69, v190);
    v1(v70);
  }

  else
  {
    v71 = v63;
    if (a1)
    {
      v72 = [a1 nwType];
    }

    else
    {
      v72 = 0;
    }

    *(v71 + 36) = v72;
    v73 = OUTLINED_FUNCTION_4_27(v72, v63, v64, v65, v66, v67, v68, v69, v190);
    v1(v73);
  }

  v74 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v74, v75);
  if (v13)
  {
    v84 = OUTLINED_FUNCTION_9_16(v76, v77, v78, v79, v80, v81, v82, v83, v191);
    v1(v84);
  }

  else
  {
    v85 = v77;
    if (a1)
    {
      v86 = [a1 wifiCCA];
    }

    else
    {
      v86 = 0;
    }

    *(v85 + 40) = v86;
    v87 = OUTLINED_FUNCTION_4_27(v86, v77, v78, v79, v80, v81, v82, v83, v191);
    v1(v87);
  }

  v88 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v88, v89);
  if (v13)
  {
    v98 = OUTLINED_FUNCTION_9_16(v90, v91, v92, v93, v94, v95, v96, v97, v192);
    v1(v98);
  }

  else
  {
    v99 = v91;
    if (a1)
    {
      v100 = [a1 lsmRecommendationBe];
    }

    else
    {
      v100 = 0;
    }

    *(v99 + 48) = v100;
    v101 = OUTLINED_FUNCTION_4_27(v100, v91, v92, v93, v94, v95, v96, v97, v192);
    v1(v101);
  }

  v102 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v102, v103);
  if (v13)
  {
    v112 = OUTLINED_FUNCTION_9_16(v104, v105, v106, v107, v108, v109, v110, v111, v193);
    v1(v112);
  }

  else
  {
    v113 = v105;
    if (a1)
    {
      v114 = [a1 expectedThroughputVIBE];
    }

    else
    {
      v114 = 0;
    }

    *(v113 + 56) = v114;
    v115 = OUTLINED_FUNCTION_4_27(v114, v105, v106, v107, v108, v109, v110, v111, v193);
    v1(v115);
  }

  v116 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v116, v117);
  if (v13)
  {
    v126 = OUTLINED_FUNCTION_9_16(v118, v119, v120, v121, v122, v123, v124, v125, v194);
    v1(v126);
  }

  else
  {
    v127 = v119;
    if (a1)
    {
      v128 = [a1 packetLifetimeVIBE];
    }

    else
    {
      v128 = 0;
    }

    *(v127 + 64) = v128;
    v129 = OUTLINED_FUNCTION_4_27(v128, v119, v120, v121, v122, v123, v124, v125, v194);
    v1(v129);
  }

  v130 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v130, v131);
  if (v13)
  {
    v140 = OUTLINED_FUNCTION_9_16(v132, v133, v134, v135, v136, v137, v138, v139, v195);
    v1(v140);
  }

  else
  {
    v141 = v133;
    if (a1)
    {
      v142 = [a1 packetLossRateVIBE];
    }

    else
    {
      v142 = 0;
    }

    *(v141 + 72) = v142;
    v143 = OUTLINED_FUNCTION_4_27(v142, v133, v134, v135, v136, v137, v138, v139, v195);
    v1(v143);
  }

  v144 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v144, v145);
  if (v13)
  {
    v154 = OUTLINED_FUNCTION_9_16(v146, v147, v148, v149, v150, v151, v152, v153, v196);
    v1(v154);
  }

  else
  {
    v155 = v147;
    if (a1)
    {
      v156 = [a1 btRetransmissionRateTx];
    }

    else
    {
      v156 = 0;
    }

    *(v155 + 80) = v156;
    v157 = OUTLINED_FUNCTION_4_27(v156, v147, v148, v149, v150, v151, v152, v153, v196);
    v1(v157);
  }

  v158 = OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_6_22(v158, v159);
  if (v13)
  {
    v168 = OUTLINED_FUNCTION_9_16(v160, v161, v162, v163, v164, v165, v166, v167, v197);
    v1(v168);
  }

  else
  {
    v169 = v161;
    if (a1)
    {
      v170 = [a1 btRetransmissionRateRx];
    }

    else
    {
      v170 = 0;
    }

    *(v169 + 88) = v170;
    v171 = OUTLINED_FUNCTION_4_27(v170, v161, v162, v163, v164, v165, v166, v167, v197);
    v1(v171);
  }

  v172 = NetworkConnectionProvider.connectionMetrics.modify();
  v180 = v172;
  if (*v173 == 2)
  {
    v181 = OUTLINED_FUNCTION_9_16(v172, v173, v174, v175, v176, v177, v178, v179, v198);
    return (v180)(v181);
  }

  else
  {
    v183 = v173;
    if (a1)
    {
      v184 = [a1 btTech];
    }

    else
    {
      v184 = 0;
    }

    *(v183 + 12) = v184;
    v185 = OUTLINED_FUNCTION_4_27(v184, v173, v174, v175, v176, v177, v178, v179, v198);
    return (v180)(v185);
  }
}

uint64_t partial apply for closure #2 in closure #1 in NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)()
{
  v1 = v0[3];
  v2 = v0[4];
  return closure #1 in closure #1 in NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)(v0[2]);
}

uint64_t outlined init with copy of RATManagerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_18Tm(uint64_t a1)
{
  v3 = v1[2];

  if (v1[3])
  {
    v4 = v1[4];
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined assign with take of RATManagerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork18RATManagerProtocol_pSgMd, &_s11SiriNetwork18RATManagerProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void __swiftcall LinkRecommendationInfo.snLinkRecommendationInfo()(SNLinkRecommendationInfo *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 8);
  v8 = v1[36];
  v10 = *(v1 + 5);
  v9 = *(v1 + 6);
  v13 = *(v1 + 7);
  v14 = *(v1 + 8);
  v15 = *(v1 + 9);
  v16 = *(v1 + 10);
  v17 = *(v1 + 11);
  v18 = *(v1 + 12);
  v11 = *(v1 + 13);
  v12 = [objc_allocWithZone(SNLinkRecommendationInfo) init];
  [v12 setBtPreference_];
  [v12 setWifiPreference_];
  [v12 setBtRSSI_];
  [v12 setWifiRSSI_];
  [v12 setWifiSNR_];
  [v12 setBeaconPER_];
  [v12 setNwType_];
  [v12 setWifiCCA_];
  [v12 setLsmRecommendationBe_];
  [v12 setExpectedThroughputVIBE_];
  [v12 setPacketLifetimeVIBE_];
  [v12 setPacketLossRateVIBE_];
  [v12 setBtRetransmissionRateTx_];
  [v12 setBtRetransmissionRateRx_];
  [v12 setBtTech_];
  [v12 setTimeTaken_];
}

double LinkRecommendationInfo.init(btPreference:wifiPreference:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 29) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  return result;
}

uint64_t LinkRecommendationInfo.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 3);
  v44 = *(v0 + 8);
  v41 = v0[36];
  v39 = *(v0 + 5);
  v37 = *(v0 + 6);
  v32 = *(v0 + 8);
  v6 = *(v0 + 9);
  v33 = v6;
  v34 = *(v0 + 7);
  v35 = *(v0 + 10);
  v7 = *(v0 + 13);
  strcpy(v55, "btPreference ");
  HIWORD(v55[1]) = -4864;
  if (v1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v38 = *(v0 + 11);
  v46 = *(v0 + 12);
  MEMORY[0x223DE2180](v8, v9);

  v53 = v55[1];
  v54 = v55[0];
  _StringGuts.grow(_:)(17);

  OUTLINED_FUNCTION_4_28();
  v55[0] = v10 | 0x6665725000000000;
  v55[1] = 0xEF2065636E657265;
  if (v2)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v11, v12);

  v51 = v55[1];
  v52 = v55[0];
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v50 = strcpy(v55, "btRSSI ");
  OUTLINED_FUNCTION_4_28();
  v55[0] = v13 | 0x4953535200000000;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v49 = v55[0];
  OUTLINED_FUNCTION_4_28();
  v55[0] = v14 | 0x20524E5300000000;
  v55[1] = 0xEA00000000000000;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v48 = v55[0];
  strcpy(v55, "beaconPER ");
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v43 = v55[1];
  v45 = v55[0];
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_3_29();

  v42 = strcpy(v55, "nwType ");
  OUTLINED_FUNCTION_4_28();
  v55[0] = v15 | 0x2041434300000000;
  OUTLINED_FUNCTION_0_54(v39);
  OUTLINED_FUNCTION_3_29();

  v40 = v55[0];
  _StringGuts.grow(_:)(22);

  OUTLINED_FUNCTION_5_0();
  v55[1] = v16;
  OUTLINED_FUNCTION_0_54(v37);
  OUTLINED_FUNCTION_3_29();

  v36 = v55[1];
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v55[1] = v17;
  OUTLINED_FUNCTION_0_54(v34);
  OUTLINED_FUNCTION_3_29();

  v18 = v55[1];
  _StringGuts.grow(_:)(21);

  OUTLINED_FUNCTION_5_0();
  v55[1] = v19;
  v20 = OUTLINED_FUNCTION_0_54(v32);
  MEMORY[0x223DE2180](v20);

  v21 = v55[1];
  _StringGuts.grow(_:)(21);

  OUTLINED_FUNCTION_5_0();
  v55[1] = v22;
  v23 = OUTLINED_FUNCTION_0_54(v33);
  MEMORY[0x223DE2180](v23);

  v24 = v55[1];
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v55[1] = v25;
  v26 = OUTLINED_FUNCTION_0_54(v35);
  MEMORY[0x223DE2180](v26);

  v27 = v55[1];
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v55[1] = v28;
  v29 = OUTLINED_FUNCTION_0_54(v38);
  MEMORY[0x223DE2180](v29);

  v30 = OUTLINED_FUNCTION_0_54(v46);
  MEMORY[0x223DE2180](v30);

  v47 = strcpy(v55, "btTech ");
  MEMORY[0x223DE2180](0x656B6154656D6974, 0xEA0000000000206ELL);
  Double.write<A>(to:)();
  _StringGuts.grow(_:)(86);
  MEMORY[0x223DE2180](0xD000000000000018, 0x80000002235F9AF0);
  MEMORY[0x223DE2180](v54, v53);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v52, v51);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v50, 0xE700000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v49, 0xE900000000000020);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v48, 0xE800000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v45, v43);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v42, 0xE700000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v40, 0xE800000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000014, v36);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000017, v18);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000013, v21);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000013, v24);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000017, v27);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000017, v55[1]);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v47, 0xE700000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  return 0;
}

uint64_t getEnumTagSinglePayload for LinkRecommendationInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[112])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkRecommendationInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *NetworkConnectionError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  return &static NetworkConnectionError.errorDomain;
}

uint64_t static NetworkConnectionError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  swift_beginAccess();
  v0 = static NetworkConnectionError.errorDomain;

  return v0;
}

uint64_t static NetworkConnectionError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  swift_beginAccess();
  static NetworkConnectionError.errorDomain = a1;
  qword_281325628 = a2;
}

uint64_t (*static NetworkConnectionError.errorDomain.modify())()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t key path getter for static NetworkConnectionError.errorDomain : NetworkConnectionError.Type@<X0>(void *a1@<X8>)
{
  NetworkConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_281325628;
  *a1 = static NetworkConnectionError.errorDomain;
  a1[1] = v2;
}

uint64_t key path setter for static NetworkConnectionError.errorDomain : NetworkConnectionError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  NetworkConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static NetworkConnectionError.errorDomain = v2;
  qword_281325628 = v1;
}

uint64_t NetworkConnectionError.errorCode.getter()
{
  v1 = *v0;
  v2 = v0[3];
  result = 5;
  switch(v2 >> 60)
  {
    case 1uLL:
      result = 6;
      break;
    case 2uLL:
      result = 7;
      break;
    case 3uLL:
      result = 8;
      break;
    case 4uLL:
      result = 17;
      break;
    case 5uLL:
      result = 9;
      break;
    case 6uLL:
      result = 10;
      break;
    case 7uLL:
      result = 12;
      break;
    case 8uLL:
      result = 13;
      break;
    case 9uLL:
      result = 14;
      break;
    case 0xAuLL:
      v4 = v0[4];
      if (v2 == 0xA000000000000000 && (v0[1] | v0[2] | v1 | v4) == 0)
      {
        result = 0;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v6 = v1 == 1) : (v6 = 0), v6 ? (v7 = *(v0 + 1) == 0) : (v7 = 0), v7))
      {
        result = 1;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v8 = v1 == 2) : (v8 = 0), v8 ? (v9 = *(v0 + 1) == 0) : (v9 = 0), v9))
      {
        result = 2;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v10 = v1 == 3) : (v10 = 0), v10 && *(v0 + 1) == 0))
      {
        result = 3;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v11 = v1 == 4) : (v11 = 0), v11 && *(v0 + 1) == 0))
      {
        result = 4;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v12 = v1 == 5) : (v12 = 0), v12 && *(v0 + 1) == 0))
      {
        result = 18;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v13 = v1 == 6) : (v13 = 0), v13 && *(v0 + 1) == 0))
      {
        result = 19;
      }

      else if (!v4 && (v2 == 0xA000000000000000 ? (v14 = v1 == 7) : (v14 = 0), v14 && *(v0 + 1) == 0))
      {
        result = 11;
      }

      else if (*(v0 + 1) == 0 && v1 == 8 && v2 == 0xA000000000000000 && v4 == 0)
      {
        result = 15;
      }

      else
      {
        result = 16;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t NetworkConnectionError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = v4 >> 60;
  if ((v4 >> 60) <= 9)
  {
    v8 = v7 == 3 ? v5 : v1;
    if (v8)
    {
      *&v29 = v8;
      outlined copy of NetworkConnectionError(v1, v2, v3, v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v9 = type metadata accessor for NSError();
      if (swift_dynamicCast())
      {
        v10 = *MEMORY[0x277CCA7E8];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
        v30 = v9;
        *&v29 = *&v28[0];
        outlined init with take of Any(&v29, v28);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_1_31();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v11, v13);

        v6 = v27;
      }
    }
  }

  if (v7 == 3)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v18 = MEMORY[0x277D83B88];
    if (v2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v1;
    }

    v30 = MEMORY[0x277D83B88];
    *&v29 = v19;
    outlined init with take of Any(&v29, v28);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_31();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v15, v17);

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v4)
    {
      v24 = 0;
    }

    else
    {
      v24 = v3;
    }

    v30 = v18;
    *&v29 = v24;
    outlined init with take of Any(&v29, v28);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_31();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v21, v23);

    return v27;
  }

  return v6;
}

uint64_t protocol witness for Error._domain.getter in conformance NetworkConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance NetworkConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for NetworkConnectionError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkConnectionError(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
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

void *destructiveInjectEnumTag for NetworkConnectionError(void *result, uint64_t a2)
{
  if (a2 < 0xA)
  {
    v2 = result[3] & 1 | (a2 << 60);
    result[1] &= 1uLL;
    result[3] = v2;
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 10);
    *(result + 3) = xmmword_2235F01E0;
  }

  return result;
}

id static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:snConnectionAnalysisInfo:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v53 = a8;
  v50 = a5;
  v51 = a7;
  v48 = a4;
  v49 = a6;
  v47 = a2;
  v52 = a1;
  v10 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = type metadata accessor for ConnectionAnalysisInfo();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a9)
  {
    v22 = [a9 connectionType];
    v23 = [v22 technology];
  }

  else
  {
    v23 = 0;
  }

  ConnectionType.init(rawValue:)(v23);
  v24 = v54;
  if (!a9)
  {
    v29 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v29);
    v30 = 0;
LABEL_11:
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    goto LABEL_12;
  }

  v25 = [a9 connectionURL];
  if (v25)
  {
    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = type metadata accessor for URL();
    v28 = 0;
  }

  else
  {
    v27 = type metadata accessor for URL();
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v28, 1, v27);
  outlined init with take of URL?(v15, v17);
  result = [a9 interfaceIndex];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    return result;
  }

  v30 = result;
  isa = [a9 sendBufferSize];
  if (!isa)
  {
    goto LABEL_11;
  }

LABEL_12:
  v33 = UInt64.init(truncating:)();

  if (a9)
  {
    v34 = [a9 wwanPreferred];
    v10 = outlined bridged method (pb) of @objc SAConnectionPolicy.policyId.getter(a9);
    v36 = v35;
  }

  else
  {
    v36 = 0;
    v34 = 0;
  }

  if (v24 == 25)
  {
    LOBYTE(v24) = 0;
  }

  outlined init with take of URL?(v17, v21);
  v37 = &v21[v18[5]];
  *v37 = v30;
  v37[4] = 0;
  *&v21[v18[6]] = v33;
  v21[v18[7]] = v34;
  v21[v18[8]] = v24;
  v38 = &v21[v18[9]];
  *v38 = v10;
  v38[1] = v36;
  if (a3)
  {
    v39 = v47;
  }

  else
  {
    v39 = 0;
  }

  if (a3)
  {
    v40 = a3;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  if (v50)
  {
    v41 = v48;
  }

  else
  {
    v41 = 0;
  }

  if (v50)
  {
    v42 = v50;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  if (v51)
  {
    v43 = v49;
  }

  else
  {
    v43 = 0;
  }

  if (v51)
  {
    v44 = v51;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  v45 = static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:connectionAnalysisInfo:)(v52, v39, v40, v41, v42, v43, v44, v53 & 1, v21);

  outlined destroy of ConnectionAnalysisInfo(v21);
  return v45;
}

id static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:connectionAnalysisInfo:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D58C10]) init];
  if (!a1)
  {
    v54 = 0u;
    v55 = 0u;
LABEL_12:
    outlined destroy of Any?(&v54);
LABEL_13:
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D58BC8]);
  v13 = a1;
  v14 = [v12 init];
  if (v14)
  {
    v15 = v14;
    v16 = [v13 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v17, v18, v19, &selRef_setDomain_);
    v20 = [v13 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v21, v22, v23, &selRef_setDescription_);
    [v15 setErrorCode_];
    if (v11)
    {
      v24 = v11;
      v25 = v15;
      [v24 setError_];
    }
  }

  v26 = [v13 userInfo];
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *MEMORY[0x277CCA7E8];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, v30, v27, &v54);

  if (!*(&v55 + 1))
  {
    goto LABEL_12;
  }

  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v31 = v53;
  v32 = [objc_allocWithZone(MEMORY[0x277D58BC8]) init];
  if (v32)
  {
    v33 = v32;
    v34 = [v53 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v35, v36, v37, &selRef_setDomain_);
    v38 = [v53 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_11_12(v39, v40, v41, &selRef_setDescription_);
    [v33 setErrorCode_];
    if (!v11)
    {

      goto LABEL_15;
    }

    v42 = v11;
    v43 = v33;
    [v42 setUnderlyingError_];

LABEL_14:
    LOBYTE(v54) = *(a9 + *(type metadata accessor for ConnectionAnalysisInfo() + 32));
    [v11 setConnectionType_];
    v44 = v11;
    [v44 setConnectionMode_];

    v45 = v44;
    [v45 setSessionType_];

    v31 = v45;
    [v31 setNetworkSessionState_];
LABEL_15:

    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_16:
  [v11 setIsDormant_];
  if (v11)
  {
    v46 = type metadata accessor for ConnectionAnalysisInfo();
    [v11 setIsWwanPreferred_];
    [v11 setSendBufferSize_];
    v47 = (a9 + v46[9]);
    v48 = v47[1];
    if (v48)
    {
      v49 = *v47;
      v50 = v11;
      v48 = MEMORY[0x223DE2070](v49, v48);
    }

    else
    {
      v51 = v11;
    }

    [v11 setPolicyId_];
  }

  return v11;
}

uint64_t static NetworkAnalytics.netConnectionMode(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE900000000000074;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 1;
  }

  else if (v4 == 0xD000000000000015 && 0x80000002235F9B90 == v0)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_4_29();
    OUTLINED_FUNCTION_12_11();
    if (v4)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static NetworkAnalytics.netSessionType(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE500000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v4 == OUTLINED_FUNCTION_13_11() && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v8 = v4 == (OUTLINED_FUNCTION_13_11() & 0xFFFFFFFFFFFFLL | 0x696C000000000000) && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
      {

        return 3;
      }

      else if (v4 == (OUTLINED_FUNCTION_13_11() & 0xFFFFFFFFFFFFLL | 0x7566000000000000) && v0 == v9)
      {

        return 4;
      }

      else
      {
        OUTLINED_FUNCTION_4_29();
        OUTLINED_FUNCTION_12_11();
        if (v4)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t static NetworkAnalytics.netSessionState(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v4 == 0x676E6974696177 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v7 = v4 == 0x6961777972746572 && v0 == 0xEC000000676E6974;
      if (v7 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7_21();
        v9 = v4 == 0xD000000000000011 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_7_21();
          v11 = v4 == 0xD000000000000010 && v10 == v0;
          if (v11 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
          {

            return 5;
          }

          else
          {
            v12 = v4 == 0x6F6464656E65706FLL && v0 == 0xED0000746E616D72;
            if (v12 || (OUTLINED_FUNCTION_3_30() & 1) != 0)
            {

              return 6;
            }

            else
            {
              v13 = v4 == 0x69746E6568747561 && v0 == 0xEE00676E69746163;
              if (v13 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
              {

                return 7;
              }

              else
              {
                v14 = v4 == 0x676E69646C6F68 && v0 == 0xE700000000000000;
                if (v14 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v15 = v4 == 0x7361657461657263 && v0 == 0xEF746E6174736973;
                  if (v15 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    v16 = v4 == 0x6973736164616F6CLL && v0 == 0xED0000746E617473;
                    if (v16 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_7_21();
                      v18 = v4 == 0xD000000000000010 && v17 == v0;
                      if (v18 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                      {

                        return 11;
                      }

                      else if (v4 == 0x657669746361 && v0 == 0xE600000000000000)
                      {

                        return 12;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_4_29();
                        OUTLINED_FUNCTION_12_11();
                        if (v4)
                        {
                          return 12;
                        }

                        else
                        {
                          return 0;
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

uint64_t @objc static NetworkAnalytics.netConnectionMode(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4(v5);

  return v6;
}

unint64_t static NetworkAnalytics.netEndpointFromDictionary(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D58BC0]) init];
  result = specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, a1);
  if ((v4 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (HIDWORD(result))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v2 setType_];
  }

  result = specialized Dictionary.subscript.getter(1953656688, 0xE400000000000000, a1);
  if ((v5 & 1) != 0 || !v2)
  {
    return v2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (!HIDWORD(result))
  {
    [v2 setPort_];
    return v2;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t static NetworkAnalytics.netEndpointsFromArray(_:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      outlined init with copy of Any(v3, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
      if (swift_dynamicCast())
      {
        v4 = static NetworkAnalytics.netEndpointFromDictionary(_:)(v7);

        if (v4)
        {
          v5 = v4;
          MEMORY[0x223DE2240]();
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v1 = v9;
        }
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return v1;
}

uint64_t static NetworkAnalytics.netPathType(from:)(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t static NetworkAnalytics.netPathInterfaces(from:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v61);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    OUTLINED_FUNCTION_1_32(v4, v5, v6, v4, v7, v8, v9, v10, v58, v59);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v11 = v59;
    v12 = [objc_allocWithZone(MEMORY[0x277D58BF8]) init];
    if (!v12)
    {

      goto LABEL_26;
    }

    v13 = v12;
    if (*(v59 + 16))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_6_23(v14);
        v17 = outlined init with copy of Any(v16, v61);
        OUTLINED_FUNCTION_1_32(v17, v18, v19, v20, v21, v22, v23, v24, v58, v59);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_11:
    if (*(v11 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_6_23(v26);
        v29 = outlined init with copy of Any(v28, v61);
        OUTLINED_FUNCTION_1_32(v29, v30, v31, v32, v33, v34, v35, v36, v58, v59);
        if (swift_dynamicCast())
        {
          outlined bridged method (mbnn) of @objc NETSchemaNETError.domain.setter(v59, v60, v13, &selRef_setName_);
        }
      }
    }

    if (*(v11 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x7865646E69, 0xE500000000000000), (v38 & 1) != 0))
    {
      v39 = OUTLINED_FUNCTION_6_23(v37);
      outlined init with copy of Any(v39, v61);

      OUTLINED_FUNCTION_1_32(v40, v41, v42, v43, v44, v45, v46, v47, v58, v59);
      result = swift_dynamicCast();
      if (result)
      {
        if ((v59 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (HIDWORD(v59))
        {
          goto LABEL_31;
        }

        [v13 setIndex_];
      }
    }

    else
    {
    }

    v48 = v13;
    v49 = MEMORY[0x223DE2240]();
    OUTLINED_FUNCTION_16_11(v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, v60, v61[0], v61[1], v61[2], v61[3], v62);
    if (v57)
    {
      OUTLINED_FUNCTION_14_7();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = v62;
LABEL_26:
    if (!--v2)
    {
      return v1;
    }
  }

  result = v59;
  if ((v59 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v59))
    {
      goto LABEL_30;
    }

    [v13 setType_];
    goto LABEL_11;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t static NetworkAnalytics.netPathStatus(from:)(unsigned int a1)
{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static NetworkAnalytics.netEstablishmentResolution(from:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = 0xD000000000000010;
  v4 = a1 + 32;
  v72 = "resolutionSource";
  v73 = "destroyassistant";
  v71 = "successfulEndpoint";
  while (1)
  {
    outlined init with copy of Any(v4, v75);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    OUTLINED_FUNCTION_5_27(v5, v6, v7, v5, v8, v9, v10, v11, v70, v71, v72, v73, v74);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v12 = v74;
    v13 = [objc_allocWithZone(MEMORY[0x277D58BD0]) init];
    if (!v13)
    {

      goto LABEL_37;
    }

    v14 = v13;
    if (*(v74 + 16))
    {
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F697461727564, 0xE800000000000000);
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_6_23(v15);
        v18 = outlined init with copy of Any(v17, v75);
        OUTLINED_FUNCTION_5_27(v18, v19, v20, v21, v22, v23, v24, v25, v70, v71, v72, v73, v74);
        result = swift_dynamicCast();
        if (result)
        {
          break;
        }
      }
    }

LABEL_10:
    if (*(v12 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, v73 | 0x8000000000000000);
      if (v28)
      {
        v29 = OUTLINED_FUNCTION_6_23(v27);
        v30 = outlined init with copy of Any(v29, v75);
        OUTLINED_FUNCTION_5_27(v30, v31, v32, v33, v34, v35, v36, v37, v70, v71, v72, v73, v74);
        result = swift_dynamicCast();
        if (result)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          if (HIDWORD(v74))
          {
            goto LABEL_42;
          }

          [v14 setResolutionSource_];
        }
      }
    }

    if (*(v12 + 16))
    {
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v3 + 2, v72 | 0x8000000000000000);
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_6_23(v38);
        outlined init with copy of Any(v40, v75);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
        OUTLINED_FUNCTION_5_27(v41, v42, v43, v41, v44, v45, v46, v47, v70, v71, v72, v73, v74);
        if (swift_dynamicCast())
        {
          v3 = v74;
          static NetworkAnalytics.netEndpointFromDictionary(_:)(v74);
          OUTLINED_FUNCTION_18_11();
          if (v1)
          {
            [v14 setSuccessfulEndpoint_];
          }
        }
      }
    }

    if (*(v12 + 16))
    {
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v3 + 1, v71 | 0x8000000000000000);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_6_23(v48);
        outlined init with copy of Any(v50, v75);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
        OUTLINED_FUNCTION_5_27(v51, v52, v53, v51, v54, v55, v56, v57, v70, v71, v72, v73, v74);
        if (swift_dynamicCast())
        {
          v3 = v74;
          static NetworkAnalytics.netEndpointFromDictionary(_:)(v74);
          OUTLINED_FUNCTION_18_11();
          if (v1)
          {
            [v14 setPreferredEndpoint_];
          }
        }
      }
    }

    if (*(v12 + 16) && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E696F70646E65, 0xED0000746E756F43), (v59 & 1) != 0))
    {
      v60 = OUTLINED_FUNCTION_6_23(v58);
      outlined init with copy of Any(v60, v75);

      OUTLINED_FUNCTION_5_27(v61, v62, v63, v64, v65, v66, v67, v68, v70, v71, v72, v73, v74);
      result = swift_dynamicCast();
      if (result)
      {
        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (HIDWORD(v74))
        {
          goto LABEL_43;
        }

        [v14 setEndpointCount_];
      }
    }

    else
    {
    }

    v69 = v14;
    MEMORY[0x223DE2240]();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = v76;
LABEL_37:
    v4 += 32;
    if (!--v2)
    {
      return v1;
    }
  }

  if ((v74 & 0x8000000000000000) == 0)
  {
    [v14 setDuration_];
    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

id static NetworkAnalytics.netProxyConfiguration(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D58C08]) init];
  if (v2)
  {
    [v2 setIsProxyConfigured_];
    v3 = v2;
    [v3 setUsingConfiguredProxy_];
  }

  return v2;
}

uint64_t static NetworkAnalytics.netHandshakeProtocol(from:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = a1 + 32;
  v63 = "usingConfiguredProxy";
  v4 = MEMORY[0x277D83B88];
  while (1)
  {
    outlined init with copy of Any(v3, v66);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    OUTLINED_FUNCTION_1_32(v5, v6, v7, v5, v8, v9, v10, v11, v63, v64);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_27:
    v3 += 32;
    if (!--v2)
    {
      return v1;
    }
  }

  v12 = v64;
  v13 = [objc_allocWithZone(MEMORY[0x277D58BD8]) init];
  if (!v13)
  {

    goto LABEL_27;
  }

  v14 = v13;
  if (*(v64 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6F636F746F7270, 0xE800000000000000);
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_6_23(v15);
      v18 = outlined init with copy of Any(v17, v66);
      OUTLINED_FUNCTION_1_32(v18, v19, v20, v21, v22, v23, v24, v25, v63, v64);
      if (swift_dynamicCast())
      {
        v26 = v4;
        v27 = static NetworkAnalytics.netProtocol(from:)();

        v28 = v27;
        v4 = v26;
        [v14 setProtocol_];
      }
    }
  }

  if (*(v12 + 16))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(0x6B616853646E6168, 0xEC00000054545265);
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_6_23(v29);
      v32 = outlined init with copy of Any(v31, v66);
      OUTLINED_FUNCTION_1_32(v32, v33, v34, v35, v36, v37, v38, v39, v63, v64);
      if ((swift_dynamicCast() & 1) != 0 && (v64 & 0x8000000000000000) == 0)
      {
        if (v64 >= 0xFFFFFFFF)
        {
          v40 = 0xFFFFFFFFLL;
        }

        else
        {
          v40 = v64;
        }

        [v14 setHandShakeRTT_];
      }
    }
  }

  if (!*(v12 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, v63 | 0x8000000000000000), (v42 & 1) == 0))
  {

    goto LABEL_23;
  }

  v43 = OUTLINED_FUNCTION_6_23(v41);
  outlined init with copy of Any(v43, v66);

  OUTLINED_FUNCTION_1_32(v44, v45, v46, v47, v48, v49, v50, v51, v63, v64);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_23:
    v53 = v14;
    v54 = MEMORY[0x223DE2240]();
    OUTLINED_FUNCTION_16_11(v54, v55, v56, v57, v58, v59, v60, v61, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v67);
    if (v62)
    {
      OUTLINED_FUNCTION_14_7();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = v67;
    goto LABEL_27;
  }

  if ((v64 & 0x8000000000000000) == 0)
  {
    [v14 setHandShakeDuration_];
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETError.domain.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x223DE2070]();

  [a3 *a4];
}

Swift::Void __swiftcall NetworkManager.forceFastDormancy()()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  (*(v3 + 104))(v7, *MEMORY[0x277D851C8], v0);
  v8 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v7, v0);
  v9 = _CTServerConnectionCreateOnTargetQueue();

  if (v9)
  {
    v10 = _CTServerForceFastDormancy();
    if (v10)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v11 = type metadata accessor for Logger();
      v12 = OUTLINED_FUNCTION_17(v11, static Logger.siriNetwork);
      v13 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_15_1(v13))
      {
        goto LABEL_12;
      }

      v14 = swift_slowAlloc();
      *(OUTLINED_FUNCTION_4_30(v14, 1.5047e-36) + 10) = HIDWORD(v10);
      OUTLINED_FUNCTION_2_35();
      v20 = 14;
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v21 = type metadata accessor for Logger();
      v12 = OUTLINED_FUNCTION_17(v21, static Logger.siriNetwork);
      v22 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_15_1(v22))
      {
        goto LABEL_12;
      }

      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_2_35();
      v20 = 2;
    }

    _os_log_impl(v15, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_12();
LABEL_12:

    swift_unknownObjectRelease();
  }
}

void closure #1 in static NetworkManager.acquireDormancySuspendAssertion(_:)()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_223515000, oslog, v1, "NetworkManager - Assertion: Dormancy Suspend Assertion auto expired.", v2, 2u);
    MEMORY[0x223DE38F0](v2, -1, -1);
  }
}

uint64_t *MessageCenterError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  return &static MessageCenterError.errorDomain;
}

uint64_t static MessageCenterError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  swift_beginAccess();
  v0 = static MessageCenterError.errorDomain;

  return v0;
}

uint64_t static MessageCenterError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  swift_beginAccess();
  static MessageCenterError.errorDomain = a1;
  qword_27D08A820 = a2;
}

uint64_t (*static MessageCenterError.errorDomain.modify())()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_57();
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t key path getter for static MessageCenterError.errorDomain : MessageCenterError.Type@<X0>(void *a1@<X8>)
{
  MessageCenterError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D08A820;
  *a1 = static MessageCenterError.errorDomain;
  a1[1] = v2;
}

uint64_t key path setter for static MessageCenterError.errorDomain : MessageCenterError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  MessageCenterError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static MessageCenterError.errorDomain = v2;
  qword_27D08A820 = v1;
}

uint64_t MessageCenterError.errorCode.getter()
{
  result = *(v0 + 8);
  switch(*(v0 + 8))
  {
    case 1:
      result = 200;
      break;
    case 2:
      result = 300;
      break;
    case 3:
      result = 400;
      break;
    case 4:
      result = 401;
      break;
    case 5:
      result = 403;
      break;
    case 6:
      result = 404;
      break;
    case 7:
      result = 406;
      break;
    case 8:
      result = qword_2235F5B18[*v0];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MessageCenterError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (v2 <= 7 && v1 != 0)
  {
    *&v12 = v1;
    outlined copy of MessageCenterError(v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = type metadata accessor for NSError();
    if (swift_dynamicCast())
    {
      v6 = *MEMORY[0x277CCA7E8];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v13 = v5;
      *&v12 = *&v11[0];
      outlined init with take of Any(&v12, v11);
      swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v7, v9);
    }
  }

  return v3;
}

id outlined copy of MessageCenterError(id result, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MessageCenterError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MessageCenterError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork18MessageCenterErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 8) & 0xF;
  }
}

uint64_t getEnumTagSinglePayload for MessageCenterError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 9))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 8)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageCenterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MessageCenterError(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionHandshakeReport(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionHandshakeReport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t NWEndpoint.endpointReport()()
{
  v1 = v0;
  v2 = type metadata accessor for NWEndpoint.Port();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for NWEndpoint.Host();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v19 = v18 - v17;
  v20 = type metadata accessor for NWEndpoint();
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_1();
  v28 = (v27 - v26);
  (*(v23 + 16))(v27 - v26, v1, v20);
  v29 = *(v23 + 88);
  v30 = OUTLINED_FUNCTION_6_1();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x277CD8B08])
  {
    v33 = *(v23 + 96);
    v34 = OUTLINED_FUNCTION_6_1();
    v35(v34);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
    (*(v14 + 32))(v19, v28, v11);
    (*(v5 + 32))(v10, &v28[v36], v2);
    v37 = NWEndpoint.Host.debugDescription.getter();
    NWEndpoint.Port.rawValue.getter();
    (*(v5 + 8))(v10, v2);
    (*(v14 + 8))(v19, v11);
  }

  else
  {
    if (v32 != *MEMORY[0x277CD8B00])
    {
      if (v32 != *MEMORY[0x277CD8AF0])
      {
        if (v32 == *MEMORY[0x277CD8AD0])
        {
          v45 = *(v23 + 8);
          v46 = OUTLINED_FUNCTION_6_1();
          v47(v46);
          return 0;
        }

        v48 = *MEMORY[0x277CD8AF8];
      }

      v49 = *(v23 + 8);
      v50 = OUTLINED_FUNCTION_6_1();
      v51(v50);
      return 0;
    }

    v38 = *(v23 + 96);
    v39 = OUTLINED_FUNCTION_6_1();
    v40(v39);
    v41 = *(v28 + 1);

    v42 = *(v28 + 3);

    v43 = *(v28 + 5);

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
    outlined destroy of ConnectionSnapshotReport?(&v28[*(v44 + 80)], &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
    return 0;
  }

  return v37;
}

uint64_t ConnectionConfiguration.connectionId.getter()
{
  if (v0[51] == 1 || v0[53] == 0)
  {
    v3 = v0 + 6;
    v4 = v0[6];
    v2 = v3[1];
  }

  else
  {
    v4 = v0[52];
  }

  return v4;
}

uint64_t ConnectionConfiguration.connectionId.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ConnectionProtocolTechnology.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

void static ConnectionConfiguration.default.getter(uint64_t a1@<X8>)
{
  if (AFIsInternalInstall())
  {
    _AFPreferencesShouldUseTFO();
  }

  *a1 = vdupq_n_s64(1uLL);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 111) = 0;
  *(a1 + 128) = 1;
  OUTLINED_FUNCTION_12_12(vdupq_n_s64(0x4056800000000000uLL), 0);
  *(a1 + 200) = v2;
  *(a1 + 201) = v3;
  *(a1 + 208) = 0x4024000000000000;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0x4000000000000000;
  *(a1 + 232) = 0;
  *(a1 + 240) = 3;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0x4008000000000000;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0x402E000000000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = v3;
  *(a1 + 304) = v4;
  *(a1 + 312) = 0;
  *(a1 + 320) = v5;
  *(a1 + 336) = v5;
  *(a1 + 352) = v5;
  *(a1 + 368) = v5;
  *(a1 + 384) = v5;
  *(a1 + 400) = 0;
  *(a1 + 408) = v3;
  *(a1 + 416) = v5;
  *(a1 + 432) = v5;
  *(a1 + 448) = v5;
  *(a1 + 464) = v5;
  *(a1 + 480) = v5;
  *(a1 + 496) = v5;
  *(a1 + 512) = 0;
}

uint64_t ConnectionConfiguration.assistantIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionConfiguration.assistantIdentifier.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ConnectionConfiguration.peerAssistantIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionConfiguration.peerAssistantIdentifier.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t key path setter for ConnectionConfiguration.connectionId : ConnectionConfiguration(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ConnectionConfiguration.connectionId.setter();
}

uint64_t (*ConnectionConfiguration.connectionId.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[7];
  a1[2] = v1;
  a1[3] = v3;
  if (v1[51] == 1 || v1[53] == 0)
  {
    v5 = v1[6];

    v6 = v3;
  }

  else
  {
    v5 = v1[52];
  }

  *a1 = v5;
  a1[1] = v6;
  return ConnectionConfiguration.connectionId.modify;
}

uint64_t ConnectionConfiguration.connectionId.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 48) = v3;
    *(v5 + 56) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 48) = v3;
    *(v5 + 56) = v2;
  }

  return result;
}

uint64_t ConnectionConfiguration.remoteHost.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionConfiguration.remoteHost.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ConnectionConfiguration.languageCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionConfiguration.languageCode.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void *ConnectionConfiguration.skipPeerErrorReason.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t ConnectionConfiguration.timeout.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t ConnectionConfiguration.timeout.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t ConnectionConfiguration.productTypePrefix.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionConfiguration.productTypePrefix.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t ConnectionConfiguration.peerType.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionConfiguration.peerType.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t ConnectionConfiguration.peerVersion.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionConfiguration.peerVersion.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t ConnectionConfiguration.connectionPolicy.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 320), sizeof(__dst));
  memcpy(a1, (v1 + 320), 0x50uLL);
  return outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(__dst, &v4, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
}

void *ConnectionConfiguration.connectionPolicy.setter(const void *a1)
{
  memcpy(v4, (v1 + 320), sizeof(v4));
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v4, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
  return memcpy((v1 + 320), a1, 0x50uLL);
}

uint64_t ConnectionConfiguration.connectionPolicyRoute.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 400), 0x72uLL);
  memcpy(a1, (v1 + 400), 0x72uLL);
  return outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(__dst, v4, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
}

void *ConnectionConfiguration.connectionPolicyRoute.setter(const void *a1)
{
  memcpy(__dst, (v1 + 400), 0x72uLL);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(__dst, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
  return memcpy((v1 + 400), a1, 0x72uLL);
}

unint64_t lazy protocol witness table accessor for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology()
{
  result = lazy protocol witness table cache variable for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology;
  if (!lazy protocol witness table cache variable for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionProtocolTechnology and conformance ConnectionProtocolTechnology);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology()
{
  result = lazy protocol witness table cache variable for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology;
  if (!lazy protocol witness table cache variable for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunicationProtocolTechnology and conformance CommunicationProtocolTechnology);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionConfiguration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 516))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 512) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 516) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 516) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t CommunicationProtocolProtobuf.protobufDelegate.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v1);
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t CommunicationProtocolProtobuf.__allocating_init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  CommunicationProtocolProtobuf.init(withDelegate:connectionQueue:)(a1, a2, a3);
  return v6;
}

uint64_t CommunicationProtocolProtobuf.init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_0_1();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = xmmword_2235EF700;
  *(v3 + 48) = xmmword_2235EF700;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v9, *MEMORY[0x277D85260], v16);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  *(v4 + 64) = v14;
  *(v4 + 72) = xmmword_2235EF700;
  *(v4 + 88) = 0;
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t CommunicationProtocolProtobuf.updateBuffers(forInitialPayload:bufferedLength:forceReconnect:)()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = v0[5];
  *(v0 + 2) = xmmword_2235EF6F0;
  outlined consume of Data?(v1, v2);
  swift_beginAccess();
  v3 = v0[6];
  v4 = v0[7];
  *(v0 + 3) = xmmword_2235EF6F0;
  return outlined consume of Data?(v3, v4);
}

uint64_t CommunicationProtocolProtobuf.bufferGeneralData(data:)()
{
  swift_beginAccess();
  if (*(v0 + 40) >> 60 != 15)
  {
    OUTLINED_FUNCTION_32();
    Data.append(_:)();
  }

  return swift_endAccess();
}

uint64_t CommunicationProtocolProtobuf.bufferUncompressedData(data:)()
{
  swift_beginAccess();
  if (*(v0 + 56) >> 60 != 15)
  {
    OUTLINED_FUNCTION_32();
    Data.append(_:)();
  }

  return swift_endAccess();
}

uint64_t CommunicationProtocolProtobuf.getBufferedUncompressedDataToWrite()()
{
  OUTLINED_FUNCTION_2_37();
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 48);
    switch(v1 >> 62)
    {
      case 1uLL:
        v7 = v2;
        v8 = v2 >> 32;
        goto LABEL_7;
      case 2uLL:
        v7 = *(v2 + 16);
        v8 = *(v2 + 24);
LABEL_7:
        if (v7 == v8)
        {
          return OUTLINED_FUNCTION_32();
        }

        v9 = OUTLINED_FUNCTION_32();
        outlined copy of Data?(v9, v10);
        v4 = *(v0 + 48);
        v3 = *(v0 + 56);
        goto LABEL_10;
      case 3uLL:
        goto LABEL_4;
      default:
        v3 = *(v0 + 56);
        v4 = *(v0 + 48);
        if ((v1 & 0xFF000000000000) != 0)
        {
LABEL_10:
          *(v0 + 48) = xmmword_2235EF6F0;
          outlined consume of Data?(v4, v3);
        }

        else
        {
LABEL_4:
          v5 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v5, v6);
        }

        break;
    }
  }

  return OUTLINED_FUNCTION_32();
}

uint64_t CommunicationProtocolProtobuf.getBufferedOutputDataToWrite()()
{
  OUTLINED_FUNCTION_2_37();
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 32);
    switch(v1 >> 62)
    {
      case 1uLL:
        v7 = v2;
        v8 = v2 >> 32;
        goto LABEL_7;
      case 2uLL:
        v7 = *(v2 + 16);
        v8 = *(v2 + 24);
LABEL_7:
        if (v7 == v8)
        {
          return OUTLINED_FUNCTION_32();
        }

        v9 = OUTLINED_FUNCTION_32();
        outlined copy of Data?(v9, v10);
        v4 = *(v0 + 32);
        v3 = *(v0 + 40);
        goto LABEL_10;
      case 3uLL:
        goto LABEL_4;
      default:
        v3 = *(v0 + 40);
        v4 = *(v0 + 32);
        if ((v1 & 0xFF000000000000) != 0)
        {
LABEL_10:
          *(v0 + 32) = xmmword_2235EF6F0;
          outlined consume of Data?(v4, v3);
        }

        else
        {
LABEL_4:
          v5 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v5, v6);
        }

        break;
    }
  }

  return OUTLINED_FUNCTION_32();
}

Swift::Void __swiftcall CommunicationProtocolProtobuf.closeConnection(prepareForReconnect:)(Swift::Bool prepareForReconnect)
{
  if (!prepareForReconnect)
  {
    OUTLINED_FUNCTION_2_37();
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    *(v1 + 32) = xmmword_2235EF700;
    outlined consume of Data?(v2, v3);
  }
}

uint64_t CommunicationProtocolProtobuf.bytesAvailable(_:)()
{
  if (CommunicationProtocolProtobuf.protobufDelegate.getter())
  {
    BackgroundConnection.updateFirstByteReadTime()();
    swift_unknownObjectRelease();
  }

  result = CommunicationProtocolProtobuf.protobufDelegate.getter();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_32();
    BackgroundConnection.didReceiveObject(_:)(v1, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CommunicationProtocolProtobuf.deinit()
{
  outlined destroy of weak ConnectionProviderDelegate?(v0 + 16);
  outlined consume of Data?(*(v0 + 32), *(v0 + 40));
  outlined consume of Data?(*(v0 + 48), *(v0 + 56));

  outlined consume of Data?(*(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);

  return v0;
}

uint64_t CommunicationProtocolProtobuf.__deallocating_deinit()
{
  CommunicationProtocolProtobuf.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t protocol witness for CommunicationProtocol.init(withDelegate:connectionQueue:) in conformance CommunicationProtocolProtobuf@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = CommunicationProtocolProtobuf.__allocating_init(withDelegate:connectionQueue:)(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.getter in conformance CommunicationProtocolProtobuf()
{
  v1 = *(*v0 + 72);
  outlined copy of Data?(v1, *(*v0 + 80));
  return v1;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.setter in conformance CommunicationProtocolProtobuf(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 80);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return outlined consume of Data?(v4, v5);
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}