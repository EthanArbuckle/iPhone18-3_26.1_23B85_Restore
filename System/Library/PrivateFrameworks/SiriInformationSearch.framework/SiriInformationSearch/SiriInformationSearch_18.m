uint64_t specialized closure #2 in QTreeFeaturiser.queryDocumentScorerHelper(documentTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v7 = a5;
  v94 = a4;
  v93 = a2;
  v9 = a1;
  v108 = *MEMORY[0x277D85DE8];
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v98 = a3 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  v92 = a6;
  v104 = a6 + OBJC_IVAR____TtC21SiriInformationSearch15QTreeFeaturiser_config;
  v14 = (v11 + 63) >> 6;
  v15 = 0;
  v105 = 0;
  v96 = a1 + 64;
  v97 = v14;
  v103 = a5;

  if (!v13)
  {
LABEL_20:
    while (1)
    {
      v36 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v36 >= v14)
      {

        v90 = *MEMORY[0x277D85DE8];
        return result;
      }

      v13 = *(v10 + 8 * v36);
      ++v15;
      if (v13)
      {
        v15 = v36;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  while (1)
  {
LABEL_24:
    v100 = v13;
    v37 = __clz(__rbit64(v13)) | (v15 << 6);
    v38 = (*(v9 + 48) + 16 * v37);
    v39 = v38[1];
    v40 = *(*(v9 + 56) + 8 * v37);
    v101 = *v38;
    String.lowercased()();
    v41 = String.lowercased()();
    v42 = *(v7 + 16);
    v102 = v39;
    v106 = v40;
    if (v42)
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v41._countAndFlagsBits, v41._object);
      v44 = v43;

      v45 = 0.0;
      if (v44)
      {
        v46 = String.lowercased()();
        if (*(v7 + 16))
        {
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(v46._countAndFlagsBits, v46._object);
          v49 = v48;

          v50 = MEMORY[0x277D84FA0];
          if (v49)
          {
            v50 = *(*(v7 + 56) + 8 * v47);
          }
        }

        else
        {

          v50 = MEMORY[0x277D84FA0];
        }

        v51 = v106;

        v52 = specialized _NativeSet.intersection(_:)(v50, v51);

        v53 = *(v52 + 16);

        v10 = v96;
        if (v53)
        {
          v45 = *(v104 + 40);
        }

        else
        {
          v45 = *(v104 + 48);
        }

        v14 = v97;
      }
    }

    else
    {

      v45 = 0.0;
    }

    if (v45 <= 0.0)
    {
      v45 = a7;
    }

    v9 = v99;
    if (v45 >= *(v98 + 40))
    {
      goto LABEL_6;
    }

    v54 = String.lowercased()();
    if (*(v93 + 16))
    {
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v54._countAndFlagsBits, v54._object);
      v57 = v56;

      v58 = MEMORY[0x277D84F90];
      if (v57)
      {
        v59 = *(*(v93 + 56) + 8 * v55);
      }
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
    }

    v60 = *(v58 + 16);
    v95 = v58;
    if (v60)
    {
      break;
    }

LABEL_5:

    v9 = v99;
    v10 = v96;
    v14 = v97;
LABEL_6:
    v13 = (v100 - 1) & v100;

    if (v45 == 0.0)
    {

      if (!v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = v94;
      swift_beginAccess();
      v17 = *v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = *v16;
      v19 = v107;
      *v16 = 0x8000000000000000;
      v20 = v102;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v101, v102);
      v23 = v19[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_69;
      }

      v27 = v22;
      if (v19[3] < v26)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v101, v20);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_73;
        }

LABEL_14:
        if ((v27 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v31 = v21;
      specialized _NativeDictionary.copy()();
      v21 = v31;
      v20 = v102;
      if ((v27 & 1) == 0)
      {
LABEL_17:
        v30 = v107;
        v107[(v21 >> 6) + 8] |= 1 << v21;
        v32 = (v30[6] + 16 * v21);
        *v32 = v101;
        v32[1] = v20;
        *(v30[7] + 8 * v21) = v45;
        v33 = v30[2];
        v25 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v25)
        {
          goto LABEL_70;
        }

        v30[2] = v34;
        goto LABEL_19;
      }

LABEL_15:
      v29 = v21;

      v30 = v107;
      *(v107[7] + 8 * v29) = v45;
LABEL_19:
      v35 = *v94;
      *v94 = v30;

      swift_endAccess();
      v14 = v97;
      if (!v13)
      {
        goto LABEL_20;
      }
    }
  }

  v61 = *(v98 + 56);
  v62 = (v58 + 40);
  while (1)
  {
    v64 = *(v62 - 1);
    v65 = *v62;
    String.lowercased()();
    v66 = String.lowercased()();
    if (*(v7 + 16))
    {
      break;
    }

LABEL_46:

    v63 = 0.0;
LABEL_47:
    if (v45 < v63)
    {
      v45 = v63;
    }

    v62 += 2;
    if (!--v60)
    {
      goto LABEL_5;
    }
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v66._countAndFlagsBits, v66._object);
  v68 = v67;

  if ((v68 & 1) == 0)
  {
    goto LABEL_46;
  }

  v69 = String.lowercased()();
  if (*(v7 + 16))
  {
    v70 = specialized __RawDictionaryStorage.find<A>(_:)(v69._countAndFlagsBits, v69._object);
    v72 = v71;

    v73 = MEMORY[0x277D84FA0];
    if (v72)
    {
      v73 = *(*(v7 + 56) + 8 * v70);
    }
  }

  else
  {

    v73 = MEMORY[0x277D84FA0];
  }

  v74 = v106;
  v75 = v106[32];
  v76 = v75 & 0x3F;
  v77 = ((1 << v75) + 63) >> 6;
  v78 = 8 * v77;
  swift_bridgeObjectRetain_n();

  if (v76 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v83 = swift_slowAlloc();

      v88 = v105;
      v85 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v83, v77, v74, v73);

      v105 = v88;
      if (v88)
      {
        goto LABEL_72;
      }

      MEMORY[0x223DE0F80](v83, -1, -1);
      goto LABEL_60;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe, v80);
  bzero(&v92 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0), v78);
  v81 = &v92 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
  v82 = v105;
  v83 = v106;
  v84 = specialized closure #1 in _NativeSet.intersection(_:)(v81, v77, v106, v73);
  v105 = v82;
  if (!v82)
  {
    v85 = v84;

    swift_bridgeObjectRelease_n();
LABEL_60:

    v7 = v103;
    v86 = v85[2];

    if (v86)
    {
      v87 = *(v104 + 40);
    }

    else
    {
      v87 = *(v104 + 48);
    }

    v63 = v61 * v87;
    goto LABEL_47;
  }

  v91 = v105;
  swift_willThrow();

  __break(1u);
LABEL_72:

  MEMORY[0x223DE0F80](v83, -1, -1);
  __break(1u);
LABEL_73:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized TokenContainer.init(queryFields:requestedType:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v56 = a2;
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v66, v6);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v13);
  v64 = *(a1 + 16);
  if (!v64)
  {
LABEL_32:

    outlined destroy of Locale?(v67);
    v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
    (*(*(v54 - 8) + 8))(v56, v54);
    return v76;
  }

  v14 = 0;
  v63 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v62 = v9 + 16;
  v61 = (v4 + 8);
  v57 = (v9 + 8);
  v70 = xmmword_2234CF920;
  v60 = a1;
  v59 = v8;
  v58 = v9;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      goto LABEL_36;
    }

    v15 = *(v9 + 72);
    v68 = v14;
    v16 = (*(v9 + 16))(v69, v63 + v15 * v14, v8);
    v17 = v65;
    MEMORY[0x223DDAEA0](v16);
    v18 = Apple_Parsec_Siri_V2alpha_AudioItemType.name.getter();
    v20 = v19;
    v21 = (*v61)(v17, v66);
    v22 = 0x6E776F6E6B6E75;
    if (v20)
    {
      v22 = v18;
    }

    v71 = v22;
    v23 = v20 ? v20 : 0xE700000000000000;
    v24 = MEMORY[0x223DDAEC0](v21);
    v26 = tokenizeString(_:unit:locale:)(v24, v25, 0, v67);

    v72 = *(v26 + 16);
    v73 = v26;
    if (v72)
    {
      break;
    }

LABEL_3:
    v14 = v68 + 1;

    v8 = v59;
    (*v57)(v69, v59);
    a1 = v60;
    v9 = v58;
    if (v14 == v64)
    {
      goto LABEL_32;
    }
  }

  v27 = 0;
  v28 = (v73 + 40);
  while (v27 < *(v73 + 16))
  {
    v32 = *(v28 - 1);
    v33 = *v28;
    v34 = String.lowercased()();
    v35 = v76;
    if (*(v76 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v34._countAndFlagsBits, v34._object);
      if (v36)
      {
        v37 = specialized Dictionary.subscript.modify(v74, v34._countAndFlagsBits, v34._object);
        if (*v38)
        {

          specialized Set._Variant.insert(_:)(&v75, v71, v23);
        }

        (v37)(v74, 0);

        goto LABEL_13;
      }

      v35 = v76;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v70;
    *(inited + 32) = v71;
    *(inited + 40) = v23;

    v40 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = v35;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v34._countAndFlagsBits, v34._object);
    v44 = v35[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_34;
    }

    v47 = v42;
    if (v35[3] >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v42)
        {
          goto LABEL_12;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v47)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v34._countAndFlagsBits, v34._object);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_37;
      }

      v43 = v48;
      if (v47)
      {
LABEL_12:

        v29 = v74[0];
        v30 = v74[0][7];
        v31 = *(v30 + 8 * v43);
        *(v30 + 8 * v43) = v40;

        v76 = v29;
        goto LABEL_13;
      }
    }

    v50 = v74[0];
    v74[0][(v43 >> 6) + 8] |= 1 << v43;
    *(v50[6] + 16 * v43) = v34;
    *(v50[7] + 8 * v43) = v40;
    v51 = v50[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_35;
    }

    v50[2] = v53;
    v76 = v50;
LABEL_13:
    ++v27;
    v28 += 2;
    if (v72 == v27)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for QTreeFeaturiser()
{
  result = type metadata singleton initialization cache for QTreeFeaturiser;
  if (!type metadata singleton initialization cache for QTreeFeaturiser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for QTreeFeaturiser()
{
  type metadata accessor for Locale?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of QTreeFeaturiser.exactMatchBoost(document:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*v1 + 184);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = v3;
  v9 = v4;
  return v5(v7);
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

uint64_t getEnumTagSinglePayload for QTreeFeaturiser.ScoringConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QTreeFeaturiser.ScoringConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Document(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Document(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

uint64_t SearchToolSearchRequestProcessorError.debugMessage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static SearchToolSearchRequestProcessorError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType()
{
  result = lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType;
  if (!lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType and conformance SearchToolSearchRequestProcessorError.SearchToolSearchRequestProcessorErrorType);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchToolSearchRequestProcessorError(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
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

  return a1;
}

uint64_t static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_project_boxed_opaque_existential_1(a4, v13);
  return specialized static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(v12, a2, a3, v15, a5, v5, v10, v13, v11, v14);
}

id closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider()
{
  type metadata accessor for LaunchServicesSatisfyingAppsDataProvider();
  swift_allocObject();
  v0 = LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(closure #1 in closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider, 0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider, type metadata accessor for LaunchServicesSatisfyingAppsDataProvider);
  return v0;
}

uint64_t closure #1 in closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider(void *a1, void *a2, unint64_t a3)
{
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v112 = *(v124 - 8);
  v6 = *(v112 + 64);
  v8 = MEMORY[0x28223BE20](v124, v7);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v101 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v113 = &v101 - v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v115 = *(v126 - 8);
  v16 = *(v115 + 64);
  v18 = MEMORY[0x28223BE20](v126, v17);
  v111 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v110 = &v101 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v114 = &v101 - v24;
  v25 = [a1 developerType];
  result = 0;
  if (v25 != 1 && a2)
  {
    v27 = a2;
    v28 = [v27 supportedMediaCategories];
    v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v28) = specialized Set.contains(_:)(0xD000000000000014, 0x80000002234E1550, v29);

    if (v28)
    {
      v30 = [v27 supportedIntents];
      v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = specialized Set.isSuperset<A>(of:)(&outlined read-only object #0 of closure #1 in closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider, v31);
      swift_arrayDestroy();

      if (v32)
      {

        return 1;
      }
    }

    v101 = v27;
    if (a3 >> 62)
    {
      goto LABEL_62;
    }

    v33 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    v34 = v101;
    if (v33)
    {
      v35 = 0;
      v128 = a3 & 0xC000000000000001;
      v123 = a3 & 0xFFFFFFFFFFFFFF8;
      v122 = a3 + 32;
      v127 = *MEMORY[0x277D23718];
      v107 = *MEMORY[0x277CB9FE0];
      v106 = *MEMORY[0x277CB9FF0];
      v105 = *MEMORY[0x277CB9FE8];
      v125 = *MEMORY[0x277D23710];
      v104 = *MEMORY[0x277CB9E18];
      v103 = *MEMORY[0x277CB9E10];
      v102 = *MEMORY[0x277CB9E08];
      v118 = xmmword_2234CF910;
      v120 = v13;
      v121 = a3;
      v119 = v33;
      while (1)
      {
        if (v128)
        {
          v36 = MEMORY[0x223DDFF80](v35, a3);
          v37 = __OFADD__(v35++, 1);
          if (v37)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v35 >= *(v123 + 16))
          {
            goto LABEL_61;
          }

          v36 = *(v122 + 8 * v35);
          v37 = __OFADD__(v35++, 1);
          if (v37)
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            v33 = __CocoaSet.count.getter();
            goto LABEL_8;
          }
        }

        v129 = v36;
        v38 = [v36 systemProtocolMetadata];
        type metadata accessor for LNSystemProtocolIdentifier(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier);
        v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v39 + 16))
        {
          goto LABEL_28;
        }

        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v127);
        if (v41)
        {
          v42 = *(*(v39 + 56) + 8 * v40);
          swift_unknownObjectRetain();

          objc_opt_self();
          v43 = swift_dynamicCastObjCClass();
          if (v43)
          {
            v117 = v42;
            v44 = [v43 searchScopes];
            v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v46 = *(v45 + 16);
            if (v46)
            {
              v130 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
              v47 = v130;
              v116 = v45;
              v48 = (v45 + 40);
              v49 = v115;
              v50 = v110;
              do
              {
                v51 = *(v48 - 1);
                v52 = *v48;

                StringSearchScope.init(rawValue:)();
                v130 = v47;
                v54 = *(v47 + 16);
                v53 = *(v47 + 24);
                if (v54 >= v53 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1);
                  v47 = v130;
                }

                *(v47 + 16) = v54 + 1;
                outlined init with take of PommesSearchReason?(v50, v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v54, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
                v48 += 2;
                --v46;
              }

              while (v46);
            }

            else
            {

              v47 = MEMORY[0x277D84F90];
              v49 = v115;
            }

            v73 = *(v47 + 16);
            v74 = lazy protocol witness table accessor for type StringSearchScope? and conformance <A> A?();
            v130 = MEMORY[0x223DDFA80](v73, v126, v74);
            v75 = *(v47 + 16);
            v76 = v114;
            if (v75)
            {
              v108 = *(v49 + 80);
              v116 = (v108 + 32) & ~v108;
              v77 = v47 + v116;
              v78 = *(v49 + 72);
              v79 = v111;
              do
              {
                outlined init with copy of MediaUserStateCenter?(v77, v76, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
                specialized Set._Variant.insert(_:)(v79, v76);
                outlined destroy of MediaUserStateCenter?(v79, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
                v77 += v78;
                --v75;
              }

              while (v75);

              v80 = v116;
            }

            else
            {

              v78 = *(v49 + 72);
              v80 = (*(v49 + 80) + 32) & ~*(v49 + 80);
            }

            v116 = v130;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents17StringSearchScopeOSgGMR);
            v81 = swift_allocObject();
            *(v81 + 16) = v118;
            v82 = type metadata accessor for StringSearchScope();
            v83 = *(v82 - 8);
            v84 = *(v83 + 104);
            v84(v81 + v80, v107, v82);
            v85 = *(v83 + 56);
            v85(v81 + v80, 0, 1, v82);
            v84(v81 + v80 + v78, v106, v82);
            v85(v81 + v80 + v78, 0, 1, v82);
            v84(v81 + v80 + 2 * v78, v105, v82);
            v85(v81 + v80 + 2 * v78, 0, 1, v82);
            v86 = specialized Set._isDisjoint<A>(with:)(v81, v116);

            swift_unknownObjectRelease();
            swift_setDeallocating();
            goto LABEL_55;
          }

          v55 = a3;
          swift_unknownObjectRelease();
        }

        else
        {
LABEL_28:
          v55 = a3;
        }

        v56 = v129;
        v57 = [v129 systemProtocolMetadata];
        v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v58 + 16))
        {
          break;
        }

        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v125);
        if ((v60 & 1) == 0)
        {

          goto LABEL_11;
        }

        v61 = *(*(v58 + 56) + 8 * v59);
        swift_unknownObjectRetain();

        objc_opt_self();
        v62 = swift_dynamicCastObjCClass();
        if (v62)
        {
          v117 = v61;
          v63 = [v62 supportedCategories];
          v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v65 = *(v64 + 16);
          if (v65)
          {
            v130 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
            v66 = v130;
            v116 = v64;
            v67 = (v64 + 40);
            v68 = v112;
            do
            {
              v69 = *(v67 - 1);
              v70 = *v67;

              VideoCategory.init(rawValue:)();
              v130 = v66;
              v72 = *(v66 + 16);
              v71 = *(v66 + 24);
              if (v72 >= v71 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1);
                v66 = v130;
              }

              *(v66 + 16) = v72 + 1;
              outlined init with take of PommesSearchReason?(v13, v66 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v72, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
              v67 += 2;
              --v65;
            }

            while (v65);
          }

          else
          {

            v66 = MEMORY[0x277D84F90];
            v68 = v112;
          }

          v87 = *(v66 + 16);
          v88 = lazy protocol witness table accessor for type VideoCategory? and conformance <A> A?();
          v130 = MEMORY[0x223DDFA80](v87, v124, v88);
          v89 = *(v66 + 16);
          v90 = v113;
          if (v89)
          {
            v108 = *(v68 + 80);
            v116 = (v108 + 32) & ~v108;
            v91 = v66 + v116;
            v92 = *(v68 + 72);
            v93 = v109;
            do
            {
              outlined init with copy of MediaUserStateCenter?(v91, v90, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
              specialized Set._Variant.insert(_:)(v93, v90);
              outlined destroy of MediaUserStateCenter?(v93, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
              v91 += v92;
              --v89;
            }

            while (v89);

            v94 = v116;
          }

          else
          {

            v92 = *(v68 + 72);
            v94 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          }

          v116 = v130;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss23_ContiguousArrayStorageCy10AppIntents13VideoCategoryOSgGMR);
          v95 = swift_allocObject();
          *(v95 + 16) = v118;
          v96 = v95 + v94;
          v97 = type metadata accessor for VideoCategory();
          v98 = *(v97 - 8);
          v99 = *(v98 + 104);
          v99(v96, v104, v97);
          v100 = *(v98 + 56);
          v100(v96, 0, 1, v97);
          v99(v96 + v92, v103, v97);
          v100(v96 + v92, 0, 1, v97);
          v99(v96 + 2 * v92, v102, v97);
          v100(v96 + 2 * v92, 0, 1, v97);
          v86 = specialized Set._isDisjoint<A>(with:)(v95, v116);

          swift_unknownObjectRelease();

          swift_setDeallocating();
LABEL_55:
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v13 = v120;
          a3 = v121;
          v33 = v119;
          if ((v86 & 1) == 0)
          {

            return 1;
          }

          goto LABEL_12;
        }

        a3 = v55;

        swift_unknownObjectRelease();
LABEL_12:
        if (v35 == v33)
        {
          v34 = v101;
          goto LABEL_58;
        }
      }

LABEL_11:
      a3 = v55;
      goto LABEL_12;
    }

LABEL_58:

    return 0;
  }

  return result;
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider;
  *(result + 24) = 0;
  return result;
}

uint64_t *SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared;
}

