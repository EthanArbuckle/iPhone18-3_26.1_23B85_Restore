void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork25MessageCenterActorWrapperV_Tt0g5()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  v3 = OUTLINED_FUNCTION_15(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (*(v1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR), OUTLINED_FUNCTION_15_8(), v12 = static _SetStorage.allocate(capacity:)(), v13 = v12, (v38 = *(v1 + 16)) != 0))
  {
    v14 = 0;
    v15 = v12 + 56;
    v16 = *(v39 + 80);
    v36 = v1;
    v37 = v1 + ((v16 + 32) & ~v16);
    while (v14 < *(v1 + 16))
    {
      v17 = *(v39 + 72);
      v18 = v14 + 1;
      outlined init with copy of MessageCenterActorWrapper(v37 + v17 * v14, v11);
      v19 = *(v13 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._finalize()();
      v20 = *(v13 + 32);
      OUTLINED_FUNCTION_18_8();
      v23 = ~v22;
      while (1)
      {
        v24 = v21 & v23;
        v25 = (v21 & v23) >> 6;
        v26 = *(v15 + 8 * v25);
        v27 = 1 << (v21 & v23);
        if ((v27 & v26) == 0)
        {
          break;
        }

        outlined init with copy of MessageCenterActorWrapper(*(v13 + 48) + v24 * v17, v9);
        v28 = static UUID.== infix(_:_:)();
        OUTLINED_FUNCTION_23_2();
        outlined destroy of ConnectionAnalysisInfo(v9, v29);
        if (v28)
        {
          OUTLINED_FUNCTION_23_2();
          outlined destroy of ConnectionAnalysisInfo(v11, v33);
          goto LABEL_12;
        }

        v21 = v24 + 1;
      }

      *(v15 + 8 * v25) = v27 | v26;
      outlined init with take of MessageCenterActorWrapper(v11, *(v13 + 48) + v24 * v17);
      v30 = *(v13 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v13 + 16) = v32;
LABEL_12:
      v14 = v18;
      v34 = v18 == v38;
      v1 = v36;
      if (v34)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_47();
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Network12NWConnectionC_Tt0g5(unint64_t a1)
{
  v1 = a1;
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd, &_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMR);
    OUTLINED_FUNCTION_15_8();
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v25 = specialized Array.count.getter(v1);
  if (v25)
  {
    v3 = 0;
    v4 = v2 + 56;
    v23 = v1;
    v24 = v1 & 0xC000000000000001;
    v22 = v1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v24 == 0, v1);
      if (v24)
      {
        v5 = MEMORY[0x223DE2730](v3, v1);
      }

      else
      {
        v5 = *(v22 + 8 * v3);
      }

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      v7 = *(v2 + 40);
      Hasher.init(_seed:)();
      v8 = NWConnection.identifier.getter();
      MEMORY[0x223DE29A0](v8);
      Hasher._finalize()();
      v9 = *(v2 + 32);
      OUTLINED_FUNCTION_18_8();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v4 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = *(*(v2 + 48) + 8 * v13);

        v18 = NWConnection.identifier.getter();
        v19 = NWConnection.identifier.getter();

        if (v18 == v19)
        {

          goto LABEL_17;
        }

        v10 = v13 + 1;
      }

      *(v4 + 8 * v14) = v16 | v15;
      *(*(v2 + 48) + 8 * v13) = v5;
      v20 = *(v2 + 16);
      v6 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v6)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v21;
LABEL_17:
      v1 = v23;
      if (v3 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_50_4();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v61 = v37;
  v38 = *v32;
  v39 = *(*v32 + 40);
  Hasher.init(_seed:)();
  MessageCenterEndpoint.hash(into:)();
  Hasher._finalize()();
  v40 = *(v38 + 32);
  OUTLINED_FUNCTION_18_8();
  v43 = v42 & ~v41;
  if (((*(v38 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
  {
LABEL_14:
    *(v61 + 32) = 0;
    *v61 = 0u;
    *(v61 + 16) = 0u;
    goto LABEL_20;
  }

  v44 = ~v41;
  while (1)
  {
    outlined init with copy of MessageCenterEndpoint(*(v38 + 48) + 40 * v43, &a12);
    __swift_project_boxed_opaque_existential_1(&a12, a15);
    v45 = OUTLINED_FUNCTION_55_3();
    v47 = v46(v45);
    v49 = v48;
    v50 = v36[3];
    v51 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v50);
    v52 = (*(v51 + 16))(v50, v51);
    if (!v49)
    {
      if (!v53)
      {
        goto LABEL_16;
      }

LABEL_12:

      outlined destroy of MessageCenterEndpoint(&a12);
      goto LABEL_13;
    }

    if (!v53)
    {
      goto LABEL_12;
    }

    if (v47 == v52 && v49 == v53)
    {
      break;
    }

    v55 = OUTLINED_FUNCTION_72_1();

    outlined destroy of MessageCenterEndpoint(&a12);
    if (v55)
    {
      goto LABEL_17;
    }

LABEL_13:
    v43 = (v43 + 1) & v44;
    if (((*(v38 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  outlined destroy of MessageCenterEndpoint(&a12);
LABEL_17:
  v56 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v32;
  a12 = *v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v58 = a12;
  }

  *v61 = OUTLINED_FUNCTION_60_3(v58);
  *(v61 + 16) = v59;
  *(v61 + 32) = *(v60 + 32);
  specialized _NativeSet._delete(at:)(v43);
  *v32 = a12;
LABEL_20:
  OUTLINED_FUNCTION_40_5();
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v8 = *(v4 + 40);
    Hasher.init(_seed:)();
    specialized BackgroundConnectionProtocol.hash(into:)(v23);
    v9 = Hasher._finalize()();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      memcpy(__dst, (v12 + 40), 0x204uLL);
      memcpy(v19, (v12 + 40), 0x204uLL);
      memcpy(v21, (a1 + 40), 0x204uLL);
      memcpy(__src, (a1 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, v17);
      outlined init with copy of ConnectionConfiguration(v21, v17);
      LOBYTE(v12) = static ConnectionConfiguration.== infix(_:_:)(v19, __src);
      memcpy(v22, __src, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v22);
      memcpy(v23, v19, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v23);
      if (v12)
      {
        v13 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v19[0] = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v15 = v19[0];
        }

        v7 = *(*(*&v15 + 48) + 8 * v11);
        specialized _NativeSet._delete(at:)(v11);
        *v2 = v19[0];
        return v7;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = __CocoaSet.contains(_:)();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = specialized Set._Variant._migrateToNative(_:removing:)(v5);

  return v7;
}

void specialized Set._Variant.remove(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_18_8();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((*(v6 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v10)) & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v11, v18);
    v12 = MEMORY[0x223DE26B0](v18, a1);
    outlined destroy of AnyHashable(v18);
    if (v12)
    {
      break;
    }

    v8 = v11 + 1;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v18[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v15 = v18[0];
  }

  *a2 = OUTLINED_FUNCTION_60_3(v15);
  *(a2 + 16) = v16;
  *(a2 + 32) = *(v17 + 32);
  specialized _NativeSet._delete(at:)(v11);
  *v3 = v18[0];
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Network12NWConnectionC_Tt1g5(v4, v3);
  v17 = v5;
  v6 = *(v5 + 40);
  Hasher.init(_seed:)();

  v7 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v7);
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v5 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    v11 = *(*(v5 + 48) + 8 * v10);

    v12 = NWConnection.identifier.getter();
    v13 = NWConnection.identifier.getter();

    if (v12 == v13)
    {

      v14 = *(*(v5 + 48) + 8 * v10);
      specialized _NativeSet._delete(at:)(v10);
      v15 = NWConnection.identifier.getter();
      if (v15 == NWConnection.identifier.getter())
      {
        *v1 = v17;
        return v14;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = *v1;

  v6 = __CocoaSet.count.getter();
  v7 = swift_unknownObjectRetain();
  v8 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11SiriNetwork20BackgroundConnectionC_Tt1g5(v7, v6);
  v27 = v8;
  v9 = *(v8 + 40);
  Hasher.init(_seed:)();

  specialized BackgroundConnectionProtocol.hash(into:)(v26);
  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v12 = v10 & v11;
    if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      break;
    }

    v13 = *(*(v8 + 48) + 8 * v12);
    memcpy(__dst, (v13 + 40), 0x204uLL);
    memcpy(v22, (v13 + 40), 0x204uLL);
    memcpy(v24, (v4 + 40), 0x204uLL);
    memcpy(__src, (v4 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(__dst, v20);
    outlined init with copy of ConnectionConfiguration(v24, v20);
    LOBYTE(v13) = static ConnectionConfiguration.== infix(_:_:)(v22, __src);
    memcpy(v25, __src, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v25);
    memcpy(v26, v22, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v26);
    if (v13)
    {

      v14 = *(*(v8 + 48) + 8 * v12);
      specialized _NativeSet._delete(at:)(v12);
      memcpy(v19, (v4 + 40), 0x204uLL);
      memcpy(v18, (v4 + 40), 0x204uLL);
      memcpy(v20, (v14 + 40), 0x204uLL);
      memcpy(v17, (v14 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(v19, v22);
      outlined init with copy of ConnectionConfiguration(v20, v22);
      v15 = static ConnectionConfiguration.== infix(_:_:)(v18, v17);
      memcpy(__src, v17, 0x204uLL);
      outlined destroy of ConnectionConfiguration(__src);
      memcpy(v22, v18, 0x204uLL);
      outlined destroy of ConnectionConfiguration(v22);
      if (v15)
      {
        *v2 = v27;
        return v14;
      }

      __break(1u);
      break;
    }

    v10 = v12 + 1;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ConnectionAnalysisInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_71(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of MessageCenterActorWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageCenterActorWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Set.startIndex.getter(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_18_8();
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t specialized Set.endIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return outlined init with copy of MessageCenterEndpoint(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for MessageCenterActorWrapper(0);
  OUTLINED_FUNCTION_11_1(v7);
  v9 = v6 + *(v8 + 72) * v4;

  return outlined init with copy of MessageCenterActorWrapper(v9, a4);
}

uint64_t specialized Set.subscript.getter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v6 = a4;
      }

      else
      {
        v6 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v18[0] = MEMORY[0x223DE2660](result, a2, v6);
      type metadata accessor for BackgroundConnection();
      swift_dynamicCast();
      return v19[0];
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      v18[0] = __CocoaSet.Index.element.getter();
      type metadata accessor for BackgroundConnection();
      swift_dynamicCast();
      v7 = v19[0];
      v8 = *(a4 + 40);
      Hasher.init(_seed:)();
      specialized BackgroundConnectionProtocol.hash(into:)(v19);
      v9 = Hasher._finalize()();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v5 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_24;
        }

        v11 = *(*(a4 + 48) + 8 * v5);
        memcpy(__dst, (v11 + 40), 0x204uLL);
        memcpy(v15, (v11 + 40), 0x204uLL);
        memcpy(v17, (v7 + 40), 0x204uLL);
        memcpy(__src, (v7 + 40), 0x204uLL);
        outlined init with copy of ConnectionConfiguration(__dst, v13);
        outlined init with copy of ConnectionConfiguration(v17, v13);
        LOBYTE(v11) = static ConnectionConfiguration.== infix(_:_:)(v15, __src);
        memcpy(v18, __src, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v18);
        memcpy(v19, v15, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v19);
        if (v11)
        {
          goto LABEL_18;
        }

        v9 = v5 + 1;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v5);
}

BOOL _sSh5IndexV2eeoiySbAByx_G_ADtFZ11SiriNetwork20BackgroundConnectionC_Tt1g5(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x223DE2610);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v0);

  return static DispatchQoS.unspecified.getter();
}

uint64_t OUTLINED_FUNCTION_69_2()
{
  v2 = *(*(v0 - 72) + 40);

  return Hasher.init(_seed:)();
}

Swift::Bool __swiftcall NWError.sn_isNetworkUnreachable()()
{
  v1 = OUTLINED_FUNCTION_8_17();
  v2 = OUTLINED_FUNCTION_1_26(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = OUTLINED_FUNCTION_0_47(v7, v25);
  v9(v8);
  v10 = OUTLINED_FUNCTION_2_27();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277CD8FB0])
  {
    v13 = OUTLINED_FUNCTION_3_24();
    v14(v13);
    return (*v0 - 49) < 3;
  }

  else if (v12 == *MEMORY[0x277CD8FA0])
  {
    v16 = OUTLINED_FUNCTION_3_24();
    v17(v16);
    OUTLINED_FUNCTION_9_12();
    v20 = v19 | 0xFFFE0000;
    return v21 || v18 == v20;
  }

  else
  {
    v22 = *(v4 + 8);
    v23 = OUTLINED_FUNCTION_41_0();
    v24(v23);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkUnreachableForServerCause()()
{
  v1 = OUTLINED_FUNCTION_8_17();
  v2 = OUTLINED_FUNCTION_1_26(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = OUTLINED_FUNCTION_0_47(v7, v19);
  v9(v8);
  v10 = OUTLINED_FUNCTION_2_27();
  if (v11(v10) != *MEMORY[0x277CD8FB0])
  {
    v15 = *(v4 + 8);
    v16 = OUTLINED_FUNCTION_41_0();
    v17(v16);
    goto LABEL_5;
  }

  v12 = OUTLINED_FUNCTION_3_24();
  v13(v12);
  if (*v0 >= 0x3Eu)
  {
LABEL_5:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v14 = 0x2060000000000000uLL >> *v0;
  return v14 & 1;
}

Swift::Bool __swiftcall NWError.sn_isNetworkDown()()
{
  v1 = OUTLINED_FUNCTION_8_17();
  v2 = OUTLINED_FUNCTION_1_26(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = OUTLINED_FUNCTION_0_47(v7, v18);
  v9(v8);
  v10 = OUTLINED_FUNCTION_2_27();
  if (v11(v10) == *MEMORY[0x277CD8FB0])
  {
    v12 = OUTLINED_FUNCTION_3_24();
    v13(v12);
    return *v0 == 50;
  }

  else
  {
    v15 = *(v4 + 8);
    v16 = OUTLINED_FUNCTION_41_0();
    v17(v16);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkConnectionRetryableNow()()
{
  v1 = OUTLINED_FUNCTION_8_17();
  v2 = OUTLINED_FUNCTION_1_26(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = OUTLINED_FUNCTION_0_47(v7, v18);
  v9(v8);
  v10 = OUTLINED_FUNCTION_2_27();
  if (v11(v10) == *MEMORY[0x277CD8FB0])
  {
    v12 = OUTLINED_FUNCTION_3_24();
    v13(v12);
    return *v0 == 54;
  }

  else
  {
    v15 = *(v4 + 8);
    v16 = OUTLINED_FUNCTION_41_0();
    v17(v16);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkConnectionRetryableAfterDelay()()
{
  v1 = OUTLINED_FUNCTION_8_17();
  v2 = OUTLINED_FUNCTION_1_26(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - v8);
  v10 = v4[2];
  OUTLINED_FUNCTION_5_23();
  v10();
  v11 = v4[11];
  v12 = OUTLINED_FUNCTION_3_2();
  v13 = v11(v12);
  v14 = *MEMORY[0x277CD8FB0];
  if (v13 == *MEMORY[0x277CD8FB0])
  {
    v15 = v4[12];
    v16 = OUTLINED_FUNCTION_3_2();
    v17(v16);
    if (*v9 == 54)
    {
      return 1;
    }
  }

  else
  {
    v19 = v4[1];
    v20 = OUTLINED_FUNCTION_3_2();
    v21(v20);
  }

  OUTLINED_FUNCTION_5_23();
  v10();
  v22 = OUTLINED_FUNCTION_41_0();
  if (v11(v22) == v14)
  {
    v23 = v4[12];
    v24 = OUTLINED_FUNCTION_41_0();
    v25(v24);
    return *v0 == 50 || *v0 == 55;
  }

  else
  {
    v27 = v4[1];
    v28 = OUTLINED_FUNCTION_41_0();
    v29(v28);
    return 0;
  }
}

Swift::Bool __swiftcall NWError.sn_isNetworkOperationRetryable()()
{
  v1 = OUTLINED_FUNCTION_8_17();
  v2 = OUTLINED_FUNCTION_1_26(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - v8);
  v10 = v4[2];
  OUTLINED_FUNCTION_5_23();
  v10();
  v11 = v4[11];
  v12 = OUTLINED_FUNCTION_3_2();
  v13 = v11(v12);
  v14 = *MEMORY[0x277CD8FB0];
  if (v13 != *MEMORY[0x277CD8FB0])
  {
    if (v13 != *MEMORY[0x277CD8FA0])
    {
      v23 = v4[1];
      v24 = OUTLINED_FUNCTION_3_2();
      v25(v24);
      goto LABEL_12;
    }

    v18 = v4[12];
    v19 = OUTLINED_FUNCTION_3_2();
    v20(v19);
    if (*v9 != -65554 && *v9 != -65537)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v15 = v4[12];
  v16 = OUTLINED_FUNCTION_3_2();
  v17(v16);
  if ((*v9 - 49) < 3)
  {
    return 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_5_23();
  v10();
  v26 = OUTLINED_FUNCTION_41_0();
  if (v11(v26) == v14)
  {
    v27 = v4[12];
    v28 = OUTLINED_FUNCTION_41_0();
    v29(v28);
    return *v0 != 60;
  }

  else
  {
    v30 = v4[1];
    v31 = OUTLINED_FUNCTION_41_0();
    v32(v31);
    return 1;
  }
}

Swift::Bool __swiftcall NWError.isFallbackConnectionMethodRetryable(for:)(SiriNetwork::ConnectionMethod a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277CD8FB0])
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  (*(v5 + 96))(v8, v4);
  v9 = *v8;
  result = 1;
  if (*v8 != 9 && v9 != 57)
  {
    if (v9 == 54)
    {
      return a1 == SiriNetwork_ConnectionMethod_peer;
    }

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall NWError.sn_isNetworkConnectionRetryable()()
{
  v1 = OUTLINED_FUNCTION_8_17();
  v2 = OUTLINED_FUNCTION_1_26(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = OUTLINED_FUNCTION_0_47(v7, v25);
  v9(v8);
  v10 = OUTLINED_FUNCTION_2_27();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277CD8FB0])
  {
    v13 = OUTLINED_FUNCTION_3_24();
    v14(v13);
    return (*v0 - 52) < 0xFFFFFFFD;
  }

  else if (v12 == *MEMORY[0x277CD8FA0])
  {
    v16 = OUTLINED_FUNCTION_3_24();
    v17(v16);
    OUTLINED_FUNCTION_9_12();
    v20 = v19 | 0xFFFE0000;
    v21 = v21 || v18 == v20;
    return !v21;
  }

  else
  {
    v22 = *(v4 + 8);
    v23 = OUTLINED_FUNCTION_41_0();
    v24(v23);
    return 1;
  }
}

uint64_t ConnectionPolicyType.stringRawValue.getter()
{
  v1 = MEMORY[0x277D47CD0];
  result = *v0;
  switch(*v0)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v1 = MEMORY[0x277D47CB8];
      goto LABEL_5;
    case 3:
      v1 = MEMORY[0x277D47CC0];
      goto LABEL_5;
    case 4:
      v1 = MEMORY[0x277D47CC8];
LABEL_5:
      v3 = *v1;
      result = static String._unconditionallyBridgeFromObjectiveC(_:)();
      break;
    default:
      return result;
  }

  return result;
}

SiriNetwork::ConnectionPolicyType_optional __swiftcall ConnectionPolicyType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ConnectionPolicyProtocol.stringRawValue.getter()
{
  result = *v0;
  if (*v0)
  {
    v2 = MEMORY[0x277D47CB0];
    if (result != 1)
    {
      v2 = MEMORY[0x277D47CA8];
    }

    v3 = *v2;
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = *v0;
  }

  return result;
}

SiriNetwork::ConnectionPolicyProtocol_optional __swiftcall ConnectionPolicyProtocol.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ConnectionPolicyRoute.routeId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionPolicyRoute.routeId.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.connectionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionPolicyRoute.connectionId.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.cname.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionPolicyRoute.cname.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.host.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionPolicyRoute.host.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.resolver.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionPolicyRoute.resolver.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ConnectionPolicyRoute.timeout.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t ConnectionPolicyRoute.timeout.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

void __swiftcall ConnectionPolicyRoute.init()(SiriNetwork::ConnectionPolicyRoute *__return_ptr retstr)
{
  retstr->host.value._object = 0;
  *&retstr->priority = 0u;
  *&retstr->cname.value._object = 0u;
  retstr->routeId = 0u;
  retstr->connectionId = 0u;
  retstr->mptcp = 1;
  retstr->resolver.value._countAndFlagsBits = 0;
  retstr->resolver.value._object = 0;
  retstr->resolverProtocol.value = SiriNetwork_ConnectionPolicyProtocol_unknownDefault;
  *(&retstr->timeout.value + 7) = 0.0;
  LOWORD(retstr[1].routeId.value._countAndFlagsBits) = 1281;
}

id ConnectionPolicyRoute.connectionPolicyRouteObject()()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);
  v33 = *v0;
  v34 = *(v0 + 4);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = *(v0 + 72);
  v8 = *(v0 + 11);
  v32 = *(v0 + 10);
  v35 = *(v0 + 96);
  v36 = *(v0 + 1);
  v9 = v0[13];
  v37 = *(v0 + 112);
  v38 = *(v0 + 113);
  v10 = [objc_allocWithZone(MEMORY[0x277D47228]) init];
  if (v4)
  {
    v4 = MEMORY[0x223DE2070](v3, v4);
  }

  [v10 setCname_];

  if (v1)
  {
    v11 = MEMORY[0x223DE2070](v2, v1);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_6_4(v11, sel_setConnectionId_);

  if (v6)
  {
    v13 = MEMORY[0x223DE2070](v5, v6);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_6_4(v13, sel_setHost_);

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  OUTLINED_FUNCTION_6_4(isa, sel_setMptcp_);

  v16 = [v10 setPriority_];
  if (v8)
  {
    v16 = MEMORY[0x223DE2070](v32, v8);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_6_4(v16, sel_setResolver_);

  v19 = MEMORY[0x277D47CB0];
  v20 = 0;
  switch(v35)
  {
    case 1:
      goto LABEL_14;
    case 2:
      v19 = MEMORY[0x277D47CA8];
LABEL_14:
      v21 = *v19;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = MEMORY[0x223DE2070](v22);

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_6_4(v18, sel_setResolverProtocol_);

  if (v36)
  {
    v23 = MEMORY[0x223DE2070](*&v33);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  OUTLINED_FUNCTION_6_4(v23, sel_setRouteId_);

  if ((v37 & 1) == 0)
  {
    v26 = MEMORY[0x223DE2360](v9);
    OUTLINED_FUNCTION_6_4(v26, sel_setTimeout_);
  }

  v27 = MEMORY[0x277D47CD0];
  v28 = 0;
  switch(v38)
  {
    case 1:
      goto LABEL_24;
    case 2:
      v27 = MEMORY[0x277D47CB8];
      goto LABEL_24;
    case 3:
      v27 = MEMORY[0x277D47CC0];
      goto LABEL_24;
    case 4:
      v27 = MEMORY[0x277D47CC8];
LABEL_24:
      v29 = *v27;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = MEMORY[0x223DE2070](v30);

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_6_4(v25, sel_setType_);

  return v10;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v13 < v10) ^ (v17 >= v19);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*v34 >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v81;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v82;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v86 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v86);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v88, *a1, a3);
LABEL_89:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 < *(v10 - 2))
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicyType and conformance ConnectionPolicyType()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicyType and conformance ConnectionPolicyType;
  if (!lazy protocol witness table cache variable for type ConnectionPolicyType and conformance ConnectionPolicyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicyType and conformance ConnectionPolicyType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol;
  if (!lazy protocol witness table cache variable for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicyProtocol and conformance ConnectionPolicyProtocol);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConnectionPolicyType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConnectionPolicyProtocol(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 120 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0x72uLL);
      memmove(v11, v18, 0x72uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 120;
      result = outlined init with copy of ConnectionPolicyRoute(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    outlined init with copy of ConnectionPolicyRoute(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t closure #1 in NetworkManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5[0] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B15ManagerObserver_pMd, &_s11SiriNetwork0B15ManagerObserver_pMR);
    if (swift_dynamicCast())
    {
      v9[0] = v6;
      v9[1] = v7;
      v10 = v8;
      outlined init with copy of AnyHashable(v9, v5);
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v6, v5);
      outlined destroy of AnyHashable(&v6);
      swift_endAccess();

      return outlined destroy of AnyHashable(v9);
    }

    else
    {

      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      return outlined destroy of AnyHashable?(&v6);
    }
  }

  return result;
}

uint64_t NetworkManager.addObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v31 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  v30 = OUTLINED_FUNCTION_8_1();
  v14 = OUTLINED_FUNCTION_0_0(v30);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v21 = v20 - v19;
  v22 = *(v7 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a1;
  v35 = a3;
  v36 = v24;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v33 = v25;
  v34 = a4;
  v26 = _Block_copy(aBlock);
  v27 = v22;

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v26);

  (*(v31 + 8))(v5, v9);
  (*(v16 + 8))(v21, v30);
}

void closure #1 in NetworkManager.removeObserver(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B15ManagerObserver_pMd, &_s11SiriNetwork0B15ManagerObserver_pMR);
    if (swift_dynamicCast())
    {
      v6[0] = v3;
      v6[1] = v4;
      v7 = v5;
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v6, &v3);
      outlined destroy of AnyHashable?(&v3);
      swift_endAccess();
      outlined destroy of AnyHashable(v6);
    }

    else
    {
      v5 = 0;
      v3 = 0u;
      v4 = 0u;
      outlined destroy of AnyHashable?(&v3);
    }

    v2 = OBJC_IVAR___SNNetworkManagerInternal_observers;
    swift_beginAccess();
    if (!*(*&v1[v2] + 16))
    {
      [v1 stopMonitoringNetwork];
    }
  }
}

void partial apply for closure #1 in NetworkManager.removeObserver(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in NetworkManager.removeObserver(_:)();
}

void @objc NetworkManager.addObserver(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void closure #1 in closure #1 in NetworkManager.startMonitoringNetwork(_:)(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_unknownObjectRetain();
    status = nw_path_get_status(v2);
    v4 = MEMORY[0x223DE31A0](a1, 2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    status = nw_path_status_invalid;
  }

  NetworkManager.pathUpdated(status:usesCellular:)(status, v4);
}

Swift::Void __swiftcall NetworkManager.pathUpdated(status:usesCellular:)(nw_path_status_t status, Swift::Bool usesCellular)
{
  v3 = v2;
  LOBYTE(v4) = usesCellular;
  v6 = OBJC_IVAR___SNNetworkManagerInternal_pathStatus;
  v7 = &OBJC_IVAR___SNNetworkManagerInternal_pathUsesCellular;
  if (*&v2[OBJC_IVAR___SNNetworkManagerInternal_pathStatus] == status && v2[OBJC_IVAR___SNNetworkManagerInternal_pathUsesCellular] == usesCellular)
  {
    return;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriNetwork);
    v9 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109888;
      *(v12 + 4) = status;
      *(v12 + 8) = 1024;
      *(v12 + 10) = *&v6[v3];
      *(v12 + 14) = 1024;
      *(v12 + 16) = v4 & 1;
      *(v12 + 20) = 1024;
      *(v12 + 22) = *(&v9->isa + *v7);

      _os_log_impl(&dword_223515000, v10, v11, "NetworkManager - PathEvaluator: Path updated, status %u from %u, usesCellular %{BOOL}d from %{BOOL}d", v12, 0x1Au);
      MEMORY[0x223DE38F0](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    v13 = *v7;
    v14 = *(&v9->isa + *v7);
    v15 = *&v6[v3];
    if (v15 == 3)
    {
      if (status == nw_path_status_satisfiable)
      {
        if (v14 & 1 | ((v4 & 1) == 0))
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_8_18();
        v56 = 1;
        v57 = 1;
        goto LABEL_34;
      }

      v17 = status == nw_path_status_satisfied;
      if (!*(&v9->isa + *v7))
      {
        if (v4)
        {
          OUTLINED_FUNCTION_8_18();
          v56 = 1;
          v57 = v30;
          goto LABEL_34;
        }

        goto LABEL_45;
      }

      if (v4)
      {
        goto LABEL_45;
      }

      if (status == nw_path_status_satisfied)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }

    if (status == nw_path_status_satisfiable)
    {
      break;
    }

    v17 = status == nw_path_status_satisfied;
    if ((*(&v9->isa + *v7) & 1) == 0)
    {
      if (v4)
      {
        v56 = v15 == 1;
        v57 = status == nw_path_status_satisfied;
        OUTLINED_FUNCTION_8_18();
        goto LABEL_34;
      }

LABEL_44:
      if (v15 != 1)
      {
        goto LABEL_55;
      }

LABEL_45:
      if (v17)
      {
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if (v4)
    {
      goto LABEL_44;
    }

    if (status == nw_path_status_satisfied)
    {
LABEL_21:
      OUTLINED_FUNCTION_8_18();
      v18 = OBJC_IVAR___SNNetworkManagerInternal_observers;
      OUTLINED_FUNCTION_13_9();
      v19 = *(&v9->isa + v18);
      v20 = *(v19 + 56);
      v21 = *(v19 + 32);
      OUTLINED_FUNCTION_49();
      v24 = v23 & v22;
      v4 = (v25 + 63) >> 6;

      v26 = 0;
      v6 = &_s11SiriNetwork0B15ManagerObserver_pMd;
      v7 = 40;
      if (!v24)
      {
        goto LABEL_23;
      }

      do
      {
        v27 = v26;
LABEL_26:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        outlined init with copy of AnyHashable(*(v19 + 48) + (v28 | (v27 << 6)) * v7, v63);
        v29 = OUTLINED_FUNCTION_5_25();
        __swift_instantiateConcreteTypeFromMangledNameV2(v29, &_s11SiriNetwork0B15ManagerObserver_pMR);
        if (swift_dynamicCast())
        {
          v7 = v6;
          v6 = v61;
          [v61 networkManagerNonWWANDidBecomeAvailable_];
          OUTLINED_FUNCTION_12_7();
        }

        v26 = v27;
      }

      while (v24);
LABEL_23:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_61;
        }

        if (v27 >= v4)
        {
LABEL_54:

          LOBYTE(v4) = v60;
          v13 = v58;
          v6 = v59;
          goto LABEL_55;
        }

        v24 = *(v19 + 56 + 8 * v27);
        ++v26;
        if (v24)
        {
          goto LABEL_26;
        }
      }
    }

    if (v15 != 1)
    {
      goto LABEL_55;
    }

LABEL_46:
    OUTLINED_FUNCTION_8_18();
    v43 = OBJC_IVAR___SNNetworkManagerInternal_observers;
    OUTLINED_FUNCTION_13_9();
    v44 = *(&v9->isa + v43);
    v4 = v44 + 56;
    v45 = *(v44 + 56);
    v46 = *(v44 + 32);
    OUTLINED_FUNCTION_49();
    v49 = v48 & v47;
    v51 = (v50 + 63) >> 6;

    v52 = 0;
    v6 = &_s11SiriNetwork0B15ManagerObserver_pMd;
    v7 = 40;
    if (v49)
    {
      while (1)
      {
        v53 = v52;
LABEL_51:
        OUTLINED_FUNCTION_9_14();
        outlined init with copy of AnyHashable(*(v44 + 48) + v54 * v7, v63);
        v55 = OUTLINED_FUNCTION_5_25();
        __swift_instantiateConcreteTypeFromMangledNameV2(v55, &_s11SiriNetwork0B15ManagerObserver_pMR);
        if (swift_dynamicCast())
        {
          v7 = v6;
          v6 = v62;
          [v62 networkManagerNetworkUnreachable_];
          OUTLINED_FUNCTION_12_7();
        }

        v52 = v53;
      }
    }

    while (1)
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v53 >= v51)
      {
        goto LABEL_54;
      }

      ++v52;
      if (*(v4 + 8 * v53))
      {
        goto LABEL_51;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  if (v14 & 1 | ((v4 & 1) == 0))
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_8_18();
  v56 = v16;
  v57 = 1;
LABEL_34:
  v31 = OBJC_IVAR___SNNetworkManagerInternal_observers;
  swift_beginAccess();
  v4 = *(&v9->isa + v31);
  v32 = *(v4 + 56);
  v33 = *(v4 + 32);
  OUTLINED_FUNCTION_49();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;

  v39 = 0;
  v6 = &_s11SiriNetwork0B15ManagerObserver_pMd;
  v7 = 40;
  if (v36)
  {
    while (1)
    {
      v40 = v39;
LABEL_39:
      OUTLINED_FUNCTION_9_14();
      outlined init with copy of AnyHashable(*(v4 + 48) + v41 * v7, v63);
      v42 = OUTLINED_FUNCTION_5_25();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42, &_s11SiriNetwork0B15ManagerObserver_pMR);
      if (swift_dynamicCast())
      {
        v7 = v6;
        v6 = v64;
        [v64 networkManagerLostNonWWANConnectivity_];
        OUTLINED_FUNCTION_12_7();
      }

      v39 = v40;
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v40 >= v38)
    {
      break;
    }

    ++v39;
    if (*(v4 + 56 + 8 * v40))
    {
      goto LABEL_39;
    }
  }

  LOBYTE(v4) = v60;
  v13 = v58;
  v6 = v59;
  v17 = v57;
  if (v56)
  {
    goto LABEL_45;
  }

LABEL_55:
  *&v6[v3] = status;
  *(&v9->isa + v13) = v4 & 1;
}

Swift::Void __swiftcall NetworkManager.stopMonitoringNetwork()()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v21 = OUTLINED_FUNCTION_8_1();
  v8 = OUTLINED_FUNCTION_0_0(v21);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  v16 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = partial apply for closure #1 in NetworkManager.stopMonitoringNetwork();
  v26 = v17;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v23 = v18;
  v24 = &block_descriptor_21;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v19);

  (*(v5 + 8))(v1, v2);
  (*(v10 + 8))(v15, v21);
}

void closure #1 in NetworkManager.stopMonitoringNetwork()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator;
    if (*&Strong[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator])
    {
      v3 = one-time initialization token for siriNetwork;
      v4 = *&Strong[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator];
      swift_unknownObjectRetain();
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.siriNetwork);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_223515000, v6, v7, "NetworkManager - PathEvaluator: Stop monitoring network", v8, 2u);
        MEMORY[0x223DE38F0](v8, -1, -1);
      }

      nw_path_evaluator_cancel();
      swift_unknownObjectRelease();
      v9 = *&v1[v2];
      *&v1[v2] = 0;

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t outlined destroy of AnyHashable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *key path getter for ConnectionInfo.connectionConfiguration : ConnectionInfo@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  ConnectionInfo.connectionConfiguration.getter(__src);
  return memcpy(a2, __src, 0x204uLL);
}

uint64_t key path setter for ConnectionInfo.connectionConfiguration : ConnectionInfo(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x204uLL);
  v4 = *a2;
  outlined init with copy of ConnectionConfiguration(__dst, &v6);
  return ConnectionInfo.connectionConfiguration.setter(__src);
}

uint64_t ConnectionInfo.connectionConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1();
  memcpy(__dst, (v1 + v3), 0x204uLL);
  memcpy(a1, (v1 + v3), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, v5);
}

uint64_t ConnectionInfo.connectionConfiguration.setter(const void *a1)
{
  v3 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_95();
  memcpy(__dst, (v1 + v3), 0x204uLL);
  memcpy((v1 + v3), a1, 0x204uLL);
  return outlined destroy of ConnectionConfiguration(__dst);
}

id ConnectionInfo.init(connectionConfiguration:)(void *__src)
{
  *&v1[OBJC_IVAR___SNConnectionInfoInternal_policy] = 0;
  *&v1[OBJC_IVAR___SNConnectionInfoInternal_policyRoute] = 0;
  memcpy(&v1[OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration], __src, 0x204uLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConnectionInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ConnectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ConnectionInfo.connectionProtocolTechnology.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_6_20(v2) + 32) = v0;
  v3 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1();
  *(v1 + 24) = *(v0 + v3);
  return OUTLINED_FUNCTION_7_19();
}

uint64_t ConnectionInfo.communicationProtocolTechnology.setter(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  OUTLINED_FUNCTION_3_25(OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration);
  result = OUTLINED_FUNCTION_95();
  *(v1 + 8) = v2;
  return result;
}

uint64_t ConnectionInfo.communicationProtocolTechnology.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_6_20(v2) + 32) = v0;
  v3 = v0 + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_40_1();
  *(v1 + 24) = *(v3 + 8);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.connectionProtocolTechnology.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  a3(*(*a1 + 24));

  free(v3);
}

uint64_t ConnectionInfo.assistantIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 24);
  *(v1 + 24) = *(v0 + 16);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.assistantIdentifier.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  v4 = *(v3 + 24);
  *(v3 + 16) = v5;
  *(v3 + 24) = v2;
  if (v6)
  {

    v7 = v1[4];
  }

  free(v1);
}

uint64_t ConnectionInfo.peerAssistantIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 40);
  *(v1 + 24) = *(v0 + 32);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.peerAssistantIdentifier.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  v4 = *(v3 + 40);
  *(v3 + 32) = v5;
  *(v3 + 40) = v2;
  if (v6)
  {

    v7 = v1[4];
  }

  free(v1);
}

uint64_t ConnectionInfo.connectionId.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_6_20(v2) + 64) = v0;
  *(v1 + 48) = ConnectionInfo.connectionId.getter();
  *(v1 + 56) = v3;
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.connectionId.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64) + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  if (a2)
  {
    OUTLINED_FUNCTION_95();
    v6 = *(v5 + 56);
    *(v5 + 48) = v3;
    *(v5 + 56) = v4;

    v7 = v2[7];
  }

  else
  {
    OUTLINED_FUNCTION_95();
    v8 = *(v5 + 56);
    *(v5 + 48) = v3;
    *(v5 + 56) = v4;
  }

  free(v2);
}

uint64_t ConnectionInfo.aceHost.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 72);
  *(v1 + 24) = *(v0 + 64);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.aceHost.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  v4 = *(v3 + 72);
  *(v3 + 64) = v5;
  *(v3 + 72) = v2;
  if (v6)
  {

    v7 = v1[4];
  }

  free(v1);
}

