__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Element(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Element(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _HashTable.Header(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _HashTable.Header(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSO_s16IndexingIteratorVySayAA6SGNodeCGGSaySO_AMtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = (a1 + 32 + 24 * v5);
    v7 = *v6;
    v8 = v6[2];
    v9 = (v16 + 32);
    v15 = v6[1];
    v10 = *(v16 + 16);
    if (v10)
    {
      break;
    }

LABEL_6:

    specialized OrderedSet._appendNew(_:in:)(v7, 0);
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v12 + 1;
    v13 = v4 + 16 * v12;
    *(v13 + 32) = v15;
    *(v13 + 40) = v8;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (*v9 != v7)
  {
    ++v9;
    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So11MTLFunction_pSaySS_SoAH_ptGTt0g5Tf4g_n(uint64_t a1)
{
  v15 = MEMORY[0x277D84F90];
  v14 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo11MTLFunction_p_Tt0g5(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v6 = (v4 + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *(v15 + 16);
    if (v10)
    {
      break;
    }

LABEL_12:

    swift_unknownObjectRetain();
    ++v3;
    specialized OrderedSet._appendNew(_:in:)(v8, v7, 0);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v5 = *(v14 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_unknownObjectRelease();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v11 = (v15 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v8 && *v11 == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_12;
    }
  }

  result = swift_unknownObjectRetain();
  __break(1u);
  __break(1u);
  return result;
}

id _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_AA6SGNodeCSaySS_AItGTt0g5Tf4g_n(uint64_t a1)
{
  v17 = MEMORY[0x277D84F90];
  v16 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC11ShaderGraph6SGNodeC_Tt0g5(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v7 = (v4 + 24 * v3);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = *(v17 + 16);
    if (v11)
    {
      break;
    }

LABEL_12:

    v14 = v10;
    ++v3;
    specialized OrderedSet._appendNew(_:in:)(v9, v8, 0);
    v5 = v10;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v6 = *(v16 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v12 = (v17 + 40);
  while (1)
  {
    v13 = *(v12 - 1) == v9 && *v12 == v8;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 += 2;
    if (!--v11)
    {
      goto LABEL_12;
    }
  }

  result = v10;
  __break(1u);
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA14FunctionNodeIDV_So020MTLFunctionStitchingK0_pSayAI_SoAJ_ptGTt0g5Tf4g_n(uint64_t a1)
{
  v14 = MEMORY[0x277D84F90];
  v13 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo24MTLFunctionStitchingNode_p_Tt0g5(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA0aB4NodeV2IDVG_Tt2g5);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = (v14 + 32);
    v11 = *(v14 + 16);
    if (v11)
    {
      break;
    }

LABEL_3:
    ++v4;
    swift_unknownObjectRetain();
    specialized OrderedSet._appendNew(_:in:)(v9, 0);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v6 = *(v13 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    result = swift_unknownObjectRelease();
    if (v4 == v2)
    {
      return 0;
    }
  }

  while (1)
  {
    v12 = *v10++;
    if (v12 == v9)
    {
      break;
    }

    if (!--v11)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type APIError and conformance APIError()
{
  result = lazy protocol witness table cache variable for type APIError and conformance APIError;
  if (!lazy protocol witness table cache variable for type APIError and conformance APIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIError and conformance APIError);
  }

  return result;
}

double partial apply for specialized closure #1 in Graph.Node.inputs.getter@<D0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  return specialized closure #1 in Graph.Node.inputs.getter(a1, *(v2 + 16), a2);
}

{
  specialized closure #1 in Graph.Node.inputs.getter(*a1, **(v2 + 16), *(*(v2 + 16) + 16), &v7);
  if (!v3)
  {
    v6 = v8[0];
    *a2 = v7;
    a2[1] = v6;
    result = *(v8 + 9);
    *(a2 + 25) = *(v8 + 9);
  }

  return result;
}

uint64_t outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_265DB7410()
{
  outlined consume of SGDataTypeStorage(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 15);
}

uint64_t *partial apply for specialized closure #2 in Graph.Adjacent.init(_:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *a2 = **(v2 + 16);
  a2[1] = v3;
  return result;
}

uint64_t sub_265DB7528()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265DB75D4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  if ((v0[7] - 1) >= 3)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t OrderedSet.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a5;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ContiguousArray.count.getter();
  result = MEMORY[0x266772770](v11);
  v13 = *(a3 + 16);
  if (v13)
  {
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = a3 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v10, v17, a4);
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v14 - 8))(v10, a4);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  return result;
}

Swift::Int OrderedSet.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  OrderedSet.hash(into:)(v9, v7, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrderedSet<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  OrderedSet.hash(into:)(v6, v4, *(v2 + 8), *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v29 = v3 + 72;
  v30 = v1;
  v31 = v9;
  v32 = v3 + 64;
  v33 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 16 * v7);
    v17 = *v15;
    v16 = v15[1];
    type metadata accessor for XMLParserDelegate.StringNode();
    v18 = swift_allocObject();
    v18[3] = 0;
    swift_unknownObjectWeakInit();
    v18[4] = v13;
    v18[5] = v14;
    v18[6] = MEMORY[0x277D84F90];
    v18[7] = v17;
    v18[8] = v16;
    v18[9] = 0;
    v20 = *(v35 + 16);
    v19 = *(v35 + 24);

    if (v20 >= v19 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
    }

    *(v35 + 16) = v20 + 1;
    v21 = v35 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = &protocol witness table for XMLParserDelegate.StringNode;
    v3 = v33;
    v10 = 1 << *(v33 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v32;
    v22 = *(v32 + 8 * v11);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v31;
    if (v31 != *(v33 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (v29 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = outlined consume of [String : String].Index._Variant(v7, v31, 0);
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v7, v31, 0);
    }

LABEL_4:
    v8 = v34 + 1;
    v7 = v10;
    if (v34 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t XMLDocument.rootElement()(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData_];

  v7 = [objc_allocWithZone(type metadata accessor for XMLParserDelegate()) init];
  [v6 setDelegate_];
  [v6 parse];
  v8 = &v7[OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement];
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  if (!v9)
  {
    v15 = v6;
    v6 = v7;
LABEL_8:

    return v9;
  }

  if ((a3 & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v13 = result;
    v14 = *(result + 24);
    swift_unknownObjectRetain_n();
    v14(ObjectType, v13);
    swift_unknownObjectRelease();
LABEL_7:
    v15 = v7;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id XMLParserDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *protocol witness for SetAlgebra.remove(_:) in conformance XMLDocument.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance XMLDocument.Options@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance XMLDocument.Options@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t XMLNodePrivate.detach()(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 8) + 8))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(ObjectType, v7);
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = 32;
        while (*(v9 + v12) != v2)
        {
          ++v11;
          v12 += 16;
          if (v10 == v11)
          {
            goto LABEL_7;
          }
        }

        v13 = swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = (*(result + 40))(v16, v13, result);
        if (*v15)
        {
          specialized Array.remove(at:)(v11);
          swift_unknownObjectRelease();
        }

        v14(v16, 0);
      }

      else
      {
LABEL_7:
      }
    }

    (*(a2 + 16))(0, 0, a1, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall XMLNode.dump(indentLevel:)(Swift::Int indentLevel)
{
  v61 = v1;
  v62 = v2;
  v5._countAndFlagsBits = 538976288;
  v5._object = 0xE400000000000000;
  v60 = indentLevel;
  v6 = String.init(repeating:count:)(v5, indentLevel);
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  v10 = 0;
  v11 = 0;
  if (!v9 || !v3)
  {
    goto LABEL_22;
  }

  v12 = v9;
  ObjectType = swift_getObjectType();
  v14 = (*(*(v12 + 8) + 40))(ObjectType);
  if (!v14)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v10 = BidirectionalCollection<>.joined(separator:)();
    v11 = v33;

LABEL_22:
    v34 = (*(v62 + 24))(v61);
    if (v34)
    {
      v35 = v34;
      v36 = *(v34 + 16);
      if (v36)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_265F1F670;
        v64 = *(v62 + 16);
        v38 = v64(v61);
        if (v39)
        {
          v40 = v39;
        }

        else
        {
          v38 = 0x3E6C696E3CLL;
          v40 = 0xE500000000000000;
        }

        MEMORY[0x266771550](v38, v40);

        MEMORY[0x266771550](32, 0xE100000000000000);
        if (v11)
        {
          v41 = v10;
        }

        else
        {
          v41 = 0;
        }

        if (v11)
        {
          v42 = v11;
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        MEMORY[0x266771550](v41, v42);

        MEMORY[0x266771550](62, 0xE100000000000000);
        v59 = countAndFlagsBits;

        MEMORY[0x266771550](60, 0xE100000000000000);

        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 32) = countAndFlagsBits;
        *(v37 + 40) = object;
        print(_:separator:terminator:)();

        v43 = 0;
        v44 = __OFADD__(v60, 1);
        v45 = (v35 + 40);
        do
        {
          if (v43 >= *(v35 + 16))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          if (v44)
          {
            goto LABEL_57;
          }

          ++v43;
          v47 = *(v45 - 1);
          v46 = *v45;
          swift_getObjectType();
          swift_unknownObjectRetain();
          XMLNode.dump(indentLevel:)(v60 + 1);
          swift_unknownObjectRelease();
          v45 += 2;
        }

        while (v36 != v43);

        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_265F1F670;
        v49 = (v64)(v61, v62);
        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v49 = 0x3E6C696E3CLL;
          v51 = 0xE500000000000000;
        }

        MEMORY[0x266771550](v49, v51);

        MEMORY[0x266771550](62, 0xE100000000000000);
        v52 = 12092;
        v53 = 0xE200000000000000;
        v67 = v59;
        goto LABEL_55;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_265F1F670;
    v54 = (*(v62 + 16))(v61);
    if (v55)
    {
      v56 = v55;
    }

    else
    {
      v54 = 0x3E6C696E3CLL;
      v56 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v54, v56);

    MEMORY[0x266771550](32, 0xE100000000000000);
    if (v11)
    {
      v57 = v10;
    }

    else
    {
      v57 = 0;
    }

    if (v11)
    {
      v58 = v11;
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    MEMORY[0x266771550](v57, v58);

    MEMORY[0x266771550](4075296, 0xE300000000000000);
    v52 = 60;
    v53 = 0xE100000000000000;
    v67 = countAndFlagsBits;
LABEL_55:

    MEMORY[0x266771550](v52, v53);

    *(v48 + 56) = MEMORY[0x277D837D0];
    *(v48 + 32) = v67;
    *(v48 + 40) = object;
    print(_:separator:terminator:)();

    return;
  }

  v66 = MEMORY[0x277D84F90];
  v16 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v17 = v16;
  v18 = 0;
  v19 = (v16 + 40);
  v63 = v16;
  v65 = v15;
  while (v18 < *(v17 + 16))
  {
    v21 = *(v19 - 1);
    v20 = *v19;
    v22 = swift_getObjectType();
    v23 = (*(v20 + 16))(v22, v20);
    if (!v24)
    {
      v23 = 0x3E6C696E3CLL;
    }

    v25 = 0xE500000000000000;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v23, v26);

    MEMORY[0x266771550](61, 0xE100000000000000);
    v27 = (*(v20 + 32))(v22, v20);
    if (v28)
    {
      MEMORY[0x266771550](v27);
      MEMORY[0x266771550](34, 0xE100000000000000);

      v29 = 34;
      v25 = 0xE100000000000000;
    }

    else
    {
      v29 = 0x3E6C696E3CLL;
    }

    MEMORY[0x266771550](v29, v25);

    v31 = *(v66 + 16);
    v30 = *(v66 + 24);
    if (v31 >= v30 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
    }

    ++v18;
    *(v66 + 16) = v31 + 1;
    v32 = v66 + 16 * v31;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0xE000000000000000;
    v19 += 2;
    v17 = v63;
    if (v65 == v18)
    {

      countAndFlagsBits = v6._countAndFlagsBits;
      object = v6._object;
      goto LABEL_21;
    }
  }

LABEL_58:
  __break(1u);
}

uint64_t XMLElementPrivate.replaceIncludeStatements()(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a2 + 8) + 8) + 24))();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = v8 + 1;
        v10 = *(v6 + 32 + 16 * v8);
        swift_unknownObjectRetain();
        closure #1 in XMLElementPrivate.replaceIncludeStatements()(&v10, v2, a1, a2);
        result = swift_unknownObjectRelease();
        v8 = v9;
        if (v7 == v9)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }

  return result;
}

uint64_t closure #1 in XMLElementPrivate.replaceIncludeStatements()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v7 + 56))(ObjectType, v7);
  v9 = (*(v7 + 16))(ObjectType, v7);
  if (!v10)
  {
    return (*(*(a4 + 8) + 24))(v6, v7, a3);
  }

  if (v9 == 0x756C636E693A6978 && v10 == 0xEA00000000006564)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return (*(*(a4 + 8) + 24))(v6, v7, a3);
    }
  }

  v13 = createDoc(for:)(v6, v7);
  if (v15 != 2)
  {
    v16 = v15;
    v17 = v13;
    v18 = v14;
    v19 = XMLDocument.rootElement()(v13, v14, v15 & 1);
    v26 = v20;
    outlined consume of XMLDocument?(v17, v18, v16);
    if (v19)
    {
      v21 = *(v26 + 8);
      v22 = *(a4 + 8);
      v23 = *(v22 + 24);
      v24 = swift_unknownObjectRetain();
      v23(v24, v21, a3, v22);
      return swift_unknownObjectRelease_n();
    }
  }

  return (*(*(a4 + 8) + 24))(v6, v7, a3);
}