uint64_t static SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared.getter()
{
  type metadata accessor for SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator();

  return swift_initStaticObject();
}

uint64_t key path setter for SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.create : SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 96);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out SatisfyingAppsDataProvider), v5);
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.create.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.create.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.init()()
{
  result = v0;
  *(v0 + 16) = closure #1 in variable initialization expression of kCreateSatisfyingAppsDataProvider;
  *(v0 + 24) = 0;
  return result;
}

uint64_t one-time initialization function for intentValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV10IntentTypeOtGMd, &_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV10IntentTypeOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234CF940;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0xD000000000000011;
  *(v4 + 1) = 0x80000002234D9F00;
  v6 = *MEMORY[0x277D38CC8];
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType();
  v8 = *(*(v7 - 8) + 104);
  v8(&v4[v5], v6, v7);
  v9 = &v4[v1];
  v10 = *(v0 + 48);
  *v9 = 0xD000000000000016;
  *(v9 + 1) = 0x80000002234D9F20;
  v8(&v4[v1 + v10], *MEMORY[0x277D38CC0], v7);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static SiriKitAppInfoDataProvider.intentValues = v11;
  return result;
}

uint64_t one-time initialization function for mediaCategoryValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV19IntentMediaCategoryOtGMd, &_ss23_ContiguousArrayStorageCySS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_H10KitAppInfoV19IntentMediaCategoryOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234D4CC0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0xD000000000000014;
  *(v4 + 1) = 0x80000002234E14B0;
  v6 = *MEMORY[0x277D38CE0];
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory();
  v8 = *(*(v7 - 8) + 104);
  v8(&v4[v5], v6, v7);
  v9 = &v4[v1];
  v10 = *(v0 + 48);
  *v9 = 0xD000000000000017;
  *(v9 + 1) = 0x80000002234E14D0;
  v8(&v4[v1 + v10], *MEMORY[0x277D38D00], v7);
  v11 = &v4[2 * v1];
  v12 = *(v0 + 48);
  *v11 = 0xD000000000000019;
  *(v11 + 1) = 0x80000002234E14F0;
  v8(&v11[v12], *MEMORY[0x277D38CD0], v7);
  v13 = &v4[3 * v1];
  v14 = *(v0 + 48);
  *v13 = 0xD000000000000014;
  *(v13 + 1) = 0x80000002234E1510;
  v8(&v13[v14], *MEMORY[0x277D38CE8], v7);
  v15 = &v4[4 * v1];
  v16 = *(v0 + 48);
  *v15 = 0xD000000000000016;
  *(v15 + 1) = 0x80000002234E1530;
  v8(&v15[v16], *MEMORY[0x277D38CF8], v7);
  v17 = &v4[5 * v1];
  v18 = *(v0 + 48);
  *v17 = 0xD000000000000014;
  *(v17 + 1) = 0x80000002234E1550;
  v8(&v17[v18], *MEMORY[0x277D38CF0], v7);
  v19 = &v4[6 * v1];
  v20 = *(v0 + 48);
  *v19 = 0xD000000000000019;
  *(v19 + 1) = 0x80000002234E1570;
  v8(&v19[v20], *MEMORY[0x277D38CD8], v7);
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static SiriKitAppInfoDataProvider.mediaCategoryValues = v21;
  return result;
}

uint64_t SiriKitAppInfoDataProvider.__allocating_init(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *(v13 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v16 = v13 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v16 = 0;
  *(v16 + 8) = 1;
  outlined init with take of DomainWarmupHandling(a1, v13 + 16);
  *(v13 + 56) = a2;
  *(v13 + 64) = a3;
  outlined init with take of DomainWarmupHandling(a4, v13 + 72);
  v17 = *(a5 + 16);
  *(v13 + 112) = *a5;
  *(v13 + 128) = v17;
  *(v13 + 144) = *(a5 + 32);
  return v13;
}

uint64_t SiriKitAppInfoDataProvider.init(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v13 = v5 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v13 = 0;
  *(v13 + 8) = 1;
  outlined init with take of DomainWarmupHandling(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  outlined init with take of DomainWarmupHandling(a4, v5 + 72);
  v14 = *(a5 + 16);
  *(v5 + 112) = *a5;
  *(v5 + 128) = v14;
  *(v5 + 144) = *(a5 + 32);
  return v5;
}

uint64_t SiriKitAppInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v22 - v10;
  SiriKitAppInfoDataProvider.getForegroundSiriKitAppInfo()(&v22 - v10);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?(v11, v1 + v13);
  swift_endAccess();
  result = AFIsATV();
  if (!result)
  {
LABEL_4:
    v18 = *(v1 + 56);
    if (!v18)
    {
      return result;
    }

    goto LABEL_5;
  }

  outlined init with copy of MediaUserStateCenter?(v1 + 112, &v22, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  if (v23)
  {
    outlined init with take of DomainWarmupHandling(&v22, v24);
    v15 = v25;
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v17 = *(v16 + 8);

    v17(partial apply for closure #1 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), v1, v15, v16);

    result = __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_4;
  }

  result = outlined destroy of MediaUserStateCenter?(&v22, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  v18 = *(v1 + 56);
  if (!v18)
  {
    return result;
  }

LABEL_5:
  v19 = *(v1 + 64);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v18;
  v21[5] = v19;
  v21[6] = v1;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), v21);
}

uint64_t closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

uint64_t closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[5] = swift_getObjectType();
  v3 = *(v1 + 16);
  v1 += 16;
  v0[6] = v3;
  v0[7] = v1 & 0xFFFFFFFFFFFFLL | 0xA3C4000000000000;
  v4 = *(v1 - 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), v6, v5);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  (*(v0 + 48))(partial apply for closure #1 in closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:), *(v0 + 32), *(v0 + 40), *(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

void (*SiriKitAppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)())(uint64_t *, void)
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v85 = *(v1 - 8);
  v86 = v1;
  v2 = *(v85 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v84 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  *&v88 = *(v89 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v89, v6);
  v87 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x28223BE20](v79, v9);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v12);
  v74 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v81 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v72 = &v70 - v21;
  v90 = type metadata accessor for Google_Protobuf_Any();
  v80 = *(v90 - 8);
  v22 = *(v80 + 64);
  v24 = MEMORY[0x28223BE20](v90, v23);
  v73 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v91 = &v70 - v27;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext();
  v71 = *(v28 - 8);
  v29 = *(v71 + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = &v70 - v36;
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v0 + v44, v37, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v37, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
    return 0;
  }

  (*(v39 + 32))(v43, v37, v38);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps + 8) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.pommes);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2232BB000, v46, v47, "SiriKitAppInfoDataProvider numThirdPartyVideoApps is missing", v48, 2u);
      MEMORY[0x223DE0F80](v48, -1, -1);
    }

    goto LABEL_17;
  }

  if (!*(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps))
  {
LABEL_17:
    (*(v39 + 8))(v43, v38);
    return 0;
  }

  Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.numSirikitVideoApps.setter();
  v49 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible);
  v50 = v91;
  if (v49 == 2 || (v49 & 1) == 0)
  {
LABEL_16:
    v92[3] = v38;
    v92[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo, MEMORY[0x277D38D10]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
    (*(v39 + 16))(boxed_opaque_existential_1, v43, v38);
    defaultAnyTypeURLPrefix.getter();
    v56 = v72;
    Google_Protobuf_Any.init(message:partial:typePrefix:)();
    v57 = v90;
    v70 = v43;
    v58 = v80;
    (*(v80 + 56))(v56, 0, 1, v90);
    (*(v58 + 32))(v50, v56, v57);
    v60 = v87;
    v59 = v88;
    v61 = v81;
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
    (*(v75 + 104))(v74, *MEMORY[0x277D39AC0], v76);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    (*(v58 + 16))(v73, v50, v57);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
    (*(v78 + 104))(v77, *MEMORY[0x277D39D58], v79);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
    Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
    (*(v85 + 104))(v84, *MEMORY[0x277D39700], v86);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
    v62 = v82;
    v63 = *(v82 + 72);
    v64 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v65 = swift_allocObject();
    v88 = xmmword_2234CF920;
    *(v65 + 16) = xmmword_2234CF920;
    v66 = v83;
    (*(v62 + 16))(v65 + v64, v61, v83);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
    v67 = *(v59 + 72);
    v68 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v88;
    (*(v59 + 32))(v69 + v68, v60, v89);
    (*(v62 + 8))(v61, v66);
    (*(v58 + 8))(v91, v90);
    (*(v39 + 8))(v70, v38);
    return v69;
  }

  v51 = v71;
  (*(v71 + 104))(v32, *MEMORY[0x277D38CB8], v28);
  v52 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
  result = (*(v51 + 8))(v32, v28);
  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v52))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.appContext.modify();
  if (!__CFADD__(*v54, v52))
  {
    *v54 += v52;
    result(v92, 0);
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t *SiriKitAppInfoDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  outlined destroy of MediaUserStateCenter?((v0 + 14), &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  return v0;
}

uint64_t SiriKitAppInfoDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  outlined destroy of MediaUserStateCenter?((v0 + 14), &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance SiriKitAppInfoDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 232))();
  *a1 = result;
  return result;
}