uint64_t ConnectionInfo.languageCode.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 88);
  *(v1 + 24) = *(v0 + 80);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.languageCode.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  v4 = *(v3 + 88);
  *(v3 + 80) = v5;
  *(v3 + 88) = v2;
  if (v6)
  {

    v7 = v1[4];
  }

  free(v1);
}

uint64_t ConnectionInfo.prefersWWAN.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 96);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.prefersWWAN.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 96) = v3;
  free(v1);
}

uint64_t ConnectionInfo.skipPeer.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 97);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.skipPeer.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 97) = v3;
  free(v1);
}

uint64_t ConnectionInfo.useWiFiHint.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 98);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.useWiFiHint.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 98) = v3;
  free(v1);
}

void key path setter for ConnectionInfo.skipPeerErrorReason : ConnectionInfo(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  ConnectionInfo.skipPeerErrorReason.setter(v2);
}

uint64_t ConnectionInfo.skipPeerErrorReason.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 32) = v0;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 104);
  *(v1 + 24) = v6;
  v7 = v6;
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.skipPeerErrorReason.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 3);
  v3 = *v4;
  v5 = v2[4] + v2[5];
  v6 = *(v5 + 104);
  *(v5 + 104) = *v4;
  if (a2)
  {
    v7 = v3;

    v6 = *v4;
  }

  free(v2);
}