uint64_t createDoc(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v31[-v14];
  ObjectType = swift_getObjectType();
  result = (*(a2 + 16))(ObjectType, a2);
  if (!v18)
  {
    goto LABEL_14;
  }

  if (result != 0x756C636E693A6978 || v18 != 0xEA00000000006564)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_6:
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  result = 0;
  if (v20)
  {
    if (a1)
    {
      v21 = swift_getObjectType();
      result = (*(v20 + 16))(1717924456, 0xE400000000000000, v21, v20);
      if (result)
      {
        v23 = v22;
        v24 = swift_getObjectType();
        (*(v23 + 32))(v24, v23);
        v26 = v25;
        swift_unknownObjectRelease();
        if (v26)
        {
          v27 = [objc_opt_self() defaultManager];
          v28 = [v27 currentDirectoryPath];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          URL.init(fileURLWithPath:)();

          (*(v9 + 16))(v7, v15, v8);
          (*(v9 + 56))(v7, 0, 1, v8);
          URL.init(fileURLWithPath:relativeTo:)();

          outlined destroy of URL?(v7);
          v29 = Data.init(contentsOf:options:)();
          v30 = *(v9 + 8);
          v30(v13, v8);
          v30(v15, v8);
          return v29;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t XMLParserDelegate.rootElement.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t XMLParserDelegate.rootElement.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void *XMLParserDelegate.Element.__allocating_init(name:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[6] = 0;
  v6[7] = 0;
  v6[4] = a1;
  v6[5] = a2;
  if (a3)
  {
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v6[7] = v7;
  return v6;
}

uint64_t XMLParserDelegate.beginElement(_:)(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 112))(a1);
  v5 = OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement;
  v6 = *(v2 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement);
  if (!result)
  {
    if (!v6)
    {

      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (!v6)
  {
LABEL_11:

    result = swift_unknownObjectRelease();
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  swift_unknownObjectRelease();
  if (v7 != v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v2 + v5);
LABEL_7:
  *(v2 + v5) = a1;
}

Swift::Void __swiftcall XMLParserDelegate.endElement()()
{
  v1 = OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement;
  v2 = *(v0 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v0;
  v4 = *(*v2 + 112);
  v5 = *(v0 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement);

  v7 = v4(v6);

  if (!v7)
  {
    goto LABEL_5;
  }

  type metadata accessor for XMLParserDelegate.Element();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
  }

  v9 = *(v3 + v1);
  *(v3 + v1) = v8;
}

uint64_t (*XMLParserDelegate.Element.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return XMLParserDelegate.Element.parent.modify;
}

uint64_t XMLParserDelegate.Element.attributes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t XMLParserDelegate.Element.attributes.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *XMLParserDelegate.Element.init(name:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = 0;
  v3[7] = 0;
  v3[4] = a1;
  v3[5] = a2;
  if (a3)
  {
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = v3[7];
  v3[7] = v7;

  return v3;
}

void *XMLParserDelegate.StringNode.__allocating_init(name:stringValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[3] = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = v9;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = 0;
  return v8;
}

uint64_t XMLParserDelegate.Element.attribute(forName:)(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 168))();
  if (!result)
  {
    return 0;
  }

  v6 = result;
  v17 = *(result + 16);
  if (!v17)
  {
LABEL_13:

    return 0;
  }

  v7 = 0;
  v8 = (result + 40);
  while (v7 < *(v6 + 16))
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    swift_unknownObjectRetain();
    v13 = v12(ObjectType, v10);
    if (v14)
    {
      if (v13 == a1 && v14 == a2)
      {

LABEL_16:

        return v9;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_16;
      }
    }

    ++v7;
    result = swift_unknownObjectRelease();
    v8 += 2;
    if (v17 == v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t XMLParserDelegate.Element.addChild(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2))
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    v7 = (*(*v2 + 136))();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7XMLNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7XMLNode_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    swift_unknownObjectRetain();
    specialized Array.append<A>(contentsOf:)(inited);
    (*(*v3 + 144))(v8);
    type metadata accessor for XMLParserDelegate.Element();
    v10 = *(*swift_dynamicCastClassUnconditional() + 120);
    v11 = swift_unknownObjectRetain();
    return v10(v11, &protocol witness table for XMLParserDelegate.Element);
  }

  return result;
}

uint64_t XMLParserDelegate.Element.nodes(forXPath:)(unint64_t a1, unint64_t a2)
{
  v5 = (*(*v2 + 136))();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = 0xE900000000000066;
  v89 = v5;
  if ((a1 != 0x656465646F6E2F2ELL || a2 != 0xE900000000000066) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x72706D6F65672F2ELL && a2 == 0xED0000666564706FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v19 = *(v6 + 16);
      if (!v19)
      {
        goto LABEL_142;
      }

      v20 = 0;
      a1 = 0xEB00000000666564;
      v21 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
LABEL_30:
      v80 = v10;
      a2 = v20;
      while (1)
      {
        if (a2 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_119;
        }

        v83 = *(v21 + 16 * a2);
        ObjectType = swift_getObjectType();
        v23 = *(*(&v83 + 1) + 16);
        swift_unknownObjectRetain();
        v24 = v23(ObjectType, *(&v83 + 1));
        if (v25)
        {
          if (v24 == 0x706F72706D6F6567 && v25 == 0xEB00000000666564)
          {

LABEL_41:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
            }

            v29 = *(v10 + 16);
            v28 = *(v10 + 24);
            if (v29 >= v28 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
            }

            v20 = a2 + 1;
            *(v10 + 16) = v29 + 1;
            *(v10 + 16 * v29 + 32) = v83;
            v6 = v89;
            if (v19 - 1 == a2)
            {
              goto LABEL_143;
            }

            goto LABEL_30;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_41;
          }
        }

        ++a2;
        swift_unknownObjectRelease();
        v6 = v89;
        if (v19 == a2)
        {
          goto LABEL_141;
        }
      }
    }

    if (a1 == 0x7475706E692F2ELL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v30 = *(v6 + 16);
      if (!v30)
      {
        goto LABEL_142;
      }

      v31 = 0;
      a1 = 0x7475706E69;
      v32 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
LABEL_52:
      v80 = v10;
      a2 = v31;
      while (1)
      {
        if (a2 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_146;
        }

        v84 = *(v32 + 16 * a2);
        v33 = swift_getObjectType();
        v34 = *(*(&v84 + 1) + 16);
        swift_unknownObjectRetain();
        v35 = v34(v33, *(&v84 + 1));
        if (v36)
        {
          if (v35 == 0x7475706E69 && v36 == 0xE500000000000000)
          {

LABEL_63:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
            }

            v40 = *(v10 + 16);
            v39 = *(v10 + 24);
            if (v40 >= v39 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
            }

            v31 = a2 + 1;
            *(v10 + 16) = v40 + 1;
            *(v10 + 16 * v40 + 32) = v84;
            v6 = v89;
            if (v30 - 1 == a2)
            {
              goto LABEL_143;
            }

            goto LABEL_52;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_63;
          }
        }

        ++a2;
        swift_unknownObjectRelease();
        v6 = v89;
        if (v30 == a2)
        {
          goto LABEL_141;
        }
      }
    }

    if (a1 == 0x74757074756F2F2ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v41 = *(v6 + 16);
      if (!v41)
      {
        goto LABEL_142;
      }

      v42 = 0;
      a1 = 0x74757074756FLL;
      v43 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
LABEL_74:
      v80 = v10;
      a2 = v42;
      while (1)
      {
        if (a2 >= *(v6 + 16))
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v85 = *(v43 + 16 * a2);
        v44 = swift_getObjectType();
        v45 = *(*(&v85 + 1) + 16);
        swift_unknownObjectRetain();
        v46 = v45(v44, *(&v85 + 1));
        if (v47)
        {
          if (v46 == 0x74757074756FLL && v47 == 0xE600000000000000)
          {

LABEL_85:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
            }

            v51 = *(v10 + 16);
            v50 = *(v10 + 24);
            if (v51 >= v50 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
            }

            v42 = a2 + 1;
            *(v10 + 16) = v51 + 1;
            *(v10 + 16 * v51 + 32) = v85;
            v6 = v89;
            if (v41 - 1 == a2)
            {
              goto LABEL_143;
            }

            goto LABEL_74;
          }

          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v49)
          {
            goto LABEL_85;
          }
        }

        ++a2;
        swift_unknownObjectRelease();
        v6 = v89;
        if (v41 == a2)
        {
LABEL_141:
          v10 = v80;
          goto LABEL_143;
        }
      }
    }

    goto LABEL_92;
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
    goto LABEL_142;
  }

  v9 = 0;
  a1 = 0x66656465646F6ELL;
  v7 = v6 + 32;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v80 = v10;
    a2 = v9;
    while (1)
    {
      if (a2 >= *(v6 + 16))
      {
        __break(1u);
LABEL_92:
        v21 = 0xD000000000000010;
        if ((a1 != 0xD000000000000015 || 0x8000000265F2E120 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_119:
          if (a1 == v21 && 0x8000000265F2E140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v68 = *(v6 + 16);
            if (!v68)
            {
              goto LABEL_142;
            }

            v69 = 0;
            a1 = 0xEE006E6F69746174;
            v70 = v6 + 32;
            v10 = MEMORY[0x277D84F90];
LABEL_124:
            v80 = v10;
            a2 = v69;
            while (a2 < *(v6 + 16))
            {
              v87 = *(v70 + 16 * a2);
              v71 = swift_getObjectType();
              v72 = *(*(&v87 + 1) + 16);
              swift_unknownObjectRetain();
              v73 = v72(v71, *(&v87 + 1));
              if (v74)
              {
                if (v73 == 0x6E656D656C706D69 && v74 == 0xEE006E6F69746174)
                {

LABEL_135:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
                  }

                  v78 = *(v10 + 16);
                  v77 = *(v10 + 24);
                  if (v78 >= v77 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
                  }

                  v69 = a2 + 1;
                  *(v10 + 16) = v78 + 1;
                  *(v10 + 16 * v78 + 32) = v87;
                  v6 = v89;
                  if (v68 - 1 != a2)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_143;
                }

                v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v76)
                {
                  goto LABEL_135;
                }
              }

              ++a2;
              swift_unknownObjectRelease();
              v6 = v89;
              if (v68 == a2)
              {
                goto LABEL_141;
              }
            }

LABEL_148:
            __break(1u);
          }

          _StringGuts.grow(_:)(33);

          MEMORY[0x266771550](a1, a2);
          MEMORY[0x266771550](39, 0xE100000000000000);
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v52 = *(v6 + 16);
        if (v52)
        {
          v53 = 0;
          v81 = v6 + 32;
          v10 = MEMORY[0x277D84F90];
LABEL_97:
          a1 = v53;
          while (1)
          {
            if (a1 >= *(v6 + 16))
            {
              goto LABEL_147;
            }

            a2 = v10;
            v86 = *(v81 + 16 * a1);
            v58 = *(v81 + 16 * a1);
            v59 = swift_getObjectType();
            v60 = *(*(&v86 + 1) + 16);
            swift_unknownObjectRetain();
            v61 = v60(v59, *(&v86 + 1));
            if (v62)
            {
              if (v61 == 0x7061726765646F6ELL && v62 == v7 + 2)
              {
              }

              else
              {
                v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v64 & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              swift_getObjectType();
              v65 = swift_conformsToProtocol2();
              if (v65)
              {
                if (v58)
                {
                  v54 = v65;
                  v55 = swift_getObjectType();
                  v56 = *(v54 + 16);
                  swift_unknownObjectRetain();
                  v57 = v56(0x66656465646F6ELL, 0xE700000000000000, v55, v54);
                  swift_unknownObjectRelease();
                  if (v57)
                  {
                    swift_unknownObjectRelease();
                    v10 = a2;
                    v88 = a2;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16) + 1, 1);
                      v10 = a2;
                    }

                    v6 = v89;
                    v67 = *(v10 + 16);
                    v66 = *(v10 + 24);
                    a2 = v67 + 1;
                    if (v67 >= v66 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
                      v10 = v88;
                    }

                    v53 = a1 + 1;
                    *(v10 + 16) = a2;
                    *(v10 + 16 * v67 + 32) = v86;
                    if (v52 - 1 != a1)
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_143;
                  }
                }
              }
            }

LABEL_99:
            swift_unknownObjectRelease();
            ++a1;
            v6 = v89;
            v10 = a2;
            if (v52 == a1)
            {
              goto LABEL_143;
            }
          }
        }

LABEL_142:
        v10 = MEMORY[0x277D84F90];
        goto LABEL_143;
      }

      v82 = *(v7 + 16 * a2);
      v11 = swift_getObjectType();
      v12 = *(*(&v82 + 1) + 16);
      swift_unknownObjectRetain();
      v13 = v12(v11, *(&v82 + 1));
      if (!v14)
      {
        goto LABEL_8;
      }

      if (v13 == 0x66656465646F6ELL && v14 == 0xE700000000000000)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_18;
      }

LABEL_8:
      ++a2;
      swift_unknownObjectRelease();
      v6 = v89;
      if (v8 == a2)
      {
        goto LABEL_141;
      }
    }

LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    }

    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
    }

    v9 = a2 + 1;
    *(v10 + 16) = v18 + 1;
    *(v10 + 16 * v18 + 32) = v82;
    v6 = v89;
  }

  while (v8 - 1 != a2);
LABEL_143:

  return v10;
}

void *XMLParserDelegate.Element.deinit()
{
  outlined destroy of weak XMLNode?((v0 + 2));
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t XMLParserDelegate.Element.__deallocating_deinit()
{
  outlined destroy of weak XMLNode?((v0 + 2));
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 152))();
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element;
}

uint64_t XMLParserDelegate.Element.parent.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t XMLParserDelegate.Element.parent.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*XMLParserDelegate.StringNode.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return XMLParserDelegate.StringNode.parent.modify;
}

void XMLParserDelegate.Element.parent.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t XMLParserDelegate.StringNode.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t XMLParserDelegate.Element.children.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t XMLParserDelegate.Element.children.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t XMLParserDelegate.StringNode.stringValue.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void *XMLParserDelegate.StringNode.init(name:stringValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = v9;
  v4[7] = a3;
  v4[8] = a4;
  v4[9] = 0;
  return v4;
}

void *XMLParserDelegate.StringNode.deinit()
{
  outlined destroy of weak XMLNode?((v0 + 2));
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return v0;
}

uint64_t XMLParserDelegate.StringNode.__deallocating_deinit()
{
  outlined destroy of weak XMLNode?((v0 + 2));
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.StringNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 160))();
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.StringNode;
}

void protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t _s11ShaderGraph17XMLParserDelegateC7ElementCAA7XMLNodeA2aFP4nameSSSgvgTW_0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t protocol witness for XMLNode.stringValue.getter in conformance XMLParserDelegate.StringNode()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

id XMLParserDelegate.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement] = 0;
  v2 = &v0[OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id XMLParserDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

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

uint64_t specialized XMLParserDelegate.parser(_:didStartElement:namespaceURI:qualifiedName:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for XMLParserDelegate.Element();
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v7[5] = a2;
  v7[6] = 0;
  v7[7] = 0;
  v7[4] = a1;

  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(a3);
  swift_beginAccess();
  v9 = v7[7];
  v7[7] = v8;

  v10 = (v3 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement);
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = v10[1];
  }

  else
  {

    v12 = &protocol witness table for XMLParserDelegate.Element;
    v11 = v7;
  }

  *v10 = v11;
  v10[1] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement);
  if (v13)
  {
    v14 = *(*v13 + 208);

    v14(v7, &protocol witness table for XMLParserDelegate.Element);
  }

  XMLParserDelegate.beginElement(_:)(v7);
}