uint64_t specialized Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for VideoCategory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v57 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v46 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  MEMORY[0x28223BE20](v23, v24);
  v28 = &v46 - v26;
  v63 = a2;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v47 = *(a1 + 16);
  if (!v47)
  {
    return 1;
  }

  v46 = v27;
  v29 = 0;
  v48 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v30 = *(v25 + 72);
  v61 = (v9 + 48);
  v62 = v30;
  v51 = (v9 + 32);
  v54 = (v9 + 8);
  v55 = v8;
  v60 = v63 + 56;
  v52 = &v46 - v26;
  v50 = v21;
  while (1)
  {
    v49 = v29;
    outlined init with copy of MediaUserStateCenter?(v48 + v62 * v29, v28, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (*(v63 + 16))
    {
      v31 = *(v63 + 40);
      Hasher.init(_seed:)();
      v32 = v46;
      outlined init with copy of MediaUserStateCenter?(v28, v46, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v59 = *v61;
      if (v59(v32, 1, v8) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v33 = v53;
        (*v51)(v53, v32, v8);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
        dispatch thunk of Hashable.hash(into:)();
        v34 = v33;
        v28 = v52;
        (*v54)(v34, v8);
      }

      v35 = Hasher._finalize()();
      v36 = -1 << *(v63 + 32);
      v37 = v35 & ~v36;
      if ((*(v60 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        break;
      }
    }

LABEL_4:
    v29 = v49 + 1;
    outlined destroy of MediaUserStateCenter?(v28, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v29 == v47)
    {
      return 1;
    }
  }

  v56 = ~v36;
  while (1)
  {
    outlined init with copy of MediaUserStateCenter?(*(v63 + 48) + v37 * v62, v21, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v38 = *(v58 + 48);
    outlined init with copy of MediaUserStateCenter?(v21, v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    outlined init with copy of MediaUserStateCenter?(v28, &v7[v38], &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v39 = v59;
    if (v59(v7, 1, v8) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v7, v57, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v39(&v7[v38], 1, v8) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v21, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      (*v54)(v57, v8);
      goto LABEL_12;
    }

    v40 = v57;
    v41 = v53;
    (*v51)(v53, &v7[v38], v8);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *v54;
    v44 = v41;
    v21 = v50;
    (*v54)(v44, v8);
    outlined destroy of MediaUserStateCenter?(v21, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v43(v40, v8);
    v28 = v52;
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v42)
    {
      goto LABEL_21;
    }

LABEL_13:
    v8 = v55;
    v37 = (v37 + 1) & v56;
    if (((*(v60 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  outlined destroy of MediaUserStateCenter?(v21, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  if (v39(&v7[v38], 1, v8) != 1)
  {
LABEL_12:
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
    goto LABEL_13;
  }

  outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
LABEL_21:
  outlined destroy of MediaUserStateCenter?(v28, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  return 0;
}

{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for StringSearchScope();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v57 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v46 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  MEMORY[0x28223BE20](v23, v24);
  v28 = &v46 - v26;
  v63 = a2;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v47 = *(a1 + 16);
  if (!v47)
  {
    return 1;
  }

  v46 = v27;
  v29 = 0;
  v48 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v30 = *(v25 + 72);
  v61 = (v9 + 48);
  v62 = v30;
  v51 = (v9 + 32);
  v54 = (v9 + 8);
  v55 = v8;
  v60 = v63 + 56;
  v52 = &v46 - v26;
  v50 = v21;
  while (1)
  {
    v49 = v29;
    outlined init with copy of MediaUserStateCenter?(v48 + v62 * v29, v28, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (*(v63 + 16))
    {
      v31 = *(v63 + 40);
      Hasher.init(_seed:)();
      v32 = v46;
      outlined init with copy of MediaUserStateCenter?(v28, v46, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v59 = *v61;
      if (v59(v32, 1, v8) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v33 = v53;
        (*v51)(v53, v32, v8);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
        dispatch thunk of Hashable.hash(into:)();
        v34 = v33;
        v28 = v52;
        (*v54)(v34, v8);
      }

      v35 = Hasher._finalize()();
      v36 = -1 << *(v63 + 32);
      v37 = v35 & ~v36;
      if ((*(v60 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        break;
      }
    }

LABEL_4:
    v29 = v49 + 1;
    outlined destroy of MediaUserStateCenter?(v28, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v29 == v47)
    {
      return 1;
    }
  }

  v56 = ~v36;
  while (1)
  {
    outlined init with copy of MediaUserStateCenter?(*(v63 + 48) + v37 * v62, v21, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v38 = *(v58 + 48);
    outlined init with copy of MediaUserStateCenter?(v21, v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    outlined init with copy of MediaUserStateCenter?(v28, &v7[v38], &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v39 = v59;
    if (v59(v7, 1, v8) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v7, v57, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v39(&v7[v38], 1, v8) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v21, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      (*v54)(v57, v8);
      goto LABEL_12;
    }

    v40 = v57;
    v41 = v53;
    (*v51)(v53, &v7[v38], v8);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *v54;
    v44 = v41;
    v21 = v50;
    (*v54)(v44, v8);
    outlined destroy of MediaUserStateCenter?(v21, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v43(v40, v8);
    v28 = v52;
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v42)
    {
      goto LABEL_21;
    }

LABEL_13:
    v8 = v55;
    v37 = (v37 + 1) & v56;
    if (((*(v60 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  outlined destroy of MediaUserStateCenter?(v21, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  if (v39(&v7[v38], 1, v8) != 1)
  {
LABEL_12:
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
    goto LABEL_13;
  }

  outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
LABEL_21:
  outlined destroy of MediaUserStateCenter?(v28, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  return 0;
}

uint64_t specialized static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41[3] = a7;
  v41[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v40[3] = a8;
  v40[4] = a10;
  v18 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(*(a8 - 8) + 16))(v18, a4, a8);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109376;
    *(v22 + 4) = 1;
    *(v22 + 8) = 1024;
    *(v22 + 10) = a2 != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_2232BB000, v20, v21, "SiriKitAppInfoDataProvider make, isEnabled=%{BOOL}d, satisfyingAppsDataProvider specified=%{BOOL}d", v22, 0xEu);
    MEMORY[0x223DE0F80](v22, -1, -1);

    v23 = a2;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    v23 = a2;
    if (!a2)
    {
LABEL_7:
      swift_beginAccess();
      v24 = off_280FB8C58;

      v23 = v24();
      a3 = v25;

      swift_unknownObjectRetain();
    }
  }

  outlined init with copy of AppDataProviding(v41, v39);
  outlined init with copy of AppDataProviding(v40, v38);
  outlined init with copy of MediaUserStateCenter?(a5, v36, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  v26 = type metadata accessor for SiriKitAppInfoDataProvider();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v32 = v29 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v32 = 0;
  *(v32 + 8) = 1;
  outlined init with take of DomainWarmupHandling(v39, v29 + 16);
  *(v29 + 56) = v23;
  *(v29 + 64) = a3;
  outlined init with take of DomainWarmupHandling(v38, v29 + 72);
  v33 = v36[1];
  *(v29 + 112) = v36[0];
  *(v29 + 128) = v33;
  *(v29 + 144) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v34 = specialized AnyDataProvider.init<A>(provider:)(v29);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v34;
}

uint64_t partial apply for closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for SiriKitAppInfoDataProvider()
{
  result = type metadata singleton initialization cache for SiriKitAppInfoDataProvider;
  if (!type metadata singleton initialization cache for SiriKitAppInfoDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SiriKitAppInfoDataProvider()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SiriKitAppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 232);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?()
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo?);
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out SatisfyingAppsDataProvider)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned SatisfyingAppsDataProvider)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in SiriKitAppInfoDataProvider.prepare(dispatchQueue:)(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v2 = *(result + 16);
  *(v2 + 8) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type VideoCategory? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type VideoCategory? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type VideoCategory? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoCategory? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StringSearchScope? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type StringSearchScope? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type StringSearchScope? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringSearchScope? and conformance <A> A?);
  }

  return result;
}

uint64_t specialized Set.isSuperset<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    v7 = *(a2 + 16);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = (v5 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_13:

      return 0;
    }

    ++v4;
    v16 = ~v14;
    while (1)
    {
      v17 = (*(a2 + 48) + 16 * v15);
      v18 = *v17 == v11 && v17[1] == v10;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  while (v4 != v2);
  return v8;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriKitAppInfo and conformance Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SourcePriorityFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SourcePriorityFeaturiser.init(query:)(a1);
  return v2;
}

float static SourcePriorityFeaturiser.score(_:_:)(float a1, float a2)
{
  v2 = ((a1 * a2) * 2.2) + 1.0;
  if (a1 < 0.001)
  {
    return 1.0;
  }

  else
  {
    return v2;
  }
}

uint64_t SourcePriorityFeaturiser.name.getter()
{
  type metadata accessor for SourcePriorityFeaturiser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24SourcePriorityFeaturiserCmMd, &_s21SiriInformationSearch24SourcePriorityFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t SourcePriorityFeaturiser.init(query:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v93 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.pommes);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v92 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v91 = v4;
    v21 = v20;
    v94 = v20;
    *v19 = 136315394;
    v22 = Apple_Parsec_Siri_V2alpha_RequestedMediaType.toString.getter();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v94);
    v90 = v11;
    v26 = v10;
    v27 = v5;
    v28 = a1;
    v29 = v25;

    *(v19 + 4) = v29;
    *(v19 + 12) = 2080;
    v30 = Apple_Parsec_Siri_V2alpha_AudioSort.toString.getter();
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v94);

    *(v19 + 14) = v33;
    a1 = v28;
    v5 = v27;
    v10 = v26;
    v11 = v90;
    _os_log_impl(&dword_2232BB000, v16, v17, "SourcePriorityFeaturiser :  requestedMediaType=%s,  sort=%s", v19, 0x16u);
    swift_arrayDestroy();
    v34 = v21;
    v4 = v91;
    MEMORY[0x223DE0F80](v34, -1, -1);
    v35 = v19;
    v2 = v92;
    MEMORY[0x223DE0F80](v35, -1, -1);
  }

  v36 = v93;
  (*(v11 + 16))(v93, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort, v10);
  v37 = (*(v11 + 88))(v36, v10);
  if (v37 != *MEMORY[0x277D39130] && v37 != *MEMORY[0x277D39168])
  {
    if (v37 == *MEMORY[0x277D39160] || v37 == *MEMORY[0x277D39180] || v37 == *MEMORY[0x277D39138] || v37 == *MEMORY[0x277D39140] || v37 == *MEMORY[0x277D39148] || v37 == *MEMORY[0x277D39150] || v37 == *MEMORY[0x277D39158] || v37 == *MEMORY[0x277D39178] || v37 == *MEMORY[0x277D39170])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v58 = *(v57 - 8);
      v59 = *(v58 + 72);
      v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_2234D7B70;
      v62 = v61 + v60;
      v63 = *(v58 + 104);
      v63(v62, *MEMORY[0x277D394D8], v57);
      v63(v62 + v59, *MEMORY[0x277D394E0], v57);
      v63(v62 + 2 * v59, *MEMORY[0x277D39500], v57);
      v63(v62 + 3 * v59, *MEMORY[0x277D394E8], v57);
      v63(v62 + 4 * v59, *MEMORY[0x277D39520], v57);
      v63(v62 + 5 * v59, *MEMORY[0x277D39488], v57);
      v63(v62 + 6 * v59, *MEMORY[0x277D394B0], v57);
      v63(v62 + 7 * v59, *MEMORY[0x277D394C0], v57);
      v63(v62 + 8 * v59, *MEMORY[0x277D39498], v57);
      v63(v62 + 9 * v59, *MEMORY[0x277D39528], v57);
      v63(v62 + 10 * v59, *MEMORY[0x277D394F0], v57);
      v63(v62 + 11 * v59, *MEMORY[0x277D39508], v57);
      v63(v62 + 12 * v59, *MEMORY[0x277D394A8], v57);
      v63(v62 + 13 * v59, *MEMORY[0x277D39480], v57);
      v63(v62 + 14 * v59, *MEMORY[0x277D394B8], v57);
      v63(v62 + 15 * v59, *MEMORY[0x277D394A0], v57);
      v63(v62 + 16 * v59, *MEMORY[0x277D39510], v57);
      v63(v62 + 17 * v59, *MEMORY[0x277D394F8], v57);
      v63(v62 + 18 * v59, *MEMORY[0x277D394C8], v57);
      v63(v62 + 19 * v59, *MEMORY[0x277D394D0], v57);
      v64 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v61);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      *(v2 + 24) = v64;
      v48 = 1067030938;
      goto LABEL_36;
    }

    (*(v11 + 8))(v36, v10);
  }

  (*(v5 + 16))(v9, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v4);
  v39 = (*(v5 + 88))(v9, v4);
  if (v39 != *MEMORY[0x277D39890])
  {
    if (v39 == *MEMORY[0x277D39848])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v50 = *(v49 - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_2234D1950;
      v54 = v53 + v52;
      v55 = *(v50 + 104);
      v55(v54, *MEMORY[0x277D39500], v49);
      v55(v54 + v51, *MEMORY[0x277D394E8], v49);
      v55(v54 + 2 * v51, *MEMORY[0x277D394A0], v49);
      v55(v54 + 3 * v51, *MEMORY[0x277D394C8], v49);
      v55(v54 + 4 * v51, *MEMORY[0x277D39498], v49);
      v56 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v53);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      *(v2 + 24) = v56;
      v48 = 1061158912;
      goto LABEL_36;
    }

    if (v39 == *MEMORY[0x277D39838])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v66 = *(v65 - 8);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_2234CF920;
      v71 = MEMORY[0x277D394E0];
    }

    else
    {
      if (v39 != *MEMORY[0x277D39858])
      {
        if (v39 == *MEMORY[0x277D397F8])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
          v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
          v76 = *(v75 - 8);
          v77 = *(v76 + 72);
          v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_2234CF940;
          v80 = v79 + v78;
          v81 = *(v76 + 104);
          v81(v80, *MEMORY[0x277D394A0], v75);
          v82 = MEMORY[0x277D394C8];
        }

        else
        {
          if (v39 == *MEMORY[0x277D39808])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
            v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
            v66 = *(v65 - 8);
            v84 = *(v66 + 72);
            v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
            v69 = swift_allocObject();
            v70 = v69;
            *(v69 + 16) = xmmword_2234CF920;
            v71 = MEMORY[0x277D394B8];
            goto LABEL_34;
          }

          if (v39 != *MEMORY[0x277D39888])
          {
            if (v39 == *MEMORY[0x277D39840])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
              v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
              v66 = *(v65 - 8);
              v87 = *(v66 + 72);
              v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
              v69 = swift_allocObject();
              v70 = v69;
              *(v69 + 16) = xmmword_2234CF920;
              v71 = MEMORY[0x277D394E8];
            }

            else
            {
              if (v39 != *MEMORY[0x277D39820])
              {

                *(v2 + 24) = MEMORY[0x277D84FA0];
                *(v2 + 16) = 0;
                (*(v5 + 8))(v9, v4);
                return v2;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
              v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
              v66 = *(v65 - 8);
              v88 = *(v66 + 72);
              v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
              v69 = swift_allocObject();
              v70 = v69;
              *(v69 + 16) = xmmword_2234CF920;
              v71 = MEMORY[0x277D394D0];
            }

            goto LABEL_34;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
          v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
          v85 = *(v75 - 8);
          v77 = *(v85 + 72);
          v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_2234CF940;
          v80 = v79 + v86;
          v81 = *(v85 + 104);
          v81(v80, *MEMORY[0x277D39510], v75);
          v82 = MEMORY[0x277D39498];
        }

        v81(v80 + v77, *v82, v75);
        v83 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v79);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();

        *(v2 + 24) = v83;
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
      v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      v66 = *(v65 - 8);
      v72 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_2234CF920;
      v71 = MEMORY[0x277D39500];
    }

LABEL_34:
    (*(v66 + 104))(v69 + v68, *v71, v65);
    v73 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v70);
    swift_setDeallocating();
    (*(v66 + 8))(v70 + v68, v65);
    swift_deallocClassInstance();

    *(v2 + 24) = v73;
LABEL_35:
    v48 = 1065353216;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2234D4CC0;
  v45 = v44 + v43;
  v46 = *(v41 + 104);
  v46(v45, *MEMORY[0x277D39500], v40);
  v46(v45 + v42, *MEMORY[0x277D394E0], v40);
  v46(v45 + 2 * v42, *MEMORY[0x277D394E8], v40);
  v46(v45 + 3 * v42, *MEMORY[0x277D394A0], v40);
  v46(v45 + 4 * v42, *MEMORY[0x277D394C8], v40);
  v46(v45 + 5 * v42, *MEMORY[0x277D39510], v40);
  v46(v45 + 6 * v42, *MEMORY[0x277D39498], v40);
  v47 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  *(v2 + 24) = v47;
  v48 = 1057384038;
LABEL_36:
  *(v2 + 16) = v48;
  return v2;
}

void SourcePriorityFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(v10 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source))
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v12 = *(v2 + 24);
  (*(v5 + 16))(v9, v10 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v4);
  LOBYTE(v12) = specialized Set.contains(_:)(v9, v12);
  v13 = (*(v5 + 8))(v9, v4);
  if (v12)
  {
    v14 = MEMORY[0x277D85000];
    v15 = (*((*MEMORY[0x277D85000] & *v10) + 0xB8))(v13);
    (*((*v14 & *v15) + 0xB8))(*(v2 + 16));
  }
}

uint64_t SourcePriorityFeaturiser.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SourcePriorityFeaturiser.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *PommesSearchClient.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = specialized static PommesSearchClient.createXPCConnection()();
  if (v3)
  {
    v0[2] = v3;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2232BB000, v5, v6, "Cannot set up connection with PommesSearchService, client initialization fails...", v7, 2u);
      MEMORY[0x223DE0F80](v7, -1, -1);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t PommesSearchClient.searchInfiEntity(request:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](PommesSearchClient.searchInfiEntity(request:), 0, 0);
}

uint64_t PommesSearchClient.searchInfiEntity(request:)()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = PommesSearchClient.searchInfiEntity(request:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned PommesResponse?, @unowned NSError?) -> () with result type PommesResponse;
  v0[13] = &block_descriptor_19;
  v0[14] = v3;
  [v2 searchInfiEntityWithRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = PommesSearchClient.searchInfiEntity(request:);
  }

  else
  {
    v3 = PommesSearchClient.searchInfiEntity(request:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned PommesResponse?, @unowned NSError?) -> () with result type PommesResponse(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t PommesSearchClient.searchToolGlobalSearch(request:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](PommesSearchClient.searchToolGlobalSearch(request:), 0, 0);
}

uint64_t PommesSearchClient.searchToolGlobalSearch(request:)()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = PommesSearchClient.searchToolGlobalSearch(request:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_sSccy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned PommesResponse?, @unowned NSError?) -> () with result type PommesResponse;
  v0[13] = &block_descriptor_4_0;
  v0[14] = v3;
  [v2 searchToolGlobalSearchWithRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = PommesSearchClient.searchToolGlobalSearch(request:);
  }

  else
  {
    v3 = PommesSearchClient.searchToolGlobalSearch(request:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144));
}

{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

void closure #1 in static PommesSearchClient.createXPCConnection()(const char *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v3, a1, v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }
}

void closure #3 in static PommesSearchClient.createXPCConnection()(void *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2232BB000, oslog, v4, "Cannot set up connection with PommesSearchService, error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223DE0F80](v6, -1, -1);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  else
  {
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t PommesSearchClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PommesSearchClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PommesXPCSearching.searchInfiEntity(request:) in conformance PommesSearchClient(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = PommesSearchService.searchInfiEntity(request:);

  return PommesSearchClient.searchInfiEntity(request:)(a1);
}

uint64_t specialized static PommesSearchClient.createXPCConnection()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = MEMORY[0x223DDF550](0xD000000000000028, 0x80000002234DCD20);
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  v22 = closure #1 in static PommesSearchClient.createXPCConnection();
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_13_2;
  v4 = _Block_copy(&aBlock);
  [v2 setInterruptionHandler_];
  _Block_release(v4);
  v22 = closure #2 in static PommesSearchClient.createXPCConnection();
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_16;
  v5 = _Block_copy(&aBlock);
  [v2 setInvalidationHandler_];
  _Block_release(v5);
  [v2 resume];
  v6 = [v2 endpoint];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_2232BB000, v9, v10, "PommesSearchService XPC connection established to endpoint: %@", v11, 0xCu);
    outlined destroy of NSObject?(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  v22 = closure #3 in static PommesSearchClient.createXPCConnection();
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v21 = &block_descriptor_19_1;
  v14 = _Block_copy(&aBlock);
  v15 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC13Orchestrating_pMd, &_s21SiriInformationSearch06PommesC13Orchestrating_pMR);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v11(a1, a2, a3);
}

uint64_t block_copy_helper_11_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AudioPluginProcessor.__allocating_init()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedPreferences];
  v4 = [v3 languageCode];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v32 = v6;
    *(&v32 + 1) = v8;
    v37 = 45;
    v38 = 0xE100000000000000;
    v35 = 95;
    v36 = 0xE100000000000000;
    v31 = lazy protocol witness table accessor for type String and conformance String();
    v30 = MEMORY[0x277D837D0];
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v11 = v10;

    type metadata accessor for PimsRuntimeLoggingHandler();
    v12 = swift_allocObject();
    getPimsRuntimeLogger()();
    outlined init with take of DomainWarmupHandling(&v32, (v12 + 2));
    v13 = type metadata accessor for MediaSuggestionManager();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = MediaSuggestionManager.init()();
    v12[10] = v13;
    v12[11] = &protocol witness table for MediaSuggestionManager;
    v12[7] = v16;
    v17 = one-time initialization token for pommes;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v32 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v32);
      _os_log_impl(&dword_2232BB000, v19, v20, "AudioPluginProcessor running with %s Locale", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DE0F80](v22, -1, -1);
      MEMORY[0x223DE0F80](v21, -1, -1);
    }

    v23 = [objc_opt_self() defaultMediaLibrary];
    v33 = type metadata accessor for MPMediaLibrary();
    v34 = &protocol witness table for MPMediaLibrary;
    *&v32 = v23;
    v24 = (*(v1 + 144))(v9, v11, &v32, [v2 sharedPreferences], v12);

    return v24;
  }

  else
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2232BB000, v27, v28, "AudioPluginProcessor: Unable to obtain locale using en_US", v29, 2u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    return AudioPluginProcessor.__allocating_init(locale:)(0x53555F6E65, 0xE500000000000000);
  }
}

uint64_t AudioPluginProcessor.__allocating_init(locale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for PimsRuntimeLoggingHandler();
  v6 = swift_allocObject();
  getPimsRuntimeLogger()();
  outlined init with take of DomainWarmupHandling(&v16, (v6 + 2));
  v7 = type metadata accessor for MediaSuggestionManager();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = MediaSuggestionManager.init()();
  v6[10] = v7;
  v6[11] = &protocol witness table for MediaSuggestionManager;
  v6[7] = v10;
  v11 = objc_opt_self();

  v12 = [v11 defaultMediaLibrary];
  v17 = type metadata accessor for MPMediaLibrary();
  v18 = &protocol witness table for MPMediaLibrary;
  *&v16 = v12;
  v13 = [objc_opt_self() sharedPreferences];
  v14 = (*(v3 + 144))(a1, a2, &v16, v13, v6);

  return v14;
}

uint64_t AudioPluginProcessor.__allocating_init(locale:mediaLibrary:preferences:pimsRuntimeLoggingHandler:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 104) = 1053609165;
  v9 = type metadata accessor for AudioRanker();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale;
  Locale.init(identifier:)();
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 56))(v12 + v13, 0, 1, v14);
  *(v8 + 40) = v9;
  *(v8 + 48) = &protocol witness table for AudioRanker;
  *(v8 + 16) = v12;
  outlined init with take of DomainWarmupHandling(a3, v8 + 56);
  *(v8 + 96) = a4;
  *(v8 + 112) = a5;
  return v8;
}

uint64_t AudioPluginProcessor.init(locale:mediaLibrary:preferences:pimsRuntimeLoggingHandler:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v20 - v12;
  *(v5 + 104) = 1053609165;
  v14 = type metadata accessor for AudioRanker();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  Locale.init(identifier:)();
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  outlined init with take of Locale?(v13, v17 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale);
  *(v5 + 40) = v14;
  *(v5 + 48) = &protocol witness table for AudioRanker;
  *(v5 + 16) = v17;
  outlined init with take of DomainWarmupHandling(a3, v5 + 56);
  *(v5 + 96) = a4;
  *(v5 + 112) = a5;
  return v5;
}

uint64_t AudioPluginProcessor.__allocating_init(ranker:mediaLibrary:pimsRuntimeLoggingHandler:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 104) = 1053609165;
  outlined init with copy of AppDataProviding(a1, v6 + 16);
  outlined init with copy of AppDataProviding(a2, v6 + 56);
  v7 = [objc_opt_self() sharedPreferences];
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 96) = v7;
  *(v6 + 112) = a3;
  return v6;
}

uint64_t AudioPluginProcessor.init(ranker:mediaLibrary:pimsRuntimeLoggingHandler:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 104) = 1053609165;
  outlined init with copy of AppDataProviding(a1, v3 + 16);
  outlined init with copy of AppDataProviding(a2, v3 + 56);
  v7 = [objc_opt_self() sharedPreferences];
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v3 + 96) = v7;
  *(v3 + 112) = a3;
  return v3;
}

uint64_t AudioPluginProcessor.process(experience:clientResults:)()
{
  v1 = (*(*v0 + 168))();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v4);

  return v3;
}