uint64_t ConnectionInfo.forceReconnect.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 113);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.forceReconnect.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 113) = v3;
  free(v1);
}

uint64_t ConnectionInfo.timeout.modify()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_6_20(v2) + 56) = v0;
  *(v1 + 48) = ConnectionInfo.timeout.getter();
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.timeout.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56) + OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  OUTLINED_FUNCTION_95();
  *(v3 + 120) = v2;
  *(v3 + 128) = 0;

  free(v1);
}

uint64_t ConnectionInfo.imposePolicyBan.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 313);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.imposePolicyBan.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 313) = v3;
  free(v1);
}

uint64_t key path setter for ConnectionInfo.connectionPolicy : ConnectionInfo(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return ConnectionInfo.connectionPolicy.setter(v2);
}

uint64_t ConnectionInfo.connectionPolicy.modify(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policy);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return OUTLINED_FUNCTION_41_0();
}

uint64_t key path setter for ConnectionInfo.connectionPolicyRoute : ConnectionInfo(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return ConnectionInfo.connectionPolicyRoute.setter(v2);
}

uint64_t ConnectionInfo.connectionPolicyRoute.modify(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___SNConnectionInfoInternal_policyRoute);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return OUTLINED_FUNCTION_41_0();
}

void ConnectionInfo.connectionPolicy.modify(void **a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v6 = v5;
    a3(v5);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t ConnectionInfo.forceOnDeviceOnlyDictation.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 114);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.forceOnDeviceOnlyDictation.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 114) = v3;
  free(v1);
}

uint64_t ConnectionInfo.productTypePrefix.getter()
{
  OUTLINED_FUNCTION_1_27();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);

  return OUTLINED_FUNCTION_41_0();
}

uint64_t ConnectionInfo.productTypePrefix.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 160);
  *(v1 + 24) = *(v0 + 152);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.productTypePrefix.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  v4 = *(v3 + 160);
  *(v3 + 152) = v5;
  *(v3 + 160) = v2;
  if (v6)
  {

    v7 = v1[4];
  }

  free(v1);
}

uint64_t ConnectionInfo.peerType.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 176);
  *(v1 + 24) = *(v0 + 168);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.peerType.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  v4 = *(v3 + 176);
  *(v3 + 168) = v5;
  *(v3 + 176) = v2;
  if (v6)
  {

    v7 = v1[4];
  }

  free(v1);
}

uint64_t key path setter for ConnectionInfo.assistantIdentifier : ConnectionInfo(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t ConnectionInfo.peerVersion.modify()
{
  v2 = OUTLINED_FUNCTION_17_9();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 40) = v0;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_4_25();
  v6 = *(v0 + 192);
  *(v1 + 24) = *(v0 + 184);
  *(v1 + 32) = v6;

  return OUTLINED_FUNCTION_16_10();
}

void ConnectionInfo.peerVersion.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_49(a1);
  v4 = *(v3 + 192);
  *(v3 + 184) = v5;
  *(v3 + 192) = v2;
  if (v6)
  {

    v7 = v1[4];
  }

  free(v1);
}

uint64_t ConnectionInfo.deviceIsInWalkaboutExperimentGroup.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 514);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.deviceIsInWalkaboutExperimentGroup.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 514) = v3;
  free(v1);
}

uint64_t ConnectionInfo.usesProxyConnection.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 99);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.usesProxyConnection.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 99) = v3;
  free(v1);
}

uint64_t ConnectionInfo.usesPeerManagedSync.modify()
{
  v2 = OUTLINED_FUNCTION_9_15();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_20(v3);
  v5 = OBJC_IVAR___SNConnectionInfoInternal_connectionConfiguration;
  *(v4 + 24) = v0;
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_4_25();
  *(v1 + 40) = *(v0 + 515);
  return OUTLINED_FUNCTION_7_19();
}

void ConnectionInfo.usesPeerManagedSync.modify(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_18_9(a1);
  *(v2 + 515) = v3;
  free(v1);
}

id ConnectionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized StringProtocol.appending<A>(_:)()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

SNUtilities __swiftcall SNUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SNUtilities()
{
  result = lazy cache variable for type metadata for SNUtilities;
  if (!lazy cache variable for type metadata for SNUtilities)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNUtilities);
  }

  return result;
}

Swift::Int ConnectionPolicy.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConnectionPolicy.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionPolicy()
{
  Hasher.init(_seed:)();
  ConnectionPolicy.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionPolicy and conformance ConnectionPolicy()
{
  result = lazy protocol witness table cache variable for type ConnectionPolicy and conformance ConnectionPolicy;
  if (!lazy protocol witness table cache variable for type ConnectionPolicy and conformance ConnectionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionPolicy and conformance ConnectionPolicy);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConnectionPreparationReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 336) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in Data.init(copying:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DispatchData();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData();
  result = DataProtocol.copyBytes(to:)();
  *a1 = result;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v6, v5);
      *v4 = xmmword_2235EF6F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      v13 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_14;
      }

      if (v13 < v6)
      {
        goto LABEL_18;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

      v14 = type metadata accessor for __DataStorage();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v17;
LABEL_14:
      if (v13 < v6)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v3 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      *v4 = v6;
      v4[1] = v12 | 0x4000000000000000;
LABEL_16:
      v18 = *MEMORY[0x277D85DE8];
      return v3;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      outlined consume of Data._Representation(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_2235EF6F0;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v9 = *(&v22 + 1);
      v10 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v22 + 16), *(v22 + 24), a1);
      *v4 = v22;
      v4[1] = v9 | 0x8000000000000000;
      if (!v2)
      {
        v3 = v10;
      }

      goto LABEL_16;
    case 3uLL:
      *(&v22 + 7) = 0;
      *&v22 = 0;
      a1(&v21, &v22, &v22);
      if (!v2)
      {
        v3 = v21;
      }

      goto LABEL_16;
    default:
      v3 = v6 >> 8;
      outlined consume of Data._Representation(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v21, &v22, &v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v21;
      }

      v8 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
      *v4 = v22;
      v4[1] = v8;
      goto LABEL_16;
  }
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x223DE1260]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchData and conformance DispatchData()
{
  result = lazy protocol witness table cache variable for type DispatchData and conformance DispatchData;
  if (!lazy protocol witness table cache variable for type DispatchData and conformance DispatchData)
  {
    type metadata accessor for DispatchData();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  }

  return result;
}

uint64_t *BackgroundConnectionError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53();
  }

  return &static BackgroundConnectionError.errorDomain;
}

uint64_t static BackgroundConnectionError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53();
  }

  swift_beginAccess();
  v0 = static BackgroundConnectionError.errorDomain;

  return v0;
}

uint64_t static BackgroundConnectionError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53();
  }

  swift_beginAccess();
  static BackgroundConnectionError.errorDomain = a1;
  qword_27D08A6D0 = a2;
}

uint64_t (*static BackgroundConnectionError.errorDomain.modify())()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_53();
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t key path getter for static BackgroundConnectionError.errorDomain : BackgroundConnectionError.Type@<X0>(void *a1@<X8>)
{
  BackgroundConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D08A6D0;
  *a1 = static BackgroundConnectionError.errorDomain;
  a1[1] = v2;
}

uint64_t key path setter for static BackgroundConnectionError.errorDomain : BackgroundConnectionError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  BackgroundConnectionError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static BackgroundConnectionError.errorDomain = v2;
  qword_27D08A6D0 = v1;
}

uint64_t BackgroundConnectionError.errorCode.getter()
{
  v1 = *v0;
  result = *(v0 + 32);
  switch(*(v0 + 32))
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      v5 = v4 | v1 | v3;
      v6 = v4 | v3;
      v7 = 5;
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = v1 == 3;
      }

      v9 = 8;
      if (v8)
      {
        v9 = 6;
      }

      if (v1 != 2 || v6 != 0)
      {
        v7 = v9;
      }

      if (v1 == 1 && v6 == 0)
      {
        v12 = 4;
      }

      else
      {
        v12 = v7;
      }

      if (v5)
      {
        result = v12;
      }

      else
      {
        result = 1;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t BackgroundConnectionError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  switch(*(v0 + 32))
  {
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2235F4F80;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = MEMORY[0x277D83B88];
      *(inited + 32) = v6;
      *(inited + 40) = v8;
      *(inited + 72) = v7;
      *(inited + 48) = v1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v9;
      type metadata accessor for CFStringRef(0);
      *(inited + 120) = v10;

      if (v2)
      {
        v11 = v2;
      }

      else
      {
        v11 = MEMORY[0x223DE2070](0, 0xE000000000000000);
      }

      *(inited + 96) = v11;
      v14 = *MEMORY[0x277CCA450];
      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v15;
      *(inited + 168) = MEMORY[0x277D837D0];
      if (v3)
      {
        v16 = v4;
      }

      else
      {
        v16 = 0;
      }

      v17 = 0xE000000000000000;
      if (v3)
      {
        v17 = v3;
      }

      *(inited + 144) = v16;
      *(inited + 152) = v17;
      v18 = v2;
      result = Dictionary.init(dictionaryLiteral:)();
      break;
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_28();
      result = BackgroundConnectionError.shouldSkipIDSOrTuscanyUserInfo(_:_:)(v1 & 1, v12);
      break;
    default:

      result = Dictionary.init(dictionaryLiteral:)();
      break;
  }

  return result;
}

uint64_t BackgroundConnectionError.shouldSkipIDSOrTuscanyUserInfo(_:_:)(char a1, char a2)
{
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = MEMORY[0x277D839B0];
  if (a1)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v15 = v5;
    LOBYTE(v14) = 1;
    outlined init with take of Any(&v14, v13);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v6, v8);
  }

  if (a2)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v15 = v5;
    LOBYTE(v14) = 1;
    outlined init with take of Any(&v14, v13);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v9, v11);
  }

  return v4;
}

uint64_t static BackgroundConnectionError.== infix(_:_:)(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v53[0] = *a1;
  v53[1] = v3;
  v53[2] = v5;
  v53[3] = v4;
  v54 = v6;
  v55 = v8;
  v56 = v7;
  v57 = v10;
  v58 = v9;
  v59 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_54;
      }

      goto LABEL_18;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_18;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_54;
      }