unint64_t lazy protocol witness table accessor for type XMLDocument.Options and conformance XMLDocument.Options()
{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

uint64_t sub_265DBB230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265DBB27C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_265DBB2E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_265DBB32C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_265DBB380@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265DBB3CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_265DBB420@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265DBB46C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_265DBB4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265DBB51C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for XMLDocument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for XMLDocument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined consume of XMLDocument?(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int8x8_t *_UnsafeBitset._actualCount.getter(int8x8_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      result = 0;
      v3 = 8 * a2;
      while (1)
      {
        v4 = vcnt_s8(*v2);
        v4.i16[0] = vaddlv_u8(v4);
        v5 = __OFADD__(result, v4.u32[0]);
        result = (result + v4.u32[0]);
        if (v5)
        {
          break;
        }

        ++v2;
        v3 -= 8;
        if (!v3)
        {
          return result;
        }
      }

      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = *(a4 - 8);
  (*(v17 + 56))(&v21 - v15, 1, 1, a4);
  v23 = a4;
  v24 = v16;
  v25 = a2;
  v26 = a3;
  v18 = v27;
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(a1, partial apply for closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:));
  if (v18)
  {
    return (*(v10 + 8))(v16, v9);
  }

  v19 = v22;
  (*(v10 + 16))(v14, v16, v9);
  result = (*(v17 + 48))(v14, 1, a4);
  if (result != 1)
  {
    (*(v17 + 32))(v19, v14, a4);
    return (*(v10 + 8))(v16, v9);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  result = a3(a1);
  if (!v5)
  {
    (*(*(a5 - 8) + 56))(v14, 0, 1, a5);
    return (*(v11 + 40))(a2, v14, v10);
  }

  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.insert(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = *(*v1 + v2);
  *(*v1 + v2) = v3 | (1 << a1);
  if ((v3 & (1 << a1)) == 0)
  {
    v4 = v1[2];
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      return a1;
    }

    v1[2] = v6;
  }

  LOBYTE(a1) = (v3 & (1 << a1)) == 0;
  return a1;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.insert(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) == 0;
  *v1 |= v2;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.remove(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = *(*v1 + v2);
  *(*v1 + v2) = v3 & ~(1 << a1);
  if ((v3 & (1 << a1)) != 0)
  {
    v4 = v1[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v5)
    {
      __break(1u);
      return a1;
    }

    v1[2] = v6;
  }

  LOBYTE(a1) = (v3 & (1 << a1)) != 0;
  return a1;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.remove(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) != 0;
  *v1 &= ~v2;
  return result;
}

Swift::Void __swiftcall _UnsafeBitset.clear()()
{
  v1 = *(v0 + 8);
  if (v1 >= 1)
  {
    if (*v0)
    {
      bzero(*v0, 8 * v1);
      *(v0 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall _UnsafeBitset.insertAll(upTo:)(Swift::Int upTo)
{
  if (upTo >= 1)
  {
    v2 = upTo >> 6;
    if (upTo >= 0x40)
    {
      v3 = *v1;
      v4 = upTo >> 6;
      while (1)
      {
        v5 = vcnt_s8(~*v3);
        v5.i16[0] = vaddlv_u8(v5);
        v6 = *(v1 + 16);
        if (__OFADD__(v6, v5.u32[0]))
        {
          break;
        }

        *(v1 + 16) = v6 + v5.u32[0];
        *v3++ = -1;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_6:
    v7 = upTo & 0x3F;
    if ((upTo & 0x3F) != 0)
    {
      v8 = *(*v1 + 8 * v2);
      v9 = -1 << v7;
      v10 = vcnt_s8((v8 & ~(-1 << v7)));
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v7 - v10.u32[0];
      *(*v1 + 8 * v2) = v8 | ~v9;
      v12 = *(v1 + 16);
      v13 = __OFADD__(v12, v11);
      v14 = v12 + v11;
      if (v13)
      {
LABEL_11:
        __break(1u);
        return;
      }

      *(v1 + 16) = v14;
    }
  }
}

Swift::Int __swiftcall _UnsafeBitset.Word.insert(bitsBelow:)(Swift::Int bitsBelow)
{
  v2 = -1 << bitsBelow;
  v3 = vcnt_s8((*v1 & ~(-1 << bitsBelow)));
  v3.i16[0] = vaddlv_u8(v3);
  v4 = __OFSUB__(bitsBelow, v3.u32[0]);
  result = bitsBelow - v3.u32[0];
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *v1 |= ~v2;
  }

  return result;
}

Swift::Void __swiftcall _UnsafeBitset.removeAll(upTo:)(Swift::Int upTo)
{
  if (upTo >= 1)
  {
    v2 = upTo >> 6;
    if (upTo >= 0x40)
    {
      v3 = *v1;
      v4 = upTo >> 6;
      while (1)
      {
        v5 = vcnt_s8(*v3);
        v5.i16[0] = vaddlv_u8(v5);
        v6 = *(v1 + 16);
        if (__OFSUB__(v6, v5.u32[0]))
        {
          break;
        }

        *(v1 + 16) = v6 - v5.u32[0];
        *v3++ = 0;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_6:
    if ((upTo & 0x3F) != 0)
    {
      v7 = -1 << (upTo & 0x3F);
      v8 = *(*v1 + 8 * v2);
      v9 = vcnt_s8((v8 & ~v7));
      v9.i16[0] = vaddlv_u8(v9);
      *(*v1 + 8 * v2) = v8 & v7;
      v10 = *(v1 + 16);
      v11 = __OFSUB__(v10, v9.u32[0]);
      v12 = v10 - v9.u32[0];
      if (v11)
      {
LABEL_11:
        __break(1u);
        return;
      }

      *(v1 + 16) = v12;
    }
  }
}

Swift::Int __swiftcall _UnsafeBitset.Word.remove(bitsBelow:)(Swift::Int bitsBelow)
{
  v2 = -1 << bitsBelow;
  v3 = vcnt_s8((*v1 & ~(-1 << bitsBelow)));
  v3.i16[0] = vaddlv_u8(v3);
  result = v3.u32[0];
  *v1 &= v2;
  return result;
}

uint64_t *_UnsafeBitset.makeIterator()@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  a4[4] = v4;
  return result;
}

uint64_t _UnsafeBitset.Iterator.bitset.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return result;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Iterator.next()()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = 0;
    v0[4] = (v1 - 1) & v1;
    v3 = __clz(__rbit64(v1)) | (v0[3] << 6);
  }

  else
  {
    v4 = v0[1];
    v5 = v0[3];
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v4)
      {
        v3 = 0;
        v2 = 1;
        goto LABEL_10;
      }

      v0[3] = v6;
      v7 = *(*v0 + 8 * v6);
      v0[4] = v7;
      ++v5;
      if (v7)
      {
        v2 = 0;
        v0[4] = (v7 - 1) & v7;
        v3 = __clz(__rbit64(v7)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

LABEL_10:
  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Word.next()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = __clz(__rbit64(v1));
    *v0 = (v1 - 1) & v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 == 0;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Iterator@<X0>(uint64_t a1@<X8>)
{
  v3 = _UnsafeBitset.Iterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

void protocol witness for Sequence.makeIterator() in conformance _UnsafeBitset(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 8) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
}

uint64_t _UnsafeBitset.Word.underestimatedCount.getter(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _UnsafeBitset.Word()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Word(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = __clz(__rbit64(v2));
    *v1 = (v2 - 1) & v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(uint64_t a1, uint64_t (*a2)(void **))
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 63) >> 6;
  if ((a1 + 63) <= 0xBF)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = v7;
    v9 = (a1 + 63) >> 6;
    v10 = 0;
    result = a2(&v8);
  }

  else
  {
    v4 = swift_slowAlloc();
    bzero(v4, 8 * v3);
    v8 = v4;
    v9 = v3;
    v10 = 0;
    a2(&v8);
    result = MEMORY[0x266773120](v4, -1, -1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator()
{
  result = lazy protocol witness table cache variable for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator;
  if (!lazy protocol witness table cache variable for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word()
{
  result = lazy protocol witness table cache variable for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word;
  if (!lazy protocol witness table cache variable for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _UnsafeBitset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _UnsafeBitset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
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

uint64_t getEnumTagSinglePayload for _UnsafeBitset.Iterator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _UnsafeBitset.Iterator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

void *_s11ShaderGraph13_UnsafeBitsetV014_withTemporaryD08capacity3runySi_yACzKXEtKFZ04_s11a8Graph13_cd8V013withf32D08capacity3runxSi_xACzKXEtKlFZyN12KXEfU_Sb_Tg5SbSgACxs5Error_pRi_zRi0_zlySbIsglrzo_Tf1ncn_nTf4ndnn_n(uint64_t a1, _BYTE *a2, void *(*a3)(char *__return_ptr, void **))
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 63) >> 6;
  if ((a1 + 63) < 0xC0)
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = v12;
    v14 = (a1 + 63) >> 6;
    v15 = 0;
    result = a3(&v11, &v13);
    if (!v3)
    {
      *a2 = v11;
    }
  }

  else
  {
    v7 = swift_slowAlloc();
    bzero(v7, 8 * v6);
    v13 = v7;
    v14 = v6;
    v15 = 0;
    a3(v12, &v13);
    if (!v3)
    {
      *a2 = v12[0];
      result = MEMORY[0x266773120](v7, -1, -1);
      v10 = *MEMORY[0x277D85DE8];
      return result;
    }

    result = MEMORY[0x266773120](v7, -1, -1);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SGNode.BOOLValue.getter()
{
  v1 = (v0 + OBJC_IVAR___SGNode_data);
  if ((*(v0 + OBJC_IVAR___SGNode_data + 80) & 0xC0) == 0x80 && ((*(v0 + OBJC_IVAR___SGNode_data + 80) & 0x3F) == 0 ? (v2 = *v1 == 1) : (v2 = 0), v2))
  {
    return v1[2] & 1;
  }

  else
  {
    return 2;
  }
}

__n128 SGNode.constantStringValue.getter()
{
  v1 = v0 + OBJC_IVAR___SGNode_data;
  v2 = *(v0 + OBJC_IVAR___SGNode_data + 80);
  if ((v2 & 0xC0) == 0x80 && (v2 & 0x3F) == 6 && *v1 == 11)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v10 = *(v1 + 24);
    v6 = *(v1 + 40);
    v7 = *(v1 + 56);
    v8 = *(v1 + 72);
    v12[0] = 11;
    v12[1] = v4;
    v12[2] = v5;
    v13 = v10;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = 6;
    outlined init with copy of [Input](v12, v11, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
    return v10;
  }

  return result;
}

__n128 SGNode.constantAssetValue.getter()
{
  v1 = v0 + OBJC_IVAR___SGNode_data;
  v2 = *(v0 + OBJC_IVAR___SGNode_data + 80);
  if ((v2 & 0xC0) == 0x80 && (v2 & 0x3F) == 6 && *v1 == 13)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v10 = *(v1 + 24);
    v6 = *(v1 + 40);
    v7 = *(v1 + 56);
    v8 = *(v1 + 72);
    v12[0] = 13;
    v12[1] = v4;
    v12[2] = v5;
    v13 = v10;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = 6;
    outlined init with copy of [Input](v12, v11, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
    return v10;
  }

  return result;
}

unint64_t TopologicalSort.Path.sourceNode.getter(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = result;
  v6 = __CocoaSet.count.getter();
  result = v5;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x266772030](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;
    v3 = *&v1[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    return Strong;
  }

  __break(1u);
  return result;
}

unint64_t TopologicalSort.Path.constantBoolValue.getter(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 2;
  }

  v9 = result;
  v10 = __CocoaSet.count.getter();
  result = v9;
  if (!v10)
  {
    return 2;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x266772030](0, result);
LABEL_6:
    v2 = v1;
    v3 = *&v1[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v5 = &Strong[OBJC_IVAR___SGNode_data];
      v6 = Strong[OBJC_IVAR___SGNode_data + 80];
      if ((v6 & 0xC0) == 0x80 && *v5 == 1)
      {
        v7 = v5[2];
        v8 = v6 & 0x3F;

        if (!v8)
        {
          return v7 & 1;
        }
      }

      else
      {
      }
    }

    return 2;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

char *TopologicalSort.Path.debugString.getter(unint64_t a1)
{
  return TopologicalSort.Path.debugString.getter(a1);
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v19 = BidirectionalCollection<>.joined(separator:)();

    return v19;
  }

  v20 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        MEMORY[0x266772030](v4, a1);
        v5 = SGEdge.debugDescription.getter();
        v7 = v6;
        swift_unknownObjectRelease();
        v9 = *(v20 + 16);
        v8 = *(v20 + 24);
        if (v9 >= v8 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        }

        ++v4;
        *(v20 + 16) = v9 + 1;
        v10 = v20 + 16 * v9;
        *(v10 + 32) = v5;
        *(v10 + 40) = v7;
      }

      while (v2 != v4);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *v11;
        v13 = SGEdge.debugDescription.getter();
        v15 = v14;

        v17 = *(v20 + 16);
        v16 = *(v20 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        }

        *(v20 + 16) = v17 + 1;
        v18 = v20 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        ++v11;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t TopologicalSort.path(to:on:resolvingInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v59[0] = *v5;
  v6 = v59[0];
  v7 = *(v59[0] + 16);
  v8 = *a3;
  if (!v7)
  {
    goto LABEL_23;
  }

  v11 = 0;
  v12 = (v59[0] + 64);
  v46 = a3;
  v47 = *a3;
  while (1)
  {
    v13 = *(v12 - 4);
    if (v13 != v8)
    {
      goto LABEL_4;
    }

    v14 = *(v12 - 3);
    if (v14 != *(a3 + 8))
    {
      goto LABEL_4;
    }

    v15 = *(v12 - 2);
    v16 = *(a3 + 16);
    if (!v15)
    {
      break;
    }

    if (v16)
    {
      v49 = *(a3 + 16);
      type metadata accessor for SGNode();
      v48 = v8;
      v52 = v13;
      v50 = v14;
      v17 = v15;
      v18 = v49;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_12;
      }

      a3 = v46;
      v8 = v47;
    }

LABEL_4:
    ++v11;
    v12 += 40;
    if (v7 == v11)
    {
      goto LABEL_23;
    }
  }

  if (v16)
  {
    goto LABEL_4;
  }

  v20 = v8;
LABEL_12:
  v21 = MEMORY[0x266771450](a1, a2);
  v22 = [v47 inputNamed_];

  if (!v22)
  {

    v8 = v47;
LABEL_23:
    v40 = *(v54 + 16);
    v41 = v8;
    v39 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v23 = OBJC_IVAR___SGInput_edge;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v8 = v47;
    goto LABEL_23;
  }

  v25 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v25 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v53 = v22;
  if (v7 < v25)
  {
LABEL_27:
    __break(1u);

    __break(1u);
    return result;
  }

  v26 = Strong;
  v27 = ~v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_265F20CD0;
  *(v28 + 32) = v26;
  v58 = v28;
  outlined init with copy of [Input](v59, v55, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v51 = v26;
  do
  {
    v29 = *(v12 - 3);
    v31 = *v12;
    v55[0] = *(v12 - 4);
    v30 = v55[0];
    v55[1] = v29;
    v56 = *(v12 - 1);
    v57 = v31;
    v32 = v56;
    v33 = v30;
    v34 = v29;
    specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(&v58, v55, v6, a4, a5, v35, v36);

    v12 -= 40;
  }

  while (!__CFADD__(v27++, 1));
  v38 = v58;
  outlined destroy of [Input](v59, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v39 = specialized Sequence.reversed()(v38);

  v40 = *(v54 + 16);
LABEL_24:
  v42 = v40;
  return v39;
}

uint64_t inferLightingModel(from:in:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (v2 >> 62)
  {
LABEL_12:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v13 = v3;
    *(v13 + 8) = v4;
    *(v13 + 16) = 10;

    return swift_willThrow();
  }

  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  v9 = specialized Surface.init(nodeDefID:)(v7, v8);
  result = 2;
  if (v9 <= 2)
  {
    if (v9)
    {
      v11 = v9 == 1;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0x616F637261656C63uLL, 0xE900000000000074, a1, a2, v18);
      v12 = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v18);
      if (v12)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    return result;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_265D7D000, v15, v16, "inferLightingModel called on geometry modifier node", v17, 2u);
    MEMORY[0x266773120](v17, -1, -1);
  }

  return 1;
}

uint64_t inferBlendMode(from:in:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (v2 >> 62 || ((v7 = *(v2 + 16), v8 = *(v2 + 24), , v9 = specialized Surface.init(nodeDefID:)(v7, v8), v9 != 3) ? (v10 = v9 == 5) : (v10 = 1), v10))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v11 = v3;
    *(v11 + 8) = v4;
    *(v11 + 16) = 10;

    return swift_willThrow();
  }

  else
  {
    specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0x7974696361706FuLL, 0xE700000000000000, a1, a2, v22);
    v13 = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
    specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000010, 0x8000000265F2E2F0, a1, a2, v23);
    v14 = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
    v15 = v14;
    v16 = *a2;
    v17 = *(*a2 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (1)
      {
        v20 = *v18;
        v18 += 11;
        v19 = v20;
        if (!(v20 >> 62))
        {
          v21 = *(v19 + 16) == static MaterialXNodeTokens.discardNodeID && *(v19 + 24) == off_280042378;
          if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        if (!--v17)
        {
          goto LABEL_18;
        }
      }

      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v23);
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v22);
      return 0;
    }

    else
    {
LABEL_18:
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v23);
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v22);
      return v13 & ~v15 & 1;
    }
  }
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 80);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v13 = *(v7 - 5);
      v12 = *(v7 - 4);
      v17[0] = *(v7 - 6);
      v17[1] = v13;
      v17[2] = v12;
      v17[3] = v11;
      v17[4] = v10;
      v18 = v9;
      v19 = v8;

      v14 = a1(v17);

      if (v3)
      {
        break;
      }

      v7 += 7;
      v15 = v6-- == 0;
    }

    while (((v14 | v15) & 1) == 0);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

{
  return sub_265DBD404(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x266772030](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

{
  return sub_265DBD5A8(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t inferHasPremultipliedAlpha(from:in:)(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  if (v3 >> 62)
  {
    goto LABEL_10;
  }

  v8 = *(v3 + 16);
  v2 = *(v3 + 24);

  v9 = specialized Surface.init(nodeDefID:)(v8, v2);
  LOBYTE(v2) = 0;
  if (v9 <= 2u)
  {
    if (v9 < 2u)
    {
      specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000015, 0x8000000265F2E310, a1, a2, v16);
      if (v17 >> 62 == 2 && *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == 1 && !*((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x60))
      {
        v2 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v16);
        return v2 & 1;
      }

      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v16);
      goto LABEL_16;
    }

    return v2 & 1;
  }

  if (v9 == 3)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_265D7D000, v12, v13, "inferHasPremultipliedAlpha called on geometry modifier node", v14, 2u);
      MEMORY[0x266773120](v14, -1, -1);
    }

LABEL_16:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (v9 != 4)
  {
LABEL_10:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v10 + 16) = 10;

    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t inferApplyPostProcessToneMap(from:in:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (v2 >> 62 || (v7 = *(v2 + 16), v8 = *(v2 + 24), , v9 = specialized Surface.init(nodeDefID:)(v7, v8), v9 == 5))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v10 = v3;
    *(v10 + 8) = v4;
    *(v10 + 16) = 10;

    swift_willThrow();
  }

  else if (v9 == 1)
  {
    specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000017, 0x8000000265F2E330, a1, a2, v12);
    if (v13 >> 62 == 2 && *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == 1)
    {
      LOBYTE(v4) = (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60) != 0) | *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    }

    else
    {
      LOBYTE(v4) = 1;
    }

    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v12);
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

Swift::Int LightSpillNodeFeatures.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LightSpillNodeFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LightSpillNodeFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  return Hasher._finalize()();
}

uint64_t inferHighestConnectedLightSpillNodeRequirements(in:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = (*a1 + 88); ; i += 11)
    {
      v4 = *(i - 5);
      if (!(v4 >> 62))
      {
        v17 = &v15;
        v5 = *(i - 3);
        v6 = *i;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        v15 = v8;
        v16 = v7;
        MEMORY[0x28223BE20](a1);
        v14 = v9;

        v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v13, &outlined read-only object #1 of inferHighestConnectedLightSpillNodeRequirements(in:));
        if (v10)
        {

          return 2;
        }

        v17 = &v15;
        v15 = v8;
        v16 = v7;
        MEMORY[0x28223BE20](v10);
        v14 = &v15;
        v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v13, &outlined read-only object #0 of inferHighestConnectedLightSpillNodeRequirements(in:));

        if (v11)
        {
          v2 = 1;
        }

        else
        {
          v2 = v2;
        }
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t inferShaderHasCustomUniform(from:shaderType:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + OBJC_IVAR___SGGraph_resultsNode) + OBJC_IVAR___SGNode_inputs);
  v81 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v78 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v8 = MEMORY[0x266772030](v5, v3);
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_75;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      if (*&v9[v11] == a2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = v6;
        v13 = i;
        v14 = v3;
        v15 = a2;
        v16 = *(v81 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v15;
        v3 = v14;
        i = v13;
        v6 = v12;
        v7 = v78;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v10 == i)
      {
        v17 = v81;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_16:

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    v18 = __CocoaSet.count.getter();
    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = *(v17 + 16);
    if (v18)
    {
LABEL_19:
      v19 = 0;
      v68 = (a1 + OBJC_IVAR___SGGraph_nodeMap);
      v20 = v17 & 0xC000000000000001;
      a2 = v17 + 32;
      v72 = OBJC_IVAR___SGGraph_argumentsNode;
      v71 = v17;
      v69 = v18;
      v70 = v17 & 0xC000000000000001;
      v73 = v17 + 32;
      do
      {
        if (v20)
        {
          v21 = MEMORY[0x266772030](v19, v17);
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_77;
          }

          v21 = *(a2 + 8 * v19);
        }

        v3 = v21;
        if (__OFADD__(v19++, 1))
        {
          goto LABEL_76;
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v77 = v3;
          v79 = *(Strong + OBJC_IVAR___SGEdge_from);
          v24 = &v79[OBJC_IVAR___SGOutput_attachment];
          v25 = Strong;
          swift_beginAccess();
          v3 = v24[1];
          if (v3)
          {
            v76 = v25;
            v26 = *v24;
            v27 = HIBYTE(v3) & 0xF;
            if ((v3 & 0x2000000000000000) == 0)
            {
              v27 = *v24 & 0xFFFFFFFFFFFFLL;
            }

            if (v27)
            {
              v28 = v79;

              if (String.count.getter() < 1024)
              {
                swift_beginAccess();
                v30 = *v68;
                v29 = v68[1];
                v31 = v68[2];
                v32 = *(v29 + 16);
                if (*v68)
                {
                  v33 = *v68;

                  v34 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v26, v3, v29 + 32, v32, (v30 + 16), v30 + 32);
                  v36 = v35;

                  if ((v36 & 1) == 0)
                  {
                    if ((v34 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
LABEL_84:
                      __break(1u);
                      return result;
                    }

LABEL_35:
                    if (v34 >= *(v31 + 16))
                    {
                      goto LABEL_84;
                    }

                    v38 = *(v31 + 8 * v34 + 32);
                    swift_endAccess();
                    v39 = v38;

                    LOBYTE(v80) = 0;
                    MEMORY[0x28223BE20](v40);
                    specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(v39, 1, protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind.SetCodingKeys, 0, partial apply for closure #1 in closure #2 in inferShaderHasCustomUniform(from:shaderType:));
                    if (v75)
                    {

                      return v67 & 1;
                    }

                    if (v80)
                    {

LABEL_71:

                      v67 = 1;
                      return v67 & 1;
                    }

                    v75 = 0;
                    specialized SGGraph.connectedUpstreamSubgraph(rootedAt:)(v39);
                    v3 = v41;
                    a2 = v42;

                    v43 = *(a2 + 16);
                    v20 = v70;
                    if (v43)
                    {
                      v44 = 0;
                      while (v44 < *(a2 + 16))
                      {
                        v45 = (*(*(a2 + 8 * v44 + 32) + OBJC_IVAR___SGEdge_from) + OBJC_IVAR___SGOutput_attachment);
                        swift_beginAccess();
                        v46 = v45[1];
                        if (v46)
                        {
                          v47 = (*(a1 + v72) + OBJC_IVAR___SGNode_name);
                          v48 = *v47 == *v45 && v46 == v47[1];
                          if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            goto LABEL_71;
                          }
                        }

                        if (v43 == ++v44)
                        {
                          goto LABEL_68;
                        }
                      }

                      goto LABEL_78;
                    }

LABEL_68:

                    v17 = v71;
                    v18 = v69;
LABEL_67:
                    a2 = v73;
                    continue;
                  }
                }

                else if (v32)
                {
                  v34 = 0;
                  v65 = (v29 + 40);
                  do
                  {
                    result = *(v65 - 1);
                    if (result == v26 && v3 == *v65)
                    {
                      goto LABEL_35;
                    }

                    result = _stringCompareWithSmolCheck(_:_:expecting:)();
                    if (result)
                    {
                      goto LABEL_35;
                    }

                    ++v34;
                    v65 += 2;
                  }

                  while (v32 != v34);
                }

                swift_endAccess();

                v17 = v71;
                v18 = v69;
                v20 = v70;
LABEL_66:

                goto LABEL_67;
              }

              lazy protocol witness table accessor for type APIError and conformance APIError();
              v49 = swift_allocError();
              *v52 = xmmword_265F20CE0;
              *(v52 + 16) = 17;
            }

            else
            {
              lazy protocol witness table accessor for type APIError and conformance APIError();
              v49 = swift_allocError();
              *v50 = xmmword_265F20CE0;
              *(v50 + 16) = 16;
              v51 = v79;
            }

            swift_willThrow();
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v53 = type metadata accessor for Logger();
            __swift_project_value_buffer(v53, logger);
            v54 = static os_log_type_t.error.getter();
            v55 = v49;
            v56 = Logger.logObject.getter();

            v75 = 0;
            if (os_log_type_enabled(v56, v54))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v80 = v58;
              *v57 = 136315138;
              v82 = v49;
              v59 = v49;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
              v60 = String.init<A>(describing:)();
              v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v80);

              *(v57 + 4) = v62;
              v20 = v70;
              _os_log_impl(&dword_265D7D000, v56, v54, "%s", v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v58);
              v63 = v58;
              v17 = v71;
              MEMORY[0x266773120](v63, -1, -1);
              v64 = v57;
              v18 = v69;
              MEMORY[0x266773120](v64, -1, -1);
            }

            else
            {
            }

            goto LABEL_66;
          }
        }

        else
        {
        }
      }

      while (v19 != v18);
    }
  }

  v67 = 0;
  return v67 & 1;
}

uint64_t inferShaderHasTimeVaryingFeatures(in:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v2 = *a1 + 32;
    while (1)
    {
      v3 = *(v2 + 16);
      v23 = *v2;
      v24 = v3;
      v4 = *(v2 + 32);
      v5 = *(v2 + 48);
      v6 = *(v2 + 64);
      v28 = *(v2 + 80);
      v26 = v5;
      v27 = v6;
      v25 = v4;
      v7 = v24;
      if (!(v24 >> 62))
      {
        v9 = *(&v23 + 1);
        v8 = v23;
        v10 = *(&v24 + 1);
        v11 = *(&v25 + 1);
        v12 = v25;
        v36 = v26;
        v21 = v27;
        v22 = *(&v26 + 1);
        v19 = v28;
        v20 = *(&v27 + 1);
        if (*(v24 + 16) == 0x5F656D69745F444ELL && *(v24 + 24) == 0xED000074616F6C66)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }
      }

      v2 += 88;
      if (!--v1)
      {
        goto LABEL_10;
      }
    }

    outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v23, v35);
    if (v12)
    {
      *&v23 = v8;
      *(&v23 + 1) = v9;
      *&v24 = v7;
      *(&v24 + 1) = v10;
      *&v25 = v12;
      *(&v25 + 1) = v11;
      *&v26 = v36;
      *(&v26 + 1) = v22;
      *&v27 = v21;
      *(&v27 + 1) = v20;
      v28 = v19;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      outlined destroy of [Input](&v23, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSg_AHtMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSg_AHtMR);
      return 1;
    }

    v18 = v19;
    v14 = v36;
    v16 = v21;
    v15 = v22;
    v17 = v20;
  }

  else
  {
LABEL_10:
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  *&v23 = v8;
  *(&v23 + 1) = v9;
  *&v24 = v7;
  *(&v24 + 1) = v10;
  *&v25 = 0;
  *(&v25 + 1) = v11;
  *&v26 = v14;
  *(&v26 + 1) = v15;
  *&v27 = v16;
  *(&v27 + 1) = v17;
  v28 = v18;
  outlined destroy of [Input](&v23, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
  return 0;
}

uint64_t inferTextureAssignments(from:)(uint64_t KeyPath)
{
  result = SGGraph.topologicalSort()(v190);
  if (v1)
  {
    return result;
  }

  v6 = v190[0];
  v194 = v190[0];
  v7 = MEMORY[0x277D84F90];
  v151 = *(v190[0] + 16);
  if (!v151)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_85:
    v71 = 0;
    v72 = v9 + 48;
    v3 = *(v9 + 16);
    v2 = MEMORY[0x277D84F90];
LABEL_86:
    v73 = (v72 + 24 * v71);
    while (v3 != v71)
    {
      if (v71 >= *(v9 + 16))
      {
        goto LABEL_159;
      }

      KeyPath = *(v73 - 2);
      v74 = *(v73 - 1);
      v75 = *v73;
      if (KeyPath >> 62)
      {
        if (KeyPath < 0)
        {
          v77 = *(v73 - 2);
        }

        v180 = v72;
        v78 = v9;
        v76 = __CocoaSet.count.getter();
        v9 = v78;
        v72 = v180;
      }

      else
      {
        v76 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v71 = (v71 + 1);
      v73 += 3;
      if (v76 > 0)
      {
        v148 = v9;

        v79 = v74;
        v181 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
        }

        v83 = *(v2 + 16);
        v82 = *(v2 + 24);
        v9 = v148;
        if (v83 >= v82 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v2);
          v9 = v148;
          v2 = v85;
        }

        *(v2 + 16) = v83 + 1;
        v84 = (v2 + 24 * v83);
        v84[4] = KeyPath;
        v84[5] = v79;
        v84[6] = v181;
        v72 = v81;
        goto LABEL_86;
      }
    }

    v86 = *(v2 + 16);
    if (!v86)
    {
      v182 = MEMORY[0x277D84F90];
LABEL_112:

      v97 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC11ShaderGraph13TextureSourceO_SayAG05TypedF0VGTt1g504_s11d12Graph23inferf23Assignments4fromSayAA05h24D0VGAA7SGGraphC_tKFAA0D6G9OAEXEfU2_Tf1nc_nTf4g_n(v96);

      v98 = v97 + 64;
      v99 = 1 << *(v97 + 32);
      v100 = -1;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      v2 = v100 & *(v97 + 64);
      v3 = ((v99 + 63) >> 6);
      v177 = v97;

      for (i = 0; v2; i = KeyPath)
      {
        KeyPath = i;
LABEL_119:
        v102 = __clz(__rbit64(v2)) | (KeyPath << 6);
        v103 = *(v177 + 48) + 24 * v102;
        v105 = *v103;
        v104 = *(v103 + 8);
        v106 = *(v103 + 16);
        v107 = *(*(v177 + 56) + 8 * v102);
        outlined copy of TextureSource();

        specialized closure #5 in inferTextureAssignments(from:)(v108);
        v2 &= v2 - 1;
        outlined consume of TextureSource();
      }

      while (1)
      {
        KeyPath = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_163;
        }

        if (KeyPath >= v3)
        {

          _s11ShaderGraph17OrderedDictionaryV9_grouping2byACyxq_Gqd___x7ElementQy_KXEtKcSmR_STRd__AGQyd__AHRSlufCAA13TextureSourceO_SayAA05TypedH0VGANTt1g504_s11a12Graph23inferh23Assignments4fromSayAA05j24D0VGAA7SGGraphC_tKFAA0D6I9OAEXEfU4_Tf1nc_nTf4g_n(v182);
          v110 = v109;

          KeyPath = swift_getKeyPath();
          v111 = *(v110 + 16);

          if (!v111)
          {
            v2 = MEMORY[0x277D84F90];
LABEL_135:

            v122 = 0;
            v123 = *(v2 + 16);
            v124 = MEMORY[0x277D84F90];
LABEL_136:
            v125 = 32 * v122;
            while (v123 != v122)
            {
              if (v122 >= *(v2 + 16))
              {
                goto LABEL_164;
              }

              ++v122;
              v126 = v125 + 32;
              v127 = *(v2 + v125 + 48);
              v125 += 32;
              if ((v127 & 1) == 0)
              {
                v3 = *(v2 + v126);
                v128 = *(v2 + v126 + 8);
                KeyPath = *(v2 + v126 + 24);

                outlined copy of TextureSource();
                v129 = swift_isUniquelyReferenced_nonNull_native();
                *&v186 = v124;
                v183 = v128;
                if ((v129 & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 16) + 1, 1);
                  v124 = v186;
                }

                v131 = *(v124 + 16);
                v130 = *(v124 + 24);
                if (v131 >= v130 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1);
                  v124 = v186;
                }

                *(v124 + 16) = v131 + 1;
                v132 = v124 + 32 * v131;
                *(v132 + 32) = v3;
                *(v132 + 40) = v183;
                *(v132 + 48) = 0;
                *(v132 + 56) = KeyPath;
                goto LABEL_136;
              }
            }

            v133 = 0;
            v134 = MEMORY[0x277D84F90];
            KeyPath = 1;
LABEL_146:
            v135 = 32 * v133;
            while (v123 != v133)
            {
              if (v133 >= *(v2 + 16))
              {
                goto LABEL_165;
              }

              ++v133;
              v136 = v135 + 32;
              v137 = *(v2 + v135 + 48);
              v135 += 32;
              if (v137)
              {
                v139 = *(v2 + v136);
                v138 = *(v2 + v136 + 8);
                v140 = *(v2 + v136 + 24);

                outlined copy of TextureSource();
                v141 = swift_isUniquelyReferenced_nonNull_native();
                *&v186 = v134;
                v184 = v140;
                v178 = v139;
                if ((v141 & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v134 + 16) + 1, 1);
                  KeyPath = 1;
                  v134 = v186;
                }

                v143 = *(v134 + 16);
                v142 = *(v134 + 24);
                v3 = (v143 + 1);
                if (v143 >= v142 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1);
                  KeyPath = 1;
                  v134 = v186;
                }

                *(v134 + 16) = v3;
                v144 = v134 + 32 * v143;
                *(v144 + 32) = v178;
                *(v144 + 40) = v138;
                *(v144 + 48) = 1;
                *(v144 + 56) = v184;
                goto LABEL_146;
              }
            }

            *&v186 = v124;
            specialized Array.append<A>(contentsOf:)(v134);
            outlined destroy of [Input](&v194, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
            v145 = v190[1];
            v146 = v192;

            v193 = v146;
            outlined destroy of [Input](&v193, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
            return v186;
          }

          v112 = 0;
          v3 = (v110 + 32);
          v2 = MEMORY[0x277D84F90];
LABEL_123:
          v113 = v112;
          while (v113 < *(v110 + 16))
          {
            v112 = v113 + 1;
            v185[0] = v3[v113];

            swift_getAtKeyPath();

            v114 = *(&v187 + 1);
            if (*(&v187 + 1))
            {
              v168 = v186;
              v172 = v187;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
              }

              v116 = *(v2 + 16);
              v115 = *(v2 + 24);
              v117 = v116 + 1;
              if (v116 >= v115 >> 1)
              {
                v166 = v116 + 1;
                v119 = v2;
                v120 = *(v2 + 16);
                v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1, v119);
                v117 = v166;
                v116 = v120;
                v2 = v121;
              }

              *(v2 + 16) = v117;
              v118 = v2 + 32 * v116;
              *(v118 + 32) = v168;
              *(v118 + 48) = v172 & 1;
              *(v118 + 56) = v114;
              if (v111 - 1 != v113)
              {
                goto LABEL_123;
              }

              goto LABEL_135;
            }

            ++v113;
            if (v111 == v112)
            {
              goto LABEL_135;
            }
          }

          goto LABEL_167;
        }

        v2 = *(v98 + 8 * KeyPath);
        ++i;
        if (v2)
        {
          goto LABEL_119;
        }
      }
    }

    v87 = 0;
    v3 = (v2 + 48);
    v182 = MEMORY[0x277D84F90];
    while (v87 < *(v2 + 16))
    {
      v89 = *(v3 - 1);
      v90 = *v3;
      v185[0] = *(v3 - 2);
      v185[1] = v89;
      v185[2] = v90;

      v91 = v89;
      v92 = v90;
      closure #3 in inferTextureAssignments(from:)(v185, &v186);

      KeyPath = *(&v187 + 1);
      if (*(&v187 + 1))
      {
        v176 = v186;
        v93 = v187;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v182 + 2) + 1, 1, v182);
        }

        v95 = *(v182 + 2);
        v94 = *(v182 + 3);
        if (v95 >= v94 >> 1)
        {
          v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v182);
        }

        *(v182 + 2) = v95 + 1;
        v88 = &v182[32 * v95];
        *(v88 + 2) = v176;
        v88[48] = v93 & 1;
        *(v88 + 7) = KeyPath;
      }

      ++v87;
      v3 += 3;
      if (v86 == v87)
      {
        goto LABEL_112;
      }
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v8 = 0;
  v150 = v190[0] + 32;
  v152 = v190[0] + 64;
  v153 = v190[0] + 48;
  v9 = MEMORY[0x277D84F90];
  v159 = v190[0];
  while (1)
  {
    if (v8 >= v6[2])
    {
      goto LABEL_160;
    }

    v10 = (v150 + 40 * v8);
    KeyPath = *v10;
    v11 = *v10 + OBJC_IVAR___SGNode_data;
    v156 = v8;
    if (*(v11 + 80) > 0x3Fu || (*v11 == 0x746C757365725F5FLL ? (v12 = *(v11 + 8) == 0xE900000000000073) : (v12 = 0), v12))
    {
      v22 = v7;
      goto LABEL_72;
    }

    v147 = v9;
    v2 = v10[1];
    v179 = v10[2];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

LABEL_70:
    v22 = v7;
LABEL_71:
    v9 = v147;
LABEL_72:
    KeyPath = *(v22 + 16);
    v2 = *(v9 + 16);
    v63 = v2 + KeyPath;
    if (__OFADD__(v2, KeyPath))
    {
      goto LABEL_161;
    }

    v64 = v9;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v64;
    if (!v65 || v63 > *(v64 + 24) >> 1)
    {
      if (v2 <= v63)
      {
        v67 = v2 + KeyPath;
      }

      else
      {
        v67 = v2;
      }

      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65, v67, 1, v64);
    }

    if (*(v22 + 16))
    {
      if ((*(v66 + 3) >> 1) - *(v66 + 2) < KeyPath)
      {
        goto LABEL_166;
      }

      v2 = v66;
      swift_arrayInitWithCopy();

      v9 = v2;
      if (KeyPath)
      {
        v68 = *(v2 + 16);
        v69 = __OFADD__(v68, KeyPath);
        v70 = v68 + KeyPath;
        if (v69)
        {
          goto LABEL_169;
        }

        *(v2 + 16) = v70;
      }
    }

    else
    {
      v2 = v66;

      v9 = v2;
      if (KeyPath)
      {
        goto LABEL_162;
      }
    }

    v8 = v156 + 1;
    if (v156 + 1 == v151)
    {
      goto LABEL_85;
    }
  }

  v13 = *(KeyPath + OBJC_IVAR___SGNode_inputs);
  *&v186 = v7;
  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v175 = KeyPath;
  v165 = v2;
  v163 = v179;
  v169 = v14;
  if (!v14)
  {
    v2 = v7;
    KeyPath = v175;
    if (v7 < 0)
    {
      goto LABEL_68;
    }

LABEL_30:
    if ((v2 & 0x4000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v23 = *(v2 + 16);
    if (v23)
    {
      goto LABEL_32;
    }

LABEL_69:

    goto LABEL_70;
  }

  v15 = 0;
  v173 = v13 & 0xC000000000000001;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  v17 = v169;
  do
  {
    if (v173)
    {
      v18 = MEMORY[0x266772030](v15, v13);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_158;
      }

      v18 = *(v13 + 8 * v15 + 32);
    }

    v3 = v18;
    v2 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v19 = OBJC_IVAR___SGInput_type;
    swift_beginAccess();
    if (*(v3 + v19) == 13)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = v13;
      v21 = *(v186 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v13 = v20;
      v17 = v169;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v15;
    KeyPath = v175;
  }

  while (v2 != v17);
  v2 = v186;
  v6 = v159;
  v7 = MEMORY[0x277D84F90];
  if ((v186 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_68:
  v23 = __CocoaSet.count.getter();
  if (!v23)
  {
    goto LABEL_69;
  }

LABEL_32:
  v185[0] = v7;
  KeyPath = v185;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v22 = v185[0];
    v157 = v23;
    v158 = v2 & 0xC000000000000001;
    v149 = v2 + 32;
    while (1)
    {
      v161 = v24;
      if (v158)
      {
        v25 = MEMORY[0x266772030]();
      }

      else
      {
        v25 = *(v149 + 8 * v24);
      }

      v2 = v175;
      v162 = v22;
      v26 = v6[2];
      v27 = v165;
      v160 = v25;
      if (!v26)
      {
        goto LABEL_62;
      }

      v28 = 0;
      v154 = *&v25[OBJC_IVAR___SGInput_name + 8];
      v155 = *&v25[OBJC_IVAR___SGInput_name];
      v29 = -1;
      v30 = v152;
      v3 = v153;
      v164 = v26;
      while (1)
      {
        v31 = *(v3 - 2);
        v32 = *(v3 - 1);
        if (v31 != v2 || v32 != v27)
        {
          goto LABEL_40;
        }

        v34 = *v3;
        if (!*v3)
        {
          break;
        }

        if (v179)
        {
          type metadata accessor for SGNode();
          v167 = v2;
          v35 = v163;
          v36 = v31;
          v170 = v32;
          v37 = v34;
          v38 = static NSObject.== infix(_:_:)();

          v2 = v175;
          if (v38)
          {
            goto LABEL_51;
          }

          v26 = v164;
          v27 = v165;
        }

LABEL_40:
        v3 += 5;
        ++v28;
        v30 += 40;
        --v29;
        if (v26 == v28)
        {
          goto LABEL_62;
        }
      }

      if (v179)
      {
        goto LABEL_40;
      }

      v39 = v2;
LABEL_51:
      v40 = MEMORY[0x266771450](v155, v154);
      v41 = [v2 inputNamed_];

      if (!v41)
      {
        goto LABEL_61;
      }

      KeyPath = OBJC_IVAR___SGInput_edge;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_61:
LABEL_62:
        v58 = v2;
        v7 = MEMORY[0x277D84F90];
        v3 = MEMORY[0x277D84F90];
        v6 = v159;
        v22 = v162;
        goto LABEL_63;
      }

      v43 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_170;
      }

      if (v43 < 0)
      {
        goto LABEL_171;
      }

      if (v164 < v43)
      {
        goto LABEL_172;
      }

      v44 = Strong;
      v174 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_265F20CD0;
      *(v45 + 32) = v44;
      v189 = v45;
      outlined init with copy of [Input](&v194, &v186, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
      v171 = v44;
      v6 = v159;
      v22 = v162;
      do
      {
        v47 = *(v30 - 3);
        v48 = *v30;
        *&v186 = *(v30 - 4);
        v46 = v186;
        *(&v186 + 1) = v47;
        v187 = *(v30 - 1);
        v188 = v48;
        v49 = v187;
        v50 = v46;
        v51 = v47;
        specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(&v189, &v186, v159, v52, v53, v54, v55);

        v30 -= 40;
      }

      while (!__CFADD__(v29++, 1));
      v57 = v189;
      outlined destroy of [Input](&v194, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
      v3 = specialized Sequence.reversed()(v57);

      v7 = MEMORY[0x277D84F90];
LABEL_63:
      v59 = v191;

      v185[0] = v22;
      v61 = *(v22 + 16);
      v60 = *(v22 + 24);
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v22 = v185[0];
      }

      v24 = v161 + 1;
      *(v22 + 16) = v61 + 1;
      v62 = (v22 + 24 * v61);
      v62[4] = v3;
      v62[5] = v175;
      v62[6] = v59;
      if (v161 + 1 == v157)
      {

        goto LABEL_71;
      }
    }
  }

LABEL_173:
  __break(1u);

  __break(1u);
  return result;
}

void closure #3 in inferTextureAssignments(from:)(int64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  if (!(*a1 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_29:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v31 = 0xD000000000000023;
    *(v31 + 8) = 0x8000000265F2E470;
    *(v31 + 16) = 20;
    swift_willThrow();
    return;
  }

  if (v5 < 0)
  {
    v30 = *a1;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_3:
  v8 = (v5 & 0xC000000000000001);
  v39 = a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x266772030](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v9 = *(v5 + 32);
  }

  v2 = v9;
  a2 = OBJC_IVAR___SGEdge_from;
  v10 = *&v9[OBJC_IVAR___SGEdge_from];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v14 = 0xD000000000000023;
    *(v14 + 8) = 0x8000000265F2E3E0;
    *(v14 + 16) = 20;
    swift_willThrow();

    return;
  }

  v3 = Strong;
  v12 = v7 - 1;
  if (!__OFSUB__(v7, 1))
  {
    if (v8)
    {
      v13 = MEMORY[0x266772030](v12, v5);
      goto LABEL_14;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v5 + 8 * v12 + 32);
LABEL_14:
      v15 = v13;
      v16 = *&v13[OBJC_IVAR___SGEdge_to];

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();

      if (!v8)
      {
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        *v22 = 0xD000000000000028;
        *(v22 + 8) = 0x8000000265F2E410;
        *(v22 + 16) = 20;
        swift_willThrow();

        return;
      }

      if (one-time initialization token for shared == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    __break(1u);
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_16:
  v17 = specialized SGNode.textureType(nodeDefStore:)(static NodeDefStore.shared);
  if (!v17)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v23 = 0xD000000000000026;
    *(v23 + 8) = 0x8000000265F2E440;
    *(v23 + 16) = 20;
    swift_willThrow();

    return;
  }

  v18 = v17;
  v19 = specialized TopologicalSort.Path.isMaterialUniform.getter(v5, v6);

  if (v19)
  {

    v3 = *&v2[a2];
    v20 = *&v3[OBJC_IVAR___SGOutput_name];
    v21 = *&v3[OBJC_IVAR___SGOutput_name + 8];

LABEL_24:

    v28 = v39;
    *v39 = v20;
    v28[1] = v21;
    v28[2] = v19 & 1;
    v28[3] = v18;
    return;
  }

  v25 = *&v3[OBJC_IVAR___SGNode_data + 48];
  v24 = *&v3[OBJC_IVAR___SGNode_data + 64];
  v26 = *&v3[OBJC_IVAR___SGNode_data + 32];
  v38 = v3[OBJC_IVAR___SGNode_data + 80];
  v27 = *&v3[OBJC_IVAR___SGNode_data + 16];
  v33 = *&v3[OBJC_IVAR___SGNode_data];
  v34 = v27;
  v36 = v25;
  v37 = v24;
  v35 = v26;
  if (v38 == 134 && v33 == 13)
  {
    v21 = *(&v34 + 1);
    v20 = v34;
    outlined init with copy of NodeData(&v33, &v32);
    goto LABEL_24;
  }

  v29 = v39;
  *v39 = 0u;
  *(v29 + 1) = 0u;
}