uint64_t AudioPluginProcessor.process(with:clientResults:)(uint64_t a1, unint64_t a2)
{
  v156 = a2;
  v164 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v150 = &v146 - v5;
  v146 = type metadata accessor for UUID();
  v152 = *(v146 - 8);
  v6 = *(v152 + 64);
  MEMORY[0x28223BE20](v146, v7);
  v151 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v161 = &v146 - v12;
  v160 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides();
  v162 = *(v160 - 8);
  v13 = *(v162 + 64);
  MEMORY[0x28223BE20](v160, v14);
  v159 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v17 = *(v16 - 8);
  v167 = v16;
  v168 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v158 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v169 = *(v165 - 8);
  v21 = *(v169 + 64);
  MEMORY[0x28223BE20](v165, v22);
  v157 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v146 - v32;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PerformanceUtil.Ticket(0);
  v41 = (v40 - 8);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v46 = &v45[v41[7]];
  *v46 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v46 + 1) = 48;
  v46[16] = 2;
  *&v45[v41[8]] = 88;
  v47 = &v45[v41[9]];
  *v47 = "process(with:clientResults:)";
  *(v47 + 1) = 28;
  v47[16] = 2;
  v48 = v164;
  v49 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001ELL);
  v50 = v41[10];
  v148 = v45;
  v51 = &v45[v50];
  *v51 = v49;
  v51[1] = v52;
  AudioExperience.audioUnderstanding.getter();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter();
  (*(v35 + 8))(v39, v34);
  (*(v25 + 104))(v30, *MEMORY[0x277D39190], v24);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v53 = *(v25 + 8);
  v53(v30, v24);
  v53(v33, v24);
  if (v172[0] == v171)
  {
    v54 = v157;
    AudioExperience.audioClientComponent.getter();
    v55 = v158;
    Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
    (*(v169 + 8))(v54, v165);
    v56 = Apple_Parsec_Siri_V2alpha_ClientSignals.disableClientLibrarySearch.getter();
    (*(v168 + 8))(v55, v167);
    v149 = v56 ^ 1;
  }

  else
  {
    v149 = 0;
    v54 = v157;
    v55 = v158;
  }

  v166 = specialized static AudioQuery.makeNormalQuery(audioExperience:mode:)(v48);
  v57 = dispatch thunk of AudioExperience.serverAudioResults.getter();
  v58 = specialized AudioPluginProcessor.extractServerCandidates(from:)(v57);

  if (v58 >> 62)
  {
LABEL_60:
    v59 = __CocoaSet.count.getter();
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = specialized AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)(v166, v59 != 0);
  v62 = AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(v156, v60, v61);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  v64 = __swift_project_value_buffer(v63, static Logger.pommes);

  v163 = v64;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();

  v67 = os_log_type_enabled(v65, v66);
  v154 = v58;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v172[0] = v69;
    *v68 = 136315138;
    v70 = type metadata accessor for AudioItemCandidate(0);
    v71 = MEMORY[0x223DDF870](v58, v70);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v172);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_2232BB000, v65, v66, "AudioPluginProcessor#process serverCandidates: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x223DE0F80](v69, -1, -1);
    MEMORY[0x223DE0F80](v68, -1, -1);
  }

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  v76 = os_log_type_enabled(v74, v75);
  v153 = v62;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v172[0] = v78;
    *v77 = 136315138;
    v79 = type metadata accessor for AudioItemCandidate(0);
    v80 = MEMORY[0x223DDF870](v62, v79);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v172);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_2232BB000, v74, v75, "AudioPluginProcessor#process clientCandidates: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x223DE0F80](v78, -1, -1);
    MEMORY[0x223DE0F80](v77, -1, -1);
  }

  v83 = v167;
  AudioExperience.audioClientComponent.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  v84 = v55;
  v55 = v54;
  v85 = v169 + 8;
  v86 = *(v169 + 8);
  v87 = v165;
  v86(v55, v165);
  v88 = v159;
  Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
  v147 = *(v168 + 8);
  v147(v84, v83);
  Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultTextMatchMinScore.getter();
  v90 = v89;
  v91 = v48;
  v92 = v162 + 8;
  v93 = *(v162 + 8);
  v93(v88, v160);
  v169 = v85;
  v155 = v86;
  if (v90 > 0.001)
  {
    v162 = v92;
    v94 = v91;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134217984;
      AudioExperience.audioClientComponent.getter();
      v98 = v158;
      Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
      v155(v55, v165);
      v99 = v159;
      Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
      v147(v98, v167);
      Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultTextMatchMinScore.getter();
      v101 = v100;
      v93(v99, v160);
      *(v97 + 4) = v101;
      _os_log_impl(&dword_2232BB000, v95, v96, "AudioPluginProcessor setting server override for clientCandidateCombinedTextMatchScoreThreshold to %f", v97, 0xCu);
      v102 = v97;
      v83 = v167;
      MEMORY[0x223DE0F80](v102, -1, -1);
    }

    AudioExperience.audioClientComponent.getter();
    v103 = v158;
    Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
    v87 = v165;
    v86 = v155;
    v155(v55, v165);
    v104 = v159;
    Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
    v147(v103, v83);
    Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultTextMatchMinScore.getter();
    v106 = v105;
    v93(v104, v160);
    *(v170 + 104) = v106;
  }

  AudioExperience.audioClientComponent.getter();
  v107 = v161;
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  v86(v55, v87);
  v54 = v168 + 56;
  v162 = *(v168 + 56);
  (v162)(v107, 0, 1, v83);
  v108 = AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(v166, v154, v153, 0xD000000000000019, 0x80000002234E1740, v107);

  outlined destroy of MediaUserStateCenter?(v107, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v172[0] = MEMORY[0x277D84F90];
  v58 = v108 & 0xFFFFFFFFFFFFFF8;
  if (v108 >> 62)
  {
    v109 = __CocoaSet.count.getter();
  }

  else
  {
    v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v110 = 0;
  v48 = v108 & 0xC000000000000001;
  v111 = MEMORY[0x277D85000];
  v168 = MEMORY[0x277D84F90];
  while (v109 != v110)
  {
    if (v48)
    {
      v112 = MEMORY[0x223DDFF80](v110, v108);
    }

    else
    {
      if (v110 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v112 = *(v108 + 8 * v110 + 32);
    }

    v113 = v112;
    v55 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v114 = (*((*v111 & *v112) + 0xE8))();

    ++v110;
    if (v114)
    {
      MEMORY[0x223DDF820]();
      if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v115 = *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v168 = v172[0];
      v110 = v55;
    }
  }

  v116 = v168;

  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v172[0] = v120;
    *v119 = 136315138;
    v121 = type metadata accessor for AudioResult();
    v122 = MEMORY[0x223DDF870](v116, v121);
    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, v172);

    *(v119 + 4) = v124;
    _os_log_impl(&dword_2232BB000, v117, v118, "AudioPluginProcessor#process rankedResults: %s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v120);
    MEMORY[0x223DE0F80](v120, -1, -1);
    MEMORY[0x223DE0F80](v119, -1, -1);
  }

  v125 = v164;
  v55 = v152;
  v126 = v151;
  v127 = v150;
  v128 = *(v170 + 112);
  if (v128)
  {
    type metadata accessor for SiriEnvironment();

    static SiriEnvironment.default.getter();
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.executionRequestId.getter();

    UUID.init(uuidString:)();

    v129 = *(v55 + 48);
    v130 = v146;
    if (v129(v127, 1, v146) == 1)
    {
      UUID.init()();
      if (v129(v127, 1, v130) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v55 + 32))(v126, v127, v130);
    }

    v131 = v157;
    AudioExperience.audioClientComponent.getter();
    v132 = v161;
    Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
    v155(v131, v165);
    (v162)(v132, 0, 1, v167);
    (*(*v128 + 112))(v126, v132, v168);

    outlined destroy of MediaUserStateCenter?(v132, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v133 = *(v55 + 8);
    v55 += 8;
    v133(v126, v130);
  }

  if (v149)
  {
    v134 = specialized static AudioQuery.makePlaylistQuery(audioExperience:)(v125);
    v135 = specialized AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(v156, v170);
    v136 = v161;
    (v162)(v161, 1, 1, v167);
    v54 = MEMORY[0x277D84F90];
    v137 = AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(v134, MEMORY[0x277D84F90], v135, 0xD000000000000010, 0x80000002234E1760, v136);

    outlined destroy of MediaUserStateCenter?(v136, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v172[0] = v54;
    v169 = v134;
    v48 = v137 & 0xFFFFFFFFFFFFFF8;
    if (v137 >> 62)
    {
      v58 = __CocoaSet.count.getter();
    }

    else
    {
      v58 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v138 = 0;
    v139 = MEMORY[0x277D84F90];
    while (v58 != v138)
    {
      if ((v137 & 0xC000000000000001) != 0)
      {
        v140 = MEMORY[0x223DDFF80](v138, v137);
      }

      else
      {
        if (v138 >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v140 = *(v137 + 8 * v138 + 32);
      }

      v141 = v140;
      v54 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        goto LABEL_58;
      }

      v55 = (*((*v111 & *v140) + 0xE8))();

      ++v138;
      if (v55)
      {
        MEMORY[0x223DDF820]();
        if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v142 = *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v139 = v172[0];
        v138 = v54;
      }
    }
  }

  else
  {

    v139 = 0;
  }

  type metadata accessor for PommesAudioPluginResults();
  v143 = swift_allocObject();
  *(v143 + 16) = v168;
  *(v143 + 24) = v139;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v144 = v148;
  (*(*static PerformanceUtil.shared + 184))(v148, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v144, type metadata accessor for PerformanceUtil.Ticket);
  return v143;
}

unint64_t AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for PerformanceUtil.Ticket(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = 0;
  v84 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v83 = 0xD00000000000001ALL;
  v84 = 0x80000002234E18D0;
  v80 = a4;
  v81 = a5;
  MEMORY[0x223DDF6D0](a4, a5);
  v20 = v83;
  Date.init()();
  v21 = &v19[v15[7]];
  *v21 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v21 + 1) = 48;
  v21[16] = 2;
  *&v19[v15[8]] = 151;
  v22 = &v19[v15[9]];
  *v22 = "rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)";
  *(v22 + 1) = 70;
  v22[16] = 2;
  v23 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v20);
  v25 = v24;

  v26 = v15[10];
  v75 = v19;
  v27 = &v19[v26];
  *v27 = v23;
  v27[1] = v25;
  v28 = v7[5];
  v29 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v28);
  v30 = (*(v29 + 8))(a1, a3, a2, a6, v28, v29);
  v31 = v30;
  v83 = MEMORY[0x277D84F90];
  if (v30 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v33 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x223DDFF80](v33, v31);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (AudioPluginProcessor.postRankFilter(_:)(v34))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v37 = *(v83 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v33;
      if (v36 == i)
      {
        v38 = v83;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v38 = MEMORY[0x277D84F90];
LABEL_18:

  v39 = specialized Collection<>.dedup(favoring:constructKey:)(closure #2 in AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:), 0, v38);

  v40 = v81;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_39;
  }

LABEL_19:
  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logger.pommes);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v83 = v46;
    *v45 = 136315138;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v40, &v83);
    _os_log_impl(&dword_2232BB000, v43, v44, "POMMES final ranked %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x223DE0F80](v46, -1, -1);
    MEMORY[0x223DE0F80](v45, -1, -1);
  }

  if (v39 >> 62)
  {
    v47 = __CocoaSet.count.getter();
  }

  else
  {
    v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v47)
  {
    v49 = 0;
    v50 = v39 & 0xC000000000000001;
    v51 = v39 & 0xFFFFFFFFFFFFFF8;
    *&v48 = 136315394;
    v76 = v48;
    v77 = v47;
    v78 = v42;
    do
    {
      if (v50)
      {
        v52 = MEMORY[0x223DDFF80](v49, v39);
        v40 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
LABEL_34:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v49 >= *(v51 + 16))
        {
          __break(1u);
LABEL_39:
          swift_once();
          goto LABEL_19;
        }

        v52 = *(v39 + 8 * v49 + 32);
        v40 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_34;
        }
      }

      v53 = v52;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = v40;
        v83 = v81;
        *v56 = v76;
        LODWORD(v80) = v55;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v83);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        v60 = v53;
        v61 = [v60 description];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v54;
        v63 = v51;
        v64 = v50;
        v65 = v39;
        v67 = v66;

        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v67, &v83);
        v39 = v65;
        v50 = v64;
        v51 = v63;

        *(v56 + 14) = v68;
        v69 = v79;
        _os_log_impl(&dword_2232BB000, v79, v80, "\n%s. %s", v56, 0x16u);
        v70 = v81;
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v70, -1, -1);
        v71 = v56;
        v47 = v77;
        MEMORY[0x223DE0F80](v71, -1, -1);
      }

      else
      {
      }

      ++v49;
    }

    while (v40 != v47);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v72 = v75;
  (*(*static PerformanceUtil.shared + 184))(v75, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v72, type metadata accessor for PerformanceUtil.Ticket);
  return v39;
}

BOOL closure #2 in AudioPluginProcessor.rank(query:serverCandidates:clientCandidates:groupName:clientSignals:)(void **a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  return (*((*v3 & *v2) + 0xA0))() <= v4;
}

uint64_t specialized Collection<>.dedup(favoring:constructKey:)(uint64_t (*a1)(id *, void **), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v28)
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      v29 = a3 & 0xFFFFFFFFFFFFFF8;
      v30 = a3 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F90];
      v7 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v30)
        {
          v8 = a3;
          v9 = MEMORY[0x223DDFF80](v5, a3);
        }

        else
        {
          if (v5 >= *(v29 + 16))
          {
            goto LABEL_26;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v12 = specialized closure #1 in Collection<>.dedup(favoring:constructKey:)(v7, v6, v9, a1);
        v4 = v13;

        ++v5;
        v7 = v12;
        v6 = v4;
        a3 = v8;
        if (v11 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = MEMORY[0x277D84F98];
LABEL_13:
    v14 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
    v15 = v4[2];
    if (!v15)
    {
      break;
    }

    v16 = 0;
LABEL_15:
    v17 = &v4[2 * v16 + 5];
    v18 = v16;
    while (v18 < v4[2])
    {
      if (*(v12 + 16))
      {
        v19 = *(v17 - 1);
        v20 = *v17;

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if (v22)
        {
          v23 = *(*(v12 + 56) + 8 * v21);

          MEMORY[0x223DDF820](v24);
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v16 = v18 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v14 = v32;
          if (v15 - 1 != v18)
          {
            goto LABEL_15;
          }

          goto LABEL_24;
        }
      }

      ++v18;
      v17 += 2;
      if (v15 == v18)
      {
        goto LABEL_24;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v27 = a3;
    v28 = __CocoaSet.count.getter();
    a3 = v27;
  }

LABEL_24:

  return v14;
}

{
  if (a3 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v28)
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      v29 = a3 & 0xFFFFFFFFFFFFFF8;
      v30 = a3 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F90];
      v7 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v30)
        {
          v8 = a3;
          v9 = MEMORY[0x223DDFF80](v5, a3);
        }

        else
        {
          if (v5 >= *(v29 + 16))
          {
            goto LABEL_26;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v12 = specialized closure #1 in Collection<>.dedup(favoring:constructKey:)(v7, v6, v9, a1);
        v4 = v13;

        ++v5;
        v7 = v12;
        v6 = v4;
        a3 = v8;
        if (v11 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = MEMORY[0x277D84F98];
LABEL_13:
    v14 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
    v15 = v4[2];
    if (!v15)
    {
      break;
    }

    v16 = 0;
LABEL_15:
    v17 = &v4[2 * v16 + 5];
    v18 = v16;
    while (v18 < v4[2])
    {
      if (*(v12 + 16))
      {
        v19 = *(v17 - 1);
        v20 = *v17;

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if (v22)
        {
          v23 = *(*(v12 + 56) + 8 * v21);

          MEMORY[0x223DDF820](v24);
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v16 = v18 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v14 = v32;
          if (v15 - 1 != v18)
          {
            goto LABEL_15;
          }

          goto LABEL_24;
        }
      }

      ++v18;
      v17 += 2;
      if (v15 == v18)
      {
        goto LABEL_24;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v27 = a3;
    v28 = __CocoaSet.count.getter();
    a3 = v27;
  }

LABEL_24:

  return v14;
}

uint64_t Collection<>.dedup(favoring:constructKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  Dictionary.init()();
  type metadata accessor for Dictionary();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
  swift_getTupleTypeMetadata2();
  Sequence.reduce<A>(_:_:)();

  lazy protocol witness table accessor for type [String] and conformance [A]();
  v6 = Sequence.compactMap<A>(_:)();

  return v6;
}

uint64_t AudioPluginProcessor.postRankFilter(_:)(void *a1)
{
  v2 = v1;
  if (*(a1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source) == 1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
  v8 = (v7)(v4);
  v9 = (*((*v6 & *v8) + 0xF8))();

  if (*(v2 + 104) <= v9)
  {
    return 1;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v14 = 134218498;
    v15 = v7();
    v16 = (*((*v6 & *v15) + 0xF8))();

    *(v14 + 4) = v16;
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v2 + 104);
    *(v14 + 22) = 2080;
    v17 = (*((*v6 & *v11) + 0xF0))();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

    *(v14 + 24) = v19;
    _os_log_impl(&dword_2232BB000, v12, v13, "AudioPluginProcessor : rejecting candidate due to combined text match score minimum threshold : %f < %f : %s", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223DE0F80](v21, -1, -1);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  return 0;
}

BOOL closure #1 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)()
{
  v0 = ClientAudioResult.vocabularyResult.getter();
  v1 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v1 == 18562)
  {
    return 0;
  }

  v2 = ClientAudioResult.vocabularyResult.getter();
  v3 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v3 == 18559)
  {
    return 0;
  }

  v4 = ClientAudioResult.vocabularyResult.getter();
  v5 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v5 == 42189)
  {
    return 0;
  }

  v6 = ClientAudioResult.vocabularyResult.getter();
  v7 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v7 == 18560)
  {
    return 0;
  }

  v9 = ClientAudioResult.vocabularyResult.getter();
  v10 = dispatch thunk of VocabularyResult.fieldType.getter();

  return v10 != 18566;
}

BOOL closure #3 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)()
{
  v0 = ClientAudioResult.vocabularyResult.getter();
  v1 = dispatch thunk of VocabularyResult.fieldType.getter();

  return v1 != 18559;
}

uint64_t specialized AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v10 = &v9[v5[7]];
  *v10 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v10 + 1) = 48;
  v10[16] = 2;
  *&v9[v5[8]] = 241;
  v11 = &v9[v5[9]];
  *v11 = "extractClientCandidates(from:resultFilterPred:)";
  *(v11 + 1) = 47;
  v11[16] = 2;
  v12 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000038);
  v13 = v5[10];
  v27 = v9;
  v14 = &v9[v13];
  *v14 = v12;
  v14[1] = v15;
  v29 = a2;
  v16 = [*(a2 + 96) allowExplicitContent];
  v17 = specialized Collection<>.dedup(favoring:constructKey:)(0, 0, a1);
  v18 = v17;
  v32 = MEMORY[0x277D84F90];
  if (v17 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v20 = 0;
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x223DDFF80](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v31 = v21;
      specialized closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(&v31, v29, v16, &v30);

      if (v30)
      {
        MEMORY[0x223DDF820]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v28 = v32;
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_18:

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v24 = v27;
  (*(*static PerformanceUtil.shared + 184))(v27, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v24, type metadata accessor for PerformanceUtil.Ticket);
  return v28;
}

uint64_t AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v11 = &v10[v6[7]];
  *v11 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v11 + 1) = 48;
  v11[16] = 2;
  *&v10[v6[8]] = 241;
  v12 = &v10[v6[9]];
  *v12 = "extractClientCandidates(from:resultFilterPred:)";
  *(v12 + 1) = 47;
  v12[16] = 2;
  v13 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000038);
  v14 = v6[10];
  v28 = v10;
  v15 = &v10[v14];
  *v15 = v13;
  v15[1] = v16;
  v32 = v3;
  v17 = [*(v3 + 96) allowExplicitContent];
  v18 = specialized Collection<>.dedup(favoring:constructKey:)(0, 0, a1);
  v19 = v18;
  v35 = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v21 = 0;
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223DDFF80](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v34 = v22;
      closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)(&v34, v30, v32, v17, &v33);

      if (v33)
      {
        MEMORY[0x223DDF820]();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = v35;
      }

      ++v21;
      if (v24 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_18:

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = v28;
  (*(*static PerformanceUtil.shared + 184))(v28, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v25, type metadata accessor for PerformanceUtil.Ticket);
  return v29;
}

uint64_t specialized closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)@<X0>(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for ClientAudioResult();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = v7;
    v10 = ClientAudioResult.vocabularyResult.getter();
    v11 = dispatch thunk of VocabularyResult.fieldType.getter();

    if (v11 != 18562)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.pommes);
      v20 = v9;
      v9 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v99 = v23;
        *v22 = 136315138;
        v97 = a4;
        v24 = ClientAudioResult.vocabularyResult.getter();
        v25 = [v24 description];

        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v99);

        *(v22 + 4) = v29;
        a4 = v97;
        _os_log_impl(&dword_2232BB000, v9, v21, "AudioPluginProcessor : candidate predicate rejecting media item : %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x223DE0F80](v23, -1, -1);
        v30 = v22;
LABEL_13:
        MEMORY[0x223DE0F80](v30, -1, -1);

LABEL_34:
        result = 0;
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    v12 = ClientAudioResult.vocabularyResult.getter();
    v13 = VocabularyResult.itemId.getter();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.pommes);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v99 = v35;
        *v34 = 136315138;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v99);
        _os_log_impl(&dword_2232BB000, v32, v33, "%s vocabulary itemId is empty", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x223DE0F80](v35, -1, -1);
        MEMORY[0x223DE0F80](v34, -1, -1);
      }

      goto LABEL_33;
    }

    v17 = ClientAudioResult.vocabularyResult.getter();
    v18 = VocabularyResult.itemType.getter();

    if (v18 != 18540)
    {
      if (v18 == 42184)
      {
        result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v9, 0);
        goto LABEL_35;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.pommes);
      v20 = v9;
      v9 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v99 = v59;
        *v58 = 136315394;
        *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v99);
        *(v58 + 12) = 2080;
        v60 = ClientAudioResult.vocabularyResult.getter();
        VocabularyResult.itemType.getter();

        v61 = UInt16.cascadeDescription.getter();
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v99);

        *(v58 + 14) = v63;
        _os_log_impl(&dword_2232BB000, v9, v57, "%s unsupported vocabulary item type : %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v59, -1, -1);
        v30 = v58;
        goto LABEL_13;
      }

LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v98 = a4;
    v36 = a2[10];
    v37 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v36);
    v38 = ClientAudioResult.vocabularyResult.getter();
    v39 = VocabularyResult.itemId.getter();
    v41 = v40;

    v42 = (*(v37 + 8))(v39, v41, 0, 0, v36, v37);

    if (v42)
    {
      if (v42[32])
      {
        a4 = v98;
        if (v42[35])
        {
          if ((a3 & 1) != 0 || (v42[33] & 1) == 0)
          {
            result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v9, v42);
            goto LABEL_35;
          }

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static Logger.pommes);
          v44 = v9;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v96 = v44;
            v48 = swift_slowAlloc();
            v99 = v48;
            *v47 = 136315138;
            v49 = ClientAudioResult.vocabularyResult.getter();
            v50 = [v49 description];

            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v99);

            *(v47 + 4) = v54;
            a4 = v98;
            v55 = "AudioPluginProcessor : rejecting explicit content for %s";
LABEL_49:
            _os_log_impl(&dword_2232BB000, v45, v46, v55, v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x223DE0F80](v48, -1, -1);
            MEMORY[0x223DE0F80](v47, -1, -1);

            goto LABEL_34;
          }
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v89 = type metadata accessor for Logger();
          __swift_project_value_buffer(v89, static Logger.pommes);
          v44 = v9;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v96 = v44;
            v48 = swift_slowAlloc();
            v99 = v48;
            *v47 = 136315138;
            v90 = ClientAudioResult.vocabularyResult.getter();
            v91 = [v90 description];

            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;

            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v99);

            *(v47 + 4) = v95;
            a4 = v98;
            v55 = "AudioPluginProcessor : rejecting media item is not playable : %s";
            goto LABEL_49;
          }
        }

        goto LABEL_34;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.pommes);
      v77 = v9;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v99 = v81;
        *v80 = 136315138;
        v82 = v77;
        v83 = ClientAudioResult.vocabularyResult.getter();
        v84 = [v83 description];

        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v99);

        *(v80 + 4) = v88;
        _os_log_impl(&dword_2232BB000, v78, v79, "AudioPluginProcessor : rejecting media item not in library : %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x223DE0F80](v81, -1, -1);
        MEMORY[0x223DE0F80](v80, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.pommes);
      v65 = v9;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v99 = v69;
        *v68 = 136315138;
        v70 = ClientAudioResult.vocabularyResult.getter();
        v71 = [v70 description];

        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v99);

        *(v68 + 4) = v75;
        _os_log_impl(&dword_2232BB000, v66, v67, "AudioPluginProcessor : media item ranking signals is nil : %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x223DE0F80](v69, -1, -1);
        MEMORY[0x223DE0F80](v68, -1, -1);
      }

      else
      {
      }
    }

    result = 0;
    a4 = v98;
  }

LABEL_35:
  *a4 = result;
  return result;
}