LABEL_18:
      outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v53);
      if ((v8 ^ v2))
      {
        return 0;
      }

      else
      {
        return (v2 >> 8) & 1 ^ ((v8 & 0x100) == 0);
      }

    case 4:
      if (v5 | v3 | v2 | v4)
      {
        v13 = v5 | v3 | v4;
        if (v2 != 1 || v13)
        {
          if (v2 != 2 || v13)
          {
            if (v2 != 3 || v13)
            {
              if (v11 != 4 || v8 != 4)
              {
                goto LABEL_54;
              }
            }

            else if (v11 != 4 || v8 != 3)
            {
              goto LABEL_54;
            }
          }

          else if (v11 != 4 || v8 != 2)
          {
            goto LABEL_54;
          }
        }

        else if (v11 != 4 || v8 != 1)
        {
          goto LABEL_54;
        }

        if (v10 | v7 | v9)
        {
          goto LABEL_54;
        }
      }

      else if (v11 != 4 || v10 | v7 | v8 | v9)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    default:
      if (v11)
      {

        v12 = v3;
LABEL_54:
        v34 = v8;
        v35 = v7;
        v36 = v10;
        v37 = v9;
        v38 = v11;
        goto LABEL_55;
      }

      if (v2 != v8)
      {
        goto LABEL_37;
      }

      if (!v3)
      {
        if (!v7)
        {
          OUTLINED_FUNCTION_1_29();
          outlined copy of BackgroundConnectionError(v41, v42, v43, v44, v45);
          OUTLINED_FUNCTION_2_32();
          outlined copy of BackgroundConnectionError(v46, v47, v48, v49, v50);
          goto LABEL_62;
        }

LABEL_37:
        OUTLINED_FUNCTION_1_29();
        outlined copy of BackgroundConnectionError(v29, v30, v31, v32, v33);
        OUTLINED_FUNCTION_2_32();
LABEL_55:
        outlined copy of BackgroundConnectionError(v34, v35, v36, v37, v38);
        goto LABEL_56;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      type metadata accessor for CFStringRef(0);
      OUTLINED_FUNCTION_1_29();
      outlined copy of BackgroundConnectionError(v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_2_32();
      outlined copy of BackgroundConnectionError(v21, v22, v23, v24, v25);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
      v26 = v7;
      v27 = static _CFObject.== infix(_:_:)();

      if (v27)
      {
LABEL_62:
        if (v4)
        {
          if (!v9)
          {
            goto LABEL_56;
          }

          if (v5 == v10 && v4 == v9)
          {
LABEL_52:
            outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v53);
          }

          else
          {
            OUTLINED_FUNCTION_1_29();
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v53);
            if ((v52 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {

          outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v53);
          if (v9)
          {

            return 0;
          }
        }

        return 1;
      }

LABEL_56:
      outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(v53);
      return 0;
  }
}

void outlined copy of BackgroundConnectionError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {

    v6 = a2;
  }
}

uint64_t outlined destroy of (BackgroundConnectionError, BackgroundConnectionError)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork25BackgroundConnectionErrorO_ACtMd, &_s11SiriNetwork25BackgroundConnectionErrorO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for Error._domain.getter in conformance BackgroundConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance BackgroundConnectionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork25BackgroundConnectionErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
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

uint64_t getEnumTagSinglePayload for BackgroundConnectionError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for BackgroundConnectionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for BackgroundConnectionError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x223DE2980](qword_2235F5450[a1]);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_96_1();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x223DE2980](1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x223DE2980](a1 + 1);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x223DE2980](a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x223DE2980](a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](1);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](qword_2235F5450[a2]);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2);
  return Hasher._finalize()();
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = *(a2 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x223DE2980](v4);
    v6 = Hasher._finalize()();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + v8) != v4);
  }

  return v2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_104_0(v15);
  if (*(a2 + 16))
  {
    v3 = *(a2 + 40);
    OUTLINED_FUNCTION_104_0(__dst);
    Hasher.init(_seed:)();
    ConnectionPolicyRoute.hash(into:)();
    Hasher._finalize()();
    v4 = *(a2 + 32);
    OUTLINED_FUNCTION_18_8();
    v7 = ~v6;
    while (1)
    {
      v8 = v5 & v7;
      if (((*(a2 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v7)) & 1) == 0)
      {
        break;
      }

      v9 = *(a2 + 48) + 120 * v8;
      OUTLINED_FUNCTION_104_0(v13);
      OUTLINED_FUNCTION_104_0(__src);
      LOBYTE(v9) = static ConnectionPolicyRoute.== infix(_:_:)(__src, v15);
      memcpy(__dst, __src, 0x72uLL);
      outlined init with copy of ConnectionPolicyRoute(v13, v11);
      outlined destroy of ConnectionPolicyRoute(__dst);
      if (v9)
      {
        return 1;
      }

      v5 = v8 + 1;
    }
  }

  return 0;
}

SiriNetwork::ConnectionState_optional __swiftcall ConnectionState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

SiriNetwork::ConnectionState_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ConnectionState@<W0>(Swift::Int *a1@<X0>, SiriNetwork::ConnectionState_optional *a2@<X8>)
{
  result.value = ConnectionState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t BackgroundConnection.connectionAnalysisInfo.getter()
{
  OUTLINED_FUNCTION_133();
  if (*(v0 + 1080))
  {
    OUTLINED_FUNCTION_134();
    v2 = *(v1 + 64);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_0_36();
    v2(v3);
    OUTLINED_FUNCTION_106_0();

    return swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ConnectionAnalysisInfo();
    OUTLINED_FUNCTION_106_0();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t closure #1 in closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v4 >> 1 != 0xFFFFFFFF || v6 >= 2)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
      outlined init with copy of NetworkConnectionError(a3, v27);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);
      outlined destroy of NetworkConnectionError(a3);
      if (os_log_type_enabled(v12, v13))
      {
        v26 = v13;
        v14 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v14 = 138412546;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        *v15 = v5;
        v15[1] = v4;
        v15[2] = v7;
        v15[3] = v6;
        v15[4] = v8;
        outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v16;
        *v25 = v16;
        *(v14 + 12) = 2112;
        swift_allocError();
        v17 = *(a3 + 32);
        v18 = *(a3 + 16);
        *v19 = *a3;
        *(v19 + 16) = v18;
        *(v19 + 32) = v17;
        outlined init with copy of NetworkConnectionError(a3, v27);
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 14) = v20;
        v25[1] = v20;
        _os_log_impl(&dword_223515000, v12, v26, "Background Connection - Fallback: Callback to Completion with error %@ for Open Connection error (%@)", v14, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v25, -1, -1);
        MEMORY[0x223DE38F0](v14, -1, -1);
      }

      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v21 = swift_allocError();
      v22 = *(a3 + 32);
      v23 = *(a3 + 16);
      *v24 = *a3;
      *(v24 + 16) = v23;
      *(v24 + 32) = v22;
      outlined init with copy of NetworkConnectionError(a3, v27);
      BackgroundConnection.didEncounterError(_:)();

      BackgroundConnection.cancel()();
    }
  }

  return result;
}

void BackgroundConnection.startSecondaryConnection()()
{
  OUTLINED_FUNCTION_46();
  if (!*(v0 + 1184))
  {
    v1 = v0;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v4))
    {
      v5 = OUTLINED_FUNCTION_14();
      *v5 = 0;
      OUTLINED_FUNCTION_55_4();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v10 = *(v1 + 1136);
    v11 = ConnectionMethod.providerClass(for:)(*(v1 + 40));
    v13 = v12;
    memcpy(__dst, (v1 + 40), 0x204uLL);
    memcpy(v34, (v1 + 40), sizeof(v34));
    v33[0] = *(v1 + 137);
    *(v33 + 7) = *(v1 + 144);
    memcpy(v32, (v1 + 153), sizeof(v32));
    v14 = *(v1 + 656);
    memcpy(__src, (v1 + 40), 0x60uLL);
    LOBYTE(__src[12]) = v14;
    *(&__src[12] + 1) = *(v1 + 137);
    __src[13] = *(v1 + 144);
    LOBYTE(__src[14]) = 0;
    memcpy(&__src[14] + 1, (v1 + 153), 0x193uLL);
    memcpy(v31, __src, 0x204uLL);
    v15 = *(v1 + 1144);
    v16 = *(v1 + 1176);
    v17 = *(v13 + 448);
    v18 = *(v1 + 32);
    v19 = v16;
    outlined init with copy of ConnectionConfiguration(__dst, v30);
    outlined init with copy of ConnectionConfiguration(__src, v30);
    v20 = v15;
    v21 = v17(v31, v18, v15, v19, v11, v13);
    v22 = *(v1 + 1160);
    *(v1 + 1160) = v21;
    *(v1 + 1168) = v13;
    swift_unknownObjectRelease();
    if (*(v1 + 1160))
    {
      v23 = *(v1 + 1168);
      v24 = *(v1 + 1160);
      ObjectType = swift_getObjectType();
      v26 = *(v23 + 128);
      swift_unknownObjectRetain();

      v26(v27, &protocol witness table for BackgroundConnection, ObjectType, v23);
      *(v1 + 1184) = 1;
      OUTLINED_FUNCTION_7_1();
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = *(v23 + 456);

      v29(0, partial apply for closure #1 in BackgroundConnection.startSecondaryConnection(), v28, ObjectType, v23);
      swift_unknownObjectRelease();

      memcpy(v31, v34, 0x60uLL);
      LOBYTE(v31[12]) = v14;
      *(&v31[12] + 1) = v33[0];
      v31[13] = *(v33 + 7);
      LOBYTE(v31[14]) = 0;
      memcpy(&v31[14] + 1, v32, 0x193uLL);
      outlined destroy of ConnectionConfiguration(v31);
    }

    else
    {
      memcpy(v31, v34, 0x60uLL);
      LOBYTE(v31[12]) = v14;
      *(&v31[12] + 1) = v33[0];
      v31[13] = *(v33 + 7);
      LOBYTE(v31[14]) = 0;
      memcpy(&v31[14] + 1, v32, 0x193uLL);
      outlined destroy of ConnectionConfiguration(v31);
    }
  }

  OUTLINED_FUNCTION_47();
}

void closure #1 in BackgroundConnection.startSecondaryConnection()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (one-time initialization token for connectionOpen != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.connectionOpen);
    if (*(v13 + 1188))
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.siriNetwork);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_223515000, v15, v16, "Background Connection - Provider. Secondary connection ignored. Primary connection viable.", v17, 2u);
        MEMORY[0x223DE38F0](v17, -1, -1);
      }

      BackgroundConnection.cancelSecondaryConnection()();
LABEL_10:

      return;
    }

    if (v11)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError(v6, v7, v8, v9, v10);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      outlined consume of Result<(), NetworkConnectionError>(v6, v7, v8, v9, v10, 1);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = v6;
        v49 = v10;
        v50 = v44;
        *v21 = 136315138;
        v46 = v7;
        v47 = v8;
        v48 = v9;
        outlined copy of NetworkConnectionError(v6, v7, v8, v9, v10);
        v22 = String.init<A>(describing:)();
        v43 = v20;
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v50);

        *(v21 + 4) = v24;
        _os_log_impl(&dword_223515000, v19, v43, "Background Connection - Provider. Secondary connection failed. Error: %s", v21, 0xCu);
        v25 = v44;
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x223DE38F0](v25, -1, -1);
        MEMORY[0x223DE38F0](v21, -1, -1);
      }

      BackgroundConnection.cancelSecondaryConnection()();
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v26 = swift_allocError();
      *v27 = v6;
      v27[1] = v7;
      v27[2] = v8;
      v27[3] = v9;
      v27[4] = v10;
      v28 = swift_allocError();
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *v29 = v26;
      *(v29 + 24) = xmmword_2235F0A80;
      outlined copy of Result<(), NetworkConnectionError>(v6, v7, v8, v9, v10, 1);
      v30 = v26;
      BackgroundConnection.didEncounterError(_:)();

      v31 = v26;
    }

    else
    {
      *(v13 + 1184) = 2;
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriNetwork);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_223515000, v33, v34, "Background Connection - Provider. Secondary connection ready.", v35, 2u);
        MEMORY[0x223DE38F0](v35, -1, -1);
      }

      v36 = swift_unknownObjectWeakLoadStrong();
      if (!v36)
      {
        goto LABEL_10;
      }

      v37 = v36;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v38 = swift_allocError();
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *v39 = 0;
      *(v39 + 24) = xmmword_2235F0AC0;
      v40 = type metadata accessor for ConnectionAnalysisInfo();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v40);

      specialized Connection.didEncounterError(_:error:analysisInfo:)(v41, v38, v5, v37);

      swift_unknownObjectRelease();
      outlined destroy of NetworkConnectionProtocol?(v5, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
      v31 = v38;
    }
  }
}

void BackgroundConnection.cancelSecondaryConnection()()
{
  OUTLINED_FUNCTION_133();
  if (*(v0 + 1160))
  {
    v1 = v0;
    v2 = *(v0 + 1168);
    v3 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v4, static Logger.siriNetwork);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v6))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_37_4();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      v12 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v12);
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 472))(ObjectType, v2);
    swift_unknownObjectRelease();
    v14 = *(v1 + 1160);
    *(v1 + 1160) = 0;
    *(v1 + 1168) = 0;
    swift_unknownObjectRelease();
    *(v1 + 1184) = 0;
    *(v1 + 1189) = 0;
  }

  OUTLINED_FUNCTION_106_0();
}

Swift::Void __swiftcall BackgroundConnection.updateActiveBackgroundConnectionWithSecondary()()
{
  v1 = v0;
  v2 = (v0 + 1080);
  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(0);
  v3 = *(v0 + 1080);
  *v2 = v2[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(v2 + 10);
  *(v1 + 1168) = 0;
  *(v2 + 10) = 0;
  swift_unknownObjectRelease();
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_1(v7))
  {
    v8 = OUTLINED_FUNCTION_14();
    *v8 = 0;
    OUTLINED_FUNCTION_55_4();
    _os_log_impl(v9, v10, v11, v12, v8, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_36_5();
  outlined init with copy of MessageCenterBrowserProtocol?(v1 + 1096, v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pMd, _s11SiriNetwork21CommunicationProtocol_pMR);
    OUTLINED_FUNCTION_53_1();
    type metadata accessor for CommunicationProtocolAce();
    if (swift_dynamicCast())
    {
      if (*v2)
      {
        v13 = *(v1 + 1088);
        ObjectType = swift_getObjectType();
        if ((*(v13 + 552))(ObjectType, v13))
        {
          v15 = 5.0;
        }

        else
        {
          v15 = 7.0;
        }

        swift_unknownObjectRetain();
        CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(v15);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v16 = outlined init with copy of MessageCenterBrowserProtocol?(v1 + 1096, v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v24)
  {
    OUTLINED_FUNCTION_101_1(v16);
    outlined destroy of NetworkConnectionProtocol?(v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v17 = v21;
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v18 + 104))(0, 0, *(v1 + 153), v17, v18);
    v19 = __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v19 = outlined destroy of NetworkConnectionProtocol?(v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  BackgroundConnection.setupReadHandlerOnProvider()(v19);
  BackgroundConnection.networkProviderDidOpen()();
  *(v1 + 1184) = 0;
  *(v1 + 1188) = 1;
}

Swift::Void __swiftcall BackgroundConnection.cancel()()
{
  if ((*(v0 + 1186) & 1) == 0)
  {
    BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(0);
    *(v0 + 1186) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      specialized Connection.didClose(_:)(v0, Strong);
      swift_unknownObjectRelease();
      *(v0 + 24) = 0;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t BackgroundConnection.barrier(with:)()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_40_1();
  outlined init with copy of MessageCenterBrowserProtocol?(v0 + 1096, v4, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (!v5)
  {
    return outlined destroy of NetworkConnectionProtocol?(v4, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pMd, _s11SiriNetwork21CommunicationProtocol_pMR);
  OUTLINED_FUNCTION_53_1();
  type metadata accessor for CommunicationProtocolAce();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = OUTLINED_FUNCTION_32();
    CommunicationProtocolAce.barrier(with:)(v2, v3);
  }

  return result;
}

void BackgroundConnection.didEncounterError(_:)()
{
  OUTLINED_FUNCTION_133();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  if (*(v0 + 1187))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v8, static Logger.siriNetwork);
    v9 = v3;
    v36 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v10))
    {
      OUTLINED_FUNCTION_6_5();
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_58_3();
      *v11 = 138412290;
      v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_223515000, v36, v10, "Background Connection - Provider: Did encounter error %@, but it is not going to be reported because a more recent error was already reported.", v11, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v19, static Logger.siriNetwork);
      v20 = v3;
      v21 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_141())
      {
        OUTLINED_FUNCTION_6_5();
        v22 = swift_slowAlloc();
        v23 = OUTLINED_FUNCTION_58_3();
        *v22 = 138412290;
        v24 = v3;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        OUTLINED_FUNCTION_55_0();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v31 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x223DE38F0](v31);
        v32 = OUTLINED_FUNCTION_7_2();
        MEMORY[0x223DE38F0](v32);
      }

      BackgroundConnection.connectionAnalysisInfo.getter();
      v33 = OUTLINED_FUNCTION_32();
      specialized Connection.didEncounterError(_:error:analysisInfo:)(v33, v34, v7, v18);
      swift_unknownObjectRelease();
      outlined destroy of NetworkConnectionProtocol?(v7, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
    }

    *(v1 + 1187) = 1;
    OUTLINED_FUNCTION_106_0();
  }
}

void BackgroundConnection.didEncounterIntermediateError(_:)()
{
  OUTLINED_FUNCTION_133();
  if (*(v0 + 1080))
  {
    v2 = v0;
    v3 = v1;
    v4 = *(v0 + 1088);
    v5 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v6, static Logger.siriNetwork);
    v7 = v3;
    v8 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_141())
    {
      OUTLINED_FUNCTION_6_5();
      v9 = swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_58_3();
      *v9 = 138412290;
      v11 = v3;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      OUTLINED_FUNCTION_55_0();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v18 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v18);
      v19 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v19);
    }

    ObjectType = swift_getObjectType();
    v21 = swift_unknownObjectRetain();
    specialized BackgroundConnection.connectionProvider(_:receivedIntermediateError:)(v21, v3, v2, ObjectType, v4);
    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_106_0();
}

