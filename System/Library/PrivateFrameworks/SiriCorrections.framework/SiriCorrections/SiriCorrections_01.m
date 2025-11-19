unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()(a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType, a3);
  if (IsNativeType)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x26D5E76F0](a2, a3);
  }

  *a1 = v8;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5E7790](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for UsoEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;

          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UsoEntity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntity] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with take of CorrectionsCustomizing(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CorrectionsParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrectionsParse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UndoAction()
{
  result = type metadata singleton initialization cache for UndoAction;
  if (!type metadata singleton initialization cache for UndoAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_UserParse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CorrectionsUSOParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrectionsUSOParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CorrectionsParse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for UndoAction()
{
  type metadata accessor for Siri_Nlu_External_UserParse?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Siri_Nlu_External_UserParse?()
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_UserParse?)
  {
    type metadata accessor for Siri_Nlu_External_UserParse();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Siri_Nlu_External_UserParse?);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_26(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with copy of CorrectionsContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionCandidateTask(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CorrectionCandidateTask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_14_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_17_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_24()
{

  JUMPOUT(0x26D5E7CB0);
}

BOOL OUTLINED_FUNCTION_25(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_32(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46()
{
  v2 = **(v1 - 280);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

void OUTLINED_FUNCTION_50(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 416) = a1 + 16;
  *(v1 - 432) = v2;
}

uint64_t OUTLINED_FUNCTION_52@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1)
{

  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(a1, v1, v2);
}

void OUTLINED_FUNCTION_57()
{
  *(v4 + 16) = v0;
  v5 = v4 + 40 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

__n128 OUTLINED_FUNCTION_59()
{
  v2 = *(v0 + 16);
  *(v1 - 160) = *v0;
  *(v1 - 144) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 128) = result;
  *(v1 - 112) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void OUTLINED_FUNCTION_69()
{

  JUMPOUT(0x26D5E7790);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_71()
{

  return swift_beginAccess();
}

uint64_t ReferenceResolutionUtils.resolveReference(usoEntity:)(uint64_t a1)
{
  v165 = type metadata accessor for RREntity();
  v2 = OUTLINED_FUNCTION_6(v165);
  v154 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8_1();
  v152 = v7 - v6;
  v155 = type metadata accessor for RRCandidate();
  v8 = OUTLINED_FUNCTION_6(v155);
  v166 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v149 = v12;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v13);
  v150 = &v144 - v14;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v15);
  v153 = &v144 - v16;
  v17 = type metadata accessor for RRResult();
  v18 = OUTLINED_FUNCTION_6(v17);
  v163 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  v156 = v22;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v144 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v161 = &v144 - v28;
  v162 = type metadata accessor for RRQuery();
  v29 = OUTLINED_FUNCTION_6(v162);
  v160 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_1();
  v157 = (v34 - v33);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v35 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_13();
  v159 = v36;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v37);
  v39 = &v144 - v38;
  v40 = type metadata accessor for OSSignpostID();
  v41 = OUTLINED_FUNCTION_6(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_1();
  v48 = v47 - v46;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_10_1();
  type metadata accessor for ReferenceResolutionClient();
  v49 = ReferenceResolutionClient.__allocating_init()();
  v164 = a1;
  if (dispatch thunk of ReferenceResolutionClient.hasReference(usoEntity:)())
  {
    v146 = v25;
    v148 = v48;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    v51 = __swift_project_value_buffer(v50, static Logger.logger);

    v147 = v51;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();

    v54 = os_log_type_enabled(v52, v53);
    v151 = v40;
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_9_1();
      v57 = v56;
      v167[0] = v56;
      *v55 = 136315138;
      v58 = UsoTask.verbString.getter();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v167);
      LODWORD(v145) = v53;
      v61 = v17;
      v62 = v49;
      v63 = v39;
      v64 = v43;
      v65 = v60;

      *(v55 + 4) = v65;
      v43 = v64;
      v39 = v63;
      v49 = v62;
      v17 = v61;
      _os_log_impl(&dword_266A4D000, v52, v145, "[ReferenceResolutionUtils.resolveReference] Reference resolver detects a reference in entity %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_5_2();
      v40 = v151;
      OUTLINED_FUNCTION_5_2();
    }

    v66 = UsoTask.verbString.getter();
    v68 = v67;
    v69 = type metadata accessor for UsoEntityBuilder();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    v164 = MEMORY[0x26D5E7310](v66, v68);
    v72 = MEMORY[0x26D5E7340]();
    if (!v72)
    {

      v92 = OUTLINED_FUNCTION_6_3();
      v93 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = OUTLINED_FUNCTION_10();
        v95 = OUTLINED_FUNCTION_12_1();
        v159 = v49;
        v96 = v95;
        v167[0] = v95;
        *v94 = 136315138;
        v97 = UsoTask.verbString.getter();
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v167);

        *(v94 + 4) = v99;
        _os_log_impl(&dword_266A4D000, v92, v93, "[ReferenceResolutionUtils.resolveReference] Failed to create query entity for %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_5_2();
      }

      goto LABEL_22;
    }

    v73 = v72;
    v144 = v17;
    v74 = v157;
    *v157 = v72;
    v75 = v160;
    v76 = v162;
    (*(v160 + 13))(v74, *MEMORY[0x277D5FEA8], v162);
    v77 = type metadata accessor for RRFilter();
    v78 = v161;
    __swift_storeEnumTagSinglePayload(v161, 1, 1, v77);

    dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();
    outlined destroy of RRFilter?(v78, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
    (*(v75 + 8))(v74, v76);
    v79 = v159;
    outlined init with copy of Result<RRResult, Error>(v39, v159);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v145 = v73;
    if (EnumCaseMultiPayload == 1)
    {
      v160 = v39;
      v81 = *v79;
      v82 = *v79;
      v83 = OUTLINED_FUNCTION_6_3();
      v84 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v83, v84))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_9_1();
        v86 = v85;
        v87 = OUTLINED_FUNCTION_12_1();
        v167[0] = v87;
        *v86 = 136315138;
        swift_getErrorValue();
        v88 = Error.localizedDescription.getter();
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v167);

        *(v86 + 4) = v90;
        _os_log_impl(&dword_266A4D000, v83, v84, "[ReferenceResolutionUtils.resolveReference] SRR failed %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_5_2();
      }

      else
      {
      }

      v39 = v160;
      v40 = v151;
LABEL_21:
      OUTLINED_FUNCTION_11_0();

      outlined destroy of RRFilter?(v39, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
LABEL_22:
      v91 = MEMORY[0x277D84F90];
LABEL_23:
      v48 = v148;
      goto LABEL_24;
    }

    v100 = v163;
    v101 = v146;
    v102 = v144;
    (*(v163 + 32))(v146, v79, v144);
    v103 = v156;
    (*(v100 + 16))(v156, v101, v102);
    v104 = (*(v100 + 88))(v103, v102);
    if (v104 == *MEMORY[0x277D5FEC0])
    {
      v160 = v39;
      OUTLINED_FUNCTION_9_1();
      v158 = v43;
      (*(v100 + 96))(v103, v102);
      v105 = v166;
      v106 = v103;
      v107 = v153;
      v108 = v155;
      (*(v166 + 32))(v153, v106, v155);
      (*(v105 + 16))(v150, v107, v108);
      v109 = OUTLINED_FUNCTION_6_3();
      v110 = static os_log_type_t.debug.getter();
      v111 = os_log_type_enabled(v109, v110);
      v40 = v151;
      if (v111)
      {
        v112 = OUTLINED_FUNCTION_10();
        v161 = OUTLINED_FUNCTION_12_1();
        v167[0] = v161;
        *v112 = 136315138;
        v113 = v105;
        v114 = v152;
        RRCandidate.entity.getter();
        RREntity.usoEntity.getter();
        (*(v154 + 8))(v114, v165);
        v157 = UsoEntity.debugString.getter();
        v159 = v49;
        v116 = v115;

        v117 = OUTLINED_FUNCTION_4_4(*(v113 + 8));
        v118(v117);
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v116, v167);

        *(v112 + 4) = v119;
        _os_log_impl(&dword_266A4D000, v109, v110, "[ReferenceResolutionUtils.resolveReference] found match %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v161);
        v102 = v144;
        OUTLINED_FUNCTION_5_2();
        v101 = v146;
        OUTLINED_FUNCTION_5_2();

        OUTLINED_FUNCTION_5_3();
      }

      else
      {

        v126 = OUTLINED_FUNCTION_4_4(*(v105 + 8));
        v127(v126);
        OUTLINED_FUNCTION_5_3();
        v114 = v152;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_266A62210;
      v128 = v153;
      RRCandidate.entity.getter();
      v129 = RREntity.usoEntity.getter();
      (*(v154 + 8))(v114, v165);
      *(v91 + 32) = v129;
      OUTLINED_FUNCTION_11_0();

      (v166)(v128, v155);
      (*(v163 + 8))(v101, v102);
      outlined destroy of RRFilter?(v160, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v43 = v158;
      goto LABEL_23;
    }

    v40 = v151;
    if (v104 != *MEMORY[0x277D5FEC8])
    {
      v130 = OUTLINED_FUNCTION_6_3();
      v131 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_266A4D000, v130, v131, "[ReferenceResolutionUtils.resolveReference] Failed to find match", v132, 2u);
        v101 = v146;
        OUTLINED_FUNCTION_5_2();
      }

      v133 = *(v163 + 8);
      v133(v101, v102);
      v133(v156, v102);
      goto LABEL_21;
    }

    v160 = v39;
    v121 = v163;
    (*(v163 + 96))(v103, v102);
    v122 = *v103;

    v123 = OUTLINED_FUNCTION_6_3();
    v124 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = OUTLINED_FUNCTION_10();
      *v125 = 134217984;
      *(v125 + 4) = v122[2];

      _os_log_impl(&dword_266A4D000, v123, v124, "[ReferenceResolutionUtils.resolveReference] found plural match, number of matches %ld", v125, 0xCu);
      OUTLINED_FUNCTION_5_2();
    }

    else
    {
    }

    v134 = v122[2];
    v135 = v154;
    if (!v134)
    {
      OUTLINED_FUNCTION_11_0();

      (*(v121 + 8))(v146, v102);
      outlined destroy of RRFilter?(v160, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v91 = MEMORY[0x277D84F90];
      v40 = v151;
      goto LABEL_23;
    }

    v159 = v49;
    OUTLINED_FUNCTION_9_1();
    v158 = v43;
    v167[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v136 = *(v166 + 16);
    v137 = *(v166 + 80);
    v157 = v122;
    v138 = v122 + ((v137 + 32) & ~v137);
    v161 = *(v166 + 72);
    v162 = v136;
    v166 += 16;
    v139 = (v166 - 8);
    v140 = v155;
    v141 = v152;
    v142 = v149;
    do
    {
      v162(v142, v138, v140);
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*(v135 + 8))(v141, v165);
      (*v139)(v142, v140);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v143 = *(v167[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v138 += v161;
      --v134;
    }

    while (v134);
    OUTLINED_FUNCTION_11_0();

    (*(v163 + 8))(v146, v144);
    outlined destroy of RRFilter?(v160, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v91 = v167[0];
    v40 = v151;
    v43 = v158;
    v48 = v148;
    OUTLINED_FUNCTION_5_3();
  }

  else
  {

    v91 = MEMORY[0x277D84F90];
  }

LABEL_24:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_1();
  (*(v43 + 8))(v48, v40);
  return v91;
}

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RRFilter?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}