uint64_t closure #2 in AudioPluginProcessor.extractClientCandidates(from:resultFilterPred:)@<X0>(void **a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  type metadata accessor for ClientAudioResult();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = v9;
    if ((a2(v11) & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.pommes);
      v41 = v12;
      v12 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102 = v44;
        *v43 = 136315138;
        v101 = a5;
        v45 = ClientAudioResult.vocabularyResult.getter();
        v46 = [v45 description];

        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v102);

        *(v43 + 4) = v50;
        a5 = v101;
        _os_log_impl(&dword_2232BB000, v12, v42, "AudioPluginProcessor : candidate predicate rejecting media item : %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x223DE0F80](v44, -1, -1);
        v51 = v43;
LABEL_21:
        MEMORY[0x223DE0F80](v51, -1, -1);

LABEL_34:
        result = 0;
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    v13 = ClientAudioResult.vocabularyResult.getter();
    v14 = VocabularyResult.itemId.getter();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.pommes);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = a5;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v102 = v57;
        *v56 = 136315138;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v102);
        _os_log_impl(&dword_2232BB000, v53, v54, "%s vocabulary itemId is empty", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x223DE0F80](v57, -1, -1);
        v58 = v56;
        a5 = v55;
        MEMORY[0x223DE0F80](v58, -1, -1);
      }

      goto LABEL_33;
    }

    v18 = ClientAudioResult.vocabularyResult.getter();
    v19 = VocabularyResult.itemType.getter();

    if (v19 != 42184)
    {
      if (v19 == 18540)
      {
        v100 = a5;
        v20 = a3[10];
        v21 = a3[11];
        __swift_project_boxed_opaque_existential_1(a3 + 7, v20);
        v22 = ClientAudioResult.vocabularyResult.getter();
        v23 = VocabularyResult.itemId.getter();
        v25 = v24;

        v26 = (*(v21 + 8))(v23, v25, 0, 0, v20, v21);

        if (v26)
        {
          if (v26[32] == 1)
          {
            a5 = v100;
            if (v26[35] == 1)
            {
              if ((a4 & 1) != 0 || (v26[33] & 1) == 0)
              {
                result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v12, v26);
                goto LABEL_35;
              }

              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v27 = type metadata accessor for Logger();
              __swift_project_value_buffer(v27, static Logger.pommes);
              v28 = v12;
              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v99 = v28;
                v32 = swift_slowAlloc();
                v102 = v32;
                *v31 = 136315138;
                v33 = ClientAudioResult.vocabularyResult.getter();
                v34 = [v33 description];

                v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v37 = v36;

                v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v102);

                *(v31 + 4) = v38;
                a5 = v100;
                v39 = "AudioPluginProcessor : rejecting explicit content for %s";
LABEL_49:
                _os_log_impl(&dword_2232BB000, v29, v30, v39, v31, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v32);
                MEMORY[0x223DE0F80](v32, -1, -1);
                MEMORY[0x223DE0F80](v31, -1, -1);

                goto LABEL_34;
              }
            }

            else
            {
              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v92 = type metadata accessor for Logger();
              __swift_project_value_buffer(v92, static Logger.pommes);
              v28 = v12;
              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v99 = v28;
                v32 = swift_slowAlloc();
                v102 = v32;
                *v31 = 136315138;
                v93 = ClientAudioResult.vocabularyResult.getter();
                v94 = [v93 description];

                v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v97 = v96;

                v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v102);

                *(v31 + 4) = v98;
                a5 = v100;
                v39 = "AudioPluginProcessor : rejecting media item is not playable : %s";
                goto LABEL_49;
              }
            }

            goto LABEL_34;
          }

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v79 = type metadata accessor for Logger();
          __swift_project_value_buffer(v79, static Logger.pommes);
          v80 = v12;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v102 = v84;
            *v83 = 136315138;
            v85 = v80;
            v86 = ClientAudioResult.vocabularyResult.getter();
            v87 = [v86 description];

            v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v90 = v89;

            v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v102);

            *(v83 + 4) = v91;
            _os_log_impl(&dword_2232BB000, v81, v82, "AudioPluginProcessor : rejecting media item not in library : %s", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v84);
            MEMORY[0x223DE0F80](v84, -1, -1);
            MEMORY[0x223DE0F80](v83, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          __swift_project_value_buffer(v67, static Logger.pommes);
          v68 = v12;
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v102 = v72;
            *v71 = 136315138;
            v73 = ClientAudioResult.vocabularyResult.getter();
            v74 = [v73 description];

            v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v76;

            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v102);

            *(v71 + 4) = v78;
            _os_log_impl(&dword_2232BB000, v69, v70, "AudioPluginProcessor : media item ranking signals is nil : %s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v72);
            MEMORY[0x223DE0F80](v72, -1, -1);
            MEMORY[0x223DE0F80](v71, -1, -1);
          }

          else
          {
          }
        }

        result = 0;
        a5 = v100;
        goto LABEL_35;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.pommes);
      v41 = v12;
      v12 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v102 = v62;
        *v61 = 136315394;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000002234E18A0, &v102);
        *(v61 + 12) = 2080;
        v63 = ClientAudioResult.vocabularyResult.getter();
        VocabularyResult.itemType.getter();

        v64 = UInt16.cascadeDescription.getter();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v102);

        *(v61 + 14) = v66;
        _os_log_impl(&dword_2232BB000, v12, v60, "%s unsupported vocabulary item type : %s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v62, -1, -1);
        v51 = v61;
        goto LABEL_21;
      }

LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    result = specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(v12, 0);
  }

LABEL_35:
  *a5 = result;
  return result;
}

void AudioPluginProcessor.extractClientCandidatesForMacOS(from:)(void *a1)
{
  v2 = v1;
  v119 = a1;
  v3 = type metadata accessor for CharacterSet();
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v116 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v115 = &v110 - v9;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2232BB000, v11, v12, "AudioPluginProcessor#extractClientCandidatesForMacOS reached ranking beginning", v13, 2u);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  v14 = ClientAudioResult.vocabularyResult.getter();
  v15 = dispatch thunk of VocabularyResult.fieldType.getter();

  if (v15 - 18555) < 9u && ((0x195u >> (v15 - 123)))
  {
    v16 = qword_2234D7D50[(v15 - 18555)];
  }

  else
  {
    v16 = 2 * (v15 == 18556);
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v122 = v20;
    *v19 = 136315138;
    v120 = v16;
    type metadata accessor for MPMediaEntityType(0);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v122);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2232BB000, v17, v18, "AudioPluginProcessor#extractClientCandidatesForMacOS entityType: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x223DE0F80](v20, -1, -1);
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

  v24 = ClientAudioResult.vocabularyResult.getter();
  v25 = VocabularyResult.itemId.getter();
  v27 = v26;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v122 = v31;
    *v30 = 136315138;

    v32 = v25;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v122);

    *(v30 + 4) = v33;
    v25 = v32;
    _os_log_impl(&dword_2232BB000, v28, v29, "AudioPluginProcessor#extractClientCandidatesForMacOS itemId: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223DE0F80](v31, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  v122 = v25;
  v123 = v27;
  v120 = 0x63697665642F2F3ALL;
  v121 = 0xEA00000000002F65;
  lazy protocol witness table accessor for type String and conformance String();
  v34 = StringProtocol.components<A>(separatedBy:)();
  if (v34[2] <= 1uLL)
  {

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v122 = v68;
      *v67 = 136315138;
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v122);

      *(v67 + 4) = v69;
      v70 = "AudioPluginProcessor#extractClientCandidatesForMacOS itemId is of incorrect format: %s";
LABEL_88:
      _os_log_impl(&dword_2232BB000, v65, v66, v70, v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x223DE0F80](v68, -1, -1);
      v82 = v67;
      goto LABEL_89;
    }

LABEL_90:

    goto LABEL_97;
  }

  v114 = v25;
  v35 = v34[6];
  v36 = v34[7];
  swift_bridgeObjectRetain_n();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  v39 = os_log_type_enabled(v37, v38);
  v112 = v16;
  v113 = v2;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v111 = v27;
    v42 = v41;
    v122 = v41;
    *v40 = 136315138;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v122);

    *(v40 + 4) = v43;
    _os_log_impl(&dword_2232BB000, v37, v38, "AudioPluginProcessor#extractClientCandidatesForMacOS persistentIDUnTrimmed: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v27 = v111;
    MEMORY[0x223DE0F80](v42, -1, -1);
    MEMORY[0x223DE0F80](v40, -1, -1);
  }

  v122 = v35;
  v123 = v36;
  v44 = v115;
  CharacterSet.init(charactersIn:)();
  v45 = v116;
  CharacterSet.inverted.getter();
  v46 = v118;
  v47 = *(v117 + 8);
  v47(v44, v118);
  v48 = StringProtocol.trimmingCharacters(in:)();
  v50 = v49;
  v47(v45, v46);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v122 = v54;
    *v53 = 136315138;

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v122);

    *(v53 + 4) = v55;
    _os_log_impl(&dword_2232BB000, v51, v52, "AudioPluginProcessor#extractClientCandidatesForMacOS persistentIDTrimmed: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x223DE0F80](v54, -1, -1);
    MEMORY[0x223DE0F80](v53, -1, -1);
  }

  v56 = HIBYTE(v50) & 0xF;
  v57 = v48 & 0xFFFFFFFFFFFFLL;
  if ((v50 & 0x2000000000000000) != 0)
  {
    v58 = HIBYTE(v50) & 0xF;
  }

  else
  {
    v58 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {

    goto LABEL_86;
  }

  if ((v50 & 0x1000000000000000) != 0)
  {
    LOBYTE(v120) = 0;
    v61 = specialized _parseInteger<A, B>(ascii:radix:)(v48, v50, 10);
    v80 = v109;
LABEL_85:

    if ((v80 & 1) == 0)
    {

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v122 = v86;
        *v85 = 136315138;
        v120 = v61;
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v122);

        *(v85 + 4) = v89;
        _os_log_impl(&dword_2232BB000, v83, v84, "AudioPluginProcessor#extractClientCandidatesForMacOS persistentID: %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x223DE0F80](v86, -1, -1);
        MEMORY[0x223DE0F80](v85, -1, -1);
      }

      v90 = v112;
      v91 = v113[10];
      v92 = v113[11];
      __swift_project_boxed_opaque_existential_1(v113 + 7, v91);
      if ((*(v92 + 16))(v61, v90, v91, v92))
      {
        v65 = Logger.logObject.getter();
        v93 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v65, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v122 = v95;
          *v94 = 136315138;
          v120 = v61;
          v96 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v122);

          *(v94 + 4) = v98;
          _os_log_impl(&dword_2232BB000, v65, v93, "AudioPluginProcessor#extractClientCandidates macOS mediaItemRankingSignals: %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v95);
          MEMORY[0x223DE0F80](v95, -1, -1);
          MEMORY[0x223DE0F80](v94, -1, -1);
        }

        goto LABEL_97;
      }

      v99 = v119;
      v65 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v65, v100))
      {
LABEL_97:

        return;
      }

      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v122 = v102;
      *v101 = 136315138;
      v103 = ClientAudioResult.vocabularyResult.getter();
      v104 = [v103 description];

      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v122);

      *(v101 + 4) = v108;
      _os_log_impl(&dword_2232BB000, v65, v100, "AudioPluginProcessor#extractClientCandidatesForMacOS media item ranking signals is nil : %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x223DE0F80](v102, -1, -1);
      v82 = v101;
LABEL_89:
      MEMORY[0x223DE0F80](v82, -1, -1);
      goto LABEL_97;
    }

LABEL_86:

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v122 = v68;
      *v67 = 136315138;
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v27, &v122);

      *(v67 + 4) = v81;
      v70 = "AudioPluginProcessor#extractClientCandidatesForMacOS failed to extract persistentID from itemId: %s";
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  if ((v50 & 0x2000000000000000) == 0)
  {
    if ((v48 & 0x1000000000000000) != 0)
    {
      v59 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v59 = _StringObject.sharedUTF8.getter();
    }

    v60 = *v59;
    if (v60 == 43)
    {
      if (v57 >= 1)
      {
        v56 = v57 - 1;
        if (v57 != 1)
        {
          v61 = 0;
          if (v59)
          {
            v73 = v59 + 1;
            while (1)
            {
              v74 = *v73 - 48;
              if (v74 > 9)
              {
                goto LABEL_83;
              }

              if (!is_mul_ok(v61, 0xAuLL))
              {
                goto LABEL_83;
              }

              v64 = __CFADD__(10 * v61, v74);
              v61 = 10 * v61 + v74;
              if (v64)
              {
                goto LABEL_83;
              }

              ++v73;
              if (!--v56)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_83;
      }

      goto LABEL_104;
    }

    if (v60 != 45)
    {
      if (v57)
      {
        v61 = 0;
        if (v59)
        {
          while (1)
          {
            v77 = *v59 - 48;
            if (v77 > 9)
            {
              goto LABEL_83;
            }

            if (!is_mul_ok(v61, 0xAuLL))
            {
              goto LABEL_83;
            }

            v64 = __CFADD__(10 * v61, v77);
            v61 = 10 * v61 + v77;
            if (v64)
            {
              goto LABEL_83;
            }

            ++v59;
            if (!--v57)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_83:
      v61 = 0;
      LOBYTE(v56) = 1;
      goto LABEL_84;
    }

    if (v57 >= 1)
    {
      v56 = v57 - 1;
      if (v57 != 1)
      {
        v61 = 0;
        if (v59)
        {
          v62 = v59 + 1;
          while (1)
          {
            v63 = *v62 - 48;
            if (v63 > 9)
            {
              goto LABEL_83;
            }

            if (!is_mul_ok(v61, 0xAuLL))
            {
              goto LABEL_83;
            }

            v64 = 10 * v61 >= v63;
            v61 = 10 * v61 - v63;
            if (!v64)
            {
              goto LABEL_83;
            }

            ++v62;
            if (!--v56)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_75:
        LOBYTE(v56) = 0;
LABEL_84:
        LOBYTE(v120) = v56;
        v80 = v56;
        goto LABEL_85;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v122 = v48;
  v123 = v50 & 0xFFFFFFFFFFFFFFLL;
  if (v48 != 43)
  {
    if (v48 != 45)
    {
      if (v56)
      {
        v61 = 0;
        v78 = &v122;
        while (1)
        {
          v79 = *v78 - 48;
          if (v79 > 9)
          {
            break;
          }

          if (!is_mul_ok(v61, 0xAuLL))
          {
            break;
          }

          v64 = __CFADD__(10 * v61, v79);
          v61 = 10 * v61 + v79;
          if (v64)
          {
            break;
          }

          v78 = (v78 + 1);
          if (!--v56)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v56)
    {
      if (--v56)
      {
        v61 = 0;
        v71 = &v122 + 1;
        while (1)
        {
          v72 = *v71 - 48;
          if (v72 > 9)
          {
            break;
          }

          if (!is_mul_ok(v61, 0xAuLL))
          {
            break;
          }

          v64 = 10 * v61 >= v72;
          v61 = 10 * v61 - v72;
          if (!v64)
          {
            break;
          }

          ++v71;
          if (!--v56)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_103;
  }

  if (v56)
  {
    if (--v56)
    {
      v61 = 0;
      v75 = &v122 + 1;
      while (1)
      {
        v76 = *v75 - 48;
        if (v76 > 9)
        {
          break;
        }

        if (!is_mul_ok(v61, 0xAuLL))
        {
          break;
        }

        v64 = __CFADD__(10 * v61, v76);
        v61 = 10 * v61 + v76;
        if (v64)
        {
          break;
        }

        ++v75;
        if (!--v56)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

LABEL_105:
  __break(1u);
}

uint64_t AudioPluginProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 112);

  return v0;
}

uint64_t AudioPluginProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in Collection<>.dedup(favoring:constructKey:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(id *, void **))
{
  v59 = a3;
  v7 = *((*MEMORY[0x277D85000] & *a3) + 0xE0);

  v9 = v7(v8);
  v11 = v9;
  v12 = v10;
  if (!*(a1 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v9, v10), (v13 & 1) == 0))
  {
    v28 = a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v11, v12, isUniquelyReferenced_nonNull_native);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = v11;
    *(inited + 40) = v12;
    v58[0] = a2;

    specialized Array.append<A>(contentsOf:)(inited);

    return a1;
  }

  if (!a4 || !*(a1 + 16))
  {
LABEL_13:

LABEL_14:

    return a1;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  if ((v15 & 1) == 0)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    goto LABEL_13;
  }

  v58[0] = *(*(a1 + 56) + 8 * v14);
  log = v58[0];
  if (a4(v58, &v59))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = a3;
    v18 = log;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    loga = v19;
    if (os_log_type_enabled(v19, v20))
    {
      v49 = v20;
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57 = v50;
      *v21 = 136315906;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v57);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v57);
      *(v21 + 22) = 2080;
      type metadata accessor for AudioItemCandidate(0);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v57);

      *(v21 + 24) = v24;
      *(v21 + 32) = 2080;
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v57);

      *(v21 + 34) = v27;
      _os_log_impl(&dword_2232BB000, loga, v49, "%s#%s skip adding element: %s in favor of existing: %s", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v50, -1, -1);
      MEMORY[0x223DE0F80](v21, -1, -1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    goto LABEL_14;
  }

  v32 = a3;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v57 = a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v11, v12, v33);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.pommes);
  v35 = log;
  v36 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  logb = v35;
  if (os_log_type_enabled(v36, v52))
  {
    v37 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v37 = 136315906;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v57);
    *(v37 + 12) = 2080;
    *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v57);
    *(v37 + 22) = 2080;
    type metadata accessor for AudioItemCandidate(0);
    v38 = String.init<A>(describing:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v57);

    *(v37 + 24) = v48;
    *(v37 + 32) = 2080;
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v57);

    *(v37 + 34) = v42;
    _os_log_impl(&dword_2232BB000, v36, v52, "%s#%s removing element: %s in favor of other: %s", v37, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v51, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  else
  {
  }

  v57 = a2;
  v43 = a2[2];
  if (v43)
  {
    v44 = 0;
    v45 = a2 + 5;
    while (1)
    {
      v46 = *(v45 - 1) == v11 && *v45 == v12;
      if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v44;
      v45 += 2;
      if (v43 == v44)
      {
        goto LABEL_30;
      }
    }

    specialized Array.remove(at:)(v44);
  }

  else
  {
LABEL_30:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_2234CF920;
  *(v47 + 32) = v11;
  *(v47 + 40) = v12;
  specialized Array.append<A>(contentsOf:)(v47);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);

  return a1;
}

{
  v57 = a3;

  v8 = PommesResult.resultId.getter();
  v10 = v8;
  v11 = v9;
  if (!*(a1 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v8, v9), (v12 & 1) == 0))
  {
    v27 = a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v10, v11, isUniquelyReferenced_nonNull_native);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = v10;
    *(inited + 40) = v11;
    v56[0] = a2;

    specialized Array.append<A>(contentsOf:)(inited);

    return a1;
  }

  if (!a4 || !*(a1 + 16))
  {
LABEL_13:

LABEL_14:

    return a1;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  if ((v14 & 1) == 0)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    goto LABEL_13;
  }

  v56[0] = *(*(a1 + 56) + 8 * v13);
  log = v56[0];
  if (a4(v56, &v57))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = a3;
    v17 = log;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    loga = v18;
    if (os_log_type_enabled(v18, v19))
    {
      v48 = v17;
      v20 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v20 = 136315906;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v55);
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v55);
      *(v20 + 22) = 2080;
      type metadata accessor for PommesResult();
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v55);

      *(v20 + 24) = v23;
      *(v20 + 32) = 2080;
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v55);

      *(v20 + 34) = v26;
      _os_log_impl(&dword_2232BB000, loga, v19, "%s#%s skip adding element: %s in favor of existing: %s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v50, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
    }

    goto LABEL_14;
  }

  v31 = a3;

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v55 = a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v10, v11, v32);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.pommes);
  v34 = log;
  v35 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  logb = v34;
  if (os_log_type_enabled(v35, v51))
  {
    v36 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v36 = 136315906;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v55);
    *(v36 + 12) = 2080;
    *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v55);
    *(v36 + 22) = 2080;
    type metadata accessor for PommesResult();
    v37 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v55);

    *(v36 + 24) = v47;
    *(v36 + 32) = 2080;
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v55);

    *(v36 + 34) = v41;
    _os_log_impl(&dword_2232BB000, v35, v51, "%s#%s removing element: %s in favor of other: %s", v36, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v49, -1, -1);
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

  else
  {
  }

  v55 = a2;
  v42 = a2[2];
  if (v42)
  {
    v43 = 0;
    v44 = a2 + 5;
    while (1)
    {
      v45 = *(v44 - 1) == v10 && *v44 == v11;
      if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v43;
      v44 += 2;
      if (v42 == v43)
      {
        goto LABEL_30;
      }
    }

    specialized Array.remove(at:)(v43);
  }

  else
  {
LABEL_30:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_2234CF920;
  *(v46 + 32) = v10;
  *(v46 + 40) = v11;
  specialized Array.append<A>(contentsOf:)(v46);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);

  return a1;
}