uint64_t closure #1 in BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 1080))
    {
      v8 = *(result + 1088);
      swift_beginAccess();
      memcpy(v16, (v6 + 16), 0x599uLL);
      memcpy(__dst, (v6 + 16), 0x599uLL);
      if (v4)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = v2;
        v10 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ConnectionMetrics?) -> ();
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      ObjectType = swift_getObjectType();
      v12 = *(v8 + 536);
      swift_unknownObjectRetain();
      outlined init with copy of ConnectionMetrics(v16, v14);
      outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v4);
      v12(__dst, v10, v9, ObjectType, v8);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v10);
      swift_unknownObjectRelease();
      memcpy(v14, __dst, 0x599uLL);
      return outlined destroy of ConnectionMetrics(v14);
    }

    else if (v4)
    {
      swift_beginAccess();
      memcpy(v14, (v6 + 16), 0x599uLL);
      memcpy(__dst, (v6 + 16), 0x599uLL);
      destructiveProjectEnumData for ConnectionConfigurationError(__dst);
      memcpy(__src, __dst, 0x599uLL);
      outlined init with copy of ConnectionMetrics(v14, v16);
      v4(__src);

      memcpy(v16, __src, 0x599uLL);
      return outlined destroy of NetworkConnectionProtocol?(v16, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall BackgroundConnection.probeConnection()()
{
  OUTLINED_FUNCTION_36_5();
  v1 = outlined init with copy of MessageCenterBrowserProtocol?(v0 + 1096, v7, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v8)
  {
    OUTLINED_FUNCTION_101_1(v1);
    outlined destroy of NetworkConnectionProtocol?(v7, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v2 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = *(v2 + 160);
    v4 = OUTLINED_FUNCTION_16_10();
    v5(v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v7, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }
}

void specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 1136);
  memcpy(__dst, (a2 + 40), 0x204uLL);
  memcpy(__src, (a2 + 40), 0x204uLL);

  v9 = a4;
  outlined init with copy of ConnectionConfiguration(__dst, v88);
  v10 = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__src, v8);
  memcpy(v88, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(v88);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriNetwork);
  swift_retain_n();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v83 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v81 = v10;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    __src[0] = v17;
    *v15 = 136315650;
    v18 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
    switch(*(a2 + 1136))
    {
      case 1:
        v19 = 0x6B726F7774656ELL;
        break;
      case 2:
        v18 = 0xE400000000000000;
        v19 = 1919247728;
        break;
      case 3:
        v18 = 0xE300000000000000;
        v19 = 7368560;
        break;
      default:
        break;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, __src);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    a1 = v83;
    if (v83)
    {
      v21 = v83;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v15 + 14) = v22;
    *v16 = v23;
    *(v15 + 22) = 1024;
    v24 = *(a2 + 139);

    *(v15 + 24) = v24;

    _os_log_impl(&dword_223515000, v13, v14, "Background Connection - Fallback: Start. Current method: %s. Error: %@. Uses Proxy: %{BOOL}d", v15, 0x1Cu);
    outlined destroy of NetworkConnectionProtocol?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DE38F0](v17, -1, -1);
    MEMORY[0x223DE38F0](v15, -1, -1);

    v10 = v81;
  }

  else
  {
  }

  v25 = 0.0;
  if (v10 == SiriNetwork_ConnectionMethod_unknown)
  {
    if (*(a2 + 1136) != 1 || *(a2 + 139) != 1)
    {
      goto LABEL_28;
    }

    if (*(a2 + 138) == 1)
    {
      v26 = a1;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = a3;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        if (a1)
        {
          v32 = a1;
          v33 = _swift_stdlib_bridgeErrorToNSError();
          v34 = v33;
        }

        else
        {
          v33 = 0;
          v34 = 0;
        }

        *(v30 + 4) = v33;
        *v31 = v34;
        _os_log_impl(&dword_223515000, v27, v28, "Background Connection - Fallback: Resetting connection method on error (%@). Trying Peer now.", v30, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE38F0](v31, -1, -1);
        MEMORY[0x223DE38F0](v30, -1, -1);
        a3 = v29;
      }

      memcpy(v85, (a2 + 40), 0x204uLL);
      memcpy(v84, (a2 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(v85, __src);
      v10 = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(v84, 0);
      memcpy(__src, v84, 0x204uLL);
      outlined destroy of ConnectionConfiguration(__src);
      *(a2 + 138) = 0;
      goto LABEL_29;
    }

    v10 = SiriNetwork_ConnectionMethod_unknown;
    if (!AFHasCellularData() || !a1)
    {
      goto LABEL_29;
    }

    swift_getErrorValue();
    v35 = a1;
    if (!Error.sn_isNetworkDown()())
    {
LABEL_27:

LABEL_28:
      v10 = SiriNetwork_ConnectionMethod_unknown;
      goto LABEL_29;
    }

    v36 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v36 systemUptime];
    v38 = v37;

    if (v38 - *(a2 + 1192) > 30.0)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_223515000, v39, v40, "Background Connection - Fallback: Ran out of time waiting for network to become available.", v41, 2u);
        MEMORY[0x223DE38F0](v41, -1, -1);
      }

      goto LABEL_27;
    }

    v71 = a1;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = a4;
      v76 = swift_slowAlloc();
      *v74 = 138412290;
      v77 = a1;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&dword_223515000, v72, v73, "Background Connection - Fallback: Resetting connection method on error (%@) while waiting for cellular.", v74, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v76, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v79 = v76;
      a4 = v75;
      MEMORY[0x223DE38F0](v79, -1, -1);
      MEMORY[0x223DE38F0](v74, -1, -1);
    }

    memcpy(v85, (a2 + 40), 0x204uLL);
    memcpy(v84, (a2 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(v85, __src);
    v10 = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(v84, 0);

    memcpy(__src, v84, 0x204uLL);
    outlined destroy of ConnectionConfiguration(__src);
    v25 = 1.0;
  }

LABEL_29:
  swift_beginAccess();
  outlined init with copy of MessageCenterBrowserProtocol?(a2 + 1096, __src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v42 = __src[3];
  if (__src[3])
  {
    v43 = __src[4];
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    v44 = (*(v43 + 16))(v42, v43);
    v46 = v45;
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v46 >> 60 != 15)
    {
      outlined consume of Data?(v44, v46);
      if (v10)
      {
        v47 = BackgroundConnection.canFallBackFromError(_:)(a1);
        goto LABEL_35;
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v47 = 0;
LABEL_35:

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v48, v49))
  {

    goto LABEL_44;
  }

  v82 = v10;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v84[0] = v51;
  *v50 = 67109378;
  *(v50 + 4) = v47 & 1;
  *(v50 + 8) = 2080;
  outlined init with copy of MessageCenterBrowserProtocol?(a2 + 1096, __src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v52 = __src[3];
  if (__src[3])
  {
    v80 = a3;
    v53 = a4;
    v54 = __src[4];
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    v55 = (*(v54 + 16))(v52, v54);
    v57 = v56;
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v57 >> 60 != 15)
    {
      __src[0] = v55;
      __src[1] = v57;
      v59 = String.init<A>(describing:)();
      v58 = v60;
      a4 = v53;
      a3 = v80;
      goto LABEL_43;
    }

    a4 = v53;
    a3 = v80;
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v55 = 0;
    v57 = 0xF000000000000000;
  }

  outlined consume of Data?(v55, v57);
  v58 = 0xE800000000000000;
  v59 = 0x6566617320746F4ELL;
LABEL_43:
  v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, v84);

  *(v50 + 10) = v61;
  _os_log_impl(&dword_223515000, v48, v49, "Background Connection - Fallback: Can fallback %{BOOL}d. Buffer: %s", v50, 0x12u);
  __swift_destroy_boxed_opaque_existential_0(v51);
  MEMORY[0x223DE38F0](v51, -1, -1);
  MEMORY[0x223DE38F0](v50, -1, -1);

  v10 = v82;
LABEL_44:
  if (v47)
  {

    v62 = a4;
    specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v10, v83, a2, a3, a4, v25);

    v63 = a4;
  }

  else
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_223515000, v64, v65, "Background Connection - Fallback: No fallback available.", v66, 2u);
      MEMORY[0x223DE38F0](v66, -1, -1);
    }

    v68 = BackgroundConnection.communicationProtocol.modify();
    v69 = *(v67 + 24);
    if (v69)
    {
      v70 = *(v67 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v67, *(v67 + 24));
      (*(v70 + 24))(0, 0xF000000000000000, v69, v70);
    }

    (v68)(__src, 0);
    __src[2] = 0;
    __src[0] = 9;
    __src[1] = 0;
    *&__src[3] = xmmword_2235F01E0;
    closure #1 in closure #1 in BackgroundConnection.connectionProvider(_:received:)(__src, a3, a4);

    v63 = a4;
  }
}

void specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_49_5(v6, v7);
  memcpy(__dst, v3 + 40, 0x204uLL);
  v156 = v2;

  v159 = v1;
  outlined init with copy of NetworkConnectionError(v1, v165);
  outlined init with copy of ConnectionConfiguration(v164, v165);
  ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__dst, v0);
  OUTLINED_FUNCTION_129();
  outlined destroy of ConnectionConfiguration(v165);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriNetwork);
  OUTLINED_FUNCTION_112_1();
  swift_retain_n();
  v9 = v5;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v153 = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_4_3();
    v14 = swift_slowAlloc();
    __dst[0] = v14;
    *v12 = 136315650;
    v5 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    switch(v3[1136])
    {
      case 1:
        v15 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v5 = 0xE400000000000000;
        v15 = 1919247728;
        break;
      case 3:
        v5 = 0xE300000000000000;
        v15 = 7368560;
        break;
      default:
        break;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v5, __dst);

    OUTLINED_FUNCTION_111_0();
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_77_1(v18, v18);
    v12[6] = v16;

    OUTLINED_FUNCTION_122_1(&dword_223515000, v19, v20, "Background Connection - Fallback: Start. Current method: %s. Error: %@. Uses Proxy: %{BOOL}d");
    outlined destroy of NetworkConnectionProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v21);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v22 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v22);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    OUTLINED_FUNCTION_112_1();
  }

  if (!v4)
  {
    if (v3[1136] == 1 && v3[139] == 1)
    {
      if (v3[138] == 1)
      {
        v23 = v5;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          OUTLINED_FUNCTION_6_5();
          v26 = swift_slowAlloc();
          v27 = OUTLINED_FUNCTION_58_3();
          *v26 = 138412290;
          if (v5)
          {
            v28 = v5;
            v29 = _swift_stdlib_bridgeErrorToNSError();
            v32 = v29;
          }

          else
          {
            v29 = OUTLINED_FUNCTION_46_5();
          }

          *(v26 + 4) = v29;
          *v27 = v32;
          OUTLINED_FUNCTION_131(&dword_223515000, v30, v31, "Background Connection - Fallback: Resetting connection method on error (%@). Trying Peer now.");
          outlined destroy of NetworkConnectionProtocol?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v87 = OUTLINED_FUNCTION_2_0();
          MEMORY[0x223DE38F0](v87);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }

        v88 = OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_61_3(v88, v89, v90, v91, v92, v93, v94, v95, v144, v147, v150, v153, v156, v159, v162);
        v96 = OUTLINED_FUNCTION_136();
        v4 = OUTLINED_FUNCTION_135(v96, v97, v98, v99, v100, v101);
        OUTLINED_FUNCTION_65_4(v4, v102, v103, v104, v105, v106, v107, v108, v145, v148, v151, v154, v157, v160, v162);
        outlined destroy of ConnectionConfiguration(__dst);
        v3[138] = 0;
        goto LABEL_27;
      }

      LOBYTE(v4) = 0;
      if (!AFHasCellularData() || !v5)
      {
        goto LABEL_27;
      }

      swift_getErrorValue();
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_16_10();
      if (Error.sn_isNetworkDown()())
      {
        v33 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v33 systemUptime];

        OUTLINED_FUNCTION_110_0();
        if (!(!v35 & v34))
        {
          v109 = v5;
          v110 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          v111 = OUTLINED_FUNCTION_106_1();
          if (os_log_type_enabled(v111, v112))
          {
            OUTLINED_FUNCTION_6_5();
            v113 = swift_slowAlloc();
            v114 = OUTLINED_FUNCTION_58_3();
            *v113 = 138412290;
            v115 = v5;
            v116 = _swift_stdlib_bridgeErrorToNSError();
            *(v113 + 4) = v116;
            *v114 = v116;
            OUTLINED_FUNCTION_18_10();
            _os_log_impl(v117, v118, v119, v120, v121, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v114, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          v122 = OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_61_3(v122, v123, v124, v125, v126, v127, v128, v129, v144, v147, v150, v153, v156, v159, v162);
          v130 = OUTLINED_FUNCTION_136();
          LOBYTE(v4) = OUTLINED_FUNCTION_135(v130, v131, v132, v133, v134, v135);

          OUTLINED_FUNCTION_65_4(v136, v137, v138, v139, v140, v141, v142, v143, v146, v149, v152, v155, v158, v161, v162);
          outlined destroy of ConnectionConfiguration(__dst);
          goto LABEL_27;
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_4_20(v37))
        {
          v38 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_85(v38);
          OUTLINED_FUNCTION_18_10();
          _os_log_impl(v39, v40, v41, v42, v43, 2u);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_27:
  v44 = OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_138(v44, v45, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (__dst[3])
  {
    v46 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    OUTLINED_FUNCTION_64_3(v46);
    v47 = OUTLINED_FUNCTION_16_10();
    v48(v47);
    v50 = v49;
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v50 >> 60 != 15)
    {
      v51 = OUTLINED_FUNCTION_14_3();
      outlined consume of Data?(v51, v52);
      if (v4)
      {
        v53 = BackgroundConnection.canFallBackFromError(_:)(v5);
        goto LABEL_33;
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v53 = 0;
LABEL_33:

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v57 = swift_slowAlloc();
    v162 = v57;
    OUTLINED_FUNCTION_87_1(1.5047e-36);
    OUTLINED_FUNCTION_138(v58, v59, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v60 = __dst[3];
    if (__dst[3])
    {
      v61 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      OUTLINED_FUNCTION_64_3(v61);
      v63 = v62(v60, v61);
      v65 = v64;
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (v65 >> 60 != 15)
      {
        __dst[0] = v63;
        __dst[1] = v65;
        v66 = String.init<A>(describing:)();
        v63 = v67;
        goto LABEL_45;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v63 = 0;
      v65 = 0xF000000000000000;
    }

    outlined consume of Data?(v63, v65);
    v66 = OUTLINED_FUNCTION_85_0();
LABEL_45:
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v63, &v162);
    OUTLINED_FUNCTION_72_0();

    *(v56 + 10) = v65;
    OUTLINED_FUNCTION_125(&dword_223515000, v82, v83, "Background Connection - Fallback: Can fallback %{BOOL}d. Buffer: %s");
    __swift_destroy_boxed_opaque_existential_0(v57);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v84 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v84);

    if (v53)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (v53)
  {
LABEL_46:

    v77 = v159;
    outlined init with copy of NetworkConnectionError(v159, __dst);
    v85 = OUTLINED_FUNCTION_51_4();
    v86(v85);
    goto LABEL_47;
  }

LABEL_38:
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_4_20(v69))
  {
    v70 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v70);
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v71, v72, v73, v74, v75, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v77 = BackgroundConnection.communicationProtocol.modify();
  if (*(v76 + 24))
  {
    v78 = *(v76 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v76, *(v76 + 24));
    v79 = OUTLINED_FUNCTION_54_5();
    v80(v79);
  }

  (v77)(__dst, 0);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_52_6(xmmword_2235F01E0);
  v81();
LABEL_47:

  outlined destroy of NetworkConnectionError(v77);

  outlined destroy of NetworkConnectionError(v159);
  OUTLINED_FUNCTION_81_1();
}

{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_49_5(v6, v7);
  memcpy(__dst, v3 + 40, 0x204uLL);
  v158 = v2;

  v161 = v1;
  v8 = v1;
  outlined init with copy of ConnectionConfiguration(v166, v167);
  ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__dst, v0);
  OUTLINED_FUNCTION_129();
  outlined destroy of ConnectionConfiguration(v167);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriNetwork);
  OUTLINED_FUNCTION_112_1();
  swift_retain_n();
  v10 = v5;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v155 = v5;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_4_3();
    v15 = swift_slowAlloc();
    __dst[0] = v15;
    *v13 = 136315650;
    v5 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    switch(v3[1136])
    {
      case 1:
        v16 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v5 = 0xE400000000000000;
        v16 = 1919247728;
        break;
      case 3:
        v5 = 0xE300000000000000;
        v16 = 7368560;
        break;
      default:
        break;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v5, __dst);

    OUTLINED_FUNCTION_111_0();
    v18 = v5;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_77_1(v19, v19);
    v13[6] = v17;

    OUTLINED_FUNCTION_122_1(&dword_223515000, v20, v21, "Background Connection - Fallback: Start. Current method: %s. Error: %@. Uses Proxy: %{BOOL}d");
    outlined destroy of NetworkConnectionProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v22);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v23 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v23);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    OUTLINED_FUNCTION_112_1();
  }

  if (!v4)
  {
    if (v3[1136] == 1 && v3[139] == 1)
    {
      if (v3[138] == 1)
      {
        v24 = v5;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          OUTLINED_FUNCTION_6_5();
          v27 = swift_slowAlloc();
          v28 = OUTLINED_FUNCTION_58_3();
          *v27 = 138412290;
          if (v5)
          {
            v29 = v5;
            v30 = _swift_stdlib_bridgeErrorToNSError();
            v33 = v30;
          }

          else
          {
            v30 = OUTLINED_FUNCTION_46_5();
          }

          *(v27 + 4) = v30;
          *v28 = v33;
          OUTLINED_FUNCTION_131(&dword_223515000, v31, v32, "Background Connection - Fallback: Resetting connection method on error (%@). Trying Peer now.");
          outlined destroy of NetworkConnectionProtocol?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v89 = OUTLINED_FUNCTION_2_0();
          MEMORY[0x223DE38F0](v89);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }

        v90 = OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_61_3(v90, v91, v92, v93, v94, v95, v96, v97, v146, v149, v152, v155, v158, v161, v164);
        v98 = OUTLINED_FUNCTION_136();
        v4 = OUTLINED_FUNCTION_135(v98, v99, v100, v101, v102, v103);
        OUTLINED_FUNCTION_65_4(v4, v104, v105, v106, v107, v108, v109, v110, v147, v150, v153, v156, v159, v162, v164);
        outlined destroy of ConnectionConfiguration(__dst);
        v3[138] = 0;
        goto LABEL_27;
      }

      LOBYTE(v4) = 0;
      if (!AFHasCellularData() || !v5)
      {
        goto LABEL_27;
      }

      swift_getErrorValue();
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_16_10();
      if (Error.sn_isNetworkDown()())
      {
        v34 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v34 systemUptime];

        OUTLINED_FUNCTION_110_0();
        if (!(!v36 & v35))
        {
          v111 = v5;
          v112 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          v113 = OUTLINED_FUNCTION_106_1();
          if (os_log_type_enabled(v113, v114))
          {
            OUTLINED_FUNCTION_6_5();
            v115 = swift_slowAlloc();
            v116 = OUTLINED_FUNCTION_58_3();
            *v115 = 138412290;
            v117 = v5;
            v118 = _swift_stdlib_bridgeErrorToNSError();
            *(v115 + 4) = v118;
            *v116 = v118;
            OUTLINED_FUNCTION_18_10();
            _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v116, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          v124 = OUTLINED_FUNCTION_62_3();
          OUTLINED_FUNCTION_61_3(v124, v125, v126, v127, v128, v129, v130, v131, v146, v149, v152, v155, v158, v161, v164);
          v132 = OUTLINED_FUNCTION_136();
          LOBYTE(v4) = OUTLINED_FUNCTION_135(v132, v133, v134, v135, v136, v137);

          OUTLINED_FUNCTION_65_4(v138, v139, v140, v141, v142, v143, v144, v145, v148, v151, v154, v157, v160, v163, v164);
          outlined destroy of ConnectionConfiguration(__dst);
          goto LABEL_27;
        }

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_4_20(v38))
        {
          v39 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_85(v39);
          OUTLINED_FUNCTION_18_10();
          _os_log_impl(v40, v41, v42, v43, v44, 2u);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
        }
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_27:
  v45 = OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_138(v45, v46, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (__dst[3])
  {
    v47 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    OUTLINED_FUNCTION_64_3(v47);
    v48 = OUTLINED_FUNCTION_16_10();
    v49(v48);
    v51 = v50;
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v51 >> 60 != 15)
    {
      v52 = OUTLINED_FUNCTION_14_3();
      outlined consume of Data?(v52, v53);
      if (v4)
      {
        v54 = BackgroundConnection.canFallBackFromError(_:)(v5);
        goto LABEL_33;
      }
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  v54 = 0;
LABEL_33:

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v58 = swift_slowAlloc();
    v164 = v58;
    OUTLINED_FUNCTION_87_1(1.5047e-36);
    OUTLINED_FUNCTION_138(v59, v60, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v61 = __dst[3];
    if (__dst[3])
    {
      v62 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      OUTLINED_FUNCTION_64_3(v62);
      v64 = v63(v61, v62);
      v66 = v65;
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (v66 >> 60 != 15)
      {
        __dst[0] = v64;
        __dst[1] = v66;
        v67 = String.init<A>(describing:)();
        v64 = v68;
        goto LABEL_45;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v64 = 0;
      v66 = 0xF000000000000000;
    }

    outlined consume of Data?(v64, v66);
    v67 = OUTLINED_FUNCTION_85_0();
LABEL_45:
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v64, &v164);
    OUTLINED_FUNCTION_72_0();

    *(v57 + 10) = v66;
    OUTLINED_FUNCTION_125(&dword_223515000, v83, v84, "Background Connection - Fallback: Can fallback %{BOOL}d. Buffer: %s");
    __swift_destroy_boxed_opaque_existential_0(v58);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v85 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v85);

    if (v54)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (v54)
  {
LABEL_46:

    v78 = v161;
    v86 = v161;
    v87 = OUTLINED_FUNCTION_51_4();
    v88(v87);
    goto LABEL_47;
  }

LABEL_38:
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_4_20(v70))
  {
    v71 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v71);
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v72, v73, v74, v75, v76, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v78 = BackgroundConnection.communicationProtocol.modify();
  if (*(v77 + 24))
  {
    v79 = *(v77 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v77, *(v77 + 24));
    v80 = OUTLINED_FUNCTION_54_5();
    v81(v80);
  }

  (v78)(__dst, 0);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_52_6(xmmword_2235F01E0);
  v82();
LABEL_47:

  OUTLINED_FUNCTION_81_1();
}

void specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v47 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v47);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchTime();
  v45 = *(v52 - 8);
  v16 = *(v45 + 64);
  v17 = MEMORY[0x28223BE20](v52);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v53 = a4;

  v54 = a5;
  v23 = a5;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriNetwork);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a1;
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a6;
    _os_log_impl(&dword_223515000, v25, v26, "Background Connection - Fallback: Fallback after delay %f.", v28, 0xCu);
    v29 = v28;
    a1 = v27;
    MEMORY[0x223DE38F0](v29, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v30 = 0;
  }

  else if (a2)
  {
    v31 = *(a3 + 1136);
    swift_beginAccess();
    v32 = a2;
    specialized Set._Variant.insert(_:)(&v55, v31);
    swift_endAccess();
    swift_getErrorValue();
    v30 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v30 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = a1;
  *(v34 + 25) = v30;
  *(v34 + 32) = partial apply for closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(error:);
  *(v34 + 40) = v22;
  if (a6 <= 0.0)
  {

    v43 = v54;

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)();
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = a6;
      _os_log_impl(&dword_223515000, v35, v36, "Background Connection - Fallback: Delaying start %f.", v37, 0xCu);
      MEMORY[0x223DE38F0](v37, -1, -1);
    }

    v44 = *(a3 + 32);
    static DispatchTime.now()();
    v38 = v21;
    + infix(_:_:)();
    v45 = *(v45 + 8);
    (v45)(v19, v52);
    aBlock[4] = partial apply for specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_152;
    v39 = _Block_copy(aBlock);

    v40 = v46;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v41 = v49;
    v42 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v38, v40, v41, v39);
    _Block_release(v39);

    (*(v51 + 8))(v41, v42);
    (*(v48 + 8))(v40, v50);
    (v45)(v38, v52);
  }
}

uint64_t specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v47 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v47);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v45 = *(v53 - 8);
  v16 = *(v45 + 64);
  v17 = MEMORY[0x28223BE20](v53);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  v23 = *(a5 + 16);
  *(v22 + 24) = *a5;
  *(v22 + 40) = v23;
  *(v22 + 56) = *(a5 + 32);
  v54 = a4;

  v52 = a5;
  outlined init with copy of NetworkConnectionError(a5, aBlock);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriNetwork);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a1;
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a6;
    _os_log_impl(&dword_223515000, v25, v26, "Background Connection - Fallback: Fallback after delay %f.", v28, 0xCu);
    v29 = v28;
    a1 = v27;
    MEMORY[0x223DE38F0](v29, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v30 = 0;
  }

  else if (a2)
  {
    v31 = *(a3 + 1136);
    swift_beginAccess();
    v32 = a2;
    specialized Set._Variant.insert(_:)(&v55, v31);
    swift_endAccess();
    swift_getErrorValue();
    v30 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v30 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = a1;
  *(v34 + 25) = v30;
  *(v34 + 32) = partial apply for closure #1 in closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:);
  *(v34 + 40) = v22;
  if (a6 <= 0.0)
  {

    v42 = v52;
    outlined init with copy of NetworkConnectionError(v52, aBlock);

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)();
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = a6;
      _os_log_impl(&dword_223515000, v35, v36, "Background Connection - Fallback: Delaying start %f.", v37, 0xCu);
      MEMORY[0x223DE38F0](v37, -1, -1);
    }

    v44 = *(a3 + 32);
    static DispatchTime.now()();
    + infix(_:_:)();
    v45 = *(v45 + 8);
    (v45)(v19, v53);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_261_0;
    v38 = _Block_copy(aBlock);

    v39 = v46;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v40 = v49;
    v41 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v21, v39, v40, v38);
    _Block_release(v38);

    (*(v51 + 8))(v40, v41);
    (*(v48 + 8))(v39, v50);
    (v45)(v21, v53);

    v42 = v52;
  }

  return outlined destroy of NetworkConnectionError(v42);
}

{
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v47 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v47);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v45 = *(v53 - 8);
  v16 = *(v45 + 64);
  v17 = MEMORY[0x28223BE20](v53);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  v23 = *(a5 + 16);
  *(v22 + 24) = *a5;
  *(v22 + 40) = v23;
  *(v22 + 56) = *(a5 + 32);
  v54 = a4;

  v52 = a5;
  outlined init with copy of NetworkConnectionError(a5, aBlock);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriNetwork);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a1;
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a6;
    _os_log_impl(&dword_223515000, v25, v26, "Background Connection - Fallback: Fallback after delay %f.", v28, 0xCu);
    v29 = v28;
    a1 = v27;
    MEMORY[0x223DE38F0](v29, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v30 = 0;
  }

  else if (a2)
  {
    v31 = *(a3 + 1136);
    swift_beginAccess();
    v32 = a2;
    specialized Set._Variant.insert(_:)(&v55, v31);
    swift_endAccess();
    swift_getErrorValue();
    v30 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v30 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = a1;
  *(v34 + 25) = v30;
  *(v34 + 32) = partial apply for closure #1 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider();
  *(v34 + 40) = v22;
  if (a6 <= 0.0)
  {

    v42 = v52;
    outlined init with copy of NetworkConnectionError(v52, aBlock);

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)();
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = a6;
      _os_log_impl(&dword_223515000, v35, v36, "Background Connection - Fallback: Delaying start %f.", v37, 0xCu);
      MEMORY[0x223DE38F0](v37, -1, -1);
    }

    v44 = *(a3 + 32);
    static DispatchTime.now()();
    + infix(_:_:)();
    v45 = *(v45 + 8);
    (v45)(v19, v53);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_179;
    v38 = _Block_copy(aBlock);

    v39 = v46;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v40 = v49;
    v41 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v21, v39, v40, v38);
    _Block_release(v38);

    (*(v51 + 8))(v40, v41);
    (*(v48 + 8))(v39, v50);
    (v45)(v21, v53);

    v42 = v52;
  }

  return outlined destroy of NetworkConnectionError(v42);
}

void specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(SiriNetwork::ConnectionMethod a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v51 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v51);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchTime();
  v49 = *(v56 - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](v56);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v57 = a4;

  v58 = a5;
  v23 = a5;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriNetwork);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a1;
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a6;
    _os_log_impl(&dword_223515000, v25, v26, "Background Connection - Fallback: Fallback after delay %f.", v28, 0xCu);
    v29 = v28;
    a1 = v27;
    MEMORY[0x223DE38F0](v29, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v30 = 0;
  }

  else if (a2)
  {
    v31 = *(a3 + 1136);
    swift_beginAccess();
    v32 = a2;
    specialized Set._Variant.insert(_:)(&v59, v31);
    swift_endAccess();
    swift_getErrorValue();
    v30 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v30 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = a1;
  v35 = v30;
  *(v34 + 25) = v35;
  *(v34 + 32) = partial apply for closure #1 in closure #1 in BackgroundConnection.connectionProvider(_:received:);
  *(v34 + 40) = v22;
  if (a6 <= 0.0)
  {
    v44 = v57;

    v45 = v58;
    v46 = v58;

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v47, a1, v35, v44, v45);
  }

  else
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = a6;
      _os_log_impl(&dword_223515000, v36, v37, "Background Connection - Fallback: Delaying start %f.", v38, 0xCu);
      MEMORY[0x223DE38F0](v38, -1, -1);
    }

    v48 = *(a3 + 32);
    static DispatchTime.now()();
    v39 = v21;
    + infix(_:_:)();
    v49 = *(v49 + 8);
    (v49)(v19, v56);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_273_0;
    v40 = _Block_copy(aBlock);

    v41 = v50;
    static DispatchQoS.unspecified.getter();
    v59 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v42 = v53;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v39, v41, v42, v40);
    _Block_release(v40);

    (*(v55 + 8))(v42, v43);
    (*(v52 + 8))(v41, v54);
    (v49)(v39, v56);
  }
}

void specialized BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v51 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v51);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchTime();
  v49 = *(v56 - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](v56);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v57 = a4;

  v58 = a5;
  v23 = a5;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriNetwork);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = a1;
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a6;
    _os_log_impl(&dword_223515000, v25, v26, "Background Connection - Fallback: Fallback after delay %f.", v28, 0xCu);
    v29 = v28;
    a1 = v27;
    MEMORY[0x223DE38F0](v29, -1, -1);
  }

  swift_beginAccess();
  if (specialized Set.contains(_:)(*(a3 + 1136), *(a3 + 1152)))
  {
    v30 = 0;
  }

  else if (a2)
  {
    v31 = *(a3 + 1136);
    swift_beginAccess();
    v32 = a2;
    specialized Set._Variant.insert(_:)(&v59, v31);
    swift_endAccess();
    swift_getErrorValue();
    v30 = Error.isFallbackConnectionMethodRetryable(for:)(*(a3 + 1136));
  }

  else
  {
    v30 = 1;
  }

  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(1);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = a1;
  v35 = v30;
  *(v34 + 25) = v35;
  *(v34 + 32) = partial apply for closure #2 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider();
  *(v34 + 40) = v22;
  if (a6 <= 0.0)
  {
    v44 = v57;

    v45 = v58;
    v46 = v58;

    specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(v47, a1, v35, v44, v45);
  }

  else
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = a6;
      _os_log_impl(&dword_223515000, v36, v37, "Background Connection - Fallback: Delaying start %f.", v38, 0xCu);
      MEMORY[0x223DE38F0](v38, -1, -1);
    }

    v48 = *(a3 + 32);
    static DispatchTime.now()();
    v39 = v21;
    + infix(_:_:)();
    v49 = *(v49 + 8);
    (v49)(v19, v56);
    aBlock[4] = closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)specialized partial apply;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_190_0;
    v40 = _Block_copy(aBlock);

    v41 = v50;
    static DispatchQoS.unspecified.getter();
    v59 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v42 = v53;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v39, v41, v42, v40);
    _Block_release(v40);

    (*(v55 + 8))(v42, v43);
    (*(v52 + 8))(v41, v54);
    (v49)(v39, v56);
  }
}

void specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, SiriNetwork::ConnectionMethod a2, char a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
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
      *v11 = 0;
      _os_log_impl(&dword_223515000, v9, v10, "Background Connection - Fallback: Start new connection.", v11, 2u);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(a2, (a3 & 1) == 0);
    if (v12)
    {
    }

    swift_beginAccess();
    swift_weakLoadStrong();
  }
}

void specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)()
{
  OUTLINED_FUNCTION_48_2();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v4))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_76();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      v10 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v10);
    }

    OUTLINED_FUNCTION_100_1();
    if (v1)
    {
    }

    OUTLINED_FUNCTION_40_1();
    swift_weakLoadStrong();
  }
}