uint64_t key path getter for Collection.first : [TypedTexture]@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    outlined copy of TextureSource();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t inferHasBackgroundBlur(in:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1 + 32;
  v21 = *(*a1 + 16);
  while (1)
  {
    v4 = (v3 + 88 * v2);
    v5 = v4[2];
    if (v5 >> 62)
    {
      goto LABEL_5;
    }

    v6 = v4[4];
    v7 = v4[7];
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = one-time initialization token for realityKitBackgroundBlurNodes;
    swift_retain_n();

    if (v10 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static MaterialXHardcodedNames.realityKitBackgroundBlurNodes;
    if (*(static MaterialXHardcodedNames.realityKitBackgroundBlurNodes + 16))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v2 == v1)
    {
      return 0;
    }
  }

  v12 = *(static MaterialXHardcodedNames.realityKitBackgroundBlurNodes + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_18:

    v3 = v20;
    v1 = v21;
    goto LABEL_4;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = (*(v11 + 48) + 16 * v15);
    v18 = *v17 == v9 && v17[1] == v8;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return 1;
}

uint64_t checkConstantInputs(in:)(uint64_t result)
{
  v2 = v1;
  v87 = result;
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  v7 = *(*result + 16);
  v116 = v3 + 32;
  v93 = v4;
  while (1)
  {
    --v7;
    v8 = (v5 + 88 * v7);
    v9 = v8[1];
    v109 = *v8;
    v110 = v9;
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v114 = *(v8 + 10);
    v112 = v11;
    v113 = v12;
    v111 = v10;
    v115 = *(v8 + 24);
    if (v110 >> 62)
    {
      goto LABEL_4;
    }

    v83 = v7;
    v13 = *(v110 + 32);
    v94 = v109;
    v95 = v110;
    v96 = v115;
    v14 = *(*(v110 + 32) + 16);
    MEMORY[0x28223BE20](result);
    v82[2] = v15;
    outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v109, &v100);

    result = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v82, 0, v14);
    v84 = v2;
    v16 = *(v13 + 16);
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = 0;
    v91 = result;
    v92 = v13;
    while (2)
    {
      v86 = v6;
      v18 = 3 * v17;
      v19 = 32 * v17++;
      v20 = 16 * v18;
      while (1)
      {
        v21 = v17 - 1;
        if (v17 - 1 >= v16)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v22 = *(result + 16);
        if (v21 == v22)
        {

          v6 = v86;
          goto LABEL_31;
        }

        if (v21 >= v22)
        {
          goto LABEL_64;
        }

        v23 = *(v13 + v19 + 32);
        v24 = *(v13 + v19 + 40);
        v25 = *(v13 + v19 + 48);
        v26 = *(v13 + v19 + 56);
        v27 = *(result + v20 + 32);
        v28 = *(result + v20 + 40);
        v29 = *(result + v20 + 48);
        v30 = *(result + v20 + 56);
        v31 = *(result + v20 + 64);
        v32 = *(result + v20 + 72);
        *&v100 = v23;
        *(&v100 + 1) = v24;
        *&v101 = v25;
        BYTE8(v101) = v26;
        *(&v88 + 1) = v28;
        v89 = v27;
        *&v102 = v27;
        *(&v102 + 1) = v28;
        *&v103[0] = v29;
        *(&v103[0] + 1) = v30;
        *&v103[1] = v31;
        BYTE8(v103[1]) = v32;
        v90 = v23;
        if (v23 != v29)
        {
          goto LABEL_16;
        }

        if (v24 == v30)
        {
          if (v25 != v31)
          {
            v85 = v90;
            goto LABEL_58;
          }
        }

        else
        {
LABEL_16:
          LODWORD(v88) = v26;
          v33 = v32;
          v34 = v31;
          v85 = v29;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v31 = v34;
            v32 = v33;
            LOBYTE(v26) = v88;
LABEL_58:
            *&v94 = 0;
            *(&v94 + 1) = 0xE000000000000000;
            v79 = v31;

            _StringGuts.grow(_:)(23);
            v106[0] = v94;
            MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2E350);
            *&v94 = v90;
            *(&v94 + 1) = v24;
            v95 = v25;
            LOBYTE(v96) = v26;
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x266771550](32, 0xE100000000000000);
            *&v94 = v89;
            *(&v94 + 1) = *(&v88 + 1);
            v95 = v85;
            *&v96 = v30;
            *(&v96 + 1) = v79;
            v97 = v32;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMR);
            _print_unlocked<A, B>(_:_:)();
            v80 = v106[0];
            lazy protocol witness table accessor for type APIError and conformance APIError();
            swift_allocError();
            *v81 = v80;
            *(v81 + 16) = 7;
            swift_willThrow();

            outlined destroy of [Input](&v100, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);

            return outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v109);
          }

          v31 = v34;
          v64 = v25 == v34;
          v32 = v33;
          LOBYTE(v26) = v88;
          if (!v64)
          {
            goto LABEL_58;
          }
        }

        if (v26)
        {
          break;
        }

        outlined destroy of [Input](&v100, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
        result = v91;
        v13 = v92;
        v16 = *(v92 + 16);
        v20 += 48;
        v19 += 32;
        v64 = v17++ == v16;
        if (v64)
        {
          v6 = v86;
          goto LABEL_30;
        }
      }

      v6 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v6;
      v13 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        v6 = v98;
      }

      v37 = *(v6 + 16);
      v36 = *(v6 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v6 = v98;
      }

      *(v6 + 16) = v37 + 1;
      v38 = (v6 + 80 * v37);
      v38[2] = v100;
      v39 = v101;
      v40 = v102;
      v41 = v103[0];
      *(v38 + 89) = *(v103 + 9);
      v38[4] = v40;
      v38[5] = v41;
      v38[3] = v39;
      v16 = *(v13 + 16);
      result = v91;
      if (v16 != v17)
      {
        continue;
      }

      break;
    }