uint64_t closure #1 in Collection<>.dedup(favoring:constructKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, NSObject **a8@<X8>)
{
  v156 = a6;
  v159 = a5;
  v162 = a4;
  v163 = a3;
  v164 = a8;
  v10 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v165 = *(AssociatedTypeWitness - 8);
  v12 = *(v165 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v16 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = (&v146 - v19);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v151 = &v146 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v155 = &v146 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v152 = &v146 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v150 = &v146 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v154 = &v146 - v34;
  v35 = type metadata accessor for Optional();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v153 = &v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v158 = (&v146 - v43);
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v146 - v45;
  v47 = *a1;
  v48 = *(a1 + 8);
  v168 = v47;

  v160 = a2;
  v49 = (v163)(a2);
  v161 = v47;
  if (!v50)
  {
    v62 = v165;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.pommes);
    v64 = *(v62 + 16);
    v64(v16, v160, AssociatedTypeWitness);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v160 = v16;
      v68 = v67;
      v162 = swift_slowAlloc();
      v166 = v162;
      *v68 = 136315650;
      *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v166);
      v163 = v48;
      *(v68 + 12) = 2080;
      *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v166);
      *(v68 + 22) = 2080;
      v69 = v160;
      v64(v155, v160, AssociatedTypeWitness);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      (*(v62 + 8))(v69, AssociatedTypeWitness);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v166);
      v48 = v163;

      *(v68 + 24) = v73;
      _os_log_impl(&dword_2232BB000, v65, v66, "%s#%s unable to construct Key skip adding element: %s", v68, 0x20u);
      v74 = v162;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v68, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v16, AssociatedTypeWitness);
    }

    v78 = v164;
    *v164 = v161;
    v78[1] = v48;
  }

  v149 = v20;
  v163 = v48;
  v166 = v49;
  v167 = v50;
  v51 = v49;
  v52 = v50;

  MEMORY[0x223DDF4D0](&v166, v47, MEMORY[0x277D837D0], AssociatedTypeWitness, MEMORY[0x277D837E0]);

  v53 = *(v165 + 48);
  v54 = v53(v46, 1, AssociatedTypeWitness);
  v148 = *(v36 + 8);
  v148(v46, v35);
  if (v54 == 1)
  {
    v55 = v165;
    v56 = v158;
    (*(v165 + 16))(v158, v160, AssociatedTypeWitness);
    (*(v55 + 56))(v56, 0, 1, AssociatedTypeWitness);
    v57 = v51;
    v166 = v51;
    v167 = v52;
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    v58 = v164;
    *v164 = v168;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = v57;
    *(inited + 40) = v52;
    v166 = v163;

    specialized Array.append<A>(contentsOf:)(inited);
    v60 = v166;

    v58[1] = v60;
    return result;
  }

  v157 = v51;
  v162 = v52;
  v147 = AssociatedTypeWitness;
  v75 = v159;
  if (!v159)
  {

    goto LABEL_14;
  }

  v166 = v157;
  v167 = v162;

  _sxq_SbRi_zRi0_zRi__Ri0__r0_ly7ElementQzABIsegnnd_SgSlRzSi5IndexRtzlWOy(v75);
  v76 = v153;
  v77 = v147;
  MEMORY[0x223DDF4D0](&v166, v161, MEMORY[0x277D837D0], v147, MEMORY[0x277D837E0]);

  if (v53(v76, 1, v77) == 1)
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v75);

    v148(v76, v35);
LABEL_14:
    v79 = v163;
    v80 = v164;
    v81 = v161;
LABEL_15:
    *v80 = v81;
    v80[1] = v79;
  }

  v82 = v165;
  v83 = v154;
  (*(v165 + 32))(v154, v76, v77);
  v84 = v160;
  v85 = v77;
  if (v75(v83, v160))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.pommes);
    v87 = *(v82 + 16);
    v88 = v150;
    v87(v150, v84, v85);
    v89 = v152;
    v90 = v154;
    v87(v152, v154, v85);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    v162 = v91;
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v166 = v160;
      *v93 = 136315906;
      *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v166);
      *(v93 + 12) = 2080;
      *(v93 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v166);
      *(v93 + 22) = 2080;
      v94 = v155;
      v87(v155, v88, v85);
      v95 = String.init<A>(describing:)();
      LODWORD(v158) = v92;
      v96 = v95;
      v97 = v82;
      v98 = v85;
      v100 = v99;
      v101 = *(v97 + 8);
      v165 = v97 + 8;
      v101(v88, v98);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v100, &v166);

      *(v93 + 24) = v102;
      *(v93 + 32) = 2080;
      v103 = v152;
      v87(v94, v152, v98);
      v104 = String.init<A>(describing:)();
      v106 = v105;
      v101(v103, v98);
      v107 = v101;
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v166);

      *(v93 + 34) = v108;
      v109 = v162;
      _os_log_impl(&dword_2232BB000, v162, v158, "%s#%s skip adding element: %s in favor of existing: %s", v93, 0x2Au);
      v110 = v160;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v110, -1, -1);
      MEMORY[0x223DE0F80](v93, -1, -1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v159);

      v107(v154, v98);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v159);

      v133 = *(v82 + 8);
      v133(v89, v85);
      v133(v88, v85);
      v133(v90, v85);
    }

    v81 = v161;
    v79 = v163;
    v80 = v164;
    goto LABEL_15;
  }

  v111 = *(v82 + 16);
  v112 = v158;
  v111(v158, v84, v77);
  (*(v82 + 56))(v112, 0, 1, v77);
  v166 = v157;
  v167 = v162;
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v113 = type metadata accessor for Logger();
  __swift_project_value_buffer(v113, static Logger.pommes);
  v114 = v151;
  v111(v151, v83, v77);
  v111(v149, v84, v77);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    LODWORD(v160) = v116;
    v161 = v115;
    v118 = v117;
    v158 = swift_slowAlloc();
    v166 = v158;
    *v118 = 136315906;
    *(v118 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000002234E16E0, &v166);
    *(v118 + 12) = 2080;
    *(v118 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000002234E1840, &v166);
    *(v118 + 22) = 2080;
    v119 = v155;
    v111(v155, v114, v85);
    v120 = String.init<A>(describing:)();
    v122 = v121;
    v153 = v111;
    v123 = *(v165 + 8);
    v123(v114, v147);
    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, &v166);

    *(v118 + 24) = v124;
    *(v118 + 32) = 2080;
    v125 = v149;
    (v153)(v119, v149, v147);
    v126 = v123;
    v127 = String.init<A>(describing:)();
    v129 = v128;
    v123(v125, v147);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v166);
    v83 = v154;

    *(v118 + 34) = v130;
    v85 = v147;
    v131 = v161;
    _os_log_impl(&dword_2232BB000, v161, v160, "%s#%s removing element: %s in favor of other: %s", v118, 0x2Au);
    v132 = v158;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v132, -1, -1);
    MEMORY[0x223DE0F80](v118, -1, -1);
  }

  else
  {

    v126 = *(v82 + 8);
    v126(v149, v85);
    v126(v114, v85);
  }

  v134 = v159;
  v166 = v163;
  v135 = *(v163 + 16);
  v136 = v162;
  v137 = v157;
  if (v135)
  {
    v138 = 0;
    v139 = (v163 + 40);
    while (*(v139 - 1) != v137 || v136 != *v139)
    {
      v141 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v137 = v157;
      v136 = v162;
      if (v141)
      {
        break;
      }

      ++v138;
      v139 += 2;
      if (v135 == v138)
      {
        goto LABEL_37;
      }
    }

    specialized Array.remove(at:)(v138);
  }

  else
  {
LABEL_37:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v142 = swift_initStackObject();
  *(v142 + 16) = xmmword_2234CF920;
  v143 = v162;
  *(v142 + 32) = v157;
  *(v142 + 40) = v143;
  specialized Array.append<A>(contentsOf:)(v142);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v134);
  result = (v126)(v83, v85);
  v144 = v166;
  v145 = v164;
  *v164 = v168;
  v145[1] = v144;
  return result;
}

uint64_t closure #2 in Collection<>.dedup(favoring:constructKey:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  MEMORY[0x223DDF4D0](v9, a2, MEMORY[0x277D837D0], AssociatedTypeWitness, MEMORY[0x277D837E0]);
}

unint64_t type metadata accessor for MPMediaLibrary()
{
  result = lazy cache variable for type metadata for MPMediaLibrary;
  if (!lazy cache variable for type metadata for MPMediaLibrary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MPMediaLibrary);
  }

  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DDF740](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb);
  }

  return result;
}

uint64_t specialized AudioPluginProcessor.extractServerCandidates(from:)(uint64_t a1)
{
  v70 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v2 = *(v70 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v70, v4);
  v69 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68, v7);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v66, v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v77 = &v58 - v16;
  v17 = type metadata accessor for PerformanceUtil.Ticket(0);
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v23 = &v22[v18[7]];
  *v23 = "SiriInformationSearch/AudioPluginProcessor.swift";
  *(v23 + 1) = 48;
  v23[16] = 2;
  *&v22[v18[8]] = 191;
  v24 = &v22[v18[9]];
  *v24 = "extractServerCandidates(from:)";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v25 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003DLL);
  v26 = &v22[v18[10]];
  *v26 = v25;
  v26[1] = v27;
  v28 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  v29 = *(a1 + 16);
  if (v29)
  {
    v59 = v22;
    v31 = *(v9 + 16);
    v30 = v9 + 16;
    v32 = (a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64)));
    v63 = *(v30 + 56);
    v64 = v31;
    v61 = (v30 - 8);
    v62 = (v2 + 16);
    v60 = (v2 + 8);
    v65 = v30;
    v33 = v66;
    do
    {
      v76 = v29;
      v34 = v77;
      v35 = v64;
      v64(v77, v32, v33);
      v35(v14, v34, v33);
      v36 = v67;
      v35(v67, v14, v33);
      swift_storeEnumTagMultiPayload();
      v37 = Apple_Parsec_Siri_V2alpha_AudioItem.identifier.getter();
      v74 = v38;
      v75 = v37;
      v39 = Apple_Parsec_Siri_V2alpha_AudioItem.title.getter();
      v72 = v40;
      v73 = v39;
      v71 = Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter();
      v42 = v41;
      v43 = v69;
      Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
      LOBYTE(v34) = Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.getter();
      v44 = [objc_allocWithZone(type metadata accessor for AudioItemCandidate.Features()) init];
      v45 = type metadata accessor for AudioItemCandidate(0);
      v46 = objc_allocWithZone(v45);
      *&v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score] = 1065353216;
      outlined init with copy of AudioItemCandidate.BackingItem(v36, &v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem]);
      v47 = &v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier];
      v48 = v74;
      *v47 = v75;
      v47[1] = v48;
      v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source] = 0;
      v49 = &v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title];
      v50 = v72;
      *v49 = v73;
      v49[1] = v50;
      v51 = &v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist];
      *v51 = v71;
      v51[1] = v42;
      v52 = v70;
      (*v62)(&v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v43, v70);
      v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription] = v34 & 1;
      v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded] = 0;
      *&v46[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features] = v44;
      v78.receiver = v46;
      v78.super_class = v45;
      objc_msgSendSuper2(&v78, sel_init);
      v53 = *v61;
      (*v61)(v14, v33);
      (*v60)(v43, v52);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v36, type metadata accessor for AudioItemCandidate.BackingItem);
      v54 = v53(v77, v33);
      MEMORY[0x223DDF820](v54);
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 += v63;
      v29 = v76 - 1;
    }

    while (v76 != 1);
    v28 = v79;
    v22 = v59;
  }

  v56 = specialized Collection<>.dedup(favoring:constructKey:)(0, 0, v28);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v22, 1);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_1(v22, type metadata accessor for PerformanceUtil.Ticket);
  return v56;
}

uint64_t (*specialized AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:)(uint64_t a1, char a2))()
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x277D39190], v4);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioVerb and conformance Apple_Parsec_Siri_V2alpha_AudioVerb();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = (*(v5 + 8))(v9, v4);
  if (v26[1] != v26[0])
  {
    if ((a2 & 1) == 0 || ((*(*a1 + 160))(v10) & 1) == 0)
    {
      return protocol witness for static Equatable.== infix(_:_:) in conformance DisableSearchPreflightClientError;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    v12 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = os_log_type_enabled(v12, v19);
    v15 = closure #3 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
    if (v20)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v12, v19, "AudioPluginProcessor : remove genre candidates from library", v16, 2u);
      v17 = closure #3 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
      goto LABEL_18;
    }

LABEL_19:
    v25 = v15;
    goto LABEL_20;
  }

  if ((*(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v12 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v12, v23);
    v15 = closure #1 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
    if (v24)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v12, v23, "AudioPluginProcessor : remove playlists, artists, genre .. all candidates from library that cannot be added to a playlist", v16, 2u);
      v17 = closure #1 in AudioPluginProcessor.createClientResultFilterPred(for:haveCatalogCandidates:);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = getEnumTag for CurareDonation;
  if (!v14)
  {
    goto LABEL_19;
  }

  v16 = swift_slowAlloc();
  *v16 = 0;
  _os_log_impl(&dword_2232BB000, v12, v13, "AudioPluginProcessor : remove all candidates from library", v16, 2u);
  v17 = getEnumTag for CurareDonation;
LABEL_18:
  v25 = v17;
  MEMORY[0x223DE0F80](v16, -1, -1);
LABEL_20:

  return v25;
}

uint64_t _sxq_SbRi_zRi0_zRi__Ri0__r0_ly7ElementQzABIsegnnd_SgSlRzSi5IndexRtzlWOy(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t PommesResourceDownloadInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t PommesResourceDownloadInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PommesResourceDownloadInstrumentationUtil.logStartOfPommesResourceDownload(requestId:pommesCandidateId:resourceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A0B8]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A0D0]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setResourceType_];
        [v19 setStartedOrChanged:v11];
        [v8 setResourceDownloadContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log start of POMMES resource download", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesResourceDownloadInstrumentationUtil.logEndOfPommesResourceDownload(requestId:pommesCandidateId:downloadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Class *a5, SEL *a6, SEL *a7, const char *a8)
{
  v13 = v8;
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D5A0B8]) init];
  if (!v17)
  {
    v23 = v16;
LABEL_10:

LABEL_11:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);
    v27 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2232BB000, v27, v25, a8, v26, 2u);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

    goto LABEL_17;
  }

  v27 = v17;
  v18 = [objc_allocWithZone(*a5) init];
  if (!v18)
  {

    v23 = v27;
    goto LABEL_10;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(a4))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 *a6];
  [v27 *a7];
  [v16 setResourceDownloadContext:v27];
  v20 = [objc_opt_self() processInfo];
  v21 = NSProcessInfo.isRunningUnitTests.getter();

  if (v21)
  {
    v22 = (*(*v13 + 96))();
  }

  else
  {
    v22 = [objc_opt_self() sharedStream];
  }

  [v22 emitMessage_];
  swift_unknownObjectRelease();

LABEL_17:
}

uint64_t PommesResourceDownloadInstrumentationUtil.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PommesResourceDownloadInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *SagePegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  v16 = swift_allocObject();
  v18 = a5[3];
  v17 = a5[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(a1, a2, a3, a4, v22, a6, v27, v16, v18, v17);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v24;
}

uint64_t specialized SearchToolPegasusProxy.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  outlined consume of Data?(*(v0 + 64), *(v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v6 = *(v0 + 128);

  v7 = *(*v0 + 216);
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t SagePegasusProxy.search(searchRequest:clientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v4[20] = v11;
  v12 = *(v11 - 8);
  v4[21] = v12;
  v13 = *(v12 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v4[25] = Context;
  v15 = *(Context - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v17 = type metadata accessor for Date();
  v4[28] = v17;
  v18 = *(v17 - 8);
  v4[29] = v18;
  v19 = *(v18 + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](SagePegasusProxy.search(searchRequest:clientEntities:), 0, 0);
}

uint64_t SagePegasusProxy.search(searchRequest:clientEntities:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[11];
  v5 = static PerformanceUtil.shared;
  Date.init()();
  (*(*v5 + 200))(0xD00000000000003ALL, 0x80000002234E0830, 0, v1, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 20, "search(searchRequest:clientEntities:)", 37, 2, partial apply for closure #1 in SagePegasusProxy.search(searchRequest:clientEntities:), v4, MEMORY[0x277D84F78] + 8);
  (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 40);
  if (dispatch thunk of NetworkAvailability.isAvailable.getter())
  {
    v7 = v0[27];
    v8 = v0[23];
    v9 = v0[11];
    v10 = v0[9];
    v11 = (*(*v9 + 296))();
    static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)(v10, v11, v9[7], v7);

    (*(*v9 + 368))(v10, v7);
    v28 = v0[23];
    v29 = v0[24];
    v31 = v0[21];
    v30 = v0[22];
    v32 = v0[20];
    v34 = v0[10];
    v33 = v0[11];
    v35 = *(v31 + 32);
    v0[31] = v35;
    v0[32] = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v35(v29, v28, v32);
    (*(*v33 + 88))(v34, v29);
    v36 = *(v31 + 8);
    v0[33] = v36;
    v0[34] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v29, v32);
    v37 = (v35)(v29, v30, v32);
    (*(*v33 + 248))(v37);
    v0[35] = v0[3];
    v38 = *(MEMORY[0x277D39E80] + 4);
    v42 = (*MEMORY[0x277D39E80] + MEMORY[0x277D39E80]);
    v39 = swift_task_alloc();
    v0[36] = v39;
    *v39 = v0;
    v39[1] = SagePegasusProxy.search(searchRequest:clientEntities:);
    v40 = v0[24];
    v41 = v0[19];

    return v42(v41, v40);
  }

  else
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sage);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "Network is unavailable, unable to complete search", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }

    lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
    v17 = v0[30];
    v18 = v0[27];
    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[22];
    v23 = v0[18];
    v22 = v0[19];
    v25 = v0[14];
    v24 = v0[15];

    v26 = v0[1];

    return v26();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  v4 = *(v2 + 280);

  if (v0)
  {
    v5 = SagePegasusProxy.search(searchRequest:clientEntities:);
  }

  else
  {
    v5 = SagePegasusProxy.search(searchRequest:clientEntities:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v74 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
  v6 = *(v5 + 104);
  v6(v3, *MEMORY[0x277D39270], v4);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (*(v0 + 32) == *(v0 + 40))
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sage);
    (*(v11 + 16))(v8, v9, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v18 = *(v0 + 200);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 128);
    if (v15)
    {
      v70 = *(v0 + 200);
      v22 = swift_slowAlloc();
      v66 = v14;
      v23 = swift_slowAlloc();
      v73 = v23;
      *v22 = 136315138;
      v24 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.summarizedDescription.getter();
      v67 = v16;
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v73);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2232BB000, v13, v66, "Pegasus: PegasusResponse: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223DE0F80](v23, -1, -1);
      MEMORY[0x223DE0F80](v22, -1, -1);

      (*(v17 + 8))(v67, v70);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v17 + 8))(v16, v18);
    }

    v53 = *(v0 + 256);
    v54 = *(v0 + 240);
    v55 = *(v0 + 216);
    v56 = *(v0 + 184);
    v57 = *(v0 + 176);
    v58 = *(v0 + 152);
    v60 = *(v0 + 136);
    v59 = *(v0 + 144);
    v61 = *(v0 + 128);
    v69 = *(v0 + 120);
    v72 = *(v0 + 112);
    v62 = *(v0 + 64);
    (*(v0 + 248))(v62, *(v0 + 192), *(v0 + 160));
    v63 = type metadata accessor for PegasusSearchResponse(0);
    (*(v60 + 32))(v62 + *(v63 + 20), v58, v61);

    v52 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 152);
    v68 = *(v0 + 136);
    v71 = *(v0 + 208);
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 96);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
    v6(v30, *MEMORY[0x277D39268], v31);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v7(v30, v31);
    v7(v29, v31);
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
    swift_allocError();
    v35 = *(v0 + 264);
    v36 = *(v0 + 272);
    v65 = *(v0 + 216);
    v38 = *(v0 + 192);
    v37 = *(v0 + 200);
    v40 = *(v0 + 152);
    v39 = *(v0 + 160);
    v41 = *(v0 + 128);
    if (v32 == v33)
    {
      v42 = 11;
    }

    else
    {
      v42 = 0;
    }

    *v34 = v42;
    swift_willThrow();
    (*(v68 + 8))(v40, v41);
    v35(v38, v39);
    (*(v71 + 8))(v65, v37);
    v43 = *(v0 + 240);
    v44 = *(v0 + 216);
    v46 = *(v0 + 184);
    v45 = *(v0 + 192);
    v47 = *(v0 + 176);
    v49 = *(v0 + 144);
    v48 = *(v0 + 152);
    v51 = *(v0 + 112);
    v50 = *(v0 + 120);

    v52 = *(v0 + 8);
  }

  return v52();
}