uint64_t specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)()
{
  OUTLINED_FUNCTION_48_2();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v4))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_76();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      v10 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v10);
    }

    OUTLINED_FUNCTION_100_1();
    if (v1)
    {
    }

    OUTLINED_FUNCTION_40_1();
    swift_weakLoadStrong();
  }

  return outlined destroy of NetworkConnectionError(v0);
}

uint64_t specialized closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(_:error:after:with:)(uint64_t a1, SiriNetwork::ConnectionMethod a2, char a3, void (*a4)(__int128 *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
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
      *v11 = 0;
      _os_log_impl(&dword_223515000, v9, v10, "Background Connection - Fallback: Start new connection.", v11, 2u);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(a2, (a3 & 1) == 0);
    if (v12)
    {
    }

    v13 = xmmword_2235F5150;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    a4(&v13);
  }

  return result;
}

uint64_t BackgroundConnection.canFallBackFromError(_:)(uint64_t a1)
{
  if (!*(v1 + 1080))
  {
    return 1;
  }

  v4 = OUTLINED_FUNCTION_134();
  return (*(v2 + 496))(a1, v4, v2) & 1;
}

void closure #1 in BackgroundConnection.connectionProvider(_:received:)(uint64_t a1)
{
  OUTLINED_FUNCTION_90_1(a1);
  OUTLINED_FUNCTION_40_1();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = *(Strong + 1080);
  if (!v8 || v8 != v1)
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_126();
  if (v5(v4, v3))
  {
    type metadata accessor for BackgroundConnection();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_40_1();
  v10 = swift_weakLoadStrong();
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {

      swift_unknownObjectRelease();
LABEL_58:
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    if (v11 != v9)
    {
LABEL_57:

      goto LABEL_58;
    }
  }

  else if (v10)
  {

    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v12, static Logger.siriNetwork);
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_6_5();
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_58_3();
    *v16 = 138412290;
    if (v2)
    {
      v18 = v2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = OUTLINED_FUNCTION_46_5();
    }

    *(v16 + 4) = v19;
    *v17 = v20;
    _os_log_impl(&dword_223515000, v14, v15, "Background Connection - Provider: Error (%@)", v16, 0xCu);
    outlined destroy of NetworkConnectionProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v21 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v21);
  }

  if (*(v7 + 1186) != 1)
  {
    if (!v2)
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_15_1(v41))
      {
        v42 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_40_2(v42);
        OUTLINED_FUNCTION_34_6(&dword_223515000, v43, v44, "Background Connection - Provider: Closing provider connection without error");
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      BackgroundConnection.cancel()();
      goto LABEL_57;
    }

    v29 = v2;
    v30 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (OUTLINED_FUNCTION_123())
    {
      if (v88 >> 60 == 10 && !v89)
      {
        v31 = v88 == 0xA000000000000000 && v86 == 7;
        if (v31 && v87 == 0)
        {
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_15_1(v33))
          {
            *OUTLINED_FUNCTION_14() = 0;
            OUTLINED_FUNCTION_37_4();
            _os_log_impl(v34, v35, v36, v37, v38, 2u);
            v39 = OUTLINED_FUNCTION_2_0();
            MEMORY[0x223DE38F0](v39);
          }

          BackgroundConnection.cancel()();
          outlined consume of NetworkConnectionError(7, 0, 0, 0xA000000000000000, 0);
LABEL_56:

          goto LABEL_57;
        }
      }

      outlined consume of NetworkConnectionError(v86, v87, *(&v87 + 1), v88, v89);
    }

    if (AFDeviceSupportsSiriUOD())
    {
      v45 = v2;
      if (OUTLINED_FUNCTION_123())
      {
        v46 = v88;
        if (v88 >> 60 == 1)
        {
          v47 = v86;
          oslog = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          v49 = OUTLINED_FUNCTION_35_3();
          outlined consume of NetworkConnectionError(v49, v50, v51, v52, v89);
          if (os_log_type_enabled(oslog, v48))
          {
            OUTLINED_FUNCTION_6_5();
            v53 = swift_slowAlloc();
            v84 = OUTLINED_FUNCTION_58_3();
            *v53 = 138412290;
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            OUTLINED_FUNCTION_60();
            *v54 = v86;
            *(v54 + 8) = v87;
            *(v54 + 24) = v88;
            *(v54 + 32) = v89;
            v55 = v86;
            v56 = _swift_stdlib_bridgeErrorToNSError();
            v57 = v53;
            v46 = v88;
            *(v57 + 1) = v56;
            *v84 = v56;
            OUTLINED_FUNCTION_40_6();
            _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v84, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
          }

          lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
          v63 = OUTLINED_FUNCTION_60();
          *v64 = v86;
          *(v64 + 8) = v87;
          *(v64 + 24) = v46;
          *(v64 + 32) = v89;
          v65 = v86;
          BackgroundConnection.didEncounterError(_:)();

          v66 = OUTLINED_FUNCTION_35_3();
          outlined consume of NetworkConnectionError(v66, v67, v68, v69, v89);
          swift_unknownObjectRelease();

          *(v7 + 1187) = 0;
          goto LABEL_4;
        }

        v76 = OUTLINED_FUNCTION_35_3();
        outlined consume of NetworkConnectionError(v76, v77, v78, v79, v80);
      }
    }

    OUTLINED_FUNCTION_7_1();
    v81 = swift_allocObject();
    OUTLINED_FUNCTION_36_5();
    swift_weakLoadStrong();
    swift_weakInit();
    v82 = v2;

    v83 = v2;

    specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)(v2, v7, v81, v2);

    goto LABEL_56;
  }

  v22 = v2;
  v23 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_141())
  {
    OUTLINED_FUNCTION_6_5();
    v24 = swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_58_3();
    *v24 = 138412290;
    if (v2)
    {
      v26 = v2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_46_5();
    }

    *(v24 + 4) = v27;
    *v25 = v28;
    OUTLINED_FUNCTION_40_6();
    _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
    outlined destroy of NetworkConnectionProtocol?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v75 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v75);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in BackgroundConnection.connectionProvider(_:received:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (v4 >> 1 != 0xFFFFFFFF || v6 >= 2)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
      v13 = a3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);

      if (os_log_type_enabled(v14, v15))
      {
        v36 = a3;
        v16 = swift_slowAlloc();
        v35 = v15;
        v17 = swift_slowAlloc();
        *v16 = 138412546;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        *v18 = v5;
        v18[1] = v4;
        v18[2] = v7;
        v18[3] = v6;
        v18[4] = v8;
        outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        *(v16 + 12) = 2112;
        v20 = v36;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v21;
        v17[1] = v21;
        _os_log_impl(&dword_223515000, v14, v35, "Background Connection - Fallback: Callback to Completion with error %@ for provider error (%@)", v16, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v17, -1, -1);
        v22 = v16;
        a3 = v36;
        MEMORY[0x223DE38F0](v22, -1, -1);
      }

      swift_beginAccess();
      outlined init with copy of MessageCenterBrowserProtocol?(v10 + 1096, v40, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      if (v40[3])
      {
        outlined init with copy of RPCOspreyConnectionProtocol(v40, v37);
        outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        v23 = v38;
        v24 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v25 = (*(v24 + 184))(v23, v24);
        __swift_destroy_boxed_opaque_existential_0(v37);
        if (v25)
        {
          v26 = a3;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v40[0] = v30;
            *v29 = 136315138;
            v37[0] = a3;
            v31 = a3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
            v32 = String.init<A>(describing:)();
            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v40);

            *(v29 + 4) = v34;
            _os_log_impl(&dword_223515000, v27, v28, "Background Connection - Provider: Error during request: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x223DE38F0](v30, -1, -1);
            MEMORY[0x223DE38F0](v29, -1, -1);
          }

          BackgroundConnection.didEncounterError(_:)();
        }
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      }

      BackgroundConnection.cancel()();
    }
  }

  return result;
}

void closure #1 in BackgroundConnection.connectionProvider(_:receivedIntermediateError:)(uint64_t a1)
{
  OUTLINED_FUNCTION_90_1(a1);
  OUTLINED_FUNCTION_40_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 1080);
    if (!v8 || v8 != v1)
    {
      goto LABEL_4;
    }

    swift_getObjectType();
    OUTLINED_FUNCTION_126();
    if (v5(v4, v3))
    {
      type metadata accessor for BackgroundConnection();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = 0;
    }

    OUTLINED_FUNCTION_40_1();
    v10 = swift_weakLoadStrong();
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {

        goto LABEL_22;
      }

      swift_unknownObjectRelease();
      if (v11 != v9)
      {
LABEL_13:

LABEL_23:
        swift_unknownObjectRelease();
        return;
      }
    }

    else if (v10)
    {

      swift_unknownObjectRelease();
LABEL_4:

      return;
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v12, static Logger.siriNetwork);
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_6_5();
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_58_3();
      *v16 = 138412290;
      if (v2)
      {
        v18 = v2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = OUTLINED_FUNCTION_46_5();
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      _os_log_impl(&dword_223515000, v14, v15, "Background Connection - Provider: Intermediate Error (%@)", v16, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v21);
      v22 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v22);
    }

    if (*(v7 + 1186) == 1)
    {
      v23 = v2;
      v24 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (OUTLINED_FUNCTION_141())
      {
        OUTLINED_FUNCTION_6_5();
        v25 = swift_slowAlloc();
        v26 = OUTLINED_FUNCTION_58_3();
        *v25 = 138412290;
        if (v2)
        {
          v27 = v2;
          v28 = _swift_stdlib_bridgeErrorToNSError();
          v29 = v28;
        }

        else
        {
          v28 = OUTLINED_FUNCTION_46_5();
        }

        *(v25 + 4) = v28;
        *v26 = v29;
        OUTLINED_FUNCTION_40_6();
        _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v56 = OUTLINED_FUNCTION_7_2();
        MEMORY[0x223DE38F0](v56);
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (!v2)
    {
      v24 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_15_1(v47))
      {
        v48 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_40_2(v48);
        OUTLINED_FUNCTION_34_6(&dword_223515000, v49, v50, "Background Connection - Provider: Intermediate Error nill");
LABEL_40:
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

LABEL_41:

      swift_unknownObjectRelease();

      return;
    }

    v30 = v2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_1(v32))
    {
      OUTLINED_FUNCTION_6_5();
      v33 = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_58_3();
      *v33 = 138412290;
      v35 = v2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      OUTLINED_FUNCTION_37_4();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v42);
      v43 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v43);
    }

    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {

      goto LABEL_13;
    }

    v45 = v44;

    specialized Connection.didEncounterIntermediateError(_:error:)(v46, v2, v45);

LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }
}

void closure #1 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v5 >> 1 == 0xFFFFFFFF && v7 <= 1)
    {
LABEL_21:

      return;
    }

    v53 = v4;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriNetwork);
    outlined copy of NetworkConnectionError?(v6, v5, v8, v7, v9);
    outlined init with copy of NetworkConnectionError(a3, v57);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    outlined consume of NetworkConnectionError?(v6, v5, v8, v7, v9);
    outlined destroy of NetworkConnectionError(a3);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v52 = v15;
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      swift_allocError();
      *v18 = v6;
      v18[1] = v5;
      v18[2] = v8;
      v18[3] = v7;
      v18[4] = v9;
      outlined copy of NetworkConnectionError(v6, v5, v8, v7, v9);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      *(v16 + 12) = 2112;
      swift_allocError();
      v20 = *(a3 + 32);
      v21 = *(a3 + 16);
      *v22 = *a3;
      *(v22 + 16) = v21;
      *(v22 + 32) = v20;
      outlined init with copy of NetworkConnectionError(a3, v57);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      v17[1] = v23;
      _os_log_impl(&dword_223515000, v14, v52, "Background Connection - Fallback: Callback to Completion with error %@ for Read Handler error (%@)", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v17, -1, -1);
      MEMORY[0x223DE38F0](v16, -1, -1);
    }

    swift_beginAccess();
    outlined init with copy of MessageCenterBrowserProtocol?(v11 + 1096, v57, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v58)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(v57, v54);
      outlined destroy of NetworkConnectionProtocol?(v57, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v24 = v55;
      v25 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      LOBYTE(v24) = (*(v25 + 184))(v24, v25);
      __swift_destroy_boxed_opaque_existential_0(v54);
      v26 = v53;
      if (v24)
      {
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_223515000, v27, v28, "Background Connection - Fallback: Read Error - mid request", v29, 2u);
          MEMORY[0x223DE38F0](v29, -1, -1);
        }

LABEL_25:
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v48 = swift_allocError();
        v49 = *(a3 + 32);
        v50 = *(a3 + 16);
        *v51 = *a3;
        *(v51 + 16) = v50;
        *(v51 + 32) = v49;
        outlined init with copy of NetworkConnectionError(a3, v57);
        BackgroundConnection.didEncounterError(_:)();

        return;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v57, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v26 = v53;
    }

    if (*(a3 + 24) >> 60 == 7)
    {
      v30 = v26;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      outlined destroy of NetworkConnectionError(a3);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        v35 = *(a3 + 32);
        v36 = *(a3 + 16);
        *v37 = *a3;
        *(v37 + 16) = v36;
        *(v37 + 32) = v35;
        v38 = v26;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v39;
        *v34 = v39;
        _os_log_impl(&dword_223515000, v31, v32, "Background Connection - Fallback: Read Error - cancel (%@)", v33, 0xCu);
        outlined destroy of NetworkConnectionProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE38F0](v34, -1, -1);
        MEMORY[0x223DE38F0](v33, -1, -1);
      }

      BackgroundConnection.cancel()();
      goto LABEL_21;
    }

    outlined init with copy of NetworkConnectionError(a3, v57);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    outlined destroy of NetworkConnectionError(a3);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      swift_allocError();
      v44 = *(a3 + 32);
      v45 = *(a3 + 16);
      *v46 = *a3;
      *(v46 + 16) = v45;
      *(v46 + 32) = v44;
      outlined init with copy of NetworkConnectionError(a3, v57);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v47;
      *v43 = v47;
      _os_log_impl(&dword_223515000, v40, v41, "Background Connection - Fallback: Read Error - error (%@)", v42, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v43, -1, -1);
      MEMORY[0x223DE38F0](v42, -1, -1);
    }

    goto LABEL_25;
  }
}

void closure #2 in closure #1 in BackgroundConnection.setupReadHandlerOnProvider()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  if (v4 >> 1 == 0xFFFFFFFF && v6 <= 1)
  {
LABEL_23:

    return;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriNetwork);
  outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);

  if (os_log_type_enabled(v14, v15))
  {
    v34 = v15;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    swift_allocError();
    *v18 = v5;
    v18[1] = v4;
    v18[2] = v7;
    v18[3] = v6;
    v18[4] = v8;
    outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    *(v16 + 12) = 2112;
    if (a3)
    {
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v16 + 14) = v21;
    v17[1] = v22;
    _os_log_impl(&dword_223515000, v14, v34, "Background Connection - Fallback: Callback to Completion with error %@ for Read Handler error (%@)", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v17, -1, -1);
    MEMORY[0x223DE38F0](v16, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of MessageCenterBrowserProtocol?(v10 + 1096, v38, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (!v39)
  {
    outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    goto LABEL_20;
  }

  outlined init with copy of RPCOspreyConnectionProtocol(v38, v35);
  outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v23 = v36;
  v24 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v25 = (*(v24 + 184))(v23, v24);
  __swift_destroy_boxed_opaque_existential_0(v35);
  if ((v25 & 1) == 0)
  {
LABEL_20:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_223515000, v31, v32, "Background Connection - Fallback: Read Error - cancel", v33, 2u);
      MEMORY[0x223DE38F0](v33, -1, -1);
    }

    BackgroundConnection.cancel()();
    goto LABEL_23;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_223515000, v26, v27, "Background Connection - Fallback: Read Error - mid request)", v28, 2u);
    MEMORY[0x223DE38F0](v28, -1, -1);
  }

  lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
  v29 = swift_allocError();
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  *v30 = 0;
  *(v30 + 24) = xmmword_2235F0AB0;
  BackgroundConnection.didEncounterError(_:)();
}