LABEL_30:

LABEL_31:

    v89 = *(v6 + 16);
    if (v89)
    {
      break;
    }

LABEL_3:

    result = outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v109);
    v7 = v83;
    v2 = v84;
    v5 = v116;
    v6 = MEMORY[0x277D84F90];
LABEL_4:
    if (!v7)
    {
      return result;
    }
  }

  v42 = 0;
  v90 = v6 + 32;
  v86 = v6;
  while (v42 < *(v6 + 16))
  {
    v43 = (v90 + 80 * v42);
    v44 = v43[1];
    v45 = v43[2];
    v46 = *(v43 + 57);
    v107[0] = v43[3];
    *(v107 + 9) = v46;
    v47 = *v43;
    v106[1] = v44;
    v106[2] = v45;
    v106[0] = v47;
    v48 = v107[0];
    outlined init with copy of [Input](v106, &v100, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
    v88 = v48;
    result = specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(v48, *(&v48 + 1), &v109, v87, v108);
    v49 = v108[0];
    v50 = *(v108[0] + 2);
    if (v50)
    {
      v91 = v42;
      v51 = 0;
      v52 = v108[0] + 32;
      v53 = v116;
      v54 = v93;
      while (v51 < *(v49 + 2))
      {
        v55 = *(v52 + 3);
        v56 = *(v52 + 4);
        v57 = *(v52 + 12);
        v104 = *(v52 + 5);
        v58 = *(v52 + 1);
        v59 = *(v52 + 2);
        v100 = *v52;
        v101 = v58;
        v105 = v57;
        v103[0] = v55;
        v103[1] = v56;
        v102 = v59;
        if (*(&v104 + 1) >= v54)
        {
          goto LABEL_62;
        }

        v60 = (v53 + 88 * *(&v104 + 1));
        v61 = v60[2];
        if (!(v61 >> 62))
        {
          v62 = *(v61 + 16);
          v63 = *(v61 + 24);
          v64 = v62 == 0x656D756772615F5FLL && v63 == 0xEB0000000073746ELL;
          if (!v64)
          {
            v65 = v60[4];
            v92 = v60[3];
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((result & 1) == 0 && (v62 != 0x746C757365725F5FLL || v63 != 0xE900000000000073))
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                if (v105 >= v93)
                {
                  goto LABEL_66;
                }

                v67 = *(&v103[0] + 1);
                v68 = *&v103[1];
                v69 = (v116 + 88 * v105);
                v70 = v69[2];
                v71 = v69[3];
                v72 = v69[4];
                v98 = 0;
                v99 = 0xE000000000000000;

                outlined init with copy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(&v100, &v94);

                _StringGuts.grow(_:)(33);

                *&v94 = v67;
                *(&v94 + 1) = v68;
                MEMORY[0x266771550](544108320, 0xE400000000000000);

                MEMORY[0x266771550](v71, v72);

                MEMORY[0x266771550](0xD000000000000016, 0x8000000265F2E370);

                MEMORY[0x266771550](v92, v65);

                MEMORY[0x266771550](46, 0xE100000000000000);
                v73 = v94;
                lazy protocol witness table accessor for type APIError and conformance APIError();
                swift_allocError();
                *v74 = v73;
                *(v74 + 16) = 19;
                swift_willThrow();

                outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v108);
                outlined destroy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(&v100);
                goto LABEL_56;
              }
            }

            v53 = v116;
            v54 = v93;
          }
        }

        ++v51;
        v52 += 104;
        if (v50 == v51)
        {
          v6 = v86;
          v42 = v91;
          if (v108[14] >> 62 == 2)
          {
            goto LABEL_34;
          }

          v100 = v88;

          MEMORY[0x266771550](544108320, 0xE400000000000000);
          v75 = v108[4];
          v76 = v108[5];

          MEMORY[0x266771550](v75, v76);

          v77 = v100;
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v78 = v77;
          *(v78 + 16) = 19;
          swift_willThrow();
          outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v108);
LABEL_56:

          outlined destroy of [Input](v106, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
          return outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v109);
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_34:
    ++v42;
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v108);
    result = outlined destroy of [Input](v106, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
    if (v42 == v89)
    {
      goto LABEL_3;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized (uint64_t *a1)
{
  v1 = *a1;
  return swift_unknownObjectRelease();
}

{
  v1 = *a1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t specialized TopologicalSort.Path.isMaterialUniform.getter(unint64_t result, uint64_t a2)
{
  if (result >> 62)
  {
    v10 = result;
    v11 = __CocoaSet.count.getter();
    result = v10;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x266772030](0, result);
LABEL_6:
    v4 = v3;
    v5 = *&v3[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v7 = *(a2 + OBJC_IVAR___SGGraph_argumentsNode);
      type metadata accessor for SGNode();
      v8 = v7;
      v9 = static NSObject.== infix(_:_:)();

      return v9 & 1;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t specialized TopologicalSort.Path.hasValue.getter(unint64_t a1, void *a2)
{
  result = swift_getObjectType();
  if (a1 >> 62)
  {
    v25 = result;
    v26 = __CocoaSet.count.getter();
    result = v25;
    if (!v26)
    {
      goto LABEL_26;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266772030](0, a1);
LABEL_6:
    v6 = v5;
    v7 = *&v5[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v9 = &Strong[OBJC_IVAR___SGNode_data];
      v10 = Strong[OBJC_IVAR___SGNode_data + 80] >> 6;
      if (v10)
      {
        v11 = v10 != 1;
      }

      else
      {
        v13 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 4);
        v15 = *(v9 + 5);
        v16 = *(v9 + 2);
        v17 = *(v9 + 3);
        v18 = *v9 == 0x656D756772615F5FLL && v12 == 0xEB0000000073746ELL;
        if (v18 || (v19 = *v9, v20 = *(v9 + 1), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {

          outlined copy of MaterialXAvailability(v14, v15);

          outlined consume of MaterialXAvailability(v14, v15);
          swift_beginAccess();
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = a2;
            v11 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          if (v13 == 0x746C757365725F5FLL && v12 == 0xE900000000000073)
          {
            v11 = 0;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
          }

          outlined copy of MaterialXAvailability(v14, v15);

          outlined consume of MaterialXAvailability(v14, v15);
        }
      }

      return v11 & 1;
    }

LABEL_26:
    v11 = 0;
    return v11 & 1;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *(a2 + 24);
  LOBYTE(v10) = *(a2 + 32);
  v11 = *a1;
  if (*a1 >> 62)
  {
    if (v11 < 0)
    {
      v49 = *a1;
    }

    v50 = a1;
    v51 = a3;
    v52 = __CocoaSet.count.getter();
    a3 = v51;
    v12 = v52;
    a1 = v50;
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_74:
    __break(1u);
  }

  else
  {
    v72 = a1;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = a3;
        v16 = *(v11 + 8 * v14 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }
  }

  v15 = a3;
  v16 = MEMORY[0x266772030](v14, v11);
LABEL_8:
  v17 = v16;
  v75 = OBJC_IVAR___SGEdge_from;
  v18 = *&v16[OBJC_IVAR___SGEdge_from];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_33:

    return;
  }

  v20 = Strong;
  if (Strong != v8)
  {
LABEL_10:

    return;
  }

  v21 = Strong + OBJC_IVAR___SGNode_data;
  LOBYTE(v7) = *(Strong + OBJC_IVAR___SGNode_data + 80);
  if ((v7 & 0xC0) != 0x40)
  {
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (!v33)
    {
      goto LABEL_10;
    }

    v34 = v33;
    v35 = *(v33 + OBJC_IVAR___SGGraph_argumentsNode);

    type metadata accessor for SGNode();
    v11 = v20;
    v36 = static NSObject.== infix(_:_:)();

    if ((v36 & 1) == 0)
    {

      return;
    }

    if (v10)
    {

      goto LABEL_33;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < v15[2])
    {
      v71 = v11;
      v74 = v17;
      v39 = &v15[5 * v9];
      v35 = v39[4];
      v20 = v39[5];
      v11 = v39[6];
      v73 = *&v35[OBJC_IVAR___SGNode_inputs];
      if (!(v73 >> 62))
      {
        v8 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
        v70 = v35;
        v69 = v20;
        v68 = v11;

        if (!v8)
        {
LABEL_62:

          return;
        }

        v7 = 0;
        while (1)
        {
          if ((v73 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x266772030](v7, v73);
          }

          else
          {
            if (v7 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_79;
            }

            v40 = *(v73 + 8 * v7 + 32);
          }

          v41 = v40;
          v42 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_78;
          }

          v43 = OBJC_IVAR___SGInput_type;
          swift_beginAccess();
          v44 = *&v41[v43];
          v11 = *&v74[v75];
          v45 = OBJC_IVAR___SGOutput_type;
          swift_beginAccess();
          if (v44 == *(v11 + v45))
          {
            v46 = *&v41[OBJC_IVAR___SGInput_name] == *(v11 + OBJC_IVAR___SGOutput_name) && *&v41[OBJC_IVAR___SGInput_name + 8] == *(v11 + OBJC_IVAR___SGOutput_name + 8);
            if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              swift_beginAccess();
              v47 = swift_unknownObjectWeakLoadStrong();
              if (v47)
              {
                v48 = v47;
                MEMORY[0x266771770]();
                if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v59 = *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              else
              {
              }

              return;
            }
          }

          ++v7;
          if (v42 == v8)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_83:
      v8 = __CocoaSet.count.getter();
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_83;
  }

  v74 = v17;
  v22 = *v21;
  a2 = *(v21 + 8);
  a3 = *(v21 + 16);
  a4 = *(v21 + 24);
  a5 = *(v21 + 32);
  a6 = *(v21 + 40);
  a7 = *(v21 + 48);
  v23 = *(v21 + 56);
  v24 = *(v21 + 64);
  v11 = *(v21 + 72);
  v8 = *(*(*v21 + OBJC_IVAR___SGGraph_resultsNode) + OBJC_IVAR___SGNode_inputs);
  v68 = v20;
  v69 = v24;
  v70 = *v21;
  v71 = v23;
  if (!(v8 >> 62))
  {
    v25 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_80:
  v53 = a7;
  v54 = a6;
  v55 = a5;
  v9 = a4;
  v10 = a3;
  v56 = a2;
  v57 = __CocoaSet.count.getter();
  LODWORD(a2) = v56;
  a3 = v10;
  a4 = v9;
  a5 = v55;
  a6 = v54;
  LODWORD(a7) = v53;
  LODWORD(v23) = v71;
  v25 = v57;
  v24 = v69;
  v22 = v70;
LABEL_14:
  v61 = v7;
  v60 = v11;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  outlined copy of NodeData(v22, a2, a3, a4, a5, a6, a7, v23, v24, v11, v7);

  if (v25)
  {
    v26 = 0;
    v73 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v73)
      {
        v27 = MEMORY[0x266772030](v26, v8);
      }

      else
      {
        v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26 >= v14)
        {
          goto LABEL_73;
        }

        v27 = *(v8 + 8 * v26 + 32);
      }

      v9 = v27;
      v11 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v28 = v25;
      v29 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      v10 = *(v9 + v29);
      v30 = *&v74[v75];
      v31 = OBJC_IVAR___SGOutput_type;
      swift_beginAccess();
      if (v10 == *(v30 + v31))
      {
        v32 = *(v9 + OBJC_IVAR___SGInput_name) == *(v30 + OBJC_IVAR___SGOutput_name) && *(v9 + OBJC_IVAR___SGInput_name + 8) == *(v30 + OBJC_IVAR___SGOutput_name + 8);
        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++v26;
      v25 = v28;
      if (v11 == v28)
      {
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (!v37)
    {
      outlined consume of NodeData(v70, v62, v63, v64, v65, v66, v67, v71, v69, v60, v61);

      goto LABEL_36;
    }

    v38 = v37;
    MEMORY[0x266771770]();
    if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v58 = *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined consume of NodeData(v70, v62, v63, v64, v65, v66, v67, v71, v69, v60, v61);
  }

  else
  {
LABEL_35:

    outlined consume of NodeData(v70, v62, v63, v64, v65, v66, v67, v71, v69, v60, v61);
LABEL_36:
  }
}

void specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = *a2;
  v10 = *(a2 + 24);
  LODWORD(v11) = *(a2 + 32);
  v12 = *a1;
  if (*a1 >> 62)
  {
    if (v12 < 0)
    {
      v58 = *a1;
    }

    v59 = v8;
    v60 = a3;
    v61 = a4;
    v62 = a5;
    v13 = __CocoaSet.count.getter();
    a5 = v62;
    a4 = v61;
    a3 = v60;
    v8 = v59;
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_81:
    __break(1u);
  }

  else
  {
    v85 = v8;
    if ((v12 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = a4;
        v17 = a3;
        v18 = *(v12 + 8 * v15 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  v16 = a4;
  v17 = a3;
  v18 = MEMORY[0x266772030]();
LABEL_8:
  v87 = OBJC_IVAR___SGEdge_from;
  v19 = *&v18[OBJC_IVAR___SGEdge_from];
  v20 = v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v88 = v20;
  if (Strong != v9)
  {
    v22 = Strong;

    return;
  }

  v23 = Strong + OBJC_IVAR___SGNode_data;
  v24 = *(Strong + OBJC_IVAR___SGNode_data + 80);
  if ((v24 & 0xC0) != 0x40)
  {
    v35 = Strong;
    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (!v36)
    {
      goto LABEL_35;
    }

    v37 = v36;
    v38 = *(v36 + OBJC_IVAR___SGGraph_argumentsNode);

    type metadata accessor for SGNode();
    v12 = v35;
    v39 = static NSObject.== infix(_:_:)();

    v84 = v12;
    if ((v39 & 1) == 0)
    {
LABEL_35:
      v41 = v16(v35);
      if (v41)
      {
        v42 = v41;
        swift_beginAccess();
        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;
          MEMORY[0x266771770]();
          if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v70 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return;
        }
      }

      return;
    }

    if (v11)
    {
      v40 = v12;
LABEL_46:

      return;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < v17[2])
    {
      v47 = &v17[5 * v10];
      v35 = v47[4];
      v16 = v47[5];
      v12 = v47[6];
      v86 = *&v35[OBJC_IVAR___SGNode_inputs];
      if (!(v86 >> 62))
      {
        v9 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
        v83 = v35;
        v82 = v16;
        v81 = v12;

        if (!v9)
        {
LABEL_69:

          return;
        }

        v48 = 0;
        while (1)
        {
          if ((v86 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x266772030](v48, v86);
          }

          else
          {
            if (v48 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_86;
            }

            v49 = *(v86 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_85;
          }

          v52 = OBJC_IVAR___SGInput_type;
          swift_beginAccess();
          v53 = *&v50[v52];
          v12 = *&v88[v87];
          v54 = OBJC_IVAR___SGOutput_type;
          swift_beginAccess();
          if (v53 == *(v12 + v54))
          {
            v55 = *&v50[OBJC_IVAR___SGInput_name] == *(v12 + OBJC_IVAR___SGOutput_name) && *&v50[OBJC_IVAR___SGInput_name + 8] == *(v12 + OBJC_IVAR___SGOutput_name + 8);
            if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              swift_beginAccess();
              v56 = swift_unknownObjectWeakLoadStrong();
              if (v56)
              {
                v57 = v56;
                MEMORY[0x266771770]();
                if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v72 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              else
              {
              }

              return;
            }
          }

          ++v48;
          if (v51 == v9)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_90:
      v9 = __CocoaSet.count.getter();
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_90;
  }

  v7 = *v23;
  a2 = *(v23 + 8);
  a3 = *(v23 + 16);
  a4 = *(v23 + 24);
  a5 = *(v23 + 32);
  a6 = *(v23 + 40);
  a7 = *(v23 + 48);
  v25 = *(v23 + 56);
  v12 = *(v23 + 64);
  v26 = *(v23 + 72);
  v9 = *(*(*v23 + OBJC_IVAR___SGGraph_resultsNode) + OBJC_IVAR___SGNode_inputs);
  v81 = Strong;
  v82 = v26;
  LODWORD(v84) = v25;
  LOBYTE(v83) = *(Strong + OBJC_IVAR___SGNode_data + 80);
  if (v9 >> 62)
  {
LABEL_87:
    v63 = a7;
    v64 = a6;
    v65 = a5;
    v66 = a4;
    v67 = a3;
    v68 = a2;
    v10 = v7;
    v69 = __CocoaSet.count.getter();
    v26 = v82;
    v24 = v83;
    v7 = v10;
    LODWORD(a2) = v68;
    a3 = v67;
    a4 = v66;
    a5 = v65;
    a6 = v64;
    LODWORD(a7) = v63;
    LODWORD(v25) = v84;
    v27 = v69;
    goto LABEL_16;
  }

  v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  v73 = v12;
  v74 = v7;
  v75 = a2;
  v76 = a3;
  v77 = a4;
  v78 = a5;
  v79 = a6;
  v80 = a7;
  outlined copy of NodeData(v7, a2, a3, a4, a5, a6, a7, v25, v12, v26, v24);

  if (v27)
  {
    v11 = 0;
    v86 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v86)
      {
        v28 = MEMORY[0x266772030](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v28 = *(v9 + 8 * v11 + 32);
      }

      v29 = v28;
      v30 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v31 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      v32 = *&v29[v31];
      v33 = *&v88[v87];
      v10 = OBJC_IVAR___SGOutput_type;
      swift_beginAccess();
      if (v32 == *(v33 + v10))
      {
        v34 = *&v29[OBJC_IVAR___SGInput_name] == *(v33 + OBJC_IVAR___SGOutput_name) && *&v29[OBJC_IVAR___SGInput_name + 8] == *(v33 + OBJC_IVAR___SGOutput_name + 8);
        if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++v11;
      if (v30 == v27)
      {
        goto LABEL_40;
      }
    }

    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (!v45)
    {
      outlined consume of NodeData(v74, v75, v76, v77, v78, v79, v80, v84, v73, v82, v83);

      goto LABEL_41;
    }

    v46 = v45;
    MEMORY[0x266771770]();
    if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v71 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined consume of NodeData(v74, v75, v76, v77, v78, v79, v80, v84, v73, v82, v83);
    v40 = v81;
    goto LABEL_46;
  }

LABEL_40:

  outlined consume of NodeData(v74, v75, v76, v77, v78, v79, v80, v84, v73, v82, v83);
LABEL_41:
}

void specialized conditionallyInsertDiscardNode(from:in:)(char *a1, id a2, char *a3, void *a4, void *a5)
{
  v6 = &a1[OBJC_IVAR___SGNode_data];
  if (a1[OBJC_IVAR___SGNode_data + 80] > 0x3Fu)
  {
    v26 = &a1[OBJC_IVAR___SGNode_name];
LABEL_19:
    v28 = *v26;
    v27 = *(v26 + 1);
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v29 = v28;
    *(v29 + 8) = v27;
    *(v29 + 16) = 10;
    swift_willThrow();

    return;
  }

  v7 = v5;
  v10 = *v6;
  v11 = v6[1];

  v12 = specialized Surface.init(nodeDefID:)(v10, v11);
  if (v12 > 2)
  {
    if (v12 == 4)
    {
      return;
    }

    v26 = &a1[OBJC_IVAR___SGNode_name];
    goto LABEL_19;
  }

  v13 = a4[2];
  v14 = a1;
  if (!v13)
  {
LABEL_34:
    v52 = v14;
    v50 = MEMORY[0x277D84F90];
    v51 = v14;
LABEL_35:
    v53 = a5;
    v54 = specialized TopologicalSort.Path.hasValue.getter(v50, v53);

    if ((v54 & 1) == 0)
    {
      return;
    }

    v55 = v51;
    v56 = specialized SGGraph.edgeConnected(toInputNamed:on:)(0x7974696361706FLL, 0xE700000000000000, v51);
    if (!v56)
    {
      return;
    }

    v57 = v56;
    v58 = specialized SGGraph.edgeConnected(toInputNamed:on:)(0xD000000000000010, 0x8000000265F2E2F0, v55);
    if (!v58)
    {

      return;
    }

    v85 = a2;
    a2 = *(v55 + OBJC_IVAR___SGNode_inputs);
    v88 = v58;
    a3 = v57;
    if (a2 >> 62)
    {
      v42 = __CocoaSet.count.getter();
      if (v42)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v42 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
LABEL_40:
        v59 = 0;
        a4 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x266772030](v59, a2);
          }

          else
          {
            if (v59 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }

            v60 = *(a2 + v59 + 4);
          }

          v32 = v60;
          v61 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v62 = *&v60[OBJC_IVAR___SGInput_name] == 0x7974696361706FLL && *&v60[OBJC_IVAR___SGInput_name + 8] == 0xE700000000000000;
          if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v59;
          if (v61 == v42)
          {
            goto LABEL_78;
          }
        }

        v64 = static MaterialXNodeTokens.discardNodeID;
        v63 = off_280042378;
        v65 = one-time initialization token for shared;

        if (v65 != -1)
        {
          swift_once();
        }

        v66 = specialized static SGNode.create(nodeDefName:name:store:)(v64, v63, 0xD000000000000019, 0x8000000265F2E4A0, static BuiltInDefinitionStore.shared);
        a4 = v88;
        v67 = v57;
        if (v7)
        {

          return;
        }

        v68 = v66;

        v69 = v85;
        SGGraph.remove(edge:)(a3);
        SGGraph.remove(edge:)(v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        inited = swift_initStackObject();
        inited[1] = xmmword_265F20CD0;
        *(inited + 4) = v68;
        v42 = (inited + 2);
        a2 = v68;
        v95.value._rawValue = inited;
        SGGraph.insert(_:)(v95);
        v7 = v70;
        if (v70)
        {

          swift_setDeallocating();
          v71 = *(inited + 2);
          swift_arrayDestroy();
          return;
        }

        swift_setDeallocating();
        v72 = *(inited + 2);
        swift_arrayDestroy();
        v73 = *(a2 + OBJC_IVAR___SGNode_outputs);
        if ((v73 & 0xC000000000000001) == 0)
        {
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v74 = *(v73 + 32);
            goto LABEL_63;
          }

          __break(1u);
          goto LABEL_84;
        }

LABEL_82:
        v74 = MEMORY[0x266772030](0);
LABEL_63:
        v59 = v74;
        v42 = v32;
        SGGraph.connect(_:to:)(v59, v32);
        if (v7)
        {

LABEL_76:
          return;
        }

LABEL_67:
        v67 = a4;

        v68 = &OBJC_IVAR___SGEdge_from;
        inited = a3;
        v69 = *&a3[OBJC_IVAR___SGEdge_from];
        a4 = OBJC_IVAR___SGNode_inputs;
        v75 = *(a2 + OBJC_IVAR___SGNode_inputs);
        if ((v75 & 0xC000000000000001) == 0)
        {
          if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_86;
          }

          v76 = *(v75 + 32);
LABEL_70:
          v77 = v76;
          SGGraph.connect(_:to:)(v69, v76);

          if (v7)
          {

            goto LABEL_76;
          }

          v69 = *&v67[*v68];
          v78 = *(a4 + a2);
          if ((v78 & 0xC000000000000001) == 0)
          {
            if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              __break(1u);
              goto LABEL_88;
            }

            v79 = *(v78 + 40);
            goto LABEL_75;
          }

LABEL_86:
          v79 = MEMORY[0x266772030](1);
LABEL_75:
          v80 = v79;
          SGGraph.connect(_:to:)(v69, v79);

          goto LABEL_76;
        }

LABEL_84:
        v76 = MEMORY[0x266772030](0);
        goto LABEL_70;
      }
    }

LABEL_78:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v81 = xmmword_265F20CF0;
    *(v81 + 16) = 24;
    swift_willThrow();

    return;
  }

  v15 = 0;
  v16 = a4 + 8;
  v83 = a4[2];
  v84 = a2;
  while (1)
  {
    v18 = *(v16 - 4);
    v17 = *(v16 - 3);
    if (v18 != v14 || v17 != a2)
    {
      goto LABEL_6;
    }

    v20 = *(v16 - 2);
    if (!v20)
    {
      break;
    }

    if (a3)
    {
      type metadata accessor for SGNode();
      v21 = v14;
      v86 = v18;
      v22 = v17;
      v23 = v20;
      v24 = a3;
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        goto LABEL_22;
      }

      v13 = v83;
      a2 = v84;
      v14 = a1;
    }

LABEL_6:
    ++v15;
    v16 += 40;
    if (v13 == v15)
    {
      goto LABEL_34;
    }
  }

  if (a3)
  {
    goto LABEL_6;
  }

  v30 = v14;
LABEL_22:
  v31 = MEMORY[0x266771450](0xD000000000000010, 0x8000000265F2E2F0);
  v32 = a1;
  v33 = [a1 inputNamed_];

  if (!v33)
  {

    a2 = v84;
    v14 = a1;
    goto LABEL_34;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2 = v84;
  if (!Strong)
  {

    v14 = a1;
    goto LABEL_34;
  }

  v35 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v35 < 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v83 < v35)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v36 = Strong;
  v37 = ~v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_265F20CD0;
  *(v38 + 32) = v36;
  v94 = v38;

  v90 = v36;
  while (1)
  {
    v40 = *(v16 - 3);
    v41 = *v16;
    v91[0] = *(v16 - 4);
    v39 = v91[0];
    v91[1] = v40;
    v92 = *(v16 - 1);
    v93 = v41;
    v42 = v92;
    a2 = v39;
    inited = v40;
    specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(&v94, v91, a4, v44, v45, v46, v47);
    if (v7)
    {
      break;
    }

    v16 -= 40;
    if (__CFADD__(v37++, 1))
    {
      v49 = v94;

      v50 = specialized Sequence.reversed()(v49);

      a2 = v84;
      v51 = a1;
      goto LABEL_35;
    }
  }

LABEL_88:

  __break(1u);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for closure #1 in closure #2 in inferShaderHasCustomUniform(from:shaderType:)(uint64_t result)
{
  v2 = *(result + OBJC_IVAR___SGNode_data + 80);
  if ((v2 & 0xC0) == 0x80 && (v2 & 0x3F) == 6 && *(result + OBJC_IVAR___SGNode_data) == 13)
  {
    **(v1 + 16) = 1;
  }

  return result;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC11ShaderGraph13TextureSourceO_SayAG05TypedF0VGTt1g504_s11d12Graph23inferf23Assignments4fromSayAA05h24D0VGAA7SGGraphC_tKFAA0D6G9OAEXEfU2_Tf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v6 = *(i - 3);
    v5 = *(i - 2);
    v7 = *(i - 8);
    v8 = *i;
    outlined copy of TextureSource();
    outlined copy of TextureSource();

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, 1);
      v1 = v32;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v30 = v8;
      outlined consume of TextureSource();
      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v31 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v17 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[32 * v21];
      *(v4 + 4) = v6;
      *(v4 + 5) = v5;
      v4[48] = v7;
      *(v4 + 7) = v30;
      v2 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph12TypedTextureVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph12TypedTextureVGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_265F1F670;
      *(v24 + 32) = v6;
      *(v24 + 40) = v5;
      *(v24 + 48) = v7;
      *(v24 + 56) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = v1[6] + 24 * v10;
      *v25 = v6;
      *(v25 + 8) = v5;
      *(v25 + 16) = v7;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #5 in inferTextureAssignments(from:)(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 56;
  v20 = result + 56;
  v21 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = (v3 + 32 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v22 = v1 + 1;
    v5 = *v4;
    v6 = *(v4 - 8);
    v8 = *(v4 - 3);
    v7 = *(v4 - 2);

    outlined copy of TextureSource();
    v9 = MetalDataType.textureBaseTypeName()();
    outlined consume of TextureSource();

    ++v1;
    v4 += 4;
    if (v9.value._object)
    {
      v10 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
        v10 = result;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v12 + 1;
      v21 = v10;
      *(v10 + 16 * v12 + 32) = v9;
      v1 = v22;
      v3 = v20;
      goto LABEL_2;
    }
  }

  v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v13);

  v15 = *(v14 + 16);

  if (v15 <= 1)
  {
  }

  _StringGuts.grow(_:)(66);
  MEMORY[0x266771550](0xD000000000000040, 0x8000000265F2E390);
  v16 = MEMORY[0x2667717B0](v21, MEMORY[0x277D837D0]);
  v18 = v17;

  MEMORY[0x266771550](v16, v18);

  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v19 = 0;
  *(v19 + 8) = 0xE000000000000000;
  *(v19 + 16) = 20;
  return swift_willThrow();
}

uint64_t specialized inferContainsPrereleaseNodes(in:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2 + OBJC_IVAR___SGNode_data;
      v5 = *(v3 + 48);
      v4 = *(v3 + 64);
      v6 = *(v3 + 80);
      v12 = *(v3 + 32);
      v7 = *(v3 + 16);
      v11[0] = *v3;
      v11[1] = v7;
      v15 = v6;
      v13 = v5;
      v14 = v4;
      if (!(v6 >> 6))
      {
        v8 = v12;
        outlined init with copy of NodeData(v11, &v10);
        outlined copy of MaterialXAvailability(v8, *(&v8 + 1));

        outlined consume of MaterialXAvailability(v8, *(&v8 + 1));
        if (*(&v8 + 1) == 3)
        {
          return 1;
        }

        outlined consume of MaterialXAvailability(v8, *(&v8 + 1));
      }

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures()
{
  result = lazy protocol witness table cache variable for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures;
  if (!lazy protocol witness table cache variable for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TopologicalSort.Path(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TopologicalSort.Path(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LightSpillNodeFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LightSpillNodeFeatures(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined copy of MaterialXAvailability(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t outlined consume of MaterialXAvailability(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

id outlined copy of NodeData(id result, int a2, void *a3, id a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {

      return outlined copy of SGDataTypeStorage(a3, a4, a5, a6, a7, a8, a9, a10, a11 & 0x3F);
    }
  }

  else if (v11)
  {

    return result;
  }

  else
  {

    return outlined copy of MaterialXAvailability(a5, a6);
  }

  return result;
}

void outlined consume of NodeData(void *a1, int a2, void *a3, id a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {

      outlined consume of SGDataTypeStorage(a3, a4, a5, a6, a7, a8, a9, a10, a11 & 0x3F);
    }
  }

  else if (v11)
  {
  }

  else
  {

    outlined consume of MaterialXAvailability(a5, a6);
  }
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

void *SGREMaterialCompilationOptions.workingColorSpace.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace);
  v2 = v1;
  return v1;
}

uint64_t SGREMaterialCompilationOptions.enableFailedCompileMaterial.getter()
{
  v1 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGREMaterialCompilationOptions.enableFailedCompileMaterial.setter(char a1)
{
  v3 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SGREMaterialCompilationOptions.useTier1Fallback(with:)(void *a1)
{
  if (![a1 argumentBuffersSupport] || (*(v1 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) != 0)
  {
    return 1;
  }

  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DebugConfig.tier1SupportOverrideEnabled;
}

id SGREMaterialCompilationOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGREMaterialCompilationOptions.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v0[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v0[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SGREMaterialCompilationOptions.__allocating_init(workingColorSpace:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v3[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v3[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SGREMaterialCompilationOptions.init(workingColorSpace:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v1[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v1[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SGREMaterialCompilationOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MaterialCodingContainer.CodingKeys()
{
  v1 = 0x6870617267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialCodingContainer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MaterialCodingContainer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaterialCodingContainer.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    type metadata accessor for SGGraph();
    lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = a4;
    v15 = 2;
    type metadata accessor for SGMaterialConfiguration();
    lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGMaterialConfiguration and conformance SGMaterialConfiguration, type metadata accessor for SGMaterialConfiguration);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void protocol witness for Decodable.init(from:) in conformance MaterialCodingContainer(uint64_t *a1@<X0>, void *a2@<X8>)
{
  specialized MaterialCodingContainer.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
  }
}

void specialized MaterialCodingContainer.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v13) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    if (v9 == 1)
    {
      type metadata accessor for SGGraph();
      HIBYTE(v12) = 1;
      lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      type metadata accessor for SGMaterialConfiguration();
      HIBYTE(v12) = 2;
      lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGMaterialConfiguration and conformance SGMaterialConfiguration, type metadata accessor for SGMaterialConfiguration);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v4 + 8))(v7, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return;
    }

    v10 = v9;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = 1;
    *(v11 + 16) = 12;
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialCodingContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for MaterialCodingContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized MaterialCodingContainer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6870617267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000265F2E600 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t lazy protocol witness table accessor for type SGGraph and conformance SGGraph(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall OrderedSet.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 != a2)
  {
    v4 = v3;
    v5 = v2;
    v8 = *(v2 + 16);
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    MutableCollection.swapAt(_:_:)();
    if (*v3)
    {
      OrderedSet._ensureUnique()();
      v9 = *v3;
      if (*v4)
      {
        v10 = *(v5 + 24);
        v11 = *v4;

        closure #1 in OrderedSet.swapAt(_:_:)((v9 + 16), v9 + 32, v4, a1, a2, v8);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t closure #1 in OrderedSet.swapAt(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v18 = *(v17 + 8);
  v32 = v19;
  ContiguousArray.subscript.getter();
  v20 = *(a3 + 8);
  v31 = a5;
  ContiguousArray.subscript.getter();
  v21 = *a1;
  v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *a1;
  v24 = 1 << *a1;
  v25 = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = 1 << *a1;
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (!v27)
    {
      _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v25 & v22, v31, v28 & result, v32, a1, v33);
      v29 = *(v10 + 8);
      v29(v13, a6);
      return (v29)(v16, a6);
    }
  }

  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.swapBucketValues<A>(for:withCurrentValue:and:withCurrentValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *a5;
  v13 = 1 << *a5;
  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = 1 << *a5;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v14 & v11, a2, v17 & result, a4, a5, a6);
}

void OrderedSet._partition(by:callback:)(uint64_t (*a1)(char *), uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (*v5)
  {
    OrderedSet._ensureUnique()();
    v11 = *v5;
    if (*v5)
    {
      v12 = *(a5 + 16);
      v13 = *(a5 + 24);
      v14 = *v5;

      closure #1 in OrderedSet._partition(by:callback:)((v11 + 16), v11 + 32, a1, a2, a3, a4, &v16, v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = *(a5 + 16);
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    swift_getWitnessTable();
    MutableCollection<>.partition(by:)();
  }
}

uint64_t closure #1 in OrderedSet._partition(by:callback:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  type metadata accessor for ContiguousArray();
  result = ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:)();
  if (!v8)
  {
    if (v19 == 1)
    {
      WitnessTable = swift_getWitnessTable();
      v14 = swift_getWitnessTable();
      return MutableCollection<>._partition(with:by:callback:)(a1, a2, a3, a4, a5, a6, WitnessTable, a7, v14, a8);
    }

    else
    {
      *a7 = v18;
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in OrderedSet._partition(by:callback:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  type metadata accessor for UnsafeMutableBufferPointer();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  result = MutableCollection<>._partition(with:by:callback:)(a1, a2, a3, a4, a5, a6, WitnessTable, &v19, v14, a8);
  if (!v18)
  {
    *a7 = v19;
  }

  return result;
}

uint64_t MutableCollection<>._partition(with:by:callback:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v12 = v10;
  v80 = a6;
  v79 = a5;
  v96 = a3;
  v97 = a4;
  v78 = a2;
  v82 = a1;
  v87 = a8;
  v83 = a7;
  v13 = *(a7 + 8);
  v14 = *(v13 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  v15 = *(v94 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v85 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v71 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v20);
  v90 = &v71 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v89 = *(v24 - 8);
  v25 = *(v89 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v81 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v71 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - v31;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v93 = v13;
  v33 = *(swift_getAssociatedConformanceWitness() + 8);
  v101 = v32;
  v99 = v24;
  v95 = v33;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
LABEL_2:
    v34 = v89;
LABEL_16:
    v68 = v99;
    (*(v34 + 8))(v30, v99);
    return (*(v34 + 32))(v87, v101, v68);
  }

  else
  {
    v76 = v22;
    v35 = (v94 + 16);
    v75 = a10;
    v84 = a9;
    v94 += 8;
    v77 = (v89 + 8);
    v36 = v93;
    v37 = v90;
    v92 = v35;
    v88 = v30;
    while (1)
    {
      v38 = v36;
      v39 = dispatch thunk of Collection.subscript.read();
      v40 = AssociatedTypeWitness;
      v91 = *v35;
      (v91)(v37);
      v39(v100, 0);
      v41 = v96(v37);
      if (v11)
      {
        (*v94)(v37, v40);
        v69 = *v77;
        v70 = v99;
        (*v77)(v88, v99);
        return v69(v101, v70);
      }

      v42 = v41;
      v43 = *v94;
      (*v94)(v37, v40);
      if (v42)
      {
        break;
      }

      v36 = v38;
      v30 = v88;
LABEL_13:
      dispatch thunk of Collection.formIndex(after:)();
      v67 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = v90;
      v35 = v92;
      if (v67)
      {
        goto LABEL_2;
      }
    }

    v44 = *(v84 + 8);
    v45 = v76;
    v30 = v88;
    do
    {
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v34 = v89;
        goto LABEL_16;
      }

      v46 = v12;
      v47 = dispatch thunk of Collection.subscript.read();
      v48 = AssociatedTypeWitness;
      (v91)(v45);
      (v47)(v100, 0);
      LOBYTE(v47) = v96(v45);
      v43(v45, v48);
      v12 = v46;
    }

    while ((v47 & 1) != 0);
    v73 = v43;
    dispatch thunk of MutableCollection.swapAt(_:_:)();
    v49 = v81;
    dispatch thunk of Collection.startIndex.getter();
    v72 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v74 = *v77;
    v74(v49, v99);
    dispatch thunk of Collection.startIndex.getter();
    v71 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v74(v49, v99);
    v50 = dispatch thunk of Collection.subscript.read();
    v51 = v91;
    (v91)(v86);
    v50(v100, 0);
    v52 = dispatch thunk of Collection.subscript.read();
    v51(v85);
    v52(v100, 0);
    v53 = v82;
    v54 = *v82;
    v91 = dispatch thunk of Hashable._rawHashValue(seed:)();
    result = *v53;
    v56 = 1 << *v53;
    v57 = v56 - 1;
    if (__OFSUB__(v56, 1))
    {
      __break(1u);
    }

    else
    {
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v58 = 1 << *v53;
      v59 = __OFSUB__(v58, 1);
      v60 = v58 - 1;
      if (!v59)
      {
        v61 = result;
        v62 = v57 & v91;
        v63 = v71;
        v64 = v72;
        _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v62, v71, v60 & v61, v72, v53, v78);
        v65 = AssociatedTypeWitness;
        v66 = v73;
        v73(v85, AssociatedTypeWitness);
        v66(v86, v65);
        v79(v64, v63);
        v36 = v93;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a5, a6);
  for (i = v11; i; v11 = i)
  {
    v12 = -1 << *a5;
    v13 = (v12 ^ ~v11) + (a5[1] >> 6);
    if (v13 >= ~v12)
    {
      v14 = ~v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13 - v14 == a2)
    {
      break;
    }

    _HashTable.BucketIterator.advance()();
  }

  _HashTable.BucketIterator.currentValue.setter(a4, 0);
  v15 = _HashTable.UnsafeHandle._startIterator(bucket:)(a3, a5, a6);
  for (j = v15; j; v15 = j)
  {
    v16 = -1 << *a5;
    v17 = (v16 ^ ~v15) + (a5[1] >> 6);
    if (v17 >= ~v16)
    {
      v18 = ~v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17 - v18 == a4)
    {
      break;
    }

    _HashTable.BucketIterator.advance()();
  }

  return _HashTable.BucketIterator.currentValue.setter(a2, 0);
}

void OrderedSet.sort(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.sort(by:)();
  v5 = *(a3 + 24);
  type metadata accessor for OrderedSet();
  OrderedSet._regenerateExistingHashTable()();
}

void OrderedSet<>.sort()(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.sort()();
  v3 = *(a1 + 24);
  type metadata accessor for OrderedSet();

  OrderedSet._regenerateExistingHashTable()();
}

void OrderedSet.shuffle<A>(using:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.shuffle<A>(using:)();

  OrderedSet._regenerateExistingHashTable()();
}

Swift::Void __swiftcall OrderedSet.reverse()()
{
  v1 = *(v0 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.reverse()();

  OrderedSet._regenerateHashTable()();
}

void *OrderedSet._halfStablePartition<A>(values:by:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = v6[1];
  v35 = v6 + 1;
  v15 = *(a5 + 16);
  result = ContiguousArray.count.getter();
  if (result == a2)
  {
    v32 = v6;
    v40 = 0;
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v17 = *(*v35 + 16);
    v18 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v19 = *v35 + v18;
    v38 = v19;
    v39 = v17;
    v20 = v15;
    v21 = *(a5 + 24);
    v33 = v17;
    v34 = v20;
    closure #1 in OrderedSet._halfStablePartition<A>(values:by:)(&v38, &v40, a3, a4, a1, a2, v20, a6, v21, &v37);
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(&v38, v19, v33);
    }

    else
    {
      v30 = v18;
      v31 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(&v38, v19, v33);
      v22 = v40;
      v23 = *v35;
      if (v22 >= ContiguousArray.count.getter())
      {
        return ContiguousArray.count.getter();
      }

      else
      {
        OrderedSet._ensureUnique()();
        v24 = *v32;
        *v32 = 0;
        ContiguousArray._makeMutableAndUnique()();
        v25 = v32[1];
        v26 = *(v25 + 16);
        v27 = v25 + v30;
        v38 = v25 + v30;
        v39 = v26;
        closure #2 in OrderedSet._halfStablePartition<A>(values:by:)(&v38, &v40, a3, a4, v31, a2, v24, v34, a6, v21, &v36);
        _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(&v38, v27, v26);
        v28 = v37;
        v29 = *v32;
        *v32 = v24;

        return v28;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in OrderedSet._halfStablePartition<A>(values:by:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a3;
  v45 = a5;
  v43 = a8;
  v11 = *(*(a8 - 8) + 64);
  v12 = (MEMORY[0x28223BE20])();
  v40 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v39 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = result;
  v21 = *v20;
  v38 = *(result + 8);
  if (v21 < v38)
  {
    v23 = *(v17 + 16);
    v22 = v17 + 16;
    v35 = *(v22 + 56);
    v36 = v23;
    v37 = v18;
    v33 = v18 + 8;
    v34 = v18 + 16;
    v32 = (v22 - 8);
    v31[0] = a10;
    v31[1] = v22;
    while (1)
    {
      v24 = v42;
      v25 = v39;
      v36(v39, *v41 + v35 * v21, v42);
      v26 = v37;
      v27 = v40;
      v28 = v43;
      (*(v37 + 16))(v40, v45 + *(v37 + 72) * v21, v43);
      v29 = v46;
      v30 = v44(v25, v27);
      (*(v26 + 8))(v27, v28);
      result = (*v32)(v25, v24);
      v46 = v29;
      if (v29)
      {
        *v31[0] = v46;
        return result;
      }

      if (v30)
      {
        return result;
      }

      v21 = *a2 + 1;
      if (__OFADD__(*a2, 1))
      {
        break;
      }

      *a2 = v21;
      if (v21 >= v38)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void closure #2 in OrderedSet._halfStablePartition<A>(values:by:)(void *a1, Swift::Int *a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v47 = a6;
  v62 = a5;
  v57 = a3;
  v13 = a1;
  v59 = *(a9 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](a1);
  v56 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  v22.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v55 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v24;
  v26 = *v24 + 1;
  if (__OFADD__(*v24, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v20;
  v27 = v13[1];
  if (v27 >= v26)
  {
    if (v26 == v27)
    {
LABEL_16:
      *v44 = v25;
      return;
    }

    v61 = v21;
    v43 = a11;
    v45 = a10;
    v46 = v19;
    v53 = v59 + 16;
    v54 = v58 + 16;
    v51 = v58 + 8;
    v52 = v59 + 8;
    v49 = a2;
    v50 = v13;
    v48 = v27;
    while (v26 < v27)
    {
      v30 = v58;
      v31 = *(v58 + 72);
      v60 = *v13;
      v32 = v55;
      (*(v58 + 16))(v55, v60 + v31 * v26, a8, v22);
      v33 = v59;
      v34 = *(v59 + 72);
      v35 = v61;
      v63 = v26;
      v36 = v56;
      (*(v59 + 16))(v56, v62 + v34 * v26, v61);
      v37 = v64;
      v38 = a8;
      v39 = v57(v32, v36);
      (*(v33 + 8))(v36, v35);
      v40 = v38;
      (*(v30 + 8))(v32, v38);
      v64 = v37;
      if (v37)
      {
        *v43 = v64;
        return;
      }

      if (v39)
      {
        a8 = v38;
        v28 = v49;
        v13 = v50;
        v29 = v63;
        v27 = v48;
      }

      else
      {
        v27 = v48;
        v28 = v49;
        v29 = v63;
        a8 = v40;
        UnsafeMutableBufferPointer.swapAt(_:_:)(*v49, v63);
        v41 = v61;
        UnsafeMutableBufferPointer.swapAt(_:_:)(*v28, v29);
        v13 = v50;
        if (v46)
        {
          v42 = v64;
          closure #1 in closure #2 in OrderedSet._halfStablePartition<A>(values:by:)((v46 + 16), v46 + 32, v50, v28, v29, a8, v41, v45);
          v64 = v42;
        }

        if (__OFADD__(*v28, 1))
        {
          goto LABEL_18;
        }

        ++*v28;
      }

      v26 = v29 + 1;
      if (v27 == v26)
      {
        v25 = *v28;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

uint64_t closure #1 in closure #2 in OrderedSet._halfStablePartition<A>(values:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a2;
  v40 = a8;
  v39 = a1;
  v10 = *(a6 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v19 = *v18;
  v21 = *(v20 + 72);
  v36 = *v22;
  v23 = v10[2];
  v23(&v35 - v16, v19 + v21 * v36, v24, v15);
  v37 = a5;
  (v23)(v13, v19 + v21 * a5, a6);
  v25 = v39;
  v26 = *v39;
  v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *v25;
  v29 = 1 << *v25;
  v30 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v31 = 1 << *v25;
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (!v32)
    {
      _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v30 & v27, v37, v33 & result, v36, v25, v38);
      v34 = v10[1];
      v34(v13, a6);
      return (v34)(v17, a6);
    }
  }

  __break(1u);
  return result;
}

Swift::Int OrderedSet._partition<A>(values:by:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  OrderedSet._ensureUnique()();
  v10 = *v6;
  *v6 = 0;
  v11 = *(a5 + 16);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v12 = v6[1];
  v13 = *(v12 + 16);
  v14 = v12 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80));
  v21[0] = v14;
  v21[1] = v13;
  closure #1 in OrderedSet._partition<A>(values:by:)(v21, a1, a2, a3, v10, a6, &v22, *(a5 + 24), &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v21, v14, v13);
  if (!v19)
  {
    v11 = v22;
  }

  v15 = *v6;
  *v6 = v10;

  return v11;
}

void closure #1 in OrderedSet._partition<A>(values:by:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, Swift::Int *a7@<X8>, uint64_t a8, void *a9)
{
  v10 = v9;
  v79 = a4;
  v80 = a2;
  v82 = a6;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v56 - v19;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v64 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v68 = &v56 - v26;
  v27 = *(a1 + 8);
  v66 = *v28;
  v63 = v27;
  v30 = v29;
  v70 = UnsafeMutableBufferPointer.endIndex.getter();
  v31 = 0;
  if (v70)
  {
    v61 = a9;
    v57 = a8;
    v33 = *(v21 + 16);
    v32 = v21 + 16;
    v34 = *(v32 + 56);
    v77 = v15 + 16;
    v78 = v33;
    v75 = (v32 - 8);
    v76 = v15 + 8;
    v35 = v30;
    v62 = a7;
    v81 = v30;
    v60 = a5;
    v59 = a3;
    v58 = a1;
    v67 = v15;
    v73 = v34;
    v74 = v32;
LABEL_3:
    v36 = v66 + v34 * v31;
    v37 = v31;
    v38 = v82;
    while (1)
    {
      v39 = v68;
      v40 = v35;
      v78(v68, v36, v35);
      v41 = v67;
      v42 = *(v67 + 72);
      v83 = v37;
      v72 = v42;
      v43 = v69;
      v71 = *(v67 + 16);
      v71(v69, v80 + v42 * v37, v38);
      v44 = v79(v39, v43);
      v45 = *(v41 + 8);
      v45(v43, v38);
      v46 = *v75;
      (*v75)(v39, v40);
      if (v10)
      {
        *v61 = v10;
        return;
      }

      if (v44)
      {
        break;
      }

      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      v37 = v83 + 1;
      v36 += v73;
      v35 = v81;
      v38 = v82;
      if (v83 + 1 == v70)
      {
        v31 = v70;
        a7 = v62;
        goto LABEL_20;
      }
    }

    v47 = v83;
    v85 = v83;
    v48 = v70;
    while (!__OFSUB__(v48--, 1))
    {
      if (v47 == v48)
      {
        a7 = v62;
        v31 = v83;
        goto LABEL_20;
      }

      v50 = v64;
      v78(v64, v66 + v48 * v73, v81);
      v51 = v65;
      v71(v65, v80 + v48 * v72, v82);
      v52 = v79(v50, v51);
      v45(v51, v82);
      v46(v50, v81);
      v47 = v83;
      if ((v52 & 1) == 0)
      {
        v84[0] = v48;
        v53 = v81;
        UnsafeMutableBufferPointer.swapAt(_:_:)(v83, v48);
        v70 = v48;
        v54 = v48;
        v55 = v82;
        UnsafeMutableBufferPointer.swapAt(_:_:)(v47, v54);
        a7 = v62;
        if (v60)
        {
          closure #1 in closure #1 in OrderedSet._partition<A>(values:by:)((v60 + 16), v60 + 32, v58, &v85, v84, v53, v55, v57);
        }

        v10 = 0;
        v34 = v73;
        v31 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_23;
        }

        v85 = v83 + 1;
        v35 = v81;
        if (v31 != v70)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:
    *a7 = v31;
  }
}

uint64_t closure #1 in closure #1 in OrderedSet._partition<A>(values:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a5;
  v37 = a8;
  v35 = a2;
  v10 = *(a6 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v19 = *v18;
  v21 = *(v20 + 72);
  v34 = *v22;
  v23 = v10[2];
  v23(&v34 - v16, v19 + v21 * v34, v24, v15);
  v36 = *v36;
  (v23)(v13, v19 + v36 * v21, a6);
  v25 = *a1;
  v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *a1;
  v28 = 1 << *a1;
  v29 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v30 = 1 << *a1;
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (!v31)
    {
      _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v29 & v26, v36, v32 & result, v34, a1, v35);
      v33 = v10[1];
      v33(v13, a6);
      return (v33)(v17, a6);
    }
  }

  __break(1u);
  return result;
}

void *_ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        v3 = type metadata accessor for ContiguousArray();
        return destructiveProjectEnumData for NodePersonality.ShaderType(v3);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}