{
  v1 = *(v0 + 272);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  (*(v0 + 264))(*(v0 + 192), *(v0 + 160));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 296);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 176);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a1;
  v92 = a3;
  v95 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = *(*(v95 - 1) + 64);
  MEMORY[0x28223BE20](v95, v6);
  v8 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v110 = *(v108 - 8);
  v9 = *(v110 + 64);
  MEMORY[0x28223BE20](v108, v10);
  v12 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v90 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v94 = v89 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = v89 - v22;
  v24 = type metadata accessor for SignpostToken();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v98 = v23;
  v105 = v3;
  v101 = v8;
  v29 = type metadata accessor for OSSignposter();
  v96 = __swift_project_value_buffer(v29, static Signposter.sage);
  v97 = v28;
  v30 = OSSignposter.begin(name:context:)("proxy.constructSearchRequest", 28, 2u, 0, v28);
  if (one-time initialization token for shared != -1)
  {
    v30 = swift_once();
  }

  v32 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v30, v31);
  v33 = v106;
  v86[0] = v105;
  v86[1] = v106;
  v91 = a2;
  v87 = a2;
  Date.init()();
  v34 = *(*v32 + 200);
  v35 = *v32 + 200;
  v87 = &v85;
  v88 = v13;
  v36 = v34;
  LOBYTE(v86[0]) = 2;
  v37 = v98;
  v38 = v103;
  v107 = v35;
  (v34)(0xD000000000000024, 0x80000002234E1A50, 0, v12, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 63, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v86[0], partial apply for closure #1 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
  v93 = v38;
  v39 = v110 + 8;
  v103 = *(v110 + 8);
  (v103)(v12, v108);
  v40 = *(v33 + *(type metadata accessor for PommesSearchRequest(0) + 52));
  v104 = v13;
  v102 = v36;
  if (v40)
  {
    v41 = *(v40 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest);
  }

  v42 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPushOffRequest.setter();
  v42(v109, 0);
  Date.init()();
  v43 = v105;
  LOBYTE(v86[0]) = 2;
  v99 = v32;
  v44 = v93;
  v102(v109, 0xD000000000000016, 0x80000002234E0930, 0, v12, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 68, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v86[0], partial apply for closure #2 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:), v105, MEMORY[0x277D839B0]);
  v93 = v12;
  v110 = v39;
  (v103)(v12, v108);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.userDataShareOptIn.setter();
  AFIsHorseman();
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isDataOnlyRequest.setter();
  v45 = v101;
  Date.init()();
  v46 = v95;
  v47 = v45 + v95[5];
  *v47 = "SiriInformationSearch/SagePegasusProxy.swift";
  *(v47 + 8) = 44;
  v48 = v45;
  *(v47 + 16) = 2;
  *(v45 + v46[6]) = 73;
  v49 = v45 + v46[7];
  *v49 = "constructSearchRequest(pommesSearchRequest:queryContext:)";
  *(v49 + 8) = 57;
  *(v49 + 16) = 2;
  v50 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000031);
  v51 = (v45 + v46[8]);
  *v51 = v50;
  v51[1] = v52;
  v53 = v43;
  v54 = v43[7];
  v55 = v94;
  (*(*v54 + 344))(v37, v106);
  if (v44)
  {
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v48, type metadata accessor for PerformanceUtil.Ticket);
    (*(v100 + 8))(v37, v104);
    v56 = v97;
    OSSignposter.end(token:message:)(v97, 0, 0xE000000000000000);
    return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v56, type metadata accessor for SignpostToken);
  }

  else
  {
    v58 = *(v100 + 40);
    v94 = 0;
    v95 = v58;
    v59 = v104;
    (v58)(v37, v55);
    v60 = (*(*v99 + 184))(v48, 0);
    v89[1] = v89;
    MEMORY[0x28223BE20](v60, v61);
    LODWORD(v86[0]) = v43;
    v62 = v93;
    Date.init()();
    v87 = &v85;
    v88 = v59;
    LOBYTE(v86[0]) = 2;
    v63 = v90;
    v64 = v94;
    (v102)(0xD00000000000002DLL, 0x80000002234E0B10, 0, v62, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 77, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v86[0], partial apply for closure #3 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
    v106 = v64;
    (v103)(v62, v108);
    (v95)(v37, v63, v104);
    v65 = (*(*v43 + 80))(v37);
    v95 = v89;
    MEMORY[0x28223BE20](v65, v66);
    Date.init()();
    v94 = (MEMORY[0x277D84F78] + 8);
    v87 = v86;
    v88 = MEMORY[0x277D84F78] + 8;
    LOBYTE(v86[0]) = 2;
    v67 = v106;
    v68 = v102;
    (v102)(0xD000000000000018, 0x80000002234E0BE0, 0, v62, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 87, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v86[0], partial apply for closure #4 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
    v91 = v67;
    v69 = v108;
    v70 = v103;
    v71 = (v103)(v62, v108);
    v106 = v89;
    MEMORY[0x28223BE20](v71, v72);
    Date.init()();
    v87 = v86;
    v88 = v94;
    LOBYTE(v86[0]) = 2;
    v68(0xD000000000000019, 0x80000002234E0A10, 0, v62, "SiriInformationSearch/SagePegasusProxy.swift", 44, 2, 91, "constructSearchRequest(pommesSearchRequest:queryContext:)", 57, v86[0], partial apply for closure #5 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:));
    (v70)(v62, v69);
    (*(*v53 + 96))(v37, v54);
    v73 = specialized static PegasusOverrideUtil.requestFeatureFlag.getter();
    if (v74)
    {
      v75 = v73;
      v76 = v74;
      if (one-time initialization token for sage != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static Logger.sage);

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v109[0] = v81;
        *v80 = 136315138;
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v109);
        _os_log_impl(&dword_2232BB000, v78, v79, "Using override Pegasus request feature flag “%s”", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        v37 = v98;
        MEMORY[0x223DE0F80](v81, -1, -1);
        MEMORY[0x223DE0F80](v80, -1, -1);
      }

      Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.setter();
    }

    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v101, type metadata accessor for PerformanceUtil.Ticket);
    v82 = v100;
    v83 = v104;
    (*(v100 + 16))(v92, v37, v104);
    (*(v82 + 8))(v37, v83);
    v84 = v97;
    OSSignposter.end(token:message:)(v97, 0, 0xE000000000000000);
    return _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v84, type metadata accessor for SignpostToken);
  }
}

uint64_t closure #1 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 248))(&v7);
  v3 = (a2 + *(type metadata accessor for PommesSearchRequest(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  dispatch thunk of PegasusProxyForIntelligenceFlow.createRequest(query:context:)();
}

uint64_t closure #3 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 56);
  (*(v9 + 16))(v13, a2, v8);
  (*(*v14 + 432))(v13, a3, a4);
  return (*(v9 + 8))(v13, v8);
}

Swift::Void __swiftcall SagePegasusProxy.prepareForSearchAtSessionStart()()
{
  v1 = type metadata accessor for PerformanceUtil.Ticket(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ((*v0)[29])(0, 0);
  Date.init()();
  v7 = &v6[v2[7]];
  *v7 = "SiriInformationSearch/SagePegasusProxy.swift";
  *(v7 + 1) = 44;
  v7[16] = 2;
  *&v6[v2[8]] = 113;
  v8 = &v6[v2[9]];
  *v8 = "prepareForSearchAtSessionStart()";
  *(v8 + 1) = 32;
  v8[16] = 2;
  v9 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000026);
  v10 = &v6[v2[10]];
  *v10 = v9;
  v10[1] = v11;
  (*(*v0[7] + 312))();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = (*(*static PerformanceUtil.shared + 184))(v6, 0);
  ((*v0)[31])(&v14, v12);
  dispatch thunk of BasePegasusProxy.warmUpConnectionIfNeeded()();

  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_2(v6, type metadata accessor for PerformanceUtil.Ticket);
}

char *SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16, v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(a1, a2, a3, a4, v19, a6, a7, v23[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v21;
}

uint64_t SagePegasusProxy.__deallocating_deinit()
{
  v0 = *specialized SearchToolPegasusProxy.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

char *vtable thunk for SearchToolPegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:) dispatching to SagePegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v12 = *a1;
  v13 = type metadata accessor for SagePegasusProxy();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v18 = a5[3];
  v17 = a5[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v12, a2, a3, a4, v22, a6, v27, v16, v18, v17);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v24;
}

char *specialized SagePegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a6;
  v35 = a8;
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a9 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v16, v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v30 - v26;
  (*(v19 + 32))(&v30 - v26, a5, a9);
  (*(v13 + 16))(v18, a7, v12);
  (*(v19 + 16))(v24, v27, a9);
  v28 = specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v30, v31, v32, v33, v24, v34, v18, v35, a9, a10);
  (*(v13 + 8))(a7, v12);
  (*(v19 + 8))(v27, a9);
  return v28;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode)
  {
    type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode);
  }

  return result;
}

uint64_t partial apply for closure #2 in SagePegasusProxy.constructSearchRequest(pommesSearchRequest:queryContext:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 352))();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for SagePegasusProxy()
{
  result = type metadata singleton initialization cache for SagePegasusProxy;
  if (!type metadata singleton initialization cache for SagePegasusProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SagePegasusProxy.search(searchRequest:clientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return v12(a1, a2, a3);
}

uint64_t RRReferenceResolverProtocol.getEntitiesFromMarrsSpans(relevantTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  v210 = *(v211 - 8);
  v5 = *(v210 + 64);
  v7 = MEMORY[0x28223BE20](v211, v6);
  v213 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v209 = &v197 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v208 = &v197 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v201 = &v197 - v17;
  v228 = type metadata accessor for UsoIdentifier();
  v234 = *(v228 - 8);
  v18 = *(v234 + 8);
  MEMORY[0x28223BE20](v228, v19);
  v21 = &v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v215 = &v197 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v204 = *(v205 - 8);
  v27 = *(v204 + 64);
  MEMORY[0x28223BE20](v205, v28);
  v203 = &v197 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = &v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v37);
  v241 = &v197 - v38;
  v237 = type metadata accessor for Siri_Nlu_External_Span();
  v225 = *(v237 - 8);
  v39 = *(v225 + 64);
  v41 = MEMORY[0x28223BE20](v237, v40);
  v207 = &v197 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v206 = &v197 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v233 = &v197 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v232 = &v197 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v221 = (&v197 - v54);
  MEMORY[0x28223BE20](v53, v55);
  v226 = &v197 - v56;
  v57 = *(Siri_Nlu_External_Span.matcherNames.getter() + 16);

  if (!v57)
  {
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_102;
    }

    goto LABEL_25;
  }

  v200 = v23;
  v212 = v22;
  v198 = a2;
  v199 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV11MatcherNameOGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanV11MatcherNameOGMR);
  v58 = *(v31 + 72);
  v59 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2234CF940;
  v216 = v59;
  v61 = *(v31 + 104);
  v61(v60 + v59, *MEMORY[0x277D5DA10], v30);
  v62 = *MEMORY[0x277D5DA20];
  v240 = v58;
  v61(v60 + v59 + v58, v62, v30);
  v63 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E18_Nlu_External_SpanV11MatcherNameO_Tt0g5Tf4g_n(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v64 = MEMORY[0x277D84F90];
  v235 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C18_Nlu_External_SpanVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v65 = Siri_Nlu_External_Span.matcherNames.getter();
  v66 = *(v65 + 16);
  v236 = v21;
  v219 = v66;
  if (!v66)
  {
    v227 = v64;
    v69 = v228;
LABEL_29:

    v91 = v227;
    v224 = *(v227 + 16);
    if (!v224)
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v189 = type metadata accessor for Logger();
      __swift_project_value_buffer(v189, static Logger.pommes);
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 0;
        _os_log_impl(&dword_2232BB000, v190, v191, "RRReferenceResolverProtocol: no MARRS spans", v192, 2u);
        MEMORY[0x223DE0F80](v192, -1, -1);
      }

      goto LABEL_93;
    }

    v92 = type metadata accessor for UsoEntityBuilder_common_ReferenceType();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    v95 = UsoEntityBuilder_common_ReferenceType.init()();
    v96 = v204;
    v97 = v203;
    v98 = v205;
    (*(v204 + 104))(v203, *MEMORY[0x277D5EE50], v205);
    v241 = v95;
    dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
    v99 = (*(v96 + 8))(v97, v98);
    v100 = 0;
    v101 = 0;
    v223 = v91 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
    v239 = (v225 + 16);
    v222 = (v200 + 8);
    v221 = (v225 + 8);
    v240 = (v234 + 16);
    v229 = (v225 + 32);
    v102 = (v234 + 8);
    v226 = (v225 + 40);
    v99.n128_u64[0] = 136315138;
    v217 = v99;
    v103 = v212;
    v104 = v215;
    while (1)
    {
      if (v100 >= *(v227 + 16))
      {
        goto LABEL_101;
      }

      v231 = *(v225 + 72);
      v238 = *(v225 + 16);
      v238(v232, v223 + v231 * v100, v237);
      Siri_Nlu_External_Span.usoGraph.getter();
      v105 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
      if (v101)
      {
        v106 = v101;
        v230 = v100;
        (*v222)(v104, v103);
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        __swift_project_value_buffer(v107, static Logger.pommes);
        v108 = v101;
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = v103;
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v243 = v113;
          *v112 = v217.n128_u32[0];
          v242 = v106;
          v114 = v106;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v115 = String.init<A>(describing:)();
          v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &v243);
          v69 = v228;

          *(v112 + 4) = v117;
          _os_log_impl(&dword_2232BB000, v109, v110, "Skipping span due to error: %s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v113);
          v118 = v113;
          v104 = v215;
          MEMORY[0x223DE0F80](v118, -1, -1);
          v119 = v112;
          v103 = v111;
          MEMORY[0x223DE0F80](v119, -1, -1);
        }

        else
        {
        }

        (*v221)(v232, v237);
        v100 = v230;
        v101 = 0;
        goto LABEL_33;
      }

      v120 = v105;
      (*v222)(v104, v103);
      v121 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();
      if (v121)
      {
        v219 = v120;
        v220 = 0;
        v230 = v100;
        v218 = v121;
        v122 = UsoEntity.usoIdentifiers.getter();
        v123 = v122;
        v124 = *(v122 + 16);
        if (v124)
        {
          v125 = 0;
          v126 = v122 + ((v234[80] + 32) & ~v234[80]);
          do
          {
            if (v125 >= *(v123 + 16))
            {
              __break(1u);
              goto LABEL_97;
            }

            (*(v234 + 2))(v21, v126 + *(v234 + 9) * v125, v69);
            dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
            v127 = UsoIdentifier.namespace.getter();
            if (!v128)
            {
LABEL_43:
              (*v102)(v21, v69);
              goto LABEL_44;
            }

            if (v127 == 0x64695F6D657469 && v128 == 0xE700000000000000)
            {
            }

            else
            {
              v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v129 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            v130 = UsoIdentifier.value.getter();
            v132 = v131;
            v238(v233, v232, v237);
            v133 = v235;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v243 = v133;
            v135 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v132);
            v137 = *(v133 + 16);
            v138 = (v136 & 1) == 0;
            v139 = __OFADD__(v137, v138);
            v140 = v137 + v138;
            if (v139)
            {
              goto LABEL_98;
            }

            v141 = v136;
            if (*(v133 + 24) >= v140)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v144 = v135;
                specialized _NativeDictionary.copy()();
                v135 = v144;
                if (v141)
                {
LABEL_57:
                  v143 = v135;

                  v235 = v243;
                  (*v226)(v243[7] + v143 * v231, v233, v237);
                  v21 = v236;
                  v69 = v228;
                  (*v102)(v236, v228);
                  goto LABEL_44;
                }

                goto LABEL_59;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v140, isUniquelyReferenced_nonNull_native);
              v135 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v132);
              if ((v141 & 1) != (v142 & 1))
              {
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }
            }

            if (v141)
            {
              goto LABEL_57;
            }

LABEL_59:
            v145 = v243;
            v243[(v135 >> 6) + 8] |= 1 << v135;
            v146 = (v145[6] + 16 * v135);
            *v146 = v130;
            v146[1] = v132;
            (*v229)(v145[7] + v135 * v231, v233, v237);
            v21 = v236;
            v69 = v228;
            (*v102)(v236, v228);
            v147 = v145[2];
            v139 = __OFADD__(v147, 1);
            v148 = v147 + 1;
            if (v139)
            {
              goto LABEL_100;
            }

            v235 = v145;
            v145[2] = v148;
LABEL_44:
            ++v125;
          }

          while (v124 != v125);
        }

        (*v221)(v232, v237);
        v103 = v212;
        v104 = v215;
        v100 = v230;
        v101 = v220;
      }

      else
      {
        (*v221)(v232, v237);
      }

LABEL_33:
      if (++v100 == v224)
      {

        v149 = type metadata accessor for UsoEntityBuilder_uso_NoEntity();
        v150 = *(v149 + 48);
        v151 = *(v149 + 52);
        swift_allocObject();
        v152 = UsoEntityBuilder_uso_NoEntity.init()();

        dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

        v153 = MEMORY[0x223DDCA80](v152);
        if (v153)
        {
          v154 = v153;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v155 = type metadata accessor for Logger();
          __swift_project_value_buffer(v155, static Logger.pommes);

          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.debug.getter();

          v158 = os_log_type_enabled(v156, v157);
          v233 = v152;
          v234 = v154;
          if (v158)
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v243 = v160;
            *v159 = v217.n128_u32[0];
            v161 = type metadata accessor for UsoBuilderOptions();
            v162 = v201;
            (*(*(v161 - 8) + 56))(v201, 1, 1, v161);
            static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)();
            outlined destroy of MediaUserStateCenter?(v162, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
            v163 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
            v165 = v164;

            v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v165, &v243);
            v154 = v234;

            *(v159 + 4) = v166;
            _os_log_impl(&dword_2232BB000, v156, v157, "Created entity for SRR: %s", v159, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v160);
            MEMORY[0x223DE0F80](v160, -1, -1);
            MEMORY[0x223DE0F80](v159, -1, -1);
          }

          v167 = specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(v202, 0, v154, v198, v199);
          v168 = MEMORY[0x277D84F90];
          if (v167)
          {
            v169 = v167;
          }

          else
          {
            v169 = MEMORY[0x277D84F90];
          }

          v170 = *(v169 + 2);
          v232 = v169;
          if (v170)
          {
            v240 = type metadata accessor for RREntity();
            v171 = *(v240 - 8);
            v172 = &v169[(*(v171 + 80) + 32) & ~*(v171 + 80)];
            v173 = *(v171 + 72);
            v236 = (v171 + 16);
            do
            {
              v174 = RREntity.id.getter();
              v176 = v235;
              if (*(v235 + 16))
              {
                v177 = specialized __RawDictionaryStorage.find<A>(_:)(v174, v175);
                v179 = v178;

                if (v179)
                {
                  v180 = v207;
                  v181 = v237;
                  v238(v207, *(v176 + 56) + v177 * v231, v237);
                  v182 = *v229;
                  v183 = v206;
                  (*v229)(v206, v180, v181);
                  v184 = *(v211 + 48);
                  v185 = v209;
                  v182(v209, v183, v181);
                  (*v236)(v185 + v184, v172, v240);
                  v186 = v208;
                  outlined init with take of (Siri_Nlu_External_Span, RREntity)(v185, v208);
                  outlined init with take of (Siri_Nlu_External_Span, RREntity)(v186, v213);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168[2] + 1, 1, v168);
                  }

                  v188 = v168[2];
                  v187 = v168[3];
                  if (v188 >= v187 >> 1)
                  {
                    v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187 > 1, v188 + 1, 1, v168);
                  }

                  v168[2] = v188 + 1;
                  outlined init with take of (Siri_Nlu_External_Span, RREntity)(v213, v168 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v188);
                }
              }

              else
              {
              }

              v172 += v173;
              --v170;
            }

            while (v170);
          }

          return v168;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v193 = type metadata accessor for Logger();
        __swift_project_value_buffer(v193, static Logger.pommes);
        v190 = Logger.logObject.getter();
        v194 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v190, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 0;
          _os_log_impl(&dword_2232BB000, v190, v194, "RRReferenceResolverProtocol: Failed to create entity for MARRS spans", v195, 2u);
          MEMORY[0x223DE0F80](v195, -1, -1);
        }