Swift::Bool __swiftcall BackgroundConnection.isUsingFlorence()()
{
  if (v0[1136] != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_78_1(v11);
  memcpy(__dst, v0 + 40, sizeof(__dst));
  v1 = v13;
  memcpy(v9, v0 + 456, 0x61uLL);
  v2 = v14;
  v7 = v12;
  v8 = v13;
  v9[97] = v14;
  v10 = v15;
  outlined init with copy of ConnectionConfiguration(v11, &v5);
  outlined destroy of ConnectionConfiguration(__dst);
  return v1 != 1 && v2 == 2;
}

Swift::Bool __swiftcall BackgroundConnection.shouldFallbackQuickly()()
{
  if (!*(v0 + 1080))
  {
    return 0;
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  ObjectType = swift_getObjectType();
  return (*(v1 + 552))(ObjectType, v1) & 1;
}

Swift::Bool __swiftcall BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality()()
{
  (MEMORY[0x28223BE20])();
  if (*(v0 + 1080))
  {
    v1 = *(v0 + 1088);
    v2 = *(v0 + 1080);
    ObjectType = swift_getObjectType();
    v4 = *(v1 + 520);
    swift_unknownObjectRetain();
    v4(ObjectType, v1);
    (*(v1 + 40))(v12, ObjectType, v1);
    OUTLINED_FUNCTION_137(v13);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v13) != 1)
    {
      OUTLINED_FUNCTION_137(v9);
      OUTLINED_FUNCTION_137(v7);
      OUTLINED_FUNCTION_124_0();
      OUTLINED_FUNCTION_137(v11);
      outlined init with copy of ConnectionSnapshotReport(v11, v8);
      outlined destroy of ConnectionMetrics(v10);
      v5 = ConnectionSnapshotReport.isPoorLinkQuality.getter();
      swift_unknownObjectRelease();
      outlined destroy of NetworkConnectionProtocol?(v9, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      return v5 & 1;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_124_0();
    outlined destroy of ConnectionMetrics(v10);
  }

  v5 = 0;
  return v5 & 1;
}

void BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 1080);
  if (v3)
  {
    v4 = *(v1 + 1088);
    v5 = *(v1 + 1080);
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v2;
    v7[5] = v0;
    v8 = *(v4 + 528);
    swift_unknownObjectRetain_n();
    v9 = OUTLINED_FUNCTION_32();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v9);
    v8(partial apply for closure #1 in BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:), v7, ObjectType, v4);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47();
  }

  else
  {
    if (v2)
    {
      v2(0);
    }

    OUTLINED_FUNCTION_47();
  }
}

uint64_t closure #1 in BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 40))(v13, ObjectType, v4);
  memcpy(v14, &v13[71], sizeof(v14));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v14) != 1)
  {
    memcpy(v10, &v13[71], sizeof(v10));
    memcpy(v8, &v13[71], sizeof(v8));
    memcpy(__dst, v13, 0x599uLL);
    memcpy(v12, &v13[71], sizeof(v12));
    outlined init with copy of ConnectionSnapshotReport(v12, v9);
    outlined destroy of ConnectionMetrics(__dst);
    v7 = ConnectionSnapshotReport.isPoorLinkQuality.getter();
    result = outlined destroy of NetworkConnectionProtocol?(v10, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
    if (!v2)
    {
      return result;
    }

    return v2(v7 & 1);
  }

  memcpy(__dst, v13, 0x599uLL);
  result = outlined destroy of ConnectionMetrics(__dst);
  v7 = 0;
  if (v2)
  {
    return v2(v7 & 1);
  }

  return result;
}

uint64_t BackgroundConnection.fallbackToNextConnectionMethod(error:)(void *a1)
{
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  swift_weakInit();

  v2 = a1;
  OUTLINED_FUNCTION_14_3();
  specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();
}

void closure #1 in BackgroundConnection.fallbackToNextConnectionMethod(error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v4 >> 1 != 0xFFFFFFFF || v6 > 1)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.siriNetwork);
      outlined copy of NetworkConnectionError?(v5, v4, v7, v6, v8);
      v11 = a3;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      outlined consume of NetworkConnectionError?(v5, v4, v7, v6, v8);

      if (os_log_type_enabled(v12, v13))
      {
        v24 = v13;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412546;
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        swift_allocError();
        *v16 = v5;
        v16[1] = v4;
        v16[2] = v7;
        v16[3] = v6;
        v16[4] = v8;
        outlined copy of NetworkConnectionError(v5, v4, v7, v6, v8);
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        *(v14 + 12) = 2112;
        if (a3)
        {
          v18 = a3;
          v19 = _swift_stdlib_bridgeErrorToNSError();
          v20 = v19;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        *(v14 + 14) = v19;
        v15[1] = v20;
        _os_log_impl(&dword_223515000, v12, v24, "Background Connection - Fallback: Callback to Completion with error %@ for error (%@)", v14, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v15, -1, -1);
        MEMORY[0x223DE38F0](v14, -1, -1);
      }

      v21 = a3;
      if (!a3)
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v21 = swift_allocError();
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        *v22 = 9;
        *(v22 + 24) = xmmword_2235F01E0;
      }

      v23 = a3;
      BackgroundConnection.didEncounterError(_:)();
    }

    else
    {
    }
  }
}

uint64_t BackgroundConnection.didReceiveObject(_:)(uint64_t a1, unint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OUTLINED_FUNCTION_72_0();
    specialized Connection.didReceiveObject(_:object:)(v6, a1, a2, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int BackgroundConnection.hashValue.getter()
{
  OUTLINED_FUNCTION_96_1();
  specialized BackgroundConnectionProtocol.hash(into:)(v1);
  return Hasher._finalize()();
}

_BYTE *storeEnumTagSinglePayload for ConnectionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionState and conformance ConnectionState()
{
  result = lazy protocol witness table cache variable for type ConnectionState and conformance ConnectionState;
  if (!lazy protocol witness table cache variable for type ConnectionState and conformance ConnectionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionState and conformance ConnectionState);
  }

  return result;
}

uint64_t protocol witness for BackgroundConnectionProtocol.connectionConfiguration.getter in conformance BackgroundConnection@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_78_1(v5);
  memcpy(a1, (v1 + 40), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(v5, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BackgroundConnection(void *a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return BackgroundConnectionProtocol.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundConnection(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  WitnessTable = swift_getWitnessTable();
  BackgroundConnectionProtocol.hash(into:)(v7, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BackgroundConnection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static BackgroundConnectionProtocol.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for BackgroundConnection(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, a2, type metadata accessor for BackgroundConnection);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2235EFB30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2);
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v6 = *(v5 + 32);
  OUTLINED_FUNCTION_18_8();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(v5 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      outlined init with copy of AnyHashable(a2, v19);
      v18 = *v3;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v10, isUniquelyReferenced_nonNull_native);
      *v3 = v18;
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      *(a1 + 32) = *(a2 + 32);
      return v11 == 0;
    }

    outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v10, v19);
    v12 = MEMORY[0x223DE26B0](v19, a2);
    outlined destroy of AnyHashable(v19);
    if (v12)
    {
      break;
    }

    v7 = v10 + 1;
  }

  outlined destroy of AnyHashable(a2);
  outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v10, a1);
  return v11 == 0;
}

void specialized _NativeSet.resize(capacity:)()
{
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_15_10(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMd, &_ss11_SetStorageCy7Network12NWConnectionCAESH04SiriC0yHCg_GMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v8)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_66_3();
    return;
  }

  v26 = v0;
  v9 = 0;
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_45_3();
  if (!v0)
  {
LABEL_4:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= v6)
      {
        break;
      }

      ++v11;
      if (v3[v9])
      {
        OUTLINED_FUNCTION_49_0();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v22 >= 64)
    {
      v24 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v24, v25, v3);
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v3 = v23;
    }

    v0 = v26;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_107_1();
LABEL_9:
    OUTLINED_FUNCTION_97_1(v10);
    v14 = NWConnection.identifier.getter();
    MEMORY[0x223DE29A0](v14);
    v15 = Hasher._finalize()();
    OUTLINED_FUNCTION_53_5(v15);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_19:
    OUTLINED_FUNCTION_4_10();
    *(v5 + v19) |= v20;
    *(*(v2 + 48) + 8 * v21) = v4;
    OUTLINED_FUNCTION_26_5();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_11();
  while (1)
  {
    OUTLINED_FUNCTION_63_3();
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_84_1();
    if (v16)
    {
      v18 = 0;
    }

    if (*(v5 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

{
  OUTLINED_FUNCTION_46();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_53_1();
  v4 = type metadata accessor for MessageCenterActorWrapper(v3);
  v5 = OUTLINED_FUNCTION_15(v4);
  v48 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v11 = v10 - v9;
  v12 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v13 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v14)
  {
LABEL_27:

    *v2 = v1;
    OUTLINED_FUNCTION_47();
    return;
  }

  v46 = v2;
  v47 = v12;
  v15 = 0;
  v17 = (v12 + 56);
  v16 = *(v12 + 56);
  v18 = *(v12 + 32);
  OUTLINED_FUNCTION_8_20();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v24 = v1 + 56;
  if ((v20 & v19) == 0)
  {
LABEL_6:
    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v15 >= v23)
      {
        break;
      }

      ++v25;
      if (v17[v15])
      {
        OUTLINED_FUNCTION_49_0();
        v21 = v27 & v26;
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v42 >= 64)
    {
      v44 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v44, v45, v17);
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v17 = v43;
    }

    v2 = v46;
    *(v12 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_42_2();
LABEL_11:
    v28 = *(v12 + 48);
    v29 = *(v48 + 72);
    OUTLINED_FUNCTION_1_30();
    _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v30, v11);
    v31 = *(v1 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_32_5();
    lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, v32);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    v33 = *(v1 + 32);
    OUTLINED_FUNCTION_21_8();
    v35 = *(v24 + 8 * v34);
    OUTLINED_FUNCTION_116_1();
    if (v36)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_21:
    *(v24 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v40 = *(v1 + 48);
    OUTLINED_FUNCTION_1_30();
    _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v11, v41);
    OUTLINED_FUNCTION_26_5();
    v12 = v47;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_11();
  while (1)
  {
    OUTLINED_FUNCTION_63_3();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_84_1();
    if (v36)
    {
      v39 = 0;
    }

    if (*(v24 + 8 * v39) != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMd, &_ss11_SetStorageCy11SiriNetwork16ConnectionMethodOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x223DE2980](v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 120 * (v13 | (v7 << 6)));
      memcpy(__dst, v16, sizeof(__dst));
      v17 = *(v6 + 40);
      memcpy(v21, v16, sizeof(v21));
      Hasher.init(_seed:)();
      ConnectionPolicyRoute.hash(into:)();
      Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(v6 + 56 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = memcpy((*(v6 + 48) + 120 * v19), __dst, 0x72uLL);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v20 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v20;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v29 = *v17;
    v30 = *(v17 + 16);
    v31 = *(v17 + 32);
    result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v6 + 48) + 40 * v21;
    *v26 = v29;
    *(v26 + 16) = v30;
    *(v26 + 32) = v31;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_1();
  a33 = v39;
  a34 = v40;
  OUTLINED_FUNCTION_15_10(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v42)
  {
LABEL_28:

    *v34 = v36;
    OUTLINED_FUNCTION_60_4();
    return;
  }

  v43 = 0;
  v45 = (v35 + 56);
  v44 = *(v35 + 56);
  v46 = *(v35 + 32);
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_93_1();
  if (!v38)
  {
LABEL_4:
    v49 = v43;
    while (1)
    {
      v43 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v43 >= v37)
      {
        break;
      }

      ++v49;
      if (v45[v43])
      {
        OUTLINED_FUNCTION_49_0();
        v38 = v51 & v50;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v70 >= 64)
    {
      v72 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v72, v73, v35 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v45 = v71;
    }

    *(v35 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_119_0();
LABEL_9:
    v52 = (*(v35 + 48) + (v47 | (v43 << 6)) * v48);
    v53 = *(v52 + 4);
    v54 = v52[1];
    a19 = *v52;
    a20 = v54;
    a21 = v53;
    v55 = *(v36 + 40);
    Hasher.init(_seed:)();
    v56 = *(&a20 + 1);
    v57 = a21;
    __swift_project_boxed_opaque_existential_1(&a19, *(&a20 + 1));
    OUTLINED_FUNCTION_64_3(v57);
    v58(v56, v57);
    if (v59)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    v60 = *(v36 + 32);
    OUTLINED_FUNCTION_21_8();
    v62 = v34[v61];
    OUTLINED_FUNCTION_116_1();
    if (v63)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_22:
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_67_2(v66);
    v67 = a19;
    v68 = a20;
    *(v69 + 32) = a21;
    *v69 = v67;
    *(v69 + 16) = v68;
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
    if (v63)
    {
      if (v64)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_84_1();
    if (v63)
    {
      v65 = 0;
    }

    if (v34[v65] != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_67_1();
  a29 = v37;
  a30 = v38;
  OUTLINED_FUNCTION_15_10(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMd, &_ss11_SetStorageCy11SiriNetwork20BackgroundConnectionCGMR);
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_83_1();
  if (!v40)
  {
LABEL_25:

    *v30 = v32;
    OUTLINED_FUNCTION_66_3();
    return;
  }

  v58 = v30;
  v41 = 0;
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_45_3();
  if (!v30)
  {
LABEL_4:
    v43 = v41;
    while (1)
    {
      v41 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v41 >= v36)
      {
        break;
      }

      ++v43;
      if (v33[v41])
      {
        OUTLINED_FUNCTION_49_0();
        v30 = (v45 & v44);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_10();
    if (v54 >= 64)
    {
      v56 = OUTLINED_FUNCTION_43_5();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v56, v57, v33);
    }

    else
    {
      OUTLINED_FUNCTION_18_8();
      *v33 = v55;
    }

    v30 = v58;
    *(v31 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_107_1();
LABEL_9:
    OUTLINED_FUNCTION_97_1(v42);
    specialized BackgroundConnectionProtocol.hash(into:)(&a10);
    v46 = Hasher._finalize()();
    OUTLINED_FUNCTION_53_5(v46);
    if (v47)
    {
      break;
    }

    OUTLINED_FUNCTION_8_8();
LABEL_19:
    OUTLINED_FUNCTION_4_10();
    *(v35 + v51) |= v52;
    *(*(v32 + 48) + 8 * v53) = v34;
    OUTLINED_FUNCTION_26_5();
    if (!v30)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_11();
  while (1)
  {
    OUTLINED_FUNCTION_63_3();
    if (v47)
    {
      if (v49)
      {
        break;
      }
    }

    if (v48 == v50)
    {
      v48 = 0;
    }

    if (*(v35 + 8 * v48) != -1)
    {
      OUTLINED_FUNCTION_6_12();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x223DE2980](v5);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void specialized _NativeSet.copy()()
{
  specialized _NativeSet.copy()();
}

{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss11_SetStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  v4 = OUTLINED_FUNCTION_99_0();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_10_11();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_39_2();
LABEL_15:
        v20 = *(v1 + 48);
        v21 = 120 * (v16 | (v10 << 6));
        memcpy(__dst, (v20 + v21), 0x72uLL);
        memmove((*(v4 + 48) + v21), (v20 + v21), 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(__dst, &v22);
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_49_0();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss11_SetStorageCy11SiriNetwork21MessageCenterEndpointVGMR, outlined init with copy of MessageCenterEndpoint);
}

{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  v3 = OUTLINED_FUNCTION_15(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss11_SetStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
  v11 = *v0;
  v12 = static _SetStorage.copy(original:)();
  if (*(v11 + 16))
  {
    v13 = OUTLINED_FUNCTION_13_10();
    v15 = (v14 + 63) >> 6;
    if (v12 != v11 || v13 >= v11 + 56 + 8 * v15)
    {
      memmove(v13, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v12 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = *(v11 + 56);
    OUTLINED_FUNCTION_14_6();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_15:
        v29 = *(v5 + 72) * (v25 | (v17 << 6));
        outlined init with copy of MessageCenterActorWrapper(*(v11 + 48) + v29, v10);
        v30 = *(v12 + 48);
        OUTLINED_FUNCTION_1_30();
        _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v10, v31 + v29);
      }

      while (v22);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v24)
      {
        goto LABEL_17;
      }

      ++v26;
      if (*(v11 + 56 + 8 * v17))
      {
        OUTLINED_FUNCTION_49_0();
        v22 = v28 & v27;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v12;
    OUTLINED_FUNCTION_47();
  }
}

{
  OUTLINED_FUNCTION_133();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMd, &_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMR);
  v4 = OUTLINED_FUNCTION_99_0();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_10_11();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_42_2();
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = (*(v1 + 48) + 32 * v20);
        v22 = v21[1];
        v23 = v21[2];
        v24 = v21[3];
        v25 = (*(v4 + 48) + 32 * v20);
        *v25 = *v21;
        v25[1] = v22;
        v25[2] = v23;
        v25[3] = v24;
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_49_0();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
    OUTLINED_FUNCTION_106_0();
  }
}

{
  specialized _NativeSet.copy()();
}

{
  OUTLINED_FUNCTION_133();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v6 = OUTLINED_FUNCTION_99_0();
  if (*(v1 + 16))
  {
    v7 = OUTLINED_FUNCTION_11_11();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v2, 8 * v8);
    }

    v12 = 0;
    OUTLINED_FUNCTION_10_11();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_39_2();
LABEL_15:
        *(*(v6 + 48) + 8 * (v18 | (v12 << 6))) = *(*(v1 + 48) + 8 * (v18 | (v12 << 6)));
      }

      while (v15);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      ++v19;
      if (*(v2 + v12))
      {
        OUTLINED_FUNCTION_49_0();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v6;
    OUTLINED_FUNCTION_106_0();
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR, outlined init with copy of AnyHashable);
}