LABEL_93:

        return MEMORY[0x277D84F90];
      }
    }
  }

  v67 = 0;
  v218 = v225 + 16;
  v238 = (v63 + 56);
  v239 = (v31 + 16);
  v68 = (v31 + 8);
  v220 = (v225 + 32);
  v227 = MEMORY[0x277D84F90];
  v214 = (v225 + 8);
  v69 = v228;
  v217.n128_u64[0] = v65;
LABEL_7:
  if (v67 >= *(v65 + 16))
  {
    goto LABEL_99;
  }

  v223 = (*(v225 + 80) + 32) & ~*(v225 + 80);
  v70 = *(v225 + 72);
  v224 = v67;
  v222 = v70;
  (*(v225 + 16))(v226, v65 + v223 + v70 * v67, v237);
  v71 = Siri_Nlu_External_Span.matcherNames.getter();
  v229 = *(v71 + 16);
  if (!v229)
  {

LABEL_5:
    (*v214)(v226, v237);
    goto LABEL_6;
  }

  v72 = 0;
  v230 = v71 + v216;
  v231 = v71;
  while (v72 < *(v71 + 16))
  {
    v73 = *v239;
    (*v239)(v241, v230 + v72 * v240, v30);
    if (*(v63 + 16))
    {
      v74 = *(v63 + 40);
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30]);
      v75 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v76 = -1 << *(v63 + 32);
      v77 = v75 & ~v76;
      if ((*(v238 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77))
      {
        v78 = ~v76;
        while (1)
        {
          v79 = v63;
          v73(v36, *(v63 + 48) + v77 * v240, v30);
          lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30]);
          v80 = dispatch thunk of static Equatable.== infix(_:_:)();
          v81 = *v68;
          (*v68)(v36, v30);
          if (v80)
          {
            break;
          }

          v77 = (v77 + 1) & v78;
          v63 = v79;
          if (((*(v238 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v81(v241, v30);
        v82 = *v220;
        (*v220)(v221, v226, v237);
        v83 = v227;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v243 = v83;
        v21 = v236;
        if ((v84 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 16) + 1, 1);
          v83 = v243;
        }

        v63 = v79;
        v86 = *(v83 + 16);
        v85 = *(v83 + 24);
        if (v86 >= v85 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v85 > 1, v86 + 1, 1);
          v83 = v243;
        }

        *(v83 + 16) = v86 + 1;
        v227 = v83;
        v82((v83 + v223 + v86 * v222), v221, v237);
        v69 = v228;
LABEL_6:
        v67 = v224 + 1;
        v65 = v217.n128_u64[0];
        if (v224 + 1 == v219)
        {
          goto LABEL_29;
        }

        goto LABEL_7;
      }
    }

LABEL_10:
    ++v72;
    (*v68)(v241, v30);
    v21 = v236;
    v71 = v231;
    if (v72 == v229)
    {

      v69 = v228;
      goto LABEL_5;
    }
  }

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
  swift_once();
LABEL_25:
  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Logger.pommes);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_2232BB000, v88, v89, "RRReferenceResolverProtocol: delegatedUDA has no matchingSpans", v90, 2u);
    MEMORY[0x223DE0F80](v90, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t RRReferenceResolverProtocol.extractOnScreenContext()(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v79 = a1;
  v90 = type metadata accessor for RREntity();
  v2 = *(v90 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v90, v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SaySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = UsoEntityBuilder_common_ReferenceType.init()();
  (*(v8 + 104))(v12, *MEMORY[0x277D5EE50], v7);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  v18 = (*(v8 + 8))(v12, v7);
  v19 = 0;
  v77 = v2;
  v88 = (v2 + 8);
  v89 = v2 + 16;
  v20 = v13;
  v78 = 0x80000002234D9340;
  v75 = 0x80000002234D9320;
  v18.n128_u64[0] = 136315138;
  v73 = v18;
  v18.n128_u64[0] = 136315394;
  v74 = v18;
  v76 = v17;
  do
  {
    v21 = outlined read-only object #0 of RRReferenceResolverProtocol.extractOnScreenContext()[v19 + 32];
    if (outlined read-only object #0 of RRReferenceResolverProtocol.extractOnScreenContext()[v19 + 32])
    {
      if (v21 == 1)
      {
        v22 = type metadata accessor for UsoEntityBuilder_common_Uri();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        v25 = UsoEntityBuilder_common_Uri.init()();
      }

      else
      {
        v29 = type metadata accessor for UsoEntityBuilder_common_AppEntity();
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        v25 = UsoEntityBuilder_common_AppEntity.init()();
      }
    }

    else
    {
      v26 = type metadata accessor for UsoEntityBuilder_common_App();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v25 = UsoEntityBuilder_common_App.init()();
    }

    v32 = v25;

    dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

    v33 = MEMORY[0x223DDCA80](v32);
    if (v33)
    {
      v85 = v21;
      v87 = v32;
      v34 = MEMORY[0x277D84F90];
      v92 = MEMORY[0x277D84F90];
      v84 = v33;
      v35 = specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(v81, 1, v33, v79, v80);
      if (!v35)
      {
        v35 = v34;
      }

      v36 = *(v35 + 16);
      v86 = v19;
      if (v36)
      {
        v82 = v35;
        v83 = v20;
        v37 = v35 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v38 = *(v77 + 72);
        v39 = *(v77 + 16);
        do
        {
          v40 = v90;
          v39(v6, v37, v90);
          v41 = RREntity.id.getter();
          v43 = v42;
          (*v88)(v6, v40);
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
          }

          v45 = *(v34 + 2);
          v44 = *(v34 + 3);
          if (v45 >= v44 >> 1)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v34);
          }

          *(v34 + 2) = v45 + 1;
          v46 = &v34[16 * v45];
          *(v46 + 4) = v41;
          *(v46 + 5) = v43;
          v92 = v34;
          swift_endAccess();
          v37 += v38;
          --v36;
        }

        while (v36);

        v20 = v83;
        v19 = v86;
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91[0] = v20;
      v55 = v85;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v85, isUniquelyReferenced_nonNull_native);
      v20 = v91[0];
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.pommes);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v91[0] = v60;
        *v59 = v74.n128_u32[0];
        v61 = 0xD000000000000011;
        if (v55 == 1)
        {
          v61 = 0x6E65657263536E6FLL;
        }

        v62 = 0xEB00000000495255;
        if (v55 != 1)
        {
          v62 = v78;
        }

        if (v55)
        {
          v63 = v61;
        }

        else
        {
          v63 = 0xD000000000000013;
        }

        if (v55)
        {
          v64 = v62;
        }

        else
        {
          v64 = v75;
        }

        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v91);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2080;

        v67 = MEMORY[0x223DDF850](v66, MEMORY[0x277D837D0]);
        v69 = v68;

        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v91);

        *(v59 + 14) = v70;
        _os_log_impl(&dword_2232BB000, v57, v58, "RRReferenceResolverProtocol: [ExtractOnScreenContext][%s] Found %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v60, -1, -1);
        MEMORY[0x223DE0F80](v59, -1, -1);

        v19 = v86;
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.pommes);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v87 = v32;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v91[0] = v51;
        *v50 = v73.n128_u32[0];
        if (v21)
        {
          if (v21 == 1)
          {
            v52 = 0x6E65657263536E6FLL;
          }

          else
          {
            v52 = 0xD000000000000011;
          }

          if (v21 == 1)
          {
            v53 = 0xEB00000000495255;
          }

          else
          {
            v53 = v78;
          }
        }

        else
        {
          v52 = 0xD000000000000013;
          v53 = v75;
        }

        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v91);

        *(v50 + 4) = v71;
        _os_log_impl(&dword_2232BB000, v48, v49, "RRReferenceResolverProtocol: [ExtractOnScreenContext][%s] Failed to extract context due to USO entity conversion failure", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x223DE0F80](v51, -1, -1);
        MEMORY[0x223DE0F80](v50, -1, -1);
      }
    }

    ++v19;
  }

  while (v19 != 3);

  return v20;
}

Swift::String_optional __swiftcall RRReferenceResolverProtocol.retrieveOnScreenAppBundleId()()
{
  v203 = v0;
  v1 = type metadata accessor for RRMetadata();
  v204 = *(v1 - 8);
  v2 = *(v204 + 64);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v198 = v178 - v8;
  v9 = type metadata accessor for RREntity();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v187 = v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v188 = v178 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v189 = v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v194 = v178 - v23;
  v193 = type metadata accessor for RRCandidate();
  v195 = *(v193 - 8);
  v24 = *(v195 + 64);
  v26 = MEMORY[0x28223BE20](v193, v25);
  v186 = v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v190 = v178 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v192 = v178 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v197 = v178 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = v178 - v39;
  MEMORY[0x28223BE20](v38, v41);
  v199 = (v178 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43, v45);
  v47 = (v178 - v46);
  v48 = type metadata accessor for RRResult();
  v49 = *(v48 - 8);
  v200 = v48;
  v201 = v49;
  v50 = *(v49 + 64);
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = (v178 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52, v55);
  v207 = (v178 - v56);
  v57 = type metadata accessor for UsoEntityBuilder_common_App();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_App.init()();
  v60 = MEMORY[0x223DDCA80]();

  if (!v60)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_72:
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.pommes);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_2232BB000, v75, v76, "RRReferenceResolverProtocol: #retrieveOnScreenAppBundleId failed to create App from builder", v77, 2u);
      MEMORY[0x223DE0F80](v77, -1, -1);
    }

    goto LABEL_68;
  }

  v191 = v10;
  v209 = MEMORY[0x277D84F90];
  v61 = type metadata accessor for ResolveQuery();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();

  ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:)();
  dispatch thunk of RRReferenceResolverProtocol.resolve(query:)();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = *v47;
    v208 = *v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.pommes);
    v66 = v64;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v208 = v70;
      *v69 = 136315138;
      swift_getErrorValue();
      v71 = Error.localizedDescription.getter();
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v208);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_2232BB000, v67, v68, "#retrieveOnScreenAppBundleId reference resolution failed with error: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x223DE0F80](v70, -1, -1);
      MEMORY[0x223DE0F80](v69, -1, -1);
    }

    else
    {
    }

LABEL_68:
    v170 = 0;
    v171 = 0;
    goto LABEL_75;
  }

  v78 = v201;
  v79 = v207;
  v80 = v47;
  v81 = v200;
  (*(v201 + 32))(v207, v80, v200);
  (*(v78 + 16))(v54, v79, v81);
  v82 = (*(v78 + 88))(v54, v81);
  v83 = v82 == *MEMORY[0x277D5FEC0];
  v185 = v9;
  v202 = v6;
  v184 = v60;
  if (v83)
  {
    v203 = v1;
    (*(v78 + 96))(v54, v81);
    v84 = v195;
    v85 = v199;
    v1 = v193;
    v205 = *(v195 + 32);
    v206 = v195 + 32;
    (v205)(v199, v54, v193);
    if (one-time initialization token for pommes == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

  if (v82 == *MEMORY[0x277D5FED0])
  {
    (*(v78 + 96))(v54, v81);
    v97 = *v54;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, static Logger.pommes);

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v40 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v208 = v101;
      *v40 = 136315138;
      v102 = MEMORY[0x223DDF850](v97, v193);
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v208);
      v81 = v200;

      *(v40 + 4) = v104;
      _os_log_impl(&dword_2232BB000, v99, v100, "#retrieveOnScreenAppBundleId found multiple matches: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x223DE0F80](v101, -1, -1);
      MEMORY[0x223DE0F80](v40, -1, -1);
    }

    v85 = v191;
    v105 = v198;
    specialized Array.append<A>(contentsOf:)(v97);
    (*(v201 + 8))(v207, v81);
  }

  else
  {
    if (v82 == *MEMORY[0x277D5FEC8] || v82 == *MEMORY[0x277D5FED8] || v82 != *MEMORY[0x277D5FEE0])
    {
      v118 = *(v78 + 8);
      v118(v54, v81);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v119 = type metadata accessor for Logger();
      __swift_project_value_buffer(v119, static Logger.pommes);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.error.getter();
      v122 = os_log_type_enabled(v120, v121);
      v105 = v198;
      if (v122)
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_2232BB000, v120, v121, "#retrieveOnScreenAppBundleId unknown/unsupported result type", v123, 2u);
        MEMORY[0x223DE0F80](v123, -1, -1);
      }

      v118(v207, v81);
    }

    else
    {
      v105 = v198;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      __swift_project_value_buffer(v113, static Logger.pommes);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = v78;
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_2232BB000, v114, v115, "#retrieveOnScreenAppBundleId no app on screen", v117, 2u);
        MEMORY[0x223DE0F80](v117, -1, -1);

        (*(v116 + 8))(v207, v81);
      }

      else
      {

        (*(v78 + 8))(v207, v81);
      }
    }

    v85 = v191;
  }

  v112 = v193;
  while (1)
  {
    v124 = v209;
    v125 = v209[2];
    if (!v125)
    {
      v142 = 1;
      v84 = v195;
      goto LABEL_57;
    }

    v126 = 0;
    v84 = v195;
    v127 = v209 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v183 = v85 + 1;
    v201 = v204 + 16;
    LODWORD(v200) = *MEMORY[0x277D5FE90];
    v128 = *MEMORY[0x277D5FDF0];
    LODWORD(v198) = *MEMORY[0x277D5FE78];
    v178[0] = v195 + 8;
    v182 = v209;
    v180 = v125;
    v179 = v127;
    v178[1] = v195 + 16;
    v199 = (v204 + 104);
    LODWORD(v197) = v128;
    v196 = (v204 + 8);
LABEL_45:
    if (v126 < v124[2])
    {
      break;
    }

    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.pommes);
    v196 = *(v84 + 16);
    v196(v40, v85, v1);
    v87 = v84;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v208 = v91;
      *v90 = 136315138;
      lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, MEMORY[0x277D5FE08]);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v95 = *(v87 + 8);
      v95(v40, v1);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v208);
      v85 = v199;

      *(v90 + 4) = v96;
      _os_log_impl(&dword_2232BB000, v88, v89, "#retrieveOnScreenAppBundleId found match: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x223DE0F80](v91, -1, -1);
      MEMORY[0x223DE0F80](v90, -1, -1);
    }

    else
    {

      v95 = *(v87 + 8);
      v95(v40, v1);
    }

    v106 = v197;
    v105 = v198;
    v196(v197, v85, v1);
    v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v109 = v107[2];
    v108 = v107[3];
    v1 = v203;
    v110 = v200;
    if (v109 >= v108 >> 1)
    {
      v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v108 > 1, v109 + 1, 1, v107);
    }

    v40 = v195;
    v111 = v193;
    v95(v199, v193);
    (*(v201 + 8))(v207, v110);
    v107[2] = v109 + 1;
    v112 = v111;
    (v205)(v107 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v109, v106, v111);
    v209 = v107;
    v85 = v191;
  }

  v181 = v126 + 1;
  (*(v84 + 16))(v192, &v127[*(v84 + 72) * v126], v112);
  v129 = v188;
  RRCandidate.entity.getter();
  v130 = RREntity.metadata.getter();
  (*v183)(v129, v185);
  v131 = 0;
  v207 = v130;
  v203 = v130[2];
  while (v203 != v131)
  {
    if (v131 >= v207[2])
    {
      __break(1u);
      goto LABEL_72;
    }

    v132 = v204;
    v133 = v207 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v134 = *(v204 + 72);
    v205 = v131;
    (*(v204 + 16))(v105, &v133[v134 * v131], v1);
    v135 = v128;
    v136 = type metadata accessor for RRDataSourceMetadataValue();
    v137 = *(*(v136 - 8) + 104);
    v138 = v202;
    v137(v202, v200, v136);
    v139 = *(v132 + 104);
    v139(v138, v135, v1);
    LODWORD(v206) = static RRMetadata.== infix(_:_:)();
    v140 = *(v132 + 8);
    v140(v138, v1);
    if (v206)
    {

      v140(v105, v1);
      goto LABEL_56;
    }

    v141 = v205 + 1;
    v137(v138, v198, v136);
    v128 = v197;
    v139(v138, v197, v1);
    v40 = static RRMetadata.== infix(_:_:)();
    v140(v138, v1);
    v140(v105, v1);
    v131 = v141;
    if (v40)
    {

LABEL_56:
      v84 = v195;
      v112 = v193;
      (*(v195 + 32))(v194, v192, v193);
      v142 = 0;
      v85 = v191;
      goto LABEL_57;
    }
  }

  v112 = v193;
  (*v178[0])(v192, v193);

  v142 = 1;
  v126 = v181;
  v85 = v191;
  v84 = v195;
  v124 = v182;
  v127 = v179;
  if (v181 != v180)
  {
    goto LABEL_45;
  }

LABEL_57:
  v143 = *(v84 + 56);
  v144 = v194;
  v143(v194, v142, 1, v112);

  v145 = v195;
  v146 = v189;
  outlined init with copy of RRCandidate?(v144, v189);
  if ((*(v145 + 48))(v146, 1, v112) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v146, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v147 = type metadata accessor for Logger();
    __swift_project_value_buffer(v147, static Logger.pommes);
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_2232BB000, v148, v149, "#retrieveOnScreenAppBundleId foreground App not found", v150, 2u);
      MEMORY[0x223DE0F80](v150, -1, -1);
    }

    else
    {
    }

    outlined destroy of MediaUserStateCenter?(v194, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    goto LABEL_68;
  }

  v151 = v190;
  (*(v145 + 32))(v190, v146, v112);
  v152 = v112;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v153 = type metadata accessor for Logger();
  __swift_project_value_buffer(v153, static Logger.pommes);
  v154 = v186;
  (*(v145 + 16))(v186, v151, v112);
  v155 = Logger.logObject.getter();
  v156 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v155, v156))
  {
    v157 = swift_slowAlloc();
    v206 = v157;
    v207 = swift_slowAlloc();
    v208 = v207;
    *v157 = 136315138;
    v158 = v187;
    RRCandidate.entity.getter();
    v159 = RREntity.appBundleId.getter();
    v161 = v160;
    v162 = v185;
    (*(v191 + 1))(v158, v185);
    v163 = *(v145 + 8);
    v163(v154, v152);
    v164 = v152;
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v161, &v208);

    v166 = v206;
    *(v206 + 4) = v165;
    v167 = v158;
    _os_log_impl(&dword_2232BB000, v155, v156, "#retrieveOnScreenAppBundleId onscreen app bundleId=%s", v166, 0xCu);
    v168 = v207;
    __swift_destroy_boxed_opaque_existential_1(v207);
    MEMORY[0x223DE0F80](v168, -1, -1);
    v169 = v166;
    v85 = v191;
    MEMORY[0x223DE0F80](v169, -1, -1);
  }

  else
  {

    v163 = *(v145 + 8);
    v163(v154, v112);
    v162 = v185;
    v167 = v187;
    v164 = v152;
  }

  v172 = v167;
  v173 = v190;
  RRCandidate.entity.getter();
  v174 = RREntity.appBundleId.getter();
  v176 = v175;

  v85[1](v172, v162);
  v163(v173, v164);
  outlined destroy of MediaUserStateCenter?(v194, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v171 = v176;
  v170 = v174;
LABEL_75:
  result.value._object = v171;
  result.value._countAndFlagsBits = v170;
  return result;
}